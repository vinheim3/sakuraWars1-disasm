; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $04f", ROMX[$4000], BANK[$4f]

	inc  b                                           ; $4000: $04
	ld   bc, $1401                                   ; $4001: $01 $01 $14
	dec  de                                          ; $4004: $1b
	ld   bc, $d501                                   ; $4005: $01 $01 $d5
	push af                                          ; $4008: $f5
	sbc  $fb                                         ; $4009: $de $fb
	push af                                          ; $400b: $f5
	ld   a, [$d00d]                                  ; $400c: $fa $0d $d0
	xor  c                                           ; $400f: $a9
	ld   l, [hl]                                     ; $4010: $6e
	ld   e, c                                        ; $4011: $59
	sub  a                                           ; $4012: $97
	ld   bc, $7d07                                   ; $4013: $01 $07 $7d
	ld   d, [hl]                                     ; $4016: $56
	ei                                               ; $4017: $fb
	ld   bc, $a108                                   ; $4018: $01 $08 $a1
	ld   l, [hl]                                     ; $401b: $6e
	sub  [hl]                                        ; $401c: $96
	sbc  a                                           ; $401d: $9f
	dec  c                                           ; $401e: $0d
	nop                                              ; $401f: $00
	ld   a, [bc]                                     ; $4020: $0a
	dec  b                                           ; $4021: $05
	ld   b, b                                        ; $4022: $40
	rst  $38                                         ; $4023: $ff
	inc  bc                                          ; $4024: $03
	rst  $38                                         ; $4025: $ff
	ld   bc, $2801                                   ; $4026: $01 $01 $28
	nop                                              ; $4029: $00
	ld   b, $b2                                      ; $402a: $06 $b2
	inc  b                                           ; $402c: $04
	inc  e                                           ; $402d: $1c
	inc  b                                           ; $402e: $04
	nop                                              ; $402f: $00
	nop                                              ; $4030: $00
	inc  d                                           ; $4031: $14
	inc  e                                           ; $4032: $1c
	ld   bc, $d701                                   ; $4033: $01 $01 $d7
	ei                                               ; $4036: $fb
	ld   a, [$690d]                                  ; $4037: $fa $0d $69
	ld   d, d                                        ; $403a: $52
	ld   e, c                                        ; $403b: $59
	ld   d, d                                        ; $403c: $52
	ld   a, l                                        ; $403d: $7d
	sbc  [hl]                                        ; $403e: $9e
	ret  nc                                          ; $403f: $d0

	xor  c                                           ; $4040: $a9
	ld   l, [hl]                                     ; $4041: $6e
	sub  [hl]                                        ; $4042: $96
	sbc  a                                           ; $4043: $9f
	dec  c                                           ; $4044: $0d
	ret  nc                                          ; $4045: $d0

	xor  c                                           ; $4046: $a9
	ld   l, [hl]                                     ; $4047: $6e
	ld   e, c                                        ; $4048: $59
	sub  a                                           ; $4049: $97
	ld   bc, $7d07                                   ; $404a: $01 $07 $7d
	ld   d, [hl]                                     ; $404d: $56
	ei                                               ; $404e: $fb
	ld   bc, $a108                                   ; $404f: $01 $08 $a1
	ld   l, [hl]                                     ; $4052: $6e
	sub  [hl]                                        ; $4053: $96
	sbc  a                                           ; $4054: $9f
	dec  c                                           ; $4055: $0d
	nop                                              ; $4056: $00
	ld   a, [bc]                                     ; $4057: $0a
	inc  e                                           ; $4058: $1c
	inc  b                                           ; $4059: $04
	nop                                              ; $405a: $00
	nop                                              ; $405b: $00
	ld   bc, $5c72                                   ; $405c: $01 $72 $5c
	ld   a, h                                        ; $405f: $7c
	sub  b                                           ; $4060: $90
	and  c                                           ; $4061: $a1
	ld   l, [hl]                                     ; $4062: $6e
	ld   d, d                                        ; $4063: $52
	sbc  a                                           ; $4064: $9f
	dec  c                                           ; $4065: $0d
	ld   bc, $c007                                   ; $4066: $01 $07 $c0
	or   d                                           ; $4069: $b2
	ld   bc, $7608                                   ; $406a: $01 $08 $76
	ld   bc, $df07                                   ; $406d: $01 $07 $df
	push bc                                          ; $4070: $c5
	ld   bc, $7d08                                   ; $4071: $01 $08 $7d
	dec  c                                           ; $4074: $0d
	ld   [hl], a                                     ; $4075: $77
	ld   [hl], c                                     ; $4076: $71
	ld   l, a                                        ; $4077: $6f
	ld   e, d                                        ; $4078: $5a
	ld   l, l                                        ; $4079: $6d
	ld   e, c                                        ; $407a: $59
	ld   d, d                                        ; $407b: $52
	ld   sp, hl                                      ; $407c: $f9
	dec  c                                           ; $407d: $0d
	nop                                              ; $407e: $00
	ld   a, [bc]                                     ; $407f: $0a
	add  hl, de                                      ; $4080: $19
	dec  b                                           ; $4081: $05
	inc  bc                                          ; $4082: $03
	ld   bc, $c007                                   ; $4083: $01 $07 $c0
	or   d                                           ; $4086: $b2
	ld   bc, $5908                                   ; $4087: $01 $08 $59
	ld   a, b                                        ; $408a: $78
	ld   sp, hl                                      ; $408b: $f9
	nop                                              ; $408c: $00
	nop                                              ; $408d: $00
	ld   bc, $df07                                   ; $408e: $01 $07 $df
	push bc                                          ; $4091: $c5
	ld   bc, $5908                                   ; $4092: $01 $08 $59
	ld   a, b                                        ; $4095: $78
	ld   sp, hl                                      ; $4096: $f9
	nop                                              ; $4097: $00
	ld   bc, $7858                                   ; $4098: $01 $58 $78
	ld   h, [hl]                                     ; $409b: $66
	ld   h, [hl]                                     ; $409c: $66
	sub  c                                           ; $409d: $91
	ld   a, b                                        ; $409e: $78
	ld   d, d                                        ; $409f: $52
	ld   e, c                                        ; $40a0: $59
	ld   sp, hl                                      ; $40a1: $f9
	nop                                              ; $40a2: $00
	ld   [bc], a                                     ; $40a3: $02
	rlca                                             ; $40a4: $07
	inc  e                                           ; $40a5: $1c
	dec  b                                           ; $40a6: $05
	ld   [bc], a                                     ; $40a7: $02
	inc  bc                                          ; $40a8: $03
	ld   bc, $2000                                   ; $40a9: $01 $00 $20
	nop                                              ; $40ac: $00
	rlca                                             ; $40ad: $07
	ld   c, d                                        ; $40ae: $4a
	dec  b                                           ; $40af: $05
	ld   [bc], a                                     ; $40b0: $02
	inc  bc                                          ; $40b1: $03
	ld   bc, $2001                                   ; $40b2: $01 $01 $20
	nop                                              ; $40b5: $00
	rlca                                             ; $40b6: $07
	ld   c, d                                        ; $40b7: $4a
	dec  b                                           ; $40b8: $05
	ld   [bc], a                                     ; $40b9: $02
	inc  bc                                          ; $40ba: $03
	ld   bc, $2002                                   ; $40bb: $01 $02 $20
	nop                                              ; $40be: $00
	ld   b, $4a                                      ; $40bf: $06 $4a
	dec  b                                           ; $40c1: $05
	inc  e                                           ; $40c2: $1c
	inc  b                                           ; $40c3: $04
	ld   bc, $1401                                   ; $40c4: $01 $01 $14
	dec  de                                          ; $40c7: $1b
	ld   bc, $d501                                   ; $40c8: $01 $01 $d5
	push af                                          ; $40cb: $f5
	sbc  $fb                                         ; $40cc: $de $fb
	push af                                          ; $40ce: $f5
	ld   a, [$c00d]                                  ; $40cf: $fa $0d $c0
	or   d                                           ; $40d2: $b2
	ld   l, [hl]                                     ; $40d3: $6e
	ld   e, c                                        ; $40d4: $59
	sub  a                                           ; $40d5: $97
	ld   bc, $6d07                                   ; $40d6: $01 $07 $6d
	ld   e, a                                        ; $40d9: $5f
	ld   d, l                                        ; $40da: $55
	ld   bc, $a108                                   ; $40db: $01 $08 $a1
	ld   l, [hl]                                     ; $40de: $6e
	sub  [hl]                                        ; $40df: $96
	sbc  a                                           ; $40e0: $9f
	dec  c                                           ; $40e1: $0d
	nop                                              ; $40e2: $00
	ld   a, [bc]                                     ; $40e3: $0a
	dec  b                                           ; $40e4: $05
	ld   b, b                                        ; $40e5: $40
	rst  $38                                         ; $40e6: $ff
	inc  bc                                          ; $40e7: $03
	rst  $38                                         ; $40e8: $ff
	ld   bc, $2801                                   ; $40e9: $01 $01 $28
	nop                                              ; $40ec: $00
	ld   b, $75                                      ; $40ed: $06 $75
	dec  b                                           ; $40ef: $05
	inc  e                                           ; $40f0: $1c
	inc  b                                           ; $40f1: $04
	nop                                              ; $40f2: $00
	nop                                              ; $40f3: $00
	inc  d                                           ; $40f4: $14
	inc  e                                           ; $40f5: $1c
	ld   bc, $d701                                   ; $40f6: $01 $01 $d7
	ei                                               ; $40f9: $fb
	ld   a, [$690d]                                  ; $40fa: $fa $0d $69
	ld   d, d                                        ; $40fd: $52
	ld   e, c                                        ; $40fe: $59
	ld   d, d                                        ; $40ff: $52
	ld   a, l                                        ; $4100: $7d
	sbc  [hl]                                        ; $4101: $9e
	ret  nz                                          ; $4102: $c0

	or   d                                           ; $4103: $b2
	ld   l, [hl]                                     ; $4104: $6e
	sub  [hl]                                        ; $4105: $96
	sbc  a                                           ; $4106: $9f
	dec  c                                           ; $4107: $0d
	ret  nz                                          ; $4108: $c0

	or   d                                           ; $4109: $b2
	ld   l, [hl]                                     ; $410a: $6e
	ld   e, c                                        ; $410b: $59
	sub  a                                           ; $410c: $97
	ld   bc, $6d07                                   ; $410d: $01 $07 $6d
	ld   e, a                                        ; $4110: $5f
	ld   d, l                                        ; $4111: $55
	ld   bc, $a108                                   ; $4112: $01 $08 $a1
	ld   l, [hl]                                     ; $4115: $6e
	sub  [hl]                                        ; $4116: $96
	sbc  a                                           ; $4117: $9f
	dec  c                                           ; $4118: $0d
	nop                                              ; $4119: $00
	ld   a, [bc]                                     ; $411a: $0a
	inc  e                                           ; $411b: $1c
	inc  b                                           ; $411c: $04
	nop                                              ; $411d: $00
	nop                                              ; $411e: $00
	ld   bc, $5263                                   ; $411f: $01 $63 $52
	ld   h, d                                        ; $4122: $62
	ld   a, h                                        ; $4123: $7c
	sub  b                                           ; $4124: $90
	and  c                                           ; $4125: $a1
	ld   l, [hl]                                     ; $4126: $6e
	ld   d, d                                        ; $4127: $52
	sbc  a                                           ; $4128: $9f
	dec  c                                           ; $4129: $0d
	nop                                              ; $412a: $00
	ld   a, [bc]                                     ; $412b: $0a
	ld   bc, $0701                                   ; $412c: $01 $01 $07
	and  a                                           ; $412f: $a7
	rst  JumpTable                                         ; $4130: $df
	ld   bc, $7608                                   ; $4131: $01 $08 $76
	ld   bc, $d707                                   ; $4134: $01 $07 $d7
	ret  nz                                          ; $4137: $c0

	ld   bc, $5a08                                   ; $4138: $01 $08 $5a
	dec  c                                           ; $413b: $0d
	ld   e, e                                        ; $413c: $5b
	sub  l                                           ; $413d: $95
	ld   d, h                                        ; $413e: $54
	ld   l, e                                        ; $413f: $6b
	ld   d, h                                        ; $4140: $54
	ld   h, l                                        ; $4141: $65
	adc  h                                           ; $4142: $8c
	ld   h, l                                        ; $4143: $65
	ld   l, l                                        ; $4144: $6d
	sbc  a                                           ; $4145: $9f
	dec  c                                           ; $4146: $0d
	ld   e, c                                        ; $4147: $59
	ld   [hl], c                                     ; $4148: $71
	ld   l, l                                        ; $4149: $6d
	ld   a, h                                        ; $414a: $7c
	ld   a, l                                        ; $414b: $7d
	sbc  [hl]                                        ; $414c: $9e
	ld   [hl], a                                     ; $414d: $77
	ld   [hl], c                                     ; $414e: $71
	ld   l, a                                        ; $414f: $6f
	ld   sp, hl                                      ; $4150: $f9
	dec  c                                           ; $4151: $0d
	nop                                              ; $4152: $00
	ld   a, [bc]                                     ; $4153: $0a
	add  hl, de                                      ; $4154: $19
	dec  b                                           ; $4155: $05
	inc  bc                                          ; $4156: $03
	ld   bc, $a707                                   ; $4157: $01 $07 $a7
	rst  JumpTable                                         ; $415a: $df
	ld   bc, $5908                                   ; $415b: $01 $08 $59
	ld   a, b                                        ; $415e: $78
	ld   sp, hl                                      ; $415f: $f9
	nop                                              ; $4160: $00
	nop                                              ; $4161: $00
	ld   bc, $d707                                   ; $4162: $01 $07 $d7
	ret  nz                                          ; $4165: $c0

	ld   bc, $5908                                   ; $4166: $01 $08 $59
	ld   a, b                                        ; $4169: $78
	ld   sp, hl                                      ; $416a: $f9
	nop                                              ; $416b: $00
	ld   bc, $7858                                   ; $416c: $01 $58 $78
	ld   h, [hl]                                     ; $416f: $66
	ld   h, [hl]                                     ; $4170: $66
	sub  c                                           ; $4171: $91
	ld   a, b                                        ; $4172: $78
	ld   d, d                                        ; $4173: $52
	ld   e, c                                        ; $4174: $59
	ld   sp, hl                                      ; $4175: $f9
	nop                                              ; $4176: $00
	ld   [bc], a                                     ; $4177: $02
	rlca                                             ; $4178: $07
	ldh  a, [rTIMA]                                  ; $4179: $f0 $05
	ld   [bc], a                                     ; $417b: $02
	inc  bc                                          ; $417c: $03
	ld   bc, $2000                                   ; $417d: $01 $00 $20
	nop                                              ; $4180: $00
	rlca                                             ; $4181: $07
	jr   nc, jr_04f_418a                             ; $4182: $30 $06

	ld   [bc], a                                     ; $4184: $02
	inc  bc                                          ; $4185: $03
	ld   bc, $2001                                   ; $4186: $01 $01 $20
	nop                                              ; $4189: $00

jr_04f_418a:
	rlca                                             ; $418a: $07
	jr   nc, jr_04f_4193                             ; $418b: $30 $06

	ld   [bc], a                                     ; $418d: $02
	inc  bc                                          ; $418e: $03
	ld   bc, $2002                                   ; $418f: $01 $02 $20
	nop                                              ; $4192: $00

jr_04f_4193:
	ld   b, $30                                      ; $4193: $06 $30
	ld   b, $1c                                      ; $4195: $06 $1c
	inc  b                                           ; $4197: $04
	ld   bc, $1401                                   ; $4198: $01 $01 $14
	dec  de                                          ; $419b: $1b
	ld   bc, $d501                                   ; $419c: $01 $01 $d5
	push af                                          ; $419f: $f5
	sbc  $fb                                         ; $41a0: $de $fb
	push af                                          ; $41a2: $f5
	ld   a, [$000d]                                  ; $41a3: $fa $0d $00
	ld   a, [bc]                                     ; $41a6: $0a
	ld   bc, $0701                                   ; $41a7: $01 $01 $07
	ret                                              ; $41aa: $c9


	push af                                          ; $41ab: $f5
	ld   bc, $ac08                                   ; $41ac: $01 $08 $ac
	push bc                                          ; $41af: $c5
	ld   l, l                                        ; $41b0: $6d
	add  a                                           ; $41b1: $87
	ld   [hl], h                                     ; $41b2: $74
	dec  c                                           ; $41b3: $0d
	ld   bc, $a707                                   ; $41b4: $01 $07 $a7
	rst  JumpTable                                         ; $41b7: $df
	ld   bc, $5908                                   ; $41b8: $01 $08 $59
	ld   [hl], c                                     ; $41bb: $71
	ld   l, l                                        ; $41bc: $6d
	rst  $38                                         ; $41bd: $ff
	rst  $38                                         ; $41be: $ff
	dec  c                                           ; $41bf: $0d
	ld   a, b                                        ; $41c0: $78
	and  c                                           ; $41c1: $a1
	ld   l, a                                        ; $41c2: $6f
	sub  c                                           ; $41c3: $91
	ld   [hl], c                                     ; $41c4: $71
	ld   [hl], h                                     ; $41c5: $74
	sbc  a                                           ; $41c6: $9f
	dec  c                                           ; $41c7: $0d
	nop                                              ; $41c8: $00
	ld   a, [bc]                                     ; $41c9: $0a
	dec  b                                           ; $41ca: $05
	ld   b, b                                        ; $41cb: $40
	rst  $38                                         ; $41cc: $ff
	inc  bc                                          ; $41cd: $03
	rst  $38                                         ; $41ce: $ff
	ld   bc, $2801                                   ; $41cf: $01 $01 $28
	nop                                              ; $41d2: $00
	ld   b, $72                                      ; $41d3: $06 $72
	ld   b, $1c                                      ; $41d5: $06 $1c
	inc  b                                           ; $41d7: $04
	nop                                              ; $41d8: $00
	nop                                              ; $41d9: $00
	inc  d                                           ; $41da: $14
	inc  e                                           ; $41db: $1c
	ld   bc, $d701                                   ; $41dc: $01 $01 $d7
	ei                                               ; $41df: $fb
	ld   a, [$690d]                                  ; $41e0: $fa $0d $69
	ld   d, d                                        ; $41e3: $52
	ld   e, c                                        ; $41e4: $59
	ld   d, d                                        ; $41e5: $52
	ld   a, l                                        ; $41e6: $7d
	sbc  [hl]                                        ; $41e7: $9e
	and  a                                           ; $41e8: $a7
	rst  JumpTable                                         ; $41e9: $df
	ld   [hl], l                                     ; $41ea: $75
	ld   h, l                                        ; $41eb: $65
	ld   l, l                                        ; $41ec: $6d
	sbc  a                                           ; $41ed: $9f
	dec  c                                           ; $41ee: $0d
	nop                                              ; $41ef: $00
	ld   a, [bc]                                     ; $41f0: $0a
	inc  e                                           ; $41f1: $1c
	inc  b                                           ; $41f2: $04
	ld   bc, $0101                                   ; $41f3: $01 $01 $01
	ld   bc, $c907                                   ; $41f6: $01 $07 $c9
	push af                                          ; $41f9: $f5
	ld   bc, $ac08                                   ; $41fa: $01 $08 $ac
	push bc                                          ; $41fd: $c5
	ld   l, l                                        ; $41fe: $6d
	add  a                                           ; $41ff: $87
	ld   [hl], h                                     ; $4200: $74
	dec  c                                           ; $4201: $0d
	ld   bc, $a707                                   ; $4202: $01 $07 $a7
	rst  JumpTable                                         ; $4205: $df
	ld   bc, $5908                                   ; $4206: $01 $08 $59
	ld   [hl], c                                     ; $4209: $71
	ld   l, l                                        ; $420a: $6d
	rst  $38                                         ; $420b: $ff
	rst  $38                                         ; $420c: $ff
	dec  c                                           ; $420d: $0d
	ld   a, b                                        ; $420e: $78
	and  c                                           ; $420f: $a1
	ld   l, a                                        ; $4210: $6f
	sub  c                                           ; $4211: $91
	ld   [hl], c                                     ; $4212: $71
	ld   [hl], h                                     ; $4213: $74
	sbc  a                                           ; $4214: $9f
	dec  c                                           ; $4215: $0d
	nop                                              ; $4216: $00
	ld   a, [bc]                                     ; $4217: $0a
	rlca                                             ; $4218: $07
	or   l                                           ; $4219: $b5
	ld   b, $03                                      ; $421a: $06 $03
	rst  $38                                         ; $421c: $ff
	ld   bc, $2301                                   ; $421d: $01 $01 $23
	nop                                              ; $4220: $00
	dec  e                                           ; $4221: $1d
	ld   b, b                                        ; $4222: $40
	inc  d                                           ; $4223: $14
	inc  bc                                          ; $4224: $03
	inc  d                                           ; $4225: $14
	ld   bc, $2803                                   ; $4226: $01 $03 $28
	nop                                              ; $4229: $00
	ld   bc, $6763                                   ; $422a: $01 $63 $67
	ld   e, d                                        ; $422d: $5a
	sbc  [hl]                                        ; $422e: $9e
	ld   l, a                                        ; $422f: $6f
	ld   d, d                                        ; $4230: $52
	ld   [bc], a                                     ; $4231: $02
	inc  de                                          ; $4232: $13
	ld   l, a                                        ; $4233: $6f
	sub  c                                           ; $4234: $91
	and  c                                           ; $4235: $a1
	ld   l, [hl]                                     ; $4236: $6e
	ld   a, e                                        ; $4237: $7b
	sbc  a                                           ; $4238: $9f
	dec  c                                           ; $4239: $0d
	ld   d, b                                        ; $423a: $50
	ei                                               ; $423b: $fb
	sbc  [hl]                                        ; $423c: $9e
	ld   e, b                                        ; $423d: $58
	sub  b                                           ; $423e: $90
	ld   h, l                                        ; $423f: $65
	sbc  e                                           ; $4240: $9b
	ld   e, c                                        ; $4241: $59
	ld   [hl], c                                     ; $4242: $71
	ld   l, l                                        ; $4243: $6d
	sbc  a                                           ; $4244: $9f
	dec  c                                           ; $4245: $0d
	nop                                              ; $4246: $00
	ld   a, [bc]                                     ; $4247: $0a
	ld   bc, $9850                                   ; $4248: $01 $50 $98
	ld   e, d                                        ; $424b: $5a
	halt                                             ; $424c: $76
	ld   d, h                                        ; $424d: $54
	sbc  [hl]                                        ; $424e: $9e
	ld   l, a                                        ; $424f: $6f
	ld   d, d                                        ; $4250: $52
	ld   [bc], a                                     ; $4251: $02
	inc  de                                          ; $4252: $13
	ld   l, a                                        ; $4253: $6f
	sub  c                                           ; $4254: $91
	and  c                                           ; $4255: $a1
	sbc  a                                           ; $4256: $9f
	dec  c                                           ; $4257: $0d
	nop                                              ; $4258: $00
	ld   a, [bc]                                     ; $4259: $0a
	nop                                              ; $425a: $00
	inc  e                                           ; $425b: $1c
	inc  b                                           ; $425c: $04
	inc  bc                                          ; $425d: $03
	inc  bc                                          ; $425e: $03
	dec  e                                           ; $425f: $1d
	ld   b, b                                        ; $4260: $40
	inc  d                                           ; $4261: $14
	inc  bc                                          ; $4262: $03
	inc  d                                           ; $4263: $14
	ld   bc, $2801                                   ; $4264: $01 $01 $28
	nop                                              ; $4267: $00
	ld   bc, $976e                                   ; $4268: $01 $6e $97
	ld   h, l                                        ; $426b: $65
	ld   a, b                                        ; $426c: $78
	ld   d, d                                        ; $426d: $52
	ld   a, b                                        ; $426e: $78
	ld   c, a                                        ; $426f: $4f
	sbc  [hl]                                        ; $4270: $9e
	dec  c                                           ; $4271: $0d
	ld   l, a                                        ; $4272: $6f
	ld   d, d                                        ; $4273: $52
	ld   [bc], a                                     ; $4274: $02
	inc  de                                          ; $4275: $13
	ld   l, a                                        ; $4276: $6f
	sub  c                                           ; $4277: $91
	and  c                                           ; $4278: $a1
	sbc  a                                           ; $4279: $9f
	dec  c                                           ; $427a: $0d
	nop                                              ; $427b: $00
	inc  e                                           ; $427c: $1c
	inc  b                                           ; $427d: $04
	nop                                              ; $427e: $00
	nop                                              ; $427f: $00
	ld   bc, $9075                                   ; $4280: $01 $75 $90
	sbc  [hl]                                        ; $4283: $9e
	ld   e, b                                        ; $4284: $58
	sub  b                                           ; $4285: $90
	ld   h, l                                        ; $4286: $65
	sbc  e                                           ; $4287: $9b
	ld   e, c                                        ; $4288: $59
	ld   [hl], c                                     ; $4289: $71
	ld   l, l                                        ; $428a: $6d
	sbc  a                                           ; $428b: $9f
	dec  c                                           ; $428c: $0d
	nop                                              ; $428d: $00
	ld   a, [bc]                                     ; $428e: $0a
	nop                                              ; $428f: $00
	rrca                                             ; $4290: $0f
	nop                                              ; $4291: $00
	ld   bc, $6601                                   ; $4292: $01 $01 $66
	sub  c                                           ; $4295: $91
	ld   d, b                                        ; $4296: $50
	sbc  [hl]                                        ; $4297: $9e
	ld   h, [hl]                                     ; $4298: $66
	sub  c                                           ; $4299: $91
	and  c                                           ; $429a: $a1
	ld   e, a                                        ; $429b: $5f
	and  c                                           ; $429c: $a1
	and  b                                           ; $429d: $a0
	ld   h, l                                        ; $429e: $65
	sub  [hl]                                        ; $429f: $96
	ld   d, h                                        ; $42a0: $54
	sbc  a                                           ; $42a1: $9f
	dec  c                                           ; $42a2: $0d
	nop                                              ; $42a3: $00
	ld   a, [bc]                                     ; $42a4: $0a
	dec  b                                           ; $42a5: $05
	add  b                                           ; $42a6: $80
	ld   b, l                                        ; $42a7: $45
	ld   bc, $0001                                   ; $42a8: $01 $01 $00
	rrca                                             ; $42ab: $0f
	inc  b                                           ; $42ac: $04
	ld   bc, $5401                                   ; $42ad: $01 $01 $54
	and  c                                           ; $42b0: $a1
	ld   a, [$000d]                                  ; $42b1: $fa $0d $00
	dec  b                                           ; $42b4: $05
	ld   b, b                                        ; $42b5: $40
	rst  $38                                         ; $42b6: $ff
	ld   bc, $0005                                   ; $42b7: $01 $05 $00
	ld   bc, $9166                                   ; $42ba: $01 $66 $91
	sbc  [hl]                                        ; $42bd: $9e
	ld   d, d                                        ; $42be: $52
	ld   e, l                                        ; $42bf: $5d
	sub  [hl]                                        ; $42c0: $96
	rst  $38                                         ; $42c1: $ff
	rst  $38                                         ; $42c2: $ff
	dec  c                                           ; $42c3: $0d
	ld   h, [hl]                                     ; $42c4: $66
	sub  c                                           ; $42c5: $91
	and  c                                           ; $42c6: $a1
	ld   e, a                                        ; $42c7: $5f
	and  c                                           ; $42c8: $a1
	adc  e                                           ; $42c9: $8b
	and  c                                           ; $42ca: $a1
	ld   a, [$000d]                                  ; $42cb: $fa $0d $00
	ld   a, [bc]                                     ; $42ce: $0a
	rrca                                             ; $42cf: $0f
	nop                                              ; $42d0: $00
	ld   bc, $0101                                   ; $42d1: $01 $01 $01
	inc  bc                                          ; $42d4: $03
	and  e                                           ; $42d5: $a3
	and  l                                           ; $42d6: $a5
	db   $ec                                         ; $42d7: $ec
	cp   d                                           ; $42d8: $ba
	ld   a, l                                        ; $42d9: $7d
	rst  $38                                         ; $42da: $ff
	rst  $38                                         ; $42db: $ff
	jp   nc, Jump_04f_6efb                           ; $42dc: $d2 $fb $6e

	ld   bc, $0d04                                   ; $42df: $01 $04 $0d
	nop                                              ; $42e2: $00
	ld   a, [bc]                                     ; $42e3: $0a
	add  hl, de                                      ; $42e4: $19
	dec  b                                           ; $42e5: $05
	inc  bc                                          ; $42e6: $03
	or   c                                           ; $42e7: $b1
	ei                                               ; $42e8: $fb
	and  b                                           ; $42e9: $a0
	inc  bc                                          ; $42ea: $03
	add  b                                           ; $42eb: $80
	ld   h, a                                        ; $42ec: $67
	nop                                              ; $42ed: $00
	nop                                              ; $42ee: $00
	jp   nz, $aee9                                   ; $42ef: $c2 $e9 $ae

	and  b                                           ; $42f2: $a0
	inc  bc                                          ; $42f3: $03
	add  b                                           ; $42f4: $80
	ld   h, a                                        ; $42f5: $67
	nop                                              ; $42f6: $00
	ld   bc, $fbd2                                   ; $42f7: $01 $d2 $fb
	and  b                                           ; $42fa: $a0
	inc  bc                                          ; $42fb: $03
	add  b                                           ; $42fc: $80
	ld   h, a                                        ; $42fd: $67
	nop                                              ; $42fe: $00
	ld   [bc], a                                     ; $42ff: $02
	rlca                                             ; $4300: $07
	ld   a, b                                        ; $4301: $78
	rlca                                             ; $4302: $07
	ld   [bc], a                                     ; $4303: $02
	inc  bc                                          ; $4304: $03
	ld   bc, $2000                                   ; $4305: $01 $00 $20
	nop                                              ; $4308: $00
	rlca                                             ; $4309: $07
	and  l                                           ; $430a: $a5
	rlca                                             ; $430b: $07
	ld   [bc], a                                     ; $430c: $02
	inc  bc                                          ; $430d: $03
	ld   bc, $2001                                   ; $430e: $01 $01 $20
	nop                                              ; $4311: $00
	rlca                                             ; $4312: $07
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4313: $cf
	rlca                                             ; $4314: $07
	ld   [bc], a                                     ; $4315: $02
	inc  bc                                          ; $4316: $03
	ld   bc, $2002                                   ; $4317: $01 $02 $20
	nop                                              ; $431a: $00
	ld   b, $f8                                      ; $431b: $06 $f8
	rlca                                             ; $431d: $07
	rrca                                             ; $431e: $0f
	nop                                              ; $431f: $00
	ld   bc, $b101                                   ; $4320: $01 $01 $b1
	ei                                               ; $4323: $fb
	ld   l, [hl]                                     ; $4324: $6e
	ld   a, [$000d]                                  ; $4325: $fa $0d $00
	ld   a, [bc]                                     ; $4328: $0a
	inc  e                                           ; $4329: $1c
	inc  b                                           ; $432a: $04
	ld   bc, $0101                                   ; $432b: $01 $01 $01
	sbc  l                                           ; $432e: $9d
	ei                                               ; $432f: $fb
	ld   d, d                                        ; $4330: $52
	ld   a, [$a30d]                                  ; $4331: $fa $0d $a3
	and  l                                           ; $4334: $a5
	db   $ec                                         ; $4335: $ec
	cp   d                                           ; $4336: $ba
	ld   a, h                                        ; $4337: $7c
	ld   e, c                                        ; $4338: $59
	ld   l, a                                        ; $4339: $6f
	ei                                               ; $433a: $fb
	ld   a, [$000d]                                  ; $433b: $fa $0d $00
	ld   a, [bc]                                     ; $433e: $0a
	dec  b                                           ; $433f: $05
	ld   b, b                                        ; $4340: $40
	rst  $38                                         ; $4341: $ff
	inc  bc                                          ; $4342: $03
	rst  $38                                         ; $4343: $ff
	ld   bc, $2801                                   ; $4344: $01 $01 $28
	nop                                              ; $4347: $00
	ld   b, $3a                                      ; $4348: $06 $3a
	ld   [$000f], sp                                 ; $434a: $08 $0f $00
	ld   bc, wtodo_VisitedTitleScreen                                   ; $434d: $01 $01 $c2
	jp   hl                                          ; $4350: $e9


	xor  [hl]                                        ; $4351: $ae
	ld   l, [hl]                                     ; $4352: $6e
	ld   a, [$000d]                                  ; $4353: $fa $0d $00
	ld   a, [bc]                                     ; $4356: $0a
	dec  b                                           ; $4357: $05
	ld   b, b                                        ; $4358: $40
	rst  $38                                         ; $4359: $ff
	inc  bc                                          ; $435a: $03
	rst  $38                                         ; $435b: $ff
	ld   bc, $2901                                   ; $435c: $01 $01 $29
	nop                                              ; $435f: $00
	inc  e                                           ; $4360: $1c
	inc  b                                           ; $4361: $04
	ld   b, $06                                      ; $4362: $06 $06
	ld   bc, $9e50                                   ; $4364: $01 $50 $9e
	adc  h                                           ; $4367: $8c
	ld   e, a                                        ; $4368: $5f
	ld   l, a                                        ; $4369: $6f
	sub  c                                           ; $436a: $91
	ld   [hl], c                                     ; $436b: $71
	ld   l, l                                        ; $436c: $6d
	rst  $38                                         ; $436d: $ff
	rst  $38                                         ; $436e: $ff
	dec  c                                           ; $436f: $0d
	nop                                              ; $4370: $00
	ld   a, [bc]                                     ; $4371: $0a
	ld   b, $3a                                      ; $4372: $06 $3a
	ld   [$000f], sp                                 ; $4374: $08 $0f $00
	ld   bc, $d201                                   ; $4377: $01 $01 $d2
	ei                                               ; $437a: $fb
	ld   l, [hl]                                     ; $437b: $6e
	ld   a, [$000d]                                  ; $437c: $fa $0d $00
	ld   a, [bc]                                     ; $437f: $0a
	inc  e                                           ; $4380: $1c
	inc  b                                           ; $4381: $04
	nop                                              ; $4382: $00
	nop                                              ; $4383: $00
	ld   bc, $9e50                                   ; $4384: $01 $50 $9e
	ld   d, b                                        ; $4387: $50
	ld   d, d                                        ; $4388: $52
	ld   h, c                                        ; $4389: $61
	ld   l, [hl]                                     ; $438a: $6e
	rst  $38                                         ; $438b: $ff
	rst  $38                                         ; $438c: $ff
	dec  c                                           ; $438d: $0d
	ld   h, [hl]                                     ; $438e: $66
	sub  c                                           ; $438f: $91
	sbc  [hl]                                        ; $4390: $9e
	ld   d, b                                        ; $4391: $50
	ld   d, d                                        ; $4392: $52
	ld   h, c                                        ; $4393: $61
	ld   [hl], l                                     ; $4394: $75
	ld   h, l                                        ; $4395: $65
	sub  l                                           ; $4396: $95
	ld   a, [$000d]                                  ; $4397: $fa $0d $00
	ld   a, [bc]                                     ; $439a: $0a
	ld   b, $57                                      ; $439b: $06 $57
	ld   [$041c], sp                                 ; $439d: $08 $1c $04
	ld   [bc], a                                     ; $43a0: $02
	ld   [bc], a                                     ; $43a1: $02
	dec  e                                           ; $43a2: $1d
	ld   b, b                                        ; $43a3: $40
	inc  d                                           ; $43a4: $14
	inc  bc                                          ; $43a5: $03
	inc  d                                           ; $43a6: $14
	ld   bc, $2903                                   ; $43a7: $01 $03 $29
	nop                                              ; $43aa: $00
	ld   bc, $526f                                   ; $43ab: $01 $6f $52
	ld   [bc], a                                     ; $43ae: $02
	inc  de                                          ; $43af: $13
	ld   l, a                                        ; $43b0: $6f
	sub  c                                           ; $43b1: $91
	and  c                                           ; $43b2: $a1
	sbc  [hl]                                        ; $43b3: $9e
	cp   e                                           ; $43b4: $bb
	db   $ed                                         ; $43b5: $ed
	and  l                                           ; $43b6: $a5
	ld   a, [$500d]                                  ; $43b7: $fa $0d $50
	halt                                             ; $43ba: $76
	ld   l, [hl]                                     ; $43bb: $6e
	ld   h, l                                        ; $43bc: $65
	ld   h, l                                        ; $43bd: $65
	ld   l, l                                        ; $43be: $6d
	ei                                               ; $43bf: $fb
	ld   a, [$000d]                                  ; $43c0: $fa $0d $00
	ld   a, [bc]                                     ; $43c3: $0a
	ld   bc, $5490                                   ; $43c4: $01 $90 $54
	sbc  [hl]                                        ; $43c7: $9e
	ld   l, a                                        ; $43c8: $6f
	ld   d, d                                        ; $43c9: $52
	ld   [bc], a                                     ; $43ca: $02
	inc  de                                          ; $43cb: $13
	ld   l, a                                        ; $43cc: $6f
	sub  c                                           ; $43cd: $91
	and  c                                           ; $43ce: $a1
	halt                                             ; $43cf: $76
	ld   a, l                                        ; $43d0: $7d
	dec  c                                           ; $43d1: $0d
	sub  d                                           ; $43d2: $92
	and  c                                           ; $43d3: $a1
	ld   a, b                                        ; $43d4: $78
	ld   d, d                                        ; $43d5: $52
	ld   a, [$d60d]                                  ; $43d6: $fa $0d $d6
	push af                                          ; $43d9: $f5
	ld   l, [hl]                                     ; $43da: $6e
	ld   a, [$000d]                                  ; $43db: $fa $0d $00
	ld   a, [bc]                                     ; $43de: $0a
	nop                                              ; $43df: $00
	inc  e                                           ; $43e0: $1c
	inc  b                                           ; $43e1: $04
	nop                                              ; $43e2: $00
	nop                                              ; $43e3: $00
	ld   bc, $9166                                   ; $43e4: $01 $66 $91
	sbc  [hl]                                        ; $43e7: $9e
	ld   a, c                                        ; $43e8: $79
	ld   e, c                                        ; $43e9: $59
	ld   d, d                                        ; $43ea: $52
	adc  a                                           ; $43eb: $8f
	ld   d, d                                        ; $43ec: $52
	ld   e, l                                        ; $43ed: $5d
	sub  [hl]                                        ; $43ee: $96
	rst  $38                                         ; $43ef: $ff
	rst  $38                                         ; $43f0: $ff
	dec  c                                           ; $43f1: $0d
	ld   h, [hl]                                     ; $43f2: $66
	sub  c                                           ; $43f3: $91
	and  c                                           ; $43f4: $a1
	ld   e, a                                        ; $43f5: $5f
	and  c                                           ; $43f6: $a1
	adc  e                                           ; $43f7: $8b
	and  c                                           ; $43f8: $a1
	ld   a, [$000d]                                  ; $43f9: $fa $0d $00
	ld   a, [bc]                                     ; $43fc: $0a
	rrca                                             ; $43fd: $0f
	nop                                              ; $43fe: $00
	ld   bc, $0101                                   ; $43ff: $01 $01 $01
	inc  bc                                          ; $4402: $03
	and  e                                           ; $4403: $a3
	and  l                                           ; $4404: $a5
	db   $ec                                         ; $4405: $ec
	cp   d                                           ; $4406: $ba
	ld   a, l                                        ; $4407: $7d
	rst  $38                                         ; $4408: $ff
	rst  $38                                         ; $4409: $ff
	or   c                                           ; $440a: $b1
	ei                                               ; $440b: $fb
	ld   l, [hl]                                     ; $440c: $6e
	ld   bc, $0d04                                   ; $440d: $01 $04 $0d
	nop                                              ; $4410: $00
	ld   a, [bc]                                     ; $4411: $0a
	add  hl, de                                      ; $4412: $19
	dec  b                                           ; $4413: $05
	inc  bc                                          ; $4414: $03
	jp   nz, $aee9                                   ; $4415: $c2 $e9 $ae

	and  b                                           ; $4418: $a0
	inc  bc                                          ; $4419: $03
	add  b                                           ; $441a: $80
	ld   h, a                                        ; $441b: $67
	nop                                              ; $441c: $00
	nop                                              ; $441d: $00
	jp   nc, $a0fb                                   ; $441e: $d2 $fb $a0

	inc  bc                                          ; $4421: $03
	add  b                                           ; $4422: $80
	ld   h, a                                        ; $4423: $67
	nop                                              ; $4424: $00
	ld   bc, $fbb1                                   ; $4425: $01 $b1 $fb
	and  b                                           ; $4428: $a0
	inc  bc                                          ; $4429: $03
	add  b                                           ; $442a: $80
	ld   h, a                                        ; $442b: $67
	nop                                              ; $442c: $00
	ld   [bc], a                                     ; $442d: $02
	rlca                                             ; $442e: $07
	and  [hl]                                        ; $442f: $a6
	ld   [$0302], sp                                 ; $4430: $08 $02 $03
	ld   bc, $2000                                   ; $4433: $01 $00 $20
	nop                                              ; $4436: $00
	rlca                                             ; $4437: $07
	call nc, $0208                                   ; $4438: $d4 $08 $02
	inc  bc                                          ; $443b: $03
	ld   bc, $2001                                   ; $443c: $01 $01 $20
	nop                                              ; $443f: $00
	rlca                                             ; $4440: $07
	db   $fd                                         ; $4441: $fd
	ld   [$0302], sp                                 ; $4442: $08 $02 $03
	ld   bc, $2002                                   ; $4445: $01 $02 $20
	nop                                              ; $4448: $00
	ld   b, $f8                                      ; $4449: $06 $f8
	rlca                                             ; $444b: $07
	rrca                                             ; $444c: $0f
	nop                                              ; $444d: $00
	ld   bc, wtodo_VisitedTitleScreen                                   ; $444e: $01 $01 $c2
	jp   hl                                          ; $4451: $e9


	xor  [hl]                                        ; $4452: $ae
	ld   l, [hl]                                     ; $4453: $6e
	ld   a, [$000d]                                  ; $4454: $fa $0d $00
	ld   a, [bc]                                     ; $4457: $0a
	inc  e                                           ; $4458: $1c
	inc  b                                           ; $4459: $04
	ld   bc, $0101                                   ; $445a: $01 $01 $01
	sbc  l                                           ; $445d: $9d
	ei                                               ; $445e: $fb
	ld   d, d                                        ; $445f: $52
	ld   a, [$a30d]                                  ; $4460: $fa $0d $a3
	and  l                                           ; $4463: $a5
	db   $ec                                         ; $4464: $ec
	cp   d                                           ; $4465: $ba
	ld   a, h                                        ; $4466: $7c
	ld   e, c                                        ; $4467: $59
	ld   l, a                                        ; $4468: $6f
	ei                                               ; $4469: $fb
	ld   a, [$000d]                                  ; $446a: $fa $0d $00
	ld   a, [bc]                                     ; $446d: $0a
	dec  b                                           ; $446e: $05
	ld   b, b                                        ; $446f: $40
	rst  $38                                         ; $4470: $ff
	inc  bc                                          ; $4471: $03
	rst  $38                                         ; $4472: $ff
	ld   bc, $2801                                   ; $4473: $01 $01 $28
	nop                                              ; $4476: $00
	ld   b, $26                                      ; $4477: $06 $26
	add  hl, bc                                      ; $4479: $09
	rrca                                             ; $447a: $0f
	nop                                              ; $447b: $00
	ld   bc, $d201                                   ; $447c: $01 $01 $d2
	ei                                               ; $447f: $fb
	ld   l, [hl]                                     ; $4480: $6e
	ld   a, [$000d]                                  ; $4481: $fa $0d $00
	ld   a, [bc]                                     ; $4484: $0a
	dec  b                                           ; $4485: $05
	ld   b, b                                        ; $4486: $40
	rst  $38                                         ; $4487: $ff
	inc  bc                                          ; $4488: $03
	rst  $38                                         ; $4489: $ff
	ld   bc, $2901                                   ; $448a: $01 $01 $29
	nop                                              ; $448d: $00
	inc  e                                           ; $448e: $1c
	inc  b                                           ; $448f: $04
	ld   b, $06                                      ; $4490: $06 $06
	ld   bc, $9e50                                   ; $4492: $01 $50 $9e
	adc  h                                           ; $4495: $8c
	ld   e, a                                        ; $4496: $5f
	ld   l, a                                        ; $4497: $6f
	sub  c                                           ; $4498: $91
	ld   [hl], c                                     ; $4499: $71
	ld   l, l                                        ; $449a: $6d
	rst  $38                                         ; $449b: $ff
	rst  $38                                         ; $449c: $ff
	dec  c                                           ; $449d: $0d
	nop                                              ; $449e: $00
	ld   a, [bc]                                     ; $449f: $0a
	ld   b, $26                                      ; $44a0: $06 $26
	add  hl, bc                                      ; $44a2: $09
	rrca                                             ; $44a3: $0f
	nop                                              ; $44a4: $00
	ld   bc, $b101                                   ; $44a5: $01 $01 $b1
	ei                                               ; $44a8: $fb
	ld   l, [hl]                                     ; $44a9: $6e
	ld   a, [$000d]                                  ; $44aa: $fa $0d $00
	ld   a, [bc]                                     ; $44ad: $0a
	inc  e                                           ; $44ae: $1c
	inc  b                                           ; $44af: $04
	nop                                              ; $44b0: $00
	nop                                              ; $44b1: $00
	ld   bc, $9e50                                   ; $44b2: $01 $50 $9e
	ld   d, b                                        ; $44b5: $50
	ld   d, d                                        ; $44b6: $52
	ld   h, c                                        ; $44b7: $61
	ld   l, [hl]                                     ; $44b8: $6e
	rst  $38                                         ; $44b9: $ff
	rst  $38                                         ; $44ba: $ff
	dec  c                                           ; $44bb: $0d
	ld   h, [hl]                                     ; $44bc: $66
	sub  c                                           ; $44bd: $91
	sbc  [hl]                                        ; $44be: $9e
	ld   d, b                                        ; $44bf: $50
	ld   d, d                                        ; $44c0: $52
	ld   h, c                                        ; $44c1: $61
	ld   [hl], l                                     ; $44c2: $75
	ld   h, l                                        ; $44c3: $65
	sub  l                                           ; $44c4: $95
	ld   a, [$000d]                                  ; $44c5: $fa $0d $00
	ld   a, [bc]                                     ; $44c8: $0a
	ld   b, $44                                      ; $44c9: $06 $44
	add  hl, bc                                      ; $44cb: $09
	inc  e                                           ; $44cc: $1c
	inc  b                                           ; $44cd: $04
	nop                                              ; $44ce: $00
	nop                                              ; $44cf: $00
	ld   bc, $9166                                   ; $44d0: $01 $66 $91
	sbc  [hl]                                        ; $44d3: $9e
	ld   h, e                                        ; $44d4: $63
	and  c                                           ; $44d5: $a1
	ld   e, c                                        ; $44d6: $59
	ld   d, d                                        ; $44d7: $52
	adc  a                                           ; $44d8: $8f
	ld   d, d                                        ; $44d9: $52
	ld   e, l                                        ; $44da: $5d
	sub  [hl]                                        ; $44db: $96
	rst  $38                                         ; $44dc: $ff
	rst  $38                                         ; $44dd: $ff
	dec  c                                           ; $44de: $0d
	ld   h, [hl]                                     ; $44df: $66
	sub  c                                           ; $44e0: $91
	and  c                                           ; $44e1: $a1
	ld   e, a                                        ; $44e2: $5f
	and  c                                           ; $44e3: $a1
	adc  e                                           ; $44e4: $8b
	and  c                                           ; $44e5: $a1
	ld   a, [$000d]                                  ; $44e6: $fa $0d $00
	ld   a, [bc]                                     ; $44e9: $0a
	rrca                                             ; $44ea: $0f
	nop                                              ; $44eb: $00
	ld   bc, $0101                                   ; $44ec: $01 $01 $01
	inc  bc                                          ; $44ef: $03
	and  e                                           ; $44f0: $a3
	and  l                                           ; $44f1: $a5
	db   $ec                                         ; $44f2: $ec
	cp   d                                           ; $44f3: $ba
	ld   a, l                                        ; $44f4: $7d
	rst  $38                                         ; $44f5: $ff
	rst  $38                                         ; $44f6: $ff
	or   c                                           ; $44f7: $b1
	ei                                               ; $44f8: $fb
	ld   l, [hl]                                     ; $44f9: $6e
	ld   bc, $0d04                                   ; $44fa: $01 $04 $0d
	nop                                              ; $44fd: $00
	ld   a, [bc]                                     ; $44fe: $0a
	add  hl, de                                      ; $44ff: $19
	dec  b                                           ; $4500: $05
	inc  bc                                          ; $4501: $03
	jp   nz, $aee9                                   ; $4502: $c2 $e9 $ae

	and  b                                           ; $4505: $a0
	inc  bc                                          ; $4506: $03
	add  b                                           ; $4507: $80
	ld   h, a                                        ; $4508: $67
	nop                                              ; $4509: $00
	nop                                              ; $450a: $00
	jp   nc, $a0fb                                   ; $450b: $d2 $fb $a0

	inc  bc                                          ; $450e: $03
	add  b                                           ; $450f: $80
	ld   h, a                                        ; $4510: $67
	nop                                              ; $4511: $00
	ld   bc, $fbb1                                   ; $4512: $01 $b1 $fb
	and  b                                           ; $4515: $a0
	inc  bc                                          ; $4516: $03
	add  b                                           ; $4517: $80
	ld   h, a                                        ; $4518: $67
	nop                                              ; $4519: $00
	ld   [bc], a                                     ; $451a: $02
	rlca                                             ; $451b: $07
	sub  e                                           ; $451c: $93
	add  hl, bc                                      ; $451d: $09
	ld   [bc], a                                     ; $451e: $02
	inc  bc                                          ; $451f: $03
	ld   bc, $2000                                   ; $4520: $01 $00 $20
	nop                                              ; $4523: $00
	rlca                                             ; $4524: $07
	pop  bc                                          ; $4525: $c1
	add  hl, bc                                      ; $4526: $09
	ld   [bc], a                                     ; $4527: $02
	inc  bc                                          ; $4528: $03
	ld   bc, $2001                                   ; $4529: $01 $01 $20
	nop                                              ; $452c: $00
	rlca                                             ; $452d: $07
	ld   [$0209], a                                  ; $452e: $ea $09 $02
	inc  bc                                          ; $4531: $03
	ld   bc, $2002                                   ; $4532: $01 $02 $20
	nop                                              ; $4535: $00
	ld   b, $f8                                      ; $4536: $06 $f8
	rlca                                             ; $4538: $07
	rrca                                             ; $4539: $0f
	nop                                              ; $453a: $00
	ld   bc, wtodo_VisitedTitleScreen                                   ; $453b: $01 $01 $c2
	jp   hl                                          ; $453e: $e9


	xor  [hl]                                        ; $453f: $ae
	ld   l, [hl]                                     ; $4540: $6e
	ld   a, [$000d]                                  ; $4541: $fa $0d $00
	ld   a, [bc]                                     ; $4544: $0a
	inc  e                                           ; $4545: $1c
	inc  b                                           ; $4546: $04
	ld   bc, $0101                                   ; $4547: $01 $01 $01
	sbc  l                                           ; $454a: $9d
	ei                                               ; $454b: $fb
	ld   d, d                                        ; $454c: $52
	ld   a, [$a30d]                                  ; $454d: $fa $0d $a3
	and  l                                           ; $4550: $a5
	db   $ec                                         ; $4551: $ec
	cp   d                                           ; $4552: $ba
	ld   a, h                                        ; $4553: $7c
	ld   e, c                                        ; $4554: $59
	ld   l, a                                        ; $4555: $6f
	ei                                               ; $4556: $fb
	ld   a, [$000d]                                  ; $4557: $fa $0d $00
	ld   a, [bc]                                     ; $455a: $0a
	dec  b                                           ; $455b: $05
	ld   b, b                                        ; $455c: $40
	rst  $38                                         ; $455d: $ff
	inc  bc                                          ; $455e: $03
	rst  $38                                         ; $455f: $ff
	ld   bc, $2801                                   ; $4560: $01 $01 $28
	nop                                              ; $4563: $00
	ld   b, $09                                      ; $4564: $06 $09
	ld   a, [bc]                                     ; $4566: $0a
	rrca                                             ; $4567: $0f
	nop                                              ; $4568: $00
	ld   bc, $d201                                   ; $4569: $01 $01 $d2
	ei                                               ; $456c: $fb
	ld   l, [hl]                                     ; $456d: $6e
	ld   a, [$000d]                                  ; $456e: $fa $0d $00
	ld   a, [bc]                                     ; $4571: $0a
	dec  b                                           ; $4572: $05
	ld   b, b                                        ; $4573: $40
	rst  $38                                         ; $4574: $ff
	inc  bc                                          ; $4575: $03
	rst  $38                                         ; $4576: $ff
	ld   bc, $2901                                   ; $4577: $01 $01 $29
	nop                                              ; $457a: $00
	inc  e                                           ; $457b: $1c
	inc  b                                           ; $457c: $04
	ld   b, $06                                      ; $457d: $06 $06
	ld   bc, $9e50                                   ; $457f: $01 $50 $9e
	adc  h                                           ; $4582: $8c
	ld   e, a                                        ; $4583: $5f
	ld   l, a                                        ; $4584: $6f
	sub  c                                           ; $4585: $91
	ld   [hl], c                                     ; $4586: $71
	ld   l, l                                        ; $4587: $6d
	rst  $38                                         ; $4588: $ff
	rst  $38                                         ; $4589: $ff
	dec  c                                           ; $458a: $0d
	nop                                              ; $458b: $00
	ld   a, [bc]                                     ; $458c: $0a
	ld   b, $09                                      ; $458d: $06 $09
	ld   a, [bc]                                     ; $458f: $0a
	rrca                                             ; $4590: $0f
	nop                                              ; $4591: $00
	ld   bc, $b101                                   ; $4592: $01 $01 $b1
	ei                                               ; $4595: $fb
	ld   l, [hl]                                     ; $4596: $6e
	ld   a, [$000d]                                  ; $4597: $fa $0d $00
	ld   a, [bc]                                     ; $459a: $0a
	inc  e                                           ; $459b: $1c
	inc  b                                           ; $459c: $04
	nop                                              ; $459d: $00
	nop                                              ; $459e: $00
	ld   bc, $9a50                                   ; $459f: $01 $50 $9a
	sbc  [hl]                                        ; $45a2: $9e
	ld   d, b                                        ; $45a3: $50
	ld   d, d                                        ; $45a4: $52
	ld   h, c                                        ; $45a5: $61
	ld   l, [hl]                                     ; $45a6: $6e
	rst  $38                                         ; $45a7: $ff
	rst  $38                                         ; $45a8: $ff
	dec  c                                           ; $45a9: $0d
	nop                                              ; $45aa: $00
	ld   a, [bc]                                     ; $45ab: $0a
	ld   b, $09                                      ; $45ac: $06 $09
	ld   a, [bc]                                     ; $45ae: $0a
	rrca                                             ; $45af: $0f
	nop                                              ; $45b0: $00
	ld   bc, $0101                                   ; $45b1: $01 $01 $01
	inc  bc                                          ; $45b4: $03
	add  e                                           ; $45b5: $83
	ld   d, h                                        ; $45b6: $54
	rst  $38                                         ; $45b7: $ff
	rst  $38                                         ; $45b8: $ff
	ld   h, c                                        ; $45b9: $61
	and  c                                           ; $45ba: $a1
	ld   a, b                                        ; $45bb: $78
	sub  b                                           ; $45bc: $90
	and  c                                           ; $45bd: $a1
	ld   l, [hl]                                     ; $45be: $6e
	sbc  e                                           ; $45bf: $9b
	ld   d, h                                        ; $45c0: $54
	ld   bc, $0d04                                   ; $45c1: $01 $04 $0d
	nop                                              ; $45c4: $00
	ld   a, [bc]                                     ; $45c5: $0a
	rlca                                             ; $45c6: $07
	db   $f4                                         ; $45c7: $f4
	ld   a, [bc]                                     ; $45c8: $0a
	inc  bc                                          ; $45c9: $03
	rst  $38                                         ; $45ca: $ff
	ld   bc, $2005                                   ; $45cb: $01 $05 $20
	nop                                              ; $45ce: $00
	rlca                                             ; $45cf: $07
	sbc  [hl]                                        ; $45d0: $9e
	ld   a, [bc]                                     ; $45d1: $0a
	inc  bc                                          ; $45d2: $03
	rst  $38                                         ; $45d3: $ff
	ld   bc, $2506                                   ; $45d4: $01 $06 $25
	nop                                              ; $45d7: $00
	inc  e                                           ; $45d8: $1c
	inc  b                                           ; $45d9: $04
	rlca                                             ; $45da: $07
	rlca                                             ; $45db: $07
	dec  e                                           ; $45dc: $1d
	ld   b, b                                        ; $45dd: $40
	inc  d                                           ; $45de: $14
	inc  bc                                          ; $45df: $03
	inc  d                                           ; $45e0: $14
	ld   bc, $2903                                   ; $45e1: $01 $03 $29
	nop                                              ; $45e4: $00
	ld   bc, $526f                                   ; $45e5: $01 $6f $52
	ld   [bc], a                                     ; $45e8: $02
	inc  de                                          ; $45e9: $13
	ld   l, a                                        ; $45ea: $6f
	sub  c                                           ; $45eb: $91
	and  c                                           ; $45ec: $a1
	cp   e                                           ; $45ed: $bb
	db   $ed                                         ; $45ee: $ed
	and  l                                           ; $45ef: $a5
	db   $fc                                         ; $45f0: $fc
	rst  $38                                         ; $45f1: $ff
	rst  $38                                         ; $45f2: $ff
	dec  c                                           ; $45f3: $0d
	ld   l, d                                        ; $45f4: $6a
	ld   [hl], c                                     ; $45f5: $71
	ld   l, l                                        ; $45f6: $6d
	ld   d, d                                        ; $45f7: $52
	sbc  [hl]                                        ; $45f8: $9e
	ld   l, d                                        ; $45f9: $6a
	ld   [hl], c                                     ; $45fa: $71
	ld   l, l                                        ; $45fb: $6d
	ld   d, d                                        ; $45fc: $52
	sbc  [hl]                                        ; $45fd: $9e
	dec  c                                           ; $45fe: $0d
	ld   d, b                                        ; $45ff: $50
	halt                                             ; $4600: $76
	ld   l, [hl]                                     ; $4601: $6e
	ld   h, l                                        ; $4602: $65
	ld   h, l                                        ; $4603: $65
	ld   l, l                                        ; $4604: $6d
	and  c                                           ; $4605: $a1
	ld   l, [hl]                                     ; $4606: $6e
	rst  $38                                         ; $4607: $ff
	rst  $38                                         ; $4608: $ff
	dec  c                                           ; $4609: $0d
	nop                                              ; $460a: $00
	ld   a, [bc]                                     ; $460b: $0a
	inc  e                                           ; $460c: $1c
	inc  b                                           ; $460d: $04
	inc  b                                           ; $460e: $04
	inc  b                                           ; $460f: $04
	ld   bc, $bab1                                   ; $4610: $01 $b1 $ba
	push af                                          ; $4613: $f5
	rst  $38                                         ; $4614: $ff
	rst  $38                                         ; $4615: $ff
	dec  c                                           ; $4616: $0d
	and  e                                           ; $4617: $a3
	and  l                                           ; $4618: $a5
	db   $ec                                         ; $4619: $ec
	cp   d                                           ; $461a: $ba
	ld   h, [hl]                                     ; $461b: $66
	sub  c                                           ; $461c: $91
	and  c                                           ; $461d: $a1
	ld   e, a                                        ; $461e: $5f
	and  c                                           ; $461f: $a1
	dec  c                                           ; $4620: $0d
	ld   [hl], d                                     ; $4621: $72
	sub  [hl]                                        ; $4622: $96
	ld   d, d                                        ; $4623: $52
	ld   a, h                                        ; $4624: $7c
	ld   a, c                                        ; $4625: $79
	rst  $38                                         ; $4626: $ff
	rst  $38                                         ; $4627: $ff
	dec  c                                           ; $4628: $0d
	nop                                              ; $4629: $00
	ld   a, [bc]                                     ; $462a: $0a
	ld   bc, $6152                                   ; $462b: $01 $52 $61
	ld   d, h                                        ; $462e: $54
	sbc  [hl]                                        ; $462f: $9e
	cp   c                                           ; $4630: $b9
	push hl                                          ; $4631: $e5
	push af                                          ; $4632: $f5
	sbc  $fb                                         ; $4633: $de $fb
	db   $ed                                         ; $4635: $ed
	rst  $38                                         ; $4636: $ff
	rst  $38                                         ; $4637: $ff
	dec  c                                           ; $4638: $0d
	nop                                              ; $4639: $00
	ld   a, [bc]                                     ; $463a: $0a
	dec  c                                           ; $463b: $0d
	nop                                              ; $463c: $00
	nop                                              ; $463d: $00
	rrca                                             ; $463e: $0f
	nop                                              ; $463f: $00
	ld   bc, $1e09                                   ; $4640: $01 $09 $1e
	nop                                              ; $4643: $00
	inc  e                                           ; $4644: $1c
	inc  b                                           ; $4645: $04
	ld   bc, $1d01                                   ; $4646: $01 $01 $1d
	ld   b, b                                        ; $4649: $40
	inc  d                                           ; $464a: $14
	inc  bc                                          ; $464b: $03
	inc  d                                           ; $464c: $14
	ld   bc, $2803                                   ; $464d: $01 $03 $28
	nop                                              ; $4650: $00
	ld   bc, $fb9d                                   ; $4651: $01 $9d $fb
	ld   d, d                                        ; $4654: $52
	sbc  [hl]                                        ; $4655: $9e
	sbc  l                                           ; $4656: $9d
	ei                                               ; $4657: $fb
	ld   d, d                                        ; $4658: $52
	ld   a, [$a30d]                                  ; $4659: $fa $0d $a3
	and  l                                           ; $465c: $a5
	db   $ec                                         ; $465d: $ec
	cp   d                                           ; $465e: $ba
	ld   a, h                                        ; $465f: $7c
	ld   e, c                                        ; $4660: $59
	ld   l, a                                        ; $4661: $6f
	ei                                               ; $4662: $fb
	ld   a, [$000d]                                  ; $4663: $fa $0d $00
	ld   a, [bc]                                     ; $4666: $0a
	ld   bc, $7156                                   ; $4667: $01 $56 $71
	add  [hl]                                        ; $466a: $86
	and  c                                           ; $466b: $a1
	ld   a, [$a30d]                                  ; $466c: $fa $0d $a3
	and  l                                           ; $466f: $a5
	db   $ec                                         ; $4670: $ec
	cp   d                                           ; $4671: $ba
	ld   h, a                                        ; $4672: $67
	ld   h, d                                        ; $4673: $62
	ld   d, d                                        ; $4674: $52
	ld   [hl], l                                     ; $4675: $75
	ld   h, l                                        ; $4676: $65
	sub  l                                           ; $4677: $95
	ld   sp, hl                                      ; $4678: $f9
	dec  c                                           ; $4679: $0d
	nop                                              ; $467a: $00
	ld   a, [bc]                                     ; $467b: $0a
	ld   bc, $fb50                                   ; $467c: $01 $50 $fb
	ld   e, b                                        ; $467f: $58
	sub  b                                           ; $4680: $90
	ld   h, l                                        ; $4681: $65
	sbc  e                                           ; $4682: $9b
	ld   e, c                                        ; $4683: $59
	ld   [hl], c                                     ; $4684: $71
	ld   l, l                                        ; $4685: $6d
	sbc  a                                           ; $4686: $9f
	dec  c                                           ; $4687: $0d
	ld   d, b                                        ; $4688: $50
	sbc  b                                           ; $4689: $98
	ld   e, d                                        ; $468a: $5a
	halt                                             ; $468b: $76
	ld   d, h                                        ; $468c: $54
	sbc  [hl]                                        ; $468d: $9e
	ld   l, a                                        ; $468e: $6f
	ld   d, d                                        ; $468f: $52
	ld   [bc], a                                     ; $4690: $02
	inc  de                                          ; $4691: $13
	ld   l, a                                        ; $4692: $6f
	sub  c                                           ; $4693: $91
	and  c                                           ; $4694: $a1
	sbc  a                                           ; $4695: $9f
	dec  c                                           ; $4696: $0d
	nop                                              ; $4697: $00
	ld   a, [bc]                                     ; $4698: $0a
	nop                                              ; $4699: $00
	inc  e                                           ; $469a: $1c
	inc  b                                           ; $469b: $04
	nop                                              ; $469c: $00
	nop                                              ; $469d: $00
	ld   bc, $5058                                   ; $469e: $01 $58 $50
	ld   d, d                                        ; $46a1: $52
	ld   h, c                                        ; $46a2: $61
	ld   l, [hl]                                     ; $46a3: $6e
	ld   a, e                                        ; $46a4: $7b
	sbc  [hl]                                        ; $46a5: $9e
	dec  c                                           ; $46a6: $0d
	ld   l, a                                        ; $46a7: $6f
	ld   d, d                                        ; $46a8: $52
	ld   [bc], a                                     ; $46a9: $02
	inc  de                                          ; $46aa: $13
	ld   l, a                                        ; $46ab: $6f
	sub  c                                           ; $46ac: $91
	and  c                                           ; $46ad: $a1
	sbc  a                                           ; $46ae: $9f
	dec  c                                           ; $46af: $0d
	nop                                              ; $46b0: $00
	ld   a, [bc]                                     ; $46b1: $0a
	dec  e                                           ; $46b2: $1d
	ld   b, b                                        ; $46b3: $40
	inc  d                                           ; $46b4: $14
	inc  bc                                          ; $46b5: $03
	inc  d                                           ; $46b6: $14
	ld   bc, $2801                                   ; $46b7: $01 $01 $28
	nop                                              ; $46ba: $00
	ld   bc, $9075                                   ; $46bb: $01 $75 $90
	sbc  [hl]                                        ; $46be: $9e
	ld   e, b                                        ; $46bf: $58
	sub  b                                           ; $46c0: $90
	ld   h, l                                        ; $46c1: $65
	sbc  e                                           ; $46c2: $9b
	ld   e, c                                        ; $46c3: $59
	ld   [hl], c                                     ; $46c4: $71
	ld   l, l                                        ; $46c5: $6d
	sbc  a                                           ; $46c6: $9f
	dec  c                                           ; $46c7: $0d
	ld   d, b                                        ; $46c8: $50
	sbc  b                                           ; $46c9: $98
	ld   e, d                                        ; $46ca: $5a
	halt                                             ; $46cb: $76
	ld   d, h                                        ; $46cc: $54
	sbc  [hl]                                        ; $46cd: $9e
	ld   l, a                                        ; $46ce: $6f
	ld   d, d                                        ; $46cf: $52
	ld   [bc], a                                     ; $46d0: $02
	inc  de                                          ; $46d1: $13
	ld   l, a                                        ; $46d2: $6f
	sub  c                                           ; $46d3: $91
	and  c                                           ; $46d4: $a1
	sbc  a                                           ; $46d5: $9f
	dec  c                                           ; $46d6: $0d
	nop                                              ; $46d7: $00
	ld   a, [bc]                                     ; $46d8: $0a
	nop                                              ; $46d9: $00
	nop                                              ; $46da: $00
	inc  b                                           ; $46db: $04
	add  b                                           ; $46dc: $80
	adc  l                                           ; $46dd: $8d
	ld   bc, $2000                                   ; $46de: $01 $00 $20
	nop                                              ; $46e1: $00
	rrca                                             ; $46e2: $0f
	nop                                              ; $46e3: $00
	ld   bc, $1216                                   ; $46e4: $01 $16 $12
	ld   [bc], a                                     ; $46e7: $02
	ld   bc, $f5ac                                   ; $46e8: $01 $ac $f5
	bit  4, e                                        ; $46eb: $cb $63
	and  c                                           ; $46ed: $a1
	sbc  a                                           ; $46ee: $9f
	dec  c                                           ; $46ef: $0d
	inc  bc                                          ; $46f0: $03
	adc  e                                           ; $46f1: $8b
	ld   a, l                                        ; $46f2: $7d
	sbc  [hl]                                        ; $46f3: $9e
	ld   [bc], a                                     ; $46f4: $02
	jp   nz, Jump_04f_6d5b                           ; $46f5: $c2 $5b $6d

	ld   d, d                                        ; $46f8: $52
	ld   h, c                                        ; $46f9: $61
	halt                                             ; $46fa: $76
	ld   e, d                                        ; $46fb: $5a
	dec  c                                           ; $46fc: $0d
	ld   d, b                                        ; $46fd: $50
	sbc  c                                           ; $46fe: $99
	and  c                                           ; $46ff: $a1
	ld   [hl], l                                     ; $4700: $75
	ld   h, a                                        ; $4701: $67
	ld   e, a                                        ; $4702: $5f
	ld   [hl], a                                     ; $4703: $77
	rst  $38                                         ; $4704: $ff
	rst  $38                                         ; $4705: $ff
	dec  c                                           ; $4706: $0d
	nop                                              ; $4707: $00
	ld   a, [bc]                                     ; $4708: $0a
	inc  c                                           ; $4709: $0c
	ld   [bc], a                                     ; $470a: $02
	ld   c, $26                                      ; $470b: $0e $26
	inc  e                                           ; $470d: $1c
	ld   b, $00                                      ; $470e: $06 $00
	nop                                              ; $4710: $00
	ld   bc, $a178                                   ; $4711: $01 $78 $a1
	ld   l, [hl]                                     ; $4714: $6e
	ld   sp, hl                                      ; $4715: $f9
	db   $10                                         ; $4716: $10
	ld   [$9f00], sp                                 ; $4717: $08 $00 $9f
	dec  c                                           ; $471a: $0d
	nop                                              ; $471b: $00
	ld   a, [bc]                                     ; $471c: $0a
	rrca                                             ; $471d: $0f
	nop                                              ; $471e: $00
	ld   bc, $ac01                                   ; $471f: $01 $01 $ac
	push af                                          ; $4722: $f5
	bit  4, e                                        ; $4723: $cb $63
	and  c                                           ; $4725: $a1
	ld   a, h                                        ; $4726: $7c
	ld   h, c                                        ; $4727: $61
	halt                                             ; $4728: $76
	and  b                                           ; $4729: $a0
	sbc  [hl]                                        ; $472a: $9e
	dec  c                                           ; $472b: $0d
	sub  b                                           ; $472c: $90
	ld   [hl], c                                     ; $472d: $71
	halt                                             ; $472e: $76
	sub  [hl]                                        ; $472f: $96
	ld   e, l                                        ; $4730: $5d
	inc  b                                           ; $4731: $04
	dec  hl                                          ; $4732: $2b
	sbc  b                                           ; $4733: $98
	ld   l, l                                        ; $4734: $6d
	ld   d, d                                        ; $4735: $52
	ld   a, b                                        ; $4736: $78
	halt                                             ; $4737: $76
	dec  c                                           ; $4738: $0d
	dec  b                                           ; $4739: $05
	pop  de                                          ; $473a: $d1
	ld   d, d                                        ; $473b: $52
	adc  h                                           ; $473c: $8c
	ld   h, l                                        ; $473d: $65
	ld   [hl], h                                     ; $473e: $74
	rst  $38                                         ; $473f: $ff
	rst  $38                                         ; $4740: $ff
	dec  c                                           ; $4741: $0d
	nop                                              ; $4742: $00
	ld   a, [bc]                                     ; $4743: $0a
	inc  e                                           ; $4744: $1c
	ld   b, $03                                      ; $4745: $06 $03
	inc  bc                                          ; $4747: $03
	ld   bc, $f950                                   ; $4748: $01 $50 $f9
	db   $10                                         ; $474b: $10
	ld   d, b                                        ; $474c: $50
	ld   l, l                                        ; $474d: $6d
	ld   d, d                                        ; $474e: $52
	ld   a, h                                        ; $474f: $7c
	ld   h, c                                        ; $4750: $61
	halt                                             ; $4751: $76
	ld   sp, hl                                      ; $4752: $f9
	dec  c                                           ; $4753: $0d
	ld   h, [hl]                                     ; $4754: $66
	sub  c                                           ; $4755: $91
	ld   d, b                                        ; $4756: $50
	sbc  [hl]                                        ; $4757: $9e
	adc  h                                           ; $4758: $8c
	ld   d, b                                        ; $4759: $50
	sbc  [hl]                                        ; $475a: $9e
	halt                                             ; $475b: $76
	sub  b                                           ; $475c: $90
	ld   e, c                                        ; $475d: $59
	ld   e, l                                        ; $475e: $5d
	dec  c                                           ; $475f: $0d
	db   $e3                                         ; $4760: $e3
	cp   b                                           ; $4761: $b8
	and  b                                           ; $4762: $a0
	inc  bc                                          ; $4763: $03
	ld   l, d                                        ; $4764: $6a
	ld   e, b                                        ; $4765: $58
	ld   d, h                                        ; $4766: $54
	ld   l, d                                        ; $4767: $6a
	sbc  a                                           ; $4768: $9f
	dec  c                                           ; $4769: $0d
	nop                                              ; $476a: $00
	ld   a, [bc]                                     ; $476b: $0a
	add  hl, de                                      ; $476c: $19
	dec  b                                           ; $476d: $05
	ld   [bc], a                                     ; $476e: $02
	sub  [hl]                                        ; $476f: $96
	sbc  e                                           ; $4770: $9b
	ld   h, c                                        ; $4771: $61
	and  c                                           ; $4772: $a1
	ld   [hl], l                                     ; $4773: $75
	nop                                              ; $4774: $00
	nop                                              ; $4775: $00
	ld   d, [hl]                                     ; $4776: $56
	and  c                                           ; $4777: $a1
	sbc  b                                           ; $4778: $98
	sub  l                                           ; $4779: $95
	ld   h, l                                        ; $477a: $65
	adc  h                                           ; $477b: $8c
	ld   h, a                                        ; $477c: $67
	nop                                              ; $477d: $00
	ld   bc, $4707                                   ; $477e: $01 $07 $47
	ld   bc, $0302                                   ; $4781: $01 $02 $03
	ld   bc, $2000                                   ; $4784: $01 $00 $20
	nop                                              ; $4787: $00
	rlca                                             ; $4788: $07
	or   d                                           ; $4789: $b2
	nop                                              ; $478a: $00
	ld   [bc], a                                     ; $478b: $02
	inc  bc                                          ; $478c: $03
	ld   bc, $2001                                   ; $478d: $01 $01 $20
	nop                                              ; $4790: $00
	ld   b, $0f                                      ; $4791: $06 $0f
	ld   bc, $000f                                   ; $4793: $01 $0f $00
	ld   bc, $5201                                   ; $4796: $01 $01 $52
	ld   d, [hl]                                     ; $4799: $56
	sbc  [hl]                                        ; $479a: $9e
	ld   h, d                                        ; $479b: $62
	inc  b                                           ; $479c: $04
	sbc  h                                           ; $479d: $9c
	ld   a, l                                        ; $479e: $7d
	ld   h, e                                        ; $479f: $63
	ld   [hl], c                                     ; $47a0: $71
	ld   e, e                                        ; $47a1: $5b
	inc  bc                                          ; $47a2: $03
	ld   l, d                                        ; $47a3: $6a
	add  a                                           ; $47a4: $87
	adc  h                                           ; $47a5: $8c
	ld   h, l                                        ; $47a6: $65
	ld   l, l                                        ; $47a7: $6d
	dec  c                                           ; $47a8: $0d
	ld   a, h                                        ; $47a9: $7c
	ld   [hl], l                                     ; $47aa: $75
	sbc  [hl]                                        ; $47ab: $9e
	inc  b                                           ; $47ac: $04
	ld   l, l                                        ; $47ad: $6d
	ld   a, l                                        ; $47ae: $7d
	ld   d, d                                        ; $47af: $52
	ld   d, d                                        ; $47b0: $52
	ld   [hl], l                                     ; $47b1: $75
	ld   h, a                                        ; $47b2: $67
	sbc  a                                           ; $47b3: $9f
	dec  c                                           ; $47b4: $0d
	nop                                              ; $47b5: $00
	ld   a, [bc]                                     ; $47b6: $0a
	inc  e                                           ; $47b7: $1c
	ld   b, $02                                      ; $47b8: $06 $02
	ld   [bc], a                                     ; $47ba: $02
	dec  e                                           ; $47bb: $1d
	ld   b, b                                        ; $47bc: $40
	ld   d, $03                                      ; $47bd: $16 $03
	ld   d, $01                                      ; $47bf: $16 $01
	ld   [bc], a                                     ; $47c1: $02
	add  hl, hl                                      ; $47c2: $29
	nop                                              ; $47c3: $00
	ld   bc, $a178                                   ; $47c4: $01 $78 $a1
	ld   l, [hl]                                     ; $47c7: $6e
	sub  [hl]                                        ; $47c8: $96
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $47c9: $cf
	db   $ec                                         ; $47ca: $ec
	ld   a, h                                        ; $47cb: $7c
	ld   [bc], a                                     ; $47cc: $02
	jr   z, jr_04f_4821                              ; $47cd: $28 $52

	sub  d                                           ; $47cf: $92
	ld   [hl], d                                     ; $47d0: $72
	ld   l, [hl]                                     ; $47d1: $6e
	ld   a, b                                        ; $47d2: $78
	sbc  a                                           ; $47d3: $9f
	dec  c                                           ; $47d4: $0d
	ld   l, e                                        ; $47d5: $6b
	and  c                                           ; $47d6: $a1
	ld   a, b                                        ; $47d7: $78
	sub  d                                           ; $47d8: $92
	ld   [hl], d                                     ; $47d9: $72
	ld   a, c                                        ; $47da: $79
	ld   a, l                                        ; $47db: $7d
	sbc  [hl]                                        ; $47dc: $9e
	ld   d, b                                        ; $47dd: $50
	ld   l, l                                        ; $47de: $6d
	ld   d, d                                        ; $47df: $52
	ld   a, h                                        ; $47e0: $7c
	ld   h, c                                        ; $47e1: $61
	halt                                             ; $47e2: $76
	dec  c                                           ; $47e3: $0d
	ld   [bc], a                                     ; $47e4: $02
	ret  nc                                          ; $47e5: $d0

	ld   d, [hl]                                     ; $47e6: $56
	ld   a, b                                        ; $47e7: $78
	ld   d, d                                        ; $47e8: $52
	sub  [hl]                                        ; $47e9: $96
	db   $fc                                         ; $47ea: $fc
	ld   l, [hl]                                     ; $47eb: $6e
	sbc  a                                           ; $47ec: $9f
	dec  c                                           ; $47ed: $0d
	nop                                              ; $47ee: $00
	ld   a, [bc]                                     ; $47ef: $0a
	nop                                              ; $47f0: $00
	inc  e                                           ; $47f1: $1c
	ld   b, $02                                      ; $47f2: $06 $02
	ld   [bc], a                                     ; $47f4: $02
	dec  e                                           ; $47f5: $1d
	ld   b, b                                        ; $47f6: $40
	ld   d, $03                                      ; $47f7: $16 $03
	ld   d, $01                                      ; $47f9: $16 $01
	ld   [bc], a                                     ; $47fb: $02
	add  hl, hl                                      ; $47fc: $29
	nop                                              ; $47fd: $00
	ld   bc, $a178                                   ; $47fe: $01 $78 $a1
	ld   l, [hl]                                     ; $4801: $6e
	sub  [hl]                                        ; $4802: $96
	rst  $38                                         ; $4803: $ff
	rst  $38                                         ; $4804: $ff
	inc  bc                                          ; $4805: $03
	add  d                                           ; $4806: $82
	ld   e, d                                        ; $4807: $5a
	ld   l, c                                        ; $4808: $69
	ld   [hl], c                                     ; $4809: $71
	ld   e, c                                        ; $480a: $59
	ld   e, l                                        ; $480b: $5d
	dec  c                                           ; $480c: $0d
	ld   h, e                                        ; $480d: $63
	ld   l, e                                        ; $480e: $6b
	ld   [hl], c                                     ; $480f: $71
	ld   [hl], h                                     ; $4810: $74
	sbc  c                                           ; $4811: $99
	ld   [hl], c                                     ; $4812: $71
	ld   [hl], h                                     ; $4813: $74
	ld   a, h                                        ; $4814: $7c
	ld   a, c                                        ; $4815: $79
	sub  [hl]                                        ; $4816: $96
	rst  $38                                         ; $4817: $ff
	rst  $38                                         ; $4818: $ff
	dec  c                                           ; $4819: $0d
	sub  b                                           ; $481a: $90
	ld   d, h                                        ; $481b: $54
	ld   d, d                                        ; $481c: $52
	ld   d, d                                        ; $481d: $52
	sub  [hl]                                        ; $481e: $96
	sbc  [hl]                                        ; $481f: $9e
	ld   h, [hl]                                     ; $4820: $66

jr_04f_4821:
	sub  c                                           ; $4821: $91
	ld   d, b                                        ; $4822: $50
	ld   a, b                                        ; $4823: $78
	sbc  a                                           ; $4824: $9f
	dec  c                                           ; $4825: $0d
	nop                                              ; $4826: $00
	ld   a, [bc]                                     ; $4827: $0a
	nop                                              ; $4828: $00
	rrca                                             ; $4829: $0f
	nop                                              ; $482a: $00
	ld   bc, $7d01                                   ; $482b: $01 $01 $7d
	ld   d, d                                        ; $482e: $52
	sbc  [hl]                                        ; $482f: $9e
	sub  [hl]                                        ; $4830: $96
	sbc  e                                           ; $4831: $9b
	ld   h, c                                        ; $4832: $61
	and  c                                           ; $4833: $a1
	ld   [hl], l                                     ; $4834: $75
	sbc  a                                           ; $4835: $9f
	dec  c                                           ; $4836: $0d
	nop                                              ; $4837: $00
	ld   a, [bc]                                     ; $4838: $0a
	inc  e                                           ; $4839: $1c
	ld   b, $01                                      ; $483a: $06 $01
	ld   bc, $9601                                   ; $483c: $01 $01 $96
	ld   h, l                                        ; $483f: $65
	sbc  [hl]                                        ; $4840: $9e
	inc  bc                                          ; $4841: $03
	ld   l, d                                        ; $4842: $6a
	ld   d, h                                        ; $4843: $54
	ld   l, h                                        ; $4844: $6c
	ld   a, [$000d]                                  ; $4845: $fa $0d $00
	ld   a, [bc]                                     ; $4848: $0a
	rrca                                             ; $4849: $0f
	nop                                              ; $484a: $00
	ld   bc, $e401                                   ; $484b: $01 $01 $e4
	or   c                                           ; $484e: $b1
	db   $e4                                         ; $484f: $e4
	or   c                                           ; $4850: $b1
	db   $e4                                         ; $4851: $e4
	or   c                                           ; $4852: $b1
	rst  $38                                         ; $4853: $ff
	rst  $38                                         ; $4854: $ff
	dec  c                                           ; $4855: $0d
	nop                                              ; $4856: $00
	ld   a, [bc]                                     ; $4857: $0a
	inc  e                                           ; $4858: $1c
	ld   b, $00                                      ; $4859: $06 $00
	nop                                              ; $485b: $00
	ld   bc, $5078                                   ; $485c: $01 $78 $50
	sbc  [hl]                                        ; $485f: $9e
	ld   [$ff00], sp                                 ; $4860: $08 $00 $ff
	rst  $38                                         ; $4863: $ff
	dec  c                                           ; $4864: $0d
	ld   l, c                                        ; $4865: $69
	ld   [hl], c                                     ; $4866: $71
	ld   e, c                                        ; $4867: $59
	ld   e, l                                        ; $4868: $5d
	ld   l, [hl]                                     ; $4869: $6e
	ld   e, c                                        ; $486a: $59
	sub  a                                           ; $486b: $97
	inc  b                                           ; $486c: $04
	ld   c, $03                                      ; $486d: $0e $03
	ld   l, d                                        ; $486f: $6a
	ld   d, d                                        ; $4870: $52
	inc  bc                                          ; $4871: $03
	ld   c, [hl]                                     ; $4872: $4e
	inc  b                                           ; $4873: $04
	ld   a, l                                        ; $4874: $7d
	and  b                                           ; $4875: $a0
	dec  c                                           ; $4876: $0d
	ld   h, l                                        ; $4877: $65
	ld   a, b                                        ; $4878: $78
	ld   d, d                                        ; $4879: $52
	ld   e, c                                        ; $487a: $59
	ld   sp, hl                                      ; $487b: $f9
	dec  c                                           ; $487c: $0d
	nop                                              ; $487d: $00
	ld   a, [bc]                                     ; $487e: $0a
	add  hl, de                                      ; $487f: $19
	dec  b                                           ; $4880: $05
	ld   [bc], a                                     ; $4881: $02
	ld   [bc], a                                     ; $4882: $02
	rst  $38                                         ; $4883: $ff
	ld   e, a                                        ; $4884: $5f
	ld   [hl], h                                     ; $4885: $74
	dec  b                                           ; $4886: $05
	ld   d, $6f                                      ; $4887: $16 $6f
	adc  h                                           ; $4889: $8c
	ld   h, a                                        ; $488a: $67
	nop                                              ; $488b: $00
	nop                                              ; $488c: $00
	ld   d, [hl]                                     ; $488d: $56
	and  c                                           ; $488e: $a1
	sbc  b                                           ; $488f: $98
	sub  l                                           ; $4890: $95
	ld   h, l                                        ; $4891: $65
	adc  h                                           ; $4892: $8c
	ld   h, a                                        ; $4893: $67
	nop                                              ; $4894: $00
	ld   bc, $6f07                                   ; $4895: $01 $07 $6f
	ld   [bc], a                                     ; $4898: $02
	ld   [bc], a                                     ; $4899: $02
	inc  bc                                          ; $489a: $03
	ld   bc, $2000                                   ; $489b: $01 $00 $20
	nop                                              ; $489e: $00
	rlca                                             ; $489f: $07
	ret                                              ; $48a0: $c9


	ld   bc, $0302                                   ; $48a1: $01 $02 $03
	ld   bc, $2001                                   ; $48a4: $01 $01 $20
	nop                                              ; $48a7: $00
	ld   b, $44                                      ; $48a8: $06 $44
	ld   [bc], a                                     ; $48aa: $02
	rrca                                             ; $48ab: $0f
	nop                                              ; $48ac: $00
	ld   bc, $5601                                   ; $48ad: $01 $01 $56
	and  c                                           ; $48b0: $a1
	sbc  b                                           ; $48b1: $98
	sub  l                                           ; $48b2: $95
	ld   h, l                                        ; $48b3: $65
	adc  h                                           ; $48b4: $8c
	ld   h, a                                        ; $48b5: $67
	sbc  a                                           ; $48b6: $9f
	dec  c                                           ; $48b7: $0d
	ld   h, d                                        ; $48b8: $62
	ld   a, l                                        ; $48b9: $7d
	and  c                                           ; $48ba: $a1
	ld   a, l                                        ; $48bb: $7d
	inc  b                                           ; $48bc: $04
	jp   nc, Jump_04f_719d                           ; $48bd: $d2 $9d $71

	ld   [hl], h                                     ; $48c0: $74
	inc  bc                                          ; $48c1: $03
	ld   l, d                                        ; $48c2: $6a
	add  a                                           ; $48c3: $87
	sbc  c                                           ; $48c4: $99
	adc  c                                           ; $48c5: $89
	ld   d, h                                        ; $48c6: $54
	ld   e, d                                        ; $48c7: $5a
	dec  c                                           ; $48c8: $0d
	ld   d, d                                        ; $48c9: $52
	ld   d, d                                        ; $48ca: $52
	halt                                             ; $48cb: $76
	ld   e, b                                        ; $48cc: $58
	sub  b                                           ; $48cd: $90
	ld   d, d                                        ; $48ce: $52
	adc  h                                           ; $48cf: $8c
	ld   h, a                                        ; $48d0: $67
	ld   a, h                                        ; $48d1: $7c
	ld   [hl], l                                     ; $48d2: $75
	sbc  a                                           ; $48d3: $9f
	dec  c                                           ; $48d4: $0d
	nop                                              ; $48d5: $00
	ld   a, [bc]                                     ; $48d6: $0a
	inc  e                                           ; $48d7: $1c
	ld   b, $05                                      ; $48d8: $06 $05
	dec  b                                           ; $48da: $05
	dec  e                                           ; $48db: $1d
	ld   b, b                                        ; $48dc: $40
	ld   d, $03                                      ; $48dd: $16 $03
	ld   d, $01                                      ; $48df: $16 $01
	ld   bc, $0029                                   ; $48e1: $01 $29 $00
	ld   bc, $508c                                   ; $48e4: $01 $8c $50
	sbc  [hl]                                        ; $48e7: $9e
	ld   l, e                                        ; $48e8: $6b
	sbc  b                                           ; $48e9: $98
	sub  c                                           ; $48ea: $91
	ld   l, e                                        ; $48eb: $6b
	ld   d, h                                        ; $48ec: $54
	ld   l, [hl]                                     ; $48ed: $6e
	ld   e, a                                        ; $48ee: $5f
	ld   [hl], a                                     ; $48ef: $77
	sbc  a                                           ; $48f0: $9f
	dec  c                                           ; $48f1: $0d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $48f2: $cf
	db   $ec                                         ; $48f3: $ec
	ld   e, d                                        ; $48f4: $5a
	sbc  l                                           ; $48f5: $9d
	sbc  c                                           ; $48f6: $99
	ld   d, d                                        ; $48f7: $52
	ld   l, h                                        ; $48f8: $6c
	ld   [$9f00], sp                                 ; $48f9: $08 $00 $9f
	dec  c                                           ; $48fc: $0d
	nop                                              ; $48fd: $00
	ld   a, [bc]                                     ; $48fe: $0a
	inc  e                                           ; $48ff: $1c
	ld   b, $02                                      ; $4900: $06 $02
	ld   [bc], a                                     ; $4902: $02
	ld   bc, $a16b                                   ; $4903: $01 $6b $a1
	ld   a, b                                        ; $4906: $78
	sub  d                                           ; $4907: $92
	ld   [hl], d                                     ; $4908: $72
	ld   a, c                                        ; $4909: $79
	sbc  [hl]                                        ; $490a: $9e
	ld   d, b                                        ; $490b: $50
	ld   l, l                                        ; $490c: $6d
	ld   d, d                                        ; $490d: $52
	ld   a, h                                        ; $490e: $7c
	ld   [bc], a                                     ; $490f: $02
	jp   ConvertAintoBCD                                       ; $4910: $c3 $7d $0d


	ld   [bc], a                                     ; $4913: $02
	ret  nc                                          ; $4914: $d0

	ld   d, [hl]                                     ; $4915: $56
	sub  a                                           ; $4916: $97
	sbc  d                                           ; $4917: $9a
	ld   a, b                                        ; $4918: $78
	ld   d, d                                        ; $4919: $52
	ld   a, b                                        ; $491a: $78
	sbc  a                                           ; $491b: $9f
	dec  c                                           ; $491c: $0d
	ld   h, [hl]                                     ; $491d: $66
	sub  c                                           ; $491e: $91
	ld   d, b                                        ; $491f: $50
	ld   a, b                                        ; $4920: $78
	sbc  a                                           ; $4921: $9f
	dec  c                                           ; $4922: $0d
	nop                                              ; $4923: $00
	ld   a, [bc]                                     ; $4924: $0a
	nop                                              ; $4925: $00
	inc  e                                           ; $4926: $1c
	ld   b, $01                                      ; $4927: $06 $01
	ld   bc, $6e01                                   ; $4929: $01 $01 $6e
	adc  h                                           ; $492c: $8c
	ld   [hl], c                                     ; $492d: $71
	ld   [hl], h                                     ; $492e: $74
	sbc  c                                           ; $492f: $99
	ld   h, c                                        ; $4930: $61
	halt                                             ; $4931: $76
	ld   a, l                                        ; $4932: $7d
	dec  c                                           ; $4933: $0d
	inc  bc                                          ; $4934: $03
	ld   c, [hl]                                     ; $4935: $4e
	inc  b                                           ; $4936: $04
	ld   a, l                                        ; $4937: $7d
	ld   h, a                                        ; $4938: $67
	sbc  c                                           ; $4939: $99
	ld   [hl], c                                     ; $493a: $71
	ld   [hl], h                                     ; $493b: $74
	ld   h, c                                        ; $493c: $61
	halt                                             ; $493d: $76
	ld   l, [hl]                                     ; $493e: $6e
	ld   a, b                                        ; $493f: $78
	ld   sp, hl                                      ; $4940: $f9
	dec  c                                           ; $4941: $0d
	sub  [hl]                                        ; $4942: $96
	ld   h, l                                        ; $4943: $65
	sbc  [hl]                                        ; $4944: $9e
	inc  bc                                          ; $4945: $03
	ld   c, [hl]                                     ; $4946: $4e
	inc  b                                           ; $4947: $04
	ld   a, l                                        ; $4948: $7d
	ld   l, [hl]                                     ; $4949: $6e
	ld   a, [$000d]                                  ; $494a: $fa $0d $00
	ld   a, [bc]                                     ; $494d: $0a
	ld   b, $92                                      ; $494e: $06 $92
	ld   [bc], a                                     ; $4950: $02
	rrca                                             ; $4951: $0f
	nop                                              ; $4952: $00
	ld   bc, $0201                                   ; $4953: $01 $01 $02
	rst  $38                                         ; $4956: $ff
	ld   e, a                                        ; $4957: $5f
	ld   [hl], h                                     ; $4958: $74
	dec  b                                           ; $4959: $05
	ld   d, $6f                                      ; $495a: $16 $6f
	adc  h                                           ; $495c: $8c
	ld   h, a                                        ; $495d: $67
	sbc  a                                           ; $495e: $9f
	dec  c                                           ; $495f: $0d
	nop                                              ; $4960: $00
	ld   a, [bc]                                     ; $4961: $0a
	inc  e                                           ; $4962: $1c
	ld   b, $01                                      ; $4963: $06 $01
	ld   bc, $6b01                                   ; $4965: $01 $01 $6b
	ld   d, h                                        ; $4968: $54
	ld   h, c                                        ; $4969: $61
	ld   a, b                                        ; $496a: $78
	ld   e, l                                        ; $496b: $5d
	ld   [hl], c                                     ; $496c: $71
	ld   l, a                                        ; $496d: $6f
	sub  c                                           ; $496e: $91
	ld   a, b                                        ; $496f: $78
	sbc  a                                           ; $4970: $9f
	dec  c                                           ; $4971: $0d
	nop                                              ; $4972: $00
	ld   a, [bc]                                     ; $4973: $0a
	inc  e                                           ; $4974: $1c
	ld   b, $00                                      ; $4975: $06 $00
	nop                                              ; $4977: $00
	ld   bc, $fbc7                                   ; $4978: $01 $c7 $fb
	rst  $10                                         ; $497b: $d7
	db   $ed                                         ; $497c: $ed
	ld   a, c                                        ; $497d: $79
	ld   a, b                                        ; $497e: $78
	sub  a                                           ; $497f: $97
	and  c                                           ; $4980: $a1
	ld   [hl], l                                     ; $4981: $75
	sbc  c                                           ; $4982: $99
	dec  b                                           ; $4983: $05
	ld   [bc], a                                     ; $4984: $02
	dec  b                                           ; $4985: $05
	ld   de, $0d7c                                   ; $4986: $11 $7c $0d
	dec  b                                           ; $4989: $05
	ld   h, [hl]                                     ; $498a: $66
	ld   e, d                                        ; $498b: $5a
	inc  b                                           ; $498c: $04
	rrca                                             ; $498d: $0f
	ld   l, e                                        ; $498e: $6b
	ld   d, h                                        ; $498f: $54
	ld   a, b                                        ; $4990: $78
	sub  b                                           ; $4991: $90
	ld   a, h                                        ; $4992: $7c
	and  b                                           ; $4993: $a0
	dec  c                                           ; $4994: $0d
	ld   d, [hl]                                     ; $4995: $56
	sub  a                                           ; $4996: $97
	and  c                                           ; $4997: $a1
	ld   [hl], l                                     ; $4998: $75
	inc  bc                                          ; $4999: $03
	ld   l, d                                        ; $499a: $6a
	add  a                                           ; $499b: $87
	sbc  c                                           ; $499c: $99
	and  c                                           ; $499d: $a1
	ld   l, [hl]                                     ; $499e: $6e
	sbc  a                                           ; $499f: $9f
	dec  c                                           ; $49a0: $0d
	nop                                              ; $49a1: $00
	ld   a, [bc]                                     ; $49a2: $0a
	inc  e                                           ; $49a3: $1c
	ld   b, $02                                      ; $49a4: $06 $02
	ld   [bc], a                                     ; $49a6: $02
	ld   bc, $9166                                   ; $49a7: $01 $66 $91
	sbc  [hl]                                        ; $49aa: $9e
	dec  b                                           ; $49ab: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $49ac: $cf
	adc  a                                           ; $49ad: $8f
	sbc  c                                           ; $49ae: $99
	ld   l, d                                        ; $49af: $6a
	sbc  a                                           ; $49b0: $9f
	dec  c                                           ; $49b1: $0d
	ld   d, b                                        ; $49b2: $50
	ld   l, l                                        ; $49b3: $6d
	ld   d, d                                        ; $49b4: $52
	ld   a, l                                        ; $49b5: $7d
	sbc  [hl]                                        ; $49b6: $9e
	xor  h                                           ; $49b7: $ac
	xor  $fb                                         ; $49b8: $ee $fb
	ld   l, [hl]                                     ; $49ba: $6e
	ld   a, [$000d]                                  ; $49bb: $fa $0d $00
	ld   a, [bc]                                     ; $49be: $0a
	add  hl, de                                      ; $49bf: $19
	dec  b                                           ; $49c0: $05
	inc  bc                                          ; $49c1: $03
	sub  d                                           ; $49c2: $92
	ld   e, e                                        ; $49c3: $5b
	ld   l, e                                        ; $49c4: $6b
	ld   a, [hl]                                     ; $49c5: $7e
	nop                                              ; $49c6: $00
	nop                                              ; $49c7: $00
	ld   a, b                                        ; $49c8: $78
	ld   [hl], c                                     ; $49c9: $71
	halt                                             ; $49ca: $76
	ld   d, h                                        ; $49cb: $54
	nop                                              ; $49cc: $00
	ld   bc, $a169                                   ; $49cd: $01 $69 $a1
	add  a                                           ; $49d0: $87
	ld   d, d                                        ; $49d1: $52
	nop                                              ; $49d2: $00
	ld   [bc], a                                     ; $49d3: $02
	rlca                                             ; $49d4: $07
	add  hl, sp                                      ; $49d5: $39
	inc  bc                                          ; $49d6: $03
	ld   [bc], a                                     ; $49d7: $02
	inc  bc                                          ; $49d8: $03
	ld   bc, $2000                                   ; $49d9: $01 $00 $20
	nop                                              ; $49dc: $00
	rlca                                             ; $49dd: $07
	ld   h, e                                        ; $49de: $63
	inc  bc                                          ; $49df: $03
	ld   [bc], a                                     ; $49e0: $02
	inc  bc                                          ; $49e1: $03
	ld   bc, $2001                                   ; $49e2: $01 $01 $20
	nop                                              ; $49e5: $00
	rlca                                             ; $49e6: $07
	ld   h, e                                        ; $49e7: $63
	inc  bc                                          ; $49e8: $03
	ld   [bc], a                                     ; $49e9: $02
	inc  bc                                          ; $49ea: $03
	ld   bc, $2002                                   ; $49eb: $01 $02 $20
	nop                                              ; $49ee: $00
	ld   b, $10                                      ; $49ef: $06 $10
	inc  bc                                          ; $49f1: $03
	inc  e                                           ; $49f2: $1c
	ld   b, $05                                      ; $49f3: $06 $05
	dec  b                                           ; $49f5: $05
	ld   bc, $a178                                   ; $49f6: $01 $78 $a1
	ld   l, [hl]                                     ; $49f9: $6e
	sbc  [hl]                                        ; $49fa: $9e
	sub  b                                           ; $49fb: $90
	ld   d, h                                        ; $49fc: $54
	inc  bc                                          ; $49fd: $03
	ld   a, [hl]                                     ; $49fe: $7e
	sbc  l                                           ; $49ff: $9d
	sbc  b                                           ; $4a00: $98
	ld   e, c                                        ; $4a01: $59
	sub  [hl]                                        ; $4a02: $96
	rst  $38                                         ; $4a03: $ff
	rst  $38                                         ; $4a04: $ff
	dec  c                                           ; $4a05: $0d
	ld   [hl], d                                     ; $4a06: $72
	adc  h                                           ; $4a07: $8c
	and  c                                           ; $4a08: $a1
	ld   a, e                                        ; $4a09: $7b
	ei                                               ; $4a0a: $fb
	sub  d                                           ; $4a0b: $92
	ld   [hl], d                                     ; $4a0c: $72
	ld   l, [hl]                                     ; $4a0d: $6e
	ld   a, b                                        ; $4a0e: $78
	db   $fc                                         ; $4a0f: $fc
	sbc  a                                           ; $4a10: $9f
	dec  c                                           ; $4a11: $0d
	ld   h, [hl]                                     ; $4a12: $66
	sub  c                                           ; $4a13: $91
	ld   d, b                                        ; $4a14: $50
	ld   a, b                                        ; $4a15: $78
	sbc  a                                           ; $4a16: $9f
	dec  c                                           ; $4a17: $0d
	nop                                              ; $4a18: $00
	ld   a, [bc]                                     ; $4a19: $0a
	nop                                              ; $4a1a: $00
	inc  e                                           ; $4a1b: $1c
	ld   b, $00                                      ; $4a1c: $06 $00
	nop                                              ; $4a1e: $00
	ld   bc, $5b92                                   ; $4a1f: $01 $92 $5b
	ld   l, e                                        ; $4a22: $6b
	ld   a, [hl]                                     ; $4a23: $7e
	ld   e, c                                        ; $4a24: $59
	sub  [hl]                                        ; $4a25: $96
	rst  $38                                         ; $4a26: $ff
	rst  $38                                         ; $4a27: $ff
	dec  c                                           ; $4a28: $0d
	nop                                              ; $4a29: $00
	dec  b                                           ; $4a2a: $05
	ld   b, b                                        ; $4a2b: $40
	rst  $38                                         ; $4a2c: $ff
	inc  bc                                          ; $4a2d: $03
	rst  $38                                         ; $4a2e: $ff
	ld   bc, $2801                                   ; $4a2f: $01 $01 $28
	nop                                              ; $4a32: $00
	ld   bc, $6d50                                   ; $4a33: $01 $50 $6d
	ld   d, d                                        ; $4a36: $52
	halt                                             ; $4a37: $76
	inc  b                                           ; $4a38: $04
	dec  e                                           ; $4a39: $1d
	ld   h, [hl]                                     ; $4a3a: $66
	dec  b                                           ; $4a3b: $05
	ld   h, [hl]                                     ; $4a3c: $66
	ld   l, [hl]                                     ; $4a3d: $6e
	sbc  a                                           ; $4a3e: $9f
	dec  c                                           ; $4a3f: $0d
	nop                                              ; $4a40: $00
	ld   a, [bc]                                     ; $4a41: $0a
	ld   b, $7d                                      ; $4a42: $06 $7d
	inc  bc                                          ; $4a44: $03
	inc  e                                           ; $4a45: $1c
	ld   b, $05                                      ; $4a46: $06 $05
	dec  b                                           ; $4a48: $05
	ld   bc, $a16b                                   ; $4a49: $01 $6b $a1
	ld   a, b                                        ; $4a4c: $78
	and  c                                           ; $4a4d: $a1
	ld   h, [hl]                                     ; $4a4e: $66
	sub  c                                           ; $4a4f: $91
	dec  c                                           ; $4a50: $0d
	dec  b                                           ; $4a51: $05
	ld   h, [hl]                                     ; $4a52: $66
	ld   e, d                                        ; $4a53: $5a
	inc  bc                                          ; $4a54: $03
	ld   l, h                                        ; $4a55: $6c
	ld   a, b                                        ; $4a56: $78
	ld   h, a                                        ; $4a57: $67
	ld   e, h                                        ; $4a58: $5c
	sbc  c                                           ; $4a59: $99
	ld   l, d                                        ; $4a5a: $6a
	sbc  a                                           ; $4a5b: $9f
	dec  c                                           ; $4a5c: $0d
	nop                                              ; $4a5d: $00
	ld   a, [bc]                                     ; $4a5e: $0a
	inc  e                                           ; $4a5f: $1c
	ld   b, $02                                      ; $4a60: $06 $02
	ld   [bc], a                                     ; $4a62: $02
	ld   bc, $9166                                   ; $4a63: $01 $66 $91
	sbc  [hl]                                        ; $4a66: $9e
	inc  bc                                          ; $4a67: $03
	ld   l, b                                        ; $4a68: $68
	ld   a, l                                        ; $4a69: $7d
	inc  b                                           ; $4a6a: $04
	ccf                                              ; $4a6b: $3f
	ld   d, h                                        ; $4a6c: $54
	ld   [hl], a                                     ; $4a6d: $77
	and  c                                           ; $4a6e: $a1
	ld   l, [hl]                                     ; $4a6f: $6e
	ld   a, [$000d]                                  ; $4a70: $fa $0d $00
	ld   a, [bc]                                     ; $4a73: $0a
	add  hl, de                                      ; $4a74: $19
	dec  b                                           ; $4a75: $05
	inc  bc                                          ; $4a76: $03
	inc  b                                           ; $4a77: $04
	inc  de                                          ; $4a78: $13
	add  l                                           ; $4a79: $85
	sub  a                                           ; $4a7a: $97
	ld   l, e                                        ; $4a7b: $6b
	ld   a, [hl]                                     ; $4a7c: $7e
	nop                                              ; $4a7d: $00
	nop                                              ; $4a7e: $00
	add  b                                           ; $4a7f: $80
	sub  d                                           ; $4a80: $92
	sub  d                                           ; $4a81: $92
	ld   [hl], c                                     ; $4a82: $71
	ld   h, c                                        ; $4a83: $61
	nop                                              ; $4a84: $00
	ld   bc, $526e                                   ; $4a85: $01 $6e $52
	add  e                                           ; $4a88: $83
	ld   e, l                                        ; $4a89: $5d
	nop                                              ; $4a8a: $00
	ld   [bc], a                                     ; $4a8b: $02
	rlca                                             ; $4a8c: $07
	pop  af                                          ; $4a8d: $f1
	inc  bc                                          ; $4a8e: $03
	ld   [bc], a                                     ; $4a8f: $02
	inc  bc                                          ; $4a90: $03
	ld   bc, $2000                                   ; $4a91: $01 $00 $20
	nop                                              ; $4a94: $00
	rlca                                             ; $4a95: $07
	ld   a, [de]                                     ; $4a96: $1a
	inc  b                                           ; $4a97: $04
	ld   [bc], a                                     ; $4a98: $02
	inc  bc                                          ; $4a99: $03
	ld   bc, $2001                                   ; $4a9a: $01 $01 $20
	nop                                              ; $4a9d: $00
	rlca                                             ; $4a9e: $07
	ld   a, [de]                                     ; $4a9f: $1a
	inc  b                                           ; $4aa0: $04
	ld   [bc], a                                     ; $4aa1: $02
	inc  bc                                          ; $4aa2: $03
	ld   bc, $2002                                   ; $4aa3: $01 $02 $20
	nop                                              ; $4aa6: $00
	ld   b, $c8                                      ; $4aa7: $06 $c8
	inc  bc                                          ; $4aa9: $03
	inc  e                                           ; $4aaa: $1c
	ld   b, $05                                      ; $4aab: $06 $05
	dec  b                                           ; $4aad: $05
	ld   bc, $a178                                   ; $4aae: $01 $78 $a1
	ld   l, [hl]                                     ; $4ab1: $6e
	sbc  [hl]                                        ; $4ab2: $9e
	sub  b                                           ; $4ab3: $90
	ld   d, h                                        ; $4ab4: $54
	inc  bc                                          ; $4ab5: $03
	ld   a, [hl]                                     ; $4ab6: $7e
	sbc  l                                           ; $4ab7: $9d
	sbc  b                                           ; $4ab8: $98
	ld   e, c                                        ; $4ab9: $59
	sub  [hl]                                        ; $4aba: $96
	rst  $38                                         ; $4abb: $ff
	rst  $38                                         ; $4abc: $ff
	dec  c                                           ; $4abd: $0d
	ld   [hl], d                                     ; $4abe: $72
	adc  h                                           ; $4abf: $8c
	and  c                                           ; $4ac0: $a1
	ld   a, e                                        ; $4ac1: $7b
	ei                                               ; $4ac2: $fb
	sub  d                                           ; $4ac3: $92
	ld   [hl], d                                     ; $4ac4: $72
	ld   l, [hl]                                     ; $4ac5: $6e
	ld   a, b                                        ; $4ac6: $78
	db   $fc                                         ; $4ac7: $fc
	sbc  a                                           ; $4ac8: $9f
	dec  c                                           ; $4ac9: $0d
	ld   h, [hl]                                     ; $4aca: $66
	sub  c                                           ; $4acb: $91
	ld   d, b                                        ; $4acc: $50
	ld   a, b                                        ; $4acd: $78
	sbc  a                                           ; $4ace: $9f
	dec  c                                           ; $4acf: $0d
	nop                                              ; $4ad0: $00
	ld   a, [bc]                                     ; $4ad1: $0a
	nop                                              ; $4ad2: $00
	inc  e                                           ; $4ad3: $1c
	ld   b, $00                                      ; $4ad4: $06 $00
	nop                                              ; $4ad6: $00
	ld   bc, $1304                                   ; $4ad7: $01 $04 $13
	add  l                                           ; $4ada: $85
	sub  a                                           ; $4adb: $97
	ld   l, e                                        ; $4adc: $6b
	ld   a, [hl]                                     ; $4add: $7e
	ld   e, c                                        ; $4ade: $59
	rst  $38                                         ; $4adf: $ff
	rst  $38                                         ; $4ae0: $ff
	dec  c                                           ; $4ae1: $0d
	ld   d, b                                        ; $4ae2: $50
	ld   l, l                                        ; $4ae3: $6d
	ld   d, d                                        ; $4ae4: $52
	halt                                             ; $4ae5: $76
	inc  b                                           ; $4ae6: $04
	dec  e                                           ; $4ae7: $1d
	ld   h, [hl]                                     ; $4ae8: $66
	dec  b                                           ; $4ae9: $05
	ld   h, [hl]                                     ; $4aea: $66
	ld   l, [hl]                                     ; $4aeb: $6e
	sbc  a                                           ; $4aec: $9f
	dec  c                                           ; $4aed: $0d
	nop                                              ; $4aee: $00
	ld   a, [bc]                                     ; $4aef: $0a
	dec  b                                           ; $4af0: $05
	ld   b, b                                        ; $4af1: $40
	rst  $38                                         ; $4af2: $ff
	inc  bc                                          ; $4af3: $03
	rst  $38                                         ; $4af4: $ff
	ld   bc, $2801                                   ; $4af5: $01 $01 $28
	nop                                              ; $4af8: $00
	ld   b, $34                                      ; $4af9: $06 $34
	inc  b                                           ; $4afb: $04
	inc  e                                           ; $4afc: $1c
	ld   b, $05                                      ; $4afd: $06 $05
	dec  b                                           ; $4aff: $05
	ld   bc, $a16b                                   ; $4b00: $01 $6b $a1
	ld   a, b                                        ; $4b03: $78
	and  c                                           ; $4b04: $a1
	ld   h, [hl]                                     ; $4b05: $66
	sub  c                                           ; $4b06: $91
	dec  c                                           ; $4b07: $0d
	dec  b                                           ; $4b08: $05
	ld   h, [hl]                                     ; $4b09: $66
	ld   e, d                                        ; $4b0a: $5a
	inc  bc                                          ; $4b0b: $03
	ld   l, h                                        ; $4b0c: $6c
	ld   a, b                                        ; $4b0d: $78
	ld   h, a                                        ; $4b0e: $67
	ld   e, h                                        ; $4b0f: $5c
	sbc  c                                           ; $4b10: $99
	ld   l, d                                        ; $4b11: $6a
	sbc  a                                           ; $4b12: $9f
	dec  c                                           ; $4b13: $0d
	nop                                              ; $4b14: $00
	ld   a, [bc]                                     ; $4b15: $0a
	inc  e                                           ; $4b16: $1c
	ld   b, $02                                      ; $4b17: $06 $02
	ld   [bc], a                                     ; $4b19: $02
	ld   bc, $6803                                   ; $4b1a: $01 $03 $68
	ld   a, l                                        ; $4b1d: $7d
	sbc  [hl]                                        ; $4b1e: $9e
	cp   d                                           ; $4b1f: $ba
	rst  ToBoot                                         ; $4b20: $c7
	ei                                               ; $4b21: $fb
	xor  [hl]                                        ; $4b22: $ae
	ld   l, [hl]                                     ; $4b23: $6e
	ld   a, [$000d]                                  ; $4b24: $fa $0d $00
	ld   a, [bc]                                     ; $4b27: $0a
	add  hl, de                                      ; $4b28: $19
	dec  b                                           ; $4b29: $05
	inc  bc                                          ; $4b2a: $03
	ret  nc                                          ; $4b2b: $d0

	push af                                          ; $4b2c: $f5
	pop  de                                          ; $4b2d: $d1
	ei                                               ; $4b2e: $fb
	or   c                                           ; $4b2f: $b1
	nop                                              ; $4b30: $00
	nop                                              ; $4b31: $00
	inc  b                                           ; $4b32: $04
	ld   c, [hl]                                     ; $4b33: $4e
	inc  b                                           ; $4b34: $04
	ret  c                                           ; $4b35: $d8

	dec  b                                           ; $4b36: $05
	ld   sp, hl                                      ; $4b37: $f9
	ld   a, h                                        ; $4b38: $7c
	inc  b                                           ; $4b39: $04
	ret  z                                           ; $4b3a: $c8

	sub  d                                           ; $4b3b: $92
	ld   e, e                                        ; $4b3c: $5b
	nop                                              ; $4b3d: $00
	ld   bc, $fbbe                                   ; $4b3e: $01 $be $fb
	cp   h                                           ; $4b41: $bc
	ei                                               ; $4b42: $fb
	cp   c                                           ; $4b43: $b9
	nop                                              ; $4b44: $00
	ld   [bc], a                                     ; $4b45: $02
	rlca                                             ; $4b46: $07
	inc  a                                           ; $4b47: $3c
	dec  b                                           ; $4b48: $05
	ld   [bc], a                                     ; $4b49: $02
	inc  bc                                          ; $4b4a: $03
	ld   bc, $2000                                   ; $4b4b: $01 $00 $20
	nop                                              ; $4b4e: $00
	rlca                                             ; $4b4f: $07
	ld   l, a                                        ; $4b50: $6f
	dec  b                                           ; $4b51: $05
	ld   [bc], a                                     ; $4b52: $02
	inc  bc                                          ; $4b53: $03
	ld   bc, $2001                                   ; $4b54: $01 $01 $20
	nop                                              ; $4b57: $00
	rlca                                             ; $4b58: $07
	and  c                                           ; $4b59: $a1
	dec  b                                           ; $4b5a: $05
	ld   [bc], a                                     ; $4b5b: $02
	inc  bc                                          ; $4b5c: $03
	ld   bc, $2002                                   ; $4b5d: $01 $02 $20
	nop                                              ; $4b60: $00
	ld   b, $82                                      ; $4b61: $06 $82
	inc  b                                           ; $4b63: $04
	rrca                                             ; $4b64: $0f
	nop                                              ; $4b65: $00
	ld   bc, $5401                                   ; $4b66: $01 $01 $54
	db   $fc                                         ; $4b69: $fc
	and  c                                           ; $4b6a: $a1
	rst  $38                                         ; $4b6b: $ff
	rst  $38                                         ; $4b6c: $ff
	dec  c                                           ; $4b6d: $0d
	inc  b                                           ; $4b6e: $04
	adc  c                                           ; $4b6f: $89
	inc  b                                           ; $4b70: $04
	ld   a, [hl]                                     ; $4b71: $7e
	inc  b                                           ; $4b72: $04
	sbc  [hl]                                        ; $4b73: $9e
	inc  b                                           ; $4b74: $04
	call nc, Call_04f_7471                           ; $4b75: $d4 $71 $74
	ld   d, d                                        ; $4b78: $52
	ld   d, d                                        ; $4b79: $52
	adc  h                                           ; $4b7a: $8c
	ld   h, a                                        ; $4b7b: $67
	ld   e, c                                        ; $4b7c: $59
	sub  a                                           ; $4b7d: $97
	dec  c                                           ; $4b7e: $0d
	ld   h, c                                        ; $4b7f: $61
	ld   a, h                                        ; $4b80: $7c
	add  [hl]                                        ; $4b81: $86
	and  c                                           ; $4b82: $a1
	ld   [hl], l                                     ; $4b83: $75
	and  $e3                                         ; $4b84: $e6 $e3
	ld   [hl], h                                     ; $4b86: $74
	ld   e, b                                        ; $4b87: $58
	ld   e, e                                        ; $4b88: $5b
	adc  h                                           ; $4b89: $8c
	ld   h, a                                        ; $4b8a: $67
	sbc  a                                           ; $4b8b: $9f
	dec  c                                           ; $4b8c: $0d
	nop                                              ; $4b8d: $00
	ld   a, [bc]                                     ; $4b8e: $0a
	inc  e                                           ; $4b8f: $1c
	ld   b, $01                                      ; $4b90: $06 $01
	ld   bc, $401d                                   ; $4b92: $01 $1d $40
	ld   d, $03                                      ; $4b95: $16 $03
	ld   d, $01                                      ; $4b97: $16 $01
	ld   [bc], a                                     ; $4b99: $02
	jr   z, jr_04f_4b9c                              ; $4b9a: $28 $00

jr_04f_4b9c:
	ld   bc, $5686                                   ; $4b9c: $01 $86 $56
	db   $fc                                         ; $4b9f: $fc
	ld   a, b                                        ; $4ba0: $78
	ld   e, c                                        ; $4ba1: $59
	ld   a, b                                        ; $4ba2: $78
	ld   e, c                                        ; $4ba3: $59
	ld   d, d                                        ; $4ba4: $52
	ld   d, d                                        ; $4ba5: $52
	inc  b                                           ; $4ba6: $04
	ld   h, e                                        ; $4ba7: $63
	inc  b                                           ; $4ba8: $04
	inc  h                                           ; $4ba9: $24
	ld   l, [hl]                                     ; $4baa: $6e
	ld   a, b                                        ; $4bab: $78
	sbc  a                                           ; $4bac: $9f
	dec  c                                           ; $4bad: $0d
	ld   d, d                                        ; $4bae: $52
	ld   e, l                                        ; $4baf: $5d
	sub  a                                           ; $4bb0: $97
	inc  b                                           ; $4bb1: $04
	ld   c, $03                                      ; $4bb2: $0e $03
	ld   l, d                                        ; $4bb4: $6a
	ld   d, d                                        ; $4bb5: $52
	ld   [hl], l                                     ; $4bb6: $75
	sub  b                                           ; $4bb7: $90
	sbc  [hl]                                        ; $4bb8: $9e
	inc  bc                                          ; $4bb9: $03
	ld   l, d                                        ; $4bba: $6a
	add  a                                           ; $4bbb: $87
	ld   h, a                                        ; $4bbc: $67
	ld   e, h                                        ; $4bbd: $5c
	ld   a, l                                        ; $4bbe: $7d
	dec  c                                           ; $4bbf: $0d
	sub  [hl]                                        ; $4bc0: $96
	ld   e, l                                        ; $4bc1: $5d
	ld   a, b                                        ; $4bc2: $78
	ld   d, d                                        ; $4bc3: $52
	ld   e, c                                        ; $4bc4: $59
	sub  a                                           ; $4bc5: $97
	ld   a, b                                        ; $4bc6: $78
	sbc  a                                           ; $4bc7: $9f
	dec  c                                           ; $4bc8: $0d
	nop                                              ; $4bc9: $00
	ld   a, [bc]                                     ; $4bca: $0a
	ld   bc, $9166                                   ; $4bcb: $01 $66 $91
	sbc  [hl]                                        ; $4bce: $9e
	adc  h                                           ; $4bcf: $8c
	ei                                               ; $4bd0: $fb
	ld   h, c                                        ; $4bd1: $61
	ld   a, h                                        ; $4bd2: $7c
	ld   e, l                                        ; $4bd3: $5d
	sub  a                                           ; $4bd4: $97
	ld   d, d                                        ; $4bd5: $52
	ld   [hl], l                                     ; $4bd6: $75
	dec  c                                           ; $4bd7: $0d
	xor  h                                           ; $4bd8: $ac
	push af                                          ; $4bd9: $f5
	jp   c, $65f5                                    ; $4bda: $da $f5 $65

	ld   [hl], h                                     ; $4bdd: $74
	sub  d                                           ; $4bde: $92
	sbc  c                                           ; $4bdf: $99
	sub  [hl]                                        ; $4be0: $96
	sbc  a                                           ; $4be1: $9f
	dec  c                                           ; $4be2: $0d
	nop                                              ; $4be3: $00
	ld   a, [bc]                                     ; $4be4: $0a
	ld   bc, $5477                                   ; $4be5: $01 $77 $54
	ld   l, [hl]                                     ; $4be8: $6e
	ld   d, d                                        ; $4be9: $52
	sbc  a                                           ; $4bea: $9f
	dec  c                                           ; $4beb: $0d
	xor  l                                           ; $4bec: $ad
	push af                                          ; $4bed: $f5
	xor  l                                           ; $4bee: $ad
	push af                                          ; $4bef: $f5
	inc  bc                                          ; $4bf0: $03
	ld   l, d                                        ; $4bf1: $6a
	ld   d, h                                        ; $4bf2: $54
	sbc  a                                           ; $4bf3: $9f
	dec  c                                           ; $4bf4: $0d
	ld   l, e                                        ; $4bf5: $6b
	ld   h, l                                        ; $4bf6: $65
	ld   [hl], h                                     ; $4bf7: $74
	inc  b                                           ; $4bf8: $04
	dec  c                                           ; $4bf9: $0d
	and  b                                           ; $4bfa: $a0
	ld   e, e                                        ; $4bfb: $5b
	ld   l, l                                        ; $4bfc: $6d
	ld   d, [hl]                                     ; $4bfd: $56
	sbc  c                                           ; $4bfe: $99
	sbc  a                                           ; $4bff: $9f
	dec  c                                           ; $4c00: $0d
	nop                                              ; $4c01: $00
	ld   a, [bc]                                     ; $4c02: $0a
	ld   bc, $9a6b                                   ; $4c03: $01 $6b $9a
	ld   e, d                                        ; $4c06: $5a
	ld   d, b                                        ; $4c07: $50
	ld   l, l                                        ; $4c08: $6d
	ld   d, d                                        ; $4c09: $52
	sbc  [hl]                                        ; $4c0a: $9e
	dec  b                                           ; $4c0b: $05
	or   $03                                         ; $4c0c: $f6 $03
	ld   e, d                                        ; $4c0e: $5a
	xor  h                                           ; $4c0f: $ac
	push af                                          ; $4c10: $f5
	bit  5, [hl]                                     ; $4c11: $cb $6e
	sbc  a                                           ; $4c13: $9f
	dec  c                                           ; $4c14: $0d
	ld   h, [hl]                                     ; $4c15: $66
	sub  c                                           ; $4c16: $91
	ld   d, b                                        ; $4c17: $50
	ld   a, b                                        ; $4c18: $78
	sbc  a                                           ; $4c19: $9f
	dec  c                                           ; $4c1a: $0d
	nop                                              ; $4c1b: $00
	ld   a, [bc]                                     ; $4c1c: $0a
	nop                                              ; $4c1d: $00
	inc  e                                           ; $4c1e: $1c
	ld   b, $00                                      ; $4c1f: $06 $00
	nop                                              ; $4c21: $00
	ld   bc, $f5d0                                   ; $4c22: $01 $d0 $f5
	pop  de                                          ; $4c25: $d1
	ei                                               ; $4c26: $fb
	or   c                                           ; $4c27: $b1
	ld   e, c                                        ; $4c28: $59
	sub  [hl]                                        ; $4c29: $96
	rst  $38                                         ; $4c2a: $ff
	rst  $38                                         ; $4c2b: $ff
	dec  c                                           ; $4c2c: $0d
	nop                                              ; $4c2d: $00
	dec  b                                           ; $4c2e: $05
	ld   b, b                                        ; $4c2f: $40
	rst  $38                                         ; $4c30: $ff
	inc  bc                                          ; $4c31: $03
	rst  $38                                         ; $4c32: $ff
	ld   bc, $2801                                   ; $4c33: $01 $01 $28
	nop                                              ; $4c36: $00
	ld   bc, $6d50                                   ; $4c37: $01 $50 $6d
	ld   d, d                                        ; $4c3a: $52
	halt                                             ; $4c3b: $76
	inc  b                                           ; $4c3c: $04
	dec  e                                           ; $4c3d: $1d
	ld   h, [hl]                                     ; $4c3e: $66
	dec  b                                           ; $4c3f: $05
	ld   h, [hl]                                     ; $4c40: $66
	ld   l, [hl]                                     ; $4c41: $6e
	sbc  a                                           ; $4c42: $9f
	dec  c                                           ; $4c43: $0d
	nop                                              ; $4c44: $00
	ld   a, [bc]                                     ; $4c45: $0a
	dec  c                                           ; $4c46: $0d
	nop                                              ; $4c47: $00
	nop                                              ; $4c48: $00
	rrca                                             ; $4c49: $0f
	nop                                              ; $4c4a: $00
	ld   bc, $0b0c                                   ; $4c4b: $01 $0c $0b
	ld   b, $c6                                      ; $4c4e: $06 $c6
	dec  b                                           ; $4c50: $05
	inc  e                                           ; $4c51: $1c
	ld   b, $03                                      ; $4c52: $06 $03
	inc  bc                                          ; $4c54: $03
	ld   bc, $b3b3                                   ; $4c55: $01 $b3 $b3
	call nz, $ffff                                   ; $4c58: $c4 $ff $ff
	dec  c                                           ; $4c5b: $0d
	nop                                              ; $4c5c: $00
	dec  b                                           ; $4c5d: $05
	ld   b, b                                        ; $4c5e: $40
	rst  $38                                         ; $4c5f: $ff
	inc  bc                                          ; $4c60: $03
	rst  $38                                         ; $4c61: $ff
	ld   bc, $2802                                   ; $4c62: $01 $02 $28
	nop                                              ; $4c65: $00
	ld   bc, $4e04                                   ; $4c66: $01 $04 $4e
	inc  b                                           ; $4c69: $04
	ret  c                                           ; $4c6a: $d8

	dec  b                                           ; $4c6b: $05
	ld   sp, hl                                      ; $4c6c: $f9
	ld   a, h                                        ; $4c6d: $7c
	inc  b                                           ; $4c6e: $04
	ret  z                                           ; $4c6f: $c8

	sub  d                                           ; $4c70: $92
	ld   e, e                                        ; $4c71: $5b
	ld   l, [hl]                                     ; $4c72: $6e
	halt                                             ; $4c73: $76
	ld   sp, hl                                      ; $4c74: $f9
	dec  c                                           ; $4c75: $0d
	nop                                              ; $4c76: $00
	ld   a, [bc]                                     ; $4c77: $0a
	dec  c                                           ; $4c78: $0d
	nop                                              ; $4c79: $00
	nop                                              ; $4c7a: $00
	rrca                                             ; $4c7b: $0f
	nop                                              ; $4c7c: $00
	ld   bc, $0b0c                                   ; $4c7d: $01 $0c $0b
	ld   b, $c6                                      ; $4c80: $06 $c6
	dec  b                                           ; $4c82: $05
	inc  e                                           ; $4c83: $1c
	ld   b, $05                                      ; $4c84: $06 $05
	dec  b                                           ; $4c86: $05
	ld   bc, $a16b                                   ; $4c87: $01 $6b $a1
	ld   a, b                                        ; $4c8a: $78
	and  c                                           ; $4c8b: $a1
	ld   h, [hl]                                     ; $4c8c: $66
	sub  c                                           ; $4c8d: $91
	dec  c                                           ; $4c8e: $0d
	dec  b                                           ; $4c8f: $05
	ld   h, [hl]                                     ; $4c90: $66
	ld   e, d                                        ; $4c91: $5a
	inc  bc                                          ; $4c92: $03
	ld   l, h                                        ; $4c93: $6c
	ld   a, b                                        ; $4c94: $78
	ld   h, a                                        ; $4c95: $67
	ld   e, h                                        ; $4c96: $5c
	sbc  c                                           ; $4c97: $99
	ld   l, d                                        ; $4c98: $6a
	sbc  a                                           ; $4c99: $9f
	dec  c                                           ; $4c9a: $0d
	nop                                              ; $4c9b: $00
	ld   a, [bc]                                     ; $4c9c: $0a
	dec  c                                           ; $4c9d: $0d
	nop                                              ; $4c9e: $00
	nop                                              ; $4c9f: $00
	rrca                                             ; $4ca0: $0f
	nop                                              ; $4ca1: $00
	ld   bc, $0b0c                                   ; $4ca2: $01 $0c $0b
	ld   b, $c6                                      ; $4ca5: $06 $c6
	dec  b                                           ; $4ca7: $05
	rlca                                             ; $4ca8: $07
	ld   d, b                                        ; $4ca9: $50
	ld   b, $03                                      ; $4caa: $06 $03
	rst  $38                                         ; $4cac: $ff
	ld   bc, $2003                                   ; $4cad: $01 $03 $20
	nop                                              ; $4cb0: $00
	rlca                                             ; $4cb1: $07
	add  c                                           ; $4cb2: $81
	ld   b, $03                                      ; $4cb3: $06 $03
	rst  $38                                         ; $4cb5: $ff
	ld   bc, $2302                                   ; $4cb6: $01 $02 $23
	nop                                              ; $4cb9: $00
	inc  e                                           ; $4cba: $1c
	ld   b, $05                                      ; $4cbb: $06 $05
	dec  b                                           ; $4cbd: $05
	dec  e                                           ; $4cbe: $1d
	ld   b, b                                        ; $4cbf: $40
	ld   d, $03                                      ; $4cc0: $16 $03
	ld   d, $01                                      ; $4cc2: $16 $01
	inc  bc                                          ; $4cc4: $03
	jr   z, jr_04f_4cc7                              ; $4cc5: $28 $00

jr_04f_4cc7:
	ld   bc, $9e8c                                   ; $4cc7: $01 $8c $9e
	adc  h                                           ; $4cca: $8c
	ld   d, d                                        ; $4ccb: $52
	ld   [hl], c                                     ; $4ccc: $71
	ld   l, l                                        ; $4ccd: $6d
	rst  $38                                         ; $4cce: $ff
	rst  $38                                         ; $4ccf: $ff
	dec  c                                           ; $4cd0: $0d
	ld   d, b                                        ; $4cd1: $50
	ld   l, l                                        ; $4cd2: $6d
	ld   d, d                                        ; $4cd3: $52
	ld   a, h                                        ; $4cd4: $7c
	inc  b                                           ; $4cd5: $04
	ld   a, l                                        ; $4cd6: $7d
	ld   e, a                                        ; $4cd7: $5f
	ld   l, [hl]                                     ; $4cd8: $6e
	rst  $38                                         ; $4cd9: $ff
	rst  $38                                         ; $4cda: $ff
	dec  c                                           ; $4cdb: $0d
	ld   h, a                                        ; $4cdc: $67
	ld   h, b                                        ; $4cdd: $60
	ld   d, [hl]                                     ; $4cde: $56
	sub  [hl]                                        ; $4cdf: $96
	sbc  [hl]                                        ; $4ce0: $9e
	ld   e, b                                        ; $4ce1: $58
	inc  bc                                          ; $4ce2: $03
	ld   c, a                                        ; $4ce3: $4f
	ld   a, l                                        ; $4ce4: $7d
	rst  $38                                         ; $4ce5: $ff
	rst  $38                                         ; $4ce6: $ff
	dec  c                                           ; $4ce7: $0d
	nop                                              ; $4ce8: $00
	ld   a, [bc]                                     ; $4ce9: $0a
	inc  e                                           ; $4cea: $1c
	ld   b, $00                                      ; $4ceb: $06 $00
	nop                                              ; $4ced: $00
	ld   bc, $9166                                   ; $4cee: $01 $66 $91
	ld   d, b                                        ; $4cf1: $50
	sbc  [hl]                                        ; $4cf2: $9e
	ld   d, b                                        ; $4cf3: $50
	ld   l, l                                        ; $4cf4: $6d
	ld   d, d                                        ; $4cf5: $52
	ld   a, l                                        ; $4cf6: $7d
	dec  c                                           ; $4cf7: $0d
	inc  b                                           ; $4cf8: $04
	sub  l                                           ; $4cf9: $95
	ld   [bc], a                                     ; $4cfa: $02
	ld   hl, $9079                                   ; $4cfb: $21 $79 $90
	ld   [hl], a                                     ; $4cfe: $77
	ld   [hl], c                                     ; $4cff: $71
	ld   [hl], h                                     ; $4d00: $74
	inc  b                                           ; $4d01: $04
	xor  l                                           ; $4d02: $ad
	inc  b                                           ; $4d03: $04
	ld   b, d                                        ; $4d04: $42
	halt                                             ; $4d05: $76
	ld   d, d                                        ; $4d06: $52
	ld   e, l                                        ; $4d07: $5d
	ld   e, c                                        ; $4d08: $59
	sbc  a                                           ; $4d09: $9f
	dec  c                                           ; $4d0a: $0d
	nop                                              ; $4d0b: $00
	ld   a, [bc]                                     ; $4d0c: $0a
	dec  c                                           ; $4d0d: $0d
	nop                                              ; $4d0e: $00
	nop                                              ; $4d0f: $00
	rrca                                             ; $4d10: $0f
	nop                                              ; $4d11: $00
	ld   bc, $0101                                   ; $4d12: $01 $01 $01
	inc  bc                                          ; $4d15: $03
	ld   d, h                                        ; $4d16: $54
	rst  $38                                         ; $4d17: $ff
	rst  $38                                         ; $4d18: $ff
	ld   e, e                                        ; $4d19: $5b
	sub  b                                           ; $4d1a: $90
	ld   l, a                                        ; $4d1b: $6f
	ld   [bc], a                                     ; $4d1c: $02
	jr   z, jr_04f_4d71                              ; $4d1d: $28 $52

	rst  $38                                         ; $4d1f: $ff
	rst  $38                                         ; $4d20: $ff
	ld   bc, $0d04                                   ; $4d21: $01 $04 $0d
	nop                                              ; $4d24: $00
	ld   a, [bc]                                     ; $4d25: $0a
	rlca                                             ; $4d26: $07
	xor  d                                           ; $4d27: $aa
	ld   b, $03                                      ; $4d28: $06 $03
	inc  de                                          ; $4d2a: $13
	ld   bc, $256e                                   ; $4d2b: $01 $6e $25
	nop                                              ; $4d2e: $00
	ld   b, $b3                                      ; $4d2f: $06 $b3
	rlca                                             ; $4d31: $07
	inc  e                                           ; $4d32: $1c
	ld   b, $01                                      ; $4d33: $06 $01
	ld   bc, $401d                                   ; $4d35: $01 $1d $40
	ld   d, $03                                      ; $4d38: $16 $03
	ld   d, $01                                      ; $4d3a: $16 $01
	ld   [bc], a                                     ; $4d3c: $02
	jr   z, jr_04f_4d3f                              ; $4d3d: $28 $00

jr_04f_4d3f:
	ld   bc, $5477                                   ; $4d3f: $01 $77 $54
	sub  d                                           ; $4d42: $92
	sub  a                                           ; $4d43: $97
	ld   [bc], a                                     ; $4d44: $02
	inc  l                                           ; $4d45: $2c
	ld   e, e                                        ; $4d46: $5b
	inc  b                                           ; $4d47: $04
	sbc  [hl]                                        ; $4d48: $9e
	ld   e, a                                        ; $4d49: $5f
	ld   l, [hl]                                     ; $4d4a: $6e
	ld   a, b                                        ; $4d4b: $78
	sbc  a                                           ; $4d4c: $9f
	dec  c                                           ; $4d4d: $0d
	ld   [hl], l                                     ; $4d4e: $75
	sub  b                                           ; $4d4f: $90
	sbc  [hl]                                        ; $4d50: $9e
	ld   [bc], a                                     ; $4d51: $02
	sub  l                                           ; $4d52: $95
	inc  bc                                          ; $4d53: $03
	jp   c, Jump_04f_6d65                            ; $4d54: $da $65 $6d

	ld   l, d                                        ; $4d57: $6a
	sbc  a                                           ; $4d58: $9f
	dec  c                                           ; $4d59: $0d
	ld   h, [hl]                                     ; $4d5a: $66
	sub  c                                           ; $4d5b: $91
	ld   d, b                                        ; $4d5c: $50
	ld   a, b                                        ; $4d5d: $78
	sbc  a                                           ; $4d5e: $9f
	dec  c                                           ; $4d5f: $0d
	nop                                              ; $4d60: $00
	ld   a, [bc]                                     ; $4d61: $0a
	nop                                              ; $4d62: $00
	inc  e                                           ; $4d63: $1c
	ld   b, $01                                      ; $4d64: $06 $01
	ld   bc, $8c01                                   ; $4d66: $01 $01 $8c
	ld   l, [hl]                                     ; $4d69: $6e
	adc  h                                           ; $4d6a: $8c
	ld   l, [hl]                                     ; $4d6b: $6e
	sbc  [hl]                                        ; $4d6c: $9e
	ld   d, b                                        ; $4d6d: $50
	ld   l, l                                        ; $4d6e: $6d
	ld   d, d                                        ; $4d6f: $52
	ld   a, c                                        ; $4d70: $79

jr_04f_4d71:
	inc  bc                                          ; $4d71: $03
	ld   c, [hl]                                     ; $4d72: $4e
	ld   [hl], d                                     ; $4d73: $72
	ld   a, c                                        ; $4d74: $79
	ld   a, l                                        ; $4d75: $7d
	dec  c                                           ; $4d76: $0d
	dec  b                                           ; $4d77: $05
	cp   h                                           ; $4d78: $bc
	inc  b                                           ; $4d79: $04
	ld   d, b                                        ; $4d7a: $50
	inc  bc                                          ; $4d7b: $03
	ld   [hl], b                                     ; $4d7c: $70
	ld   e, c                                        ; $4d7d: $59
	ld   [hl], c                                     ; $4d7e: $71
	ld   l, l                                        ; $4d7f: $6d
	ld   a, b                                        ; $4d80: $78
	sbc  a                                           ; $4d81: $9f
	dec  c                                           ; $4d82: $0d
	ld   h, [hl]                                     ; $4d83: $66
	sub  c                                           ; $4d84: $91
	ld   d, b                                        ; $4d85: $50
	ld   a, b                                        ; $4d86: $78
	sbc  a                                           ; $4d87: $9f
	dec  c                                           ; $4d88: $0d
	nop                                              ; $4d89: $00
	ld   a, [bc]                                     ; $4d8a: $0a
	nop                                              ; $4d8b: $00
	rrca                                             ; $4d8c: $0f
	nop                                              ; $4d8d: $00
	ld   bc, $0101                                   ; $4d8e: $01 $01 $01
	inc  bc                                          ; $4d91: $03
	inc  b                                           ; $4d92: $04
	ld   l, l                                        ; $4d93: $6d
	sub  b                                           ; $4d94: $90
	sbc  [hl]                                        ; $4d95: $9e
	inc  b                                           ; $4d96: $04
	sub  l                                           ; $4d97: $95
	ld   [bc], a                                     ; $4d98: $02
	ld   hl, $0486                                   ; $4d99: $21 $86 $04
	jp   Jump_04f_7471                               ; $4d9c: $c3 $71 $74


	dec  c                                           ; $4d9f: $0d
	db   $10                                         ; $4da0: $10
	ld   [bc], a                                     ; $4da1: $02
	jr   nz, jr_04f_4da7                             ; $4da2: $20 $03

	and  a                                           ; $4da4: $a7
	adc  l                                           ; $4da5: $8d
	ld   h, l                                        ; $4da6: $65

jr_04f_4da7:
	sub  [hl]                                        ; $4da7: $96
	ld   d, h                                        ; $4da8: $54
	rst  $38                                         ; $4da9: $ff
	rst  $38                                         ; $4daa: $ff
	ld   bc, $0d04                                   ; $4dab: $01 $04 $0d
	nop                                              ; $4dae: $00
	ld   a, [bc]                                     ; $4daf: $0a
	inc  c                                           ; $4db0: $0c
	ld   [bc], a                                     ; $4db1: $02
	ld   c, $5a                                      ; $4db2: $0e $5a
	inc  e                                           ; $4db4: $1c
	inc  bc                                          ; $4db5: $03
	rlca                                             ; $4db6: $07
	rlca                                             ; $4db7: $07
	ld   bc, $9750                                   ; $4db8: $01 $50 $97
	sbc  [hl]                                        ; $4dbb: $9e
	ld   [$5d00], sp                                 ; $4dbc: $08 $00 $5d
	and  c                                           ; $4dbf: $a1
	sbc  a                                           ; $4dc0: $9f
	dec  c                                           ; $4dc1: $0d
	inc  b                                           ; $4dc2: $04
	ld   c, c                                        ; $4dc3: $49
	ld   a, [$10f9]                                  ; $4dc4: $fa $f9 $10
	ld   l, e                                        ; $4dc7: $6b
	ld   a, h                                        ; $4dc8: $7c
	inc  b                                           ; $4dc9: $04
	dec  c                                           ; $4dca: $0d
	ld   a, l                                        ; $4dcb: $7d
	ld   a, [$0dfa]                                  ; $4dcc: $fa $fa $0d
	rst  $10                                         ; $4dcf: $d7
	or   b                                           ; $4dd0: $b0
	rst  $10                                         ; $4dd1: $d7
	or   b                                           ; $4dd2: $b0
	ld   h, [hl]                                     ; $4dd3: $66
	sub  c                                           ; $4dd4: $91
	ld   a, b                                        ; $4dd5: $78
	ld   d, d                                        ; $4dd6: $52
	ld   a, h                                        ; $4dd7: $7c
	ld   a, [$fafa]                                  ; $4dd8: $fa $fa $fa
	dec  c                                           ; $4ddb: $0d
	nop                                              ; $4ddc: $00
	ld   a, [bc]                                     ; $4ddd: $0a
	rrca                                             ; $4dde: $0f
	nop                                              ; $4ddf: $00
	ld   bc, $0301                                   ; $4de0: $01 $01 $03
	adc  e                                           ; $4de3: $8b
	ld   a, l                                        ; $4de4: $7d
	rst  $38                                         ; $4de5: $ff
	rst  $38                                         ; $4de6: $ff
	dec  c                                           ; $4de7: $0d
	ld   e, c                                        ; $4de8: $59
	ld   e, l                                        ; $4de9: $5d
	ld   e, c                                        ; $4dea: $59
	ld   e, l                                        ; $4deb: $5d
	ld   h, l                                        ; $4dec: $65
	ld   e, c                                        ; $4ded: $59
	ld   h, [hl]                                     ; $4dee: $66
	ld   e, c                                        ; $4def: $59
	rst  $38                                         ; $4df0: $ff
	rst  $38                                         ; $4df1: $ff
	dec  c                                           ; $4df2: $0d
	nop                                              ; $4df3: $00
	ld   a, [bc]                                     ; $4df4: $0a
	inc  e                                           ; $4df5: $1c
	inc  bc                                          ; $4df6: $03
	inc  b                                           ; $4df7: $04
	inc  b                                           ; $4df8: $04
	ld   bc, $5b50                                   ; $4df9: $01 $50 $5b
	sbc  d                                           ; $4dfc: $9a
	ld   l, l                                        ; $4dfd: $6d
	rst  $38                                         ; $4dfe: $ff
	rst  $38                                         ; $4dff: $ff
	dec  c                                           ; $4e00: $0d
	ld   [hl], l                                     ; $4e01: $75
	sub  b                                           ; $4e02: $90
	sbc  [hl]                                        ; $4e03: $9e
	ld   l, e                                        ; $4e04: $6b
	ld   a, h                                        ; $4e05: $7c
	adc  h                                           ; $4e06: $8c
	adc  h                                           ; $4e07: $8c
	ld   h, [hl]                                     ; $4e08: $66
	sub  c                                           ; $4e09: $91
	inc  bc                                          ; $4e0a: $03
	ld   l, l                                        ; $4e0b: $6d
	dec  b                                           ; $4e0c: $05
	add  hl, de                                      ; $4e0d: $19
	ld   a, c                                        ; $4e0e: $79
	dec  c                                           ; $4e0f: $0d
	ld   h, e                                        ; $4e10: $63
	ld   h, l                                        ; $4e11: $65
	ld   [hl], d                                     ; $4e12: $72
	ld   e, c                                        ; $4e13: $59
	ld   d, [hl]                                     ; $4e14: $56
	sbc  c                                           ; $4e15: $99
	sbc  l                                           ; $4e16: $9d
	ld   a, e                                        ; $4e17: $7b
	rst  $38                                         ; $4e18: $ff
	rst  $38                                         ; $4e19: $ff
	dec  c                                           ; $4e1a: $0d
	nop                                              ; $4e1b: $00
	ld   a, [bc]                                     ; $4e1c: $0a
	inc  e                                           ; $4e1d: $1c
	inc  bc                                          ; $4e1e: $03
	ld   [bc], a                                     ; $4e1f: $02
	ld   [bc], a                                     ; $4e20: $02
	ld   bc, $5252                                   ; $4e21: $01 $52 $52
	sbc  l                                           ; $4e24: $9d
	sbc  a                                           ; $4e25: $9f
	dec  c                                           ; $4e26: $0d
	ld   [bc], a                                     ; $4e27: $02
	and  l                                           ; $4e28: $a5
	ld   e, c                                        ; $4e29: $59
	sub  a                                           ; $4e2a: $97
	inc  bc                                          ; $4e2b: $03
	db   $fd                                         ; $4e2c: $fd
	inc  bc                                          ; $4e2d: $03
	ld   l, l                                        ; $4e2e: $6d
	sub  [hl]                                        ; $4e2f: $96
	sbc  a                                           ; $4e30: $9f
	dec  c                                           ; $4e31: $0d
	ld   d, d                                        ; $4e32: $52
	ld   d, d                                        ; $4e33: $52
	sbc  l                                           ; $4e34: $9d
	ld   a, e                                        ; $4e35: $7b
	sbc  a                                           ; $4e36: $9f
	dec  c                                           ; $4e37: $0d
	nop                                              ; $4e38: $00
	ld   a, [bc]                                     ; $4e39: $0a
	ld   a, [de]                                     ; $4e3a: $1a
	inc  bc                                          ; $4e3b: $03
	inc  e                                           ; $4e3c: $1c
	inc  bc                                          ; $4e3d: $03
	inc  bc                                          ; $4e3e: $03
	inc  bc                                          ; $4e3f: $03
	ld   bc, $5483                                   ; $4e40: $01 $83 $54
	sbc  [hl]                                        ; $4e43: $9e
	sub  [hl]                                        ; $4e44: $96
	ld   e, l                                        ; $4e45: $5d
	ld   e, d                                        ; $4e46: $5a
	and  c                                           ; $4e47: $a1
	ld   a, [hl]                                     ; $4e48: $7e
	ld   [hl], c                                     ; $4e49: $71
	ld   l, l                                        ; $4e4a: $6d
	sbc  l                                           ; $4e4b: $9d
	ld   a, e                                        ; $4e4c: $7b
	sbc  a                                           ; $4e4d: $9f
	dec  c                                           ; $4e4e: $0d
	ld   a, b                                        ; $4e4f: $78
	and  c                                           ; $4e50: $a1
	halt                                             ; $4e51: $76
	ld   e, c                                        ; $4e52: $59
	cp   b                                           ; $4e53: $b8
	xor  b                                           ; $4e54: $a8
	and  l                                           ; $4e55: $a5
	ret  c                                           ; $4e56: $d8

	and  e                                           ; $4e57: $a3
	call nz, $0dd8                                   ; $4e58: $c4 $d8 $0d
	ld   [hl], l                                     ; $4e5b: $75
	ld   e, e                                        ; $4e5c: $5b
	ld   l, l                                        ; $4e5d: $6d
	sbc  l                                           ; $4e5e: $9d
	sbc  a                                           ; $4e5f: $9f
	dec  c                                           ; $4e60: $0d
	nop                                              ; $4e61: $00
	ld   a, [bc]                                     ; $4e62: $0a
	inc  e                                           ; $4e63: $1c
	inc  bc                                          ; $4e64: $03
	inc  b                                           ; $4e65: $04
	inc  b                                           ; $4e66: $04
	ld   bc, $0008                                   ; $4e67: $01 $08 $00
	ld   e, l                                        ; $4e6a: $5d
	and  c                                           ; $4e6b: $a1
	sbc  a                                           ; $4e6c: $9f
	dec  c                                           ; $4e6d: $0d
	ld   [bc], a                                     ; $4e6e: $02
	dec  bc                                          ; $4e6f: $0b
	ld   [bc], a                                     ; $4e70: $02
	xor  d                                           ; $4e71: $aa
	sbc  [hl]                                        ; $4e72: $9e
	ld   h, c                                        ; $4e73: $61
	ld   d, h                                        ; $4e74: $54
	ld   d, d                                        ; $4e75: $52
	ld   d, h                                        ; $4e76: $54
	ld   [bc], a                                     ; $4e77: $02
	jp   $785a                                       ; $4e78: $c3 $5a $78


	ld   d, d                                        ; $4e7b: $52
	sub  [hl]                                        ; $4e7c: $96
	ld   d, h                                        ; $4e7d: $54
	ld   a, c                                        ; $4e7e: $79
	dec  c                                           ; $4e7f: $0d
	ld   [bc], a                                     ; $4e80: $02
	and  c                                           ; $4e81: $a1
	and  b                                           ; $4e82: $a0
	inc  b                                           ; $4e83: $04
	ld   [hl], c                                     ; $4e84: $71
	ld   e, a                                        ; $4e85: $5f
	ld   [hl], h                                     ; $4e86: $74
	ld   a, e                                        ; $4e87: $7b
	sbc  a                                           ; $4e88: $9f
	dec  c                                           ; $4e89: $0d
	nop                                              ; $4e8a: $00
	ld   a, [bc]                                     ; $4e8b: $0a
	dec  c                                           ; $4e8c: $0d
	nop                                              ; $4e8d: $00
	nop                                              ; $4e8e: $00
	rrca                                             ; $4e8f: $0f
	nop                                              ; $4e90: $00
	ld   bc, $1e09                                   ; $4e91: $01 $09 $1e
	nop                                              ; $4e94: $00
	rrca                                             ; $4e95: $0f
	nop                                              ; $4e96: $00
	ld   bc, $0101                                   ; $4e97: $01 $01 $01
	inc  bc                                          ; $4e9a: $03
	inc  b                                           ; $4e9b: $04
	ld   l, l                                        ; $4e9c: $6d
	sub  b                                           ; $4e9d: $90
	sbc  [hl]                                        ; $4e9e: $9e
	inc  b                                           ; $4e9f: $04
	sub  l                                           ; $4ea0: $95
	ld   [bc], a                                     ; $4ea1: $02
	ld   hl, $0486                                   ; $4ea2: $21 $86 $04
	jp   Jump_04f_7471                               ; $4ea5: $c3 $71 $74


	dec  c                                           ; $4ea8: $0d
	db   $10                                         ; $4ea9: $10
	ld   [bc], a                                     ; $4eaa: $02
	jr   nz, jr_04f_4eb0                             ; $4eab: $20 $03

	and  a                                           ; $4ead: $a7
	adc  l                                           ; $4eae: $8d
	ld   h, l                                        ; $4eaf: $65

jr_04f_4eb0:
	sub  [hl]                                        ; $4eb0: $96
	ld   d, h                                        ; $4eb1: $54
	rst  $38                                         ; $4eb2: $ff
	rst  $38                                         ; $4eb3: $ff
	ld   bc, $0d04                                   ; $4eb4: $01 $04 $0d
	nop                                              ; $4eb7: $00
	ld   a, [bc]                                     ; $4eb8: $0a
	inc  c                                           ; $4eb9: $0c
	ld   [bc], a                                     ; $4eba: $02
	ld   c, $5c                                      ; $4ebb: $0e $5c
	inc  e                                           ; $4ebd: $1c
	dec  bc                                          ; $4ebe: $0b
	inc  b                                           ; $4ebf: $04
	inc  b                                           ; $4ec0: $04
	ld   bc, $9750                                   ; $4ec1: $01 $50 $97
	sbc  [hl]                                        ; $4ec4: $9e
	ld   [$5d00], sp                                 ; $4ec5: $08 $00 $5d
	and  c                                           ; $4ec8: $a1
	sbc  a                                           ; $4ec9: $9f
	dec  c                                           ; $4eca: $0d
	inc  b                                           ; $4ecb: $04
	ld   c, c                                        ; $4ecc: $49
	ld   a, [$10f9]                                  ; $4ecd: $fa $f9 $10
	ld   l, e                                        ; $4ed0: $6b
	ld   a, h                                        ; $4ed1: $7c
	inc  b                                           ; $4ed2: $04
	dec  c                                           ; $4ed3: $0d
	ld   a, l                                        ; $4ed4: $7d
	ld   a, [$0dfa]                                  ; $4ed5: $fa $fa $0d
	rst  $10                                         ; $4ed8: $d7
	or   b                                           ; $4ed9: $b0
	rst  $10                                         ; $4eda: $d7
	or   b                                           ; $4edb: $b0
	ld   h, [hl]                                     ; $4edc: $66
	sub  c                                           ; $4edd: $91
	ld   a, b                                        ; $4ede: $78
	ld   d, d                                        ; $4edf: $52
	ld   a, h                                        ; $4ee0: $7c
	ld   a, [$fafa]                                  ; $4ee1: $fa $fa $fa
	dec  c                                           ; $4ee4: $0d
	nop                                              ; $4ee5: $00
	ld   a, [bc]                                     ; $4ee6: $0a
	rrca                                             ; $4ee7: $0f
	nop                                              ; $4ee8: $00
	ld   bc, $0301                                   ; $4ee9: $01 $01 $03
	adc  e                                           ; $4eec: $8b
	ld   a, l                                        ; $4eed: $7d
	rst  $38                                         ; $4eee: $ff
	rst  $38                                         ; $4eef: $ff
	dec  c                                           ; $4ef0: $0d
	ld   e, c                                        ; $4ef1: $59
	ld   e, l                                        ; $4ef2: $5d
	ld   e, c                                        ; $4ef3: $59
	ld   e, l                                        ; $4ef4: $5d
	ld   h, l                                        ; $4ef5: $65
	ld   e, c                                        ; $4ef6: $59
	ld   h, [hl]                                     ; $4ef7: $66
	ld   e, c                                        ; $4ef8: $59
	rst  $38                                         ; $4ef9: $ff
	rst  $38                                         ; $4efa: $ff
	dec  c                                           ; $4efb: $0d
	nop                                              ; $4efc: $00
	ld   a, [bc]                                     ; $4efd: $0a
	inc  e                                           ; $4efe: $1c
	dec  bc                                          ; $4eff: $0b
	dec  b                                           ; $4f00: $05
	dec  b                                           ; $4f01: $05
	ld   bc, $5b50                                   ; $4f02: $01 $50 $5b
	sbc  d                                           ; $4f05: $9a
	ld   l, l                                        ; $4f06: $6d
	rst  $38                                         ; $4f07: $ff
	rst  $38                                         ; $4f08: $ff
	dec  c                                           ; $4f09: $0d
	ld   l, e                                        ; $4f0a: $6b
	sbc  d                                           ; $4f0b: $9a
	ld   h, [hl]                                     ; $4f0c: $66
	sub  c                                           ; $4f0d: $91
	sbc  [hl]                                        ; $4f0e: $9e
	inc  bc                                          ; $4f0f: $03
	ld   l, l                                        ; $4f10: $6d
	dec  b                                           ; $4f11: $05
	add  hl, de                                      ; $4f12: $19
	ld   a, c                                        ; $4f13: $79
	ld   h, e                                        ; $4f14: $63
	ld   h, l                                        ; $4f15: $65
	ld   [hl], d                                     ; $4f16: $72
	ld   e, c                                        ; $4f17: $59
	ld   d, [hl]                                     ; $4f18: $56
	dec  c                                           ; $4f19: $0d
	sbc  c                                           ; $4f1a: $99
	ld   h, [hl]                                     ; $4f1b: $66
	sub  c                                           ; $4f1c: $91
	ld   a, b                                        ; $4f1d: $78
	ld   d, d                                        ; $4f1e: $52
	sbc  a                                           ; $4f1f: $9f
	dec  c                                           ; $4f20: $0d
	nop                                              ; $4f21: $00
	ld   a, [bc]                                     ; $4f22: $0a
	ld   bc, $4904                                   ; $4f23: $01 $04 $49
	sub  [hl]                                        ; $4f26: $96
	sbc  b                                           ; $4f27: $98
	sub  b                                           ; $4f28: $90
	ld   [bc], a                                     ; $4f29: $02
	jr   c, jr_04f_4f30                              ; $4f2a: $38 $04

	ld   d, d                                        ; $4f2c: $52
	ld   a, c                                        ; $4f2d: $79
	inc  bc                                          ; $4f2e: $03
	cp   c                                           ; $4f2f: $b9

jr_04f_4f30:
	sbc  b                                           ; $4f30: $98
	ld   [bc], a                                     ; $4f31: $02
	ld   b, b                                        ; $4f32: $40
	adc  [hl]                                        ; $4f33: $8e
	ld   h, c                                        ; $4f34: $61
	halt                                             ; $4f35: $76
	ld   e, d                                        ; $4f36: $5a
	dec  c                                           ; $4f37: $0d
	ld   [hl], l                                     ; $4f38: $75
	ld   e, e                                        ; $4f39: $5b
	ld   a, b                                        ; $4f3a: $78
	ld   d, d                                        ; $4f3b: $52
	sbc  l                                           ; $4f3c: $9d
	rst  $38                                         ; $4f3d: $ff
	rst  $38                                         ; $4f3e: $ff
	dec  c                                           ; $4f3f: $0d
	nop                                              ; $4f40: $00
	ld   a, [bc]                                     ; $4f41: $0a
	inc  e                                           ; $4f42: $1c
	dec  bc                                          ; $4f43: $0b
	ld   [bc], a                                     ; $4f44: $02
	ld   [bc], a                                     ; $4f45: $02
	ld   bc, $0d03                                   ; $4f46: $01 $03 $0d
	inc  b                                           ; $4f49: $04
	ld   a, b                                        ; $4f4a: $78
	ld   a, b                                        ; $4f4b: $78
	ld   d, d                                        ; $4f4c: $52
	sbc  l                                           ; $4f4d: $9d
	ld   a, e                                        ; $4f4e: $7b
	sbc  a                                           ; $4f4f: $9f
	dec  c                                           ; $4f50: $0d
	ld   e, c                                        ; $4f51: $59
	sbc  l                                           ; $4f52: $9d
	ld   d, d                                        ; $4f53: $52
	ld   l, e                                        ; $4f54: $6b
	ld   d, h                                        ; $4f55: $54
	ld   l, [hl]                                     ; $4f56: $6e
	ld   e, a                                        ; $4f57: $5f
	ld   [hl], a                                     ; $4f58: $77
	sbc  [hl]                                        ; $4f59: $9e
	inc  b                                           ; $4f5a: $04
	dec  c                                           ; $4f5b: $0d
	ld   [bc], a                                     ; $4f5c: $02
	sub  [hl]                                        ; $4f5d: $96
	inc  b                                           ; $4f5e: $04
	ld   b, l                                        ; $4f5f: $45
	inc  b                                           ; $4f60: $04
	ld   a, [bc]                                     ; $4f61: $0a
	ld   a, l                                        ; $4f62: $7d
	dec  c                                           ; $4f63: $0d
	ld   h, c                                        ; $4f64: $61
	sbc  d                                           ; $4f65: $9a
	ld   [hl], l                                     ; $4f66: $75
	inc  bc                                          ; $4f67: $03
	ld   a, [hl]                                     ; $4f68: $7e
	sbc  l                                           ; $4f69: $9d
	sbc  b                                           ; $4f6a: $98
	sub  [hl]                                        ; $4f6b: $96
	sbc  a                                           ; $4f6c: $9f
	dec  c                                           ; $4f6d: $0d
	nop                                              ; $4f6e: $00
	ld   a, [bc]                                     ; $4f6f: $0a
	ld   bc, $0d04                                   ; $4f70: $01 $04 $0d
	and  b                                           ; $4f73: $a0
	inc  b                                           ; $4f74: $04
	jp   $7465                                       ; $4f75: $c3 $65 $74


	dec  c                                           ; $4f78: $0d
	inc  bc                                          ; $4f79: $03
	add  b                                           ; $4f7a: $80
	inc  bc                                          ; $4f7b: $03
	jp   c, $7465                                    ; $4f7c: $da $65 $74

	ld   e, e                                        ; $4f7f: $5b
	ld   a, b                                        ; $4f80: $78
	ld   h, e                                        ; $4f81: $63
	ld   d, d                                        ; $4f82: $52
	sbc  a                                           ; $4f83: $9f
	dec  c                                           ; $4f84: $0d
	ld   h, [hl]                                     ; $4f85: $66
	sub  c                                           ; $4f86: $91
	ld   d, b                                        ; $4f87: $50
	ld   a, e                                        ; $4f88: $7b
	ld   [$5d00], sp                                 ; $4f89: $08 $00 $5d
	and  c                                           ; $4f8c: $a1
	sbc  a                                           ; $4f8d: $9f
	dec  c                                           ; $4f8e: $0d
	nop                                              ; $4f8f: $00
	ld   a, [bc]                                     ; $4f90: $0a
	ld   h, $00                                      ; $4f91: $26 $00
	inc  b                                           ; $4f93: $04
	add  b                                           ; $4f94: $80
	sbc  d                                           ; $4f95: $9a
	ld   bc, $2000                                   ; $4f96: $01 $00 $20
	nop                                              ; $4f99: $00
	dec  c                                           ; $4f9a: $0d
	dec  b                                           ; $4f9b: $05
	jr   nz, @+$11                                   ; $4f9c: $20 $0f

	nop                                              ; $4f9e: $00
	ld   bc, $0102                                   ; $4f9f: $01 $02 $01
	ld   [bc], a                                     ; $4fa2: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4fa3: $cf
	dec  b                                           ; $4fa4: $05
	ld   a, [de]                                     ; $4fa5: $1a
	ld   h, e                                        ; $4fa6: $63
	and  c                                           ; $4fa7: $a1
	rst  $38                                         ; $4fa8: $ff
	rst  $38                                         ; $4fa9: $ff
	dec  c                                           ; $4faa: $0d
	ld   bc, $5003                                   ; $4fab: $01 $03 $50
	sbc  b                                           ; $4fae: $98
	sub  c                                           ; $4faf: $91
	sbc  [hl]                                        ; $4fb0: $9e
	ld   [bc], a                                     ; $4fb1: $02
	dec  [hl]                                        ; $4fb2: $35
	ld   h, c                                        ; $4fb3: $61
	ld   h, b                                        ; $4fb4: $60
	ld   l, [hl]                                     ; $4fb5: $6e
	sub  [hl]                                        ; $4fb6: $96
	rst  $38                                         ; $4fb7: $ff
	rst  $38                                         ; $4fb8: $ff
	ld   bc, $0d04                                   ; $4fb9: $01 $04 $0d
	nop                                              ; $4fbc: $00
	ld   a, [bc]                                     ; $4fbd: $0a
	rrca                                             ; $4fbe: $0f
	dec  b                                           ; $4fbf: $05
	ld   [$5001], sp                                 ; $4fc0: $08 $01 $50
	sbc  [hl]                                        ; $4fc3: $9e
	ld   [$7d00], sp                                 ; $4fc4: $08 $00 $7d
	and  c                                           ; $4fc7: $a1
	sbc  a                                           ; $4fc8: $9f
	dec  c                                           ; $4fc9: $0d
	ld   l, a                                        ; $4fca: $6f
	sub  l                                           ; $4fcb: $95
	ld   d, d                                        ; $4fcc: $52
	halt                                             ; $4fcd: $76
	inc  bc                                          ; $4fce: $03
	adc  e                                           ; $4fcf: $8b
	ld   [bc], a                                     ; $4fd0: $02
	sub  [hl]                                        ; $4fd1: $96
	ld   a, c                                        ; $4fd2: $79
	inc  bc                                          ; $4fd3: $03
	add  e                                           ; $4fd4: $83
	inc  b                                           ; $4fd5: $04
	sbc  b                                           ; $4fd6: $98
	ld   h, l                                        ; $4fd7: $65
	ld   [hl], h                                     ; $4fd8: $74
	ld   a, b                                        ; $4fd9: $78
	rst  $38                                         ; $4fda: $ff
	rst  $38                                         ; $4fdb: $ff
	dec  c                                           ; $4fdc: $0d
	nop                                              ; $4fdd: $00
	ld   a, [bc]                                     ; $4fde: $0a
	rrca                                             ; $4fdf: $0f
	nop                                              ; $4fe0: $00
	ld   bc, $0101                                   ; $4fe1: $01 $01 $01
	inc  bc                                          ; $4fe4: $03
	ld   d, h                                        ; $4fe5: $54
	sbc  l                                           ; $4fe6: $9d
	db   $fc                                         ; $4fe7: $fc
	sbc  [hl]                                        ; $4fe8: $9e
	dec  b                                           ; $4fe9: $05
	ld   [de], a                                     ; $4fea: $12
	ld   l, a                                        ; $4feb: $6f
	ld   [bc], a                                     ; $4fec: $02
	ld   b, b                                        ; $4fed: $40
	and  c                                           ; $4fee: $a1
	ld   [hl], l                                     ; $4fef: $75
	sbc  c                                           ; $4ff0: $99
	ld   l, h                                        ; $4ff1: $6c
	sbc  a                                           ; $4ff2: $9f
	dec  c                                           ; $4ff3: $0d
	db   $10                                         ; $4ff4: $10
	ld   [hl], a                                     ; $4ff5: $77
	ld   d, h                                        ; $4ff6: $54
	ld   h, l                                        ; $4ff7: $65
	sub  [hl]                                        ; $4ff8: $96
	ld   d, h                                        ; $4ff9: $54
	ld   e, c                                        ; $4ffa: $59
	ld   sp, hl                                      ; $4ffb: $f9
	ld   bc, $0d04                                   ; $4ffc: $01 $04 $0d
	nop                                              ; $4fff: $00
	ld   a, [bc]                                     ; $5000: $0a
	add  hl, de                                      ; $5001: $19
	dec  b                                           ; $5002: $05
	inc  bc                                          ; $5003: $03
	ld   a, b                                        ; $5004: $78
	ld   e, [hl]                                     ; $5005: $5e
	ld   h, e                                        ; $5006: $63
	adc  a                                           ; $5007: $8f
	sbc  c                                           ; $5008: $99
	nop                                              ; $5009: $00
	nop                                              ; $500a: $00
	db   $dd                                         ; $500b: $dd
	or   d                                           ; $500c: $b2
	ld   [hl], h                                     ; $500d: $74
	adc  l                                           ; $500e: $8d
	sbc  c                                           ; $500f: $99
	nop                                              ; $5010: $00
	ld   bc, $f302                                   ; $5011: $01 $02 $f3
	and  b                                           ; $5014: $a0
	ld   [bc], a                                     ; $5015: $02
	sub  l                                           ; $5016: $95
	ld   [hl], h                                     ; $5017: $74
	ld   [bc], a                                     ; $5018: $02
	jr   nz, jr_04f_501d                             ; $5019: $20 $02

	sbc  l                                           ; $501b: $9d
	nop                                              ; $501c: $00

jr_04f_501d:
	ld   [bc], a                                     ; $501d: $02
	rlca                                             ; $501e: $07
	and  d                                           ; $501f: $a2
	nop                                              ; $5020: $00
	ld   [bc], a                                     ; $5021: $02
	inc  bc                                          ; $5022: $03
	ld   bc, $2000                                   ; $5023: $01 $00 $20
	nop                                              ; $5026: $00
	rlca                                             ; $5027: $07
	ldh  a, [c]                                      ; $5028: $f2
	nop                                              ; $5029: $00
	ld   [bc], a                                     ; $502a: $02
	inc  bc                                          ; $502b: $03
	ld   bc, $2001                                   ; $502c: $01 $01 $20
	nop                                              ; $502f: $00
	rlca                                             ; $5030: $07
	ld   a, l                                        ; $5031: $7d
	ld   bc, $0302                                   ; $5032: $01 $02 $03
	ld   bc, $2002                                   ; $5035: $01 $02 $20
	nop                                              ; $5038: $00
	ld   b, $ac                                      ; $5039: $06 $ac
	ld   bc, $000f                                   ; $503b: $01 $0f $00
	ld   bc, $0201                                   ; $503e: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5041: $cf
	dec  b                                           ; $5042: $05
	ld   a, [de]                                     ; $5043: $1a
	ld   h, e                                        ; $5044: $63
	and  c                                           ; $5045: $a1
	adc  c                                           ; $5046: $89
	ld   [hl], a                                     ; $5047: $77
	ld   a, h                                        ; $5048: $7c
	inc  b                                           ; $5049: $04
	inc  de                                          ; $504a: $13
	inc  bc                                          ; $504b: $03
	ld   b, $5a                                      ; $504c: $06 $5a
	dec  c                                           ; $504e: $0d
	dec  b                                           ; $504f: $05
	ld   [de], a                                     ; $5050: $12
	ld   l, a                                        ; $5051: $6f
	ld   [bc], a                                     ; $5052: $02
	ld   b, b                                        ; $5053: $40
	and  c                                           ; $5054: $a1
	ld   [hl], l                                     ; $5055: $75
	ld   l, a                                        ; $5056: $6f
	sub  c                                           ; $5057: $91
	ld   d, d                                        ; $5058: $52
	ld   e, a                                        ; $5059: $5f

Jump_04f_505a:
	adc  h                                           ; $505a: $8c
	ld   l, c                                        ; $505b: $69
	and  c                                           ; $505c: $a1
	sub  [hl]                                        ; $505d: $96
	sbc  a                                           ; $505e: $9f
	dec  c                                           ; $505f: $0d
	nop                                              ; $5060: $00
	ld   a, [bc]                                     ; $5061: $0a
	rrca                                             ; $5062: $0f
	dec  b                                           ; $5063: $05
	ld   [$401d], sp                                 ; $5064: $08 $1d $40
	dec  d                                           ; $5067: $15
	inc  bc                                          ; $5068: $03
	dec  d                                           ; $5069: $15
	ld   bc, $2801                                   ; $506a: $01 $01 $28
	nop                                              ; $506d: $00
	ld   bc, $8303                                   ; $506e: $01 $03 $83
	inc  b                                           ; $5071: $04
	sbc  b                                           ; $5072: $98
	ld   a, [hl]                                     ; $5073: $7e
	ld   [hl], c                                     ; $5074: $71
	ld   e, c                                        ; $5075: $59
	sbc  b                                           ; $5076: $98
	ld   h, l                                        ; $5077: $65
	ld   [hl], h                                     ; $5078: $74

Call_04f_5079:
	sbc  c                                           ; $5079: $99
	and  a                                           ; $507a: $a7
	jp   nz, $0d5a                                   ; $507b: $c2 $5a $0d

	inc  b                                           ; $507e: $04
	inc  de                                          ; $507f: $13
	inc  bc                                          ; $5080: $03
	ld   b, $59                                      ; $5081: $06 $59
	rst  $38                                         ; $5083: $ff
	rst  $38                                         ; $5084: $ff
	ld   sp, hl                                      ; $5085: $f9
	dec  c                                           ; $5086: $0d
	nop                                              ; $5087: $00
	ld   a, [bc]                                     ; $5088: $0a
	ld   b, $da                                      ; $5089: $06 $da
	ld   bc, $000f                                   ; $508b: $01 $0f $00
	ld   bc, $0301                                   ; $508e: $01 $01 $03
	sbc  [hl]                                        ; $5091: $9e
	ld   d, d                                        ; $5092: $52
	ld   [hl], l                                     ; $5093: $75
	ld   h, a                                        ; $5094: $67
	ld   a, e                                        ; $5095: $7b
	db   $fc                                         ; $5096: $fc
	sbc  a                                           ; $5097: $9f
	dec  c                                           ; $5098: $0d
	ld   d, d                                        ; $5099: $52
	ld   [hl], d                                     ; $509a: $72
	sub  b                                           ; $509b: $90
	ld   a, h                                        ; $509c: $7c
	ld   [bc], a                                     ; $509d: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $509e: $cf
	dec  b                                           ; $509f: $05
	ld   a, [de]                                     ; $50a0: $1a
	ld   h, e                                        ; $50a1: $63
	and  c                                           ; $50a2: $a1
	sub  b                                           ; $50a3: $90
	cp   d                                           ; $50a4: $ba
	rst  ToBoot                                         ; $50a5: $c7
	xor  [hl]                                        ; $50a6: $ae
	dec  c                                           ; $50a7: $0d
	ld   l, [hl]                                     ; $50a8: $6e
	ld   e, a                                        ; $50a9: $5f
	ld   [hl], a                                     ; $50aa: $77
	sbc  [hl]                                        ; $50ab: $9e
	dec  c                                           ; $50ac: $0d
	nop                                              ; $50ad: $00
	ld   a, [bc]                                     ; $50ae: $0a
	ld   bc, $3502                                   ; $50af: $01 $02 $35
	ld   d, d                                        ; $50b2: $52
	ld   [bc], a                                     ; $50b3: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $50b4: $cf
	dec  b                                           ; $50b5: $05
	ld   a, [de]                                     ; $50b6: $1a
	ld   h, e                                        ; $50b7: $63
	and  c                                           ; $50b8: $a1
	sub  b                                           ; $50b9: $90
	cp   b                                           ; $50ba: $b8
	call nz, Call_04f_75b0                           ; $50bb: $c4 $b0 $75
	dec  c                                           ; $50be: $0d
	halt                                             ; $50bf: $76
	ld   [hl], h                                     ; $50c0: $74
	sub  b                                           ; $50c1: $90
	xor  h                                           ; $50c2: $ac
	call nz, $a5b4                                   ; $50c3: $c4 $b4 $a5
	and  l                                           ; $50c6: $a5
	ld   [hl], l                                     ; $50c7: $75
	ld   h, a                                        ; $50c8: $67
	sub  [hl]                                        ; $50c9: $96
	sbc  a                                           ; $50ca: $9f
	dec  c                                           ; $50cb: $0d
	nop                                              ; $50cc: $00
	ld   a, [bc]                                     ; $50cd: $0a
	rrca                                             ; $50ce: $0f
	dec  b                                           ; $50cf: $05
	ld   [$5801], sp                                 ; $50d0: $08 $01 $58
	ld   e, b                                        ; $50d3: $58
	ld   [hl], c                                     ; $50d4: $71
	ld   a, [$6b10]                                  ; $50d5: $fa $10 $6b
	ld   d, h                                        ; $50d8: $54
	ld   e, c                                        ; $50d9: $59
	ld   a, [$0df9]                                  ; $50da: $fa $f9 $0d
	xor  h                                           ; $50dd: $ac
	call nz, $a9b4                                   ; $50de: $c4 $b4 $a9
	xor  c                                           ; $50e1: $a9
	ld   e, c                                        ; $50e2: $59
	ld   sp, hl                                      ; $50e3: $f9
	and  a                                           ; $50e4: $a7
	jp   nz, $8c90                                   ; $50e5: $c2 $90 $8c

	ld   l, [hl]                                     ; $50e8: $6e
	adc  h                                           ; $50e9: $8c
	ld   l, [hl]                                     ; $50ea: $6e
	dec  c                                           ; $50eb: $0d
	inc  bc                                          ; $50ec: $03
	ld   a, [hl-]                                    ; $50ed: $3a
	ld   [hl], h                                     ; $50ee: $74
	ld   l, l                                        ; $50ef: $6d
	sub  b                                           ; $50f0: $90
	and  c                                           ; $50f1: $a1
	sub  d                                           ; $50f2: $92
	ld   a, b                                        ; $50f3: $78
	ld   d, d                                        ; $50f4: $52
	ld   a, b                                        ; $50f5: $78
	db   $fc                                         ; $50f6: $fc
	sbc  a                                           ; $50f7: $9f
	dec  c                                           ; $50f8: $0d
	nop                                              ; $50f9: $00
	ld   a, [bc]                                     ; $50fa: $0a
	dec  e                                           ; $50fb: $1d
	ld   b, b                                        ; $50fc: $40
	dec  d                                           ; $50fd: $15
	inc  bc                                          ; $50fe: $03
	dec  d                                           ; $50ff: $15
	ld   bc, $2801                                   ; $5100: $01 $01 $28
	nop                                              ; $5103: $00
	ld   bc, $ffff                                   ; $5104: $01 $ff $ff
	ld   [hl], c                                     ; $5107: $71
	ld   [hl], h                                     ; $5108: $74
	sbc  [hl]                                        ; $5109: $9e
	ld   a, b                                        ; $510a: $78
	and  c                                           ; $510b: $a1
	ld   [hl], l                                     ; $510c: $75
	sub  d                                           ; $510d: $92
	ld   a, e                                        ; $510e: $7b
	and  c                                           ; $510f: $a1
	ld   a, [$000d]                                  ; $5110: $fa $0d $00
	ld   a, [bc]                                     ; $5113: $0a
	ld   b, $da                                      ; $5114: $06 $da
	ld   bc, $000f                                   ; $5116: $01 $0f $00
	ld   bc, $6101                                   ; $5119: $01 $01 $61
	and  c                                           ; $511c: $a1
	ld   e, d                                        ; $511d: $5a
	sbc  b                                           ; $511e: $98
	inc  bc                                          ; $511f: $03
	ld   c, $5f                                      ; $5120: $0e $5f
	ld   [hl], h                                     ; $5122: $74
	adc  h                                           ; $5123: $8c
	ld   h, a                                        ; $5124: $67
	ld   a, e                                        ; $5125: $7b
	sbc  a                                           ; $5126: $9f
	dec  c                                           ; $5127: $0d
	nop                                              ; $5128: $00
	ld   a, [bc]                                     ; $5129: $0a
	rrca                                             ; $512a: $0f
	dec  b                                           ; $512b: $05
	ld   [$7801], sp                                 ; $512c: $08 $01 $78
	and  c                                           ; $512f: $a1
	sub  d                                           ; $5130: $92
	ld   l, e                                        ; $5131: $6b
	sbc  d                                           ; $5132: $9a
	sbc  a                                           ; $5133: $9f
	dec  c                                           ; $5134: $0d
	ld   [bc], a                                     ; $5135: $02
	sub  l                                           ; $5136: $95
	ld   l, l                                        ; $5137: $6d
	adc  h                                           ; $5138: $8c
	and  c                                           ; $5139: $a1
	adc  h                                           ; $513a: $8c
	sub  d                                           ; $513b: $92
	and  c                                           ; $513c: $a1
	rst  $38                                         ; $513d: $ff
	rst  $38                                         ; $513e: $ff
	sbc  a                                           ; $513f: $9f
	dec  c                                           ; $5140: $0d
	nop                                              ; $5141: $00
	ld   a, [bc]                                     ; $5142: $0a
	ld   b, $da                                      ; $5143: $06 $da
	ld   bc, $000f                                   ; $5145: $01 $0f $00
	ld   bc, $5001                                   ; $5148: $01 $01 $50
	sbc  [hl]                                        ; $514b: $9e
	ld   d, b                                        ; $514c: $50
	ld   a, h                                        ; $514d: $7c
	rst  $38                                         ; $514e: $ff
	rst  $38                                         ; $514f: $ff
	dec  c                                           ; $5150: $0d
	ld   e, d                                        ; $5151: $5a
	and  c                                           ; $5152: $a1
	ld   a, [hl]                                     ; $5153: $7e
	ld   [hl], c                                     ; $5154: $71
	ld   [hl], h                                     ; $5155: $74
	ld   e, l                                        ; $5156: $5d
	ld   l, [hl]                                     ; $5157: $6e
	ld   h, e                                        ; $5158: $63
	ld   d, d                                        ; $5159: $52
	ld   a, e                                        ; $515a: $7b
	sbc  a                                           ; $515b: $9f
	dec  c                                           ; $515c: $0d
	nop                                              ; $515d: $00
	ld   a, [bc]                                     ; $515e: $0a
	rrca                                             ; $515f: $0f
	dec  b                                           ; $5160: $05
	ld   [$5001], sp                                 ; $5161: $08 $01 $50
	ld   d, b                                        ; $5164: $50
	rst  $38                                         ; $5165: $ff
	rst  $38                                         ; $5166: $ff
	dec  c                                           ; $5167: $0d
	ld   e, b                                        ; $5168: $58
	ld   e, b                                        ; $5169: $58
	ld   e, e                                        ; $516a: $5b
	ld   a, c                                        ; $516b: $79
	rst  $38                                         ; $516c: $ff
	rst  $38                                         ; $516d: $ff
	rst  $38                                         ; $516e: $ff
	rst  $38                                         ; $516f: $ff
	dec  c                                           ; $5170: $0d
	nop                                              ; $5171: $00
	ld   a, [bc]                                     ; $5172: $0a
	nop                                              ; $5173: $00
	rrca                                             ; $5174: $0f
	nop                                              ; $5175: $00
	ld   bc, $8c01                                   ; $5176: $01 $01 $8c
	ld   d, b                                        ; $5179: $50
	adc  h                                           ; $517a: $8c
	ld   d, b                                        ; $517b: $50
	sbc  [hl]                                        ; $517c: $9e
	ld   [bc], a                                     ; $517d: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $517e: $cf
	dec  b                                           ; $517f: $05
	ld   a, [de]                                     ; $5180: $1a
	ld   h, e                                        ; $5181: $63
	and  c                                           ; $5182: $a1
	sbc  a                                           ; $5183: $9f
	dec  c                                           ; $5184: $0d
	ld   h, c                                        ; $5185: $61
	and  c                                           ; $5186: $a1
	ld   a, b                                        ; $5187: $78
	ld   h, c                                        ; $5188: $61
	halt                                             ; $5189: $76
	sbc  l                                           ; $518a: $9d
	ld   h, h                                        ; $518b: $64
	sub  b                                           ; $518c: $90
	dec  c                                           ; $518d: $0d
	ld   d, b                                        ; $518e: $50
	sbc  c                                           ; $518f: $99
	ld   h, [hl]                                     ; $5190: $66
	sub  c                                           ; $5191: $91
	ld   a, b                                        ; $5192: $78
	ld   d, d                                        ; $5193: $52
	ld   [hl], l                                     ; $5194: $75
	ld   h, a                                        ; $5195: $67
	ld   e, c                                        ; $5196: $59
	sbc  a                                           ; $5197: $9f
	dec  c                                           ; $5198: $0d
	nop                                              ; $5199: $00
	ld   a, [bc]                                     ; $519a: $0a
	ld   bc, $8303                                   ; $519b: $01 $03 $83
	inc  b                                           ; $519e: $04
	sbc  b                                           ; $519f: $98
	ld   a, l                                        ; $51a0: $7d
	inc  bc                                          ; $51a1: $03
	ld   [de], a                                     ; $51a2: $12
	ld   [bc], a                                     ; $51a3: $02
	ld   c, h                                        ; $51a4: $4c
	ld   a, h                                        ; $51a5: $7c
	rst  $38                                         ; $51a6: $ff
	rst  $38                                         ; $51a7: $ff
	dec  c                                           ; $51a8: $0d
	nop                                              ; $51a9: $00
	ld   a, [bc]                                     ; $51aa: $0a
	add  hl, de                                      ; $51ab: $19
	dec  b                                           ; $51ac: $05
	inc  bc                                          ; $51ad: $03
	inc  b                                           ; $51ae: $04
	ld   e, h                                        ; $51af: $5c
	inc  b                                           ; $51b0: $04
	dec  b                                           ; $51b1: $05
	nop                                              ; $51b2: $00
	nop                                              ; $51b3: $00
	rst  JumpTable                                         ; $51b4: $df
	rst  JumpTable                                         ; $51b5: $df
	nop                                              ; $51b6: $00
	ld   bc, $8104                                   ; $51b7: $01 $04 $81
	nop                                              ; $51ba: $00
	ld   [bc], a                                     ; $51bb: $02
	rlca                                             ; $51bc: $07
	ld   b, b                                        ; $51bd: $40
	ld   [bc], a                                     ; $51be: $02
	ld   [bc], a                                     ; $51bf: $02
	inc  bc                                          ; $51c0: $03
	ld   bc, $2000                                   ; $51c1: $01 $00 $20
	nop                                              ; $51c4: $00
	rlca                                             ; $51c5: $07
	and  $02                                         ; $51c6: $e6 $02
	ld   [bc], a                                     ; $51c8: $02
	inc  bc                                          ; $51c9: $03
	ld   bc, $2001                                   ; $51ca: $01 $01 $20
	nop                                              ; $51cd: $00
	rlca                                             ; $51ce: $07
	ld   a, h                                        ; $51cf: $7c
	inc  bc                                          ; $51d0: $03
	ld   [bc], a                                     ; $51d1: $02
	inc  bc                                          ; $51d2: $03
	ld   bc, $2002                                   ; $51d3: $01 $02 $20
	nop                                              ; $51d6: $00
	ld   b, $da                                      ; $51d7: $06 $da
	inc  bc                                          ; $51d9: $03
	rrca                                             ; $51da: $0f
	nop                                              ; $51db: $00
	ld   bc, $0101                                   ; $51dc: $01 $01 $01
	rlca                                             ; $51df: $07
	inc  bc                                          ; $51e0: $03
	add  e                                           ; $51e1: $83
	inc  b                                           ; $51e2: $04
	sbc  b                                           ; $51e3: $98
	ld   a, l                                        ; $51e4: $7d
	inc  bc                                          ; $51e5: $03
	ld   [de], a                                     ; $51e6: $12
	ld   [bc], a                                     ; $51e7: $02
	ld   c, h                                        ; $51e8: $4c
	ld   a, h                                        ; $51e9: $7c
	inc  b                                           ; $51ea: $04
	ld   e, h                                        ; $51eb: $5c
	inc  b                                           ; $51ec: $04
	dec  b                                           ; $51ed: $05
	ld   l, [hl]                                     ; $51ee: $6e
	ld   bc, $0d08                                   ; $51ef: $01 $08 $0d
	ld   [hl], c                                     ; $51f2: $71
	ld   [hl], h                                     ; $51f3: $74
	ld   a, e                                        ; $51f4: $7b
	sbc  a                                           ; $51f5: $9f
	dec  c                                           ; $51f6: $0d
	nop                                              ; $51f7: $00
	ld   a, [bc]                                     ; $51f8: $0a
	rrca                                             ; $51f9: $0f
	dec  b                                           ; $51fa: $05
	ld   [$a101], sp                                 ; $51fb: $08 $01 $a1
	ld   sp, hl                                      ; $51fe: $f9
	db   $10                                         ; $51ff: $10
	ld   a, b                                        ; $5200: $78
	and  c                                           ; $5201: $a1
	sub  d                                           ; $5202: $92
	ld   l, e                                        ; $5203: $6b
	sbc  d                                           ; $5204: $9a
	ld   sp, hl                                      ; $5205: $f9
	dec  c                                           ; $5206: $0d
	ret  nc                                          ; $5207: $d0

	ret  nc                                          ; $5208: $d0

	ret  nc                                          ; $5209: $d0

	ret  nc                                          ; $520a: $d0

	ret  nc                                          ; $520b: $d0

	ret  nc                                          ; $520c: $d0

	ret  nc                                          ; $520d: $d0

	sbc  a                                           ; $520e: $9f
	dec  c                                           ; $520f: $0d
	ld   l, e                                        ; $5210: $6b
	sbc  d                                           ; $5211: $9a
	and  b                                           ; $5212: $a0
	ld   [bc], a                                     ; $5213: $02
	sbc  l                                           ; $5214: $9d
	ld   d, h                                        ; $5215: $54
	ld   a, b                                        ; $5216: $78
	sub  a                                           ; $5217: $97
	sbc  [hl]                                        ; $5218: $9e
	dec  c                                           ; $5219: $0d
	nop                                              ; $521a: $00
	ld   a, [bc]                                     ; $521b: $0a
	ld   bc, $0701                                   ; $521c: $01 $01 $07
	inc  bc                                          ; $521f: $03
	add  e                                           ; $5220: $83
	inc  b                                           ; $5221: $04
	sbc  b                                           ; $5222: $98
	ld   a, l                                        ; $5223: $7d
	inc  bc                                          ; $5224: $03
	ld   [de], a                                     ; $5225: $12
	ld   [bc], a                                     ; $5226: $02
	ld   c, h                                        ; $5227: $4c
	ld   a, h                                        ; $5228: $7c
	inc  b                                           ; $5229: $04
	add  c                                           ; $522a: $81
	ld   bc, $9208                                   ; $522b: $01 $08 $92
	sbc  e                                           ; $522e: $9b
	sbc  a                                           ; $522f: $9f
	dec  c                                           ; $5230: $0d
	adc  h                                           ; $5231: $8c
	ld   [hl], c                                     ; $5232: $71
	ld   l, l                                        ; $5233: $6d
	ld   e, l                                        ; $5234: $5d
	sbc  [hl]                                        ; $5235: $9e
	ld   [$7d00], sp                                 ; $5236: $08 $00 $7d
	and  c                                           ; $5239: $a1
	ld   a, l                                        ; $523a: $7d
	dec  c                                           ; $523b: $0d
	ld   e, b                                        ; $523c: $58
	sub  b                                           ; $523d: $90
	sbc  e                                           ; $523e: $9b
	ld   d, d                                        ; $523f: $52
	sub  d                                           ; $5240: $92
	ld   [hl], c                                     ; $5241: $71
	ld   l, a                                        ; $5242: $6f
	sub  c                                           ; $5243: $91
	ld   a, b                                        ; $5244: $78
	db   $fc                                         ; $5245: $fc
	rst  $38                                         ; $5246: $ff
	rst  $38                                         ; $5247: $ff
	rst  $38                                         ; $5248: $ff
	rst  $38                                         ; $5249: $ff
	dec  c                                           ; $524a: $0d
	nop                                              ; $524b: $00
	ld   a, [bc]                                     ; $524c: $0a
	inc  e                                           ; $524d: $1c
	dec  b                                           ; $524e: $05
	inc  bc                                          ; $524f: $03
	inc  bc                                          ; $5250: $03
	dec  e                                           ; $5251: $1d
	ld   b, b                                        ; $5252: $40
	dec  d                                           ; $5253: $15
	inc  bc                                          ; $5254: $03
	dec  d                                           ; $5255: $15
	ld   bc, $2803                                   ; $5256: $01 $03 $28
	nop                                              ; $5259: $00
	ld   bc, $7150                                   ; $525a: $01 $50 $71
	ld   a, [$6b10]                                  ; $525d: $fa $10 $6b
	ld   d, h                                        ; $5260: $54
	sub  d                                           ; $5261: $92
	and  c                                           ; $5262: $a1
	ld   e, c                                        ; $5263: $59
	ld   a, [$010d]                                  ; $5264: $fa $0d $01
	rlca                                             ; $5267: $07
	inc  bc                                          ; $5268: $03
	add  e                                           ; $5269: $83
	inc  b                                           ; $526a: $04
	sbc  b                                           ; $526b: $98
	ld   a, l                                        ; $526c: $7d
	inc  bc                                          ; $526d: $03
	ld   [de], a                                     ; $526e: $12
	ld   [bc], a                                     ; $526f: $02
	ld   c, h                                        ; $5270: $4c
	ld   a, h                                        ; $5271: $7c
	inc  b                                           ; $5272: $04
	add  c                                           ; $5273: $81
	ld   bc, $7808                                   ; $5274: $01 $08 $78
	and  c                                           ; $5277: $a1
	sub  d                                           ; $5278: $92
	ld   a, [$000d]                                  ; $5279: $fa $0d $00
	ld   a, [bc]                                     ; $527c: $0a
	ld   b, $1b                                      ; $527d: $06 $1b
	inc  b                                           ; $527f: $04
	rrca                                             ; $5280: $0f
	nop                                              ; $5281: $00
	ld   bc, $0101                                   ; $5282: $01 $01 $01
	rlca                                             ; $5285: $07
	inc  bc                                          ; $5286: $03
	add  e                                           ; $5287: $83
	inc  b                                           ; $5288: $04
	sbc  b                                           ; $5289: $98
	ld   a, l                                        ; $528a: $7d
	inc  bc                                          ; $528b: $03
	ld   [de], a                                     ; $528c: $12
	ld   [bc], a                                     ; $528d: $02
	ld   c, h                                        ; $528e: $4c
	ld   a, h                                        ; $528f: $7c
	rst  JumpTable                                         ; $5290: $df
	rst  JumpTable                                         ; $5291: $df
	ld   bc, $0d08                                   ; $5292: $01 $08 $0d
	ld   [hl], c                                     ; $5295: $71
	ld   [hl], h                                     ; $5296: $74
	ld   a, e                                        ; $5297: $7b
	sbc  a                                           ; $5298: $9f
	dec  c                                           ; $5299: $0d
	nop                                              ; $529a: $00
	ld   a, [bc]                                     ; $529b: $0a
	rrca                                             ; $529c: $0f
	dec  b                                           ; $529d: $05
	ld   [$0101], sp                                 ; $529e: $08 $01 $01
	rlca                                             ; $52a1: $07
	rst  JumpTable                                         ; $52a2: $df
	rst  JumpTable                                         ; $52a3: $df
	ld   bc, $7108                                   ; $52a4: $01 $08 $71
	ld   [hl], h                                     ; $52a7: $74
	ld   d, b                                        ; $52a8: $50
	and  c                                           ; $52a9: $a1
	ld   l, l                                        ; $52aa: $6d
	ld   a, l                                        ; $52ab: $7d
	dec  c                                           ; $52ac: $0d
	inc  bc                                          ; $52ad: $03
	ld   bc, $916f                                   ; $52ae: $01 $6f $91
	and  c                                           ; $52b1: $a1
	ld   e, c                                        ; $52b2: $59
	ld   a, [$0df9]                                  ; $52b3: $fa $f9 $0d
	nop                                              ; $52b6: $00
	ld   a, [bc]                                     ; $52b7: $0a
	ld   bc, $9a6b                                   ; $52b8: $01 $6b $9a
	and  b                                           ; $52bb: $a0
	ld   [bc], a                                     ; $52bc: $02
	sbc  l                                           ; $52bd: $9d
	ld   d, h                                        ; $52be: $54
	ld   a, b                                        ; $52bf: $78
	sub  a                                           ; $52c0: $97
	dec  c                                           ; $52c1: $0d
	ld   bc, $0307                                   ; $52c2: $01 $07 $03
	add  e                                           ; $52c5: $83
	inc  b                                           ; $52c6: $04
	sbc  b                                           ; $52c7: $98
	ld   a, l                                        ; $52c8: $7d
	inc  bc                                          ; $52c9: $03
	ld   [de], a                                     ; $52ca: $12
	ld   [bc], a                                     ; $52cb: $02
	ld   c, h                                        ; $52cc: $4c
	ld   a, h                                        ; $52cd: $7c
	inc  b                                           ; $52ce: $04
	add  c                                           ; $52cf: $81
	ld   bc, $9208                                   ; $52d0: $01 $08 $92
	sbc  e                                           ; $52d3: $9b
	ld   sp, hl                                      ; $52d4: $f9
	dec  c                                           ; $52d5: $0d
	and  c                                           ; $52d6: $a1
	ld   sp, hl                                      ; $52d7: $f9
	db   $10                                         ; $52d8: $10
	ld   l, e                                        ; $52d9: $6b
	ld   d, h                                        ; $52da: $54
	ld   e, c                                        ; $52db: $59
	rst  $38                                         ; $52dc: $ff
	rst  $38                                         ; $52dd: $ff
	dec  c                                           ; $52de: $0d
	nop                                              ; $52df: $00
	ld   a, [bc]                                     ; $52e0: $0a
	dec  e                                           ; $52e1: $1d
	ld   b, b                                        ; $52e2: $40
	dec  d                                           ; $52e3: $15
	inc  bc                                          ; $52e4: $03
	dec  d                                           ; $52e5: $15
	ld   bc, $2801                                   ; $52e6: $01 $01 $28
	nop                                              ; $52e9: $00
	ld   bc, $0701                                   ; $52ea: $01 $01 $07
	inc  bc                                          ; $52ed: $03
	add  e                                           ; $52ee: $83
	inc  b                                           ; $52ef: $04
	sbc  b                                           ; $52f0: $98
	ld   a, l                                        ; $52f1: $7d
	inc  bc                                          ; $52f2: $03
	ld   [de], a                                     ; $52f3: $12
	ld   [bc], a                                     ; $52f4: $02
	ld   c, h                                        ; $52f5: $4c
	ld   a, h                                        ; $52f6: $7c
	inc  b                                           ; $52f7: $04
	add  c                                           ; $52f8: $81
	ld   bc, $ff08                                   ; $52f9: $01 $08 $ff
	rst  $38                                         ; $52fc: $ff
	dec  c                                           ; $52fd: $0d
	ld   l, e                                        ; $52fe: $6b
	sub  d                                           ; $52ff: $92
	ld   a, b                                        ; $5300: $78
	rst  $38                                         ; $5301: $ff
	rst  $38                                         ; $5302: $ff
	dec  c                                           ; $5303: $0d
	rst  $38                                         ; $5304: $ff
	rst  $38                                         ; $5305: $ff
	ld   d, h                                        ; $5306: $54
	and  c                                           ; $5307: $a1
	sbc  a                                           ; $5308: $9f
	ld   l, e                                        ; $5309: $6b
	ld   a, h                                        ; $530a: $7c
	halt                                             ; $530b: $76
	ld   e, b                                        ; $530c: $58
	sbc  b                                           ; $530d: $98
	sub  d                                           ; $530e: $92
	sbc  a                                           ; $530f: $9f
	dec  c                                           ; $5310: $0d
	nop                                              ; $5311: $00
	ld   a, [bc]                                     ; $5312: $0a
	ld   b, $1b                                      ; $5313: $06 $1b
	inc  b                                           ; $5315: $04
	rrca                                             ; $5316: $0f
	nop                                              ; $5317: $00
	ld   bc, $0101                                   ; $5318: $01 $01 $01
	rlca                                             ; $531b: $07
	inc  bc                                          ; $531c: $03
	add  e                                           ; $531d: $83
	inc  b                                           ; $531e: $04
	sbc  b                                           ; $531f: $98
	ld   a, l                                        ; $5320: $7d
	inc  bc                                          ; $5321: $03
	ld   [de], a                                     ; $5322: $12
	ld   [bc], a                                     ; $5323: $02
	ld   c, h                                        ; $5324: $4c
	ld   a, h                                        ; $5325: $7c
	inc  b                                           ; $5326: $04
	add  c                                           ; $5327: $81
	ld   bc, $0d08                                   ; $5328: $01 $08 $0d
	ld   [hl], c                                     ; $532b: $71
	ld   [hl], h                                     ; $532c: $74
	ld   a, e                                        ; $532d: $7b
	sbc  a                                           ; $532e: $9f
	dec  c                                           ; $532f: $0d
	nop                                              ; $5330: $00
	ld   a, [bc]                                     ; $5331: $0a
	rrca                                             ; $5332: $0f
	dec  b                                           ; $5333: $05
	ld   [$ff01], sp                                 ; $5334: $08 $01 $ff
	rst  $38                                         ; $5337: $ff
	rst  $38                                         ; $5338: $ff
	rst  $38                                         ; $5339: $ff
	rst  $38                                         ; $533a: $ff
	rst  $38                                         ; $533b: $ff
	dec  c                                           ; $533c: $0d
	ld   bc, $0307                                   ; $533d: $01 $07 $03
	add  e                                           ; $5340: $83
	inc  b                                           ; $5341: $04
	sbc  b                                           ; $5342: $98
	ld   a, l                                        ; $5343: $7d
	inc  bc                                          ; $5344: $03
	ld   [de], a                                     ; $5345: $12
	ld   [bc], a                                     ; $5346: $02
	ld   c, h                                        ; $5347: $4c
	ld   a, h                                        ; $5348: $7c
	inc  b                                           ; $5349: $04
	add  c                                           ; $534a: $81
	ld   bc, $5908                                   ; $534b: $01 $08 $59
	rst  $38                                         ; $534e: $ff
	dec  c                                           ; $534f: $0d
	nop                                              ; $5350: $00
	ld   a, [bc]                                     ; $5351: $0a
	dec  e                                           ; $5352: $1d
	ld   b, b                                        ; $5353: $40
	dec  d                                           ; $5354: $15
	inc  bc                                          ; $5355: $03
	dec  d                                           ; $5356: $15
	ld   bc, $2802                                   ; $5357: $01 $02 $28
	nop                                              ; $535a: $00
	ld   bc, $926b                                   ; $535b: $01 $6b $92
	ld   a, b                                        ; $535e: $78
	rst  $38                                         ; $535f: $ff
	rst  $38                                         ; $5360: $ff
	dec  c                                           ; $5361: $0d
	rst  $38                                         ; $5362: $ff
	rst  $38                                         ; $5363: $ff
	ld   d, h                                        ; $5364: $54
	and  c                                           ; $5365: $a1
	sbc  a                                           ; $5366: $9f
	ld   l, e                                        ; $5367: $6b
	ld   a, h                                        ; $5368: $7c
	halt                                             ; $5369: $76
	ld   e, b                                        ; $536a: $58
	sbc  b                                           ; $536b: $98
	sub  d                                           ; $536c: $92
	sbc  a                                           ; $536d: $9f
	dec  c                                           ; $536e: $0d
	nop                                              ; $536f: $00
	ld   a, [bc]                                     ; $5370: $0a
	ld   b, $1b                                      ; $5371: $06 $1b
	inc  b                                           ; $5373: $04
	rrca                                             ; $5374: $0f
	nop                                              ; $5375: $00
	ld   bc, $0101                                   ; $5376: $01 $01 $01
	inc  bc                                          ; $5379: $03
	ld   d, b                                        ; $537a: $50
	sbc  d                                           ; $537b: $9a
	ld   sp, hl                                      ; $537c: $f9
	db   $10                                         ; $537d: $10
	ld   a, b                                        ; $537e: $78
	and  c                                           ; $537f: $a1
	ld   l, [hl]                                     ; $5380: $6e
	ld   [hl], c                                     ; $5381: $71
	ld   e, a                                        ; $5382: $5f
	ld   sp, hl                                      ; $5383: $f9
	ld   bc, $0d04                                   ; $5384: $01 $04 $0d
	rst  $38                                         ; $5387: $ff
	rst  $38                                         ; $5388: $ff
	sbc  [hl]                                        ; $5389: $9e
	adc  h                                           ; $538a: $8c
	ld   d, b                                        ; $538b: $50
	sbc  [hl]                                        ; $538c: $9e
	halt                                             ; $538d: $76
	sub  b                                           ; $538e: $90
	ld   e, c                                        ; $538f: $59
	ld   e, l                                        ; $5390: $5d
	dec  c                                           ; $5391: $0d
	ld   e, d                                        ; $5392: $5a
	and  c                                           ; $5393: $a1
	ld   a, [hl]                                     ; $5394: $7e
	ld   [hl], c                                     ; $5395: $71
	ld   [hl], h                                     ; $5396: $74
	ld   e, l                                        ; $5397: $5d
	ld   l, [hl]                                     ; $5398: $6e
	ld   h, e                                        ; $5399: $63
	ld   d, d                                        ; $539a: $52
	ld   a, e                                        ; $539b: $7b
	sbc  a                                           ; $539c: $9f
	dec  c                                           ; $539d: $0d
	nop                                              ; $539e: $00
	ld   a, [bc]                                     ; $539f: $0a
	rrca                                             ; $53a0: $0f
	dec  b                                           ; $53a1: $05
	ld   [$5001], sp                                 ; $53a2: $08 $01 $50
	ld   d, b                                        ; $53a5: $50
	rst  $38                                         ; $53a6: $ff
	rst  $38                                         ; $53a7: $ff
	dec  c                                           ; $53a8: $0d
	ld   e, b                                        ; $53a9: $58
	ld   e, b                                        ; $53aa: $58
	ld   e, e                                        ; $53ab: $5b
	ld   a, c                                        ; $53ac: $79
	rst  $38                                         ; $53ad: $ff
	rst  $38                                         ; $53ae: $ff
	rst  $38                                         ; $53af: $ff
	rst  $38                                         ; $53b0: $ff
	dec  c                                           ; $53b1: $0d
	nop                                              ; $53b2: $00
	ld   a, [bc]                                     ; $53b3: $0a
	nop                                              ; $53b4: $00
	rrca                                             ; $53b5: $0f
	nop                                              ; $53b6: $00
	ld   bc, $0101                                   ; $53b7: $01 $01 $01
	inc  bc                                          ; $53ba: $03
	ld   e, b                                        ; $53bb: $58
	ld   [hl], c                                     ; $53bc: $71
	ld   a, [$1605]                                  ; $53bd: $fa $05 $16
	ld   l, a                                        ; $53c0: $6f
	inc  bc                                          ; $53c1: $03
	jp   c, Jump_04f_7471                            ; $53c2: $da $71 $74

	ld   e, e                                        ; $53c5: $5b
	ld   l, l                                        ; $53c6: $6d
	ld   e, c                                        ; $53c7: $59
	ld   a, b                                        ; $53c8: $78
	ld   bc, $0d04                                   ; $53c9: $01 $04 $0d
	nop                                              ; $53cc: $00
	ld   a, [bc]                                     ; $53cd: $0a
	ld   bc, $cf02                                   ; $53ce: $01 $02 $cf
	dec  b                                           ; $53d1: $05
	ld   a, [de]                                     ; $53d2: $1a
	ld   h, e                                        ; $53d3: $63
	and  c                                           ; $53d4: $a1
	ld   a, b                                        ; $53d5: $78
	sub  a                                           ; $53d6: $97
	sub  d                                           ; $53d7: $92
	sbc  d                                           ; $53d8: $9a
	adc  h                                           ; $53d9: $8c
	ld   h, a                                        ; $53da: $67
	sub  [hl]                                        ; $53db: $96
	sbc  a                                           ; $53dc: $9f
	dec  c                                           ; $53dd: $0d
	ld   l, [hl]                                     ; $53de: $6e
	ld   [hl], c                                     ; $53df: $71
	ld   [hl], h                                     ; $53e0: $74
	ld   [bc], a                                     ; $53e1: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53e2: $cf
	dec  b                                           ; $53e3: $05
	ld   a, [de]                                     ; $53e4: $1a
	ld   h, e                                        ; $53e5: $63
	and  c                                           ; $53e6: $a1
	ld   [hl], c                                     ; $53e7: $71
	ld   [hl], h                                     ; $53e8: $74
	rst  $38                                         ; $53e9: $ff
	rst  $38                                         ; $53ea: $ff
	dec  c                                           ; $53eb: $0d
	nop                                              ; $53ec: $00
	ld   a, [bc]                                     ; $53ed: $0a
	add  hl, de                                      ; $53ee: $19
	dec  b                                           ; $53ef: $05
	inc  bc                                          ; $53f0: $03
	ld   e, c                                        ; $53f1: $59
	sbc  l                                           ; $53f2: $9d
	ld   d, d                                        ; $53f3: $52
	ld   d, d                                        ; $53f4: $52
	and  c                                           ; $53f5: $a1
	ld   [hl], l                                     ; $53f6: $75
	ld   h, a                                        ; $53f7: $67
	ld   e, c                                        ; $53f8: $59
	sub  a                                           ; $53f9: $97
	nop                                              ; $53fa: $00
	nop                                              ; $53fb: $00
	inc  b                                           ; $53fc: $04
	inc  de                                          ; $53fd: $13
	inc  bc                                          ; $53fe: $03
	ld   b, $78                                      ; $53ff: $06 $78
	and  c                                           ; $5401: $a1
	ld   [hl], l                                     ; $5402: $75
	ld   h, a                                        ; $5403: $67
	ld   e, c                                        ; $5404: $59
	sub  a                                           ; $5405: $97
	nop                                              ; $5406: $00
	ld   bc, $0358                                   ; $5407: $01 $58 $03
	rlca                                             ; $540a: $07
	ld   d, d                                        ; $540b: $52
	ld   a, b                                        ; $540c: $78
	and  c                                           ; $540d: $a1
	ld   [hl], l                                     ; $540e: $75
	ld   h, a                                        ; $540f: $67
	ld   e, c                                        ; $5410: $59
	sub  a                                           ; $5411: $97
	nop                                              ; $5412: $00
	ld   [bc], a                                     ; $5413: $02
	rlca                                             ; $5414: $07
	sbc  b                                           ; $5415: $98
	inc  b                                           ; $5416: $04
	ld   [bc], a                                     ; $5417: $02
	inc  bc                                          ; $5418: $03
	ld   bc, $2000                                   ; $5419: $01 $00 $20
	nop                                              ; $541c: $00
	rlca                                             ; $541d: $07
	ld   l, $05                                      ; $541e: $2e $05
	ld   [bc], a                                     ; $5420: $02
	inc  bc                                          ; $5421: $03
	ld   bc, $2001                                   ; $5422: $01 $01 $20
	nop                                              ; $5425: $00
	rlca                                             ; $5426: $07
	or   d                                           ; $5427: $b2
	dec  b                                           ; $5428: $05
	ld   [bc], a                                     ; $5429: $02
	inc  bc                                          ; $542a: $03
	ld   bc, $2002                                   ; $542b: $01 $02 $20
	nop                                              ; $542e: $00
	ld   b, $48                                      ; $542f: $06 $48
	ld   b, $0f                                      ; $5431: $06 $0f
	nop                                              ; $5433: $00
	ld   bc, $6e01                                   ; $5434: $01 $01 $6e
	ld   [hl], c                                     ; $5437: $71
	ld   [hl], h                                     ; $5438: $74
	ld   [bc], a                                     ; $5439: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $543a: $cf
	dec  b                                           ; $543b: $05
	ld   a, [de]                                     ; $543c: $1a
	ld   h, e                                        ; $543d: $63
	and  c                                           ; $543e: $a1
	ld   [hl], c                                     ; $543f: $71
	ld   [hl], h                                     ; $5440: $74
	dec  c                                           ; $5441: $0d
	inc  bc                                          ; $5442: $03
	ld   l, c                                        ; $5443: $69
	ld   [bc], a                                     ; $5444: $02
	cp   [hl]                                        ; $5445: $be
	ld   a, c                                        ; $5446: $79
	ld   e, c                                        ; $5447: $59
	sbc  l                                           ; $5448: $9d
	ld   d, d                                        ; $5449: $52
	ld   d, d                                        ; $544a: $52
	and  c                                           ; $544b: $a1
	ld   [hl], l                                     ; $544c: $75
	ld   h, a                                        ; $544d: $67
	ld   e, c                                        ; $544e: $59
	sub  a                                           ; $544f: $97
	sbc  a                                           ; $5450: $9f
	dec  c                                           ; $5451: $0d
	nop                                              ; $5452: $00
	ld   a, [bc]                                     ; $5453: $0a
	inc  e                                           ; $5454: $1c
	dec  b                                           ; $5455: $05
	inc  b                                           ; $5456: $04
	inc  b                                           ; $5457: $04
	dec  e                                           ; $5458: $1d
	ld   b, b                                        ; $5459: $40
	dec  d                                           ; $545a: $15
	inc  bc                                          ; $545b: $03
	dec  d                                           ; $545c: $15
	ld   bc, $2802                                   ; $545d: $01 $02 $28
	nop                                              ; $5460: $00
	ld   bc, $f9a1                                   ; $5461: $01 $a1 $f9
	db   $10                                         ; $5464: $10
	ld   l, e                                        ; $5465: $6b
	ld   d, h                                        ; $5466: $54
	ld   e, c                                        ; $5467: $59
	db   $fc                                         ; $5468: $fc
	sbc  a                                           ; $5469: $9f
	dec  c                                           ; $546a: $0d
	nop                                              ; $546b: $00
	ld   a, [bc]                                     ; $546c: $0a
	inc  e                                           ; $546d: $1c
	dec  b                                           ; $546e: $05
	ld   [bc], a                                     ; $546f: $02
	ld   [bc], a                                     ; $5470: $02
	ld   bc, $a189                                   ; $5471: $01 $89 $a1
	ld   [hl], l                                     ; $5474: $75
	sub  b                                           ; $5475: $90
	sbc  [hl]                                        ; $5476: $9e
	ld   e, c                                        ; $5477: $59
	sbc  l                                           ; $5478: $9d
	ld   d, d                                        ; $5479: $52
	ld   d, d                                        ; $547a: $52
	ld   a, h                                        ; $547b: $7c
	halt                                             ; $547c: $76
	dec  c                                           ; $547d: $0d
	inc  b                                           ; $547e: $04
	ld   e, [hl]                                     ; $547f: $5e
	inc  b                                           ; $5480: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5481: $cf
	halt                                             ; $5482: $76
	ld   a, l                                        ; $5483: $7d
	sbc  [hl]                                        ; $5484: $9e
	ld   [bc], a                                     ; $5485: $02
	ld   c, d                                        ; $5486: $4a
	ld   [bc], a                                     ; $5487: $02
	ld   c, e                                        ; $5488: $4b
	ld   d, b                                        ; $5489: $50
	sub  a                                           ; $548a: $97
	add  [hl]                                        ; $548b: $86
	and  c                                           ; $548c: $a1
	sub  d                                           ; $548d: $92
	and  c                                           ; $548e: $a1
	sbc  a                                           ; $548f: $9f
	dec  c                                           ; $5490: $0d
	nop                                              ; $5491: $00
	ld   a, [bc]                                     ; $5492: $0a
	inc  e                                           ; $5493: $1c
	dec  b                                           ; $5494: $05
	ld   bc, $0101                                   ; $5495: $01 $01 $01
	ld   [hl], l                                     ; $5498: $75
	sub  b                                           ; $5499: $90
	sbc  [hl]                                        ; $549a: $9e
	ld   e, b                                        ; $549b: $58
	ld   e, b                                        ; $549c: $58
	ld   e, e                                        ; $549d: $5b
	ld   a, c                                        ; $549e: $79
	ld   a, b                                        ; $549f: $78
	sbc  a                                           ; $54a0: $9f
	dec  c                                           ; $54a1: $0d
	and  a                                           ; $54a2: $a7
	jp   nz, Jump_04f_7da0                           ; $54a3: $c2 $a0 $7d

	ld   h, b                                        ; $54a6: $60
	adc  h                                           ; $54a7: $8c
	ld   h, l                                        ; $54a8: $65
	ld   [hl], h                                     ; $54a9: $74
	ld   e, l                                        ; $54aa: $5d
	sbc  d                                           ; $54ab: $9a
	ld   [hl], h                                     ; $54ac: $74
	sbc  a                                           ; $54ad: $9f
	dec  c                                           ; $54ae: $0d
	adc  c                                           ; $54af: $89
	ld   a, b                                        ; $54b0: $78
	sbc  [hl]                                        ; $54b1: $9e
	ld   [bc], a                                     ; $54b2: $02
	ld   l, d                                        ; $54b3: $6a
	ld   b, $44                                      ; $54b4: $06 $44
	ld   a, c                                        ; $54b6: $79
	sub  b                                           ; $54b7: $90
	ld   [hl], a                                     ; $54b8: $77
	sbc  c                                           ; $54b9: $99
	sbc  l                                           ; $54ba: $9d
	sbc  a                                           ; $54bb: $9f
	dec  c                                           ; $54bc: $0d
	nop                                              ; $54bd: $00
	ld   a, [bc]                                     ; $54be: $0a
	dec  c                                           ; $54bf: $0d
	nop                                              ; $54c0: $00
	nop                                              ; $54c1: $00
	rrca                                             ; $54c2: $0f
	nop                                              ; $54c3: $00
	ld   bc, $1e09                                   ; $54c4: $01 $09 $1e
	nop                                              ; $54c7: $00
	rrca                                             ; $54c8: $0f
	nop                                              ; $54c9: $00
	ld   bc, $6e01                                   ; $54ca: $01 $01 $6e
	ld   [hl], c                                     ; $54cd: $71
	ld   [hl], h                                     ; $54ce: $74
	ld   [bc], a                                     ; $54cf: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54d0: $cf
	dec  b                                           ; $54d1: $05
	ld   a, [de]                                     ; $54d2: $1a
	ld   h, e                                        ; $54d3: $63
	and  c                                           ; $54d4: $a1
	ld   [hl], c                                     ; $54d5: $71
	ld   [hl], h                                     ; $54d6: $74
	dec  c                                           ; $54d7: $0d
	inc  b                                           ; $54d8: $04
	ld   e, [hl]                                     ; $54d9: $5e
	inc  b                                           ; $54da: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54db: $cf
	ld   a, h                                        ; $54dc: $7c
	inc  b                                           ; $54dd: $04
	inc  de                                          ; $54de: $13
	inc  bc                                          ; $54df: $03
	ld   b, $78                                      ; $54e0: $06 $78
	and  c                                           ; $54e2: $a1
	ld   [hl], l                                     ; $54e3: $75
	ld   h, a                                        ; $54e4: $67
	ld   e, c                                        ; $54e5: $59
	sub  a                                           ; $54e6: $97
	sbc  a                                           ; $54e7: $9f
	dec  c                                           ; $54e8: $0d
	nop                                              ; $54e9: $00
	ld   a, [bc]                                     ; $54ea: $0a
	inc  e                                           ; $54eb: $1c
	dec  b                                           ; $54ec: $05
	inc  b                                           ; $54ed: $04
	inc  b                                           ; $54ee: $04
	dec  e                                           ; $54ef: $1d
	ld   b, b                                        ; $54f0: $40
	dec  d                                           ; $54f1: $15
	inc  bc                                          ; $54f2: $03
	dec  d                                           ; $54f3: $15
	ld   bc, $2803                                   ; $54f4: $01 $03 $28
	nop                                              ; $54f7: $00
	ld   bc, $d0d0                                   ; $54f8: $01 $d0 $d0
	ret  nc                                          ; $54fb: $d0

	sbc  a                                           ; $54fc: $9f
	dec  c                                           ; $54fd: $0d
	ld   l, e                                        ; $54fe: $6b
	and  c                                           ; $54ff: $a1
	ld   a, b                                        ; $5500: $78
	ld   a, c                                        ; $5501: $79
	cp   e                                           ; $5502: $bb
	pop  de                                          ; $5503: $d1
	db   $ec                                         ; $5504: $ec
	ld   [bc], a                                     ; $5505: $02
	sbc  l                                           ; $5506: $9d
	sbc  l                                           ; $5507: $9d
	sbc  d                                           ; $5508: $9a
	ld   l, l                                        ; $5509: $6d
	sub  a                                           ; $550a: $97
	dec  c                                           ; $550b: $0d
	inc  bc                                          ; $550c: $03
	ld   h, [hl]                                     ; $550d: $66
	sbc  d                                           ; $550e: $9a
	sbc  c                                           ; $550f: $99
	sub  d                                           ; $5510: $92
	and  c                                           ; $5511: $a1
	sbc  a                                           ; $5512: $9f
	dec  c                                           ; $5513: $0d
	nop                                              ; $5514: $00
	ld   a, [bc]                                     ; $5515: $0a
	inc  e                                           ; $5516: $1c
	dec  b                                           ; $5517: $05
	ld   bc, $0101                                   ; $5518: $01 $01 $01
	ld   e, b                                        ; $551b: $58
	ld   e, b                                        ; $551c: $58
	ld   e, e                                        ; $551d: $5b
	ld   a, c                                        ; $551e: $79
	ld   d, b                                        ; $551f: $50
	sbc  b                                           ; $5520: $98
	ld   e, d                                        ; $5521: $5a
	halt                                             ; $5522: $76
	ld   d, h                                        ; $5523: $54
	sbc  a                                           ; $5524: $9f
	dec  c                                           ; $5525: $0d
	and  a                                           ; $5526: $a7
	jp   nz, Jump_04f_7da0                           ; $5527: $c2 $a0 $7d

	ld   h, b                                        ; $552a: $60
	adc  h                                           ; $552b: $8c
	ld   h, l                                        ; $552c: $65
	ld   [hl], h                                     ; $552d: $74
	ld   e, l                                        ; $552e: $5d
	sbc  d                                           ; $552f: $9a
	ld   [hl], h                                     ; $5530: $74
	sbc  a                                           ; $5531: $9f
	dec  c                                           ; $5532: $0d
	adc  c                                           ; $5533: $89
	ld   a, b                                        ; $5534: $78
	sbc  [hl]                                        ; $5535: $9e
	ld   [bc], a                                     ; $5536: $02
	ld   l, d                                        ; $5537: $6a
	ld   b, $44                                      ; $5538: $06 $44
	ld   a, c                                        ; $553a: $79
	sub  b                                           ; $553b: $90
	ld   [hl], a                                     ; $553c: $77
	sbc  c                                           ; $553d: $99
	sbc  l                                           ; $553e: $9d
	sbc  a                                           ; $553f: $9f
	dec  c                                           ; $5540: $0d
	nop                                              ; $5541: $00
	ld   a, [bc]                                     ; $5542: $0a
	dec  c                                           ; $5543: $0d
	nop                                              ; $5544: $00
	nop                                              ; $5545: $00
	rrca                                             ; $5546: $0f
	nop                                              ; $5547: $00
	ld   bc, $1e09                                   ; $5548: $01 $09 $1e
	nop                                              ; $554b: $00
	rrca                                             ; $554c: $0f
	nop                                              ; $554d: $00
	ld   bc, $6e01                                   ; $554e: $01 $01 $6e
	ld   [hl], c                                     ; $5551: $71
	ld   [hl], h                                     ; $5552: $74
	ld   [bc], a                                     ; $5553: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5554: $cf
	dec  b                                           ; $5555: $05
	ld   a, [de]                                     ; $5556: $1a
	ld   h, e                                        ; $5557: $63
	and  c                                           ; $5558: $a1
	ld   [hl], c                                     ; $5559: $71
	ld   [hl], h                                     ; $555a: $74
	dec  c                                           ; $555b: $0d
	inc  b                                           ; $555c: $04
	inc  de                                          ; $555d: $13
	inc  bc                                          ; $555e: $03
	ld   b, $04                                      ; $555f: $06 $04
	jr   nz, jr_04f_55db                             ; $5561: $20 $78

	ld   e, b                                        ; $5563: $58
	inc  bc                                          ; $5564: $03
	rlca                                             ; $5565: $07
	ld   d, d                                        ; $5566: $52
	ld   a, h                                        ; $5567: $7c
	cp   h                                           ; $5568: $bc
	push af                                          ; $5569: $f5
	cp   d                                           ; $556a: $ba
	and  b                                           ; $556b: $a0
	dec  c                                           ; $556c: $0d
	inc  bc                                          ; $556d: $03
	and  b                                           ; $556e: $a0
	ld   [hl], c                                     ; $556f: $71
	ld   [hl], h                                     ; $5570: $74
	sbc  c                                           ; $5571: $99
	and  c                                           ; $5572: $a1
	ld   [hl], l                                     ; $5573: $75
	ld   h, a                                        ; $5574: $67
	ld   e, c                                        ; $5575: $59
	sub  a                                           ; $5576: $97
	sbc  a                                           ; $5577: $9f
	dec  c                                           ; $5578: $0d
	nop                                              ; $5579: $00
	ld   a, [bc]                                     ; $557a: $0a
	inc  e                                           ; $557b: $1c
	dec  b                                           ; $557c: $05
	inc  bc                                          ; $557d: $03
	inc  bc                                          ; $557e: $03
	dec  e                                           ; $557f: $1d
	ld   b, b                                        ; $5580: $40
	dec  d                                           ; $5581: $15
	inc  bc                                          ; $5582: $03
	dec  d                                           ; $5583: $15
	ld   bc, $2801                                   ; $5584: $01 $01 $28
	nop                                              ; $5587: $00
	ld   bc, $0358                                   ; $5588: $01 $58 $03
	rlca                                             ; $558b: $07
	ld   d, d                                        ; $558c: $52
	ld   a, h                                        ; $558d: $7c
	cp   h                                           ; $558e: $bc
	push af                                          ; $558f: $f5
	cp   d                                           ; $5590: $ba
	ld   a, l                                        ; $5591: $7d
	dec  c                                           ; $5592: $0d
	ld   [bc], a                                     ; $5593: $02
	ld   c, d                                        ; $5594: $4a
	ld   [bc], a                                     ; $5595: $02
	ld   c, e                                        ; $5596: $4b
	ld   a, b                                        ; $5597: $78
	ld   d, d                                        ; $5598: $52
	sub  d                                           ; $5599: $92
	sbc  e                                           ; $559a: $9b
	sbc  a                                           ; $559b: $9f
	dec  c                                           ; $559c: $0d
	inc  b                                           ; $559d: $04
	inc  de                                          ; $559e: $13
	inc  bc                                          ; $559f: $03
	ld   b, $6f                                      ; $55a0: $06 $6f
	sub  e                                           ; $55a2: $93
	ei                                               ; $55a3: $fb
	ld   a, h                                        ; $55a4: $7c
	ld   a, l                                        ; $55a5: $7d
	ld   d, h                                        ; $55a6: $54
	sbc  d                                           ; $55a7: $9a
	ld   h, l                                        ; $55a8: $65
	ld   d, d                                        ; $55a9: $52
	ld   e, a                                        ; $55aa: $5f
	ld   [hl], a                                     ; $55ab: $77
	sbc  a                                           ; $55ac: $9f
	dec  c                                           ; $55ad: $0d
	nop                                              ; $55ae: $00
	ld   a, [bc]                                     ; $55af: $0a
	inc  e                                           ; $55b0: $1c
	dec  b                                           ; $55b1: $05
	ld   bc, $0101                                   ; $55b2: $01 $01 $01
	ld   e, b                                        ; $55b5: $58
	ld   e, b                                        ; $55b6: $58
	ld   e, e                                        ; $55b7: $5b
	ld   a, c                                        ; $55b8: $79
	ld   a, b                                        ; $55b9: $78
	sbc  a                                           ; $55ba: $9f
	dec  c                                           ; $55bb: $0d
	and  a                                           ; $55bc: $a7
	jp   nz, Jump_04f_7da0                           ; $55bd: $c2 $a0 $7d

	ld   h, b                                        ; $55c0: $60
	adc  h                                           ; $55c1: $8c
	ld   h, l                                        ; $55c2: $65
	ld   [hl], h                                     ; $55c3: $74
	ld   e, l                                        ; $55c4: $5d
	sbc  d                                           ; $55c5: $9a
	ld   [hl], h                                     ; $55c6: $74
	sbc  a                                           ; $55c7: $9f
	dec  c                                           ; $55c8: $0d
	adc  c                                           ; $55c9: $89
	ld   a, b                                        ; $55ca: $78
	sbc  [hl]                                        ; $55cb: $9e
	ld   [bc], a                                     ; $55cc: $02
	ld   l, d                                        ; $55cd: $6a
	ld   b, $44                                      ; $55ce: $06 $44
	ld   a, c                                        ; $55d0: $79
	sub  b                                           ; $55d1: $90
	ld   [hl], a                                     ; $55d2: $77
	sbc  c                                           ; $55d3: $99
	sbc  l                                           ; $55d4: $9d
	sbc  a                                           ; $55d5: $9f
	dec  c                                           ; $55d6: $0d
	nop                                              ; $55d7: $00
	ld   a, [bc]                                     ; $55d8: $0a
	dec  c                                           ; $55d9: $0d
	nop                                              ; $55da: $00

jr_04f_55db:
	nop                                              ; $55db: $00
	rrca                                             ; $55dc: $0f
	nop                                              ; $55dd: $00
	ld   bc, $1e09                                   ; $55de: $01 $09 $1e
	nop                                              ; $55e1: $00
	rrca                                             ; $55e2: $0f
	nop                                              ; $55e3: $00
	ld   bc, $0101                                   ; $55e4: $01 $01 $01
	inc  bc                                          ; $55e7: $03
	ld   d, b                                        ; $55e8: $50
	sbc  d                                           ; $55e9: $9a
	ld   sp, hl                                      ; $55ea: $f9
	db   $10                                         ; $55eb: $10
	ld   a, b                                        ; $55ec: $78
	and  c                                           ; $55ed: $a1
	ld   l, [hl]                                     ; $55ee: $6e
	ld   [hl], c                                     ; $55ef: $71
	ld   e, a                                        ; $55f0: $5f
	ld   sp, hl                                      ; $55f1: $f9
	ld   bc, $0d04                                   ; $55f2: $01 $04 $0d
	rst  $38                                         ; $55f5: $ff
	rst  $38                                         ; $55f6: $ff
	sbc  [hl]                                        ; $55f7: $9e
	adc  h                                           ; $55f8: $8c
	ld   d, b                                        ; $55f9: $50
	sbc  [hl]                                        ; $55fa: $9e
	halt                                             ; $55fb: $76
	sub  b                                           ; $55fc: $90
	ld   e, c                                        ; $55fd: $59
	ld   e, l                                        ; $55fe: $5d
	dec  c                                           ; $55ff: $0d
	ld   e, d                                        ; $5600: $5a
	and  c                                           ; $5601: $a1
	ld   a, [hl]                                     ; $5602: $7e
	ld   [hl], c                                     ; $5603: $71
	ld   [hl], h                                     ; $5604: $74
	ld   e, l                                        ; $5605: $5d
	ld   l, [hl]                                     ; $5606: $6e
	ld   h, e                                        ; $5607: $63
	ld   d, d                                        ; $5608: $52
	ld   a, e                                        ; $5609: $7b
	sbc  a                                           ; $560a: $9f
	dec  c                                           ; $560b: $0d
	nop                                              ; $560c: $00
	ld   a, [bc]                                     ; $560d: $0a
	inc  e                                           ; $560e: $1c
	dec  b                                           ; $560f: $05
	nop                                              ; $5610: $00
	nop                                              ; $5611: $00
	ld   bc, $5050                                   ; $5612: $01 $50 $50
	rst  $38                                         ; $5615: $ff
	rst  $38                                         ; $5616: $ff
	dec  c                                           ; $5617: $0d
	ld   e, b                                        ; $5618: $58
	ld   e, b                                        ; $5619: $58
	ld   e, e                                        ; $561a: $5b
	ld   a, c                                        ; $561b: $79
	rst  $38                                         ; $561c: $ff
	rst  $38                                         ; $561d: $ff
	rst  $38                                         ; $561e: $ff
	rst  $38                                         ; $561f: $ff
	dec  c                                           ; $5620: $0d
	nop                                              ; $5621: $00
	ld   a, [bc]                                     ; $5622: $0a
	nop                                              ; $5623: $00
	nop                                              ; $5624: $00
	inc  b                                           ; $5625: $04
	add  b                                           ; $5626: $80
	sub  d                                           ; $5627: $92
	ld   bc, $2000                                   ; $5628: $01 $00 $20
	nop                                              ; $562b: $00
	rrca                                             ; $562c: $0f
	nop                                              ; $562d: $00
	ld   bc, $3f0e                                   ; $562e: $01 $0e $3f
	dec  c                                           ; $5631: $0d
	ld   [bc], a                                     ; $5632: $02
	nop                                              ; $5633: $00
	ld   [bc], a                                     ; $5634: $02
	ld   bc, $9e50                                   ; $5635: $01 $50 $9e
	ld   h, a                                        ; $5638: $67
	adc  l                                           ; $5639: $8d
	sbc  d                                           ; $563a: $9a
	ld   h, e                                        ; $563b: $63
	and  c                                           ; $563c: $a1
	sbc  a                                           ; $563d: $9f
	dec  c                                           ; $563e: $0d
	nop                                              ; $563f: $00
	ld   a, [bc]                                     ; $5640: $0a
	inc  e                                           ; $5641: $1c
	ld   [bc], a                                     ; $5642: $02
	ld   bc, $0101                                   ; $5643: $01 $01 $01
	ld   d, b                                        ; $5646: $50
	sub  a                                           ; $5647: $97
	sbc  [hl]                                        ; $5648: $9e
	ld   [$6300], sp                                 ; $5649: $08 $00 $63
	and  c                                           ; $564c: $a1
	sbc  a                                           ; $564d: $9f
	dec  c                                           ; $564e: $0d
	nop                                              ; $564f: $00
	ld   a, [bc]                                     ; $5650: $0a
	rrca                                             ; $5651: $0f
	nop                                              ; $5652: $00
	ld   bc, $5801                                   ; $5653: $01 $01 $58
	ld   d, d                                        ; $5656: $52
	ld   h, l                                        ; $5657: $65
	ld   l, e                                        ; $5658: $6b
	ld   d, h                                        ; $5659: $54
	ld   a, b                                        ; $565a: $78
	ld   [bc], a                                     ; $565b: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $565c: $cf
	inc  bc                                          ; $565d: $03
	jp   Jump_04f_6775                               ; $565e: $c3 $75 $67


Jump_04f_5661:
	ld   a, e                                        ; $5661: $7b
	sbc  a                                           ; $5662: $9f
	dec  c                                           ; $5663: $0d
	ld   h, a                                        ; $5664: $67
	adc  l                                           ; $5665: $8d
	sbc  d                                           ; $5666: $9a
	ld   h, e                                        ; $5667: $63
	and  c                                           ; $5668: $a1
	sbc  a                                           ; $5669: $9f
	dec  c                                           ; $566a: $0d
	nop                                              ; $566b: $00
	ld   a, [bc]                                     ; $566c: $0a
	rrca                                             ; $566d: $0f
	ld   [bc], a                                     ; $566e: $02
	ld   bc, $5001                                   ; $566f: $01 $01 $50
	sub  a                                           ; $5672: $97
	sbc  [hl]                                        ; $5673: $9e
	ld   [$6300], sp                                 ; $5674: $08 $00 $63
	and  c                                           ; $5677: $a1
	sbc  a                                           ; $5678: $9f
	dec  c                                           ; $5679: $0d
	sub  [hl]                                        ; $567a: $96
	ld   e, c                                        ; $567b: $59
	ld   [hl], c                                     ; $567c: $71
	ld   l, l                                        ; $567d: $6d
	sub  a                                           ; $567e: $97
	sbc  [hl]                                        ; $567f: $9e
	ld   e, b                                        ; $5680: $58
	ld   d, d                                        ; $5681: $52
	ld   h, l                                        ; $5682: $65
	ld   d, d                                        ; $5683: $52
	ld   [bc], a                                     ; $5684: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5685: $cf
	inc  bc                                          ; $5686: $03
	jp   $0d7c                                       ; $5687: $c3 $7c $0d


	inc  b                                           ; $568a: $04
	ld   b, l                                        ; $568b: $45
	sbc  d                                           ; $568c: $9a
	inc  b                                           ; $568d: $04
	ld   a, b                                        ; $568e: $78
	and  b                                           ; $568f: $a0
	ld   e, b                                        ; $5690: $58
	ld   [bc], a                                     ; $5691: $02
	ret  nc                                          ; $5692: $d0

	ld   d, [hl]                                     ; $5693: $56
	ld   h, l                                        ; $5694: $65
	adc  h                                           ; $5695: $8c
	ld   h, a                                        ; $5696: $67
	sbc  l                                           ; $5697: $9d
	sub  [hl]                                        ; $5698: $96
	sbc  a                                           ; $5699: $9f
	dec  c                                           ; $569a: $0d
	nop                                              ; $569b: $00
	ld   a, [bc]                                     ; $569c: $0a
	jr   jr_04f_56a1                                 ; $569d: $18 $02

	nop                                              ; $569f: $00
	ld   d, [hl]                                     ; $56a0: $56

jr_04f_56a1:
	and  c                                           ; $56a1: $a1
	sbc  b                                           ; $56a2: $98
	sub  l                                           ; $56a3: $95
	ld   h, a                                        ; $56a4: $67
	sbc  c                                           ; $56a5: $99
	nop                                              ; $56a6: $00
	nop                                              ; $56a7: $00
	ld   e, b                                        ; $56a8: $58
	ld   [bc], a                                     ; $56a9: $02
	add  b                                           ; $56aa: $80
	ld   d, d                                        ; $56ab: $52
	ld   h, l                                        ; $56ac: $65
	adc  h                                           ; $56ad: $8c
	ld   h, a                                        ; $56ae: $67
	nop                                              ; $56af: $00
	ld   bc, $9707                                   ; $56b0: $01 $07 $97
	nop                                              ; $56b3: $00
	ld   [bc], a                                     ; $56b4: $02
	ld   [bc], a                                     ; $56b5: $02
	ld   bc, $2000                                   ; $56b6: $01 $00 $20
	nop                                              ; $56b9: $00
	rlca                                             ; $56ba: $07
	db   $db                                         ; $56bb: $db
	nop                                              ; $56bc: $00
	ld   [bc], a                                     ; $56bd: $02
	ld   [bc], a                                     ; $56be: $02
	ld   bc, $2001                                   ; $56bf: $01 $01 $20
	nop                                              ; $56c2: $00
	rrca                                             ; $56c3: $0f
	nop                                              ; $56c4: $00
	ld   bc, $6701                                   ; $56c5: $01 $01 $67
	adc  l                                           ; $56c8: $8d
	adc  h                                           ; $56c9: $8c
	ld   l, c                                        ; $56ca: $69
	and  c                                           ; $56cb: $a1
	sbc  a                                           ; $56cc: $9f
	dec  c                                           ; $56cd: $0d
	ld   l, a                                        ; $56ce: $6f
	sub  l                                           ; $56cf: $95
	ld   [hl], c                                     ; $56d0: $71
	halt                                             ; $56d1: $76
	inc  b                                           ; $56d2: $04
	di                                               ; $56d3: $f3
	ld   [bc], a                                     ; $56d4: $02
	jp   Jump_04f_505a                               ; $56d5: $c3 $5a $50


	sbc  b                                           ; $56d8: $98
	adc  h                                           ; $56d9: $8c
	ld   h, l                                        ; $56da: $65
	ld   [hl], h                                     ; $56db: $74
	rst  $38                                         ; $56dc: $ff
	rst  $38                                         ; $56dd: $ff
	dec  c                                           ; $56de: $0d
	nop                                              ; $56df: $00
	ld   a, [bc]                                     ; $56e0: $0a
	inc  e                                           ; $56e1: $1c
	ld   [bc], a                                     ; $56e2: $02
	dec  b                                           ; $56e3: $05
	dec  b                                           ; $56e4: $05
	dec  e                                           ; $56e5: $1d
	ld   b, b                                        ; $56e6: $40
	ld   [de], a                                     ; $56e7: $12
	inc  bc                                          ; $56e8: $03
	ld   [de], a                                     ; $56e9: $12
	ld   bc, $2901                                   ; $56ea: $01 $01 $29
	nop                                              ; $56ed: $00
	ld   bc, $546b                                   ; $56ee: $01 $6b $54
	ld   [hl], l                                     ; $56f1: $75
	ld   h, a                                        ; $56f2: $67
	ld   a, h                                        ; $56f3: $7c
	sbc  a                                           ; $56f4: $9f
	dec  c                                           ; $56f5: $0d
	ld   a, b                                        ; $56f6: $78
	sub  a                                           ; $56f7: $97
	inc  b                                           ; $56f8: $04
	ld   d, h                                        ; $56f9: $54
	ld   a, c                                        ; $56fa: $79
	ld   d, d                                        ; $56fb: $52
	ld   d, d                                        ; $56fc: $52
	ld   [hl], l                                     ; $56fd: $75
	ld   h, a                                        ; $56fe: $67
	ld   e, a                                        ; $56ff: $5f
	ld   [hl], a                                     ; $5700: $77
	rst  $38                                         ; $5701: $ff
	rst  $38                                         ; $5702: $ff
	dec  c                                           ; $5703: $0d
	nop                                              ; $5704: $00
	ld   a, [bc]                                     ; $5705: $0a
	nop                                              ; $5706: $00
	rrca                                             ; $5707: $0f
	nop                                              ; $5708: $00
	ld   bc, $6a01                                   ; $5709: $01 $01 $6a
	add  b                                           ; $570c: $80
	sbc  [hl]                                        ; $570d: $9e
	ld   e, b                                        ; $570e: $58
	ld   [bc], a                                     ; $570f: $02
	add  b                                           ; $5710: $80
	ld   d, d                                        ; $5711: $52
	ld   h, l                                        ; $5712: $65
	adc  h                                           ; $5713: $8c
	ld   h, a                                        ; $5714: $67
	sbc  a                                           ; $5715: $9f
	dec  c                                           ; $5716: $0d
	nop                                              ; $5717: $00
	dec  b                                           ; $5718: $05
	add  b                                           ; $5719: $80
	dec  de                                          ; $571a: $1b
	ld   bc, $0001                                   ; $571b: $01 $01 $00
	ld   bc, $8d67                                   ; $571e: $01 $67 $8d
	sbc  d                                           ; $5721: $9a
	ld   h, e                                        ; $5722: $63
	and  c                                           ; $5723: $a1
	sbc  a                                           ; $5724: $9f
	dec  c                                           ; $5725: $0d
	nop                                              ; $5726: $00
	ld   a, [bc]                                     ; $5727: $0a
	inc  e                                           ; $5728: $1c
	ld   [bc], a                                     ; $5729: $02
	nop                                              ; $572a: $00
	nop                                              ; $572b: $00
	ld   bc, $599d                                   ; $572c: $01 $9d $59
	sbc  b                                           ; $572f: $98
	adc  h                                           ; $5730: $8c
	ld   h, l                                        ; $5731: $65
	ld   l, l                                        ; $5732: $6d
	sbc  a                                           ; $5733: $9f
	dec  c                                           ; $5734: $0d
	ld   h, l                                        ; $5735: $65
	ld   [hl], c                                     ; $5736: $71
	ld   e, c                                        ; $5737: $59
	sbc  b                                           ; $5738: $98
	ld   [bc], a                                     ; $5739: $02
	ld   a, d                                        ; $573a: $7a
	ld   d, [hl]                                     ; $573b: $56
	ld   [hl], h                                     ; $573c: $74
	ld   l, a                                        ; $573d: $6f
	sub  l                                           ; $573e: $95
	ld   d, h                                        ; $573f: $54
	ld   l, [hl]                                     ; $5740: $6e
	ld   d, d                                        ; $5741: $52
	ld   a, e                                        ; $5742: $7b
	sbc  a                                           ; $5743: $9f
	dec  c                                           ; $5744: $0d
	nop                                              ; $5745: $00
	ld   a, [bc]                                     ; $5746: $0a
	ld   bc, $688c                                   ; $5747: $01 $8c $68
	sbc  [hl]                                        ; $574a: $9e
	ld   e, b                                        ; $574b: $58
	inc  bc                                          ; $574c: $03
	ld   e, c                                        ; $574d: $59
	ld   [hl], l                                     ; $574e: $75
	ld   h, a                                        ; $574f: $67
	ld   e, d                                        ; $5750: $5a
	sbc  [hl]                                        ; $5751: $9e
	dec  c                                           ; $5752: $0d
	adc  h                                           ; $5753: $8c
	ld   l, a                                        ; $5754: $6f
	ld   e, d                                        ; $5755: $5a
	ld   [hl], c                                     ; $5756: $71
	ld   [hl], h                                     ; $5757: $74
	sub  b                                           ; $5758: $90
	ldh  [$ce], a                                    ; $5759: $e0 $ce
	db   $eb                                         ; $575b: $eb
	db   $ed                                         ; $575c: $ed
	inc  bc                                          ; $575d: $03
	ld   e, c                                        ; $575e: $59
	ld   a, l                                        ; $575f: $7d
	dec  c                                           ; $5760: $0d
	pop  bc                                          ; $5761: $c1
	db   $e3                                         ; $5762: $e3
	ld   [hl], l                                     ; $5763: $75
	ld   h, a                                        ; $5764: $67
	sbc  l                                           ; $5765: $9d
	sub  [hl]                                        ; $5766: $96
	sbc  a                                           ; $5767: $9f
	dec  c                                           ; $5768: $0d
	nop                                              ; $5769: $00
	ld   a, [bc]                                     ; $576a: $0a
	ld   bc, $5205                                   ; $576b: $01 $05 $52
	inc  bc                                          ; $576e: $03
	ld   e, c                                        ; $576f: $59
	ld   [hl], l                                     ; $5770: $75
	ld   d, b                                        ; $5771: $50
	sbc  c                                           ; $5772: $99
	ld   a, [bc]                                     ; $5773: $0a
	ld   [bc], a                                     ; $5774: $02
	inc  bc                                          ; $5775: $03
	ld   e, c                                        ; $5776: $59
	inc  b                                           ; $5777: $04
	ld   d, $03                                      ; $5778: $16 $03
	ld   e, c                                        ; $577a: $59
	ld   a, [bc]                                     ; $577b: $0a
	inc  bc                                          ; $577c: $03
	ld   a, h                                        ; $577d: $7c
	inc  b                                           ; $577e: $04
	ld   a, b                                        ; $577f: $78
	ld   e, d                                        ; $5780: $5a
	dec  c                                           ; $5781: $0d
	ld   e, b                                        ; $5782: $58
	inc  bc                                          ; $5783: $03
	jp   Jump_04f_7d79                               ; $5784: $c3 $79 $7d


	ld   [bc], a                                     ; $5787: $02
	ld   a, e                                        ; $5788: $7b
	ld   [hl], c                                     ; $5789: $71
	ld   [hl], h                                     ; $578a: $74
	ld   d, d                                        ; $578b: $52
	sbc  c                                           ; $578c: $99
	ld   a, h                                        ; $578d: $7c
	ld   [hl], l                                     ; $578e: $75
	ld   h, a                                        ; $578f: $67
	sbc  a                                           ; $5790: $9f
	dec  c                                           ; $5791: $0d
	ld   [hl], l                                     ; $5792: $75
	ld   h, a                                        ; $5793: $67
	ld   e, c                                        ; $5794: $59
	sub  a                                           ; $5795: $97
	inc  bc                                          ; $5796: $03
	ld   e, c                                        ; $5797: $59
	inc  b                                           ; $5798: $04
	ld   d, $03                                      ; $5799: $16 $03
	ld   e, c                                        ; $579b: $59
	and  b                                           ; $579c: $a0
	sbc  l                                           ; $579d: $9d
	ld   e, c                                        ; $579e: $59
	ld   h, l                                        ; $579f: $65
	adc  h                                           ; $57a0: $8c
	ld   h, a                                        ; $57a1: $67
	sbc  a                                           ; $57a2: $9f
	dec  c                                           ; $57a3: $0d
	nop                                              ; $57a4: $00
	ld   a, [bc]                                     ; $57a5: $0a
	ld   bc, $6803                                   ; $57a6: $01 $03 $68
	ld   a, c                                        ; $57a9: $79
	sbc  [hl]                                        ; $57aa: $9e
	ld   e, b                                        ; $57ab: $58
	inc  bc                                          ; $57ac: $03
	jp   $047c                                       ; $57ad: $c3 $7c $04


	sub  c                                           ; $57b0: $91
	and  b                                           ; $57b1: $a0
	inc  b                                           ; $57b2: $04
	ld   b, l                                        ; $57b3: $45
	sbc  d                                           ; $57b4: $9a
	sbc  c                                           ; $57b5: $99
	dec  c                                           ; $57b6: $0d
	inc  b                                           ; $57b7: $04
	db   $e4                                         ; $57b8: $e4
	ld   [bc], a                                     ; $57b9: $02
	ld   d, a                                        ; $57ba: $57
	ld   a, c                                        ; $57bb: $79
	ld   a, [bc]                                     ; $57bc: $0a
	ld   [bc], a                                     ; $57bd: $02
	ld   e, b                                        ; $57be: $58
	inc  b                                           ; $57bf: $04
	db   $ed                                         ; $57c0: $ed
	and  b                                           ; $57c1: $a0
	ld   l, e                                        ; $57c2: $6b
	ld   l, e                                        ; $57c3: $6b
	ld   e, h                                        ; $57c4: $5c
	dec  c                                           ; $57c5: $0d
	ld   d, b                                        ; $57c6: $50
	ld   l, l                                        ; $57c7: $6d
	ld   l, l                                        ; $57c8: $6d
	adc  a                                           ; $57c9: $8f
	adc  h                                           ; $57ca: $8c
	ld   h, a                                        ; $57cb: $67
	ld   a, [bc]                                     ; $57cc: $0a
	inc  bc                                          ; $57cd: $03
	ld   a, h                                        ; $57ce: $7c
	sbc  a                                           ; $57cf: $9f
	dec  c                                           ; $57d0: $0d
	nop                                              ; $57d1: $00
	ld   a, [bc]                                     ; $57d2: $0a
	ld   bc, $656b                                   ; $57d3: $01 $6b $65
	ld   [hl], h                                     ; $57d6: $74
	sbc  [hl]                                        ; $57d7: $9e
	inc  b                                           ; $57d8: $04
	db   $e4                                         ; $57d9: $e4
	ld   [bc], a                                     ; $57da: $02
	ld   d, a                                        ; $57db: $57
	ld   a, h                                        ; $57dc: $7c
	ld   e, b                                        ; $57dd: $58
	inc  b                                           ; $57de: $04
	db   $ed                                         ; $57df: $ed
	and  b                                           ; $57e0: $a0
	ld   h, a                                        ; $57e1: $67
	ld   [hl], h                                     ; $57e2: $74
	dec  c                                           ; $57e3: $0d
	ld   e, b                                        ; $57e4: $58
	inc  bc                                          ; $57e5: $03
	jp   $047c                                       ; $57e6: $c3 $7c $04


	sub  c                                           ; $57e9: $91
	and  b                                           ; $57ea: $a0
	inc  b                                           ; $57eb: $04
	ld   b, l                                        ; $57ec: $45
	sbc  d                                           ; $57ed: $9a
	adc  h                                           ; $57ee: $8c
	ld   h, a                                        ; $57ef: $67
	ld   a, h                                        ; $57f0: $7c
	sbc  a                                           ; $57f1: $9f
	dec  c                                           ; $57f2: $0d
	ld   a, [bc]                                     ; $57f3: $0a
	ld   [bc], a                                     ; $57f4: $02
	inc  b                                           ; $57f5: $04
	ld   b, l                                        ; $57f6: $45
	sbc  d                                           ; $57f7: $9a
	sbc  c                                           ; $57f8: $99
	dec  b                                           ; $57f9: $05
	ld   h, [hl]                                     ; $57fa: $66
	ld   a, l                                        ; $57fb: $7d
	inc  bc                                          ; $57fc: $03
	add  d                                           ; $57fd: $82
	inc  bc                                          ; $57fe: $03
	pop  bc                                          ; $57ff: $c1
	inc  b                                           ; $5800: $04
	sbc  [hl]                                        ; $5801: $9e
	ld   a, [bc]                                     ; $5802: $0a
	inc  bc                                          ; $5803: $03
	ld   [hl], l                                     ; $5804: $75
	ld   h, a                                        ; $5805: $67
	sbc  l                                           ; $5806: $9d
	sbc  a                                           ; $5807: $9f
	dec  c                                           ; $5808: $0d
	nop                                              ; $5809: $00
	ld   a, [bc]                                     ; $580a: $0a
	ld   bc, $5063                                   ; $580b: $01 $63 $50
	sbc  [hl]                                        ; $580e: $9e
	adc  h                                           ; $580f: $8c
	ld   l, b                                        ; $5810: $68
	ld   h, c                                        ; $5811: $61
	ld   h, c                                        ; $5812: $61
	adc  h                                           ; $5813: $8c
	ld   [hl], l                                     ; $5814: $75
	and  b                                           ; $5815: $a0
	dec  c                                           ; $5816: $0d
	ld   e, b                                        ; $5817: $58
	ld   h, e                                        ; $5818: $63
	sub  a                                           ; $5819: $97
	ld   d, d                                        ; $581a: $52
	ld   h, l                                        ; $581b: $65
	adc  h                                           ; $581c: $8c
	ld   h, a                                        ; $581d: $67
	sbc  l                                           ; $581e: $9d
	sub  [hl]                                        ; $581f: $96
	sbc  a                                           ; $5820: $9f
	dec  c                                           ; $5821: $0d
	nop                                              ; $5822: $00
	ld   a, [bc]                                     ; $5823: $0a
	dec  c                                           ; $5824: $0d
	nop                                              ; $5825: $00
	nop                                              ; $5826: $00
	rrca                                             ; $5827: $0f
	nop                                              ; $5828: $00
	ld   bc, $0b0c                                   ; $5829: $01 $0c $0b
	inc  e                                           ; $582c: $1c
	ld   [bc], a                                     ; $582d: $02
	nop                                              ; $582e: $00
	nop                                              ; $582f: $00
	ld   bc, $5992                                   ; $5830: $01 $92 $59
	and  c                                           ; $5833: $a1
	ld   a, c                                        ; $5834: $79
	inc  b                                           ; $5835: $04
	ld   b, l                                        ; $5836: $45
	sbc  d                                           ; $5837: $9a
	ld   [hl], h                                     ; $5838: $74
	sbc  l                                           ; $5839: $9d
	ld   e, c                                        ; $583a: $59
	ld   h, a                                        ; $583b: $67
	ld   a, h                                        ; $583c: $7c
	ld   a, l                                        ; $583d: $7d
	dec  c                                           ; $583e: $0d
	inc  b                                           ; $583f: $04
	ld   c, c                                        ; $5840: $49
	ld   [hl], l                                     ; $5841: $75
	ld   h, l                                        ; $5842: $65
	sub  l                                           ; $5843: $95
	ld   d, h                                        ; $5844: $54
	ld   e, c                                        ; $5845: $59
	ld   sp, hl                                      ; $5846: $f9
	dec  c                                           ; $5847: $0d
	nop                                              ; $5848: $00
	ld   a, [bc]                                     ; $5849: $0a
	add  hl, de                                      ; $584a: $19
	dec  b                                           ; $584b: $05
	inc  bc                                          ; $584c: $03
	inc  bc                                          ; $584d: $03
	ld   e, c                                        ; $584e: $59
	inc  b                                           ; $584f: $04
	ld   d, $03                                      ; $5850: $16 $03
	ld   e, c                                        ; $5852: $59
	nop                                              ; $5853: $00
	nop                                              ; $5854: $00
	ldh  [$ce], a                                    ; $5855: $e0 $ce
	db   $eb                                         ; $5857: $eb
	db   $ed                                         ; $5858: $ed
	inc  bc                                          ; $5859: $03
	ld   e, c                                        ; $585a: $59
	nop                                              ; $585b: $00
	ld   bc, $9566                                   ; $585c: $01 $66 $95
	ld   d, h                                        ; $585f: $54
	sbc  b                                           ; $5860: $98
	sub  e                                           ; $5861: $93
	ld   d, h                                        ; $5862: $54
	inc  bc                                          ; $5863: $03
	ld   e, c                                        ; $5864: $59
	nop                                              ; $5865: $00
	ld   [bc], a                                     ; $5866: $02
	rlca                                             ; $5867: $07
	ld   e, c                                        ; $5868: $59
	ld   [bc], a                                     ; $5869: $02
	ld   [bc], a                                     ; $586a: $02
	inc  bc                                          ; $586b: $03
	ld   bc, $2000                                   ; $586c: $01 $00 $20
	nop                                              ; $586f: $00
	rlca                                             ; $5870: $07
	sbc  a                                           ; $5871: $9f
	ld   [bc], a                                     ; $5872: $02
	ld   [bc], a                                     ; $5873: $02
	inc  bc                                          ; $5874: $03
	ld   bc, $2001                                   ; $5875: $01 $01 $20
	nop                                              ; $5878: $00
	rlca                                             ; $5879: $07
	push af                                          ; $587a: $f5
	ld   [bc], a                                     ; $587b: $02
	ld   [bc], a                                     ; $587c: $02
	inc  bc                                          ; $587d: $03
	ld   bc, $2002                                   ; $587e: $01 $02 $20
	nop                                              ; $5881: $00
	ld   b, $4e                                      ; $5882: $06 $4e
	inc  bc                                          ; $5884: $03
	rrca                                             ; $5885: $0f
	nop                                              ; $5886: $00
	ld   bc, $0301                                   ; $5887: $01 $01 $03
	ld   e, c                                        ; $588a: $59
	inc  b                                           ; $588b: $04
	ld   d, $03                                      ; $588c: $16 $03
	ld   e, c                                        ; $588e: $59
	ld   [hl], l                                     ; $588f: $75
	ld   h, a                                        ; $5890: $67
	sbc  a                                           ; $5891: $9f
	dec  c                                           ; $5892: $0d
	dec  b                                           ; $5893: $05
	ld   d, d                                        ; $5894: $52
	inc  bc                                          ; $5895: $03
	ld   e, c                                        ; $5896: $59
	ld   a, h                                        ; $5897: $7c
	inc  b                                           ; $5898: $04
	ld   a, b                                        ; $5899: $78
	ld   e, d                                        ; $589a: $5a
	ld   e, b                                        ; $589b: $58
	inc  bc                                          ; $589c: $03
	jp   Jump_04f_7d79                               ; $589d: $c3 $79 $7d


	ld   [bc], a                                     ; $58a0: $02
	ld   a, e                                        ; $58a1: $7b
	ld   [hl], c                                     ; $58a2: $71
	ld   [hl], h                                     ; $58a3: $74
	dec  c                                           ; $58a4: $0d
	ld   d, d                                        ; $58a5: $52
	adc  h                                           ; $58a6: $8c
	ld   h, a                                        ; $58a7: $67
	ld   e, c                                        ; $58a8: $59
	sub  a                                           ; $58a9: $97
	sbc  a                                           ; $58aa: $9f
	dec  c                                           ; $58ab: $0d
	nop                                              ; $58ac: $00
	ld   a, [bc]                                     ; $58ad: $0a
	inc  e                                           ; $58ae: $1c
	ld   [bc], a                                     ; $58af: $02
	ld   bc, $0101                                   ; $58b0: $01 $01 $01
	ld   l, e                                        ; $58b3: $6b
	ld   a, h                                        ; $58b4: $7c
	halt                                             ; $58b5: $76
	ld   e, b                                        ; $58b6: $58
	sbc  b                                           ; $58b7: $98
	ld   [hl], l                                     ; $58b8: $75
	ld   h, a                                        ; $58b9: $67
	sbc  l                                           ; $58ba: $9d
	sbc  a                                           ; $58bb: $9f
	dec  c                                           ; $58bc: $0d
	nop                                              ; $58bd: $00
	ld   a, [bc]                                     ; $58be: $0a
	dec  b                                           ; $58bf: $05
	ld   b, b                                        ; $58c0: $40
	rst  $38                                         ; $58c1: $ff
	inc  bc                                          ; $58c2: $03
	rst  $38                                         ; $58c3: $ff
	ld   bc, $2801                                   ; $58c4: $01 $01 $28
	nop                                              ; $58c7: $00
	ld   b, $80                                      ; $58c8: $06 $80
	inc  bc                                          ; $58ca: $03
	rrca                                             ; $58cb: $0f
	nop                                              ; $58cc: $00
	ld   bc, $e001                                   ; $58cd: $01 $01 $e0
	adc  $eb                                         ; $58d0: $ce $eb
	db   $ed                                         ; $58d2: $ed
	inc  bc                                          ; $58d3: $03
	ld   e, c                                        ; $58d4: $59
	ld   [hl], l                                     ; $58d5: $75
	ld   h, a                                        ; $58d6: $67
	sbc  a                                           ; $58d7: $9f
	dec  c                                           ; $58d8: $0d
	ld   a, b                                        ; $58d9: $78
	and  c                                           ; $58da: $a1
	ld   [hl], h                                     ; $58db: $74
	ld   [hl], c                                     ; $58dc: $71
	ld   l, l                                        ; $58dd: $6d
	ld   [hl], c                                     ; $58de: $71
	ld   [hl], h                                     ; $58df: $74
	ldh  [$ce], a                                    ; $58e0: $e0 $ce
	db   $eb                                         ; $58e2: $eb
	db   $ed                                         ; $58e3: $ed
	dec  c                                           ; $58e4: $0d
	ld   [hl], l                                     ; $58e5: $75
	ld   h, a                                        ; $58e6: $67
	ld   e, c                                        ; $58e7: $59
	sub  a                                           ; $58e8: $97
	sbc  a                                           ; $58e9: $9f
	dec  c                                           ; $58ea: $0d
	nop                                              ; $58eb: $00
	ld   a, [bc]                                     ; $58ec: $0a
	inc  e                                           ; $58ed: $1c
	ld   [bc], a                                     ; $58ee: $02
	rlca                                             ; $58ef: $07
	rlca                                             ; $58f0: $07
	ld   bc, $5a6f                                   ; $58f1: $01 $6f $5a
	ld   d, d                                        ; $58f4: $52
	adc  h                                           ; $58f5: $8c
	ld   h, a                                        ; $58f6: $67
	sbc  l                                           ; $58f7: $9d
	sbc  a                                           ; $58f8: $9f
	inc  bc                                          ; $58f9: $03
	ld   e, c                                        ; $58fa: $59
	inc  b                                           ; $58fb: $04
	ld   d, $03                                      ; $58fc: $16 $03
	ld   e, c                                        ; $58fe: $59
	ld   [hl], l                                     ; $58ff: $75
	ld   h, a                                        ; $5900: $67
	sbc  a                                           ; $5901: $9f
	dec  c                                           ; $5902: $0d
	dec  b                                           ; $5903: $05
	ld   d, d                                        ; $5904: $52
	inc  bc                                          ; $5905: $03
	ld   e, c                                        ; $5906: $59
	ld   a, h                                        ; $5907: $7c
	inc  b                                           ; $5908: $04
	ld   a, b                                        ; $5909: $78
	ld   e, d                                        ; $590a: $5a
	ld   e, b                                        ; $590b: $58
	inc  bc                                          ; $590c: $03
	jp   Jump_04f_7d79                               ; $590d: $c3 $79 $7d


	ld   [bc], a                                     ; $5910: $02
	ld   a, e                                        ; $5911: $7b
	ld   [hl], c                                     ; $5912: $71
	ld   [hl], h                                     ; $5913: $74
	dec  c                                           ; $5914: $0d
	ld   d, d                                        ; $5915: $52
	adc  h                                           ; $5916: $8c
	ld   h, a                                        ; $5917: $67
	ld   e, c                                        ; $5918: $59
	sub  a                                           ; $5919: $97
	sbc  a                                           ; $591a: $9f
	dec  c                                           ; $591b: $0d
	nop                                              ; $591c: $00
	ld   a, [bc]                                     ; $591d: $0a
	ld   b, $80                                      ; $591e: $06 $80
	inc  bc                                          ; $5920: $03
	rrca                                             ; $5921: $0f
	nop                                              ; $5922: $00
	ld   bc, $6601                                   ; $5923: $01 $01 $66
	sub  l                                           ; $5926: $95
	ld   d, h                                        ; $5927: $54
	sbc  b                                           ; $5928: $98
	sub  e                                           ; $5929: $93
	ld   d, h                                        ; $592a: $54
	inc  bc                                          ; $592b: $03
	ld   e, c                                        ; $592c: $59
	ld   [hl], l                                     ; $592d: $75
	ld   h, a                                        ; $592e: $67
	sbc  a                                           ; $592f: $9f
	dec  c                                           ; $5930: $0d
	inc  b                                           ; $5931: $04
	and  b                                           ; $5932: $a0
	dec  b                                           ; $5933: $05
	ccf                                              ; $5934: $3f
	inc  b                                           ; $5935: $04
	sub  d                                           ; $5936: $92
	ld   e, d                                        ; $5937: $5a
	ld   a, b                                        ; $5938: $78
	ld   d, d                                        ; $5939: $52
	ld   e, e                                        ; $593a: $5b
	sbc  d                                           ; $593b: $9a
	ld   d, d                                        ; $593c: $52
	ld   a, b                                        ; $593d: $78
	inc  bc                                          ; $593e: $03
	ld   e, c                                        ; $593f: $59
	ld   [hl], l                                     ; $5940: $75
	ld   h, a                                        ; $5941: $67
	sbc  a                                           ; $5942: $9f
	dec  c                                           ; $5943: $0d
	nop                                              ; $5944: $00
	ld   a, [bc]                                     ; $5945: $0a
	inc  e                                           ; $5946: $1c
	ld   [bc], a                                     ; $5947: $02
	rlca                                             ; $5948: $07
	rlca                                             ; $5949: $07
	ld   bc, $5a6f                                   ; $594a: $01 $6f $5a
	ld   d, d                                        ; $594d: $52
	adc  h                                           ; $594e: $8c
	ld   h, a                                        ; $594f: $67
	sbc  l                                           ; $5950: $9d
	sbc  a                                           ; $5951: $9f
	inc  bc                                          ; $5952: $03
	ld   e, c                                        ; $5953: $59
	inc  b                                           ; $5954: $04
	ld   d, $03                                      ; $5955: $16 $03
	ld   e, c                                        ; $5957: $59
	ld   [hl], l                                     ; $5958: $75
	ld   h, a                                        ; $5959: $67
	sbc  a                                           ; $595a: $9f
	dec  c                                           ; $595b: $0d
	dec  b                                           ; $595c: $05
	ld   d, d                                        ; $595d: $52
	inc  bc                                          ; $595e: $03
	ld   e, c                                        ; $595f: $59
	ld   a, h                                        ; $5960: $7c
	inc  b                                           ; $5961: $04
	ld   a, b                                        ; $5962: $78
	ld   e, d                                        ; $5963: $5a
	ld   e, b                                        ; $5964: $58
	inc  bc                                          ; $5965: $03
	jp   Jump_04f_7d79                               ; $5966: $c3 $79 $7d


	ld   [bc], a                                     ; $5969: $02
	ld   a, e                                        ; $596a: $7b
	ld   [hl], c                                     ; $596b: $71
	ld   [hl], h                                     ; $596c: $74
	dec  c                                           ; $596d: $0d
	ld   d, d                                        ; $596e: $52
	adc  h                                           ; $596f: $8c
	ld   h, a                                        ; $5970: $67
	ld   e, c                                        ; $5971: $59
	sub  a                                           ; $5972: $97
	sbc  a                                           ; $5973: $9f
	dec  c                                           ; $5974: $0d
	nop                                              ; $5975: $00
	ld   a, [bc]                                     ; $5976: $0a
	ld   b, $80                                      ; $5977: $06 $80
	inc  bc                                          ; $5979: $03
	inc  e                                           ; $597a: $1c
	ld   [bc], a                                     ; $597b: $02
	nop                                              ; $597c: $00
	nop                                              ; $597d: $00
	ld   bc, $4a03                                   ; $597e: $01 $03 $4a
	ld   [bc], a                                     ; $5981: $02
	or   h                                           ; $5982: $b4
	ld   a, l                                        ; $5983: $7d
	sbc  [hl]                                        ; $5984: $9e
	inc  bc                                          ; $5985: $03
	ld   e, c                                        ; $5986: $59
	inc  b                                           ; $5987: $04
	ld   d, $03                                      ; $5988: $16 $03
	ld   e, c                                        ; $598a: $59
	ld   [hl], l                                     ; $598b: $75
	ld   h, a                                        ; $598c: $67
	sbc  l                                           ; $598d: $9d
	sbc  a                                           ; $598e: $9f
	dec  c                                           ; $598f: $0d
	ld   e, b                                        ; $5990: $58
	inc  bc                                          ; $5991: $03
	jp   Jump_04f_7d79                               ; $5992: $c3 $79 $7d


	ld   [bc], a                                     ; $5995: $02
	ld   a, e                                        ; $5996: $7b
	ld   [hl], c                                     ; $5997: $71
	ld   [hl], h                                     ; $5998: $74
	ld   d, d                                        ; $5999: $52
	sbc  c                                           ; $599a: $99
	ld   a, h                                        ; $599b: $7c
	ld   a, l                                        ; $599c: $7d
	dec  b                                           ; $599d: $05
	ld   d, d                                        ; $599e: $52
	inc  bc                                          ; $599f: $03
	ld   e, c                                        ; $59a0: $59
	dec  c                                           ; $59a1: $0d
	ld   a, b                                        ; $59a2: $78
	ld   a, h                                        ; $59a3: $7c
	ld   [hl], l                                     ; $59a4: $75
	ld   h, a                                        ; $59a5: $67
	sbc  l                                           ; $59a6: $9d
	sub  [hl]                                        ; $59a7: $96
	sbc  a                                           ; $59a8: $9f
	dec  c                                           ; $59a9: $0d
	nop                                              ; $59aa: $00
	ld   a, [bc]                                     ; $59ab: $0a
	inc  e                                           ; $59ac: $1c
	ld   [bc], a                                     ; $59ad: $02
	nop                                              ; $59ae: $00
	nop                                              ; $59af: $00
	ld   bc, $6803                                   ; $59b0: $01 $03 $68
	ld   a, c                                        ; $59b3: $79
	sbc  [hl]                                        ; $59b4: $9e
	ld   e, b                                        ; $59b5: $58
	inc  bc                                          ; $59b6: $03
	jp   $047c                                       ; $59b7: $c3 $7c $04


	sub  c                                           ; $59ba: $91
	and  b                                           ; $59bb: $a0
	inc  b                                           ; $59bc: $04
	ld   b, l                                        ; $59bd: $45
	sbc  d                                           ; $59be: $9a
	sbc  c                                           ; $59bf: $99
	dec  c                                           ; $59c0: $0d
	inc  b                                           ; $59c1: $04
	db   $e4                                         ; $59c2: $e4
	ld   [bc], a                                     ; $59c3: $02
	ld   d, a                                        ; $59c4: $57
	ld   a, l                                        ; $59c5: $7d
	ld   [hl], a                                     ; $59c6: $77
	ld   a, h                                        ; $59c7: $7c
	sub  [hl]                                        ; $59c8: $96
	ld   d, h                                        ; $59c9: $54
	ld   a, c                                        ; $59ca: $79
	ld   h, l                                        ; $59cb: $65
	adc  h                                           ; $59cc: $8c
	ld   h, a                                        ; $59cd: $67
	ld   e, c                                        ; $59ce: $59
	ld   sp, hl                                      ; $59cf: $f9
	dec  c                                           ; $59d0: $0d
	nop                                              ; $59d1: $00
	ld   a, [bc]                                     ; $59d2: $0a
	add  hl, de                                      ; $59d3: $19
	dec  b                                           ; $59d4: $05
	inc  bc                                          ; $59d5: $03
	ld   e, b                                        ; $59d6: $58
	inc  b                                           ; $59d7: $04
	db   $ed                                         ; $59d8: $ed
	ld   [hl], l                                     ; $59d9: $75
	ld   d, b                                        ; $59da: $50
	ld   l, l                                        ; $59db: $6d
	ld   l, l                                        ; $59dc: $6d
	adc  a                                           ; $59dd: $8f
	sbc  c                                           ; $59de: $99
	nop                                              ; $59df: $00
	nop                                              ; $59e0: $00
	inc  b                                           ; $59e1: $04
	db   $fc                                         ; $59e2: $fc
	ld   l, l                                        ; $59e3: $6d
	ld   e, l                                        ; $59e4: $5d
	add  b                                           ; $59e5: $80
	sub  d                                           ; $59e6: $92
	ld   h, l                                        ; $59e7: $65
	ld   [hl], h                                     ; $59e8: $74
	ld   e, b                                        ; $59e9: $58
	ld   e, l                                        ; $59ea: $5d
	nop                                              ; $59eb: $00
	ld   bc, $eeae                                   ; $59ec: $01 $ae $ee
	and  l                                           ; $59ef: $a5
	ld   a, c                                        ; $59f0: $79
	inc  bc                                          ; $59f1: $03
	ld   [hl], e                                     ; $59f2: $73
	ld   [hl], c                                     ; $59f3: $71
	ld   [hl], h                                     ; $59f4: $74
	ld   e, b                                        ; $59f5: $58
	ld   e, l                                        ; $59f6: $5d
	nop                                              ; $59f7: $00
	ld   [bc], a                                     ; $59f8: $02
	rlca                                             ; $59f9: $07
	db   $eb                                         ; $59fa: $eb
	inc  bc                                          ; $59fb: $03
	ld   [bc], a                                     ; $59fc: $02
	inc  bc                                          ; $59fd: $03
	ld   bc, $2000                                   ; $59fe: $01 $00 $20
	nop                                              ; $5a01: $00
	rlca                                             ; $5a02: $07
	ld   a, [de]                                     ; $5a03: $1a
	inc  b                                           ; $5a04: $04
	ld   [bc], a                                     ; $5a05: $02
	inc  bc                                          ; $5a06: $03
	ld   bc, $2001                                   ; $5a07: $01 $01 $20
	nop                                              ; $5a0a: $00
	rlca                                             ; $5a0b: $07
	ld   h, h                                        ; $5a0c: $64
	inc  b                                           ; $5a0d: $04
	ld   [bc], a                                     ; $5a0e: $02
	inc  bc                                          ; $5a0f: $03
	ld   bc, $2002                                   ; $5a10: $01 $02 $20
	nop                                              ; $5a13: $00
	ld   b, $af                                      ; $5a14: $06 $af
	inc  b                                           ; $5a16: $04
	rrca                                             ; $5a17: $0f
	nop                                              ; $5a18: $00
	ld   bc, $5801                                   ; $5a19: $01 $01 $58
	inc  b                                           ; $5a1c: $04
	db   $ed                                         ; $5a1d: $ed
	ld   [hl], l                                     ; $5a1e: $75
	ld   d, b                                        ; $5a1f: $50
	ld   l, l                                        ; $5a20: $6d
	ld   l, l                                        ; $5a21: $6d
	adc  a                                           ; $5a22: $8f
	ld   [hl], h                                     ; $5a23: $74
	ld   e, b                                        ; $5a24: $58
	ld   e, e                                        ; $5a25: $5b
	adc  h                                           ; $5a26: $8c
	ld   h, a                                        ; $5a27: $67
	sbc  a                                           ; $5a28: $9f
	dec  c                                           ; $5a29: $0d
	nop                                              ; $5a2a: $00
	ld   a, [bc]                                     ; $5a2b: $0a
	inc  e                                           ; $5a2c: $1c
	ld   [bc], a                                     ; $5a2d: $02
	ld   bc, $0101                                   ; $5a2e: $01 $01 $01
	ld   l, e                                        ; $5a31: $6b
	ld   d, h                                        ; $5a32: $54
	ld   [hl], l                                     ; $5a33: $75
	ld   h, a                                        ; $5a34: $67
	sbc  l                                           ; $5a35: $9d
	sbc  a                                           ; $5a36: $9f
	dec  c                                           ; $5a37: $0d
	nop                                              ; $5a38: $00
	ld   a, [bc]                                     ; $5a39: $0a
	dec  b                                           ; $5a3a: $05
	ld   b, b                                        ; $5a3b: $40
	rst  $38                                         ; $5a3c: $ff
	inc  bc                                          ; $5a3d: $03
	rst  $38                                         ; $5a3e: $ff
	ld   bc, $2801                                   ; $5a3f: $01 $01 $28
	nop                                              ; $5a42: $00
	ld   b, $db                                      ; $5a43: $06 $db
	inc  b                                           ; $5a45: $04
	rrca                                             ; $5a46: $0f
	nop                                              ; $5a47: $00
	ld   bc, $ae01                                   ; $5a48: $01 $01 $ae
	push af                                          ; $5a4b: $f5
	xor  [hl]                                        ; $5a4c: $ae
	push af                                          ; $5a4d: $f5
	ld   a, c                                        ; $5a4e: $79
	inc  b                                           ; $5a4f: $04
	db   $fc                                         ; $5a50: $fc
	sub  d                                           ; $5a51: $92
	ld   h, l                                        ; $5a52: $65
	ld   [hl], h                                     ; $5a53: $74
	dec  c                                           ; $5a54: $0d
	ld   e, b                                        ; $5a55: $58
	ld   e, e                                        ; $5a56: $5b
	adc  h                                           ; $5a57: $8c
	ld   h, a                                        ; $5a58: $67
	sbc  a                                           ; $5a59: $9f
	dec  c                                           ; $5a5a: $0d
	nop                                              ; $5a5b: $00
	ld   a, [bc]                                     ; $5a5c: $0a
	inc  e                                           ; $5a5d: $1c
	ld   [bc], a                                     ; $5a5e: $02
	rlca                                             ; $5a5f: $07
	rlca                                             ; $5a60: $07
	ld   bc, $a16b                                   ; $5a61: $01 $6b $a1
	ld   a, b                                        ; $5a64: $78
	ld   h, c                                        ; $5a65: $61
	halt                                             ; $5a66: $76
	ld   h, l                                        ; $5a67: $65
	ld   l, l                                        ; $5a68: $6d
	sub  a                                           ; $5a69: $97
	sbc  [hl]                                        ; $5a6a: $9e
	ld   e, b                                        ; $5a6b: $58
	inc  bc                                          ; $5a6c: $03
	jp   $047c                                       ; $5a6d: $c3 $7c $04


	sub  c                                           ; $5a70: $91
	ld   e, d                                        ; $5a71: $5a
	dec  c                                           ; $5a72: $0d
	ld   [bc], a                                     ; $5a73: $02
	adc  b                                           ; $5a74: $88
	ld   e, c                                        ; $5a75: $59
	ld   a, b                                        ; $5a76: $78
	ld   e, l                                        ; $5a77: $5d
	ld   a, b                                        ; $5a78: $78
	sbc  b                                           ; $5a79: $98
	adc  h                                           ; $5a7a: $8c
	ld   h, a                                        ; $5a7b: $67
	sbc  l                                           ; $5a7c: $9d
	sbc  a                                           ; $5a7d: $9f
	dec  c                                           ; $5a7e: $0d
	ld   d, b                                        ; $5a7f: $50
	ld   l, l                                        ; $5a80: $6d
	ld   l, l                                        ; $5a81: $6d
	adc  a                                           ; $5a82: $8f
	sbc  c                                           ; $5a83: $99
	ld   a, h                                        ; $5a84: $7c
	ld   [hl], l                                     ; $5a85: $75
	ld   h, a                                        ; $5a86: $67
	sbc  l                                           ; $5a87: $9d
	sub  [hl]                                        ; $5a88: $96
	sbc  a                                           ; $5a89: $9f
	dec  c                                           ; $5a8a: $0d
	nop                                              ; $5a8b: $00
	ld   a, [bc]                                     ; $5a8c: $0a
	ld   b, $db                                      ; $5a8d: $06 $db
	inc  b                                           ; $5a8f: $04
	rrca                                             ; $5a90: $0f
	nop                                              ; $5a91: $00
	ld   bc, $5b01                                   ; $5a92: $01 $01 $5b
	sbc  d                                           ; $5a95: $9a
	ld   d, d                                        ; $5a96: $52
	ld   a, c                                        ; $5a97: $79
	inc  bc                                          ; $5a98: $03
	ld   [hl], e                                     ; $5a99: $73
	ld   [hl], c                                     ; $5a9a: $71
	ld   [hl], h                                     ; $5a9b: $74
	ld   e, b                                        ; $5a9c: $58
	ld   e, e                                        ; $5a9d: $5b
	adc  h                                           ; $5a9e: $8c
	ld   h, a                                        ; $5a9f: $67
	sbc  a                                           ; $5aa0: $9f
	dec  c                                           ; $5aa1: $0d
	nop                                              ; $5aa2: $00
	ld   a, [bc]                                     ; $5aa3: $0a
	inc  e                                           ; $5aa4: $1c
	ld   [bc], a                                     ; $5aa5: $02
	nop                                              ; $5aa6: $00
	nop                                              ; $5aa7: $00
	ld   bc, $9a6b                                   ; $5aa8: $01 $6b $9a
	ld   a, l                                        ; $5aab: $7d
	dec  b                                           ; $5aac: $05
	xor  c                                           ; $5aad: $a9
	inc  b                                           ; $5aae: $04
	adc  a                                           ; $5aaf: $8f
	inc  b                                           ; $5ab0: $04
	jr   nz, jr_04f_5b2b                             ; $5ab1: $20 $78

	ld   h, c                                        ; $5ab3: $61
	halt                                             ; $5ab4: $76
	ld   [hl], l                                     ; $5ab5: $75
	ld   h, a                                        ; $5ab6: $67
	sbc  l                                           ; $5ab7: $9d
	sbc  a                                           ; $5ab8: $9f
	dec  c                                           ; $5ab9: $0d
	ld   [hl], l                                     ; $5aba: $75
	sub  b                                           ; $5abb: $90
	sbc  [hl]                                        ; $5abc: $9e
	ld   [bc], a                                     ; $5abd: $02
	and  l                                           ; $5abe: $a5
	ld   a, h                                        ; $5abf: $7c
	inc  b                                           ; $5ac0: $04
	ld   a, d                                        ; $5ac1: $7a
	ld   [bc], a                                     ; $5ac2: $02
	ld   a, e                                        ; $5ac3: $7b
	ld   a, h                                        ; $5ac4: $7c
	inc  bc                                          ; $5ac5: $03
	ld   c, d                                        ; $5ac6: $4a
	ld   [bc], a                                     ; $5ac7: $02
	or   h                                           ; $5ac8: $b4
	ld   a, l                                        ; $5ac9: $7d
	dec  c                                           ; $5aca: $0d
	ld   d, b                                        ; $5acb: $50
	ld   l, l                                        ; $5acc: $6d
	ld   l, l                                        ; $5acd: $6d
	adc  a                                           ; $5ace: $8f
	sbc  c                                           ; $5acf: $99
	sbc  [hl]                                        ; $5ad0: $9e
	ld   [hl], l                                     ; $5ad1: $75
	ld   h, a                                        ; $5ad2: $67
	sbc  l                                           ; $5ad3: $9d
	sbc  a                                           ; $5ad4: $9f
	dec  c                                           ; $5ad5: $0d
	nop                                              ; $5ad6: $00
	ld   a, [bc]                                     ; $5ad7: $0a
	ld   b, $db                                      ; $5ad8: $06 $db
	inc  b                                           ; $5ada: $04
	inc  e                                           ; $5adb: $1c
	ld   [bc], a                                     ; $5adc: $02
	nop                                              ; $5add: $00
	nop                                              ; $5ade: $00
	ld   bc, $4a03                                   ; $5adf: $01 $03 $4a
	ld   [bc], a                                     ; $5ae2: $02
	or   h                                           ; $5ae3: $b4
	ld   a, l                                        ; $5ae4: $7d
	sbc  [hl]                                        ; $5ae5: $9e
	ld   d, b                                        ; $5ae6: $50
	ld   l, l                                        ; $5ae7: $6d
	ld   l, l                                        ; $5ae8: $6d
	adc  a                                           ; $5ae9: $8f
	sbc  c                                           ; $5aea: $99
	ld   [hl], l                                     ; $5aeb: $75
	ld   h, a                                        ; $5aec: $67
	sbc  l                                           ; $5aed: $9d
	sbc  a                                           ; $5aee: $9f
	dec  c                                           ; $5aef: $0d
	ld   [bc], a                                     ; $5af0: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5af1: $cf
	inc  bc                                          ; $5af2: $03
	jp   $637d                                       ; $5af3: $c3 $7d $63


	adc  a                                           ; $5af6: $8f
	sbc  c                                           ; $5af7: $99
	halt                                             ; $5af8: $76
	ld   [bc], a                                     ; $5af9: $02
	sub  h                                           ; $5afa: $94
	ld   e, l                                        ; $5afb: $5d
	ld   a, b                                        ; $5afc: $78
	sbc  b                                           ; $5afd: $98
	adc  h                                           ; $5afe: $8c
	ld   h, a                                        ; $5aff: $67
	dec  c                                           ; $5b00: $0d
	ld   e, c                                        ; $5b01: $59
	sub  a                                           ; $5b02: $97
	sbc  a                                           ; $5b03: $9f
	dec  c                                           ; $5b04: $0d
	nop                                              ; $5b05: $00
	ld   a, [bc]                                     ; $5b06: $0a
	inc  e                                           ; $5b07: $1c
	ld   [bc], a                                     ; $5b08: $02
	nop                                              ; $5b09: $00
	nop                                              ; $5b0a: $00
	ld   bc, $7d75                                   ; $5b0b: $01 $75 $7d
	inc  bc                                          ; $5b0e: $03
	ld   l, b                                        ; $5b0f: $68
	ld   a, c                                        ; $5b10: $79
	sbc  [hl]                                        ; $5b11: $9e
	inc  b                                           ; $5b12: $04
	db   $e4                                         ; $5b13: $e4
	ld   [bc], a                                     ; $5b14: $02
	ld   d, a                                        ; $5b15: $57
	ld   a, c                                        ; $5b16: $79
	ld   e, b                                        ; $5b17: $58
	inc  bc                                          ; $5b18: $03
	jp   $047c                                       ; $5b19: $c3 $7c $04


	sub  c                                           ; $5b1c: $91
	and  b                                           ; $5b1d: $a0
	dec  c                                           ; $5b1e: $0d
	inc  b                                           ; $5b1f: $04
	ld   b, l                                        ; $5b20: $45
	sbc  d                                           ; $5b21: $9a
	adc  h                                           ; $5b22: $8c
	ld   h, a                                        ; $5b23: $67
	sbc  a                                           ; $5b24: $9f
	dec  c                                           ; $5b25: $0d
	inc  bc                                          ; $5b26: $03
	ld   l, $03                                      ; $5b27: $2e $03
	pop  hl                                          ; $5b29: $e1
	ld   a, l                                        ; $5b2a: $7d

jr_04f_5b2b:
	ld   [hl], a                                     ; $5b2b: $77
	sbc  d                                           ; $5b2c: $9a
	ld   e, l                                        ; $5b2d: $5d
	sub  a                                           ; $5b2e: $97
	ld   d, d                                        ; $5b2f: $52
	inc  b                                           ; $5b30: $04
	ld   b, l                                        ; $5b31: $45
	sbc  d                                           ; $5b32: $9a
	adc  h                                           ; $5b33: $8c
	ld   h, a                                        ; $5b34: $67
	ld   e, c                                        ; $5b35: $59
	ld   sp, hl                                      ; $5b36: $f9
	dec  c                                           ; $5b37: $0d
	nop                                              ; $5b38: $00
	ld   a, [bc]                                     ; $5b39: $0a
	add  hl, de                                      ; $5b3a: $19
	dec  b                                           ; $5b3b: $05
	inc  bc                                          ; $5b3c: $03
	inc  bc                                          ; $5b3d: $03
	add  d                                           ; $5b3e: $82
	inc  bc                                          ; $5b3f: $03
	pop  bc                                          ; $5b40: $c1
	inc  b                                           ; $5b41: $04
	sbc  [hl]                                        ; $5b42: $9e
	nop                                              ; $5b43: $00
	nop                                              ; $5b44: $00
	inc  bc                                          ; $5b45: $03
	add  d                                           ; $5b46: $82
	inc  bc                                          ; $5b47: $03
	pop  bc                                          ; $5b48: $c1
	inc  b                                           ; $5b49: $04
	sbc  [hl]                                        ; $5b4a: $9e
	ld   bc, $1209                                   ; $5b4b: $01 $09 $12
	dec  b                                           ; $5b4e: $05
	ld   d, [hl]                                     ; $5b4f: $56
	nop                                              ; $5b50: $00
	ld   bc, $5d6d                                   ; $5b51: $01 $6d $5d
	ld   h, e                                        ; $5b54: $63
	and  c                                           ; $5b55: $a1
	nop                                              ; $5b56: $00
	ld   [bc], a                                     ; $5b57: $02
	rlca                                             ; $5b58: $07
	ld   c, d                                        ; $5b59: $4a
	dec  b                                           ; $5b5a: $05
	ld   [bc], a                                     ; $5b5b: $02
	inc  bc                                          ; $5b5c: $03
	ld   bc, $2000                                   ; $5b5d: $01 $00 $20
	nop                                              ; $5b60: $00
	rlca                                             ; $5b61: $07
	ld   a, h                                        ; $5b62: $7c
	dec  b                                           ; $5b63: $05
	ld   [bc], a                                     ; $5b64: $02
	inc  bc                                          ; $5b65: $03
	ld   bc, $2001                                   ; $5b66: $01 $01 $20
	nop                                              ; $5b69: $00
	rlca                                             ; $5b6a: $07
	db   $d3                                         ; $5b6b: $d3
	dec  b                                           ; $5b6c: $05
	ld   [bc], a                                     ; $5b6d: $02
	inc  bc                                          ; $5b6e: $03
	ld   bc, $2002                                   ; $5b6f: $01 $02 $20
	nop                                              ; $5b72: $00
	ld   b, $1a                                      ; $5b73: $06 $1a
	ld   b, $0f                                      ; $5b75: $06 $0f
	nop                                              ; $5b77: $00
	ld   bc, $0301                                   ; $5b78: $01 $01 $03
	add  d                                           ; $5b7b: $82
	inc  bc                                          ; $5b7c: $03
	pop  bc                                          ; $5b7d: $c1
	inc  b                                           ; $5b7e: $04
	sbc  [hl]                                        ; $5b7f: $9e
	ld   [hl], l                                     ; $5b80: $75
	ld   h, a                                        ; $5b81: $67
	sbc  a                                           ; $5b82: $9f
	dec  c                                           ; $5b83: $0d
	nop                                              ; $5b84: $00
	ld   a, [bc]                                     ; $5b85: $0a
	inc  e                                           ; $5b86: $1c
	ld   [bc], a                                     ; $5b87: $02
	ld   bc, $0101                                   ; $5b88: $01 $01 $01
	ld   l, e                                        ; $5b8b: $6b
	ld   d, h                                        ; $5b8c: $54
	ld   [hl], l                                     ; $5b8d: $75
	ld   h, a                                        ; $5b8e: $67
	sbc  l                                           ; $5b8f: $9d
	sbc  a                                           ; $5b90: $9f
	dec  c                                           ; $5b91: $0d
	nop                                              ; $5b92: $00
	ld   a, [bc]                                     ; $5b93: $0a
	dec  b                                           ; $5b94: $05
	ld   b, b                                        ; $5b95: $40
	rst  $38                                         ; $5b96: $ff
	inc  bc                                          ; $5b97: $03
	rst  $38                                         ; $5b98: $ff
	ld   bc, $2801                                   ; $5b99: $01 $01 $28
	nop                                              ; $5b9c: $00
	dec  c                                           ; $5b9d: $0d
	nop                                              ; $5b9e: $00
	nop                                              ; $5b9f: $00
	rrca                                             ; $5ba0: $0f
	nop                                              ; $5ba1: $00
	ld   bc, $0b0c                                   ; $5ba2: $01 $0c $0b
	ld   b, $3d                                      ; $5ba5: $06 $3d
	ld   b, $0f                                      ; $5ba7: $06 $0f
	nop                                              ; $5ba9: $00
	ld   bc, $0301                                   ; $5baa: $01 $01 $03
	add  d                                           ; $5bad: $82
	inc  bc                                          ; $5bae: $03
	pop  bc                                          ; $5baf: $c1
	inc  b                                           ; $5bb0: $04
	sbc  [hl]                                        ; $5bb1: $9e
	ld   bc, $1209                                   ; $5bb2: $01 $09 $12
	dec  b                                           ; $5bb5: $05
	ld   d, [hl]                                     ; $5bb6: $56
	ld   [hl], l                                     ; $5bb7: $75
	ld   h, a                                        ; $5bb8: $67
	sbc  a                                           ; $5bb9: $9f
	dec  c                                           ; $5bba: $0d
	nop                                              ; $5bbb: $00
	ld   a, [bc]                                     ; $5bbc: $0a
	inc  e                                           ; $5bbd: $1c
	ld   [bc], a                                     ; $5bbe: $02
	nop                                              ; $5bbf: $00
	nop                                              ; $5bc0: $00
	ld   bc, $9a6b                                   ; $5bc1: $01 $6b $9a
	ld   a, l                                        ; $5bc4: $7d
	sbc  [hl]                                        ; $5bc5: $9e
	inc  b                                           ; $5bc6: $04
	ld   c, $5b                                      ; $5bc7: $0e $5b
	ld   d, d                                        ; $5bc9: $52
	inc  b                                           ; $5bca: $04
	db   $e4                                         ; $5bcb: $e4
	ld   [bc], a                                     ; $5bcc: $02
	ld   d, a                                        ; $5bcd: $57
	sub  d                                           ; $5bce: $92
	dec  c                                           ; $5bcf: $0d
	inc  b                                           ; $5bd0: $04
	ld   c, $5b                                      ; $5bd1: $0e $5b
	ld   d, d                                        ; $5bd3: $52
	db   $ec                                         ; $5bd4: $ec
	ei                                               ; $5bd5: $fb
	sub  $7c                                         ; $5bd6: $d6 $7c
	inc  bc                                          ; $5bd8: $03
	ld   l, a                                        ; $5bd9: $6f
	ld   [hl], l                                     ; $5bda: $75
	ld   h, a                                        ; $5bdb: $67
	sbc  l                                           ; $5bdc: $9d
	sbc  a                                           ; $5bdd: $9f
	dec  c                                           ; $5bde: $0d
	inc  bc                                          ; $5bdf: $03
	ld   l, $03                                      ; $5be0: $2e $03
	pop  hl                                          ; $5be2: $e1
	ld   a, l                                        ; $5be3: $7d
	inc  bc                                          ; $5be4: $03
	add  d                                           ; $5be5: $82
	inc  bc                                          ; $5be6: $03
	pop  bc                                          ; $5be7: $c1
	inc  b                                           ; $5be8: $04
	sbc  [hl]                                        ; $5be9: $9e
	ld   [hl], l                                     ; $5bea: $75
	ld   d, d                                        ; $5beb: $52
	ld   d, d                                        ; $5bec: $52
	ld   a, h                                        ; $5bed: $7c
	ld   [hl], l                                     ; $5bee: $75
	ld   h, a                                        ; $5bef: $67
	sbc  a                                           ; $5bf0: $9f
	dec  c                                           ; $5bf1: $0d
	nop                                              ; $5bf2: $00
	ld   a, [bc]                                     ; $5bf3: $0a
	dec  c                                           ; $5bf4: $0d
	nop                                              ; $5bf5: $00
	nop                                              ; $5bf6: $00
	rrca                                             ; $5bf7: $0f
	nop                                              ; $5bf8: $00
	ld   bc, $0b0c                                   ; $5bf9: $01 $0c $0b
	ld   b, $3d                                      ; $5bfc: $06 $3d
	ld   b, $0f                                      ; $5bfe: $06 $0f
	nop                                              ; $5c00: $00
	ld   bc, $6d01                                   ; $5c01: $01 $01 $6d
	ld   e, l                                        ; $5c04: $5d
	ld   h, e                                        ; $5c05: $63
	and  c                                           ; $5c06: $a1
	ld   [hl], l                                     ; $5c07: $75
	ld   h, a                                        ; $5c08: $67
	sbc  a                                           ; $5c09: $9f
	dec  c                                           ; $5c0a: $0d
	nop                                              ; $5c0b: $00
	ld   a, [bc]                                     ; $5c0c: $0a
	inc  e                                           ; $5c0d: $1c
	ld   [bc], a                                     ; $5c0e: $02
	rlca                                             ; $5c0f: $07
	rlca                                             ; $5c10: $07
	ld   bc, $5a6f                                   ; $5c11: $01 $6f $5a
	ld   d, d                                        ; $5c14: $52
	adc  h                                           ; $5c15: $8c
	ld   h, a                                        ; $5c16: $67
	sbc  l                                           ; $5c17: $9d
	sbc  a                                           ; $5c18: $9f
	dec  c                                           ; $5c19: $0d
	inc  bc                                          ; $5c1a: $03
	add  d                                           ; $5c1b: $82
	inc  bc                                          ; $5c1c: $03
	pop  bc                                          ; $5c1d: $c1
	inc  b                                           ; $5c1e: $04
	sbc  [hl]                                        ; $5c1f: $9e
	ld   [hl], l                                     ; $5c20: $75
	ld   h, a                                        ; $5c21: $67
	sbc  a                                           ; $5c22: $9f
	inc  b                                           ; $5c23: $04
	ld   b, l                                        ; $5c24: $45
	sbc  d                                           ; $5c25: $9a
	ld   h, a                                        ; $5c26: $67
	ld   e, h                                        ; $5c27: $5c
	sbc  c                                           ; $5c28: $99
	halt                                             ; $5c29: $76
	dec  c                                           ; $5c2a: $0d
	ld   [bc], a                                     ; $5c2b: $02
	sub  h                                           ; $5c2c: $94
	ld   e, l                                        ; $5c2d: $5d
	ld   [hl], h                                     ; $5c2e: $74
	ld   a, h                                        ; $5c2f: $7c
	adc  a                                           ; $5c30: $8f
	adc  h                                           ; $5c31: $8c
	ld   l, c                                        ; $5c32: $69
	and  c                                           ; $5c33: $a1
	ld   h, c                                        ; $5c34: $61
	halt                                             ; $5c35: $76
	sub  [hl]                                        ; $5c36: $96
	sbc  a                                           ; $5c37: $9f
	dec  c                                           ; $5c38: $0d
	nop                                              ; $5c39: $00
	ld   a, [bc]                                     ; $5c3a: $0a
	dec  c                                           ; $5c3b: $0d
	nop                                              ; $5c3c: $00
	nop                                              ; $5c3d: $00
	rrca                                             ; $5c3e: $0f
	nop                                              ; $5c3f: $00
	ld   bc, $0b0c                                   ; $5c40: $01 $0c $0b
	ld   b, $3d                                      ; $5c43: $06 $3d
	ld   b, $1c                                      ; $5c45: $06 $1c
	ld   [bc], a                                     ; $5c47: $02
	nop                                              ; $5c48: $00
	nop                                              ; $5c49: $00
	ld   bc, $4a03                                   ; $5c4a: $01 $03 $4a
	ld   [bc], a                                     ; $5c4d: $02
	or   h                                           ; $5c4e: $b4
	ld   a, l                                        ; $5c4f: $7d
	sbc  [hl]                                        ; $5c50: $9e
	inc  bc                                          ; $5c51: $03
	add  d                                           ; $5c52: $82
	inc  bc                                          ; $5c53: $03
	pop  bc                                          ; $5c54: $c1
	inc  b                                           ; $5c55: $04
	sbc  [hl]                                        ; $5c56: $9e
	ld   [hl], l                                     ; $5c57: $75
	ld   h, a                                        ; $5c58: $67
	sbc  l                                           ; $5c59: $9d
	sbc  a                                           ; $5c5a: $9f
	dec  c                                           ; $5c5b: $0d
	nop                                              ; $5c5c: $00
	ld   a, [bc]                                     ; $5c5d: $0a
	dec  c                                           ; $5c5e: $0d
	nop                                              ; $5c5f: $00
	nop                                              ; $5c60: $00
	rrca                                             ; $5c61: $0f
	nop                                              ; $5c62: $00
	ld   bc, $0b0c                                   ; $5c63: $01 $0c $0b
	ld   b, $3d                                      ; $5c66: $06 $3d
	ld   b, $07                                      ; $5c68: $06 $07
	ld   e, b                                        ; $5c6a: $58
	ld   b, $03                                      ; $5c6b: $06 $03
	rst  $38                                         ; $5c6d: $ff
	ld   bc, $2003                                   ; $5c6e: $01 $03 $20
	nop                                              ; $5c71: $00
	rlca                                             ; $5c72: $07
	ld   a, e                                        ; $5c73: $7b
	ld   b, $03                                      ; $5c74: $06 $03
	rst  $38                                         ; $5c76: $ff
	ld   bc, $2002                                   ; $5c77: $01 $02 $20
	nop                                              ; $5c7a: $00
	rlca                                             ; $5c7b: $07
	sbc  c                                           ; $5c7c: $99
	ld   b, $03                                      ; $5c7d: $06 $03
	rst  $38                                         ; $5c7f: $ff
	ld   bc, $2301                                   ; $5c80: $01 $01 $23
	nop                                              ; $5c83: $00
	inc  e                                           ; $5c84: $1c
	ld   [bc], a                                     ; $5c85: $02
	ld   bc, $1d01                                   ; $5c86: $01 $01 $1d
	ld   b, b                                        ; $5c89: $40
	ld   [de], a                                     ; $5c8a: $12
	inc  bc                                          ; $5c8b: $03
	ld   [de], a                                     ; $5c8c: $12
	ld   bc, $2803                                   ; $5c8d: $01 $03 $28
	nop                                              ; $5c90: $00
	ld   bc, $7e67                                   ; $5c91: $01 $67 $7e
	sub  a                                           ; $5c94: $97
	ld   h, l                                        ; $5c95: $65
	ld   d, d                                        ; $5c96: $52
	ld   [hl], l                                     ; $5c97: $75
	ld   h, a                                        ; $5c98: $67
	sbc  l                                           ; $5c99: $9d
	sbc  a                                           ; $5c9a: $9f
	dec  c                                           ; $5c9b: $0d
	ld   [$6300], sp                                 ; $5c9c: $08 $00 $63
	and  c                                           ; $5c9f: $a1
	sbc  a                                           ; $5ca0: $9f
	dec  c                                           ; $5ca1: $0d
	nop                                              ; $5ca2: $00
	ld   a, [bc]                                     ; $5ca3: $0a
	ld   b, $64                                      ; $5ca4: $06 $64
	rlca                                             ; $5ca6: $07
	inc  e                                           ; $5ca7: $1c
	ld   [bc], a                                     ; $5ca8: $02
	nop                                              ; $5ca9: $00
	nop                                              ; $5caa: $00
	dec  e                                           ; $5cab: $1d
	ld   b, b                                        ; $5cac: $40
	ld   [de], a                                     ; $5cad: $12
	inc  bc                                          ; $5cae: $03
	ld   [de], a                                     ; $5caf: $12
	ld   bc, $2802                                   ; $5cb0: $01 $02 $28
	nop                                              ; $5cb3: $00
	ld   bc, $508c                                   ; $5cb4: $01 $8c $50
	adc  h                                           ; $5cb7: $8c
	ld   d, b                                        ; $5cb8: $50
	ld   [hl], l                                     ; $5cb9: $75
	ld   h, l                                        ; $5cba: $65
	ld   l, l                                        ; $5cbb: $6d
	sbc  l                                           ; $5cbc: $9d
	ld   a, e                                        ; $5cbd: $7b
	sbc  a                                           ; $5cbe: $9f
	dec  c                                           ; $5cbf: $0d
	nop                                              ; $5cc0: $00
	ld   a, [bc]                                     ; $5cc1: $0a
	ld   b, $64                                      ; $5cc2: $06 $64
	rlca                                             ; $5cc4: $07
	inc  e                                           ; $5cc5: $1c
	ld   [bc], a                                     ; $5cc6: $02
	ld   [bc], a                                     ; $5cc7: $02
	ld   [bc], a                                     ; $5cc8: $02
	dec  e                                           ; $5cc9: $1d
	ld   b, b                                        ; $5cca: $40
	ld   [de], a                                     ; $5ccb: $12
	inc  bc                                          ; $5ccc: $03
	ld   [de], a                                     ; $5ccd: $12
	ld   bc, $2902                                   ; $5cce: $01 $02 $29
	nop                                              ; $5cd1: $00
	ld   bc, $7a02                                   ; $5cd2: $01 $02 $7a
	ld   d, [hl]                                     ; $5cd5: $56
	sbc  c                                           ; $5cd6: $99
	ld   [bc], a                                     ; $5cd7: $02
	and  c                                           ; $5cd8: $a1
	sbc  [hl]                                        ; $5cd9: $9e
	ld   h, d                                        ; $5cda: $62
	ld   h, h                                        ; $5cdb: $64
	ld   d, d                                        ; $5cdc: $52
	adc  h                                           ; $5cdd: $8c
	ld   h, a                                        ; $5cde: $67
	ld   a, h                                        ; $5cdf: $7c
	ld   sp, hl                                      ; $5ce0: $f9
	dec  c                                           ; $5ce1: $0d
	nop                                              ; $5ce2: $00
	ld   a, [bc]                                     ; $5ce3: $0a
	dec  b                                           ; $5ce4: $05
	ld   b, b                                        ; $5ce5: $40
	ld   c, c                                        ; $5ce6: $49
	ld   [bc], a                                     ; $5ce7: $02
	nop                                              ; $5ce8: $00
	nop                                              ; $5ce9: $00
	dec  b                                           ; $5cea: $05
	ld   b, b                                        ; $5ceb: $40
	ld   c, a                                        ; $5cec: $4f
	ld   bc, $0001                                   ; $5ced: $01 $01 $00
	inc  e                                           ; $5cf0: $1c
	ld   [bc], a                                     ; $5cf1: $02
	rlca                                             ; $5cf2: $07
	rlca                                             ; $5cf3: $07
	ld   bc, $508c                                   ; $5cf4: $01 $8c $50
	sbc  [hl]                                        ; $5cf7: $9e
	ld   d, d                                        ; $5cf8: $52
	ld   d, d                                        ; $5cf9: $52
	ld   [hl], l                                     ; $5cfa: $75
	ld   h, a                                        ; $5cfb: $67
	sbc  l                                           ; $5cfc: $9d
	sbc  a                                           ; $5cfd: $9f
	dec  c                                           ; $5cfe: $0d
	nop                                              ; $5cff: $00
	ld   a, [bc]                                     ; $5d00: $0a
	ld   bc, $9876                                   ; $5d01: $01 $76 $98
	ld   d, b                                        ; $5d04: $50
	ld   d, [hl]                                     ; $5d05: $56
	ld   l, b                                        ; $5d06: $68
	inc  bc                                          ; $5d07: $03
	ld   l, c                                        ; $5d08: $69
	ld   [bc], a                                     ; $5d09: $02
	xor  d                                           ; $5d0a: $aa
	ld   a, c                                        ; $5d0b: $79
	sbc  [hl]                                        ; $5d0c: $9e
	ld   [bc], a                                     ; $5d0d: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d0e: $cf
	inc  bc                                          ; $5d0f: $03
	jp   $0d7c                                       ; $5d10: $c3 $7c $0d


	or   l                                           ; $5d13: $b5
	ei                                               ; $5d14: $fb
	db   $ed                                         ; $5d15: $ed
	ret  z                                           ; $5d16: $c8

	push af                                          ; $5d17: $f5
	db   $ed                                         ; $5d18: $ed
	ei                                               ; $5d19: $fb
	db   $ed                                         ; $5d1a: $ed
	ld   a, h                                        ; $5d1b: $7c
	dec  b                                           ; $5d1c: $05
	xor  c                                           ; $5d1d: $a9
	inc  b                                           ; $5d1e: $04
	adc  a                                           ; $5d1f: $8f
	dec  c                                           ; $5d20: $0d
	and  b                                           ; $5d21: $a0
	ld   [bc], a                                     ; $5d22: $02
	ret  nc                                          ; $5d23: $d0

	ld   d, [hl]                                     ; $5d24: $56
	ld   [hl], h                                     ; $5d25: $74
	ld   e, b                                        ; $5d26: $58
	ld   e, e                                        ; $5d27: $5b
	adc  h                                           ; $5d28: $8c
	ld   h, a                                        ; $5d29: $67
	sbc  l                                           ; $5d2a: $9d
	ld   a, e                                        ; $5d2b: $7b
	sbc  a                                           ; $5d2c: $9f
	dec  c                                           ; $5d2d: $0d
	nop                                              ; $5d2e: $00
	ld   a, [bc]                                     ; $5d2f: $0a
	ld   bc, $cf02                                   ; $5d30: $01 $02 $cf
	inc  bc                                          ; $5d33: $03
	jp   $b57c                                       ; $5d34: $c3 $7c $b5


	ei                                               ; $5d37: $fb
	db   $ed                                         ; $5d38: $ed
	ret  z                                           ; $5d39: $c8

	push af                                          ; $5d3a: $f5
	db   $ed                                         ; $5d3b: $ed
	ei                                               ; $5d3c: $fb
	db   $ed                                         ; $5d3d: $ed
	halt                                             ; $5d3e: $76
	ld   a, l                                        ; $5d3f: $7d
	dec  c                                           ; $5d40: $0d
	ld   [de], a                                     ; $5d41: $12
	xor  h                                           ; $5d42: $ac
	call nz, $12d8                                   ; $5d43: $c4 $d8 $12
	rst  ToBoot                                         ; $5d46: $c7
	and  h                                           ; $5d47: $a4
	ei                                               ; $5d48: $fb
	cp   d                                           ; $5d49: $ba
	ret  c                                           ; $5d4a: $d8

	ei                                               ; $5d4b: $fb
	push af                                          ; $5d4c: $f5
	dec  c                                           ; $5d4d: $0d
	inc  b                                           ; $5d4e: $04
	ldh  [rAUD1HIGH], a                              ; $5d4f: $e0 $14
	dec  sp                                          ; $5d51: $3b
	and  b                                           ; $5d52: $a0
	dec  b                                           ; $5d53: $05
	xor  c                                           ; $5d54: $a9
	inc  bc                                          ; $5d55: $03
	inc  e                                           ; $5d56: $1c
	halt                                             ; $5d57: $76
	ld   h, a                                        ; $5d58: $67
	sbc  c                                           ; $5d59: $99
	ld   [bc], a                                     ; $5d5a: $02
	jp   Jump_04f_6775                               ; $5d5b: $c3 $75 $67


	ld   a, h                                        ; $5d5e: $7c
	sbc  a                                           ; $5d5f: $9f
	dec  c                                           ; $5d60: $0d
	nop                                              ; $5d61: $00
	ld   a, [bc]                                     ; $5d62: $0a
	inc  e                                           ; $5d63: $1c
	ld   [bc], a                                     ; $5d64: $02
	ld   [bc], a                                     ; $5d65: $02
	ld   [bc], a                                     ; $5d66: $02
	ld   bc, $9a61                                   ; $5d67: $01 $61 $9a
	ld   e, l                                        ; $5d6a: $5d
	sub  a                                           ; $5d6b: $97
	ld   d, d                                        ; $5d6c: $52
	ld   a, l                                        ; $5d6d: $7d
	sbc  [hl]                                        ; $5d6e: $9e
	ld   e, b                                        ; $5d6f: $58
	adc  d                                           ; $5d70: $8a
	ld   d, [hl]                                     ; $5d71: $56
	ld   [hl], h                                     ; $5d72: $74
	dec  c                                           ; $5d73: $0d
	ld   e, b                                        ; $5d74: $58
	ld   e, e                                        ; $5d75: $5b
	ld   a, b                                        ; $5d76: $78
	ld   h, e                                        ; $5d77: $63
	ld   d, d                                        ; $5d78: $52
	ld   a, e                                        ; $5d79: $7b
	sbc  a                                           ; $5d7a: $9f
	dec  c                                           ; $5d7b: $0d
	ld   [hl], l                                     ; $5d7c: $75
	ld   a, l                                        ; $5d7d: $7d
	sbc  [hl]                                        ; $5d7e: $9e
	inc  bc                                          ; $5d7f: $03
	add  e                                           ; $5d80: $83
	dec  b                                           ; $5d81: $05
	dec  c                                           ; $5d82: $0d
	sbc  a                                           ; $5d83: $9f
	dec  c                                           ; $5d84: $0d
	nop                                              ; $5d85: $00
	ld   a, [bc]                                     ; $5d86: $0a
	dec  c                                           ; $5d87: $0d
	nop                                              ; $5d88: $00
	nop                                              ; $5d89: $00
	rrca                                             ; $5d8a: $0f
	nop                                              ; $5d8b: $00
	ld   bc, $1e09                                   ; $5d8c: $01 $09 $1e
	nop                                              ; $5d8f: $00
	inc  e                                           ; $5d90: $1c
	ld   [bc], a                                     ; $5d91: $02
	nop                                              ; $5d92: $00
	nop                                              ; $5d93: $00
	ld   bc, $9750                                   ; $5d94: $01 $50 $97
	sbc  [hl]                                        ; $5d97: $9e
	sub  b                                           ; $5d98: $90
	ld   d, h                                        ; $5d99: $54
	ld   h, c                                        ; $5d9a: $61
	and  c                                           ; $5d9b: $a1
	ld   a, b                                        ; $5d9c: $78
	inc  bc                                          ; $5d9d: $03
	ld   l, a                                        ; $5d9e: $6f
	ld   [bc], a                                     ; $5d9f: $02
	xor  c                                           ; $5da0: $a9
	sbc  a                                           ; $5da1: $9f
	dec  c                                           ; $5da2: $0d
	nop                                              ; $5da3: $00
	ld   a, [bc]                                     ; $5da4: $0a
	ld   bc, $6903                                   ; $5da5: $01 $03 $69
	ld   [bc], a                                     ; $5da8: $02
	xor  d                                           ; $5da9: $aa
	ld   a, c                                        ; $5daa: $79
	ld   [bc], a                                     ; $5dab: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5dac: $cf
	inc  bc                                          ; $5dad: $03
	jp   $b57c                                       ; $5dae: $c3 $7c $b5


	ei                                               ; $5db1: $fb
	db   $ed                                         ; $5db2: $ed
	ret  z                                           ; $5db3: $c8

	push af                                          ; $5db4: $f5
	db   $ed                                         ; $5db5: $ed
	ei                                               ; $5db6: $fb
	db   $ed                                         ; $5db7: $ed
	dec  c                                           ; $5db8: $0d
	ld   a, h                                        ; $5db9: $7c
	dec  b                                           ; $5dba: $05
	xor  c                                           ; $5dbb: $a9
	inc  b                                           ; $5dbc: $04
	adc  a                                           ; $5dbd: $8f
	and  b                                           ; $5dbe: $a0
	ld   [bc], a                                     ; $5dbf: $02
	ret  nc                                          ; $5dc0: $d0

	ld   d, [hl]                                     ; $5dc1: $56
	ld   [hl], h                                     ; $5dc2: $74
	ld   e, b                                        ; $5dc3: $58
	ld   e, e                                        ; $5dc4: $5b
	adc  h                                           ; $5dc5: $8c
	ld   h, a                                        ; $5dc6: $67
	sbc  l                                           ; $5dc7: $9d
	ld   a, e                                        ; $5dc8: $7b
	sbc  a                                           ; $5dc9: $9f
	dec  c                                           ; $5dca: $0d
	inc  b                                           ; $5dcb: $04
	ld   c, $03                                      ; $5dcc: $0e $03
	dec  de                                          ; $5dce: $1b
	ld   a, b                                        ; $5dcf: $78
	dec  b                                           ; $5dd0: $05
	xor  c                                           ; $5dd1: $a9
	inc  b                                           ; $5dd2: $04
	adc  a                                           ; $5dd3: $8f
	ld   [hl], l                                     ; $5dd4: $75
	ld   h, a                                        ; $5dd5: $67
	sbc  l                                           ; $5dd6: $9d
	sub  [hl]                                        ; $5dd7: $96
	sbc  a                                           ; $5dd8: $9f
	dec  c                                           ; $5dd9: $0d
	nop                                              ; $5dda: $00
	ld   a, [bc]                                     ; $5ddb: $0a
	ld   bc, $cf02                                   ; $5ddc: $01 $02 $cf
	inc  bc                                          ; $5ddf: $03
	jp   $b57c                                       ; $5de0: $c3 $7c $b5


	ei                                               ; $5de3: $fb
	db   $ed                                         ; $5de4: $ed
	ret  z                                           ; $5de5: $c8

	push af                                          ; $5de6: $f5
	db   $ed                                         ; $5de7: $ed
	ei                                               ; $5de8: $fb
	db   $ed                                         ; $5de9: $ed
	halt                                             ; $5dea: $76
	ld   a, l                                        ; $5deb: $7d
	dec  c                                           ; $5dec: $0d
	ld   [de], a                                     ; $5ded: $12
	xor  h                                           ; $5dee: $ac
	call nz, $12d8                                   ; $5def: $c4 $d8 $12
	rst  ToBoot                                         ; $5df2: $c7
	and  h                                           ; $5df3: $a4
	ei                                               ; $5df4: $fb
	cp   d                                           ; $5df5: $ba
	ret  c                                           ; $5df6: $d8

	ei                                               ; $5df7: $fb
	push af                                          ; $5df8: $f5
	dec  c                                           ; $5df9: $0d
	inc  b                                           ; $5dfa: $04
	ldh  [rAUD1HIGH], a                              ; $5dfb: $e0 $14
	dec  sp                                          ; $5dfd: $3b
	and  b                                           ; $5dfe: $a0
	dec  b                                           ; $5dff: $05
	xor  c                                           ; $5e00: $a9
	inc  bc                                          ; $5e01: $03
	inc  e                                           ; $5e02: $1c
	halt                                             ; $5e03: $76
	ld   h, a                                        ; $5e04: $67
	sbc  c                                           ; $5e05: $99
	ld   [bc], a                                     ; $5e06: $02
	jp   Jump_04f_6775                               ; $5e07: $c3 $75 $67


	ld   a, h                                        ; $5e0a: $7c
	sbc  a                                           ; $5e0b: $9f
	dec  c                                           ; $5e0c: $0d
	nop                                              ; $5e0d: $00
	ld   a, [bc]                                     ; $5e0e: $0a
	inc  e                                           ; $5e0f: $1c
	ld   [bc], a                                     ; $5e10: $02
	ld   bc, $0101                                   ; $5e11: $01 $01 $01
	ld   [bc], a                                     ; $5e14: $02
	ei                                               ; $5e15: $fb
	ld   e, e                                        ; $5e16: $5b
	ld   a, l                                        ; $5e17: $7d
	adc  h                                           ; $5e18: $8c
	ld   l, l                                        ; $5e19: $6d
	ld   [bc], a                                     ; $5e1a: $02
	and  l                                           ; $5e1b: $a5
	inc  b                                           ; $5e1c: $04
	add  hl, hl                                      ; $5e1d: $29
	sbc  [hl]                                        ; $5e1e: $9e
	dec  c                                           ; $5e1f: $0d
	inc  bc                                          ; $5e20: $03
	ld   l, a                                        ; $5e21: $6f
	ld   [bc], a                                     ; $5e22: $02
	xor  c                                           ; $5e23: $a9
	ld   e, d                                        ; $5e24: $5a
	ld   d, b                                        ; $5e25: $50
	sbc  b                                           ; $5e26: $98
	adc  h                                           ; $5e27: $8c
	ld   h, l                                        ; $5e28: $65
	ld   l, l                                        ; $5e29: $6d
	sub  a                                           ; $5e2a: $97
	ld   a, e                                        ; $5e2b: $7b
	sbc  a                                           ; $5e2c: $9f
	dec  c                                           ; $5e2d: $0d
	ld   [hl], l                                     ; $5e2e: $75
	ld   a, l                                        ; $5e2f: $7d
	sbc  [hl]                                        ; $5e30: $9e
	inc  bc                                          ; $5e31: $03
	add  e                                           ; $5e32: $83
	dec  b                                           ; $5e33: $05
	dec  c                                           ; $5e34: $0d
	sbc  a                                           ; $5e35: $9f
	dec  c                                           ; $5e36: $0d
	nop                                              ; $5e37: $00
	ld   a, [bc]                                     ; $5e38: $0a
	dec  c                                           ; $5e39: $0d
	nop                                              ; $5e3a: $00
	nop                                              ; $5e3b: $00
	rrca                                             ; $5e3c: $0f
	nop                                              ; $5e3d: $00
	ld   bc, $1e09                                   ; $5e3e: $01 $09 $1e
	nop                                              ; $5e41: $00
	nop                                              ; $5e42: $00
	ld   c, $31                                      ; $5e43: $0e $31
	inc  e                                           ; $5e45: $1c
	ld   bc, $0000                                   ; $5e46: $01 $00 $00
	ld   [bc], a                                     ; $5e49: $02
	ld   bc, $9e50                                   ; $5e4a: $01 $50 $9e
	ld   [$6300], sp                                 ; $5e4d: $08 $00 $63
	and  c                                           ; $5e50: $a1
	sbc  a                                           ; $5e51: $9f
	dec  c                                           ; $5e52: $0d
	ld   l, a                                        ; $5e53: $6f
	sub  l                                           ; $5e54: $95
	ld   [hl], c                                     ; $5e55: $71
	halt                                             ; $5e56: $76
	ld   d, d                                        ; $5e57: $52
	ld   d, d                                        ; $5e58: $52
	ld   [hl], l                                     ; $5e59: $75
	ld   h, a                                        ; $5e5a: $67
	ld   e, c                                        ; $5e5b: $59
	ld   sp, hl                                      ; $5e5c: $f9
	dec  c                                           ; $5e5d: $0d
	nop                                              ; $5e5e: $00
	ld   a, [bc]                                     ; $5e5f: $0a
	ld   bc, $7c50                                   ; $5e60: $01 $50 $7c
	rst  $38                                         ; $5e63: $ff
	rst  $38                                         ; $5e64: $ff
	dec  c                                           ; $5e65: $0d
	inc  b                                           ; $5e66: $04
	adc  a                                           ; $5e67: $8f
	inc  b                                           ; $5e68: $04
	ld   de, $5f8d                                   ; $5e69: $11 $8d $5f
	ld   d, d                                        ; $5e6c: $52
	ld   h, c                                        ; $5e6d: $61
	ld   a, h                                        ; $5e6e: $7c
	ld   [bc], a                                     ; $5e6f: $02
	ld   a, [de]                                     ; $5e70: $1a
	inc  bc                                          ; $5e71: $03
	ld   l, e                                        ; $5e72: $6b
	and  b                                           ; $5e73: $a0
	ld   h, l                                        ; $5e74: $65
	ld   [hl], h                                     ; $5e75: $74
	dec  c                                           ; $5e76: $0d
	sub  b                                           ; $5e77: $90
	sub  a                                           ; $5e78: $97
	ld   d, d                                        ; $5e79: $52
	ld   l, l                                        ; $5e7a: $6d
	ld   d, d                                        ; $5e7b: $52
	and  c                                           ; $5e7c: $a1
	ld   [hl], l                                     ; $5e7d: $75
	ld   h, a                                        ; $5e7e: $67
	ld   e, a                                        ; $5e7f: $5f
	ld   [hl], a                                     ; $5e80: $77
	rst  $38                                         ; $5e81: $ff
	rst  $38                                         ; $5e82: $ff
	dec  c                                           ; $5e83: $0d
	nop                                              ; $5e84: $00
	ld   a, [bc]                                     ; $5e85: $0a
	add  hl, de                                      ; $5e86: $19
	dec  b                                           ; $5e87: $05
	ld   [bc], a                                     ; $5e88: $02
	ld   [bc], a                                     ; $5e89: $02
	ld   a, [de]                                     ; $5e8a: $1a
	inc  bc                                          ; $5e8b: $03
	ld   l, e                                        ; $5e8c: $6b
	and  b                                           ; $5e8d: $a0
	ld   h, a                                        ; $5e8e: $67
	sbc  c                                           ; $5e8f: $99
	nop                                              ; $5e90: $00
	nop                                              ; $5e91: $00
	ld   h, c                                        ; $5e92: $61
	halt                                             ; $5e93: $76
	sbc  l                                           ; $5e94: $9d
	sbc  c                                           ; $5e95: $99
	nop                                              ; $5e96: $00
	ld   bc, $0607                                   ; $5e97: $01 $07 $06
	ld   bc, $0302                                   ; $5e9a: $01 $02 $03
	ld   bc, $2000                                   ; $5e9d: $01 $00 $20
	nop                                              ; $5ea0: $00
	rlca                                             ; $5ea1: $07
	ld   l, d                                        ; $5ea2: $6a
	nop                                              ; $5ea3: $00
	ld   [bc], a                                     ; $5ea4: $02
	inc  bc                                          ; $5ea5: $03
	ld   bc, $2001                                   ; $5ea6: $01 $01 $20
	nop                                              ; $5ea9: $00
	ld   b, $ba                                      ; $5eaa: $06 $ba
	nop                                              ; $5eac: $00
	rrca                                             ; $5ead: $0f
	nop                                              ; $5eae: $00
	ld   bc, $6701                                   ; $5eaf: $01 $01 $67
	adc  l                                           ; $5eb2: $8d
	adc  h                                           ; $5eb3: $8c
	ld   l, c                                        ; $5eb4: $69
	and  c                                           ; $5eb5: $a1
	sbc  a                                           ; $5eb6: $9f
	dec  c                                           ; $5eb7: $0d
	ld   l, a                                        ; $5eb8: $6f
	sub  l                                           ; $5eb9: $95
	ld   [hl], c                                     ; $5eba: $71
	halt                                             ; $5ebb: $76
	ld   [bc], a                                     ; $5ebc: $02
	and  l                                           ; $5ebd: $a5
	ld   a, l                                        ; $5ebe: $7d
	rst  $38                                         ; $5ebf: $ff
	rst  $38                                         ; $5ec0: $ff
	dec  c                                           ; $5ec1: $0d
	nop                                              ; $5ec2: $00
	ld   a, [bc]                                     ; $5ec3: $0a
	inc  e                                           ; $5ec4: $1c
	ld   bc, $0404                                   ; $5ec5: $01 $04 $04
	dec  e                                           ; $5ec8: $1d
	ld   b, b                                        ; $5ec9: $40
	ld   de, $1103                                   ; $5eca: $11 $03 $11
	ld   bc, $2901                                   ; $5ecd: $01 $01 $29
	nop                                              ; $5ed0: $00
	ld   bc, $546b                                   ; $5ed1: $01 $6b $54
	ld   [hl], l                                     ; $5ed4: $75
	ld   h, a                                        ; $5ed5: $67
	ld   e, c                                        ; $5ed6: $59
	sbc  a                                           ; $5ed7: $9f
	dec  c                                           ; $5ed8: $0d
	ld   h, d                                        ; $5ed9: $62
	adc  a                                           ; $5eda: $8f
	and  c                                           ; $5edb: $a1
	ld   a, b                                        ; $5edc: $78
	ld   h, e                                        ; $5edd: $63
	ld   d, d                                        ; $5ede: $52
	sbc  [hl]                                        ; $5edf: $9e
	ld   e, b                                        ; $5ee0: $58
	inc  bc                                          ; $5ee1: $03
	dec  c                                           ; $5ee2: $0d
	ld   [bc], a                                     ; $5ee3: $02
	jp   $0d7c                                       ; $5ee4: $c3 $7c $0d


	ld   h, [hl]                                     ; $5ee7: $66
	sub  c                                           ; $5ee8: $91
	adc  h                                           ; $5ee9: $8c
	ld   h, l                                        ; $5eea: $65
	ld   l, a                                        ; $5eeb: $6f
	sub  c                                           ; $5eec: $91
	ld   [hl], c                                     ; $5eed: $71
	ld   [hl], h                                     ; $5eee: $74
	rst  $38                                         ; $5eef: $ff
	rst  $38                                         ; $5ef0: $ff
	dec  c                                           ; $5ef1: $0d
	nop                                              ; $5ef2: $00
	ld   a, [bc]                                     ; $5ef3: $0a
	dec  c                                           ; $5ef4: $0d
	nop                                              ; $5ef5: $00
	nop                                              ; $5ef6: $00
	rrca                                             ; $5ef7: $0f
	nop                                              ; $5ef8: $00
	ld   bc, $1e09                                   ; $5ef9: $01 $09 $1e
	nop                                              ; $5efc: $00
	inc  e                                           ; $5efd: $1c
	ld   bc, $0000                                   ; $5efe: $01 $00 $00
	ld   bc, $9e50                                   ; $5f01: $01 $50 $9e
	ld   d, d                                        ; $5f04: $52
	ld   l, e                                        ; $5f05: $6b
	ld   e, d                                        ; $5f06: $5a
	ld   h, l                                        ; $5f07: $65
	ld   d, d                                        ; $5f08: $52
	ld   a, h                                        ; $5f09: $7c
	ld   a, b                                        ; $5f0a: $78
	sub  a                                           ; $5f0b: $97
	dec  c                                           ; $5f0c: $0d
	ld   d, d                                        ; $5f0d: $52
	ld   d, d                                        ; $5f0e: $52
	and  c                                           ; $5f0f: $a1
	ld   [hl], l                                     ; $5f10: $75
	ld   h, a                                        ; $5f11: $67
	sub  [hl]                                        ; $5f12: $96
	sbc  a                                           ; $5f13: $9f
	dec  c                                           ; $5f14: $0d
	nop                                              ; $5f15: $00
	ld   a, [bc]                                     ; $5f16: $0a
	inc  e                                           ; $5f17: $1c
	ld   bc, $0404                                   ; $5f18: $01 $04 $04
	dec  e                                           ; $5f1b: $1d
	ld   b, b                                        ; $5f1c: $40
	ld   de, $1103                                   ; $5f1d: $11 $03 $11
	ld   bc, $2901                                   ; $5f20: $01 $01 $29
	nop                                              ; $5f23: $00
	ld   bc, $8f62                                   ; $5f24: $01 $62 $8f
	and  c                                           ; $5f27: $a1
	ld   a, b                                        ; $5f28: $78
	ld   h, e                                        ; $5f29: $63
	ld   d, d                                        ; $5f2a: $52
	sbc  [hl]                                        ; $5f2b: $9e
	ld   e, b                                        ; $5f2c: $58
	inc  bc                                          ; $5f2d: $03
	dec  c                                           ; $5f2e: $0d
	ld   [bc], a                                     ; $5f2f: $02
	jp   $0d7c                                       ; $5f30: $c3 $7c $0d


	ld   h, [hl]                                     ; $5f33: $66
	sub  c                                           ; $5f34: $91
	adc  h                                           ; $5f35: $8c
	ld   h, l                                        ; $5f36: $65
	ld   l, a                                        ; $5f37: $6f
	sub  c                                           ; $5f38: $91
	ld   [hl], c                                     ; $5f39: $71
	ld   [hl], h                                     ; $5f3a: $74
	rst  $38                                         ; $5f3b: $ff
	rst  $38                                         ; $5f3c: $ff
	dec  c                                           ; $5f3d: $0d
	nop                                              ; $5f3e: $00
	ld   a, [bc]                                     ; $5f3f: $0a
	dec  c                                           ; $5f40: $0d
	nop                                              ; $5f41: $00
	nop                                              ; $5f42: $00
	rrca                                             ; $5f43: $0f
	nop                                              ; $5f44: $00
	ld   bc, $1e09                                   ; $5f45: $01 $09 $1e
	nop                                              ; $5f48: $00
	rrca                                             ; $5f49: $0f
	nop                                              ; $5f4a: $00
	ld   bc, $5201                                   ; $5f4b: $01 $01 $52
	ld   d, d                                        ; $5f4e: $52
	ld   [hl], l                                     ; $5f4f: $75
	ld   h, a                                        ; $5f50: $67
	sub  [hl]                                        ; $5f51: $96
	sbc  a                                           ; $5f52: $9f
	dec  c                                           ; $5f53: $0d
	inc  b                                           ; $5f54: $04
	ld   l, l                                        ; $5f55: $6d
	ld   [hl], l                                     ; $5f56: $75
	ld   e, b                                        ; $5f57: $58
	inc  b                                           ; $5f58: $04
	db   $ec                                         ; $5f59: $ec
	ld   a, c                                        ; $5f5a: $79
	dec  b                                           ; $5f5b: $05
	ld   d, $74                                      ; $5f5c: $16 $74
	sbc  c                                           ; $5f5e: $99
	ld   a, b                                        ; $5f5f: $78
	sub  a                                           ; $5f60: $97
	rst  $38                                         ; $5f61: $ff
	rst  $38                                         ; $5f62: $ff
	dec  c                                           ; $5f63: $0d
	nop                                              ; $5f64: $00
	ld   a, [bc]                                     ; $5f65: $0a
	dec  b                                           ; $5f66: $05
	add  b                                           ; $5f67: $80
	call nc, $0101                                   ; $5f68: $d4 $01 $01
	nop                                              ; $5f6b: $00
	inc  e                                           ; $5f6c: $1c
	ld   bc, $0101                                   ; $5f6d: $01 $01 $01
	ld   bc, $9850                                   ; $5f70: $01 $50 $98
	ld   e, d                                        ; $5f73: $5a
	halt                                             ; $5f74: $76
	ld   d, h                                        ; $5f75: $54
	ld   h, d                                        ; $5f76: $62
	ld   h, h                                        ; $5f77: $64
	ld   d, d                                        ; $5f78: $52
	adc  h                                           ; $5f79: $8c
	ld   h, a                                        ; $5f7a: $67
	sbc  a                                           ; $5f7b: $9f
	dec  c                                           ; $5f7c: $0d
	nop                                              ; $5f7d: $00
	ld   a, [bc]                                     ; $5f7e: $0a
	inc  e                                           ; $5f7f: $1c
	ld   bc, $0000                                   ; $5f80: $01 $00 $00
	ld   bc, $9166                                   ; $5f83: $01 $66 $91
	sbc  [hl]                                        ; $5f86: $9e
	ld   h, a                                        ; $5f87: $67
	adc  l                                           ; $5f88: $8d
	adc  h                                           ; $5f89: $8c
	ld   l, c                                        ; $5f8a: $69
	and  c                                           ; $5f8b: $a1
	rst  $38                                         ; $5f8c: $ff
	rst  $38                                         ; $5f8d: $ff
	dec  c                                           ; $5f8e: $0d
	ld   [$6300], sp                                 ; $5f8f: $08 $00 $63
	and  c                                           ; $5f92: $a1
	ld   a, l                                        ; $5f93: $7d
	inc  b                                           ; $5f94: $04
	ld   hl, sp+$02                                  ; $5f95: $f8 $02
	add  a                                           ; $5f97: $87
	inc  b                                           ; $5f98: $04
	or   a                                           ; $5f99: $b7
	inc  bc                                          ; $5f9a: $03
	add  d                                           ; $5f9b: $82
	ld   a, h                                        ; $5f9c: $7c
	dec  c                                           ; $5f9d: $0d
	inc  b                                           ; $5f9e: $04
	db   $ec                                         ; $5f9f: $ec
	and  b                                           ; $5fa0: $a0
	ld   e, b                                        ; $5fa1: $58
	ld   [bc], a                                     ; $5fa2: $02
	add  b                                           ; $5fa3: $80
	ld   d, d                                        ; $5fa4: $52
	ld   h, l                                        ; $5fa5: $65
	adc  h                                           ; $5fa6: $8c
	ld   h, a                                        ; $5fa7: $67
	sbc  a                                           ; $5fa8: $9f
	dec  c                                           ; $5fa9: $0d
	nop                                              ; $5faa: $00
	ld   a, [bc]                                     ; $5fab: $0a
	ld   bc, $7d75                                   ; $5fac: $01 $75 $7d
	sbc  [hl]                                        ; $5faf: $9e
	cp   h                                           ; $5fb0: $bc
	db   $ec                                         ; $5fb1: $ec
	sub  $a0                                         ; $5fb2: $d6 $a0
	ld   [bc], a                                     ; $5fb4: $02
	sbc  l                                           ; $5fb5: $9d
	ld   d, d                                        ; $5fb6: $52
	adc  h                                           ; $5fb7: $8c
	ld   h, a                                        ; $5fb8: $67
	ld   e, c                                        ; $5fb9: $59
	sub  a                                           ; $5fba: $97
	dec  c                                           ; $5fbb: $0d
	ld   e, b                                        ; $5fbc: $58
	adc  d                                           ; $5fbd: $8a
	ld   d, [hl]                                     ; $5fbe: $56
	ld   [hl], h                                     ; $5fbf: $74
	ld   e, l                                        ; $5fc0: $5d
	ld   l, [hl]                                     ; $5fc1: $6e
	ld   h, e                                        ; $5fc2: $63
	ld   d, d                                        ; $5fc3: $52
	ld   a, e                                        ; $5fc4: $7b
	sbc  a                                           ; $5fc5: $9f
	dec  c                                           ; $5fc6: $0d
	nop                                              ; $5fc7: $00
	ld   a, [bc]                                     ; $5fc8: $0a
	ld   bc, $61fd                                   ; $5fc9: $01 $fd $61
	ld   d, h                                        ; $5fcc: $54
	ld   a, b                                        ; $5fcd: $78
	ld   [hl], c                                     ; $5fce: $71
	ld   l, l                                        ; $5fcf: $6d
	sub  a                                           ; $5fd0: $97
	sbc  [hl]                                        ; $5fd1: $9e
	dec  c                                           ; $5fd2: $0d
	db   $10                                         ; $5fd3: $10
	ld   h, c                                        ; $5fd4: $61
	ld   a, h                                        ; $5fd5: $7c
	inc  b                                           ; $5fd6: $04
	ld   a, [de]                                     ; $5fd7: $1a
	ld   [bc], a                                     ; $5fd8: $02
	cp   b                                           ; $5fd9: $b8
	and  b                                           ; $5fda: $a0
	ld   a, [bc]                                     ; $5fdb: $0a
	ld   [bc], a                                     ; $5fdc: $02
	ld   h, e                                        ; $5fdd: $63
	sub  a                                           ; $5fde: $97
	ld   [hl], c                                     ; $5fdf: $71
	ld   [hl], h                                     ; $5fe0: $74
	sub  d                                           ; $5fe1: $92
	sbc  c                                           ; $5fe2: $99
	ld   a, [bc]                                     ; $5fe3: $0a
	inc  bc                                          ; $5fe4: $03
	cp   $0d                                         ; $5fe5: $fe $0d
	nop                                              ; $5fe7: $00
	ld   a, [bc]                                     ; $5fe8: $0a
	ld   bc, $54fd                                   ; $5fe9: $01 $fd $54
	sbc  c                                           ; $5fec: $99
	ld   h, e                                        ; $5fed: $63
	ld   d, d                                        ; $5fee: $52
	ld   a, [$6310]                                  ; $5fef: $fa $10 $63
	sbc  l                                           ; $5ff2: $9d
	ld   e, [hl]                                     ; $5ff3: $5e
	ld   [hl], l                                     ; $5ff4: $75
	ld   a, b                                        ; $5ff5: $78
	ld   d, d                                        ; $5ff6: $52
	dec  c                                           ; $5ff7: $0d
	db   $10                                         ; $5ff8: $10
	ld   e, b                                        ; $5ff9: $58
	adc  h                                           ; $5ffa: $8c
	ld   d, [hl]                                     ; $5ffb: $56
	ld   a, l                                        ; $5ffc: $7d
	inc  bc                                          ; $5ffd: $03
	ld   d, b                                        ; $5ffe: $50
	ld   [bc], a                                     ; $5fff: $02
	ld   a, h                                        ; $6000: $7c
	ld   [bc], a                                     ; $6001: $02
	or   [hl]                                        ; $6002: $b6
	and  b                                           ; $6003: $a0
	ld   e, b                                        ; $6004: $58
	add  c                                           ; $6005: $81
	ld   e, e                                        ; $6006: $5b
	ld   l, [hl]                                     ; $6007: $6e
	ld   h, a                                        ; $6008: $67
	dec  c                                           ; $6009: $0d
	db   $10                                         ; $600a: $10
	ld   a, [bc]                                     ; $600b: $0a
	ld   [bc], a                                     ; $600c: $02
	xor  c                                           ; $600d: $a9
	or   [hl]                                        ; $600e: $b6
	ld   a, b                                        ; $600f: $78
	ld   a, h                                        ; $6010: $7c
	ld   l, [hl]                                     ; $6011: $6e
	ld   a, [bc]                                     ; $6012: $0a
	inc  bc                                          ; $6013: $03
	cp   $0d                                         ; $6014: $fe $0d
	nop                                              ; $6016: $00
	ld   a, [bc]                                     ; $6017: $0a
	ld   bc, $e2fd                                   ; $6018: $01 $fd $e2
	pop  bc                                          ; $601b: $c1
	sbc  [hl]                                        ; $601c: $9e
	ldh  [c], a                                      ; $601d: $e2
	pop  bc                                          ; $601e: $c1
	sbc  a                                           ; $601f: $9f
	dec  c                                           ; $6020: $0d
	db   $10                                         ; $6021: $10
	ld   h, c                                        ; $6022: $61
	ld   a, h                                        ; $6023: $7c
	ld   a, [bc]                                     ; $6024: $0a
	ld   [bc], a                                     ; $6025: $02
	inc  b                                           ; $6026: $04
	ld   hl, sp+$02                                  ; $6027: $f8 $02
	add  a                                           ; $6029: $87
	inc  b                                           ; $602a: $04
	or   a                                           ; $602b: $b7
	inc  bc                                          ; $602c: $03
	add  d                                           ; $602d: $82
	ld   a, [bc]                                     ; $602e: $0a
	inc  bc                                          ; $602f: $03
	ld   a, c                                        ; $6030: $79
	ld   h, e                                        ; $6031: $63
	ld   e, c                                        ; $6032: $59
	sub  a                                           ; $6033: $97
	ld   d, h                                        ; $6034: $54
	dec  c                                           ; $6035: $0d
	db   $10                                         ; $6036: $10
	sub  b                                           ; $6037: $90
	ld   a, h                                        ; $6038: $7c
	ld   a, b                                        ; $6039: $78
	ld   [hl], a                                     ; $603a: $77
	sbc  [hl]                                        ; $603b: $9e
	ld   e, b                                        ; $603c: $58
	sub  a                                           ; $603d: $97
	ld   a, d                                        ; $603e: $7a
	sbc  l                                           ; $603f: $9d
	ld   a, [$0dfe]                                  ; $6040: $fa $fe $0d
	nop                                              ; $6043: $00
	ld   a, [bc]                                     ; $6044: $0a
	ld   bc, $8a58                                   ; $6045: $01 $58 $8a
	ld   d, [hl]                                     ; $6048: $56
	adc  h                                           ; $6049: $8c
	ld   h, l                                        ; $604a: $65
	ld   l, l                                        ; $604b: $6d
	ld   e, c                                        ; $604c: $59
	ld   sp, hl                                      ; $604d: $f9
	dec  c                                           ; $604e: $0d
	ld   [hl], l                                     ; $604f: $75
	ld   a, l                                        ; $6050: $7d
	sbc  [hl]                                        ; $6051: $9e
	ld   d, d                                        ; $6052: $52
	ld   e, e                                        ; $6053: $5b
	adc  h                                           ; $6054: $8c
	ld   h, a                                        ; $6055: $67
	sub  [hl]                                        ; $6056: $96
	sbc  a                                           ; $6057: $9f
	dec  c                                           ; $6058: $0d
	nop                                              ; $6059: $00
	ld   a, [bc]                                     ; $605a: $0a
	inc  e                                           ; $605b: $1c
	ld   bc, $0404                                   ; $605c: $01 $04 $04
	ld   bc, $9252                                   ; $605f: $01 $52 $92
	ld   a, [$9210]                                  ; $6062: $fa $10 $92
	adc  a                                           ; $6065: $8f
	ld   [hl], h                                     ; $6066: $74
	ld   [bc], a                                     ; $6067: $02
	inc  [hl]                                        ; $6068: $34
	ld   h, e                                        ; $6069: $63
	ld   d, d                                        ; $606a: $52
	ld   a, [$000d]                                  ; $606b: $fa $0d $00
	ld   a, [bc]                                     ; $606e: $0a
	rrca                                             ; $606f: $0f
	nop                                              ; $6070: $00
	ld   bc, $fd01                                   ; $6071: $01 $01 $fd
	ld   h, c                                        ; $6074: $61
	ld   d, h                                        ; $6075: $54
	ld   a, b                                        ; $6076: $78
	ld   [hl], c                                     ; $6077: $71
	ld   l, l                                        ; $6078: $6d
	sub  a                                           ; $6079: $97
	sbc  [hl]                                        ; $607a: $9e
	dec  c                                           ; $607b: $0d
	db   $10                                         ; $607c: $10
	ld   h, c                                        ; $607d: $61
	ld   a, h                                        ; $607e: $7c
	inc  b                                           ; $607f: $04
	ld   a, [de]                                     ; $6080: $1a
	ld   [bc], a                                     ; $6081: $02
	cp   b                                           ; $6082: $b8
	and  b                                           ; $6083: $a0
	rst  $38                                         ; $6084: $ff
	rst  $38                                         ; $6085: $ff
	dec  c                                           ; $6086: $0d
	nop                                              ; $6087: $00
	ld   a, [bc]                                     ; $6088: $0a
	add  hl, de                                      ; $6089: $19
	dec  b                                           ; $608a: $05
	inc  bc                                          ; $608b: $03
	ld   h, e                                        ; $608c: $63
	sub  a                                           ; $608d: $97
	ld   [hl], c                                     ; $608e: $71
	ld   [hl], h                                     ; $608f: $74
	sub  d                                           ; $6090: $92
	sbc  c                                           ; $6091: $99
	nop                                              ; $6092: $00
	nop                                              ; $6093: $00
	ld   h, e                                        ; $6094: $63
	sbc  l                                           ; $6095: $9d
	ld   [hl], c                                     ; $6096: $71
	ld   [hl], h                                     ; $6097: $74
	sub  d                                           ; $6098: $92
	sbc  c                                           ; $6099: $99
	nop                                              ; $609a: $00
	ld   bc, $979d                                   ; $609b: $01 $9d $97
	ld   [hl], c                                     ; $609e: $71
	ld   [hl], h                                     ; $609f: $74
	sub  d                                           ; $60a0: $92
	sbc  c                                           ; $60a1: $99
	nop                                              ; $60a2: $00
	ld   [bc], a                                     ; $60a3: $02
	rlca                                             ; $60a4: $07
	ld   a, a                                        ; $60a5: $7f
	ld   [bc], a                                     ; $60a6: $02
	ld   [bc], a                                     ; $60a7: $02
	inc  bc                                          ; $60a8: $03
	ld   bc, $2000                                   ; $60a9: $01 $00 $20
	nop                                              ; $60ac: $00
	rlca                                             ; $60ad: $07
	xor  d                                           ; $60ae: $aa
	ld   [bc], a                                     ; $60af: $02
	ld   [bc], a                                     ; $60b0: $02
	inc  bc                                          ; $60b1: $03
	ld   bc, $2001                                   ; $60b2: $01 $01 $20
	nop                                              ; $60b5: $00
	rlca                                             ; $60b6: $07
	call z, $0202                                    ; $60b7: $cc $02 $02
	inc  bc                                          ; $60ba: $03
	ld   bc, $2002                                   ; $60bb: $01 $02 $20
	nop                                              ; $60be: $00
	ld   b, $38                                      ; $60bf: $06 $38
	dec  b                                           ; $60c1: $05
	rrca                                             ; $60c2: $0f
	nop                                              ; $60c3: $00
	ld   bc, $fd01                                   ; $60c4: $01 $01 $fd
	ld   h, c                                        ; $60c7: $61
	ld   d, h                                        ; $60c8: $54
	ld   a, b                                        ; $60c9: $78
	ld   [hl], c                                     ; $60ca: $71
	ld   l, l                                        ; $60cb: $6d
	sub  a                                           ; $60cc: $97
	sbc  [hl]                                        ; $60cd: $9e
	dec  c                                           ; $60ce: $0d
	db   $10                                         ; $60cf: $10
	ld   h, c                                        ; $60d0: $61
	ld   a, h                                        ; $60d1: $7c
	inc  b                                           ; $60d2: $04
	ld   a, [de]                                     ; $60d3: $1a
	ld   [bc], a                                     ; $60d4: $02
	cp   b                                           ; $60d5: $b8
	and  b                                           ; $60d6: $a0
	ld   h, e                                        ; $60d7: $63
	sub  a                                           ; $60d8: $97
	ld   [hl], c                                     ; $60d9: $71
	ld   [hl], h                                     ; $60da: $74
	sub  d                                           ; $60db: $92
	sbc  c                                           ; $60dc: $99
	cp   $0d                                         ; $60dd: $fe $0d
	nop                                              ; $60df: $00
	ld   a, [bc]                                     ; $60e0: $0a
	dec  b                                           ; $60e1: $05
	ld   b, b                                        ; $60e2: $40
	rst  $38                                         ; $60e3: $ff
	inc  bc                                          ; $60e4: $03
	rst  $38                                         ; $60e5: $ff
	ld   bc, $2801                                   ; $60e6: $01 $01 $28
	nop                                              ; $60e9: $00
	ld   b, $ee                                      ; $60ea: $06 $ee
	ld   [bc], a                                     ; $60ec: $02
	rrca                                             ; $60ed: $0f
	nop                                              ; $60ee: $00
	ld   bc, $fd01                                   ; $60ef: $01 $01 $fd
	ld   h, c                                        ; $60f2: $61
	ld   d, h                                        ; $60f3: $54
	ld   a, b                                        ; $60f4: $78
	ld   [hl], c                                     ; $60f5: $71
	ld   l, l                                        ; $60f6: $6d
	sub  a                                           ; $60f7: $97
	sbc  [hl]                                        ; $60f8: $9e
	dec  c                                           ; $60f9: $0d
	db   $10                                         ; $60fa: $10
	ld   h, c                                        ; $60fb: $61
	ld   a, h                                        ; $60fc: $7c
	inc  b                                           ; $60fd: $04
	ld   a, [de]                                     ; $60fe: $1a
	ld   [bc], a                                     ; $60ff: $02
	cp   b                                           ; $6100: $b8
	and  b                                           ; $6101: $a0
	ld   h, e                                        ; $6102: $63
	sbc  l                                           ; $6103: $9d
	ld   [hl], c                                     ; $6104: $71
	ld   [hl], h                                     ; $6105: $74
	sub  d                                           ; $6106: $92
	sbc  c                                           ; $6107: $99
	cp   $0d                                         ; $6108: $fe $0d
	nop                                              ; $610a: $00
	ld   a, [bc]                                     ; $610b: $0a
	ld   b, $ee                                      ; $610c: $06 $ee
	ld   [bc], a                                     ; $610e: $02
	rrca                                             ; $610f: $0f
	nop                                              ; $6110: $00
	ld   bc, $fd01                                   ; $6111: $01 $01 $fd
	ld   h, c                                        ; $6114: $61
	ld   d, h                                        ; $6115: $54
	ld   a, b                                        ; $6116: $78
	ld   [hl], c                                     ; $6117: $71
	ld   l, l                                        ; $6118: $6d
	sub  a                                           ; $6119: $97
	sbc  [hl]                                        ; $611a: $9e
	dec  c                                           ; $611b: $0d
	db   $10                                         ; $611c: $10
	ld   h, c                                        ; $611d: $61
	ld   a, h                                        ; $611e: $7c
	inc  b                                           ; $611f: $04
	ld   a, [de]                                     ; $6120: $1a
	ld   [bc], a                                     ; $6121: $02
	cp   b                                           ; $6122: $b8
	and  b                                           ; $6123: $a0
	sbc  l                                           ; $6124: $9d
	sub  a                                           ; $6125: $97
	ld   [hl], c                                     ; $6126: $71
	ld   [hl], h                                     ; $6127: $74
	sub  d                                           ; $6128: $92
	sbc  c                                           ; $6129: $99
	cp   $0d                                         ; $612a: $fe $0d
	nop                                              ; $612c: $00
	ld   a, [bc]                                     ; $612d: $0a
	ld   b, $ee                                      ; $612e: $06 $ee
	ld   [bc], a                                     ; $6130: $02
	inc  e                                           ; $6131: $1c
	ld   bc, $0606                                   ; $6132: $01 $06 $06
	ld   bc, $0258                                   ; $6135: $01 $58 $02
	add  b                                           ; $6138: $80
	ld   d, d                                        ; $6139: $52
	ld   [hl], l                                     ; $613a: $75
	ld   h, a                                        ; $613b: $67
	sbc  a                                           ; $613c: $9f
	inc  bc                                          ; $613d: $03
	ld   e, e                                        ; $613e: $5b
	ld   e, a                                        ; $613f: $5f
	ld   [hl], h                                     ; $6140: $74
	ld   [bc], a                                     ; $6141: $02
	inc  [hl]                                        ; $6142: $34
	ld   h, e                                        ; $6143: $63
	ld   d, d                                        ; $6144: $52
	sbc  a                                           ; $6145: $9f
	dec  c                                           ; $6146: $0d
	ld   e, b                                        ; $6147: $58
	ld   [bc], a                                     ; $6148: $02
	add  b                                           ; $6149: $80
	ld   d, d                                        ; $614a: $52
	ld   [hl], l                                     ; $614b: $75
	ld   h, a                                        ; $614c: $67
	ld   a, [$000d]                                  ; $614d: $fa $0d $00
	ld   a, [bc]                                     ; $6150: $0a
	rrca                                             ; $6151: $0f
	nop                                              ; $6152: $00
	ld   bc, $fd01                                   ; $6153: $01 $01 $fd
	ld   d, h                                        ; $6156: $54
	sbc  c                                           ; $6157: $99
	ld   h, e                                        ; $6158: $63
	ld   d, d                                        ; $6159: $52
	ld   a, [$6310]                                  ; $615a: $fa $10 $63
	sbc  l                                           ; $615d: $9d
	ld   e, [hl]                                     ; $615e: $5e
	ld   [hl], l                                     ; $615f: $75
	ld   a, b                                        ; $6160: $78
	ld   d, d                                        ; $6161: $52
	dec  c                                           ; $6162: $0d
	db   $10                                         ; $6163: $10
	ld   e, b                                        ; $6164: $58
	adc  h                                           ; $6165: $8c
	ld   d, [hl]                                     ; $6166: $56
	ld   a, l                                        ; $6167: $7d
	inc  bc                                          ; $6168: $03
	ld   d, b                                        ; $6169: $50
	ld   [bc], a                                     ; $616a: $02
	ld   a, h                                        ; $616b: $7c
	ld   [bc], a                                     ; $616c: $02
	or   [hl]                                        ; $616d: $b6
	and  b                                           ; $616e: $a0
	ld   e, b                                        ; $616f: $58
	add  c                                           ; $6170: $81
	ld   e, e                                        ; $6171: $5b
	ld   l, [hl]                                     ; $6172: $6e
	ld   h, a                                        ; $6173: $67
	dec  c                                           ; $6174: $0d
	db   $10                                         ; $6175: $10
	rst  $38                                         ; $6176: $ff
	rst  $38                                         ; $6177: $ff
	dec  c                                           ; $6178: $0d
	nop                                              ; $6179: $00
	ld   a, [bc]                                     ; $617a: $0a
	add  hl, de                                      ; $617b: $19
	dec  b                                           ; $617c: $05
	inc  bc                                          ; $617d: $03
	xor  c                                           ; $617e: $a9
	or   [hl]                                        ; $617f: $b6
	ld   a, b                                        ; $6180: $78
	ld   a, h                                        ; $6181: $7c
	ld   l, [hl]                                     ; $6182: $6e
	nop                                              ; $6183: $00
	nop                                              ; $6184: $00
	db   $e3                                         ; $6185: $e3
	cp   b                                           ; $6186: $b8
	ld   a, b                                        ; $6187: $78
	ld   a, h                                        ; $6188: $7c
	ld   l, [hl]                                     ; $6189: $6e
	nop                                              ; $618a: $00
	ld   bc, $a5a3                                   ; $618b: $01 $a3 $a5
	rst  ToBoot                                         ; $618e: $c7
	ldh  [c], a                                      ; $618f: $e2
	ld   a, b                                        ; $6190: $78
	ld   a, h                                        ; $6191: $7c
	ld   l, [hl]                                     ; $6192: $6e
	nop                                              ; $6193: $00
	ld   [bc], a                                     ; $6194: $02
	rlca                                             ; $6195: $07
	ld   [hl], b                                     ; $6196: $70
	inc  bc                                          ; $6197: $03
	ld   [bc], a                                     ; $6198: $02
	inc  bc                                          ; $6199: $03
	ld   bc, $2000                                   ; $619a: $01 $00 $20
	nop                                              ; $619d: $00
	rlca                                             ; $619e: $07
	xor  h                                           ; $619f: $ac
	inc  bc                                          ; $61a0: $03
	ld   [bc], a                                     ; $61a1: $02
	inc  bc                                          ; $61a2: $03
	ld   bc, $2001                                   ; $61a3: $01 $01 $20
	nop                                              ; $61a6: $00
	rlca                                             ; $61a7: $07
	db   $dd                                         ; $61a8: $dd
	inc  bc                                          ; $61a9: $03
	ld   [bc], a                                     ; $61aa: $02
	inc  bc                                          ; $61ab: $03
	ld   bc, $2002                                   ; $61ac: $01 $02 $20
	nop                                              ; $61af: $00
	ld   b, $38                                      ; $61b0: $06 $38
	dec  b                                           ; $61b2: $05
	rrca                                             ; $61b3: $0f
	nop                                              ; $61b4: $00
	ld   bc, $fd01                                   ; $61b5: $01 $01 $fd
	ld   d, h                                        ; $61b8: $54
	sbc  c                                           ; $61b9: $99
	ld   h, e                                        ; $61ba: $63
	ld   d, d                                        ; $61bb: $52
	ld   a, [$6310]                                  ; $61bc: $fa $10 $63
	sbc  l                                           ; $61bf: $9d
	ld   e, [hl]                                     ; $61c0: $5e
	ld   [hl], l                                     ; $61c1: $75
	ld   a, b                                        ; $61c2: $78
	ld   d, d                                        ; $61c3: $52
	dec  c                                           ; $61c4: $0d
	db   $10                                         ; $61c5: $10
	ld   e, b                                        ; $61c6: $58
	adc  h                                           ; $61c7: $8c
	ld   d, [hl]                                     ; $61c8: $56
	ld   a, l                                        ; $61c9: $7d
	inc  bc                                          ; $61ca: $03
	ld   d, b                                        ; $61cb: $50
	ld   [bc], a                                     ; $61cc: $02
	ld   a, h                                        ; $61cd: $7c
	ld   [bc], a                                     ; $61ce: $02
	or   [hl]                                        ; $61cf: $b6
	and  b                                           ; $61d0: $a0
	ld   e, b                                        ; $61d1: $58
	add  c                                           ; $61d2: $81
	ld   e, e                                        ; $61d3: $5b
	ld   l, [hl]                                     ; $61d4: $6e
	ld   h, a                                        ; $61d5: $67
	dec  c                                           ; $61d6: $0d
	nop                                              ; $61d7: $00
	dec  b                                           ; $61d8: $05
	ld   b, b                                        ; $61d9: $40
	rst  $38                                         ; $61da: $ff
	inc  bc                                          ; $61db: $03
	rst  $38                                         ; $61dc: $ff
	ld   bc, $2801                                   ; $61dd: $01 $01 $28
	nop                                              ; $61e0: $00
	ld   bc, $a910                                   ; $61e1: $01 $10 $a9
	or   [hl]                                        ; $61e4: $b6
	ld   a, b                                        ; $61e5: $78
	ld   a, h                                        ; $61e6: $7c
	ld   l, [hl]                                     ; $61e7: $6e
	cp   $0d                                         ; $61e8: $fe $0d
	nop                                              ; $61ea: $00
	ld   a, [bc]                                     ; $61eb: $0a
	ld   b, $10                                      ; $61ec: $06 $10
	inc  b                                           ; $61ee: $04
	rrca                                             ; $61ef: $0f
	nop                                              ; $61f0: $00
	ld   bc, $fd01                                   ; $61f1: $01 $01 $fd
	ld   d, h                                        ; $61f4: $54
	sbc  c                                           ; $61f5: $99
	ld   h, e                                        ; $61f6: $63
	ld   d, d                                        ; $61f7: $52
	ld   a, [$6310]                                  ; $61f8: $fa $10 $63
	sbc  l                                           ; $61fb: $9d
	ld   e, [hl]                                     ; $61fc: $5e
	ld   [hl], l                                     ; $61fd: $75
	ld   a, b                                        ; $61fe: $78
	ld   d, d                                        ; $61ff: $52
	dec  c                                           ; $6200: $0d
	db   $10                                         ; $6201: $10
	ld   e, b                                        ; $6202: $58
	adc  h                                           ; $6203: $8c
	ld   d, [hl]                                     ; $6204: $56
	ld   a, l                                        ; $6205: $7d
	inc  bc                                          ; $6206: $03
	ld   d, b                                        ; $6207: $50
	ld   [bc], a                                     ; $6208: $02
	ld   a, h                                        ; $6209: $7c
	ld   [bc], a                                     ; $620a: $02
	or   [hl]                                        ; $620b: $b6
	and  b                                           ; $620c: $a0
	ld   e, b                                        ; $620d: $58
	add  c                                           ; $620e: $81
	ld   e, e                                        ; $620f: $5b
	ld   l, [hl]                                     ; $6210: $6e
	ld   h, a                                        ; $6211: $67
	dec  c                                           ; $6212: $0d
	db   $10                                         ; $6213: $10
	db   $e3                                         ; $6214: $e3
	cp   b                                           ; $6215: $b8
	ld   a, b                                        ; $6216: $78
	ld   a, h                                        ; $6217: $7c
	ld   l, [hl]                                     ; $6218: $6e
	cp   $0d                                         ; $6219: $fe $0d
	nop                                              ; $621b: $00
	ld   a, [bc]                                     ; $621c: $0a
	ld   b, $10                                      ; $621d: $06 $10
	inc  b                                           ; $621f: $04
	rrca                                             ; $6220: $0f
	nop                                              ; $6221: $00
	ld   bc, $fd01                                   ; $6222: $01 $01 $fd
	ld   d, h                                        ; $6225: $54
	sbc  c                                           ; $6226: $99
	ld   h, e                                        ; $6227: $63
	ld   d, d                                        ; $6228: $52
	ld   a, [$6310]                                  ; $6229: $fa $10 $63
	sbc  l                                           ; $622c: $9d
	ld   e, [hl]                                     ; $622d: $5e
	ld   [hl], l                                     ; $622e: $75
	ld   a, b                                        ; $622f: $78
	ld   d, d                                        ; $6230: $52
	dec  c                                           ; $6231: $0d
	db   $10                                         ; $6232: $10
	ld   e, b                                        ; $6233: $58
	adc  h                                           ; $6234: $8c
	ld   d, [hl]                                     ; $6235: $56
	ld   a, l                                        ; $6236: $7d
	inc  bc                                          ; $6237: $03
	ld   d, b                                        ; $6238: $50
	ld   [bc], a                                     ; $6239: $02
	ld   a, h                                        ; $623a: $7c
	ld   [bc], a                                     ; $623b: $02
	or   [hl]                                        ; $623c: $b6
	and  b                                           ; $623d: $a0
	ld   e, b                                        ; $623e: $58
	add  c                                           ; $623f: $81
	ld   e, e                                        ; $6240: $5b
	ld   l, [hl]                                     ; $6241: $6e
	ld   h, a                                        ; $6242: $67
	dec  c                                           ; $6243: $0d
	db   $10                                         ; $6244: $10
	and  e                                           ; $6245: $a3
	and  l                                           ; $6246: $a5
	rst  ToBoot                                         ; $6247: $c7
	ldh  [c], a                                      ; $6248: $e2
	ld   a, b                                        ; $6249: $78
	ld   a, h                                        ; $624a: $7c
	ld   l, [hl]                                     ; $624b: $6e
	cp   $0d                                         ; $624c: $fe $0d
	nop                                              ; $624e: $00
	ld   a, [bc]                                     ; $624f: $0a
	ld   b, $10                                      ; $6250: $06 $10
	inc  b                                           ; $6252: $04
	inc  e                                           ; $6253: $1c
	ld   bc, $0404                                   ; $6254: $01 $04 $04
	ld   bc, $9a6e                                   ; $6257: $01 $6e $9a
	ld   e, c                                        ; $625a: $59
	rst  $38                                         ; $625b: $ff
	rst  $38                                         ; $625c: $ff
	dec  c                                           ; $625d: $0d
	ld   l, [hl]                                     ; $625e: $6e
	sbc  d                                           ; $625f: $9a
	ld   e, c                                        ; $6260: $59
	sbc  [hl]                                        ; $6261: $9e
	inc  bc                                          ; $6262: $03
	ld   e, e                                        ; $6263: $5b
	ld   e, a                                        ; $6264: $5f
	ld   [hl], h                                     ; $6265: $74
	ld   e, l                                        ; $6266: $5d
	ld   l, [hl]                                     ; $6267: $6e
	ld   h, e                                        ; $6268: $63
	ld   d, d                                        ; $6269: $52
	ld   a, [$000d]                                  ; $626a: $fa $0d $00
	ld   a, [bc]                                     ; $626d: $0a
	rrca                                             ; $626e: $0f
	nop                                              ; $626f: $00
	ld   bc, $fd01                                   ; $6270: $01 $01 $fd
	ldh  [c], a                                      ; $6273: $e2
	pop  bc                                          ; $6274: $c1
	sbc  [hl]                                        ; $6275: $9e
	ldh  [c], a                                      ; $6276: $e2
	pop  bc                                          ; $6277: $c1
	sbc  a                                           ; $6278: $9f
	dec  c                                           ; $6279: $0d
	db   $10                                         ; $627a: $10
	ld   h, c                                        ; $627b: $61
	ld   a, h                                        ; $627c: $7c
	rst  $38                                         ; $627d: $ff
	rst  $38                                         ; $627e: $ff
	rst  $38                                         ; $627f: $ff
	rst  $38                                         ; $6280: $ff
	ld   a, c                                        ; $6281: $79
	ld   h, e                                        ; $6282: $63
	ld   e, c                                        ; $6283: $59
	sub  a                                           ; $6284: $97
	ld   d, h                                        ; $6285: $54
	dec  c                                           ; $6286: $0d
	db   $10                                         ; $6287: $10
	sub  b                                           ; $6288: $90
	ld   a, h                                        ; $6289: $7c
	ld   a, b                                        ; $628a: $78
	ld   [hl], a                                     ; $628b: $77
	sbc  [hl]                                        ; $628c: $9e
	ld   e, b                                        ; $628d: $58
	sub  a                                           ; $628e: $97
	ld   a, d                                        ; $628f: $7a
	sbc  l                                           ; $6290: $9d
	ld   a, [$0dfe]                                  ; $6291: $fa $fe $0d
	nop                                              ; $6294: $00
	ld   a, [bc]                                     ; $6295: $0a
	add  hl, de                                      ; $6296: $19
	dec  b                                           ; $6297: $05
	inc  bc                                          ; $6298: $03
	inc  b                                           ; $6299: $04
	ld   hl, sp+$02                                  ; $629a: $f8 $02
	add  a                                           ; $629c: $87
	inc  b                                           ; $629d: $04
	or   a                                           ; $629e: $b7
	inc  bc                                          ; $629f: $03
	add  d                                           ; $62a0: $82
	ld   a, c                                        ; $62a1: $79
	nop                                              ; $62a2: $00
	nop                                              ; $62a3: $00
	ld   [bc], a                                     ; $62a4: $02
	dec  sp                                          ; $62a5: $3b
	dec  b                                           ; $62a6: $05
	sbc  a                                           ; $62a7: $9f
	ld   h, e                                        ; $62a8: $63
	adc  h                                           ; $62a9: $8c
	ld   a, c                                        ; $62aa: $79
	nop                                              ; $62ab: $00
	ld   bc, $8d67                                   ; $62ac: $01 $67 $8d
	sbc  d                                           ; $62af: $9a
	ld   h, e                                        ; $62b0: $63
	adc  h                                           ; $62b1: $8c
	ld   a, c                                        ; $62b2: $79
	nop                                              ; $62b3: $00
	ld   [bc], a                                     ; $62b4: $02
	rlca                                             ; $62b5: $07
	sub  b                                           ; $62b6: $90
	inc  b                                           ; $62b7: $04
	ld   [bc], a                                     ; $62b8: $02
	inc  bc                                          ; $62b9: $03
	ld   bc, $2000                                   ; $62ba: $01 $00 $20
	nop                                              ; $62bd: $00
	rlca                                             ; $62be: $07
	pop  de                                          ; $62bf: $d1
	inc  b                                           ; $62c0: $04
	ld   [bc], a                                     ; $62c1: $02
	inc  bc                                          ; $62c2: $03
	ld   bc, $2001                                   ; $62c3: $01 $01 $20
	nop                                              ; $62c6: $00
	rlca                                             ; $62c7: $07
	dec  b                                           ; $62c8: $05
	dec  b                                           ; $62c9: $05
	ld   [bc], a                                     ; $62ca: $02
	inc  bc                                          ; $62cb: $03
	ld   bc, $2002                                   ; $62cc: $01 $02 $20
	nop                                              ; $62cf: $00
	ld   b, $38                                      ; $62d0: $06 $38
	dec  b                                           ; $62d2: $05
	rrca                                             ; $62d3: $0f
	nop                                              ; $62d4: $00
	ld   bc, $fd01                                   ; $62d5: $01 $01 $fd
	ldh  [c], a                                      ; $62d8: $e2
	pop  bc                                          ; $62d9: $c1
	sbc  [hl]                                        ; $62da: $9e
	ldh  [c], a                                      ; $62db: $e2
	pop  bc                                          ; $62dc: $c1
	sbc  a                                           ; $62dd: $9f
	dec  c                                           ; $62de: $0d
	db   $10                                         ; $62df: $10
	ld   h, c                                        ; $62e0: $61
	ld   a, h                                        ; $62e1: $7c
	inc  b                                           ; $62e2: $04
	ld   hl, sp+$02                                  ; $62e3: $f8 $02
	add  a                                           ; $62e5: $87
	inc  b                                           ; $62e6: $04
	or   a                                           ; $62e7: $b7
	inc  bc                                          ; $62e8: $03
	add  d                                           ; $62e9: $82
	ld   a, c                                        ; $62ea: $79
	ld   h, e                                        ; $62eb: $63
	ld   e, c                                        ; $62ec: $59
	sub  a                                           ; $62ed: $97
	ld   d, h                                        ; $62ee: $54
	dec  c                                           ; $62ef: $0d
	nop                                              ; $62f0: $00
	dec  b                                           ; $62f1: $05
	ld   b, b                                        ; $62f2: $40
	rst  $38                                         ; $62f3: $ff
	inc  bc                                          ; $62f4: $03
	rst  $38                                         ; $62f5: $ff
	ld   bc, $2801                                   ; $62f6: $01 $01 $28
	nop                                              ; $62f9: $00
	ld   bc, $9010                                   ; $62fa: $01 $10 $90
	ld   a, h                                        ; $62fd: $7c
	ld   a, b                                        ; $62fe: $78
	ld   [hl], a                                     ; $62ff: $77
	sbc  [hl]                                        ; $6300: $9e
	ld   e, b                                        ; $6301: $58
	sub  a                                           ; $6302: $97
	ld   a, d                                        ; $6303: $7a
	sbc  l                                           ; $6304: $9d
	cp   $0d                                         ; $6305: $fe $0d
	nop                                              ; $6307: $00
	ld   a, [bc]                                     ; $6308: $0a
	dec  c                                           ; $6309: $0d
	nop                                              ; $630a: $00
	nop                                              ; $630b: $00
	rrca                                             ; $630c: $0f
	nop                                              ; $630d: $00
	ld   bc, $020c                                   ; $630e: $01 $0c $02
	ld   b, $62                                      ; $6311: $06 $62
	dec  b                                           ; $6313: $05
	rrca                                             ; $6314: $0f
	nop                                              ; $6315: $00
	ld   bc, $fd01                                   ; $6316: $01 $01 $fd
	ldh  [c], a                                      ; $6319: $e2
	pop  bc                                          ; $631a: $c1
	sbc  [hl]                                        ; $631b: $9e
	ldh  [c], a                                      ; $631c: $e2
	pop  bc                                          ; $631d: $c1
	sbc  a                                           ; $631e: $9f
	dec  c                                           ; $631f: $0d
	db   $10                                         ; $6320: $10
	ld   h, c                                        ; $6321: $61
	ld   a, h                                        ; $6322: $7c
	ld   [bc], a                                     ; $6323: $02
	dec  sp                                          ; $6324: $3b
	dec  b                                           ; $6325: $05
	sbc  a                                           ; $6326: $9f
	ld   h, e                                        ; $6327: $63
	adc  h                                           ; $6328: $8c
	ld   a, c                                        ; $6329: $79
	ld   h, e                                        ; $632a: $63
	ld   e, c                                        ; $632b: $59
	sub  a                                           ; $632c: $97
	ld   d, h                                        ; $632d: $54
	dec  c                                           ; $632e: $0d
	db   $10                                         ; $632f: $10
	sub  b                                           ; $6330: $90
	ld   a, h                                        ; $6331: $7c
	ld   a, b                                        ; $6332: $78
	ld   [hl], a                                     ; $6333: $77
	sbc  [hl]                                        ; $6334: $9e
	ld   e, b                                        ; $6335: $58
	sub  a                                           ; $6336: $97
	ld   a, d                                        ; $6337: $7a
	sbc  l                                           ; $6338: $9d
	cp   $0d                                         ; $6339: $fe $0d
	nop                                              ; $633b: $00
	ld   a, [bc]                                     ; $633c: $0a
	dec  c                                           ; $633d: $0d
	nop                                              ; $633e: $00
	nop                                              ; $633f: $00
	rrca                                             ; $6340: $0f
	nop                                              ; $6341: $00
	ld   bc, $020c                                   ; $6342: $01 $0c $02
	ld   b, $62                                      ; $6345: $06 $62
	dec  b                                           ; $6347: $05
	rrca                                             ; $6348: $0f
	nop                                              ; $6349: $00
	ld   bc, $fd01                                   ; $634a: $01 $01 $fd
	ldh  [c], a                                      ; $634d: $e2
	pop  bc                                          ; $634e: $c1
	sbc  [hl]                                        ; $634f: $9e
	ldh  [c], a                                      ; $6350: $e2
	pop  bc                                          ; $6351: $c1
	sbc  a                                           ; $6352: $9f
	dec  c                                           ; $6353: $0d
	db   $10                                         ; $6354: $10
	ld   h, c                                        ; $6355: $61
	ld   a, h                                        ; $6356: $7c
	ld   h, a                                        ; $6357: $67
	adc  l                                           ; $6358: $8d
	sbc  d                                           ; $6359: $9a
	ld   h, e                                        ; $635a: $63
	adc  h                                           ; $635b: $8c
	ld   a, c                                        ; $635c: $79
	ld   h, e                                        ; $635d: $63
	ld   e, c                                        ; $635e: $59
	sub  a                                           ; $635f: $97
	ld   d, h                                        ; $6360: $54
	dec  c                                           ; $6361: $0d
	db   $10                                         ; $6362: $10
	sub  b                                           ; $6363: $90
	ld   a, h                                        ; $6364: $7c
	ld   a, b                                        ; $6365: $78
	ld   [hl], a                                     ; $6366: $77
	sbc  [hl]                                        ; $6367: $9e
	ld   e, b                                        ; $6368: $58
	sub  a                                           ; $6369: $97
	ld   a, d                                        ; $636a: $7a
	sbc  l                                           ; $636b: $9d
	cp   $0d                                         ; $636c: $fe $0d
	nop                                              ; $636e: $00
	ld   a, [bc]                                     ; $636f: $0a
	dec  c                                           ; $6370: $0d
	nop                                              ; $6371: $00
	nop                                              ; $6372: $00
	rrca                                             ; $6373: $0f
	nop                                              ; $6374: $00
	ld   bc, $020c                                   ; $6375: $01 $0c $02
	ld   b, $62                                      ; $6378: $06 $62
	dec  b                                           ; $637a: $05
	inc  e                                           ; $637b: $1c
	ld   bc, $0404                                   ; $637c: $01 $04 $04
	ld   bc, $7c61                                   ; $637f: $01 $61 $7c
	ld   e, l                                        ; $6382: $5d
	sub  a                                           ; $6383: $97
	ld   d, d                                        ; $6384: $52
	ld   a, h                                        ; $6385: $7c
	cp   h                                           ; $6386: $bc
	db   $ec                                         ; $6387: $ec
	sub  $75                                         ; $6388: $d6 $75
	dec  c                                           ; $638a: $0d
	halt                                             ; $638b: $76
	ld   l, a                                        ; $638c: $6f
	sub  a                                           ; $638d: $97
	ld   a, b                                        ; $638e: $78
	ld   d, d                                        ; $638f: $52
	ld   [hl], l                                     ; $6390: $75
	ld   [bc], a                                     ; $6391: $02
	inc  [hl]                                        ; $6392: $34
	ld   h, e                                        ; $6393: $63
	ld   d, d                                        ; $6394: $52
	rst  $38                                         ; $6395: $ff
	rst  $38                                         ; $6396: $ff
	dec  c                                           ; $6397: $0d
	nop                                              ; $6398: $00
	ld   a, [bc]                                     ; $6399: $0a
	dec  c                                           ; $639a: $0d
	nop                                              ; $639b: $00
	nop                                              ; $639c: $00
	rrca                                             ; $639d: $0f
	nop                                              ; $639e: $00
	ld   bc, $020c                                   ; $639f: $01 $0c $02
	ld   b, $37                                      ; $63a2: $06 $37
	ld   b, $07                                      ; $63a4: $06 $07
	ld   a, l                                        ; $63a6: $7d
	dec  b                                           ; $63a7: $05
	inc  bc                                          ; $63a8: $03
	rst  $38                                         ; $63a9: $ff
	ld   bc, $2003                                   ; $63aa: $01 $03 $20
	nop                                              ; $63ad: $00
	rlca                                             ; $63ae: $07
	jp   hl                                          ; $63af: $e9


	dec  b                                           ; $63b0: $05
	inc  bc                                          ; $63b1: $03
	rst  $38                                         ; $63b2: $ff
	ld   bc, $2002                                   ; $63b3: $01 $02 $20
	nop                                              ; $63b6: $00
	rlca                                             ; $63b7: $07
	scf                                              ; $63b8: $37
	ld   b, $03                                      ; $63b9: $06 $03
	rst  $38                                         ; $63bb: $ff
	ld   bc, $2202                                   ; $63bc: $01 $02 $22
	nop                                              ; $63bf: $00
	ld   c, $31                                      ; $63c0: $0e $31
	inc  e                                           ; $63c2: $1c
	ld   bc, $0000                                   ; $63c3: $01 $00 $00
	ld   bc, $0458                                   ; $63c6: $01 $58 $04
	ld   a, e                                        ; $63c9: $7b
	sbc  d                                           ; $63ca: $9a
	ld   h, e                                        ; $63cb: $63
	adc  h                                           ; $63cc: $8c
	ld   [hl], l                                     ; $63cd: $75
	ld   h, a                                        ; $63ce: $67
	sbc  a                                           ; $63cf: $9f
	dec  c                                           ; $63d0: $0d
	ld   h, a                                        ; $63d1: $67
	ld   h, d                                        ; $63d2: $62
	ld   e, l                                        ; $63d3: $5d
	sub  [hl]                                        ; $63d4: $96
	ld   e, c                                        ; $63d5: $59
	ld   [hl], c                                     ; $63d6: $71
	ld   l, l                                        ; $63d7: $6d
	ld   [hl], l                                     ; $63d8: $75
	ld   h, a                                        ; $63d9: $67
	sub  [hl]                                        ; $63da: $96
	sbc  a                                           ; $63db: $9f
	dec  c                                           ; $63dc: $0d
	nop                                              ; $63dd: $00
	ld   a, [bc]                                     ; $63de: $0a
	inc  e                                           ; $63df: $1c
	ld   bc, $0101                                   ; $63e0: $01 $01 $01
	dec  e                                           ; $63e3: $1d
	ld   b, b                                        ; $63e4: $40
	ld   de, $1103                                   ; $63e5: $11 $03 $11
	ld   bc, $2803                                   ; $63e8: $01 $03 $28
	nop                                              ; $63eb: $00
	ld   bc, $0008                                   ; $63ec: $01 $08 $00
	ld   h, e                                        ; $63ef: $63
	and  c                                           ; $63f0: $a1
	ld   [hl], h                                     ; $63f1: $74
	ld   e, b                                        ; $63f2: $58
	inc  bc                                          ; $63f3: $03
	sub  c                                           ; $63f4: $91
	ld   [bc], a                                     ; $63f5: $02
	dec  h                                           ; $63f6: $25
	dec  c                                           ; $63f7: $0d
	inc  bc                                          ; $63f8: $03
	ld   h, l                                        ; $63f9: $65
	inc  bc                                          ; $63fa: $03
	ld   l, e                                        ; $63fb: $6b
	ld   a, b                                        ; $63fc: $78
	and  c                                           ; $63fd: $a1
	ld   [hl], l                                     ; $63fe: $75
	ld   h, a                                        ; $63ff: $67
	ld   a, e                                        ; $6400: $7b
	sbc  a                                           ; $6401: $9f
	dec  c                                           ; $6402: $0d
	ld   e, b                                        ; $6403: $58
	ld   e, c                                        ; $6404: $59
	ld   h, b                                        ; $6405: $60
	ld   h, e                                        ; $6406: $63
	adc  h                                           ; $6407: $8c
	ld   [hl], l                                     ; $6408: $75
	inc  bc                                          ; $6409: $03
	ld   e, e                                        ; $640a: $5b
	ld   e, c                                        ; $640b: $59
	sbc  b                                           ; $640c: $98
	adc  h                                           ; $640d: $8c
	ld   h, l                                        ; $640e: $65
	ld   l, l                                        ; $640f: $6d
	sbc  a                                           ; $6410: $9f
	dec  c                                           ; $6411: $0d
	nop                                              ; $6412: $00
	ld   a, [bc]                                     ; $6413: $0a
	ld   bc, $5477                                   ; $6414: $01 $77 $54
	sub  b                                           ; $6417: $90
	sbc  [hl]                                        ; $6418: $9e
	ld   d, b                                        ; $6419: $50
	sbc  b                                           ; $641a: $98
	ld   e, d                                        ; $641b: $5a
	halt                                             ; $641c: $76
	ld   d, h                                        ; $641d: $54
	dec  c                                           ; $641e: $0d
	ld   h, d                                        ; $641f: $62
	ld   h, h                                        ; $6420: $64
	ld   d, d                                        ; $6421: $52
	adc  h                                           ; $6422: $8c
	ld   h, l                                        ; $6423: $65
	ld   l, l                                        ; $6424: $6d
	sbc  a                                           ; $6425: $9f
	dec  c                                           ; $6426: $0d
	nop                                              ; $6427: $00
	ld   a, [bc]                                     ; $6428: $0a
	ld   b, $6d                                      ; $6429: $06 $6d
	ld   b, $0e                                      ; $642b: $06 $0e
	ld   sp, $011c                                   ; $642d: $31 $1c $01
	nop                                              ; $6430: $00
	nop                                              ; $6431: $00
	ld   bc, $5483                                   ; $6432: $01 $83 $54
	rst  $38                                         ; $6435: $ff
	rst  $38                                         ; $6436: $ff
	ld   e, b                                        ; $6437: $58
	inc  b                                           ; $6438: $04
	ld   a, e                                        ; $6439: $7b
	sbc  d                                           ; $643a: $9a
	ld   h, e                                        ; $643b: $63
	adc  h                                           ; $643c: $8c
	ld   [hl], l                                     ; $643d: $75
	ld   h, l                                        ; $643e: $65
	ld   l, l                                        ; $643f: $6d
	sbc  a                                           ; $6440: $9f
	dec  c                                           ; $6441: $0d
	nop                                              ; $6442: $00
	ld   a, [bc]                                     ; $6443: $0a
	dec  e                                           ; $6444: $1d
	ld   b, b                                        ; $6445: $40
	ld   de, $1103                                   ; $6446: $11 $03 $11
	ld   bc, $2801                                   ; $6449: $01 $01 $28
	nop                                              ; $644c: $00
	ld   bc, $956f                                   ; $644d: $01 $6f $95
	ld   [hl], c                                     ; $6450: $71
	halt                                             ; $6451: $76
	sbc  [hl]                                        ; $6452: $9e
	adc  h                                           ; $6453: $8c
	ld   l, a                                        ; $6454: $6f
	ld   e, d                                        ; $6455: $5a
	ld   [hl], c                                     ; $6456: $71
	ld   [hl], h                                     ; $6457: $74
	adc  h                                           ; $6458: $8c
	ld   h, l                                        ; $6459: $65
	ld   l, l                                        ; $645a: $6d
	dec  c                                           ; $645b: $0d
	ld   e, a                                        ; $645c: $5f
	ld   [hl], a                                     ; $645d: $77
	sbc  [hl]                                        ; $645e: $9e
	inc  bc                                          ; $645f: $03
	inc  c                                           ; $6460: $0c
	adc  a                                           ; $6461: $8f
	ld   [hl], h                                     ; $6462: $74
	ld   a, h                                        ; $6463: $7c
	ld   h, c                                        ; $6464: $61
	halt                                             ; $6465: $76
	ld   l, [hl]                                     ; $6466: $6e
	ld   e, c                                        ; $6467: $59
	sub  a                                           ; $6468: $97
	dec  c                                           ; $6469: $0d
	ld   h, l                                        ; $646a: $65
	ld   e, c                                        ; $646b: $59
	ld   l, l                                        ; $646c: $6d
	ld   a, b                                        ; $646d: $78
	ld   d, d                                        ; $646e: $52
	ld   [hl], l                                     ; $646f: $75
	ld   h, a                                        ; $6470: $67
	sub  [hl]                                        ; $6471: $96
	ld   a, e                                        ; $6472: $7b
	sbc  a                                           ; $6473: $9f
	dec  c                                           ; $6474: $0d
	nop                                              ; $6475: $00
	ld   a, [bc]                                     ; $6476: $0a
	ld   b, $6d                                      ; $6477: $06 $6d
	ld   b, $0e                                      ; $6479: $06 $0e
	ld   sp, $011c                                   ; $647b: $31 $1c $01
	rlca                                             ; $647e: $07
	rlca                                             ; $647f: $07
	dec  e                                           ; $6480: $1d
	ld   b, b                                        ; $6481: $40
	ld   de, $1103                                   ; $6482: $11 $03 $11
	ld   bc, $2902                                   ; $6485: $01 $02 $29
	nop                                              ; $6488: $00
	ld   bc, $ffff                                   ; $6489: $01 $ff $ff
	inc  b                                           ; $648c: $04
	ld   e, $7c                                      ; $648d: $1e $7c
	inc  bc                                          ; $648f: $03
	add  d                                           ; $6490: $82
	ld   a, c                                        ; $6491: $79
	ld   l, l                                        ; $6492: $6d
	ld   a, h                                        ; $6493: $7c
	and  c                                           ; $6494: $a1
	ld   l, [hl]                                     ; $6495: $6e
	inc  b                                           ; $6496: $04
	ld   a, b                                        ; $6497: $78
	ld   e, d                                        ; $6498: $5a
	dec  c                                           ; $6499: $0d
	dec  b                                           ; $649a: $05
	dec  d                                           ; $649b: $15
	ld   e, c                                        ; $649c: $59
	ld   [hl], c                                     ; $649d: $71
	ld   l, l                                        ; $649e: $6d
	ld   e, c                                        ; $649f: $59
	sub  b                                           ; $64a0: $90
	inc  b                                           ; $64a1: $04
	dec  hl                                          ; $64a2: $2b
	sbc  d                                           ; $64a3: $9a
	adc  h                                           ; $64a4: $8c
	ld   l, c                                        ; $64a5: $69
	and  c                                           ; $64a6: $a1
	ld   a, e                                        ; $64a7: $7b
	rst  $38                                         ; $64a8: $ff
	rst  $38                                         ; $64a9: $ff
	dec  c                                           ; $64aa: $0d
	nop                                              ; $64ab: $00
	ld   a, [bc]                                     ; $64ac: $0a
	ld   b, $6d                                      ; $64ad: $06 $6d
	ld   b, $07                                      ; $64af: $06 $07
	or   d                                           ; $64b1: $b2
	ld   b, $04                                      ; $64b2: $06 $04
	add  b                                           ; $64b4: $80
	ld   h, [hl]                                     ; $64b5: $66
	ld   bc, $20ff                                   ; $64b6: $01 $ff $20
	inc  bc                                          ; $64b9: $03
	ld   [hl], l                                     ; $64ba: $75
	ld   [bc], a                                     ; $64bb: $02
	nop                                              ; $64bc: $00
	jr   nz, @+$1e                                   ; $64bd: $20 $1c

	nop                                              ; $64bf: $00
	rlca                                             ; $64c0: $07
	sbc  d                                           ; $64c1: $9a
	ld   b, $04                                      ; $64c2: $06 $04
	add  b                                           ; $64c4: $80
	ld   h, [hl]                                     ; $64c5: $66
	ld   bc, $2000                                   ; $64c6: $01 $00 $20
	nop                                              ; $64c9: $00
	rlca                                             ; $64ca: $07
	sbc  d                                           ; $64cb: $9a
	ld   b, $04                                      ; $64cc: $06 $04
	add  b                                           ; $64ce: $80
	ld   h, [hl]                                     ; $64cf: $66
	ld   bc, $20ff                                   ; $64d0: $01 $ff $20
	inc  bc                                          ; $64d3: $03
	ld   [hl], l                                     ; $64d4: $75
	ld   [bc], a                                     ; $64d5: $02
	nop                                              ; $64d6: $00
	ld   bc, $2801                                   ; $64d7: $01 $01 $28
	jr   nz, jr_04f_64f8                             ; $64da: $20 $1c

	nop                                              ; $64dc: $00
	ld   bc, $9166                                   ; $64dd: $01 $66 $91
	sbc  [hl]                                        ; $64e0: $9e
	inc  bc                                          ; $64e1: $03
	add  e                                           ; $64e2: $83
	dec  b                                           ; $64e3: $05
	dec  c                                           ; $64e4: $0d
	ld   h, l                                        ; $64e5: $65
	adc  h                                           ; $64e6: $8c
	ld   h, a                                        ; $64e7: $67
	sbc  a                                           ; $64e8: $9f
	dec  c                                           ; $64e9: $0d
	nop                                              ; $64ea: $00
	ld   a, [bc]                                     ; $64eb: $0a
	dec  c                                           ; $64ec: $0d
	nop                                              ; $64ed: $00
	nop                                              ; $64ee: $00
	rrca                                             ; $64ef: $0f
	nop                                              ; $64f0: $00
	ld   bc, $1e09                                   ; $64f1: $01 $09 $1e
	nop                                              ; $64f4: $00
	ld   bc, $9166                                   ; $64f5: $01 $66 $91

jr_04f_64f8:
	sbc  [hl]                                        ; $64f8: $9e
	ld   h, c                                        ; $64f9: $61
	sbc  d                                           ; $64fa: $9a
	ld   [hl], l                                     ; $64fb: $75
	rst  $38                                         ; $64fc: $ff
	rst  $38                                         ; $64fd: $ff
	dec  c                                           ; $64fe: $0d
	nop                                              ; $64ff: $00
	inc  e                                           ; $6500: $1c
	ld   bc, $0303                                   ; $6501: $01 $03 $03
	ld   bc, $915b                                   ; $6504: $01 $5b $91
	ld   [hl], c                                     ; $6507: $71
	ld   a, [$000d]                                  ; $6508: $fa $0d $00
	ld   a, [bc]                                     ; $650b: $0a
	dec  c                                           ; $650c: $0d
	nop                                              ; $650d: $00
	nop                                              ; $650e: $00
	rrca                                             ; $650f: $0f
	nop                                              ; $6510: $00
	ld   bc, $5001                                   ; $6511: $01 $01 $50
	sbc  [hl]                                        ; $6514: $9e
	ld   h, e                                        ; $6515: $63
	ld   e, l                                        ; $6516: $5d
	sub  a                                           ; $6517: $97
	ld   h, e                                        ; $6518: $63
	and  c                                           ; $6519: $a1
	ld   a, [$000d]                                  ; $651a: $fa $0d $00
	ld   a, [bc]                                     ; $651d: $0a
	add  hl, bc                                      ; $651e: $09
	ld   e, $1c                                      ; $651f: $1e $1c
	ld   bc, $1808                                   ; $6521: $01 $08 $18
	ld   bc, $9252                                   ; $6524: $01 $52 $92
	ld   c, a                                        ; $6527: $4f
	db   $fc                                         ; $6528: $fc
	add  c                                           ; $6529: $81
	ld   h, l                                        ; $652a: $65
	sub  l                                           ; $652b: $95
	add  c                                           ; $652c: $81
	ld   h, l                                        ; $652d: $65
	sub  l                                           ; $652e: $95
	db   $fc                                         ; $652f: $fc
	sbc  a                                           ; $6530: $9f
	dec  c                                           ; $6531: $0d
	nop                                              ; $6532: $00
	ld   a, [bc]                                     ; $6533: $0a
	rrca                                             ; $6534: $0f
	nop                                              ; $6535: $00
	ld   bc, $6701                                   ; $6536: $01 $01 $67
	sbc  [hl]                                        ; $6539: $9e
	ld   h, a                                        ; $653a: $67
	adc  l                                           ; $653b: $8d
	adc  h                                           ; $653c: $8c
	ld   l, c                                        ; $653d: $69
	and  c                                           ; $653e: $a1
	ld   a, [$6b0d]                                  ; $653f: $fa $0d $6b
	ld   a, h                                        ; $6542: $7c
	pop  de                                          ; $6543: $d1
	or   d                                           ; $6544: $b2
	push bc                                          ; $6545: $c5
	sbc  [hl]                                        ; $6546: $9e
	ld   [bc], a                                     ; $6547: $02
	and  l                                           ; $6548: $a5
	inc  bc                                          ; $6549: $03
	ld   d, $df                                      ; $654a: $16 $df
	db   $ec                                         ; $654c: $ec
	and  e                                           ; $654d: $a3
	ld   h, e                                        ; $654e: $63
	and  c                                           ; $654f: $a1
	ld   a, c                                        ; $6550: $79
	dec  c                                           ; $6551: $0d
	ld   l, l                                        ; $6552: $6d
	ld   a, h                                        ; $6553: $7c
	adc  h                                           ; $6554: $8c
	sbc  d                                           ; $6555: $9a
	ld   l, l                                        ; $6556: $6d
	inc  bc                                          ; $6557: $03
	ld   [hl], a                                     ; $6558: $77
	add  e                                           ; $6559: $83
	ld   e, e                                        ; $655a: $5b
	ld   a, c                                        ; $655b: $79
	rst  $38                                         ; $655c: $ff
	rst  $38                                         ; $655d: $ff
	dec  c                                           ; $655e: $0d
	nop                                              ; $655f: $00
	ld   a, [bc]                                     ; $6560: $0a
	inc  e                                           ; $6561: $1c
	ld   bc, $0505                                   ; $6562: $01 $05 $05
	ld   bc, $9e52                                   ; $6565: $01 $52 $9e
	ld   d, d                                        ; $6568: $52
	ld   d, [hl]                                     ; $6569: $56
	rst  $38                                         ; $656a: $ff
	rst  $38                                         ; $656b: $ff
	ld   d, d                                        ; $656c: $52
	ld   d, d                                        ; $656d: $52
	and  c                                           ; $656e: $a1
	ld   [hl], l                                     ; $656f: $75
	ld   h, a                                        ; $6570: $67
	sub  [hl]                                        ; $6571: $96
	sbc  a                                           ; $6572: $9f
	dec  c                                           ; $6573: $0d
	ld   d, b                                        ; $6574: $50
	ld   l, l                                        ; $6575: $6d
	ld   h, l                                        ; $6576: $65
	sub  b                                           ; $6577: $90
	inc  b                                           ; $6578: $04
	and  b                                           ; $6579: $a0
	inc  bc                                          ; $657a: $03
	and  $02                                         ; $657b: $e6 $02
	ld   b, $75                                      ; $657d: $06 $75
	ld   h, l                                        ; $657f: $65
	ld   l, l                                        ; $6580: $6d
	ld   e, c                                        ; $6581: $59
	sub  a                                           ; $6582: $97
	rst  $38                                         ; $6583: $ff
	rst  $38                                         ; $6584: $ff
	dec  c                                           ; $6585: $0d
	nop                                              ; $6586: $00
	ld   a, [bc]                                     ; $6587: $0a
	dec  b                                           ; $6588: $05
	add  b                                           ; $6589: $80
	inc  b                                           ; $658a: $04
	ld   bc, $0001                                   ; $658b: $01 $01 $00
	dec  b                                           ; $658e: $05
	ld   b, b                                        ; $658f: $40
	ld   e, h                                        ; $6590: $5c
	ld   [bc], a                                     ; $6591: $02
	nop                                              ; $6592: $00
	nop                                              ; $6593: $00
	ld   bc, $9166                                   ; $6594: $01 $66 $91
	sbc  [hl]                                        ; $6597: $9e
	inc  bc                                          ; $6598: $03
	add  e                                           ; $6599: $83
	dec  b                                           ; $659a: $05
	dec  c                                           ; $659b: $0d
	ld   h, l                                        ; $659c: $65
	adc  h                                           ; $659d: $8c
	ld   h, a                                        ; $659e: $67
	sbc  a                                           ; $659f: $9f
	dec  c                                           ; $65a0: $0d
	nop                                              ; $65a1: $00
	ld   a, [bc]                                     ; $65a2: $0a
	dec  c                                           ; $65a3: $0d
	nop                                              ; $65a4: $00
	nop                                              ; $65a5: $00
	rrca                                             ; $65a6: $0f
	nop                                              ; $65a7: $00
	ld   bc, $1e09                                   ; $65a8: $01 $09 $1e
	nop                                              ; $65ab: $00
	nop                                              ; $65ac: $00
	ld   c, $65                                      ; $65ad: $0e $65
	rrca                                             ; $65af: $0f
	nop                                              ; $65b0: $00
	ld   bc, $0102                                   ; $65b1: $01 $02 $01
	ld   bc, $ff03                                   ; $65b4: $01 $03 $ff
	rst  $38                                         ; $65b7: $ff
	ld   d, d                                        ; $65b8: $52
	sbc  c                                           ; $65b9: $99
	ld   e, c                                        ; $65ba: $59
	ld   a, b                                        ; $65bb: $78
	db   $fc                                         ; $65bc: $fc
	rst  $38                                         ; $65bd: $ff
	rst  $38                                         ; $65be: $ff
	ld   bc, $0d04                                   ; $65bf: $01 $04 $0d
	nop                                              ; $65c2: $00
	ld   a, [bc]                                     ; $65c3: $0a
	ld   d, $08                                      ; $65c4: $16 $08
	ld   bc, $ffff                                   ; $65c6: $01 $ff $ff
	rst  $38                                         ; $65c9: $ff
	rst  $38                                         ; $65ca: $ff
	rst  $38                                         ; $65cb: $ff
	rst  $38                                         ; $65cc: $ff
	dec  c                                           ; $65cd: $0d
	nop                                              ; $65ce: $00
	ld   a, [bc]                                     ; $65cf: $0a
	ld   bc, $0301                                   ; $65d0: $01 $01 $03
	ld   d, b                                        ; $65d3: $50
	sbc  d                                           ; $65d4: $9a
	ld   sp, hl                                      ; $65d5: $f9
	db   $10                                         ; $65d6: $10
	inc  bc                                          ; $65d7: $03
	xor  c                                           ; $65d8: $a9
	ld   a, b                                        ; $65d9: $78
	and  c                                           ; $65da: $a1
	ld   l, [hl]                                     ; $65db: $6e
	sbc  e                                           ; $65dc: $9b
	ld   sp, hl                                      ; $65dd: $f9
	ld   bc, $0d04                                   ; $65de: $01 $04 $0d
	nop                                              ; $65e1: $00
	ld   a, [bc]                                     ; $65e2: $0a
	rrca                                             ; $65e3: $0f
	ld   [bc], a                                     ; $65e4: $02
	inc  bc                                          ; $65e5: $03
	ld   bc, $fc50                                   ; $65e6: $01 $50 $fc
	sbc  d                                           ; $65e9: $9a
	db   $fc                                         ; $65ea: $fc
	db   $fc                                         ; $65eb: $fc
	db   $fc                                         ; $65ec: $fc
	ld   [hl], c                                     ; $65ed: $71
	sbc  a                                           ; $65ee: $9f
	dec  c                                           ; $65ef: $0d
	nop                                              ; $65f0: $00
	ld   a, [bc]                                     ; $65f1: $0a
	rrca                                             ; $65f2: $0f
	nop                                              ; $65f3: $00
	ld   bc, $0101                                   ; $65f4: $01 $01 $01
	inc  bc                                          ; $65f7: $03
	ld   a, b                                        ; $65f8: $78
	sbc  [hl]                                        ; $65f9: $9e
	ld   a, b                                        ; $65fa: $78
	and  c                                           ; $65fb: $a1
	ld   l, [hl]                                     ; $65fc: $6e
	ld   sp, hl                                      ; $65fd: $f9
	db   $10                                         ; $65fe: $10
	inc  bc                                          ; $65ff: $03
	ld   e, c                                        ; $6600: $59
	ld   [bc], a                                     ; $6601: $02
	ld   [hl-], a                                    ; $6602: $32
	inc  b                                           ; $6603: $04
	ld   a, d                                        ; $6604: $7a
	ld   e, c                                        ; $6605: $59
	sub  a                                           ; $6606: $97
	dec  c                                           ; $6607: $0d
	db   $10                                         ; $6608: $10
	inc  b                                           ; $6609: $04
	ld   l, h                                        ; $660a: $6c
	inc  b                                           ; $660b: $04
	db   $db                                         ; $660c: $db
	ld   e, d                                        ; $660d: $5a
	ld   [bc], a                                     ; $660e: $02
	jp   nz, Jump_04f_5661                           ; $660f: $c2 $61 $56

	ld   l, l                                        ; $6612: $6d
	ld   l, h                                        ; $6613: $6c
	ld   a, [$0401]                                  ; $6614: $fa $01 $04
	dec  c                                           ; $6617: $0d
	nop                                              ; $6618: $00
	ld   a, [bc]                                     ; $6619: $0a
	add  hl, de                                      ; $661a: $19
	dec  b                                           ; $661b: $05
	ld   [bc], a                                     ; $661c: $02
	inc  bc                                          ; $661d: $03
	ld   e, c                                        ; $661e: $59
	ld   [bc], a                                     ; $661f: $02
	ld   [hl-], a                                    ; $6620: $32
	inc  b                                           ; $6621: $04
	ld   a, d                                        ; $6622: $7a
	add  [hl]                                        ; $6623: $86
	ld   [bc], a                                     ; $6624: $02
	ld   a, a                                        ; $6625: $7f
	ld   e, l                                        ; $6626: $5d
	nop                                              ; $6627: $00
	nop                                              ; $6628: $00
	inc  b                                           ; $6629: $04
	sub  $05                                         ; $662a: $d6 $05
	ld   b, c                                        ; $662c: $41
	ld   h, l                                        ; $662d: $65
	ld   [hl], h                                     ; $662e: $74
	cp   b                                           ; $662f: $b8
	push hl                                          ; $6630: $e5
	pop  af                                          ; $6631: $f1
	ei                                               ; $6632: $fb
	inc  bc                                          ; $6633: $03
	ld   c, l                                        ; $6634: $4d
	ld   a, c                                        ; $6635: $79
	ld   [bc], a                                     ; $6636: $02
	and  b                                           ; $6637: $a0
	ld   [hl], e                                     ; $6638: $73
	ld   e, l                                        ; $6639: $5d
	nop                                              ; $663a: $00
	ld   bc, $f807                                   ; $663b: $01 $07 $f8
	inc  b                                           ; $663e: $04
	ld   [bc], a                                     ; $663f: $02
	inc  bc                                          ; $6640: $03
	ld   bc, $2000                                   ; $6641: $01 $00 $20
	nop                                              ; $6644: $00
	rlca                                             ; $6645: $07
	rst  $10                                         ; $6646: $d7
	nop                                              ; $6647: $00
	ld   [bc], a                                     ; $6648: $02
	inc  bc                                          ; $6649: $03
	ld   bc, $2001                                   ; $664a: $01 $01 $20
	nop                                              ; $664d: $00
	ld   b, $a4                                      ; $664e: $06 $a4
	nop                                              ; $6650: $00
	rrca                                             ; $6651: $0f
	dec  bc                                          ; $6652: $0b
	ld   [$0301], sp                                 ; $6653: $08 $01 $03
	xor  c                                           ; $6656: $a9
	ld   e, c                                        ; $6657: $59
	ld   l, e                                        ; $6658: $6b
	ld   h, c                                        ; $6659: $61
	ld   a, c                                        ; $665a: $79
	ld   d, d                                        ; $665b: $52
	sbc  c                                           ; $665c: $99
	ld   a, h                                        ; $665d: $7c
	ld   sp, hl                                      ; $665e: $f9
	dec  c                                           ; $665f: $0d
	nop                                              ; $6660: $00
	ld   a, [bc]                                     ; $6661: $0a
	rrca                                             ; $6662: $0f
	nop                                              ; $6663: $00
	ld   bc, $0101                                   ; $6664: $01 $01 $01
	inc  bc                                          ; $6667: $03
	ld   d, b                                        ; $6668: $50
	sbc  [hl]                                        ; $6669: $9e
	ld   d, b                                        ; $666a: $50
	sub  d                                           ; $666b: $92
	adc  a                                           ; $666c: $8f
	ld   h, e                                        ; $666d: $63
	and  c                                           ; $666e: $a1
	ld   l, [hl]                                     ; $666f: $6e
	ld   a, [$100d]                                  ; $6670: $fa $0d $10
	adc  h                                           ; $6673: $8c
	ld   l, b                                        ; $6674: $68
	ld   d, d                                        ; $6675: $52
	rst  $38                                         ; $6676: $ff
	rst  $38                                         ; $6677: $ff
	inc  bc                                          ; $6678: $03
	push de                                          ; $6679: $d5
	ld   h, b                                        ; $667a: $60
	sub  [hl]                                        ; $667b: $96
	ld   d, h                                        ; $667c: $54
	ld   a, [$0401]                                  ; $667d: $fa $01 $04
	dec  c                                           ; $6680: $0d
	nop                                              ; $6681: $00
	ld   a, [bc]                                     ; $6682: $0a
	nop                                              ; $6683: $00
	rrca                                             ; $6684: $0f
	nop                                              ; $6685: $00
	ld   bc, $0101                                   ; $6686: $01 $01 $01
	inc  bc                                          ; $6689: $03
	sub  b                                           ; $668a: $90
	ld   d, h                                        ; $668b: $54
	inc  bc                                          ; $668c: $03
	ld   l, h                                        ; $668d: $6c
	ld   h, l                                        ; $668e: $65
	ld   [bc], a                                     ; $668f: $02
	and  b                                           ; $6690: $a0
	ld   [hl], e                                     ; $6691: $73
	ld   d, d                                        ; $6692: $52
	ld   [hl], h                                     ; $6693: $74
	adc  l                                           ; $6694: $8d
	sub  [hl]                                        ; $6695: $96
	ld   d, h                                        ; $6696: $54
	ld   bc, $0d04                                   ; $6697: $01 $04 $0d
	nop                                              ; $669a: $00
	ld   a, [bc]                                     ; $669b: $0a
	rrca                                             ; $669c: $0f
	dec  bc                                          ; $669d: $0b
	rlca                                             ; $669e: $07
	ld   bc, $6903                                   ; $669f: $01 $03 $69
	ld   [bc], a                                     ; $66a2: $02
	and  b                                           ; $66a3: $a0
	ld   a, l                                        ; $66a4: $7d
	inc  b                                           ; $66a5: $04
	adc  a                                           ; $66a6: $8f
	inc  b                                           ; $66a7: $04
	jr   @+$7b                                       ; $66a8: $18 $79

	inc  b                                           ; $66aa: $04
	xor  b                                           ; $66ab: $a8
	dec  b                                           ; $66ac: $05
	ld   hl, $7879                                   ; $66ad: $21 $79 $78
	ld   [hl], c                                     ; $66b0: $71
	ld   [hl], h                                     ; $66b1: $74
	dec  c                                           ; $66b2: $0d
	ld   a, h                                        ; $66b3: $7c
	and  c                                           ; $66b4: $a1
	add  c                                           ; $66b5: $81
	sbc  b                                           ; $66b6: $98
	ld   [hl], l                                     ; $66b7: $75
	ld   e, e                                        ; $66b8: $5b
	sbc  c                                           ; $66b9: $99
	sbc  l                                           ; $66ba: $9d
	rst  $38                                         ; $66bb: $ff
	rst  $38                                         ; $66bc: $ff
	dec  c                                           ; $66bd: $0d
	nop                                              ; $66be: $00
	ld   a, [bc]                                     ; $66bf: $0a
	add  hl, de                                      ; $66c0: $19
	dec  b                                           ; $66c1: $05
	ld   bc, $c004                                   ; $66c2: $01 $04 $c0
	inc  bc                                          ; $66c5: $03
	ld   a, l                                        ; $66c6: $7d
	ld   h, l                                        ; $66c7: $65
	ld   l, l                                        ; $66c8: $6d
	nop                                              ; $66c9: $00
	nop                                              ; $66ca: $00
	rlca                                             ; $66cb: $07
	ld   a, [hl+]                                    ; $66cc: $2a
	ld   bc, $0302                                   ; $66cd: $01 $02 $03
	ld   bc, $2000                                   ; $66d0: $01 $00 $20
	nop                                              ; $66d3: $00
	ld   b, $52                                      ; $66d4: $06 $52
	ld   bc, $000f                                   ; $66d6: $01 $0f $00
	ld   bc, $0101                                   ; $66d9: $01 $01 $01
	inc  bc                                          ; $66dc: $03
	ld   d, b                                        ; $66dd: $50
	sub  d                                           ; $66de: $92
	adc  a                                           ; $66df: $8f
	ld   h, e                                        ; $66e0: $63
	and  c                                           ; $66e1: $a1
	ld   l, [hl]                                     ; $66e2: $6e
	ld   [hl], c                                     ; $66e3: $71
	ld   l, l                                        ; $66e4: $6d
	ld   a, h                                        ; $66e5: $7c
	ld   e, c                                        ; $66e6: $59
	rst  $38                                         ; $66e7: $ff
	rst  $38                                         ; $66e8: $ff
	dec  c                                           ; $66e9: $0d
	db   $10                                         ; $66ea: $10
	ld   l, e                                        ; $66eb: $6b
	sbc  e                                           ; $66ec: $9b
	ld   l, e                                        ; $66ed: $6b
	sbc  e                                           ; $66ee: $9b
	ld   [bc], a                                     ; $66ef: $02
	inc  l                                           ; $66f0: $2c
	ld   e, e                                        ; $66f1: $5b
	inc  bc                                          ; $66f2: $03
	ld   h, l                                        ; $66f3: $65
	ld   h, b                                        ; $66f4: $60
	sub  [hl]                                        ; $66f5: $96
	ld   d, h                                        ; $66f6: $54
	rst  $38                                         ; $66f7: $ff
	rst  $38                                         ; $66f8: $ff
	ld   bc, $0d04                                   ; $66f9: $01 $04 $0d
	nop                                              ; $66fc: $00
	ld   a, [bc]                                     ; $66fd: $0a
	nop                                              ; $66fe: $00
	rrca                                             ; $66ff: $0f
	dec  bc                                          ; $6700: $0b
	ld   [$ff01], sp                                 ; $6701: $08 $01 $ff
	rst  $38                                         ; $6704: $ff
	ld   a, [$030d]                                  ; $6705: $fa $0d $03
	xor  c                                           ; $6708: $a9
	ld   a, [$6b10]                                  ; $6709: $fa $10 $6b
	ld   h, c                                        ; $670c: $61
	ld   a, c                                        ; $670d: $79
	ld   d, d                                        ; $670e: $52
	sbc  c                                           ; $670f: $99
	ld   a, h                                        ; $6710: $7c
	ld   a, l                                        ; $6711: $7d
	ld   a, [$000d]                                  ; $6712: $fa $0d $00
	ld   a, [bc]                                     ; $6715: $0a
	rrca                                             ; $6716: $0f
	nop                                              ; $6717: $00
	ld   bc, $0101                                   ; $6718: $01 $01 $01
	inc  bc                                          ; $671b: $03
	ld   [bc], a                                     ; $671c: $02
	and  c                                           ; $671d: $a1
	ld   [hl], e                                     ; $671e: $73
	ld   e, c                                        ; $671f: $59
	sbc  d                                           ; $6720: $9a
	ld   l, l                                        ; $6721: $6d
	ld   a, [$100d]                                  ; $6722: $fa $0d $10
	ld   h, l                                        ; $6725: $65
	ld   e, c                                        ; $6726: $59
	sub  b                                           ; $6727: $90
	sbc  [hl]                                        ; $6728: $9e
	ld   d, b                                        ; $6729: $50
	sub  d                                           ; $672a: $92
	adc  a                                           ; $672b: $8f
	ld   h, e                                        ; $672c: $63
	and  c                                           ; $672d: $a1
	ld   l, [hl]                                     ; $672e: $6e
	ld   a, [$0401]                                  ; $672f: $fa $01 $04
	dec  c                                           ; $6732: $0d
	nop                                              ; $6733: $00
	ld   a, [bc]                                     ; $6734: $0a
	add  hl, de                                      ; $6735: $19
	dec  b                                           ; $6736: $05
	inc  bc                                          ; $6737: $03
	inc  bc                                          ; $6738: $03
	db   $db                                         ; $6739: $db
	ld   bc, $7614                                   ; $673a: $01 $14 $76
	ld   h, a                                        ; $673d: $67
	sbc  c                                           ; $673e: $99
	nop                                              ; $673f: $00
	nop                                              ; $6740: $00
	sub  b                                           ; $6741: $90
	ld   a, h                                        ; $6742: $7c
	adc  h                                           ; $6743: $8c
	ld   a, e                                        ; $6744: $7b
	and  b                                           ; $6745: $a0
	ld   h, a                                        ; $6746: $67
	sbc  c                                           ; $6747: $99
	nop                                              ; $6748: $00
	ld   bc, $d503                                   ; $6749: $01 $03 $d5
	ld   h, b                                        ; $674c: $60
	inc  bc                                          ; $674d: $03
	add  b                                           ; $674e: $80
	ld   h, a                                        ; $674f: $67
	nop                                              ; $6750: $00
	ld   [bc], a                                     ; $6751: $02
	rlca                                             ; $6752: $07
	jp   $0201                                       ; $6753: $c3 $01 $02


	inc  bc                                          ; $6756: $03
	ld   bc, $2000                                   ; $6757: $01 $00 $20
	nop                                              ; $675a: $00
	rlca                                             ; $675b: $07
	ld   c, h                                        ; $675c: $4c
	ld   [bc], a                                     ; $675d: $02
	ld   [bc], a                                     ; $675e: $02
	inc  bc                                          ; $675f: $03
	ld   bc, $2001                                   ; $6760: $01 $01 $20
	nop                                              ; $6763: $00
	rlca                                             ; $6764: $07
	or   c                                           ; $6765: $b1
	ld   [bc], a                                     ; $6766: $02
	ld   [bc], a                                     ; $6767: $02
	inc  bc                                          ; $6768: $03
	ld   bc, $2002                                   ; $6769: $01 $02 $20
	nop                                              ; $676c: $00
	ld   b, $6c                                      ; $676d: $06 $6c
	inc  bc                                          ; $676f: $03
	rrca                                             ; $6770: $0f
	nop                                              ; $6771: $00
	ld   bc, $0101                                   ; $6772: $01 $01 $01

Jump_04f_6775:
	inc  bc                                          ; $6775: $03
	ld   h, c                                        ; $6776: $61
	ld   h, c                                        ; $6777: $61
	ld   a, l                                        ; $6778: $7d
	inc  bc                                          ; $6779: $03
	db   $db                                         ; $677a: $db
	ld   bc, $7614                                   ; $677b: $01 $14 $76
	rst  $38                                         ; $677e: $ff
	rst  $38                                         ; $677f: $ff
	ld   bc, $0d04                                   ; $6780: $01 $04 $0d
	nop                                              ; $6783: $00
	ld   a, [bc]                                     ; $6784: $0a
	ld   bc, $9e50                                   ; $6785: $01 $50 $9e
	ld   h, a                                        ; $6788: $67
	adc  l                                           ; $6789: $8d
	adc  h                                           ; $678a: $8c
	ld   l, c                                        ; $678b: $69
	and  c                                           ; $678c: $a1
	rst  $38                                         ; $678d: $ff
	rst  $38                                         ; $678e: $ff
	dec  c                                           ; $678f: $0d
	ld   [hl], a                                     ; $6790: $77
	ld   a, b                                        ; $6791: $78
	ld   l, l                                        ; $6792: $6d
	ld   e, c                                        ; $6793: $59
	inc  b                                           ; $6794: $04
	ld   b, l                                        ; $6795: $45
	ld   [hl], c                                     ; $6796: $71
	ld   [hl], h                                     ; $6797: $74
	sub  a                                           ; $6798: $97
	ld   [hl], c                                     ; $6799: $71
	ld   h, l                                        ; $679a: $65
	sub  c                                           ; $679b: $91
	sbc  c                                           ; $679c: $99
	and  c                                           ; $679d: $a1
	dec  c                                           ; $679e: $0d
	ld   [hl], l                                     ; $679f: $75
	ld   h, a                                        ; $67a0: $67
	ld   a, e                                        ; $67a1: $7b
	ld   sp, hl                                      ; $67a2: $f9
	dec  c                                           ; $67a3: $0d
	nop                                              ; $67a4: $00
	ld   a, [bc]                                     ; $67a5: $0a
	rrca                                             ; $67a6: $0f
	dec  bc                                          ; $67a7: $0b
	ld   b, $01                                      ; $67a8: $06 $01
	ld   [$5d00], sp                                 ; $67aa: $08 $00 $5d
	and  c                                           ; $67ad: $a1
	ld   sp, hl                                      ; $67ae: $f9
	dec  c                                           ; $67af: $0d
	ld   d, b                                        ; $67b0: $50
	sub  d                                           ; $67b1: $92
	adc  a                                           ; $67b2: $8f
	sub  [hl]                                        ; $67b3: $96
	sbc  a                                           ; $67b4: $9f
	dec  c                                           ; $67b5: $0d
	nop                                              ; $67b6: $00
	ld   a, [bc]                                     ; $67b7: $0a
	rrca                                             ; $67b8: $0f
	nop                                              ; $67b9: $00
	ld   bc, $5001                                   ; $67ba: $01 $01 $50
	sub  d                                           ; $67bd: $92
	adc  a                                           ; $67be: $8f
	ld   h, e                                        ; $67bf: $63
	and  c                                           ; $67c0: $a1
	ld   [hl], l                                     ; $67c1: $75
	ld   h, l                                        ; $67c2: $65
	ld   l, l                                        ; $67c3: $6d
	ld   e, c                                        ; $67c4: $59
	rst  $38                                         ; $67c5: $ff
	rst  $38                                         ; $67c6: $ff
	dec  c                                           ; $67c7: $0d
	ld   h, c                                        ; $67c8: $61
	sbc  d                                           ; $67c9: $9a
	ld   a, l                                        ; $67ca: $7d
	inc  bc                                          ; $67cb: $03
	add  e                                           ; $67cc: $83
	dec  b                                           ; $67cd: $05
	dec  c                                           ; $67ce: $0d
	ld   h, l                                        ; $67cf: $65
	adc  h                                           ; $67d0: $8c
	ld   h, l                                        ; $67d1: $65
	ld   l, l                                        ; $67d2: $6d
	sbc  a                                           ; $67d3: $9f
	dec  c                                           ; $67d4: $0d
	nop                                              ; $67d5: $00
	ld   a, [bc]                                     ; $67d6: $0a
	rrca                                             ; $67d7: $0f
	dec  bc                                          ; $67d8: $0b
	ld   [$8c01], sp                                 ; $67d9: $08 $01 $8c
	ld   [hl], c                                     ; $67dc: $71
	ld   [hl], h                                     ; $67dd: $74
	sbc  [hl]                                        ; $67de: $9e
	ld   [hl], a                                     ; $67df: $77
	ld   d, h                                        ; $67e0: $54
	ld   h, l                                        ; $67e1: $65
	ld   [hl], h                                     ; $67e2: $74
	ld   d, b                                        ; $67e3: $50
	ld   a, b                                        ; $67e4: $78
	ld   l, l                                        ; $67e5: $6d
	ld   e, d                                        ; $67e6: $5a
	dec  c                                           ; $67e7: $0d
	ld   h, c                                        ; $67e8: $61
	and  c                                           ; $67e9: $a1
	ld   a, b                                        ; $67ea: $78
	halt                                             ; $67eb: $76
	ld   h, c                                        ; $67ec: $61
	sbc  e                                           ; $67ed: $9b
	ld   a, c                                        ; $67ee: $79
	ld   d, d                                        ; $67ef: $52
	sbc  c                                           ; $67f0: $99
	ld   a, h                                        ; $67f1: $7c
	ld   sp, hl                                      ; $67f2: $f9
	dec  c                                           ; $67f3: $0d
	nop                                              ; $67f4: $00
	ld   a, [bc]                                     ; $67f5: $0a
	ld   b, $6c                                      ; $67f6: $06 $6c
	inc  bc                                          ; $67f8: $03
	rrca                                             ; $67f9: $0f
	nop                                              ; $67fa: $00
	ld   bc, $0101                                   ; $67fb: $01 $01 $01
	inc  bc                                          ; $67fe: $03
	ld   h, c                                        ; $67ff: $61
	ld   d, h                                        ; $6800: $54
	ld   a, b                                        ; $6801: $78
	ld   [hl], c                                     ; $6802: $71
	ld   l, l                                        ; $6803: $6d
	sub  a                                           ; $6804: $97
	rst  $38                                         ; $6805: $ff
	rst  $38                                         ; $6806: $ff
	ld   bc, $0d04                                   ; $6807: $01 $04 $0d
	nop                                              ; $680a: $00
	ld   a, [bc]                                     ; $680b: $0a
	ld   bc, $5d63                                   ; $680c: $01 $63 $5d
	sub  a                                           ; $680f: $97
	ld   [hl], l                                     ; $6810: $75
	ld   h, d                                        ; $6811: $62
	ld   h, h                                        ; $6812: $64
	ld   d, d                                        ; $6813: $52
	adc  h                                           ; $6814: $8c
	ei                                               ; $6815: $fb
	ld   h, a                                        ; $6816: $67
	sbc  a                                           ; $6817: $9f
	dec  c                                           ; $6818: $0d
	nop                                              ; $6819: $00
	ld   a, [bc]                                     ; $681a: $0a
	rrca                                             ; $681b: $0f
	dec  bc                                          ; $681c: $0b
	dec  bc                                          ; $681d: $0b
	ld   bc, $5d63                                   ; $681e: $01 $63 $5d
	sub  a                                           ; $6821: $97
	ld   a, b                                        ; $6822: $78
	ld   a, h                                        ; $6823: $7c
	ld   sp, hl                                      ; $6824: $f9
	dec  c                                           ; $6825: $0d
	nop                                              ; $6826: $00
	ld   a, [bc]                                     ; $6827: $0a
	rrca                                             ; $6828: $0f
	nop                                              ; $6829: $00
	ld   bc, $0101                                   ; $682a: $01 $01 $01
	inc  bc                                          ; $682d: $03
	inc  bc                                          ; $682e: $03
	ld   e, e                                        ; $682f: $5b
	ld   e, c                                        ; $6830: $59
	ld   [hl], c                                     ; $6831: $71
	ld   l, l                                        ; $6832: $6d
	rst  $38                                         ; $6833: $ff
	rst  $38                                         ; $6834: $ff
	ld   bc, $0d04                                   ; $6835: $01 $04 $0d
	nop                                              ; $6838: $00
	ld   a, [bc]                                     ; $6839: $0a
	rrca                                             ; $683a: $0f
	dec  bc                                          ; $683b: $0b
	ld   [$7801], sp                                 ; $683c: $08 $01 $78
	and  c                                           ; $683f: $a1
	ld   [hl], h                                     ; $6840: $74
	sbc  [hl]                                        ; $6841: $9e
	ld   l, e                                        ; $6842: $6b
	and  c                                           ; $6843: $a1
	ld   a, b                                        ; $6844: $78
	inc  bc                                          ; $6845: $03
	and  l                                           ; $6846: $a5
	ld   a, h                                        ; $6847: $7c
	dec  c                                           ; $6848: $0d
	ld   h, e                                        ; $6849: $63
	ld   e, l                                        ; $684a: $5d
	sub  a                                           ; $684b: $97
	ld   e, d                                        ; $684c: $5a
	ld   d, d                                        ; $684d: $52
	sbc  c                                           ; $684e: $99
	sbc  l                                           ; $684f: $9d
	ld   e, a                                        ; $6850: $5f
	dec  c                                           ; $6851: $0d
	ld   a, b                                        ; $6852: $78
	ld   d, d                                        ; $6853: $52
	ld   [hl], l                                     ; $6854: $75
	ld   h, l                                        ; $6855: $65
	sub  l                                           ; $6856: $95
	ld   a, [$000d]                                  ; $6857: $fa $0d $00
	ld   a, [bc]                                     ; $685a: $0a
	ld   b, $6c                                      ; $685b: $06 $6c
	inc  bc                                          ; $685d: $03
	rrca                                             ; $685e: $0f
	nop                                              ; $685f: $00
	ld   bc, $0101                                   ; $6860: $01 $01 $01
	inc  bc                                          ; $6863: $03
	ld   h, c                                        ; $6864: $61
	ld   h, c                                        ; $6865: $61
	ld   a, l                                        ; $6866: $7d
	inc  bc                                          ; $6867: $03
	push de                                          ; $6868: $d5
	ld   h, b                                        ; $6869: $60
	sub  [hl]                                        ; $686a: $96
	ld   d, h                                        ; $686b: $54
	rst  $38                                         ; $686c: $ff
	rst  $38                                         ; $686d: $ff
	ld   bc, $0d04                                   ; $686e: $01 $04 $0d
	nop                                              ; $6871: $00
	ld   a, [bc]                                     ; $6872: $0a
	ld   bc, $fa50                                   ; $6873: $01 $50 $fa
	dec  c                                           ; $6876: $0d
	ld   l, e                                        ; $6877: $6b
	sbc  e                                           ; $6878: $9b
	ld   a, [hl]                                     ; $6879: $7e
	and  c                                           ; $687a: $a1
	ld   e, d                                        ; $687b: $5a
	ld   a, [$780d]                                  ; $687c: $fa $0d $78
	sbc  [hl]                                        ; $687f: $9e
	ld   a, b                                        ; $6880: $78
	and  c                                           ; $6881: $a1
	ld   [hl], l                                     ; $6882: $75
	ld   h, c                                        ; $6883: $61
	and  c                                           ; $6884: $a1
	ld   a, b                                        ; $6885: $78
	halt                                             ; $6886: $76
	ld   h, c                                        ; $6887: $61
	sbc  e                                           ; $6888: $9b
	ld   a, c                                        ; $6889: $79
	ld   a, [$000d]                                  ; $688a: $fa $0d $00
	ld   a, [bc]                                     ; $688d: $0a
	ld   bc, $9d54                                   ; $688e: $01 $54 $9d
	ld   [hl], c                                     ; $6891: $71
	ld   a, [$670d]                                  ; $6892: $fa $0d $67
	add  a                                           ; $6895: $87
	sbc  c                                           ; $6896: $99
	ei                                               ; $6897: $fb
	ei                                               ; $6898: $fb
	ei                                               ; $6899: $fb
	ld   [hl], c                                     ; $689a: $71
	ld   a, [$000d]                                  ; $689b: $fa $0d $00
	ld   a, [bc]                                     ; $689e: $0a
	inc  c                                           ; $689f: $0c
	inc  bc                                          ; $68a0: $03
	inc  d                                           ; $68a1: $14
	ld   [$0101], sp                                 ; $68a2: $08 $01 $01
	ld   d, b                                        ; $68a5: $50
	ld   l, l                                        ; $68a6: $6d
	ld   l, l                                        ; $68a7: $6d
	ld   l, l                                        ; $68a8: $6d
	ld   l, l                                        ; $68a9: $6d
	ld   l, l                                        ; $68aa: $6d
	ld   l, l                                        ; $68ab: $6d
	rst  $38                                         ; $68ac: $ff
	rst  $38                                         ; $68ad: $ff
	dec  c                                           ; $68ae: $0d
	nop                                              ; $68af: $00
	ld   a, [bc]                                     ; $68b0: $0a
	inc  c                                           ; $68b1: $0c
	ld   [bc], a                                     ; $68b2: $02
	ld   c, $8e                                      ; $68b3: $0e $8e
	inc  e                                           ; $68b5: $1c
	dec  bc                                          ; $68b6: $0b
	ld   [bc], a                                     ; $68b7: $02
	ld   [bc], a                                     ; $68b8: $02
	ld   bc, $0008                                   ; $68b9: $01 $08 $00
	ld   e, l                                        ; $68bc: $5d
	and  c                                           ; $68bd: $a1
	ld   a, [$7c0d]                                  ; $68be: $fa $0d $7c
	ld   l, h                                        ; $68c1: $6c
	ld   e, e                                        ; $68c2: $5b
	and  b                                           ; $68c3: $a0
	ld   h, l                                        ; $68c4: $65
	ld   [hl], h                                     ; $68c5: $74
	ld   l, l                                        ; $68c6: $6d
	ld   a, h                                        ; $68c7: $7c
	ld   a, e                                        ; $68c8: $7b
	ld   a, [$000d]                                  ; $68c9: $fa $0d $00
	ld   a, [bc]                                     ; $68cc: $0a
	rlca                                             ; $68cd: $07
	cp   a                                           ; $68ce: $bf
	inc  bc                                          ; $68cf: $03
	inc  b                                           ; $68d0: $04
	add  b                                           ; $68d1: $80
	ld   b, $01                                      ; $68d2: $06 $01
	rst  $38                                         ; $68d4: $ff
	jr   nz, jr_04f_68d7                             ; $68d5: $20 $00

jr_04f_68d7:
	dec  b                                           ; $68d7: $05
	add  b                                           ; $68d8: $80
	ld   b, $01                                      ; $68d9: $06 $01
	ld   bc, $0100                                   ; $68db: $01 $00 $01
	and  l                                           ; $68de: $a5
	ret  nz                                          ; $68df: $c0

	and  l                                           ; $68e0: $a5
	inc  b                                           ; $68e1: $04
	call nc, Call_04f_5079                           ; $68e2: $d4 $79 $50
	ld   [hl], c                                     ; $68e5: $71
	ld   l, l                                        ; $68e6: $6d
	sub  [hl]                                        ; $68e7: $96
	ld   d, h                                        ; $68e8: $54
	ld   l, [hl]                                     ; $68e9: $6e
	ld   e, c                                        ; $68ea: $59
	sub  a                                           ; $68eb: $97
	dec  c                                           ; $68ec: $0d
	ld   [bc], a                                     ; $68ed: $02
	and  l                                           ; $68ee: $a5
	ld   [bc], a                                     ; $68ef: $02
	sub  e                                           ; $68f0: $93
	ld   l, [hl]                                     ; $68f1: $6e
	ld   e, a                                        ; $68f2: $5f
	ld   a, l                                        ; $68f3: $7d
	ld   [bc], a                                     ; $68f4: $02
	sub  l                                           ; $68f5: $95
	inc  bc                                          ; $68f6: $03
	push de                                          ; $68f7: $d5
	ld   h, l                                        ; $68f8: $65
	ld   [hl], h                                     ; $68f9: $74
	ld   d, b                                        ; $68fa: $50
	ld   h, b                                        ; $68fb: $60
	sbc  c                                           ; $68fc: $99
	sbc  l                                           ; $68fd: $9d
	sbc  a                                           ; $68fe: $9f
	dec  c                                           ; $68ff: $0d
	ld   b, $09                                      ; $6900: $06 $09
	inc  b                                           ; $6902: $04
	add  hl, hl                                      ; $6903: $29
	halt                                             ; $6904: $76
	ld   h, l                                        ; $6905: $65
	ld   a, b                                        ; $6906: $78
	ld   d, d                                        ; $6907: $52
	sub  [hl]                                        ; $6908: $96
	ld   d, h                                        ; $6909: $54
	ld   a, c                                        ; $690a: $79
	ld   a, e                                        ; $690b: $7b
	sbc  a                                           ; $690c: $9f
	dec  c                                           ; $690d: $0d
	nop                                              ; $690e: $00
	ld   a, [bc]                                     ; $690f: $0a
	dec  c                                           ; $6910: $0d
	nop                                              ; $6911: $00
	nop                                              ; $6912: $00
	rrca                                             ; $6913: $0f
	nop                                              ; $6914: $00
	ld   bc, $1e09                                   ; $6915: $01 $09 $1e
	nop                                              ; $6918: $00
	dec  c                                           ; $6919: $0d
	nop                                              ; $691a: $00
	nop                                              ; $691b: $00
	rrca                                             ; $691c: $0f
	nop                                              ; $691d: $00
	ld   bc, $020c                                   ; $691e: $01 $0c $02
	ld   c, $8e                                      ; $6921: $0e $8e
	inc  e                                           ; $6923: $1c
	dec  bc                                          ; $6924: $0b
	ld   [bc], a                                     ; $6925: $02
	ld   [bc], a                                     ; $6926: $02
	ld   bc, $0008                                   ; $6927: $01 $08 $00
	ld   e, l                                        ; $692a: $5d
	and  c                                           ; $692b: $a1
	ld   a, [$7c0d]                                  ; $692c: $fa $0d $7c
	ld   l, h                                        ; $692f: $6c
	ld   e, e                                        ; $6930: $5b
	and  b                                           ; $6931: $a0
	ld   h, l                                        ; $6932: $65
	ld   [hl], h                                     ; $6933: $74
	ld   l, l                                        ; $6934: $6d
	ld   a, h                                        ; $6935: $7c
	ld   a, e                                        ; $6936: $7b
	sbc  a                                           ; $6937: $9f
	dec  c                                           ; $6938: $0d
	nop                                              ; $6939: $00
	ld   a, [bc]                                     ; $693a: $0a
	rlca                                             ; $693b: $07
	cp   a                                           ; $693c: $bf
	inc  bc                                          ; $693d: $03
	inc  b                                           ; $693e: $04
	add  b                                           ; $693f: $80
	ld   b, $01                                      ; $6940: $06 $01
	rst  $38                                         ; $6942: $ff
	jr   nz, jr_04f_6945                             ; $6943: $20 $00

jr_04f_6945:
	dec  b                                           ; $6945: $05
	add  b                                           ; $6946: $80
	ld   b, $01                                      ; $6947: $06 $01
	ld   bc, $0100                                   ; $6949: $01 $00 $01
	inc  b                                           ; $694c: $04
	rst  $10                                         ; $694d: $d7
	inc  b                                           ; $694e: $04
	ld   hl, $0b04                                   ; $694f: $21 $04 $0b
	inc  bc                                          ; $6952: $03
	ld   h, h                                        ; $6953: $64
	ld   a, c                                        ; $6954: $79
	inc  b                                           ; $6955: $04
	ld   l, a                                        ; $6956: $6f
	ld   [bc], a                                     ; $6957: $02
	ld   [hl], h                                     ; $6958: $74

Jump_04f_6959:
	ld   h, l                                        ; $6959: $65
	ld   [hl], h                                     ; $695a: $74
	ld   e, b                                        ; $695b: $58
	ld   e, e                                        ; $695c: $5b
	adc  h                                           ; $695d: $8c
	ld   h, a                                        ; $695e: $67
	sbc  a                                           ; $695f: $9f
	dec  c                                           ; $6960: $0d
	nop                                              ; $6961: $00
	ld   a, [bc]                                     ; $6962: $0a
	dec  c                                           ; $6963: $0d
	nop                                              ; $6964: $00
	nop                                              ; $6965: $00
	rrca                                             ; $6966: $0f
	nop                                              ; $6967: $00
	ld   bc, $1e09                                   ; $6968: $01 $09 $1e
	nop                                              ; $696b: $00
	ld   bc, $7650                                   ; $696c: $01 $50 $76
	ld   [hl], l                                     ; $696f: $75
	sbc  [hl]                                        ; $6970: $9e
	inc  b                                           ; $6971: $04
	rst  $10                                         ; $6972: $d7
	inc  b                                           ; $6973: $04
	ld   hl, $0b04                                   ; $6974: $21 $04 $0b
	inc  bc                                          ; $6977: $03
	ld   h, h                                        ; $6978: $64
	ld   a, c                                        ; $6979: $79
	inc  b                                           ; $697a: $04
	ld   l, a                                        ; $697b: $6f
	ld   [bc], a                                     ; $697c: $02
	ld   [hl], h                                     ; $697d: $74
	ld   h, l                                        ; $697e: $65
	ld   [hl], h                                     ; $697f: $74
	dec  c                                           ; $6980: $0d
	ld   e, b                                        ; $6981: $58
	ld   e, e                                        ; $6982: $5b
	adc  h                                           ; $6983: $8c
	ld   h, a                                        ; $6984: $67
	ld   a, [$000d]                                  ; $6985: $fa $0d $00
	ld   a, [bc]                                     ; $6988: $0a
	dec  c                                           ; $6989: $0d
	nop                                              ; $698a: $00
	nop                                              ; $698b: $00
	rrca                                             ; $698c: $0f
	nop                                              ; $698d: $00
	ld   bc, $1e09                                   ; $698e: $01 $09 $1e
	inc  c                                           ; $6991: $0c
	ld   [bc], a                                     ; $6992: $02
	ld   c, $01                                      ; $6993: $0e $01
	rrca                                             ; $6995: $0f
	nop                                              ; $6996: $00
	ld   bc, $5001                                   ; $6997: $01 $01 $50
	rst  $38                                         ; $699a: $ff
	rst  $38                                         ; $699b: $ff
	sbc  [hl]                                        ; $699c: $9e
	sub  d                                           ; $699d: $92
	ld   a, [hl]                                     ; $699e: $7e
	ld   d, d                                        ; $699f: $52
	sub  [hl]                                        ; $69a0: $96
	ld   a, b                                        ; $69a1: $78
	db   $fc                                         ; $69a2: $fc
	rst  $38                                         ; $69a3: $ff
	rst  $38                                         ; $69a4: $ff
	dec  c                                           ; $69a5: $0d
	inc  bc                                          ; $69a6: $03
	add  b                                           ; $69a7: $80
	dec  b                                           ; $69a8: $05
	db   $10                                         ; $69a9: $10
	inc  bc                                          ; $69aa: $03
	ld   [hl], l                                     ; $69ab: $75
	halt                                             ; $69ac: $76
	ld   a, l                                        ; $69ad: $7d
	ld   d, d                                        ; $69ae: $52
	ld   d, [hl]                                     ; $69af: $56
	rst  $38                                         ; $69b0: $ff
	rst  $38                                         ; $69b1: $ff
	rst  $38                                         ; $69b2: $ff
	rst  $38                                         ; $69b3: $ff
	dec  c                                           ; $69b4: $0d
	rst  $38                                         ; $69b5: $ff
	rst  $38                                         ; $69b6: $ff
	rst  $38                                         ; $69b7: $ff
	rst  $38                                         ; $69b8: $ff
	rst  $38                                         ; $69b9: $ff
	rst  $38                                         ; $69ba: $ff
	rst  $38                                         ; $69bb: $ff
	rst  $38                                         ; $69bc: $ff
	rst  $38                                         ; $69bd: $ff
	rst  $38                                         ; $69be: $ff
	dec  c                                           ; $69bf: $0d
	nop                                              ; $69c0: $00
	ld   a, [bc]                                     ; $69c1: $0a
	inc  d                                           ; $69c2: $14
	ld   b, $01                                      ; $69c3: $06 $01
	rrca                                             ; $69c5: $0f
	dec  bc                                          ; $69c6: $0b
	ld   [bc], a                                     ; $69c7: $02
	ld   bc, $0008                                   ; $69c8: $01 $08 $00
	ld   e, l                                        ; $69cb: $5d
	and  c                                           ; $69cc: $a1
	sbc  a                                           ; $69cd: $9f
	dec  c                                           ; $69ce: $0d
	ld   [bc], a                                     ; $69cf: $02
	and  l                                           ; $69d0: $a5
	ld   h, a                                        ; $69d1: $67
	ld   e, [hl]                                     ; $69d2: $5e
	sbc  [hl]                                        ; $69d3: $9e
	inc  bc                                          ; $69d4: $03
	add  l                                           ; $69d5: $85
	inc  b                                           ; $69d6: $04
	xor  e                                           ; $69d7: $ab
	inc  bc                                          ; $69d8: $03
	add  d                                           ; $69d9: $82
	inc  bc                                          ; $69da: $03
	ld   c, l                                        ; $69db: $4d
	ld   a, c                                        ; $69dc: $79
	dec  b                                           ; $69dd: $05
	db   $10                                         ; $69de: $10
	ld   a, b                                        ; $69df: $78
	ld   h, e                                        ; $69e0: $63
	ld   d, d                                        ; $69e1: $52
	sbc  a                                           ; $69e2: $9f
	dec  c                                           ; $69e3: $0d
	nop                                              ; $69e4: $00
	ld   a, [bc]                                     ; $69e5: $0a
	rrca                                             ; $69e6: $0f
	nop                                              ; $69e7: $00
	ld   bc, $020c                                   ; $69e8: $01 $0c $02
	add  hl, bc                                      ; $69eb: $09
	ld   e, $01                                      ; $69ec: $1e $01
	adc  h                                           ; $69ee: $8c
	sbc  [hl]                                        ; $69ef: $9e
	adc  h                                           ; $69f0: $8c
	ld   h, e                                        ; $69f1: $63
	ld   e, c                                        ; $69f2: $59
	rst  $38                                         ; $69f3: $ff
	rst  $38                                         ; $69f4: $ff
	dec  c                                           ; $69f5: $0d
	nop                                              ; $69f6: $00
	ld   a, [bc]                                     ; $69f7: $0a
	ld   c, $0c                                      ; $69f8: $0e $0c
	inc  e                                           ; $69fa: $1c
	ld   a, [bc]                                     ; $69fb: $0a
	inc  b                                           ; $69fc: $04
	inc  b                                           ; $69fd: $04
	ld   bc, $5258                                   ; $69fe: $01 $58 $52
	sbc  [hl]                                        ; $6a01: $9e
	ld   [$9f00], sp                                 ; $6a02: $08 $00 $9f
	dec  c                                           ; $6a05: $0d
	ld   e, b                                        ; $6a06: $58
	adc  a                                           ; $6a07: $8f
	ei                                               ; $6a08: $fb
	cp   b                                           ; $6a09: $b8
	push hl                                          ; $6a0a: $e5
	pop  af                                          ; $6a0b: $f1
	ei                                               ; $6a0c: $fb
	ld   a, h                                        ; $6a0d: $7c
	ld   l, h                                        ; $6a0e: $6c
	ld   d, d                                        ; $6a0f: $52
	ld   [hl], h                                     ; $6a10: $74
	ld   l, l                                        ; $6a11: $6d
	and  c                                           ; $6a12: $a1
	dec  c                                           ; $6a13: $0d
	ld   l, [hl]                                     ; $6a14: $6e
	ld   [hl], c                                     ; $6a15: $71
	ld   [hl], h                                     ; $6a16: $74
	ld   a, b                                        ; $6a17: $78
	sbc  a                                           ; $6a18: $9f
	dec  c                                           ; $6a19: $0d
	nop                                              ; $6a1a: $00
	ld   a, [bc]                                     ; $6a1b: $0a
	ld   bc, $a102                                   ; $6a1c: $01 $02 $a1
	inc  bc                                          ; $6a1f: $03
	and  b                                           ; $6a20: $a0
	ld   l, a                                        ; $6a21: $6f
	ld   a, l                                        ; $6a22: $7d
	sbc  [hl]                                        ; $6a23: $9e
	sbc  l                                           ; $6a24: $9d
	ld   e, c                                        ; $6a25: $59
	sub  a                                           ; $6a26: $97
	and  c                                           ; $6a27: $a1
	ld   [hl], l                                     ; $6a28: $75
	sub  b                                           ; $6a29: $90
	ld   a, b                                        ; $6a2a: $78
	ld   d, d                                        ; $6a2b: $52
	dec  c                                           ; $6a2c: $0d
	ld   e, d                                        ; $6a2d: $5a
	sbc  [hl]                                        ; $6a2e: $9e
	inc  de                                          ; $6a2f: $13
	ld   [bc], a                                     ; $6a30: $02
	sub  e                                           ; $6a31: $93
	sub  b                                           ; $6a32: $90
	sub  d                                           ; $6a33: $92
	ld   [hl], c                                     ; $6a34: $71
	ld   l, a                                        ; $6a35: $6f
	sub  c                                           ; $6a36: $91
	ei                                               ; $6a37: $fb
	dec  c                                           ; $6a38: $0d
	adc  h                                           ; $6a39: $8c
	ld   l, b                                        ; $6a3a: $68
	ld   d, d                                        ; $6a3b: $52
	ld   l, [hl]                                     ; $6a3c: $6e
	sbc  e                                           ; $6a3d: $9b
	sbc  a                                           ; $6a3e: $9f
	dec  c                                           ; $6a3f: $0d
	nop                                              ; $6a40: $00
	ld   a, [bc]                                     ; $6a41: $0a
	ld   bc, $7e59                                   ; $6a42: $01 $59 $7e
	ld   [hl], c                                     ; $6a45: $71
	ld   [hl], h                                     ; $6a46: $74
	sub  d                                           ; $6a47: $92
	sbc  b                                           ; $6a48: $98
	ld   l, l                                        ; $6a49: $6d
	ld   d, d                                        ; $6a4a: $52
	ld   e, d                                        ; $6a4b: $5a
	dec  c                                           ; $6a4c: $0d
	ld   [bc], a                                     ; $6a4d: $02
	sbc  b                                           ; $6a4e: $98
	inc  bc                                          ; $6a4f: $03
	nop                                              ; $6a50: $00
	ld   a, h                                        ; $6a51: $7c
	inc  bc                                          ; $6a52: $03
	ld   l, e                                        ; $6a53: $6b
	inc  bc                                          ; $6a54: $03
	ld   c, a                                        ; $6a55: $4f
	sbc  [hl]                                        ; $6a56: $9e
	ld   l, a                                        ; $6a57: $6f
	sub  l                                           ; $6a58: $95
	ld   [hl], c                                     ; $6a59: $71
	halt                                             ; $6a5a: $76
	ldh  [c], a                                      ; $6a5b: $e2
	db   $ec                                         ; $6a5c: $ec
	dec  c                                           ; $6a5d: $0d
	ld   a, b                                        ; $6a5e: $78
	and  c                                           ; $6a5f: $a1
	ld   [hl], l                                     ; $6a60: $75
	ld   a, b                                        ; $6a61: $78
	sbc  a                                           ; $6a62: $9f
	dec  c                                           ; $6a63: $0d
	nop                                              ; $6a64: $00
	ld   a, [bc]                                     ; $6a65: $0a
	inc  e                                           ; $6a66: $1c
	ld   a, [bc]                                     ; $6a67: $0a
	ld   [bc], a                                     ; $6a68: $02
	ld   [bc], a                                     ; $6a69: $02
	ld   bc, $9d59                                   ; $6a6a: $01 $59 $9d
	ld   d, d                                        ; $6a6d: $52
	ld   l, e                                        ; $6a6e: $6b
	ld   d, h                                        ; $6a6f: $54
	ld   l, [hl]                                     ; $6a70: $6e
	ld   e, d                                        ; $6a71: $5a
	sbc  [hl]                                        ; $6a72: $9e
	dec  c                                           ; $6a73: $0d
	inc  b                                           ; $6a74: $04
	dec  c                                           ; $6a75: $0d
	ld   [bc], a                                     ; $6a76: $02
	sub  [hl]                                        ; $6a77: $96
	inc  b                                           ; $6a78: $04
	ld   b, l                                        ; $6a79: $45
	inc  b                                           ; $6a7a: $04
	ld   a, [bc]                                     ; $6a7b: $0a
	ld   a, l                                        ; $6a7c: $7d
	ld   h, c                                        ; $6a7d: $61
	ld   h, c                                        ; $6a7e: $61
	ld   [hl], l                                     ; $6a7f: $75
	inc  bc                                          ; $6a80: $03
	ld   a, [hl]                                     ; $6a81: $7e
	dec  b                                           ; $6a82: $05
	nop                                              ; $6a83: $00
	ld   l, [hl]                                     ; $6a84: $6e
	ld   a, [$000d]                                  ; $6a85: $fa $0d $00
	ld   a, [bc]                                     ; $6a88: $0a
	ld   bc, $a102                                   ; $6a89: $01 $02 $a1
	inc  bc                                          ; $6a8c: $03
	and  b                                           ; $6a8d: $a0
	ld   l, a                                        ; $6a8e: $6f
	and  b                                           ; $6a8f: $a0
	inc  b                                           ; $6a90: $04
	ld   b, l                                        ; $6a91: $45
	sbc  d                                           ; $6a92: $9a
	dec  b                                           ; $6a93: $05
	scf                                              ; $6a94: $37
	ld   d, [hl]                                     ; $6a95: $56
	ld   [hl], h                                     ; $6a96: $74
	dec  c                                           ; $6a97: $0d
	inc  bc                                          ; $6a98: $03
	add  b                                           ; $6a99: $80
	inc  bc                                          ; $6a9a: $03
	jp   c, $7465                                    ; $6a9b: $da $65 $74

	ld   e, e                                        ; $6a9e: $5b
	ld   a, b                                        ; $6a9f: $78
	ld   a, [$000d]                                  ; $6aa0: $fa $0d $00
	ld   a, [bc]                                     ; $6aa3: $0a
	ld   h, $0d                                      ; $6aa4: $26 $0d
	nop                                              ; $6aa6: $00
	nop                                              ; $6aa7: $00
	inc  hl                                          ; $6aa8: $23
	ld   a, b                                        ; $6aa9: $78
	rrca                                             ; $6aaa: $0f
	nop                                              ; $6aab: $00
	ld   bc, $5001                                   ; $6aac: $01 $01 $50
	ld   [hl], c                                     ; $6aaf: $71
	ld   a, [$0dfa]                                  ; $6ab0: $fa $fa $0d
	nop                                              ; $6ab3: $00
	ld   a, [bc]                                     ; $6ab4: $0a
	ld   d, $15                                      ; $6ab5: $16 $15
	rrca                                             ; $6ab7: $0f
	ld   [bc], a                                     ; $6ab8: $02
	ld   [$5001], sp                                 ; $6ab9: $08 $01 $50
	db   $fc                                         ; $6abc: $fc
	sbc  d                                           ; $6abd: $9a
	db   $fc                                         ; $6abe: $fc
	db   $fc                                         ; $6abf: $fc
	db   $fc                                         ; $6ac0: $fc
	sbc  a                                           ; $6ac1: $9f
	dec  c                                           ; $6ac2: $0d
	nop                                              ; $6ac3: $00
	ld   a, [bc]                                     ; $6ac4: $0a
	rrca                                             ; $6ac5: $0f
	nop                                              ; $6ac6: $00
	ld   bc, $6d01                                   ; $6ac7: $01 $01 $6d
	sbc  [hl]                                        ; $6aca: $9e
	inc  b                                           ; $6acb: $04
	ld   c, $04                                      ; $6acc: $0e $04
	adc  h                                           ; $6ace: $8c
	ld   l, [hl]                                     ; $6acf: $6e
	ld   a, [$670d]                                  ; $6ad0: $fa $0d $67
	adc  l                                           ; $6ad3: $8d
	sbc  d                                           ; $6ad4: $9a
	ld   h, e                                        ; $6ad5: $63
	and  c                                           ; $6ad6: $a1
	ld   e, d                                        ; $6ad7: $5a
	ld   e, b                                        ; $6ad8: $58
	adc  d                                           ; $6ad9: $8a
	sbc  d                                           ; $6ada: $9a
	ld   [hl], h                                     ; $6adb: $74
	sbc  c                                           ; $6adc: $99
	ld   a, [$000d]                                  ; $6add: $fa $0d $00
	ld   a, [bc]                                     ; $6ae0: $0a
	add  hl, de                                      ; $6ae1: $19
	inc  bc                                          ; $6ae2: $03
	ld   bc, $5b03                                   ; $6ae3: $01 $03 $5b
	ld   e, a                                        ; $6ae6: $5f
	sbc  c                                           ; $6ae7: $99
	nop                                              ; $6ae8: $00
	nop                                              ; $6ae9: $00
	rlca                                             ; $6aea: $07
	add  a                                           ; $6aeb: $87
	ld   b, $02                                      ; $6aec: $06 $02
	inc  bc                                          ; $6aee: $03
	ld   bc, $2000                                   ; $6aef: $01 $00 $20
	nop                                              ; $6af2: $00
	ld   b, $49                                      ; $6af3: $06 $49
	dec  b                                           ; $6af5: $05
	rrca                                             ; $6af6: $0f
	dec  bc                                          ; $6af7: $0b
	db   $10                                         ; $6af8: $10
	ld   bc, $ffff                                   ; $6af9: $01 $ff $ff
	ld   a, [$0dfa]                                  ; $6afc: $fa $fa $0d
	ld   h, a                                        ; $6aff: $67
	adc  l                                           ; $6b00: $8d
	sbc  d                                           ; $6b01: $9a
	ld   a, [$0df9]                                  ; $6b02: $fa $f9 $0d
	inc  b                                           ; $6b05: $04
	rla                                              ; $6b06: $17
	ld   [hl], c                                     ; $6b07: $71
	ld   [hl], h                                     ; $6b08: $74
	ld   [hl], h                                     ; $6b09: $74
	sbc  [hl]                                        ; $6b0a: $9e
	ld   [bc], a                                     ; $6b0b: $02
	and  l                                           ; $6b0c: $a5
	inc  bc                                          ; $6b0d: $03
	ld   e, e                                        ; $6b0e: $5b
	ld   e, a                                        ; $6b0f: $5f
	sbc  c                                           ; $6b10: $99
	sbc  l                                           ; $6b11: $9d
	ld   a, [$0dfa]                                  ; $6b12: $fa $fa $0d
	nop                                              ; $6b15: $00
	ld   a, [bc]                                     ; $6b16: $0a
	rrca                                             ; $6b17: $0f
	nop                                              ; $6b18: $00
	ld   bc, $5001                                   ; $6b19: $01 $01 $50
	sbc  [hl]                                        ; $6b1c: $9e
	ld   d, b                                        ; $6b1d: $50
	sub  d                                           ; $6b1e: $92
	adc  a                                           ; $6b1f: $8f
	ld   h, e                                        ; $6b20: $63
	and  c                                           ; $6b21: $a1
	ld   a, [$000d]                                  ; $6b22: $fa $0d $00
	ld   a, [bc]                                     ; $6b25: $0a
	inc  c                                           ; $6b26: $0c
	ld   [bc], a                                     ; $6b27: $02
	ld   c, $78                                      ; $6b28: $0e $78
	inc  e                                           ; $6b2a: $1c
	ld   [bc], a                                     ; $6b2b: $02
	dec  h                                           ; $6b2c: $25
	dec  b                                           ; $6b2d: $05
	ld   bc, $507d                                   ; $6b2e: $01 $7d $50
	sbc  [hl]                                        ; $6b31: $9e
	ld   a, l                                        ; $6b32: $7d
	ld   d, b                                        ; $6b33: $50
	sbc  [hl]                                        ; $6b34: $9e
	ld   a, l                                        ; $6b35: $7d
	ld   d, b                                        ; $6b36: $50
	rst  $38                                         ; $6b37: $ff
	rst  $38                                         ; $6b38: $ff
	dec  c                                           ; $6b39: $0d
	ld   d, b                                        ; $6b3a: $50
	sub  d                                           ; $6b3b: $92
	adc  a                                           ; $6b3c: $8f
	ld   h, e                                        ; $6b3d: $63
	and  c                                           ; $6b3e: $a1
	rst  $38                                         ; $6b3f: $ff
	rst  $38                                         ; $6b40: $ff
	dec  c                                           ; $6b41: $0d
	ld   l, l                                        ; $6b42: $6d
	sbc  [hl]                                        ; $6b43: $9e
	inc  bc                                          ; $6b44: $03
	ld   e, e                                        ; $6b45: $5b
	ld   e, c                                        ; $6b46: $59
	sbc  b                                           ; $6b47: $98
	adc  h                                           ; $6b48: $8c
	ld   h, l                                        ; $6b49: $65
	ld   l, l                                        ; $6b4a: $6d
	sbc  l                                           ; $6b4b: $9d
	rst  $38                                         ; $6b4c: $ff
	rst  $38                                         ; $6b4d: $ff
	dec  c                                           ; $6b4e: $0d
	nop                                              ; $6b4f: $00
	ld   a, [bc]                                     ; $6b50: $0a
	inc  e                                           ; $6b51: $1c
	dec  bc                                          ; $6b52: $0b
	dec  h                                           ; $6b53: $25
	ld   de, $ff01                                   ; $6b54: $11 $01 $ff
	rst  $38                                         ; $6b57: $ff
	ld   h, a                                        ; $6b58: $67
	adc  l                                           ; $6b59: $8d
	sbc  d                                           ; $6b5a: $9a
	sbc  [hl]                                        ; $6b5b: $9e
	inc  b                                           ; $6b5c: $04
	ld   c, $03                                      ; $6b5d: $0e $03
	sbc  l                                           ; $6b5f: $9d
	inc  b                                           ; $6b60: $04
	and  [hl]                                        ; $6b61: $a6
	ld   sp, hl                                      ; $6b62: $f9
	dec  c                                           ; $6b63: $0d
	nop                                              ; $6b64: $00
	ld   a, [bc]                                     ; $6b65: $0a
	rrca                                             ; $6b66: $0f
	ld   [bc], a                                     ; $6b67: $02
	dec  b                                           ; $6b68: $05
	ld   bc, $5656                                   ; $6b69: $01 $56 $56
	rst  $38                                         ; $6b6c: $ff
	rst  $38                                         ; $6b6d: $ff
	ld   a, b                                        ; $6b6e: $78
	and  c                                           ; $6b6f: $a1
	halt                                             ; $6b70: $76
	ld   e, c                                        ; $6b71: $59
	rst  $38                                         ; $6b72: $ff
	rst  $38                                         ; $6b73: $ff
	dec  c                                           ; $6b74: $0d
	inc  b                                           ; $6b75: $04
	ld   c, $03                                      ; $6b76: $0e $03
	sbc  l                                           ; $6b78: $9d
	inc  b                                           ; $6b79: $04
	and  [hl]                                        ; $6b7a: $a6
	sbc  [hl]                                        ; $6b7b: $9e
	ld   [hl], l                                     ; $6b7c: $75
	ld   h, a                                        ; $6b7d: $67
	sbc  l                                           ; $6b7e: $9d
	rst  $38                                         ; $6b7f: $ff
	rst  $38                                         ; $6b80: $ff
	dec  c                                           ; $6b81: $0d
	nop                                              ; $6b82: $00
	ld   a, [bc]                                     ; $6b83: $0a
	inc  e                                           ; $6b84: $1c
	dec  bc                                          ; $6b85: $0b
	ld   [hl+], a                                    ; $6b86: $22
	ld   c, $01                                      ; $6b87: $0e $01
	rst  $38                                         ; $6b89: $ff
	halt                                             ; $6b8a: $76
	ld   h, c                                        ; $6b8b: $61
	sbc  e                                           ; $6b8c: $9b
	ld   [hl], l                                     ; $6b8d: $75
	sbc  [hl]                                        ; $6b8e: $9e
	ld   [$5d00], sp                                 ; $6b8f: $08 $00 $5d
	and  c                                           ; $6b92: $a1
	sbc  a                                           ; $6b93: $9f
	dec  c                                           ; $6b94: $0d
	ld   d, b                                        ; $6b95: $50
	ld   a, b                                        ; $6b96: $78
	ld   l, l                                        ; $6b97: $6d
	sbc  [hl]                                        ; $6b98: $9e
	ld   a, b                                        ; $6b99: $78
	ld   a, c                                        ; $6b9a: $79
	ld   h, l                                        ; $6b9b: $65
	ld   [hl], h                                     ; $6b9c: $74
	ld   l, l                                        ; $6b9d: $6d
	ld   a, h                                        ; $6b9e: $7c
	ld   sp, hl                                      ; $6b9f: $f9
	dec  c                                           ; $6ba0: $0d
	nop                                              ; $6ba1: $00
	ld   a, [bc]                                     ; $6ba2: $0a
	rrca                                             ; $6ba3: $0f
	nop                                              ; $6ba4: $00
	ld   bc, $ff01                                   ; $6ba5: $01 $01 $ff
	rst  $38                                         ; $6ba8: $ff
	ld   d, [hl]                                     ; $6ba9: $56
	ld   sp, hl                                      ; $6baa: $f9
	dec  c                                           ; $6bab: $0d
	nop                                              ; $6bac: $00
	ld   a, [bc]                                     ; $6bad: $0a
	rrca                                             ; $6bae: $0f
	dec  bc                                          ; $6baf: $0b
	ld   c, $01                                      ; $6bb0: $0e $01
	inc  b                                           ; $6bb2: $04
	call nc, $037c                                   ; $6bb3: $d4 $7c $03
	ld   c, a                                        ; $6bb6: $4f
	ld   [hl], l                                     ; $6bb7: $75
	inc  bc                                          ; $6bb8: $03
	ld   l, [hl]                                     ; $6bb9: $6e
	ld   a, h                                        ; $6bba: $7c
	inc  bc                                          ; $6bbb: $03
	add  [hl]                                        ; $6bbc: $86
	ld   e, d                                        ; $6bbd: $5a
	dec  c                                           ; $6bbe: $0d
	ld   e, b                                        ; $6bbf: $58
	adc  d                                           ; $6bc0: $8a
	sbc  d                                           ; $6bc1: $9a
	ld   [hl], h                                     ; $6bc2: $74
	ld   d, d                                        ; $6bc3: $52
	sbc  c                                           ; $6bc4: $99
	ld   a, h                                        ; $6bc5: $7c
	ld   a, c                                        ; $6bc6: $79
	sbc  [hl]                                        ; $6bc7: $9e
	dec  c                                           ; $6bc8: $0d
	inc  b                                           ; $6bc9: $04
	ld   c, c                                        ; $6bca: $49
	and  b                                           ; $6bcb: $a0
	ld   h, l                                        ; $6bcc: $65
	ld   [hl], h                                     ; $6bcd: $74
	ld   l, l                                        ; $6bce: $6d
	ld   a, h                                        ; $6bcf: $7c
	ld   sp, hl                                      ; $6bd0: $f9
	dec  c                                           ; $6bd1: $0d
	nop                                              ; $6bd2: $00
	ld   a, [bc]                                     ; $6bd3: $0a
	rrca                                             ; $6bd4: $0f
	nop                                              ; $6bd5: $00
	ld   bc, $6b01                                   ; $6bd6: $01 $01 $6b
	rst  $38                                         ; $6bd9: $ff
	rst  $38                                         ; $6bda: $ff
	ld   l, e                                        ; $6bdb: $6b
	sbc  d                                           ; $6bdc: $9a
	ld   a, l                                        ; $6bdd: $7d
	rst  $38                                         ; $6bde: $ff
	rst  $38                                         ; $6bdf: $ff
	dec  c                                           ; $6be0: $0d
	nop                                              ; $6be1: $00
	ld   a, [bc]                                     ; $6be2: $0a
	rrca                                             ; $6be3: $0f
	dec  bc                                          ; $6be4: $0b
	ld   c, $01                                      ; $6be5: $0e $01
	rst  $38                                         ; $6be7: $ff
	rst  $38                                         ; $6be8: $ff
	ld   l, [hl]                                     ; $6be9: $6e
	adc  h                                           ; $6bea: $8c
	ld   [hl], c                                     ; $6beb: $71
	ld   [hl], h                                     ; $6bec: $74
	ld   [bc], a                                     ; $6bed: $02
	sub  l                                           ; $6bee: $95
	ld   [hl], h                                     ; $6bef: $74
	ld   d, d                                        ; $6bf0: $52
	ld   l, l                                        ; $6bf1: $6d
	ld   a, h                                        ; $6bf2: $7c
	ld   a, e                                        ; $6bf3: $7b
	sbc  a                                           ; $6bf4: $9f
	dec  c                                           ; $6bf5: $0d
	ld   l, e                                        ; $6bf6: $6b
	ld   d, h                                        ; $6bf7: $54
	rst  $38                                         ; $6bf8: $ff
	rst  $38                                         ; $6bf9: $ff
	dec  c                                           ; $6bfa: $0d
	nop                                              ; $6bfb: $00
	ld   a, [bc]                                     ; $6bfc: $0a
	ld   bc, $0008                                   ; $6bfd: $01 $08 $00
	ld   e, l                                        ; $6c00: $5d
	and  c                                           ; $6c01: $a1
	sbc  [hl]                                        ; $6c02: $9e
	dec  c                                           ; $6c03: $0d
	ld   d, b                                        ; $6c04: $50
	halt                                             ; $6c05: $76
	ld   [hl], l                                     ; $6c06: $75
	inc  bc                                          ; $6c07: $03
	add  l                                           ; $6c08: $85
	inc  b                                           ; $6c09: $04
	xor  e                                           ; $6c0a: $ab
	inc  bc                                          ; $6c0b: $03
	add  d                                           ; $6c0c: $82
	inc  bc                                          ; $6c0d: $03
	ld   c, l                                        ; $6c0e: $4d
	adc  h                                           ; $6c0f: $8c
	ld   [hl], l                                     ; $6c10: $75
	dec  c                                           ; $6c11: $0d
	dec  b                                           ; $6c12: $05
	db   $10                                         ; $6c13: $10
	ld   a, b                                        ; $6c14: $78
	ld   h, e                                        ; $6c15: $63
	ld   d, d                                        ; $6c16: $52
	sbc  [hl]                                        ; $6c17: $9e
	ld   d, d                                        ; $6c18: $52
	ld   d, d                                        ; $6c19: $52
	sbc  l                                           ; $6c1a: $9d
	ld   a, e                                        ; $6c1b: $7b
	ld   sp, hl                                      ; $6c1c: $f9
	dec  c                                           ; $6c1d: $0d
	nop                                              ; $6c1e: $00
	ld   a, [bc]                                     ; $6c1f: $0a
	rrca                                             ; $6c20: $0f
	nop                                              ; $6c21: $00
	ld   bc, $7d01                                   ; $6c22: $01 $01 $7d
	rst  $38                                         ; $6c25: $ff
	rst  $38                                         ; $6c26: $ff
	ld   a, l                                        ; $6c27: $7d
	ld   d, d                                        ; $6c28: $52
	rst  $38                                         ; $6c29: $ff
	rst  $38                                         ; $6c2a: $ff
	dec  c                                           ; $6c2b: $0d
	nop                                              ; $6c2c: $00
	ld   a, [bc]                                     ; $6c2d: $0a
	dec  c                                           ; $6c2e: $0d
	nop                                              ; $6c2f: $00
	nop                                              ; $6c30: $00
	ld   b, $3c                                      ; $6c31: $06 $3c
	add  hl, bc                                      ; $6c33: $09
	rrca                                             ; $6c34: $0f
	nop                                              ; $6c35: $00
	ld   bc, $6701                                   ; $6c36: $01 $01 $67
	adc  l                                           ; $6c39: $8d
	sbc  d                                           ; $6c3a: $9a
	ld   h, e                                        ; $6c3b: $63
	and  c                                           ; $6c3c: $a1
	ld   a, [$520d]                                  ; $6c3d: $fa $0d $52
	adc  h                                           ; $6c40: $8c
	inc  bc                                          ; $6c41: $03
	ld   e, e                                        ; $6c42: $5b
	ld   e, a                                        ; $6c43: $5f
	ld   a, c                                        ; $6c44: $79
	ld   d, d                                        ; $6c45: $52
	ld   e, e                                        ; $6c46: $5b
	adc  h                                           ; $6c47: $8c
	ld   h, a                                        ; $6c48: $67
	ld   a, [$000d]                                  ; $6c49: $fa $0d $00
	ld   a, [bc]                                     ; $6c4c: $0a
	dec  c                                           ; $6c4d: $0d
	nop                                              ; $6c4e: $00
	nop                                              ; $6c4f: $00
	rrca                                             ; $6c50: $0f
	nop                                              ; $6c51: $00
	ld   bc, $020c                                   ; $6c52: $01 $0c $02
	ld   c, $78                                      ; $6c55: $0e $78
	rrca                                             ; $6c57: $0f
	nop                                              ; $6c58: $00
	ld   bc, $020d                                   ; $6c59: $01 $0d $02
	inc  h                                           ; $6c5c: $24
	ld   bc, $8d67                                   ; $6c5d: $01 $67 $8d
	sbc  d                                           ; $6c60: $9a
	ld   h, e                                        ; $6c61: $63
	and  c                                           ; $6c62: $a1
	ld   a, [$040d]                                  ; $6c63: $fa $0d $04
	ld   c, $03                                      ; $6c66: $0e $03
	sbc  l                                           ; $6c68: $9d
	inc  b                                           ; $6c69: $04
	and  [hl]                                        ; $6c6a: $a6
	ld   [hl], l                                     ; $6c6b: $75
	ld   h, a                                        ; $6c6c: $67
	ld   e, c                                        ; $6c6d: $59
	ld   a, [$000d]                                  ; $6c6e: $fa $0d $00
	ld   a, [bc]                                     ; $6c71: $0a
	rrca                                             ; $6c72: $0f
	ld   [bc], a                                     ; $6c73: $02
	inc  b                                           ; $6c74: $04
	dec  e                                           ; $6c75: $1d
	ld   b, b                                        ; $6c76: $40
	ld   [de], a                                     ; $6c77: $12
	inc  bc                                          ; $6c78: $03
	ld   [de], a                                     ; $6c79: $12
	ld   bc, $2803                                   ; $6c7a: $01 $03 $28
	nop                                              ; $6c7d: $00
	ld   bc, $5656                                   ; $6c7e: $01 $56 $56
	rst  $38                                         ; $6c81: $ff
	rst  $38                                         ; $6c82: $ff
	dec  c                                           ; $6c83: $0d
	nop                                              ; $6c84: $00
	dec  b                                           ; $6c85: $05
	ld   b, b                                        ; $6c86: $40
	ld   c, a                                        ; $6c87: $4f
	ld   bc, $0000                                   ; $6c88: $01 $00 $00
	ld   bc, $a178                                   ; $6c8b: $01 $78 $a1
	halt                                             ; $6c8e: $76
	ld   e, c                                        ; $6c8f: $59
	inc  b                                           ; $6c90: $04
	ld   c, $03                                      ; $6c91: $0e $03
	sbc  l                                           ; $6c93: $9d
	inc  b                                           ; $6c94: $04
	and  [hl]                                        ; $6c95: $a6
	ld   [hl], l                                     ; $6c96: $75
	ld   h, a                                        ; $6c97: $67
	sbc  l                                           ; $6c98: $9d
	sbc  a                                           ; $6c99: $9f
	dec  c                                           ; $6c9a: $0d
	ld   d, b                                        ; $6c9b: $50
	sbc  b                                           ; $6c9c: $98
	ld   e, d                                        ; $6c9d: $5a
	halt                                             ; $6c9e: $76
	ld   d, h                                        ; $6c9f: $54
	sbc  [hl]                                        ; $6ca0: $9e
	ld   [$6300], sp                                 ; $6ca1: $08 $00 $63
	and  c                                           ; $6ca4: $a1
	sbc  a                                           ; $6ca5: $9f
	dec  c                                           ; $6ca6: $0d
	nop                                              ; $6ca7: $00
	ld   a, [bc]                                     ; $6ca8: $0a
	inc  e                                           ; $6ca9: $1c
	ld   [bc], a                                     ; $6caa: $02
	dec  h                                           ; $6cab: $25
	dec  b                                           ; $6cac: $05
	ld   bc, $9a6b                                   ; $6cad: $01 $6b $9a
	sub  [hl]                                        ; $6cb0: $96
	sbc  b                                           ; $6cb1: $98
	ld   [$6300], sp                                 ; $6cb2: $08 $00 $63
	and  c                                           ; $6cb5: $a1
	ld   h, c                                        ; $6cb6: $61
	ld   l, e                                        ; $6cb7: $6b
	dec  c                                           ; $6cb8: $0d
	inc  b                                           ; $6cb9: $04
	ld   c, $03                                      ; $6cba: $0e $03
	sbc  l                                           ; $6cbc: $9d
	inc  b                                           ; $6cbd: $04
	and  [hl]                                        ; $6cbe: $a6
	ld   [hl], l                                     ; $6cbf: $75
	ld   h, a                                        ; $6cc0: $67
	ld   a, h                                        ; $6cc1: $7c
	ld   sp, hl                                      ; $6cc2: $f9
	dec  c                                           ; $6cc3: $0d
	sub  b                                           ; $6cc4: $90
	ld   a, h                                        ; $6cc5: $7c
	ld   h, a                                        ; $6cc6: $67
	ld   h, d                                        ; $6cc7: $62
	ld   e, l                                        ; $6cc8: $5d
	inc  b                                           ; $6cc9: $04
	ld   a, e                                        ; $6cca: $7b
	sbc  d                                           ; $6ccb: $9a
	ld   [hl], h                                     ; $6ccc: $74
	adc  h                                           ; $6ccd: $8c
	ld   h, a                                        ; $6cce: $67
	sbc  l                                           ; $6ccf: $9d
	sub  [hl]                                        ; $6cd0: $96
	sbc  a                                           ; $6cd1: $9f
	dec  c                                           ; $6cd2: $0d
	nop                                              ; $6cd3: $00
	ld   a, [bc]                                     ; $6cd4: $0a
	rrca                                             ; $6cd5: $0f
	nop                                              ; $6cd6: $00
	ld   bc, $d001                                   ; $6cd7: $01 $01 $d0
	and  e                                           ; $6cda: $a3
	sbc  [hl]                                        ; $6cdb: $9e
	ret  nc                                          ; $6cdc: $d0

	and  e                                           ; $6cdd: $a3
	sbc  [hl]                                        ; $6cde: $9e
	ret  nc                                          ; $6cdf: $d0

	and  e                                           ; $6ce0: $a3
	rst  $38                                         ; $6ce1: $ff
	rst  $38                                         ; $6ce2: $ff
	dec  c                                           ; $6ce3: $0d
	inc  b                                           ; $6ce4: $04
	ld   c, $03                                      ; $6ce5: $0e $03
	sbc  l                                           ; $6ce7: $9d
	inc  b                                           ; $6ce8: $04
	and  [hl]                                        ; $6ce9: $a6
	ld   [hl], l                                     ; $6cea: $75
	ld   h, a                                        ; $6ceb: $67
	sub  [hl]                                        ; $6cec: $96
	rst  $38                                         ; $6ced: $ff
	rst  $38                                         ; $6cee: $ff
	dec  c                                           ; $6cef: $0d
	nop                                              ; $6cf0: $00
	ld   a, [bc]                                     ; $6cf1: $0a
	rrca                                             ; $6cf2: $0f
	ld   bc, $0103                                   ; $6cf3: $01 $03 $01
	ld   h, a                                        ; $6cf6: $67
	adc  l                                           ; $6cf7: $8d
	sbc  d                                           ; $6cf8: $9a
	ld   h, e                                        ; $6cf9: $63
	and  c                                           ; $6cfa: $a1
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $6cfb: $fa $10 $0d
	ld   [hl], a                                     ; $6cfe: $77
	ld   d, h                                        ; $6cff: $54
	ld   h, l                                        ; $6d00: $65
	ld   l, l                                        ; $6d01: $6d
	and  c                                           ; $6d02: $a1
	ld   [hl], l                                     ; $6d03: $75
	ld   h, a                                        ; $6d04: $67
	ld   e, c                                        ; $6d05: $59
	ld   a, [$0dfa]                                  ; $6d06: $fa $fa $0d
	nop                                              ; $6d09: $00
	ld   a, [bc]                                     ; $6d0a: $0a
	inc  e                                           ; $6d0b: $1c
	ld   [bc], a                                     ; $6d0c: $02
	dec  h                                           ; $6d0d: $25
	dec  b                                           ; $6d0e: $05
	ld   bc, $9750                                   ; $6d0f: $01 $50 $97
	sbc  [hl]                                        ; $6d12: $9e
	ld   h, e                                        ; $6d13: $63
	ld   e, l                                        ; $6d14: $5d
	sub  a                                           ; $6d15: $97
	ld   h, e                                        ; $6d16: $63
	and  c                                           ; $6d17: $a1
	sbc  a                                           ; $6d18: $9f
	dec  c                                           ; $6d19: $0d
	sub  b                                           ; $6d1a: $90
	ei                                               ; $6d1b: $fb
	inc  b                                           ; $6d1c: $04
	ld   c, $04                                      ; $6d1d: $0e $04
	adc  h                                           ; $6d1f: $8c
	ld   [hl], l                                     ; $6d20: $75
	ld   h, l                                        ; $6d21: $65
	ld   l, l                                        ; $6d22: $6d
	ld   a, h                                        ; $6d23: $7c
	sub  [hl]                                        ; $6d24: $96
	sbc  a                                           ; $6d25: $9f
	dec  c                                           ; $6d26: $0d
	nop                                              ; $6d27: $00
	ld   a, [bc]                                     ; $6d28: $0a
	ld   bc, $6d9d                                   ; $6d29: $01 $9d $6d
	ld   e, l                                        ; $6d2c: $5d
	ld   h, l                                        ; $6d2d: $65
	ld   e, d                                        ; $6d2e: $5a
	ld   [bc], a                                     ; $6d2f: $02
	ld   [hl-], a                                    ; $6d30: $32
	ld   d, d                                        ; $6d31: $52
	ld   [hl], l                                     ; $6d32: $75
	ld   d, d                                        ; $6d33: $52
	ld   l, l                                        ; $6d34: $6d
	sub  a                                           ; $6d35: $97
	dec  c                                           ; $6d36: $0d
	halt                                             ; $6d37: $76
	ld   [hl], d                                     ; $6d38: $72
	ld   l, d                                        ; $6d39: $6a
	and  c                                           ; $6d3a: $a1
	inc  bc                                          ; $6d3b: $03
	ld   a, l                                        ; $6d3c: $7d
	ld   e, d                                        ; $6d3d: $5a
	ld   [hl], d                                     ; $6d3e: $72
	ld   [hl], c                                     ; $6d3f: $71
	ld   [hl], h                                     ; $6d40: $74
	ld   h, l                                        ; $6d41: $65
	adc  h                                           ; $6d42: $8c
	ld   [hl], c                                     ; $6d43: $71
	ld   [hl], h                                     ; $6d44: $74
	dec  c                                           ; $6d45: $0d
	rst  $38                                         ; $6d46: $ff
	rst  $38                                         ; $6d47: $ff
	rst  $38                                         ; $6d48: $ff
	rst  $38                                         ; $6d49: $ff
	dec  c                                           ; $6d4a: $0d
	nop                                              ; $6d4b: $00
	ld   a, [bc]                                     ; $6d4c: $0a
	ld   bc, $8a58                                   ; $6d4d: $01 $58 $8a
	sbc  d                                           ; $6d50: $9a
	ld   e, c                                        ; $6d51: $59
	ld   e, a                                        ; $6d52: $5f
	ld   [hl], h                                     ; $6d53: $74
	ld   d, d                                        ; $6d54: $52
	ld   l, l                                        ; $6d55: $6d
	halt                                             ; $6d56: $76
	ld   h, c                                        ; $6d57: $61
	sbc  e                                           ; $6d58: $9b
	and  b                                           ; $6d59: $a0
	dec  c                                           ; $6d5a: $0d

Jump_04f_6d5b:
	ld   [$6300], sp                                 ; $6d5b: $08 $00 $63
	and  c                                           ; $6d5e: $a1
	ld   e, d                                        ; $6d5f: $5a
	inc  bc                                          ; $6d60: $03
	ld   e, e                                        ; $6d61: $5b
	ld   e, a                                        ; $6d62: $5f
	ld   [hl], h                                     ; $6d63: $74
	dec  c                                           ; $6d64: $0d

Jump_04f_6d65:
	ld   e, l                                        ; $6d65: $5d
	ld   l, [hl]                                     ; $6d66: $6e
	ld   h, e                                        ; $6d67: $63
	ld   [hl], c                                     ; $6d68: $71
	ld   l, l                                        ; $6d69: $6d
	and  c                                           ; $6d6a: $a1
	ld   [hl], l                                     ; $6d6b: $75
	ld   h, a                                        ; $6d6c: $67
	ld   a, h                                        ; $6d6d: $7c
	sub  [hl]                                        ; $6d6e: $96
	sbc  a                                           ; $6d6f: $9f
	dec  c                                           ; $6d70: $0d
	nop                                              ; $6d71: $00
	ld   a, [bc]                                     ; $6d72: $0a
	rrca                                             ; $6d73: $0f
	ld   bc, $0104                              ; $6d74: $01 $04 $01
	inc  b                                           ; $6d77: $04
	ld   c, $03                                      ; $6d78: $0e $03
	sbc  l                                           ; $6d7a: $9d
	inc  b                                           ; $6d7b: $04
	and  [hl]                                        ; $6d7c: $a6
	ld   [hl], l                                     ; $6d7d: $75
	ld   h, a                                        ; $6d7e: $67
	ld   e, c                                        ; $6d7f: $59
	sbc  [hl]                                        ; $6d80: $9e
	ld   h, a                                        ; $6d81: $67
	adc  l                                           ; $6d82: $8d
	sbc  d                                           ; $6d83: $9a
	ld   h, e                                        ; $6d84: $63
	and  c                                           ; $6d85: $a1
	sbc  a                                           ; $6d86: $9f
	dec  c                                           ; $6d87: $0d
	nop                                              ; $6d88: $00
	ld   a, [bc]                                     ; $6d89: $0a
	inc  e                                           ; $6d8a: $1c
	ld   [bc], a                                     ; $6d8b: $02
	dec  h                                           ; $6d8c: $25
	dec  b                                           ; $6d8d: $05
	ld   bc, $6d9d                                   ; $6d8e: $01 $9d $6d
	ld   e, l                                        ; $6d91: $5d
	ld   h, l                                        ; $6d92: $65
	ld   a, l                                        ; $6d93: $7d
	sbc  [hl]                                        ; $6d94: $9e
	inc  b                                           ; $6d95: $04
	ld   c, $03                                      ; $6d96: $0e $03
	sbc  l                                           ; $6d98: $9d
	inc  b                                           ; $6d99: $04
	and  [hl]                                        ; $6d9a: $a6
	ld   [hl], l                                     ; $6d9b: $75
	ld   h, a                                        ; $6d9c: $67
	ld   e, c                                        ; $6d9d: $59
	sub  a                                           ; $6d9e: $97
	dec  c                                           ; $6d9f: $0d
	ld   [$6300], sp                                 ; $6da0: $08 $00 $63
	and  c                                           ; $6da3: $a1
	and  b                                           ; $6da4: $a0
	ld   [bc], a                                     ; $6da5: $02
	ld   [de], a                                     ; $6da6: $12
	inc  b                                           ; $6da7: $04
	db   $d3                                         ; $6da8: $d3
	inc  bc                                          ; $6da9: $03
	ld   c, l                                        ; $6daa: $4d
	ld   a, c                                        ; $6dab: $79
	dec  c                                           ; $6dac: $0d
	inc  b                                           ; $6dad: $04
	db   $fd                                         ; $6dae: $fd
	sbc  d                                           ; $6daf: $9a
	ld   [hl], h                                     ; $6db0: $74
	ld   d, d                                        ; $6db1: $52
	ld   [hl], c                                     ; $6db2: $71
	ld   [hl], h                                     ; $6db3: $74
	ld   e, l                                        ; $6db4: $5d
	ld   l, [hl]                                     ; $6db5: $6e
	ld   h, e                                        ; $6db6: $63
	sub  a                                           ; $6db7: $97
	ld   a, b                                        ; $6db8: $78
	ld   d, d                                        ; $6db9: $52
	sbc  a                                           ; $6dba: $9f
	dec  c                                           ; $6dbb: $0d
	nop                                              ; $6dbc: $00
	ld   a, [bc]                                     ; $6dbd: $0a
	ld   bc, $7c90                                   ; $6dbe: $01 $90 $7c
	ld   h, a                                        ; $6dc1: $67
	ld   h, d                                        ; $6dc2: $62
	ld   e, l                                        ; $6dc3: $5d
	sbc  [hl]                                        ; $6dc4: $9e
	inc  b                                           ; $6dc5: $04
	ld   a, e                                        ; $6dc6: $7b
	sbc  d                                           ; $6dc7: $9a
	ld   [hl], h                                     ; $6dc8: $74
	ld   d, d                                        ; $6dc9: $52
	sbc  c                                           ; $6dca: $99
	dec  c                                           ; $6dcb: $0d
	adc  l                                           ; $6dcc: $8d
	ld   l, l                                        ; $6dcd: $6d
	ld   d, d                                        ; $6dce: $52
	ld   [hl], l                                     ; $6dcf: $75
	ld   h, a                                        ; $6dd0: $67
	ld   e, c                                        ; $6dd1: $59
	sub  a                                           ; $6dd2: $97
	sbc  a                                           ; $6dd3: $9f
	dec  c                                           ; $6dd4: $0d
	nop                                              ; $6dd5: $00
	ld   a, [bc]                                     ; $6dd6: $0a
	rrca                                             ; $6dd7: $0f
	ld   bc, $0100                                   ; $6dd8: $01 $00 $01
	ld   a, l                                        ; $6ddb: $7d
	ld   d, d                                        ; $6ddc: $52
	sbc  [hl]                                        ; $6ddd: $9e
	sbc  l                                           ; $6dde: $9d
	ld   e, c                                        ; $6ddf: $59
	sbc  b                                           ; $6de0: $98
	adc  h                                           ; $6de1: $8c
	ld   h, l                                        ; $6de2: $65
	ld   l, l                                        ; $6de3: $6d
	sbc  a                                           ; $6de4: $9f
	dec  c                                           ; $6de5: $0d
	nop                                              ; $6de6: $00
	ld   a, [bc]                                     ; $6de7: $0a
	inc  e                                           ; $6de8: $1c
	ld   bc, $0101                                   ; $6de9: $01 $01 $01
	ld   bc, $9e63                                   ; $6dec: $01 $63 $9e
	ld   [$6300], sp                                 ; $6def: $08 $00 $63
	and  c                                           ; $6df2: $a1
	sbc  a                                           ; $6df3: $9f
	dec  c                                           ; $6df4: $0d
	ld   [bc], a                                     ; $6df5: $02
	ld   [de], a                                     ; $6df6: $12
	inc  b                                           ; $6df7: $04
	db   $d3                                         ; $6df8: $d3
	inc  bc                                          ; $6df9: $03
	ld   c, l                                        ; $6dfa: $4d
	add  [hl]                                        ; $6dfb: $86
	ld   [bc], a                                     ; $6dfc: $02
	ld   a, a                                        ; $6dfd: $7f
	ld   e, e                                        ; $6dfe: $5b
	adc  h                                           ; $6dff: $8c
	ld   h, l                                        ; $6e00: $65
	sub  l                                           ; $6e01: $95
	ld   d, h                                        ; $6e02: $54
	sbc  a                                           ; $6e03: $9f
	dec  c                                           ; $6e04: $0d
	nop                                              ; $6e05: $00
	ld   a, [bc]                                     ; $6e06: $0a
	dec  c                                           ; $6e07: $0d
	nop                                              ; $6e08: $00
	nop                                              ; $6e09: $00
	rrca                                             ; $6e0a: $0f
	nop                                              ; $6e0b: $00
	ld   bc, $020c                                   ; $6e0c: $01 $0c $02
	ld   c, $03                                      ; $6e0f: $0e $03
	add  hl, bc                                      ; $6e11: $09
	inc  a                                           ; $6e12: $3c
	rrca                                             ; $6e13: $0f
	ld   bc, $0101                                   ; $6e14: $01 $01 $01
	ld   [$6300], sp                                 ; $6e17: $08 $00 $63
	and  c                                           ; $6e1a: $a1
	sbc  a                                           ; $6e1b: $9f
	dec  c                                           ; $6e1c: $0d
	ld   [$6300], sp                                 ; $6e1d: $08 $00 $63
	and  c                                           ; $6e20: $a1
	sbc  a                                           ; $6e21: $9f
	dec  c                                           ; $6e22: $0d
	nop                                              ; $6e23: $00
	ld   a, [bc]                                     ; $6e24: $0a
	inc  c                                           ; $6e25: $0c
	inc  c                                           ; $6e26: $0c
	ld   c, $73                                      ; $6e27: $0e $73
	ld   sp, $2040                                   ; $6e29: $31 $40 $20
	inc  bc                                          ; $6e2c: $03
	jr   nz, jr_04f_6e30                             ; $6e2d: $20 $01

	ld   [hl-], a                                    ; $6e2f: $32

jr_04f_6e30:
	jr   z, jr_04f_6e32                              ; $6e30: $28 $00

jr_04f_6e32:
	rrca                                             ; $6e32: $0f
	nop                                              ; $6e33: $00
	ld   bc, $010d                                   ; $6e34: $01 $0d $01
	ld   bc, $5001                                   ; $6e37: $01 $01 $50
	rst  $38                                         ; $6e3a: $ff
	rst  $38                                         ; $6e3b: $ff
	ld   h, e                                        ; $6e3c: $63
	ld   e, l                                        ; $6e3d: $5d
	sub  a                                           ; $6e3e: $97
	ld   h, e                                        ; $6e3f: $63
	and  c                                           ; $6e40: $a1
	rst  $38                                         ; $6e41: $ff
	rst  $38                                         ; $6e42: $ff
	dec  c                                           ; $6e43: $0d
	nop                                              ; $6e44: $00
	ld   a, [bc]                                     ; $6e45: $0a
	rrca                                             ; $6e46: $0f
	ld   bc, $0101                                   ; $6e47: $01 $01 $01
	inc  bc                                          ; $6e4a: $03
	sub  h                                           ; $6e4b: $94
	inc  b                                           ; $6e4c: $04
	sbc  [hl]                                        ; $6e4d: $9e
	ld   a, h                                        ; $6e4e: $7c
	inc  b                                           ; $6e4f: $04
	pop  de                                          ; $6e50: $d1
	and  b                                           ; $6e51: $a0
	ld   e, c                                        ; $6e52: $59
	ld   d, [hl]                                     ; $6e53: $56
	sbc  b                                           ; $6e54: $98
	adc  l                                           ; $6e55: $8d
	ld   l, b                                        ; $6e56: $68
	ld   a, c                                        ; $6e57: $79
	dec  c                                           ; $6e58: $0d
	ld   h, a                                        ; $6e59: $67
	adc  l                                           ; $6e5a: $8d
	sbc  d                                           ; $6e5b: $9a
	ld   h, e                                        ; $6e5c: $63
	and  c                                           ; $6e5d: $a1
	and  b                                           ; $6e5e: $a0
	inc  bc                                          ; $6e5f: $03
	ld   e, e                                        ; $6e60: $5b
	ld   e, a                                        ; $6e61: $5f
	sbc  c                                           ; $6e62: $99
	ld   a, b                                        ; $6e63: $78
	and  c                                           ; $6e64: $a1
	ld   [hl], h                                     ; $6e65: $74
	dec  c                                           ; $6e66: $0d
	db   $ec                                         ; $6e67: $ec
	call nz, Call_04f_75d2                           ; $6e68: $c4 $d2 $75
	ld   h, a                                        ; $6e6b: $67
	sbc  [hl]                                        ; $6e6c: $9e
	ld   [$6300], sp                                 ; $6e6d: $08 $00 $63
	and  c                                           ; $6e70: $a1
	sbc  a                                           ; $6e71: $9f
	dec  c                                           ; $6e72: $0d
	nop                                              ; $6e73: $00
	ld   a, [bc]                                     ; $6e74: $0a
	dec  e                                           ; $6e75: $1d
	ld   b, b                                        ; $6e76: $40
	ld   de, $1103                                   ; $6e77: $11 $03 $11
	ld   bc, $2803                                   ; $6e7a: $01 $03 $28
	nop                                              ; $6e7d: $00
	ld   bc, $6d50                                   ; $6e7e: $01 $50 $6d
	ld   h, l                                        ; $6e81: $65
	sbc  [hl]                                        ; $6e82: $9e
	ld   l, e                                        ; $6e83: $6b
	and  c                                           ; $6e84: $a1
	ld   e, a                                        ; $6e85: $5f
	ld   d, d                                        ; $6e86: $52
	dec  c                                           ; $6e87: $0d
	ld   h, l                                        ; $6e88: $65
	ld   l, a                                        ; $6e89: $6f
	sub  c                                           ; $6e8a: $91
	ld   d, d                                        ; $6e8b: $52
	adc  h                                           ; $6e8c: $8c
	ld   h, a                                        ; $6e8d: $67
	sbc  a                                           ; $6e8e: $9f
	dec  c                                           ; $6e8f: $0d
	nop                                              ; $6e90: $00
	ld   a, [bc]                                     ; $6e91: $0a
	inc  e                                           ; $6e92: $1c
	ld   bc, $0000                                   ; $6e93: $01 $00 $00
	ld   bc, $5063                                   ; $6e96: $01 $63 $50
	sbc  [hl]                                        ; $6e99: $9e
	sub  b                                           ; $6e9a: $90
	ld   d, h                                        ; $6e9b: $54
	inc  b                                           ; $6e9c: $04
	ld   c, $03                                      ; $6e9d: $0e $03
	sbc  l                                           ; $6e9f: $9d
	inc  b                                           ; $6ea0: $04
	and  [hl]                                        ; $6ea1: $a6
	ld   [hl], l                                     ; $6ea2: $75
	ld   h, a                                        ; $6ea3: $67
	sub  [hl]                                        ; $6ea4: $96
	sbc  a                                           ; $6ea5: $9f
	dec  c                                           ; $6ea6: $0d
	inc  b                                           ; $6ea7: $04
	sub  l                                           ; $6ea8: $95
	ld   [bc], a                                     ; $6ea9: $02
	ld   hl, $9086                                   ; $6eaa: $21 $86 $90
	ld   [hl], a                                     ; $6ead: $77
	ld   [hl], c                                     ; $6eae: $71
	ld   [hl], h                                     ; $6eaf: $74
	sbc  [hl]                                        ; $6eb0: $9e
	inc  b                                           ; $6eb1: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6eb2: $cf
	inc  b                                           ; $6eb3: $04
	xor  d                                           ; $6eb4: $aa
	ld   a, c                                        ; $6eb5: $79
	ld   l, e                                        ; $6eb6: $6b
	ld   a, b                                        ; $6eb7: $78
	ld   d, [hl]                                     ; $6eb8: $56
	dec  c                                           ; $6eb9: $0d
	sub  h                                           ; $6eba: $94
	ld   [hl], c                                     ; $6ebb: $71
	ld   e, l                                        ; $6ebc: $5d
	sbc  b                                           ; $6ebd: $98
	inc  b                                           ; $6ebe: $04
	ld   b, d                                        ; $6ebf: $42
	ld   [hl], h                                     ; $6ec0: $74
	ld   e, l                                        ; $6ec1: $5d
	ld   l, [hl]                                     ; $6ec2: $6e
	ld   h, e                                        ; $6ec3: $63
	ld   d, d                                        ; $6ec4: $52
	sbc  a                                           ; $6ec5: $9f
	dec  c                                           ; $6ec6: $0d
	nop                                              ; $6ec7: $00
	ld   a, [bc]                                     ; $6ec8: $0a
	rrca                                             ; $6ec9: $0f
	nop                                              ; $6eca: $00
	ld   bc, $7d01                                   ; $6ecb: $01 $01 $7d
	ld   d, d                                        ; $6ece: $52
	sbc  [hl]                                        ; $6ecf: $9e
	ld   h, e                                        ; $6ed0: $63
	ld   e, l                                        ; $6ed1: $5d
	sub  a                                           ; $6ed2: $97
	ld   h, e                                        ; $6ed3: $63
	and  c                                           ; $6ed4: $a1
	sbc  a                                           ; $6ed5: $9f
	dec  c                                           ; $6ed6: $0d
	ld   d, b                                        ; $6ed7: $50
	sbc  b                                           ; $6ed8: $98
	ld   e, d                                        ; $6ed9: $5a
	halt                                             ; $6eda: $76
	ld   d, h                                        ; $6edb: $54
	ld   h, d                                        ; $6edc: $62
	ld   h, h                                        ; $6edd: $64
	ld   d, d                                        ; $6ede: $52
	adc  h                                           ; $6edf: $8c
	ld   h, l                                        ; $6ee0: $65
	ld   l, l                                        ; $6ee1: $6d
	sbc  a                                           ; $6ee2: $9f
	dec  c                                           ; $6ee3: $0d
	nop                                              ; $6ee4: $00
	ld   a, [bc]                                     ; $6ee5: $0a
	add  hl, hl                                      ; $6ee6: $29
	nop                                              ; $6ee7: $00
	nop                                              ; $6ee8: $00
	inc  c                                           ; $6ee9: $0c
	ld   [bc], a                                     ; $6eea: $02
	ld   c, $0c                                      ; $6eeb: $0e $0c
	inc  e                                           ; $6eed: $1c
	ld   a, [bc]                                     ; $6eee: $0a
	ld   [bc], a                                     ; $6eef: $02
	ld   [bc], a                                     ; $6ef0: $02
	ld   bc, $2005                                   ; $6ef1: $01 $05 $20
	ld   a, l                                        ; $6ef4: $7d
	inc  bc                                          ; $6ef5: $03
	ld   d, a                                        ; $6ef6: $57
	ld   [hl], h                                     ; $6ef7: $74
	ld   d, b                                        ; $6ef8: $50
	sub  d                                           ; $6ef9: $92
	adc  a                                           ; $6efa: $8f

Jump_04f_6efb:
	ld   e, l                                        ; $6efb: $5d
	and  c                                           ; $6efc: $a1
	ld   e, c                                        ; $6efd: $59
	sub  a                                           ; $6efe: $97
	dec  c                                           ; $6eff: $0d
	ld   [bc], a                                     ; $6f00: $02
	jp   nz, Jump_04f_6959                           ; $6f01: $c2 $59 $69

	ld   [hl], h                                     ; $6f04: $74
	sub  b                                           ; $6f05: $90
	sub  a                                           ; $6f06: $97
	ld   [hl], c                                     ; $6f07: $71
	ld   l, l                                        ; $6f08: $6d
	rst  $38                                         ; $6f09: $ff
	rst  $38                                         ; $6f0a: $ff
	dec  c                                           ; $6f0b: $0d
	nop                                              ; $6f0c: $00
	ld   a, [bc]                                     ; $6f0d: $0a
	ld   bc, $0008                                   ; $6f0e: $01 $08 $00
	sbc  [hl]                                        ; $6f11: $9e
	ld   e, b                                        ; $6f12: $58
	adc  a                                           ; $6f13: $8f
	ld   d, [hl]                                     ; $6f14: $56
	sbc  [hl]                                        ; $6f15: $9e
	dec  c                                           ; $6f16: $0d
	ld   e, b                                        ; $6f17: $58
	adc  d                                           ; $6f18: $8a
	sbc  d                                           ; $6f19: $9a
	ld   [hl], h                                     ; $6f1a: $74
	sbc  c                                           ; $6f1b: $99
	ld   h, a                                        ; $6f1c: $67
	adc  l                                           ; $6f1d: $8d
	sbc  d                                           ; $6f1e: $9a
	and  b                                           ; $6f1f: $a0
	dec  c                                           ; $6f20: $0d
	inc  bc                                          ; $6f21: $03
	ld   e, e                                        ; $6f22: $5b
	ld   e, a                                        ; $6f23: $5f
	ld   a, b                                        ; $6f24: $78
	ld   e, c                                        ; $6f25: $59
	ld   [hl], c                                     ; $6f26: $71
	ld   l, l                                        ; $6f27: $6d
	and  c                                           ; $6f28: $a1
	ld   l, [hl]                                     ; $6f29: $6e
	ld   [hl], c                                     ; $6f2a: $71
	ld   [hl], h                                     ; $6f2b: $74
	ld   a, b                                        ; $6f2c: $78
	sbc  a                                           ; $6f2d: $9f
	dec  c                                           ; $6f2e: $0d
	nop                                              ; $6f2f: $00
	ld   a, [bc]                                     ; $6f30: $0a
	rrca                                             ; $6f31: $0f
	nop                                              ; $6f32: $00
	ld   bc, $ff01                                   ; $6f33: $01 $01 $ff
	rst  $38                                         ; $6f36: $ff
	ld   a, l                                        ; $6f37: $7d
	ld   d, d                                        ; $6f38: $52
	sbc  a                                           ; $6f39: $9f
	dec  c                                           ; $6f3a: $0d
	nop                                              ; $6f3b: $00
	ld   a, [bc]                                     ; $6f3c: $0a
	rrca                                             ; $6f3d: $0f
	ld   a, [bc]                                     ; $6f3e: $0a
	ld   [bc], a                                     ; $6f3f: $02
	ld   bc, $5252                                   ; $6f40: $01 $52 $52
	ld   e, c                                        ; $6f43: $59
	sbc  [hl]                                        ; $6f44: $9e
	ld   [$9f00], sp                                 ; $6f45: $08 $00 $9f
	dec  c                                           ; $6f48: $0d
	inc  bc                                          ; $6f49: $03
	inc  a                                           ; $6f4a: $3c
	ld   e, e                                        ; $6f4b: $5b
	inc  bc                                          ; $6f4c: $03
	or   b                                           ; $6f4d: $b0
	and  b                                           ; $6f4e: $a0
	ld   b, $25                                      ; $6f4f: $06 $25
	and  b                                           ; $6f51: $a0
	ld   e, c                                        ; $6f52: $59
	ld   e, a                                        ; $6f53: $5f
	ld   [hl], h                                     ; $6f54: $74
	ld   [hl], l                                     ; $6f55: $75
	sub  b                                           ; $6f56: $90
	inc  bc                                          ; $6f57: $03
	ld   e, e                                        ; $6f58: $5b
	ld   e, a                                        ; $6f59: $5f
	sbc  c                                           ; $6f5a: $99
	dec  c                                           ; $6f5b: $0d
	ld   a, h                                        ; $6f5c: $7c
	ld   e, d                                        ; $6f5d: $5a
	inc  b                                           ; $6f5e: $04
	ld   [$8f02], sp                                 ; $6f5f: $08 $02 $8f
	ld   [bc], a                                     ; $6f62: $02
	sub  b                                           ; $6f63: $90
	ld   [bc], a                                     ; $6f64: $02
	sub  c                                           ; $6f65: $91
	inc  b                                           ; $6f66: $04
	add  hl, bc                                      ; $6f67: $09
	ld   a, b                                        ; $6f68: $78
	and  c                                           ; $6f69: $a1
	ld   l, [hl]                                     ; $6f6a: $6e
	sub  [hl]                                        ; $6f6b: $96
	rst  $38                                         ; $6f6c: $ff
	rst  $38                                         ; $6f6d: $ff
	dec  c                                           ; $6f6e: $0d
	nop                                              ; $6f6f: $00
	ld   a, [bc]                                     ; $6f70: $0a
	inc  e                                           ; $6f71: $1c
	ld   a, [bc]                                     ; $6f72: $0a
	ld   [bc], a                                     ; $6f73: $02
	ld   [bc], a                                     ; $6f74: $02
	ld   bc, $9a6b                                   ; $6f75: $01 $6b $9a
	ld   e, d                                        ; $6f78: $5a
	ld   e, b                                        ; $6f79: $58
	adc  a                                           ; $6f7a: $8f
	ld   d, [hl]                                     ; $6f7b: $56
	sbc  [hl]                                        ; $6f7c: $9e
	inc  b                                           ; $6f7d: $04
	call nc, $037c                                   ; $6f7e: $d4 $7c $03
	ld   c, a                                        ; $6f81: $4f
	ld   [hl], l                                     ; $6f82: $75
	dec  c                                           ; $6f83: $0d
	ld   e, b                                        ; $6f84: $58
	adc  d                                           ; $6f85: $8a
	sbc  d                                           ; $6f86: $9a
	ld   [hl], h                                     ; $6f87: $74
	ld   d, d                                        ; $6f88: $52
	sbc  c                                           ; $6f89: $99
	inc  bc                                          ; $6f8a: $03
	ld   l, [hl]                                     ; $6f8b: $6e
	ld   a, h                                        ; $6f8c: $7c
	inc  bc                                          ; $6f8d: $03
	add  [hl]                                        ; $6f8e: $86
	add  b                                           ; $6f8f: $80
	halt                                             ; $6f90: $76
	sbc  b                                           ; $6f91: $98
	dec  c                                           ; $6f92: $0d
	inc  bc                                          ; $6f93: $03
	ld   e, e                                        ; $6f94: $5b
	ld   e, a                                        ; $6f95: $5f
	sub  a                                           ; $6f96: $97
	sbc  d                                           ; $6f97: $9a
	ld   a, b                                        ; $6f98: $78
	ld   d, d                                        ; $6f99: $52
	ld   [hl], l                                     ; $6f9a: $75
	ld   [hl], a                                     ; $6f9b: $77
	ld   d, h                                        ; $6f9c: $54
	ld   h, a                                        ; $6f9d: $67
	sbc  c                                           ; $6f9e: $99
	and  c                                           ; $6f9f: $a1
	ld   l, [hl]                                     ; $6fa0: $6e
	ld   sp, hl                                      ; $6fa1: $f9
	dec  c                                           ; $6fa2: $0d
	nop                                              ; $6fa3: $00
	ld   a, [bc]                                     ; $6fa4: $0a
	rrca                                             ; $6fa5: $0f
	ld   a, [bc]                                     ; $6fa6: $0a
	ld   [bc], a                                     ; $6fa7: $02
	ld   bc, $a16b                                   ; $6fa8: $01 $6b $a1
	ld   a, b                                        ; $6fab: $78
	ld   [bc], a                                     ; $6fac: $02
	jp   $9166                                       ; $6fad: $c3 $66 $91


	ld   d, b                                        ; $6fb0: $50
	inc  b                                           ; $6fb1: $04
	ld   [$2f04], sp                                 ; $6fb2: $08 $04 $2f
	ld   a, l                                        ; $6fb5: $7d
	dec  c                                           ; $6fb6: $0d
	inc  bc                                          ; $6fb7: $03
	sub  e                                           ; $6fb8: $93
	sbc  d                                           ; $6fb9: $9a
	ld   a, e                                        ; $6fba: $7b
	ld   d, [hl]                                     ; $6fbb: $56
	ld   a, b                                        ; $6fbc: $78
	rst  $38                                         ; $6fbd: $ff
	rst  $38                                         ; $6fbe: $ff
	dec  c                                           ; $6fbf: $0d
	nop                                              ; $6fc0: $00
	ld   a, [bc]                                     ; $6fc1: $0a
	ld   bc, $9d59                                   ; $6fc2: $01 $59 $9d
	ld   d, d                                        ; $6fc5: $52
	ld   l, e                                        ; $6fc6: $6b
	ld   d, h                                        ; $6fc7: $54
	ld   l, [hl]                                     ; $6fc8: $6e
	ld   e, d                                        ; $6fc9: $5a
	sbc  [hl]                                        ; $6fca: $9e
	dec  c                                           ; $6fcb: $0d
	inc  b                                           ; $6fcc: $04
	dec  c                                           ; $6fcd: $0d
	ld   [bc], a                                     ; $6fce: $02
	sub  [hl]                                        ; $6fcf: $96
	inc  b                                           ; $6fd0: $04
	ld   b, l                                        ; $6fd1: $45
	inc  b                                           ; $6fd2: $04
	ld   a, [bc]                                     ; $6fd3: $0a
	ld   a, l                                        ; $6fd4: $7d
	ld   h, c                                        ; $6fd5: $61
	sbc  d                                           ; $6fd6: $9a
	ld   [hl], l                                     ; $6fd7: $75
	inc  bc                                          ; $6fd8: $03
	ld   a, [hl]                                     ; $6fd9: $7e
	sbc  l                                           ; $6fda: $9d
	sbc  b                                           ; $6fdb: $98
	ld   l, [hl]                                     ; $6fdc: $6e
	sbc  a                                           ; $6fdd: $9f
	dec  c                                           ; $6fde: $0d
	nop                                              ; $6fdf: $00
	ld   a, [bc]                                     ; $6fe0: $0a
	ld   bc, $7202                                   ; $6fe1: $01 $02 $72
	ld   d, b                                        ; $6fe4: $50
	sub  a                                           ; $6fe5: $97
	ld   [hl], c                                     ; $6fe6: $71
	ld   [hl], h                                     ; $6fe7: $74
	sbc  [hl]                                        ; $6fe8: $9e
	inc  bc                                          ; $6fe9: $03
	add  b                                           ; $6fea: $80
	inc  bc                                          ; $6feb: $03
	jp   c, $7465                                    ; $6fec: $da $65 $74

	ld   e, e                                        ; $6fef: $5b
	ld   a, b                                        ; $6ff0: $78
	ld   a, [$000d]                                  ; $6ff1: $fa $0d $00
	ld   a, [bc]                                     ; $6ff4: $0a
	ld   h, $00                                      ; $6ff5: $26 $00
	inc  e                                           ; $6ff7: $1c
	ld   b, $00                                      ; $6ff8: $06 $00
	nop                                              ; $6ffa: $00
	ld   [bc], a                                     ; $6ffb: $02
	ld   bc, $9e58                                   ; $6ffc: $01 $58 $9e
	ld   [$9e00], sp                                 ; $6fff: $08 $00 $9e
	dec  c                                           ; $7002: $0d
	ld   l, a                                        ; $7003: $6f
	sub  l                                           ; $7004: $95
	ld   d, h                                        ; $7005: $54
	ld   [hl], a                                     ; $7006: $77
	sub  [hl]                                        ; $7007: $96
	ld   e, c                                        ; $7008: $59
	ld   [hl], c                                     ; $7009: $71
	ld   l, l                                        ; $700a: $6d
	ld   l, d                                        ; $700b: $6a
	sbc  a                                           ; $700c: $9f
	dec  c                                           ; $700d: $0d
	nop                                              ; $700e: $00
	ld   a, [bc]                                     ; $700f: $0a
	ld   bc, $6590                                   ; $7010: $01 $90 $65
	sbc  [hl]                                        ; $7013: $9e
	inc  bc                                          ; $7014: $03
	ld   l, a                                        ; $7015: $6f
	ld   [bc], a                                     ; $7016: $02
	xor  c                                           ; $7017: $a9
	ld   e, d                                        ; $7018: $5a
	ld   d, b                                        ; $7019: $50
	ld   [hl], c                                     ; $701a: $71
	ld   l, l                                        ; $701b: $6d
	sub  a                                           ; $701c: $97
	dec  c                                           ; $701d: $0d
	inc  b                                           ; $701e: $04
	adc  a                                           ; $701f: $8f
	inc  b                                           ; $7020: $04
	ld   de, $7c8d                                   ; $7021: $11 $8d $7c
	ld   [bc], a                                     ; $7024: $02
	ld   a, [de]                                     ; $7025: $1a
	inc  bc                                          ; $7026: $03
	ld   l, e                                        ; $7027: $6b
	and  b                                           ; $7028: $a0
	ld   h, l                                        ; $7029: $65
	ld   [hl], h                                     ; $702a: $74
	dec  c                                           ; $702b: $0d
	adc  c                                           ; $702c: $89
	ld   h, l                                        ; $702d: $65
	ld   d, d                                        ; $702e: $52
	and  c                                           ; $702f: $a1
	ld   l, [hl]                                     ; $7030: $6e
	ld   e, a                                        ; $7031: $5f
	ld   [hl], a                                     ; $7032: $77
	sub  [hl]                                        ; $7033: $96
	rst  $38                                         ; $7034: $ff
	rst  $38                                         ; $7035: $ff
	dec  c                                           ; $7036: $0d
	nop                                              ; $7037: $00
	ld   a, [bc]                                     ; $7038: $0a
	add  hl, de                                      ; $7039: $19
	dec  b                                           ; $703a: $05
	ld   [bc], a                                     ; $703b: $02
	ld   [bc], a                                     ; $703c: $02
	ld   a, [de]                                     ; $703d: $1a
	inc  bc                                          ; $703e: $03
	ld   l, e                                        ; $703f: $6b
	and  b                                           ; $7040: $a0
	ld   h, a                                        ; $7041: $67
	sbc  c                                           ; $7042: $99
	nop                                              ; $7043: $00
	nop                                              ; $7044: $00
	ld   h, c                                        ; $7045: $61
	halt                                             ; $7046: $76
	sbc  l                                           ; $7047: $9d
	sbc  c                                           ; $7048: $99
	nop                                              ; $7049: $00
	ld   bc, $c407                                   ; $704a: $01 $07 $c4
	nop                                              ; $704d: $00
	ld   [bc], a                                     ; $704e: $02
	inc  bc                                          ; $704f: $03
	ld   bc, $2000                                   ; $7050: $01 $00 $20
	nop                                              ; $7053: $00
	rlca                                             ; $7054: $07
	ld   l, c                                        ; $7055: $69
	nop                                              ; $7056: $00
	ld   [bc], a                                     ; $7057: $02
	inc  bc                                          ; $7058: $03
	ld   bc, $2001                                   ; $7059: $01 $01 $20
	nop                                              ; $705c: $00
	ld   b, $9a                                      ; $705d: $06 $9a
	nop                                              ; $705f: $00
	rrca                                             ; $7060: $0f
	nop                                              ; $7061: $00
	ld   bc, $6701                                   ; $7062: $01 $01 $67
	adc  l                                           ; $7065: $8d
	adc  h                                           ; $7066: $8c
	ld   l, c                                        ; $7067: $69
	and  c                                           ; $7068: $a1
	sbc  a                                           ; $7069: $9f
	dec  c                                           ; $706a: $0d
	ld   l, a                                        ; $706b: $6f
	sub  l                                           ; $706c: $95
	ld   [hl], c                                     ; $706d: $71
	halt                                             ; $706e: $76
	ld   [bc], a                                     ; $706f: $02
	and  l                                           ; $7070: $a5
	ld   a, l                                        ; $7071: $7d
	rst  $38                                         ; $7072: $ff
	rst  $38                                         ; $7073: $ff
	dec  c                                           ; $7074: $0d
	nop                                              ; $7075: $00
	ld   a, [bc]                                     ; $7076: $0a
	inc  e                                           ; $7077: $1c
	ld   b, $05                                      ; $7078: $06 $05
	dec  b                                           ; $707a: $05
	ld   bc, $546b                                   ; $707b: $01 $6b $54
	ld   e, c                                        ; $707e: $59
	rst  $38                                         ; $707f: $ff
	rst  $38                                         ; $7080: $ff
	dec  c                                           ; $7081: $0d
	ld   h, [hl]                                     ; $7082: $66
	sub  c                                           ; $7083: $91
	sbc  [hl]                                        ; $7084: $9e
	adc  h                                           ; $7085: $8c
	ld   l, l                                        ; $7086: $6d
	ld   [bc], a                                     ; $7087: $02
	and  l                                           ; $7088: $a5
	inc  b                                           ; $7089: $04
	add  hl, hl                                      ; $708a: $29
	ld   a, b                                        ; $708b: $78
	sbc  a                                           ; $708c: $9f
	dec  c                                           ; $708d: $0d
	nop                                              ; $708e: $00
	ld   a, [bc]                                     ; $708f: $0a
	nop                                              ; $7090: $00
	inc  e                                           ; $7091: $1c
	ld   b, $00                                      ; $7092: $06 $00
	nop                                              ; $7094: $00
	ld   bc, $9e50                                   ; $7095: $01 $50 $9e
	ld   d, d                                        ; $7098: $52
	ld   l, e                                        ; $7099: $6b
	ld   e, d                                        ; $709a: $5a
	ld   h, l                                        ; $709b: $65
	ld   d, d                                        ; $709c: $52
	and  c                                           ; $709d: $a1
	ld   l, [hl]                                     ; $709e: $6e
	ld   [hl], c                                     ; $709f: $71
	ld   l, l                                        ; $70a0: $6d
	sub  a                                           ; $70a1: $97
	dec  c                                           ; $70a2: $0d
	adc  h                                           ; $70a3: $8c
	ld   l, l                                        ; $70a4: $6d
	ld   [bc], a                                     ; $70a5: $02
	and  l                                           ; $70a6: $a5
	inc  b                                           ; $70a7: $04
	add  hl, hl                                      ; $70a8: $29
	ld   [hl], l                                     ; $70a9: $75
	ld   d, d                                        ; $70aa: $52
	ld   d, d                                        ; $70ab: $52
	ld   l, d                                        ; $70ac: $6a
	sbc  a                                           ; $70ad: $9f
	dec  c                                           ; $70ae: $0d
	nop                                              ; $70af: $00
	ld   a, [bc]                                     ; $70b0: $0a
	ld   bc, $9166                                   ; $70b1: $01 $66 $91
	ld   d, b                                        ; $70b4: $50
	ld   a, b                                        ; $70b5: $78
	sbc  a                                           ; $70b6: $9f
	dec  c                                           ; $70b7: $0d
	nop                                              ; $70b8: $00
	ld   a, [bc]                                     ; $70b9: $0a
	nop                                              ; $70ba: $00
	rrca                                             ; $70bb: $0f
	nop                                              ; $70bc: $00
	ld   bc, $5201                                   ; $70bd: $01 $01 $52
	ld   d, d                                        ; $70c0: $52
	ld   [hl], l                                     ; $70c1: $75
	ld   h, a                                        ; $70c2: $67
	sub  [hl]                                        ; $70c3: $96
	sbc  a                                           ; $70c4: $9f
	dec  c                                           ; $70c5: $0d
	inc  b                                           ; $70c6: $04
	ld   l, l                                        ; $70c7: $6d
	ld   [hl], l                                     ; $70c8: $75
	ld   e, b                                        ; $70c9: $58
	inc  b                                           ; $70ca: $04
	db   $ec                                         ; $70cb: $ec
	ld   a, c                                        ; $70cc: $79
	dec  b                                           ; $70cd: $05
	ld   d, $74                                      ; $70ce: $16 $74
	sbc  c                                           ; $70d0: $99
	ld   a, b                                        ; $70d1: $78
	sub  a                                           ; $70d2: $97
	rst  $38                                         ; $70d3: $ff
	rst  $38                                         ; $70d4: $ff
	dec  c                                           ; $70d5: $0d
	nop                                              ; $70d6: $00
	ld   a, [bc]                                     ; $70d7: $0a
	inc  e                                           ; $70d8: $1c
	ld   b, $01                                      ; $70d9: $06 $01
	ld   bc, $b601                                   ; $70db: $01 $01 $b6
	push af                                          ; $70de: $f5
	xor  [hl]                                        ; $70df: $ae
	rst  $20                                         ; $70e0: $e7
	ei                                               ; $70e1: $fb
	ld   a, [$030d]                                  ; $70e2: $fa $0d $03
	ld   e, e                                        ; $70e5: $5b
	ld   e, c                                        ; $70e6: $59
	sbc  c                                           ; $70e7: $99
	ld   l, d                                        ; $70e8: $6a
	sbc  a                                           ; $70e9: $9f
	dec  c                                           ; $70ea: $0d
	nop                                              ; $70eb: $00
	ld   a, [bc]                                     ; $70ec: $0a
	inc  e                                           ; $70ed: $1c
	ld   b, $00                                      ; $70ee: $06 $00
	nop                                              ; $70f0: $00
	ld   bc, $9166                                   ; $70f1: $01 $66 $91
	ld   d, b                                        ; $70f4: $50
	sbc  [hl]                                        ; $70f5: $9e
	ld   [$7900], sp                                 ; $70f6: $08 $00 $79
	ld   a, l                                        ; $70f9: $7d
	dec  c                                           ; $70fa: $0d
	inc  b                                           ; $70fb: $04
	ld   hl, sp+$02                                  ; $70fc: $f8 $02
	add  a                                           ; $70fe: $87
	inc  b                                           ; $70ff: $04
	or   a                                           ; $7100: $b7
	inc  bc                                          ; $7101: $03
	add  d                                           ; $7102: $82
	ld   a, h                                        ; $7103: $7c
	inc  b                                           ; $7104: $04
	db   $ec                                         ; $7105: $ec
	and  b                                           ; $7106: $a0
	ld   l, l                                        ; $7107: $6d
	ld   a, h                                        ; $7108: $7c
	adc  [hl]                                        ; $7109: $8e
	ld   e, c                                        ; $710a: $59
	ld   a, b                                        ; $710b: $78
	rst  $38                                         ; $710c: $ff
	rst  $38                                         ; $710d: $ff
	dec  c                                           ; $710e: $0d
	nop                                              ; $710f: $00
	ld   a, [bc]                                     ; $7110: $0a
	ld   bc, $f804                                   ; $7111: $01 $04 $f8
	ld   [bc], a                                     ; $7114: $02
	add  a                                           ; $7115: $87
	inc  b                                           ; $7116: $04
	or   a                                           ; $7117: $b7
	inc  bc                                          ; $7118: $03
	add  d                                           ; $7119: $82
	ld   a, h                                        ; $711a: $7c
	inc  bc                                          ; $711b: $03
	ld   l, b                                        ; $711c: $68
	ld   a, h                                        ; $711d: $7c
	cp   h                                           ; $711e: $bc
	db   $ec                                         ; $711f: $ec
	sub  $a0                                         ; $7120: $d6 $a0
	dec  c                                           ; $7122: $0d
	ld   e, b                                        ; $7123: $58
	adc  d                                           ; $7124: $8a
	ld   d, [hl]                                     ; $7125: $56
	ld   [hl], h                                     ; $7126: $74
	ld   e, l                                        ; $7127: $5d
	sbc  d                                           ; $7128: $9a
	sub  [hl]                                        ; $7129: $96
	sbc  a                                           ; $712a: $9f
	dec  c                                           ; $712b: $0d
	nop                                              ; $712c: $00
	ld   a, [bc]                                     ; $712d: $0a
	inc  e                                           ; $712e: $1c
	ld   b, $02                                      ; $712f: $06 $02
	ld   [bc], a                                     ; $7131: $02
	ld   bc, $d6fd                                   ; $7132: $01 $fd $d6
	push af                                          ; $7135: $f5
	rst  $38                                         ; $7136: $ff
	rst  $38                                         ; $7137: $ff
	or   [hl]                                        ; $7138: $b6
	db   $ed                                         ; $7139: $ed
	ld   h, d                                        ; $713a: $62
	halt                                             ; $713b: $76
	ld   e, e                                        ; $713c: $5b
	ld   e, d                                        ; $713d: $5a
	dec  c                                           ; $713e: $0d
	db   $10                                         ; $713f: $10
	ld   h, c                                        ; $7140: $61
	ld   a, h                                        ; $7141: $7c
	ld   a, [bc]                                     ; $7142: $0a
	ld   [bc], a                                     ; $7143: $02
	inc  b                                           ; $7144: $04
	ld   hl, sp+$02                                  ; $7145: $f8 $02
	add  a                                           ; $7147: $87
	inc  b                                           ; $7148: $04
	or   a                                           ; $7149: $b7
	inc  bc                                          ; $714a: $03
	add  d                                           ; $714b: $82
	ld   a, [bc]                                     ; $714c: $0a
	inc  bc                                          ; $714d: $03
	ld   a, c                                        ; $714e: $79
	ld   e, c                                        ; $714f: $59
	ld   a, b                                        ; $7150: $78
	ld   d, h                                        ; $7151: $54
	halt                                             ; $7152: $76
	ld   [hl], l                                     ; $7153: $75
	sub  b                                           ; $7154: $90
	dec  c                                           ; $7155: $0d
	db   $10                                         ; $7156: $10
	dec  b                                           ; $7157: $05
	pop  de                                          ; $7158: $d1
	ld   [hl], c                                     ; $7159: $71
	ld   [hl], h                                     ; $715a: $74
	ld   d, d                                        ; $715b: $52
	sbc  c                                           ; $715c: $99
	ld   a, h                                        ; $715d: $7c
	ld   e, c                                        ; $715e: $59
	ld   sp, hl                                      ; $715f: $f9
	cp   $0d                                         ; $7160: $fe $0d
	nop                                              ; $7162: $00
	ld   a, [bc]                                     ; $7163: $0a
	ld   bc, $b6fd                                   ; $7164: $01 $fd $b6
	db   $ed                                         ; $7167: $ed
	adc  a                                           ; $7168: $8f
	rst  $38                                         ; $7169: $ff
	rst  $38                                         ; $716a: $ff
	dec  c                                           ; $716b: $0d
	db   $10                                         ; $716c: $10
	ld   a, [bc]                                     ; $716d: $0a
	ld   [bc], a                                     ; $716e: $02
	ld   h, c                                        ; $716f: $61
	ld   h, h                                        ; $7170: $64
	ld   e, c                                        ; $7171: $59
	ld   h, l                                        ; $7172: $65
	ld   d, d                                        ; $7173: $52
	sbc  l                                           ; $7174: $9d
	ld   a, [$030a]                                  ; $7175: $fa $0a $03
	cp   $0d                                         ; $7178: $fe $0d
	nop                                              ; $717a: $00
	ld   a, [bc]                                     ; $717b: $0a
	ld   bc, $50fd                                   ; $717c: $01 $fd $50
	ld   l, e                                        ; $717f: $6b
	add  c                                           ; $7180: $81
	ld   a, l                                        ; $7181: $7d
	inc  bc                                          ; $7182: $03
	ld   a, [hl]                                     ; $7183: $7e
	sbc  l                                           ; $7184: $9d
	sbc  b                                           ; $7185: $98
	ld   l, [hl]                                     ; $7186: $6e
	ld   a, [$100d]                                  ; $7187: $fa $0d $10
	ld   a, [bc]                                     ; $718a: $0a
	ld   [bc], a                                     ; $718b: $02
	ld   h, c                                        ; $718c: $61
	ld   a, h                                        ; $718d: $7c
	inc  bc                                          ; $718e: $03
	add  hl, de                                      ; $718f: $19
	ld   e, c                                        ; $7190: $59
	sub  a                                           ; $7191: $97
	ld   a, [bc]                                     ; $7192: $0a
	inc  bc                                          ; $7193: $03
	dec  b                                           ; $7194: $05
	ld   b, h                                        ; $7195: $44
	ld   d, [hl]                                     ; $7196: $56
	ld   [hl], h                                     ; $7197: $74
	dec  c                                           ; $7198: $0d
	db   $10                                         ; $7199: $10
	ld   a, b                                        ; $719a: $78
	ld   e, l                                        ; $719b: $5d
	ld   a, b                                        ; $719c: $78

Jump_04f_719d:
	sbc  d                                           ; $719d: $9a
	ld   d, d                                        ; $719e: $52
	ld   a, [$0dfe]                                  ; $719f: $fa $fe $0d
	nop                                              ; $71a2: $00
	ld   a, [bc]                                     ; $71a3: $0a
	inc  e                                           ; $71a4: $1c
	ld   b, $00                                      ; $71a5: $06 $00
	nop                                              ; $71a7: $00
	ld   bc, $8a58                                   ; $71a8: $01 $58 $8a
	ld   d, [hl]                                     ; $71ab: $56
	ld   l, l                                        ; $71ac: $6d
	ld   e, c                                        ; $71ad: $59
	ld   sp, hl                                      ; $71ae: $f9
	dec  c                                           ; $71af: $0d
	ld   h, [hl]                                     ; $71b0: $66
	sub  c                                           ; $71b1: $91
	sbc  [hl]                                        ; $71b2: $9e
	ld   d, d                                        ; $71b3: $52
	ld   e, l                                        ; $71b4: $5d
	ld   l, d                                        ; $71b5: $6a
	rst  $38                                         ; $71b6: $ff
	rst  $38                                         ; $71b7: $ff
	dec  c                                           ; $71b8: $0d
	nop                                              ; $71b9: $00
	ld   a, [bc]                                     ; $71ba: $0a
	inc  e                                           ; $71bb: $1c
	ld   b, $02                                      ; $71bc: $06 $02
	ld   [bc], a                                     ; $71be: $02
	ld   bc, $8003                                   ; $71bf: $01 $03 $80
	sub  d                                           ; $71c2: $92
	ld   e, d                                        ; $71c3: $5a
	ld   [hl], c                                     ; $71c4: $71
	ld   l, l                                        ; $71c5: $6d
	ld   a, b                                        ; $71c6: $78
	sbc  [hl]                                        ; $71c7: $9e
	ld   h, c                                        ; $71c8: $61
	ld   a, h                                        ; $71c9: $7c
	inc  b                                           ; $71ca: $04
	ld   hl, sp+$02                                  ; $71cb: $f8 $02
	ld   h, h                                        ; $71cd: $64
	ld   a, [$000d]                                  ; $71ce: $fa $0d $00
	ld   a, [bc]                                     ; $71d1: $0a
	rrca                                             ; $71d2: $0f
	nop                                              ; $71d3: $00
	ld   bc, $d601                                   ; $71d4: $01 $01 $d6
	push af                                          ; $71d7: $f5
	rst  $38                                         ; $71d8: $ff
	rst  $38                                         ; $71d9: $ff
	or   [hl]                                        ; $71da: $b6
	db   $ed                                         ; $71db: $ed
	ld   h, d                                        ; $71dc: $62
	halt                                             ; $71dd: $76
	ld   e, e                                        ; $71de: $5b
	ld   e, d                                        ; $71df: $5a
	rst  $38                                         ; $71e0: $ff
	rst  $38                                         ; $71e1: $ff
	dec  c                                           ; $71e2: $0d
	nop                                              ; $71e3: $00
	ld   a, [bc]                                     ; $71e4: $0a
	add  hl, de                                      ; $71e5: $19
	dec  b                                           ; $71e6: $05
	inc  bc                                          ; $71e7: $03
	ld   h, c                                        ; $71e8: $61
	ld   a, h                                        ; $71e9: $7c
	inc  b                                           ; $71ea: $04
	ld   hl, sp+$02                                  ; $71eb: $f8 $02
	add  a                                           ; $71ed: $87
	inc  b                                           ; $71ee: $04
	or   a                                           ; $71ef: $b7
	inc  bc                                          ; $71f0: $03
	add  d                                           ; $71f1: $82
	ld   a, c                                        ; $71f2: $79
	rst  $38                                         ; $71f3: $ff
	rst  $38                                         ; $71f4: $ff
	nop                                              ; $71f5: $00
	nop                                              ; $71f6: $00
	ld   h, c                                        ; $71f7: $61
	ld   a, h                                        ; $71f8: $7c
	inc  b                                           ; $71f9: $04
	ld   hl, sp+$02                                  ; $71fa: $f8 $02
	ld   h, h                                        ; $71fc: $64
	inc  b                                           ; $71fd: $04
	or   a                                           ; $71fe: $b7
	inc  bc                                          ; $71ff: $03
	add  d                                           ; $7200: $82
	ld   a, c                                        ; $7201: $79
	rst  $38                                         ; $7202: $ff
	rst  $38                                         ; $7203: $ff
	nop                                              ; $7204: $00
	ld   bc, $7c61                                   ; $7205: $01 $61 $7c
	inc  b                                           ; $7208: $04
	ld   hl, sp+$04                                  ; $7209: $f8 $04
	call $b704                                       ; $720b: $cd $04 $b7
	inc  bc                                          ; $720e: $03
	add  d                                           ; $720f: $82
	ld   a, c                                        ; $7210: $79
	rst  $38                                         ; $7211: $ff
	rst  $38                                         ; $7212: $ff
	nop                                              ; $7213: $00
	ld   [bc], a                                     ; $7214: $02
	rlca                                             ; $7215: $07
	inc  a                                           ; $7216: $3c
	ld   [bc], a                                     ; $7217: $02
	ld   [bc], a                                     ; $7218: $02
	inc  bc                                          ; $7219: $03
	ld   bc, $2000                                   ; $721a: $01 $00 $20
	nop                                              ; $721d: $00
	rlca                                             ; $721e: $07
	ld   l, d                                        ; $721f: $6a
	ld   [bc], a                                     ; $7220: $02
	ld   [bc], a                                     ; $7221: $02
	inc  bc                                          ; $7222: $03
	ld   bc, $2001                                   ; $7223: $01 $01 $20
	nop                                              ; $7226: $00
	rlca                                             ; $7227: $07
	adc  a                                           ; $7228: $8f
	ld   [bc], a                                     ; $7229: $02
	ld   [bc], a                                     ; $722a: $02
	inc  bc                                          ; $722b: $03
	ld   bc, $2002                                   ; $722c: $01 $02 $20
	nop                                              ; $722f: $00
	ld   b, $32                                      ; $7230: $06 $32
	inc  b                                           ; $7232: $04
	rrca                                             ; $7233: $0f
	nop                                              ; $7234: $00
	ld   bc, $6101                                   ; $7235: $01 $01 $61
	ld   a, h                                        ; $7238: $7c
	inc  b                                           ; $7239: $04
	ld   hl, sp+$02                                  ; $723a: $f8 $02
	add  a                                           ; $723c: $87
	inc  b                                           ; $723d: $04
	or   a                                           ; $723e: $b7
	inc  bc                                          ; $723f: $03
	add  d                                           ; $7240: $82
	ld   a, c                                        ; $7241: $79
	ld   e, c                                        ; $7242: $59
	ld   a, b                                        ; $7243: $78
	ld   d, h                                        ; $7244: $54
	halt                                             ; $7245: $76
	ld   [hl], l                                     ; $7246: $75
	sub  b                                           ; $7247: $90
	dec  c                                           ; $7248: $0d
	dec  b                                           ; $7249: $05
	pop  de                                          ; $724a: $d1
	ld   [hl], c                                     ; $724b: $71
	ld   [hl], h                                     ; $724c: $74
	ld   d, d                                        ; $724d: $52
	sbc  c                                           ; $724e: $99
	ld   a, h                                        ; $724f: $7c
	ld   e, c                                        ; $7250: $59
	ld   sp, hl                                      ; $7251: $f9
	dec  c                                           ; $7252: $0d
	nop                                              ; $7253: $00
	ld   a, [bc]                                     ; $7254: $0a
	dec  b                                           ; $7255: $05
	ld   b, b                                        ; $7256: $40
	rst  $38                                         ; $7257: $ff
	inc  bc                                          ; $7258: $03
	rst  $38                                         ; $7259: $ff
	ld   bc, $2801                                   ; $725a: $01 $01 $28
	nop                                              ; $725d: $00
	ld   b, $b1                                      ; $725e: $06 $b1
	ld   [bc], a                                     ; $7260: $02
	rrca                                             ; $7261: $0f
	nop                                              ; $7262: $00
	ld   bc, $6101                                   ; $7263: $01 $01 $61
	ld   a, h                                        ; $7266: $7c
	inc  b                                           ; $7267: $04
	ld   hl, sp+$02                                  ; $7268: $f8 $02
	ld   h, h                                        ; $726a: $64
	inc  b                                           ; $726b: $04
	or   a                                           ; $726c: $b7
	inc  bc                                          ; $726d: $03
	add  d                                           ; $726e: $82
	ld   a, c                                        ; $726f: $79
	ld   e, c                                        ; $7270: $59
	ld   a, b                                        ; $7271: $78
	ld   d, h                                        ; $7272: $54
	halt                                             ; $7273: $76
	ld   [hl], l                                     ; $7274: $75
	sub  b                                           ; $7275: $90
	dec  c                                           ; $7276: $0d
	dec  b                                           ; $7277: $05
	pop  de                                          ; $7278: $d1
	ld   [hl], c                                     ; $7279: $71
	ld   [hl], h                                     ; $727a: $74
	ld   d, d                                        ; $727b: $52
	sbc  c                                           ; $727c: $99
	ld   a, h                                        ; $727d: $7c
	ld   e, c                                        ; $727e: $59
	ld   sp, hl                                      ; $727f: $f9
	dec  c                                           ; $7280: $0d
	nop                                              ; $7281: $00
	ld   a, [bc]                                     ; $7282: $0a
	ld   b, $b1                                      ; $7283: $06 $b1
	ld   [bc], a                                     ; $7285: $02
	rrca                                             ; $7286: $0f
	nop                                              ; $7287: $00
	ld   bc, $6101                                   ; $7288: $01 $01 $61
	ld   a, h                                        ; $728b: $7c
	inc  b                                           ; $728c: $04
	ld   hl, sp+$04                                  ; $728d: $f8 $04
	call $b704                                       ; $728f: $cd $04 $b7
	inc  bc                                          ; $7292: $03
	add  d                                           ; $7293: $82
	ld   a, c                                        ; $7294: $79
	ld   e, c                                        ; $7295: $59
	ld   a, b                                        ; $7296: $78
	ld   d, h                                        ; $7297: $54
	halt                                             ; $7298: $76
	ld   [hl], l                                     ; $7299: $75
	sub  b                                           ; $729a: $90
	dec  c                                           ; $729b: $0d
	dec  b                                           ; $729c: $05
	pop  de                                          ; $729d: $d1
	ld   [hl], c                                     ; $729e: $71
	ld   [hl], h                                     ; $729f: $74
	ld   d, d                                        ; $72a0: $52
	sbc  c                                           ; $72a1: $99
	ld   a, h                                        ; $72a2: $7c
	ld   e, c                                        ; $72a3: $59
	ld   sp, hl                                      ; $72a4: $f9
	dec  c                                           ; $72a5: $0d
	nop                                              ; $72a6: $00
	ld   a, [bc]                                     ; $72a7: $0a
	inc  e                                           ; $72a8: $1c
	ld   b, $02                                      ; $72a9: $06 $02
	ld   [bc], a                                     ; $72ab: $02
	ld   bc, $9165                                   ; $72ac: $01 $65 $91
	sub  a                                           ; $72af: $97
	ld   e, l                                        ; $72b0: $5d
	ld   l, c                                        ; $72b1: $69
	ld   d, [hl]                                     ; $72b2: $56
	rst  $38                                         ; $72b3: $ff
	rst  $38                                         ; $72b4: $ff
	dec  c                                           ; $72b5: $0d
	ld   h, c                                        ; $72b6: $61
	sbc  d                                           ; $72b7: $9a
	ld   [hl], l                                     ; $72b8: $75
	sub  b                                           ; $72b9: $90
	sbc  [hl]                                        ; $72ba: $9e
	ld   e, l                                        ; $72bb: $5d
	sub  a                                           ; $72bc: $97
	ld   d, d                                        ; $72bd: $52
	sub  d                                           ; $72be: $92
	ld   e, d                                        ; $72bf: $5a
	sbc  d                                           ; $72c0: $9a
	ld   a, [$000d]                                  ; $72c1: $fa $0d $00
	ld   a, [bc]                                     ; $72c4: $0a
	rrca                                             ; $72c5: $0f
	nop                                              ; $72c6: $00
	ld   bc, $b601                                   ; $72c7: $01 $01 $b6
	db   $ed                                         ; $72ca: $ed
	adc  a                                           ; $72cb: $8f
	rst  $38                                         ; $72cc: $ff
	rst  $38                                         ; $72cd: $ff
	dec  c                                           ; $72ce: $0d
	nop                                              ; $72cf: $00
	ld   a, [bc]                                     ; $72d0: $0a
	add  hl, de                                      ; $72d1: $19
	dec  b                                           ; $72d2: $05
	inc  bc                                          ; $72d3: $03
	ld   h, c                                        ; $72d4: $61
	ld   h, h                                        ; $72d5: $64
	ld   e, c                                        ; $72d6: $59
	ld   h, l                                        ; $72d7: $65
	ld   d, d                                        ; $72d8: $52
	sbc  l                                           ; $72d9: $9d
	ld   a, [rRAMG]                                  ; $72da: $fa $00 $00
	ld   h, c                                        ; $72dd: $61
	adc  h                                           ; $72de: $8c
	ld   [hl], c                                     ; $72df: $71
	ld   h, l                                        ; $72e0: $65
	sub  c                                           ; $72e1: $91
	ld   e, l                                        ; $72e2: $5d
	sbc  d                                           ; $72e3: $9a
	ld   [hl], h                                     ; $72e4: $74
	sbc  c                                           ; $72e5: $99
	sbc  l                                           ; $72e6: $9d
	ld   a, [$0100]                                  ; $72e7: $fa $00 $01
	ld   h, c                                        ; $72ea: $61
	ld   h, h                                        ; $72eb: $64
	ld   d, d                                        ; $72ec: $52
	ld   e, l                                        ; $72ed: $5d
	and  b                                           ; $72ee: $a0
	ld   h, l                                        ; $72ef: $65
	sub  [hl]                                        ; $72f0: $96
	ld   [hl], c                                     ; $72f1: $71
	ld   [hl], h                                     ; $72f2: $74
	ld   a, [$0200]                                  ; $72f3: $fa $00 $02
	rlca                                             ; $72f6: $07
	dec  e                                           ; $72f7: $1d
	inc  bc                                          ; $72f8: $03
	ld   [bc], a                                     ; $72f9: $02
	inc  bc                                          ; $72fa: $03
	ld   bc, $2000                                   ; $72fb: $01 $00 $20
	nop                                              ; $72fe: $00
	rlca                                             ; $72ff: $07
	scf                                              ; $7300: $37
	inc  bc                                          ; $7301: $03
	ld   [bc], a                                     ; $7302: $02
	inc  bc                                          ; $7303: $03
	ld   bc, $2001                                   ; $7304: $01 $01 $20
	nop                                              ; $7307: $00
	rlca                                             ; $7308: $07
	ld   c, h                                        ; $7309: $4c
	inc  bc                                          ; $730a: $03
	ld   [bc], a                                     ; $730b: $02
	inc  bc                                          ; $730c: $03
	ld   bc, $2002                                   ; $730d: $01 $02 $20
	nop                                              ; $7310: $00
	ld   b, $32                                      ; $7311: $06 $32
	inc  b                                           ; $7313: $04
	rrca                                             ; $7314: $0f
	nop                                              ; $7315: $00
	ld   bc, $6101                                   ; $7316: $01 $01 $61
	ld   h, h                                        ; $7319: $64
	ld   e, c                                        ; $731a: $59
	ld   h, l                                        ; $731b: $65
	ld   d, d                                        ; $731c: $52
	sbc  l                                           ; $731d: $9d
	ld   a, [$000d]                                  ; $731e: $fa $0d $00
	ld   a, [bc]                                     ; $7321: $0a
	dec  b                                           ; $7322: $05
	ld   b, b                                        ; $7323: $40
	rst  $38                                         ; $7324: $ff
	inc  bc                                          ; $7325: $03
	rst  $38                                         ; $7326: $ff
	ld   bc, $2801                                   ; $7327: $01 $01 $28
	nop                                              ; $732a: $00
	ld   b, $5d                                      ; $732b: $06 $5d
	inc  bc                                          ; $732d: $03
	rrca                                             ; $732e: $0f
	nop                                              ; $732f: $00
	ld   bc, $6101                                   ; $7330: $01 $01 $61
	adc  h                                           ; $7333: $8c
	ld   [hl], c                                     ; $7334: $71
	ld   h, l                                        ; $7335: $65
	sub  c                                           ; $7336: $91
	ld   e, l                                        ; $7337: $5d
	sbc  d                                           ; $7338: $9a
	ld   [hl], h                                     ; $7339: $74
	sbc  c                                           ; $733a: $99
	sbc  l                                           ; $733b: $9d
	ld   a, [$000d]                                  ; $733c: $fa $0d $00
	ld   a, [bc]                                     ; $733f: $0a
	ld   b, $5d                                      ; $7340: $06 $5d
	inc  bc                                          ; $7342: $03
	rrca                                             ; $7343: $0f
	nop                                              ; $7344: $00
	ld   bc, $6101                                   ; $7345: $01 $01 $61
	ld   h, h                                        ; $7348: $64
	ld   d, d                                        ; $7349: $52
	ld   e, l                                        ; $734a: $5d
	and  b                                           ; $734b: $a0
	ld   h, l                                        ; $734c: $65
	sub  [hl]                                        ; $734d: $96
	ld   [hl], c                                     ; $734e: $71
	ld   [hl], h                                     ; $734f: $74
	ld   a, [$000d]                                  ; $7350: $fa $0d $00
	ld   a, [bc]                                     ; $7353: $0a
	inc  e                                           ; $7354: $1c
	ld   b, $03                                      ; $7355: $06 $03
	inc  bc                                          ; $7357: $03
	ld   bc, $9d54                                   ; $7358: $01 $54 $9d
	ei                                               ; $735b: $fb
	ld   [hl], c                                     ; $735c: $71
	ld   a, [$000d]                                  ; $735d: $fa $0d $00
	ld   a, [bc]                                     ; $7360: $0a
	rrca                                             ; $7361: $0f
	nop                                              ; $7362: $00
	ld   bc, $5001                                   ; $7363: $01 $01 $50
	ld   l, e                                        ; $7366: $6b
	add  c                                           ; $7367: $81
	ld   a, l                                        ; $7368: $7d
	inc  bc                                          ; $7369: $03
	ld   a, [hl]                                     ; $736a: $7e
	sbc  l                                           ; $736b: $9d
	sbc  b                                           ; $736c: $98
	ld   l, [hl]                                     ; $736d: $6e
	rst  $38                                         ; $736e: $ff
	rst  $38                                         ; $736f: $ff
	dec  c                                           ; $7370: $0d
	nop                                              ; $7371: $00
	ld   a, [bc]                                     ; $7372: $0a
	add  hl, de                                      ; $7373: $19
	dec  b                                           ; $7374: $05
	inc  bc                                          ; $7375: $03
	ld   h, c                                        ; $7376: $61
	ld   a, h                                        ; $7377: $7c
	inc  bc                                          ; $7378: $03
	add  hl, de                                      ; $7379: $19
	ld   e, c                                        ; $737a: $59
	sub  a                                           ; $737b: $97
	rst  $38                                         ; $737c: $ff
	rst  $38                                         ; $737d: $ff
	nop                                              ; $737e: $00
	nop                                              ; $737f: $00
	sbc  l                                           ; $7380: $9d
	sub  a                                           ; $7381: $97
	sbc  l                                           ; $7382: $9d
	ld   a, h                                        ; $7383: $7c
	inc  bc                                          ; $7384: $03
	ld   c, a                                        ; $7385: $4f
	ld   e, c                                        ; $7386: $59
	sub  a                                           ; $7387: $97
	rst  $38                                         ; $7388: $ff
	rst  $38                                         ; $7389: $ff
	nop                                              ; $738a: $00
	ld   bc, $d404                                   ; $738b: $01 $04 $d4
	ld   a, h                                        ; $738e: $7c
	inc  bc                                          ; $738f: $03
	ld   c, a                                        ; $7390: $4f
	ld   e, c                                        ; $7391: $59
	sub  a                                           ; $7392: $97
	rst  $38                                         ; $7393: $ff
	rst  $38                                         ; $7394: $ff
	nop                                              ; $7395: $00
	ld   [bc], a                                     ; $7396: $02
	rlca                                             ; $7397: $07
	cp   [hl]                                        ; $7398: $be
	inc  bc                                          ; $7399: $03
	ld   [bc], a                                     ; $739a: $02
	inc  bc                                          ; $739b: $03
	ld   bc, $2000                                   ; $739c: $01 $00 $20
	nop                                              ; $739f: $00
	rlca                                             ; $73a0: $07
	jp   hl                                          ; $73a1: $e9


	inc  bc                                          ; $73a2: $03
	ld   [bc], a                                     ; $73a3: $02
	inc  bc                                          ; $73a4: $03
	ld   bc, $2001                                   ; $73a5: $01 $01 $20
	nop                                              ; $73a8: $00
	rlca                                             ; $73a9: $07
	ld   c, $04                                      ; $73aa: $0e $04
	ld   [bc], a                                     ; $73ac: $02
	inc  bc                                          ; $73ad: $03
	ld   bc, $2002                                   ; $73ae: $01 $02 $20
	nop                                              ; $73b1: $00
	ld   b, $32                                      ; $73b2: $06 $32
	inc  b                                           ; $73b4: $04
	rrca                                             ; $73b5: $0f
	nop                                              ; $73b6: $00
	ld   bc, $6101                                   ; $73b7: $01 $01 $61
	ld   a, h                                        ; $73ba: $7c
	inc  bc                                          ; $73bb: $03
	add  hl, de                                      ; $73bc: $19
	ld   e, c                                        ; $73bd: $59
	sub  a                                           ; $73be: $97
	dec  b                                           ; $73bf: $05
	ld   b, h                                        ; $73c0: $44
	ld   d, [hl]                                     ; $73c1: $56
	ld   [hl], h                                     ; $73c2: $74
	ld   a, b                                        ; $73c3: $78
	ld   e, l                                        ; $73c4: $5d
	ld   a, b                                        ; $73c5: $78
	sbc  d                                           ; $73c6: $9a
	ld   d, d                                        ; $73c7: $52
	ld   a, [$000d]                                  ; $73c8: $fa $0d $00
	ld   a, [bc]                                     ; $73cb: $0a
	dec  b                                           ; $73cc: $05
	ld   b, b                                        ; $73cd: $40
	rst  $38                                         ; $73ce: $ff
	inc  bc                                          ; $73cf: $03
	rst  $38                                         ; $73d0: $ff
	ld   bc, $2801                                   ; $73d1: $01 $01 $28
	nop                                              ; $73d4: $00
	dec  c                                           ; $73d5: $0d
	nop                                              ; $73d6: $00
	nop                                              ; $73d7: $00
	rrca                                             ; $73d8: $0f
	nop                                              ; $73d9: $00
	ld   bc, $0b0c                                   ; $73da: $01 $0c $0b
	ld   b, $58                                      ; $73dd: $06 $58
	inc  b                                           ; $73df: $04
	rrca                                             ; $73e0: $0f
	nop                                              ; $73e1: $00
	ld   bc, $9d01                                   ; $73e2: $01 $01 $9d
	sub  a                                           ; $73e5: $97
	sbc  l                                           ; $73e6: $9d
	ld   a, h                                        ; $73e7: $7c
	inc  bc                                          ; $73e8: $03
	ld   c, a                                        ; $73e9: $4f
	ld   e, c                                        ; $73ea: $59
	sub  a                                           ; $73eb: $97
	dec  c                                           ; $73ec: $0d
	dec  b                                           ; $73ed: $05
	ld   b, h                                        ; $73ee: $44
	ld   d, [hl]                                     ; $73ef: $56
	ld   [hl], h                                     ; $73f0: $74
	ld   a, b                                        ; $73f1: $78
	ld   e, l                                        ; $73f2: $5d
	ld   a, b                                        ; $73f3: $78
	sbc  d                                           ; $73f4: $9a
	ld   d, d                                        ; $73f5: $52
	ld   a, [$000d]                                  ; $73f6: $fa $0d $00
	ld   a, [bc]                                     ; $73f9: $0a
	dec  c                                           ; $73fa: $0d
	nop                                              ; $73fb: $00
	nop                                              ; $73fc: $00
	rrca                                             ; $73fd: $0f
	nop                                              ; $73fe: $00
	ld   bc, $0b0c                                   ; $73ff: $01 $0c $0b
	ld   b, $58                                      ; $7402: $06 $58
	inc  b                                           ; $7404: $04
	rrca                                             ; $7405: $0f
	nop                                              ; $7406: $00
	ld   bc, $0401                                   ; $7407: $01 $01 $04
	call nc, $037c                                   ; $740a: $d4 $7c $03
	ld   c, a                                        ; $740d: $4f
	ld   e, c                                        ; $740e: $59
	sub  a                                           ; $740f: $97
	dec  c                                           ; $7410: $0d
	dec  b                                           ; $7411: $05
	ld   b, h                                        ; $7412: $44
	ld   d, [hl]                                     ; $7413: $56
	ld   [hl], h                                     ; $7414: $74
	ld   a, b                                        ; $7415: $78
	ld   e, l                                        ; $7416: $5d
	ld   a, b                                        ; $7417: $78
	sbc  d                                           ; $7418: $9a
	ld   d, d                                        ; $7419: $52
	ld   a, [$000d]                                  ; $741a: $fa $0d $00
	ld   a, [bc]                                     ; $741d: $0a
	dec  c                                           ; $741e: $0d
	nop                                              ; $741f: $00
	nop                                              ; $7420: $00
	rrca                                             ; $7421: $0f
	nop                                              ; $7422: $00
	ld   bc, $0b0c                                   ; $7423: $01 $0c $0b
	ld   b, $58                                      ; $7426: $06 $58
	inc  b                                           ; $7428: $04
	inc  e                                           ; $7429: $1c
	ld   b, $05                                      ; $742a: $06 $05
	dec  b                                           ; $742c: $05
	ld   bc, $7c61                                   ; $742d: $01 $61 $7c
	ld   e, l                                        ; $7430: $5d
	sub  a                                           ; $7431: $97
	ld   d, d                                        ; $7432: $52
	ld   a, h                                        ; $7433: $7c
	cp   h                                           ; $7434: $bc
	db   $ec                                         ; $7435: $ec
	sub  $75                                         ; $7436: $d6 $75
	dec  c                                           ; $7438: $0d
	halt                                             ; $7439: $76
	ld   l, a                                        ; $743a: $6f
	sbc  c                                           ; $743b: $99
	ld   a, b                                        ; $743c: $78
	sub  [hl]                                        ; $743d: $96
	ld   a, b                                        ; $743e: $78
	rst  $38                                         ; $743f: $ff
	rst  $38                                         ; $7440: $ff
	dec  c                                           ; $7441: $0d
	nop                                              ; $7442: $00
	ld   a, [bc]                                     ; $7443: $0a
	dec  c                                           ; $7444: $0d
	nop                                              ; $7445: $00
	nop                                              ; $7446: $00
	rrca                                             ; $7447: $0f
	nop                                              ; $7448: $00
	ld   bc, $0b0c                                   ; $7449: $01 $0c $0b
	ld   b, $c9                                      ; $744c: $06 $c9
	dec  b                                           ; $744e: $05
	rlca                                             ; $744f: $07
	xor  [hl]                                        ; $7450: $ae
	dec  b                                           ; $7451: $05
	inc  bc                                          ; $7452: $03
	rst  $38                                         ; $7453: $ff
	ld   bc, $2002                                   ; $7454: $01 $02 $20
	nop                                              ; $7457: $00
	rlca                                             ; $7458: $07
	ret                                              ; $7459: $c9


	dec  b                                           ; $745a: $05
	inc  bc                                          ; $745b: $03
	rst  $38                                         ; $745c: $ff
	ld   bc, $2301                                   ; $745d: $01 $01 $23
	nop                                              ; $7460: $00
	inc  e                                           ; $7461: $1c
	ld   b, $01                                      ; $7462: $06 $01
	ld   bc, $401d                                   ; $7464: $01 $1d $40
	ld   d, $03                                      ; $7467: $16 $03
	ld   d, $01                                      ; $7469: $16 $01
	inc  bc                                          ; $746b: $03
	jr   z, jr_04f_746e                              ; $746c: $28 $00

jr_04f_746e:
	ld   bc, $5b03                                   ; $746e: $01 $03 $5b

Call_04f_7471:
Jump_04f_7471:
	ld   e, c                                        ; $7471: $59
	ld   [hl], c                                     ; $7472: $71
	ld   l, l                                        ; $7473: $6d
	ld   l, d                                        ; $7474: $6a
	sbc  [hl]                                        ; $7475: $9e
	ld   [$9f00], sp                                 ; $7476: $08 $00 $9f
	dec  c                                           ; $7479: $0d
	or   [hl]                                        ; $747a: $b6
	push af                                          ; $747b: $f5
	xor  [hl]                                        ; $747c: $ae
	rst  $20                                         ; $747d: $e7
	ei                                               ; $747e: $fb
	ld   a, b                                        ; $747f: $78
	ld   a, [$000d]                                  ; $7480: $fa $0d $00
	ld   a, [bc]                                     ; $7483: $0a
	ld   bc, $0558                                   ; $7484: $01 $58 $05
	dec  c                                           ; $7487: $0d
	ld   a, c                                        ; $7488: $79
	ld   [bc], a                                     ; $7489: $02
	and  l                                           ; $748a: $a5
	inc  b                                           ; $748b: $04
	ld   e, d                                        ; $748c: $5a
	dec  c                                           ; $748d: $0d
	ld   [bc], a                                     ; $748e: $02
	or   [hl]                                        ; $748f: $b6
	inc  bc                                          ; $7490: $03
	ld   l, e                                        ; $7491: $6b
	ld   a, h                                        ; $7492: $7c
	ld   e, a                                        ; $7493: $5f
	ld   d, d                                        ; $7494: $52
	ld   h, c                                        ; $7495: $61
	ld   [hl], d                                     ; $7496: $72
	ld   e, a                                        ; $7497: $5f
	ld   [hl], h                                     ; $7498: $74
	sub  d                                           ; $7499: $92
	sbc  c                                           ; $749a: $99
	ld   l, d                                        ; $749b: $6a
	sbc  a                                           ; $749c: $9f
	dec  c                                           ; $749d: $0d
	nop                                              ; $749e: $00
	ld   a, [bc]                                     ; $749f: $0a
	add  hl, de                                      ; $74a0: $19
	dec  b                                           ; $74a1: $05
	ld   [bc], a                                     ; $74a2: $02
	ld   e, b                                        ; $74a3: $58
	ld   [bc], a                                     ; $74a4: $02
	add  b                                           ; $74a5: $80
	ld   d, d                                        ; $74a6: $52
	ld   h, l                                        ; $74a7: $65
	adc  h                                           ; $74a8: $8c
	ld   h, a                                        ; $74a9: $67
	nop                                              ; $74aa: $00
	nop                                              ; $74ab: $00
	ld   d, [hl]                                     ; $74ac: $56
	and  c                                           ; $74ad: $a1
	sbc  b                                           ; $74ae: $98
	sub  l                                           ; $74af: $95
	ld   h, l                                        ; $74b0: $65
	adc  h                                           ; $74b1: $8c
	ld   h, a                                        ; $74b2: $67
	nop                                              ; $74b3: $00
	ld   bc, $d307                                   ; $74b4: $01 $07 $d3
	inc  b                                           ; $74b7: $04
	ld   [bc], a                                     ; $74b8: $02
	inc  bc                                          ; $74b9: $03
	ld   bc, $2000                                   ; $74ba: $01 $00 $20
	nop                                              ; $74bd: $00
	rlca                                             ; $74be: $07
	cpl                                              ; $74bf: $2f
	dec  b                                           ; $74c0: $05
	ld   [bc], a                                     ; $74c1: $02
	inc  bc                                          ; $74c2: $03
	ld   bc, $2001                                   ; $74c3: $01 $01 $20
	nop                                              ; $74c6: $00
	ld   b, $7b                                      ; $74c7: $06 $7b
	dec  b                                           ; $74c9: $05
	rrca                                             ; $74ca: $0f
	nop                                              ; $74cb: $00
	ld   bc, $5801                                   ; $74cc: $01 $01 $58
	ld   [bc], a                                     ; $74cf: $02
	add  b                                           ; $74d0: $80
	ld   d, d                                        ; $74d1: $52
	ld   h, l                                        ; $74d2: $65
	adc  h                                           ; $74d3: $8c
	ld   h, a                                        ; $74d4: $67
	sbc  [hl]                                        ; $74d5: $9e
	xor  h                                           ; $74d6: $ac
	push af                                          ; $74d7: $f5
	bit  4, e                                        ; $74d8: $cb $63
	and  c                                           ; $74da: $a1
	sbc  a                                           ; $74db: $9f
	dec  c                                           ; $74dc: $0d
	nop                                              ; $74dd: $00
	ld   a, [bc]                                     ; $74de: $0a
	inc  e                                           ; $74df: $1c
	ld   b, $01                                      ; $74e0: $06 $01
	ld   bc, $9601                                   ; $74e2: $01 $01 $96
	ld   h, l                                        ; $74e5: $65
	sbc  [hl]                                        ; $74e6: $9e
	ld   h, [hl]                                     ; $74e7: $66
	sub  c                                           ; $74e8: $91
	ld   d, b                                        ; $74e9: $50
	ld   [bc], a                                     ; $74ea: $02
	and  l                                           ; $74eb: $a5
	inc  b                                           ; $74ec: $04
	rst  $28                                         ; $74ed: $ef
	dec  c                                           ; $74ee: $0d
	nop                                              ; $74ef: $00
	dec  b                                           ; $74f0: $05
	add  b                                           ; $74f1: $80
	ld   a, a                                        ; $74f2: $7f
	ld   bc, $0001                                   ; $74f3: $01 $01 $00
	ld   bc, $ec03                                   ; $74f6: $01 $03 $ec
	dec  b                                           ; $74f9: $05
	add  hl, de                                      ; $74fa: $19
	inc  bc                                          ; $74fb: $03
	ld   c, l                                        ; $74fc: $4d
	ld   [hl], l                                     ; $74fd: $75
	inc  b                                           ; $74fe: $04
	rla                                              ; $74ff: $17
	ld   [hl], c                                     ; $7500: $71
	ld   [hl], h                                     ; $7501: $74
	sbc  c                                           ; $7502: $99
	ld   e, c                                        ; $7503: $59
	sub  a                                           ; $7504: $97
	ld   a, b                                        ; $7505: $78
	sbc  a                                           ; $7506: $9f
	dec  c                                           ; $7507: $0d
	nop                                              ; $7508: $00
	dec  b                                           ; $7509: $05
	ld   b, b                                        ; $750a: $40
	ld   [hl], c                                     ; $750b: $71
	ld   [bc], a                                     ; $750c: $02
	nop                                              ; $750d: $00
	nop                                              ; $750e: $00
	ld   bc, $9166                                   ; $750f: $01 $66 $91
	sbc  [hl]                                        ; $7512: $9e
	ld   e, b                                        ; $7513: $58
	inc  b                                           ; $7514: $04
	ld   a, e                                        ; $7515: $7b
	sbc  d                                           ; $7516: $9a
	ld   h, e                                        ; $7517: $63
	and  c                                           ; $7518: $a1
	sbc  a                                           ; $7519: $9f
	dec  c                                           ; $751a: $0d
	nop                                              ; $751b: $00
	ld   a, [bc]                                     ; $751c: $0a
	dec  c                                           ; $751d: $0d
	nop                                              ; $751e: $00
	nop                                              ; $751f: $00
	rrca                                             ; $7520: $0f
	nop                                              ; $7521: $00
	ld   bc, $1e09                                   ; $7522: $01 $09 $1e
	nop                                              ; $7525: $00
	rrca                                             ; $7526: $0f
	nop                                              ; $7527: $00
	ld   bc, $6701                                   ; $7528: $01 $01 $67
	adc  l                                           ; $752b: $8d
	adc  h                                           ; $752c: $8c
	ld   l, c                                        ; $752d: $69
	and  c                                           ; $752e: $a1
	sbc  a                                           ; $752f: $9f
	dec  c                                           ; $7530: $0d
	ld   [bc], a                                     ; $7531: $02
	and  l                                           ; $7532: $a5
	inc  b                                           ; $7533: $04
	rst  $28                                         ; $7534: $ef
	ld   a, l                                        ; $7535: $7d
	ld   l, a                                        ; $7536: $6f
	sub  l                                           ; $7537: $95
	ld   [hl], c                                     ; $7538: $71
	halt                                             ; $7539: $76
	inc  b                                           ; $753a: $04
	di                                               ; $753b: $f3
	ld   [bc], a                                     ; $753c: $02
	jp   $0d5a                                       ; $753d: $c3 $5a $0d


	ld   d, b                                        ; $7540: $50
	sbc  c                                           ; $7541: $99
	and  c                                           ; $7542: $a1
	ld   [hl], l                                     ; $7543: $75
	ld   h, a                                        ; $7544: $67
	sub  [hl]                                        ; $7545: $96
	sbc  a                                           ; $7546: $9f
	dec  c                                           ; $7547: $0d
	nop                                              ; $7548: $00
	ld   a, [bc]                                     ; $7549: $0a
	inc  e                                           ; $754a: $1c
	ld   b, $00                                      ; $754b: $06 $00
	nop                                              ; $754d: $00
	ld   bc, $9a6b                                   ; $754e: $01 $6b $9a
	ld   h, [hl]                                     ; $7551: $66
	sub  c                                           ; $7552: $91
	sbc  [hl]                                        ; $7553: $9e
	ld   h, l                                        ; $7554: $65
	ld   e, c                                        ; $7555: $59
	ld   l, l                                        ; $7556: $6d
	ld   a, e                                        ; $7557: $7b
	ei                                               ; $7558: $fb
	ld   a, b                                        ; $7559: $78
	sbc  a                                           ; $755a: $9f
	dec  c                                           ; $755b: $0d
	ld   h, [hl]                                     ; $755c: $66
	sub  c                                           ; $755d: $91
	sbc  [hl]                                        ; $755e: $9e
	ld   e, b                                        ; $755f: $58
	inc  b                                           ; $7560: $04
	ld   a, e                                        ; $7561: $7b
	sbc  d                                           ; $7562: $9a
	ld   h, e                                        ; $7563: $63
	and  c                                           ; $7564: $a1
	sbc  a                                           ; $7565: $9f
	dec  c                                           ; $7566: $0d
	nop                                              ; $7567: $00
	ld   a, [bc]                                     ; $7568: $0a
	dec  c                                           ; $7569: $0d
	nop                                              ; $756a: $00
	nop                                              ; $756b: $00
	rrca                                             ; $756c: $0f
	nop                                              ; $756d: $00
	ld   bc, $1e09                                   ; $756e: $01 $09 $1e
	nop                                              ; $7571: $00
	inc  e                                           ; $7572: $1c
	ld   b, $02                                      ; $7573: $06 $02
	ld   [bc], a                                     ; $7575: $02
	dec  e                                           ; $7576: $1d
	ld   b, b                                        ; $7577: $40
	ld   d, $03                                      ; $7578: $16 $03
	ld   d, $01                                      ; $757a: $16 $01
	ld   bc, $0029                                   ; $757c: $01 $29 $00
	ld   bc, $e6a5                                   ; $757f: $01 $a5 $e6
	ld   l, [hl]                                     ; $7582: $6e
	ld   [hl], c                                     ; $7583: $71
	ld   l, l                                        ; $7584: $6d
	sub  a                                           ; $7585: $97
	dec  c                                           ; $7586: $0d
	inc  b                                           ; $7587: $04
	ld   d, h                                        ; $7588: $54
	ld   a, c                                        ; $7589: $79
	ld   d, d                                        ; $758a: $52
	ld   d, d                                        ; $758b: $52
	and  c                                           ; $758c: $a1
	ld   l, [hl]                                     ; $758d: $6e
	ld   l, d                                        ; $758e: $6a
	sbc  a                                           ; $758f: $9f
	dec  c                                           ; $7590: $0d
	ld   h, [hl]                                     ; $7591: $66
	sub  c                                           ; $7592: $91
	sbc  [hl]                                        ; $7593: $9e
	ld   e, b                                        ; $7594: $58
	inc  b                                           ; $7595: $04
	ld   a, e                                        ; $7596: $7b
	sbc  d                                           ; $7597: $9a
	sbc  a                                           ; $7598: $9f
	dec  c                                           ; $7599: $0d
	nop                                              ; $759a: $00
	ld   a, [bc]                                     ; $759b: $0a
	dec  c                                           ; $759c: $0d
	nop                                              ; $759d: $00
	nop                                              ; $759e: $00
	rrca                                             ; $759f: $0f
	nop                                              ; $75a0: $00
	ld   bc, $1e09                                   ; $75a1: $01 $09 $1e
	nop                                              ; $75a4: $00
	inc  e                                           ; $75a5: $1c
	ld   b, $01                                      ; $75a6: $06 $01
	ld   bc, $401d                                   ; $75a8: $01 $1d $40
	ld   d, $03                                      ; $75ab: $16 $03
	ld   d, $01                                      ; $75ad: $16 $01
	ld   [bc], a                                     ; $75af: $02

Call_04f_75b0:
	jr   z, jr_04f_75b2                              ; $75b0: $28 $00

jr_04f_75b2:
	ld   bc, $0458                                   ; $75b2: $01 $58 $04
	ld   a, e                                        ; $75b5: $7b
	sbc  d                                           ; $75b6: $9a
	ld   h, e                                        ; $75b7: $63
	and  c                                           ; $75b8: $a1
	sbc  a                                           ; $75b9: $9f
	dec  c                                           ; $75ba: $0d
	nop                                              ; $75bb: $00
	ld   a, [bc]                                     ; $75bc: $0a
	ld   b, $f1                                      ; $75bd: $06 $f1
	dec  b                                           ; $75bf: $05
	inc  e                                           ; $75c0: $1c
	ld   b, $05                                      ; $75c1: $06 $05
	dec  b                                           ; $75c3: $05
	dec  e                                           ; $75c4: $1d
	ld   b, b                                        ; $75c5: $40
	ld   d, $03                                      ; $75c6: $16 $03
	ld   d, $01                                      ; $75c8: $16 $01
	ld   [bc], a                                     ; $75ca: $02
	add  hl, hl                                      ; $75cb: $29
	nop                                              ; $75cc: $00
	ld   bc, $0358                                   ; $75cd: $01 $58 $03
	ld   c, a                                        ; $75d0: $4f
	ld   a, c                                        ; $75d1: $79

Call_04f_75d2:
	ld   l, l                                        ; $75d2: $6d
	ld   a, h                                        ; $75d3: $7c
	adc  [hl]                                        ; $75d4: $8e
	ld   a, h                                        ; $75d5: $7c
	ld   a, l                                        ; $75d6: $7d
	dec  c                                           ; $75d7: $0d
	ld   l, a                                        ; $75d8: $6f
	sub  l                                           ; $75d9: $95
	ld   [hl], c                                     ; $75da: $71
	halt                                             ; $75db: $76
	ldh  [c], a                                      ; $75dc: $e2
	db   $ec                                         ; $75dd: $ec
	ld   d, b                                        ; $75de: $50
	ld   [hl], c                                     ; $75df: $71
	ld   l, l                                        ; $75e0: $6d
	ld   e, c                                        ; $75e1: $59
	ld   a, b                                        ; $75e2: $78
	rst  $38                                         ; $75e3: $ff
	rst  $38                                         ; $75e4: $ff
	dec  c                                           ; $75e5: $0d
	nop                                              ; $75e6: $00
	ld   a, [bc]                                     ; $75e7: $0a
	ld   bc, $9166                                   ; $75e8: $01 $66 $91
	ld   d, b                                        ; $75eb: $50
	sbc  [hl]                                        ; $75ec: $9e
	adc  h                                           ; $75ed: $8c
	ld   l, l                                        ; $75ee: $6d
	ld   a, b                                        ; $75ef: $78
	sbc  a                                           ; $75f0: $9f
	dec  c                                           ; $75f1: $0d
	nop                                              ; $75f2: $00
	ld   a, [bc]                                     ; $75f3: $0a
	dec  c                                           ; $75f4: $0d
	nop                                              ; $75f5: $00
	nop                                              ; $75f6: $00
	rrca                                             ; $75f7: $0f
	nop                                              ; $75f8: $00
	ld   bc, $1e09                                   ; $75f9: $01 $09 $1e
	nop                                              ; $75fc: $00
	nop                                              ; $75fd: $00
	inc  e                                           ; $75fe: $1c
	inc  bc                                          ; $75ff: $03
	nop                                              ; $7600: $00
	nop                                              ; $7601: $00
	ld   [bc], a                                     ; $7602: $02
	ld   bc, $0008                                   ; $7603: $01 $08 $00
	ld   e, l                                        ; $7606: $5d
	and  c                                           ; $7607: $a1
	sbc  [hl]                                        ; $7608: $9e
	dec  c                                           ; $7609: $0d
	ld   l, a                                        ; $760a: $6f
	sub  l                                           ; $760b: $95
	ld   d, h                                        ; $760c: $54
	ld   [hl], a                                     ; $760d: $77
	sub  [hl]                                        ; $760e: $96
	ld   e, c                                        ; $760f: $59
	ld   [hl], c                                     ; $7610: $71
	ld   l, l                                        ; $7611: $6d
	sbc  l                                           ; $7612: $9d
	rst  $38                                         ; $7613: $ff
	rst  $38                                         ; $7614: $ff
	dec  c                                           ; $7615: $0d
	nop                                              ; $7616: $00
	ld   a, [bc]                                     ; $7617: $0a
	ld   bc, $6590                                   ; $7618: $01 $90 $65
	sbc  [hl]                                        ; $761b: $9e
	inc  bc                                          ; $761c: $03
	ld   l, a                                        ; $761d: $6f
	ld   [bc], a                                     ; $761e: $02
	xor  c                                           ; $761f: $a9
	ld   e, d                                        ; $7620: $5a
	ld   d, b                                        ; $7621: $50
	ld   [hl], c                                     ; $7622: $71
	ld   l, l                                        ; $7623: $6d
	sub  a                                           ; $7624: $97
	dec  c                                           ; $7625: $0d
	inc  b                                           ; $7626: $04
	adc  a                                           ; $7627: $8f
	inc  b                                           ; $7628: $04
	ld   de, $7c8d                                   ; $7629: $11 $8d $7c
	ld   [bc], a                                     ; $762c: $02
	ld   a, [de]                                     ; $762d: $1a
	inc  bc                                          ; $762e: $03
	ld   l, e                                        ; $762f: $6b
	and  b                                           ; $7630: $a0
	ld   h, l                                        ; $7631: $65
	ld   [hl], h                                     ; $7632: $74
	dec  c                                           ; $7633: $0d
	sub  b                                           ; $7634: $90
	sub  a                                           ; $7635: $97
	ld   d, d                                        ; $7636: $52
	ld   l, l                                        ; $7637: $6d
	ld   d, d                                        ; $7638: $52
	ld   a, h                                        ; $7639: $7c
	ld   l, [hl]                                     ; $763a: $6e
	ld   e, a                                        ; $763b: $5f
	ld   [hl], a                                     ; $763c: $77
	rst  $38                                         ; $763d: $ff
	rst  $38                                         ; $763e: $ff
	dec  c                                           ; $763f: $0d
	nop                                              ; $7640: $00
	ld   a, [bc]                                     ; $7641: $0a
	add  hl, de                                      ; $7642: $19
	dec  b                                           ; $7643: $05
	ld   [bc], a                                     ; $7644: $02
	ld   [bc], a                                     ; $7645: $02
	ld   a, [de]                                     ; $7646: $1a
	inc  bc                                          ; $7647: $03
	ld   l, e                                        ; $7648: $6b
	and  b                                           ; $7649: $a0
	ld   h, a                                        ; $764a: $67
	sbc  c                                           ; $764b: $99
	nop                                              ; $764c: $00
	nop                                              ; $764d: $00
	ld   h, c                                        ; $764e: $61
	halt                                             ; $764f: $76
	sbc  l                                           ; $7650: $9d
	sbc  c                                           ; $7651: $99
	nop                                              ; $7652: $00
	ld   bc, $d507                                   ; $7653: $01 $07 $d5
	nop                                              ; $7656: $00
	ld   [bc], a                                     ; $7657: $02
	inc  bc                                          ; $7658: $03
	ld   bc, $2000                                   ; $7659: $01 $00 $20
	nop                                              ; $765c: $00
	rlca                                             ; $765d: $07
	ld   l, e                                        ; $765e: $6b
	nop                                              ; $765f: $00
	ld   [bc], a                                     ; $7660: $02
	inc  bc                                          ; $7661: $03
	ld   bc, $2001                                   ; $7662: $01 $01 $20
	nop                                              ; $7665: $00
	ld   b, $a6                                      ; $7666: $06 $a6
	nop                                              ; $7668: $00
	rrca                                             ; $7669: $0f
	nop                                              ; $766a: $00
	ld   bc, $6701                                   ; $766b: $01 $01 $67
	adc  l                                           ; $766e: $8d
	adc  h                                           ; $766f: $8c
	ld   l, c                                        ; $7670: $69
	and  c                                           ; $7671: $a1
	sbc  a                                           ; $7672: $9f
	dec  c                                           ; $7673: $0d
	ld   l, a                                        ; $7674: $6f
	sub  l                                           ; $7675: $95
	ld   [hl], c                                     ; $7676: $71
	halt                                             ; $7677: $76
	ld   [bc], a                                     ; $7678: $02
	and  l                                           ; $7679: $a5
	ld   a, l                                        ; $767a: $7d
	rst  $38                                         ; $767b: $ff
	rst  $38                                         ; $767c: $ff
	dec  c                                           ; $767d: $0d
	nop                                              ; $767e: $00
	ld   a, [bc]                                     ; $767f: $0a
	inc  e                                           ; $7680: $1c
	inc  bc                                          ; $7681: $03
	inc  b                                           ; $7682: $04
	inc  b                                           ; $7683: $04
	dec  e                                           ; $7684: $1d
	ld   b, b                                        ; $7685: $40
	inc  de                                          ; $7686: $13
	inc  bc                                          ; $7687: $03
	inc  de                                          ; $7688: $13
	ld   bc, $2901                                   ; $7689: $01 $01 $29
	nop                                              ; $768c: $00
	ld   bc, $546b                                   ; $768d: $01 $6b $54
	rst  $38                                         ; $7690: $ff
	rst  $38                                         ; $7691: $ff
	inc  bc                                          ; $7692: $03
	jr   z, jr_04f_7699                              ; $7693: $28 $04

	ld   c, b                                        ; $7695: $48
	ld   a, e                                        ; $7696: $7b
	sbc  a                                           ; $7697: $9f
	dec  c                                           ; $7698: $0d

jr_04f_7699:
	nop                                              ; $7699: $00
	ld   a, [bc]                                     ; $769a: $0a
	dec  c                                           ; $769b: $0d
	nop                                              ; $769c: $00
	nop                                              ; $769d: $00
	rrca                                             ; $769e: $0f
	nop                                              ; $769f: $00
	ld   bc, $1e09                                   ; $76a0: $01 $09 $1e
	nop                                              ; $76a3: $00
	inc  e                                           ; $76a4: $1c
	inc  bc                                          ; $76a5: $03
	inc  b                                           ; $76a6: $04
	inc  b                                           ; $76a7: $04
	dec  e                                           ; $76a8: $1d
	ld   b, b                                        ; $76a9: $40
	inc  de                                          ; $76aa: $13
	inc  bc                                          ; $76ab: $03
	inc  de                                          ; $76ac: $13
	ld   bc, $2901                                   ; $76ad: $01 $01 $29
	nop                                              ; $76b0: $00
	ld   bc, $9e50                                   ; $76b1: $01 $50 $9e
	ld   d, d                                        ; $76b4: $52
	ld   l, e                                        ; $76b5: $6b
	ld   e, d                                        ; $76b6: $5a
	ld   h, l                                        ; $76b7: $65
	ld   e, c                                        ; $76b8: $59
	ld   [hl], c                                     ; $76b9: $71
	ld   l, l                                        ; $76ba: $6d
	sub  a                                           ; $76bb: $97
	dec  c                                           ; $76bc: $0d
	ld   d, d                                        ; $76bd: $52
	ld   d, d                                        ; $76be: $52
	ld   a, h                                        ; $76bf: $7c
	sub  [hl]                                        ; $76c0: $96
	rst  $38                                         ; $76c1: $ff
	rst  $38                                         ; $76c2: $ff
	add  a                                           ; $76c3: $87
	ld   [hl], d                                     ; $76c4: $72
	ld   a, c                                        ; $76c5: $79
	sbc  a                                           ; $76c6: $9f
	dec  c                                           ; $76c7: $0d
	nop                                              ; $76c8: $00
	ld   a, [bc]                                     ; $76c9: $0a
	dec  c                                           ; $76ca: $0d
	nop                                              ; $76cb: $00
	nop                                              ; $76cc: $00
	rrca                                             ; $76cd: $0f
	nop                                              ; $76ce: $00
	ld   bc, $1e09                                   ; $76cf: $01 $09 $1e
	nop                                              ; $76d2: $00
	rrca                                             ; $76d3: $0f
	nop                                              ; $76d4: $00
	ld   bc, $5201                                   ; $76d5: $01 $01 $52
	ld   d, d                                        ; $76d8: $52
	ld   [hl], l                                     ; $76d9: $75
	ld   h, a                                        ; $76da: $67
	sub  [hl]                                        ; $76db: $96
	sbc  a                                           ; $76dc: $9f
	dec  c                                           ; $76dd: $0d
	inc  b                                           ; $76de: $04
	ld   l, l                                        ; $76df: $6d
	ld   [hl], l                                     ; $76e0: $75
	ld   e, b                                        ; $76e1: $58
	inc  b                                           ; $76e2: $04
	db   $ec                                         ; $76e3: $ec
	ld   a, c                                        ; $76e4: $79
	dec  b                                           ; $76e5: $05
	ld   d, $74                                      ; $76e6: $16 $74
	sbc  c                                           ; $76e8: $99
	ld   a, b                                        ; $76e9: $78
	sub  a                                           ; $76ea: $97
	rst  $38                                         ; $76eb: $ff
	rst  $38                                         ; $76ec: $ff
	dec  c                                           ; $76ed: $0d
	nop                                              ; $76ee: $00
	ld   a, [bc]                                     ; $76ef: $0a
	dec  b                                           ; $76f0: $05
	add  b                                           ; $76f1: $80
	push de                                          ; $76f2: $d5
	ld   bc, $0001                                   ; $76f3: $01 $01 $00
	inc  e                                           ; $76f6: $1c
	inc  bc                                          ; $76f7: $03
	inc  bc                                          ; $76f8: $03
	inc  bc                                          ; $76f9: $03
	ld   bc, $676d                                   ; $76fa: $01 $6d $67
	ld   e, c                                        ; $76fd: $59
	sbc  c                                           ; $76fe: $99
	sbc  l                                           ; $76ff: $9d
	rst  $38                                         ; $7700: $ff
	rst  $38                                         ; $7701: $ff
	dec  c                                           ; $7702: $0d
	add  b                                           ; $7703: $80
	halt                                             ; $7704: $76
	sbc  b                                           ; $7705: $98
	ld   l, [hl]                                     ; $7706: $6e
	halt                                             ; $7707: $76
	ld   [bc], a                                     ; $7708: $02
	xor  c                                           ; $7709: $a9
	ld   e, d                                        ; $770a: $5a
	ld   [hl], d                                     ; $770b: $72
	ld   e, c                                        ; $770c: $59
	adc  a                                           ; $770d: $8f
	ld   a, b                                        ; $770e: $78
	ld   e, l                                        ; $770f: $5d
	ld   [hl], h                                     ; $7710: $74
	sbc  a                                           ; $7711: $9f
	dec  c                                           ; $7712: $0d
	nop                                              ; $7713: $00
	ld   a, [bc]                                     ; $7714: $0a
	ld   bc, $9166                                   ; $7715: $01 $66 $91
	ld   d, b                                        ; $7718: $50
	sbc  [hl]                                        ; $7719: $9e
	ld   [$5d00], sp                                 ; $771a: $08 $00 $5d
	and  c                                           ; $771d: $a1
	ld   a, c                                        ; $771e: $79
	ld   a, l                                        ; $771f: $7d
	dec  c                                           ; $7720: $0d
	inc  b                                           ; $7721: $04
	ld   hl, sp+$02                                  ; $7722: $f8 $02
	add  a                                           ; $7724: $87
	inc  b                                           ; $7725: $04
	or   a                                           ; $7726: $b7
	inc  bc                                          ; $7727: $03
	add  d                                           ; $7728: $82
	ld   a, h                                        ; $7729: $7c
	inc  b                                           ; $772a: $04
	db   $ec                                         ; $772b: $ec
	and  b                                           ; $772c: $a0
	ld   e, b                                        ; $772d: $58
	ld   [bc], a                                     ; $772e: $02
	add  b                                           ; $772f: $80
	ld   d, d                                        ; $7730: $52
	ld   h, a                                        ; $7731: $67
	sbc  c                                           ; $7732: $99
	sbc  l                                           ; $7733: $9d
	sbc  a                                           ; $7734: $9f
	dec  c                                           ; $7735: $0d
	nop                                              ; $7736: $00
	ld   a, [bc]                                     ; $7737: $0a
	inc  e                                           ; $7738: $1c
	inc  bc                                          ; $7739: $03
	nop                                              ; $773a: $00
	nop                                              ; $773b: $00
	ld   bc, $f804                                   ; $773c: $01 $04 $f8
	ld   [bc], a                                     ; $773f: $02
	add  a                                           ; $7740: $87
	inc  b                                           ; $7741: $04
	or   a                                           ; $7742: $b7
	inc  bc                                          ; $7743: $03
	add  d                                           ; $7744: $82
	ld   a, h                                        ; $7745: $7c
	inc  bc                                          ; $7746: $03
	ld   l, b                                        ; $7747: $68
	ld   a, h                                        ; $7748: $7c
	cp   h                                           ; $7749: $bc
	db   $ec                                         ; $774a: $ec
	sub  $a0                                         ; $774b: $d6 $a0
	dec  c                                           ; $774d: $0d
	ld   e, b                                        ; $774e: $58
	adc  d                                           ; $774f: $8a
	ld   d, [hl]                                     ; $7750: $56
	ld   [hl], h                                     ; $7751: $74
	ld   l, a                                        ; $7752: $6f
	sub  l                                           ; $7753: $95
	ld   d, h                                        ; $7754: $54
	ld   l, [hl]                                     ; $7755: $6e
	ld   d, d                                        ; $7756: $52
	sbc  a                                           ; $7757: $9f
	dec  c                                           ; $7758: $0d
	nop                                              ; $7759: $00
	ld   a, [bc]                                     ; $775a: $0a
	inc  e                                           ; $775b: $1c
	inc  bc                                          ; $775c: $03
	ld   [bc], a                                     ; $775d: $02
	ld   [bc], a                                     ; $775e: $02
	ld   bc, $d6fd                                   ; $775f: $01 $fd $d6
	sub  $ff                                         ; $7762: $d6 $ff
	rst  $38                                         ; $7764: $ff
	dec  c                                           ; $7765: $0d
	db   $10                                         ; $7766: $10
	ld   h, c                                        ; $7767: $61
	ld   h, c                                        ; $7768: $61
	ld   e, c                                        ; $7769: $59
	sub  a                                           ; $776a: $97
	inc  bc                                          ; $776b: $03
	ld   a, b                                        ; $776c: $78
	ld   a, c                                        ; $776d: $79
	dec  c                                           ; $776e: $0d
	db   $10                                         ; $776f: $10
	ld   a, [bc]                                     ; $7770: $0a
	ld   [bc], a                                     ; $7771: $02
	ld   [bc], a                                     ; $7772: $02
	ld   a, a                                        ; $7773: $7f
	ld   e, c                                        ; $7774: $59
	ld   l, c                                        ; $7775: $69
	ld   a, l                                        ; $7776: $7d
	ld   h, l                                        ; $7777: $65
	ld   a, b                                        ; $7778: $78
	ld   d, d                                        ; $7779: $52
	ld   a, [bc]                                     ; $777a: $0a
	inc  bc                                          ; $777b: $03
	cp   $0d                                         ; $777c: $fe $0d
	nop                                              ; $777e: $00
	ld   a, [bc]                                     ; $777f: $0a
	ld   bc, $03fd                                   ; $7780: $01 $fd $03
	inc  sp                                          ; $7783: $33
	dec  b                                           ; $7784: $05
	db   $ec                                         ; $7785: $ec
	inc  b                                           ; $7786: $04
	ld   h, h                                        ; $7787: $64
	inc  bc                                          ; $7788: $03
	ld   [hl-], a                                    ; $7789: $32
	rst  $38                                         ; $778a: $ff
	rst  $38                                         ; $778b: $ff
	dec  c                                           ; $778c: $0d
	db   $10                                         ; $778d: $10
	ld   e, b                                        ; $778e: $58
	inc  bc                                          ; $778f: $03
	ld   c, a                                        ; $7790: $4f
	ld   a, l                                        ; $7791: $7d
	sbc  [hl]                                        ; $7792: $9e
	ld   h, c                                        ; $7793: $61
	ld   a, h                                        ; $7794: $7c
	ld   a, [bc]                                     ; $7795: $0a
	ld   [bc], a                                     ; $7796: $02
	inc  b                                           ; $7797: $04
	ld   hl, sp+$02                                  ; $7798: $f8 $02
	add  a                                           ; $779a: $87
	inc  b                                           ; $779b: $04
	or   a                                           ; $779c: $b7
	inc  bc                                          ; $779d: $03
	add  d                                           ; $779e: $82
	ld   a, [bc]                                     ; $779f: $0a
	inc  bc                                          ; $77a0: $03
	ld   a, c                                        ; $77a1: $79
	dec  c                                           ; $77a2: $0d
	db   $10                                         ; $77a3: $10
	inc  bc                                          ; $77a4: $03
	ld   l, d                                        ; $77a5: $6a
	add  a                                           ; $77a6: $87
	sub  a                                           ; $77a7: $97
	sbc  d                                           ; $77a8: $9a
	sbc  c                                           ; $77a9: $99
	ld   a, h                                        ; $77aa: $7c
	ld   l, [hl]                                     ; $77ab: $6e
	ld   e, c                                        ; $77ac: $59
	sub  a                                           ; $77ad: $97
	ld   a, b                                        ; $77ae: $78
	cp   $0d                                         ; $77af: $fe $0d
	nop                                              ; $77b1: $00
	ld   a, [bc]                                     ; $77b2: $0a
	inc  e                                           ; $77b3: $1c
	inc  bc                                          ; $77b4: $03
	rlca                                             ; $77b5: $07
	rlca                                             ; $77b6: $07
	ld   bc, $54fd                                   ; $77b7: $01 $fd $54
	sbc  l                                           ; $77ba: $9d
	ld   [hl], c                                     ; $77bb: $71
	rst  $38                                         ; $77bc: $ff
	rst  $38                                         ; $77bd: $ff
	dec  c                                           ; $77be: $0d
	db   $10                                         ; $77bf: $10
	ld   h, c                                        ; $77c0: $61
	ld   a, h                                        ; $77c1: $7c
	ld   h, [hl]                                     ; $77c2: $66
	sub  e                                           ; $77c3: $93
	sub  b                                           ; $77c4: $90
	and  c                                           ; $77c5: $a1
	ld   a, l                                        ; $77c6: $7d
	rst  $38                                         ; $77c7: $ff
	rst  $38                                         ; $77c8: $ff
	ld   sp, hl                                      ; $77c9: $f9
	dec  c                                           ; $77ca: $0d
	db   $10                                         ; $77cb: $10
	ld   a, [bc]                                     ; $77cc: $0a
	ld   [bc], a                                     ; $77cd: $02
	ld   e, c                                        ; $77ce: $59
	sbc  [hl]                                        ; $77cf: $9e
	inc  b                                           ; $77d0: $04
	dec  c                                           ; $77d1: $0d
	ld   e, d                                        ; $77d2: $5a
	ld   d, h                                        ; $77d3: $54
	ld   h, d                                        ; $77d4: $62
	ld   e, c                                        ; $77d5: $59
	ld   a, b                                        ; $77d6: $78
	ld   d, d                                        ; $77d7: $52
	ld   a, [$030a]                                  ; $77d8: $fa $0a $03
	cp   $0d                                         ; $77db: $fe $0d
	nop                                              ; $77dd: $00
	ld   a, [bc]                                     ; $77de: $0a
	inc  e                                           ; $77df: $1c
	inc  bc                                          ; $77e0: $03
	nop                                              ; $77e1: $00
	nop                                              ; $77e2: $00
	ld   bc, $8a58                                   ; $77e3: $01 $58 $8a
	ld   d, [hl]                                     ; $77e6: $56
	ld   l, l                                        ; $77e7: $6d
	ld   e, c                                        ; $77e8: $59
	ld   h, l                                        ; $77e9: $65
	sub  a                                           ; $77ea: $97
	ld   sp, hl                                      ; $77eb: $f9
	dec  c                                           ; $77ec: $0d
	ld   h, e                                        ; $77ed: $63
	ld   d, b                                        ; $77ee: $50
	sbc  [hl]                                        ; $77ef: $9e
	ld   d, d                                        ; $77f0: $52
	ld   e, l                                        ; $77f1: $5d
	sbc  l                                           ; $77f2: $9d
	sub  [hl]                                        ; $77f3: $96
	sbc  a                                           ; $77f4: $9f
	dec  c                                           ; $77f5: $0d
	nop                                              ; $77f6: $00
	ld   a, [bc]                                     ; $77f7: $0a
	inc  e                                           ; $77f8: $1c
	inc  bc                                          ; $77f9: $03
	ld   [bc], a                                     ; $77fa: $02
	ld   [bc], a                                     ; $77fb: $02
	ld   bc, $616b                                   ; $77fc: $01 $6b $61
	and  b                                           ; $77ff: $a0
	ld   [hl], a                                     ; $7800: $77
	ld   e, e                                        ; $7801: $5b
	ld   a, b                                        ; $7802: $78
	ld   h, e                                        ; $7803: $63
	ld   d, d                                        ; $7804: $52
	ld   a, [$000d]                                  ; $7805: $fa $0d $00
	ld   a, [bc]                                     ; $7808: $0a
	rrca                                             ; $7809: $0f
	nop                                              ; $780a: $00
	ld   bc, $d601                                   ; $780b: $01 $01 $d6
	sub  $ff                                         ; $780e: $d6 $ff
	rst  $38                                         ; $7810: $ff
	dec  c                                           ; $7811: $0d
	ld   h, c                                        ; $7812: $61
	ld   h, c                                        ; $7813: $61
	ld   e, c                                        ; $7814: $59
	sub  a                                           ; $7815: $97
	inc  bc                                          ; $7816: $03
	ld   a, b                                        ; $7817: $78
	ld   a, c                                        ; $7818: $79
	dec  c                                           ; $7819: $0d
	nop                                              ; $781a: $00
	ld   a, [bc]                                     ; $781b: $0a
	add  hl, de                                      ; $781c: $19
	dec  b                                           ; $781d: $05
	inc  bc                                          ; $781e: $03
	ld   [bc], a                                     ; $781f: $02
	ld   a, a                                        ; $7820: $7f
	ld   e, c                                        ; $7821: $59
	ld   l, c                                        ; $7822: $69
	ld   a, l                                        ; $7823: $7d
	ld   h, l                                        ; $7824: $65
	ld   a, b                                        ; $7825: $78
	ld   d, d                                        ; $7826: $52
	sbc  a                                           ; $7827: $9f
	nop                                              ; $7828: $00
	nop                                              ; $7829: $00
	ld   [bc], a                                     ; $782a: $02
	ld   a, a                                        ; $782b: $7f
	ld   [hl], c                                     ; $782c: $71
	ld   [hl], h                                     ; $782d: $74
	sub  a                                           ; $782e: $97
	ld   [hl], c                                     ; $782f: $71
	ld   h, l                                        ; $7830: $65
	sub  c                                           ; $7831: $91
	ld   d, d                                        ; $7832: $52
	sbc  a                                           ; $7833: $9f
	nop                                              ; $7834: $00
	ld   bc, $7f02                                   ; $7835: $01 $02 $7f
	ld   [hl], c                                     ; $7838: $71
	ld   l, a                                        ; $7839: $6f
	sub  c                                           ; $783a: $91
	ei                                               ; $783b: $fb
	pop  bc                                          ; $783c: $c1
	db   $e3                                         ; $783d: $e3
	sub  [hl]                                        ; $783e: $96
	sbc  a                                           ; $783f: $9f
	nop                                              ; $7840: $00
	ld   [bc], a                                     ; $7841: $02
	rlca                                             ; $7842: $07
	ld   h, d                                        ; $7843: $62
	ld   [bc], a                                     ; $7844: $02
	ld   [bc], a                                     ; $7845: $02
	inc  bc                                          ; $7846: $03
	ld   bc, $2000                                   ; $7847: $01 $00 $20
	nop                                              ; $784a: $00
	rlca                                             ; $784b: $07
	add  [hl]                                        ; $784c: $86
	ld   [bc], a                                     ; $784d: $02
	ld   [bc], a                                     ; $784e: $02
	inc  bc                                          ; $784f: $03
	ld   bc, $2001                                   ; $7850: $01 $01 $20
	nop                                              ; $7853: $00
	rlca                                             ; $7854: $07
	and  d                                           ; $7855: $a2
	ld   [bc], a                                     ; $7856: $02
	ld   [bc], a                                     ; $7857: $02
	inc  bc                                          ; $7858: $03
	ld   bc, $2002                                   ; $7859: $01 $02 $20
	nop                                              ; $785c: $00
	ld   b, $7a                                      ; $785d: $06 $7a
	inc  b                                           ; $785f: $04
	rrca                                             ; $7860: $0f
	nop                                              ; $7861: $00
	ld   bc, $6101                                   ; $7862: $01 $01 $61
	ld   h, c                                        ; $7865: $61
	ld   e, c                                        ; $7866: $59
	sub  a                                           ; $7867: $97
	inc  bc                                          ; $7868: $03
	ld   a, b                                        ; $7869: $78
	ld   a, c                                        ; $786a: $79
	dec  c                                           ; $786b: $0d
	ld   [bc], a                                     ; $786c: $02
	ld   a, a                                        ; $786d: $7f
	ld   e, c                                        ; $786e: $59
	ld   l, c                                        ; $786f: $69
	ld   a, l                                        ; $7870: $7d
	ld   h, l                                        ; $7871: $65
	ld   a, b                                        ; $7872: $78
	ld   d, d                                        ; $7873: $52
	sbc  a                                           ; $7874: $9f
	dec  c                                           ; $7875: $0d
	nop                                              ; $7876: $00
	ld   a, [bc]                                     ; $7877: $0a
	dec  b                                           ; $7878: $05
	ld   b, b                                        ; $7879: $40
	rst  $38                                         ; $787a: $ff
	inc  bc                                          ; $787b: $03
	rst  $38                                         ; $787c: $ff
	ld   bc, $2801                                   ; $787d: $01 $01 $28
	nop                                              ; $7880: $00
	ld   b, $be                                      ; $7881: $06 $be
	ld   [bc], a                                     ; $7883: $02
	rrca                                             ; $7884: $0f
	nop                                              ; $7885: $00
	ld   bc, $6101                                   ; $7886: $01 $01 $61
	ld   h, c                                        ; $7889: $61
	ld   e, c                                        ; $788a: $59
	sub  a                                           ; $788b: $97
	inc  bc                                          ; $788c: $03
	ld   a, b                                        ; $788d: $78
	ld   a, c                                        ; $788e: $79
	dec  c                                           ; $788f: $0d
	ld   [bc], a                                     ; $7890: $02
	ld   a, a                                        ; $7891: $7f
	ld   [hl], c                                     ; $7892: $71
	ld   [hl], h                                     ; $7893: $74
	sub  a                                           ; $7894: $97
	ld   [hl], c                                     ; $7895: $71
	ld   h, l                                        ; $7896: $65
	sub  c                                           ; $7897: $91
	ld   d, d                                        ; $7898: $52
	sbc  a                                           ; $7899: $9f
	dec  c                                           ; $789a: $0d
	nop                                              ; $789b: $00
	ld   a, [bc]                                     ; $789c: $0a
	ld   b, $be                                      ; $789d: $06 $be
	ld   [bc], a                                     ; $789f: $02
	rrca                                             ; $78a0: $0f
	nop                                              ; $78a1: $00
	ld   bc, $6101                                   ; $78a2: $01 $01 $61
	ld   h, c                                        ; $78a5: $61
	ld   e, c                                        ; $78a6: $59
	sub  a                                           ; $78a7: $97
	inc  bc                                          ; $78a8: $03
	ld   a, b                                        ; $78a9: $78
	ld   a, c                                        ; $78aa: $79
	dec  c                                           ; $78ab: $0d
	ld   [bc], a                                     ; $78ac: $02
	ld   a, a                                        ; $78ad: $7f
	ld   [hl], c                                     ; $78ae: $71
	ld   l, a                                        ; $78af: $6f
	sub  c                                           ; $78b0: $91
	ei                                               ; $78b1: $fb
	pop  bc                                          ; $78b2: $c1
	db   $e3                                         ; $78b3: $e3
	sub  [hl]                                        ; $78b4: $96
	sbc  a                                           ; $78b5: $9f
	dec  c                                           ; $78b6: $0d
	nop                                              ; $78b7: $00
	ld   a, [bc]                                     ; $78b8: $0a
	ld   b, $be                                      ; $78b9: $06 $be
	ld   [bc], a                                     ; $78bb: $02
	inc  e                                           ; $78bc: $1c
	inc  bc                                          ; $78bd: $03
	rlca                                             ; $78be: $07
	rlca                                             ; $78bf: $07
	ld   bc, $a178                                   ; $78c0: $01 $78 $a1
	ld   [hl], l                                     ; $78c3: $75
	ld   h, a                                        ; $78c4: $67
	ld   [hl], c                                     ; $78c5: $71
	ld   [hl], h                                     ; $78c6: $74
	ld   sp, hl                                      ; $78c7: $f9
	dec  c                                           ; $78c8: $0d
	nop                                              ; $78c9: $00
	ld   a, [bc]                                     ; $78ca: $0a
	rrca                                             ; $78cb: $0f
	nop                                              ; $78cc: $00
	ld   bc, $0301                                   ; $78cd: $01 $01 $03
	inc  sp                                          ; $78d0: $33
	dec  b                                           ; $78d1: $05
	db   $ec                                         ; $78d2: $ec
	inc  b                                           ; $78d3: $04
	ld   h, h                                        ; $78d4: $64
	inc  bc                                          ; $78d5: $03
	ld   [hl-], a                                    ; $78d6: $32
	rst  $38                                         ; $78d7: $ff
	rst  $38                                         ; $78d8: $ff
	dec  c                                           ; $78d9: $0d
	ld   e, b                                        ; $78da: $58
	inc  bc                                          ; $78db: $03
	ld   c, a                                        ; $78dc: $4f
	ld   a, l                                        ; $78dd: $7d
	sbc  [hl]                                        ; $78de: $9e
	ld   h, c                                        ; $78df: $61
	ld   a, h                                        ; $78e0: $7c
	rst  $38                                         ; $78e1: $ff
	rst  $38                                         ; $78e2: $ff
	dec  c                                           ; $78e3: $0d
	nop                                              ; $78e4: $00
	ld   a, [bc]                                     ; $78e5: $0a
	add  hl, de                                      ; $78e6: $19
	dec  b                                           ; $78e7: $05
	inc  bc                                          ; $78e8: $03
	inc  b                                           ; $78e9: $04
	ld   hl, sp+$02                                  ; $78ea: $f8 $02
	add  a                                           ; $78ec: $87
	inc  b                                           ; $78ed: $04
	or   a                                           ; $78ee: $b7
	inc  bc                                          ; $78ef: $03
	add  d                                           ; $78f0: $82
	ld   a, c                                        ; $78f1: $79
	rst  $38                                         ; $78f2: $ff
	rst  $38                                         ; $78f3: $ff
	nop                                              ; $78f4: $00
	nop                                              ; $78f5: $00
	ld   [bc], a                                     ; $78f6: $02
	dec  sp                                          ; $78f7: $3b
	dec  b                                           ; $78f8: $05
	ld   a, [hl]                                     ; $78f9: $7e
	ld   [bc], a                                     ; $78fa: $02
	ld   l, h                                        ; $78fb: $6c
	dec  b                                           ; $78fc: $05
	ld   a, [hl]                                     ; $78fd: $7e
	ld   a, c                                        ; $78fe: $79
	rst  $38                                         ; $78ff: $ff
	rst  $38                                         ; $7900: $ff
	nop                                              ; $7901: $00
	ld   bc, $f804                                   ; $7902: $01 $04 $f8
	ld   [bc], a                                     ; $7905: $02
	ld   h, h                                        ; $7906: $64
	inc  b                                           ; $7907: $04
	or   a                                           ; $7908: $b7
	inc  bc                                          ; $7909: $03
	add  d                                           ; $790a: $82
	ld   a, c                                        ; $790b: $79
	rst  $38                                         ; $790c: $ff
	rst  $38                                         ; $790d: $ff
	nop                                              ; $790e: $00
	ld   [bc], a                                     ; $790f: $02
	rlca                                             ; $7910: $07
	jr   nc, @+$05                                   ; $7911: $30 $03

	ld   [bc], a                                     ; $7913: $02
	inc  bc                                          ; $7914: $03
	ld   bc, $2000                                   ; $7915: $01 $00 $20
	nop                                              ; $7918: $00
	rlca                                             ; $7919: $07
	ld   e, c                                        ; $791a: $59
	inc  bc                                          ; $791b: $03
	ld   [bc], a                                     ; $791c: $02
	inc  bc                                          ; $791d: $03
	ld   bc, $2001                                   ; $791e: $01 $01 $20
	nop                                              ; $7921: $00
	rlca                                             ; $7922: $07
	ld   a, c                                        ; $7923: $79
	inc  bc                                          ; $7924: $03
	ld   [bc], a                                     ; $7925: $02
	inc  bc                                          ; $7926: $03
	ld   bc, $2002                                   ; $7927: $01 $02 $20
	nop                                              ; $792a: $00
	ld   b, $7a                                      ; $792b: $06 $7a
	inc  b                                           ; $792d: $04
	rrca                                             ; $792e: $0f
	nop                                              ; $792f: $00
	ld   bc, $0401                                   ; $7930: $01 $01 $04
	ld   hl, sp+$02                                  ; $7933: $f8 $02
	add  a                                           ; $7935: $87
	inc  b                                           ; $7936: $04
	or   a                                           ; $7937: $b7
	inc  bc                                          ; $7938: $03
	add  d                                           ; $7939: $82
	ld   a, c                                        ; $793a: $79
	dec  c                                           ; $793b: $0d
	inc  bc                                          ; $793c: $03
	ld   l, d                                        ; $793d: $6a
	add  a                                           ; $793e: $87
	sub  a                                           ; $793f: $97
	sbc  d                                           ; $7940: $9a
	sbc  c                                           ; $7941: $99
	ld   a, h                                        ; $7942: $7c
	ld   l, [hl]                                     ; $7943: $6e
	ld   e, c                                        ; $7944: $59
	sub  a                                           ; $7945: $97
	ld   a, b                                        ; $7946: $78
	sbc  a                                           ; $7947: $9f
	dec  c                                           ; $7948: $0d
	nop                                              ; $7949: $00
	ld   a, [bc]                                     ; $794a: $0a
	dec  b                                           ; $794b: $05
	ld   b, b                                        ; $794c: $40
	rst  $38                                         ; $794d: $ff
	inc  bc                                          ; $794e: $03
	rst  $38                                         ; $794f: $ff
	ld   bc, $2801                                   ; $7950: $01 $01 $28
	nop                                              ; $7953: $00
	ld   b, $99                                      ; $7954: $06 $99
	inc  bc                                          ; $7956: $03
	rrca                                             ; $7957: $0f
	nop                                              ; $7958: $00
	ld   bc, $0201                                   ; $7959: $01 $01 $02
	dec  sp                                          ; $795c: $3b
	dec  b                                           ; $795d: $05
	ld   a, [hl]                                     ; $795e: $7e
	ld   [bc], a                                     ; $795f: $02
	ld   l, h                                        ; $7960: $6c
	dec  b                                           ; $7961: $05
	ld   a, [hl]                                     ; $7962: $7e
	ld   a, c                                        ; $7963: $79
	dec  c                                           ; $7964: $0d
	inc  bc                                          ; $7965: $03
	ld   l, d                                        ; $7966: $6a
	add  a                                           ; $7967: $87
	sub  a                                           ; $7968: $97
	sbc  d                                           ; $7969: $9a
	sbc  c                                           ; $796a: $99
	ld   a, h                                        ; $796b: $7c
	ld   l, [hl]                                     ; $796c: $6e
	ld   e, c                                        ; $796d: $59
	sub  a                                           ; $796e: $97
	ld   a, b                                        ; $796f: $78
	sbc  a                                           ; $7970: $9f
	dec  c                                           ; $7971: $0d
	nop                                              ; $7972: $00
	ld   a, [bc]                                     ; $7973: $0a
	ld   b, $99                                      ; $7974: $06 $99
	inc  bc                                          ; $7976: $03
	rrca                                             ; $7977: $0f
	nop                                              ; $7978: $00
	ld   bc, $0401                                   ; $7979: $01 $01 $04
	ld   hl, sp+$02                                  ; $797c: $f8 $02
	ld   h, h                                        ; $797e: $64
	inc  b                                           ; $797f: $04
	or   a                                           ; $7980: $b7
	inc  bc                                          ; $7981: $03
	add  d                                           ; $7982: $82
	ld   a, c                                        ; $7983: $79
	dec  c                                           ; $7984: $0d
	inc  bc                                          ; $7985: $03
	ld   l, d                                        ; $7986: $6a
	add  a                                           ; $7987: $87
	sub  a                                           ; $7988: $97
	sbc  d                                           ; $7989: $9a
	sbc  c                                           ; $798a: $99
	ld   a, h                                        ; $798b: $7c
	ld   l, [hl]                                     ; $798c: $6e
	ld   e, c                                        ; $798d: $59
	sub  a                                           ; $798e: $97
	ld   a, b                                        ; $798f: $78
	sbc  a                                           ; $7990: $9f
	dec  c                                           ; $7991: $0d
	nop                                              ; $7992: $00
	ld   a, [bc]                                     ; $7993: $0a
	ld   b, $99                                      ; $7994: $06 $99
	inc  bc                                          ; $7996: $03
	inc  e                                           ; $7997: $1c
	inc  bc                                          ; $7998: $03
	ld   [bc], a                                     ; $7999: $02
	ld   [bc], a                                     ; $799a: $02
	ld   bc, $546b                                   ; $799b: $01 $6b $54
	ld   a, l                                        ; $799e: $7d
	ld   d, d                                        ; $799f: $52
	ld   e, e                                        ; $79a0: $5b
	adc  h                                           ; $79a1: $8c
	ld   l, c                                        ; $79a2: $69
	and  c                                           ; $79a3: $a1
	ld   a, [$610d]                                  ; $79a4: $fa $0d $61
	ld   a, h                                        ; $79a7: $7c
	sbc  [hl]                                        ; $79a8: $9e
	ld   d, b                                        ; $79a9: $50
	sbc  b                                           ; $79aa: $98
	ld   e, d                                        ; $79ab: $5a
	ld   l, l                                        ; $79ac: $6d
	ld   d, d                                        ; $79ad: $52
	ld   e, b                                        ; $79ae: $58
	dec  b                                           ; $79af: $05
	or   c                                           ; $79b0: $b1
	and  b                                           ; $79b1: $a0
	dec  c                                           ; $79b2: $0d
	ld   [bc], a                                     ; $79b3: $02
	jp   nz, $785b                                   ; $79b4: $c2 $5b $78

	ld   h, e                                        ; $79b7: $63
	ld   d, d                                        ; $79b8: $52
	ld   a, [$000d]                                  ; $79b9: $fa $0d $00
	ld   a, [bc]                                     ; $79bc: $0a
	rrca                                             ; $79bd: $0f
	nop                                              ; $79be: $00
	ld   bc, $5401                                   ; $79bf: $01 $01 $54
	sbc  l                                           ; $79c2: $9d
	ld   [hl], c                                     ; $79c3: $71
	rst  $38                                         ; $79c4: $ff
	rst  $38                                         ; $79c5: $ff
	dec  c                                           ; $79c6: $0d
	ld   h, c                                        ; $79c7: $61
	ld   a, h                                        ; $79c8: $7c
	ld   h, [hl]                                     ; $79c9: $66
	sub  e                                           ; $79ca: $93
	sub  b                                           ; $79cb: $90
	and  c                                           ; $79cc: $a1
	ld   a, l                                        ; $79cd: $7d
	rst  $38                                         ; $79ce: $ff
	rst  $38                                         ; $79cf: $ff
	ld   sp, hl                                      ; $79d0: $f9
	dec  c                                           ; $79d1: $0d
	nop                                              ; $79d2: $00
	ld   a, [bc]                                     ; $79d3: $0a
	add  hl, de                                      ; $79d4: $19
	dec  b                                           ; $79d5: $05
	inc  bc                                          ; $79d6: $03
	ld   e, c                                        ; $79d7: $59
	sbc  [hl]                                        ; $79d8: $9e
	inc  b                                           ; $79d9: $04
	dec  c                                           ; $79da: $0d
	ld   e, d                                        ; $79db: $5a
	ld   d, h                                        ; $79dc: $54
	ld   h, d                                        ; $79dd: $62
	ld   e, c                                        ; $79de: $59
	ld   a, b                                        ; $79df: $78
	ld   d, d                                        ; $79e0: $52
	ld   a, [rRAMG]                                  ; $79e1: $fa $00 $00
	ld   a, l                                        ; $79e4: $7d
	sbc  [hl]                                        ; $79e5: $9e
	inc  b                                           ; $79e6: $04
	adc  c                                           ; $79e7: $89
	ld   e, d                                        ; $79e8: $5a
	ld   d, d                                        ; $79e9: $52
	ld   l, l                                        ; $79ea: $6d
	ld   d, d                                        ; $79eb: $52
	ld   a, [$0100]                                  ; $79ec: $fa $00 $01
	adc  a                                           ; $79ef: $8f
	sbc  [hl]                                        ; $79f0: $9e
	inc  b                                           ; $79f1: $04
	call nc, $025a                                   ; $79f2: $d4 $5a $02
	sub  l                                           ; $79f5: $95
	ld   d, [hl]                                     ; $79f6: $56
	ld   a, b                                        ; $79f7: $78
	ld   d, d                                        ; $79f8: $52
	ld   a, [$0200]                                  ; $79f9: $fa $00 $02
	rlca                                             ; $79fc: $07
	inc  e                                           ; $79fd: $1c
	inc  b                                           ; $79fe: $04
	ld   [bc], a                                     ; $79ff: $02
	inc  bc                                          ; $7a00: $03
	ld   bc, $2000                                   ; $7a01: $01 $00 $20
	nop                                              ; $7a04: $00
	rlca                                             ; $7a05: $07
	ld   b, d                                        ; $7a06: $42
	inc  b                                           ; $7a07: $04
	ld   [bc], a                                     ; $7a08: $02
	inc  bc                                          ; $7a09: $03
	ld   bc, $2001                                   ; $7a0a: $01 $01 $20
	nop                                              ; $7a0d: $00
	rlca                                             ; $7a0e: $07
	ld   e, l                                        ; $7a0f: $5d
	inc  b                                           ; $7a10: $04
	ld   [bc], a                                     ; $7a11: $02
	inc  bc                                          ; $7a12: $03
	ld   bc, $2002                                   ; $7a13: $01 $02 $20
	nop                                              ; $7a16: $00
	ld   b, $7a                                      ; $7a17: $06 $7a
	inc  b                                           ; $7a19: $04
	rrca                                             ; $7a1a: $0f
	nop                                              ; $7a1b: $00
	ld   bc, $5901                                   ; $7a1c: $01 $01 $59
	sbc  [hl]                                        ; $7a1f: $9e
	inc  b                                           ; $7a20: $04
	dec  c                                           ; $7a21: $0d
	ld   e, d                                        ; $7a22: $5a
	ld   d, h                                        ; $7a23: $54
	ld   h, d                                        ; $7a24: $62
	ld   e, c                                        ; $7a25: $59
	ld   a, b                                        ; $7a26: $78
	ld   d, d                                        ; $7a27: $52
	ld   a, [$000d]                                  ; $7a28: $fa $0d $00
	ld   a, [bc]                                     ; $7a2b: $0a
	dec  b                                           ; $7a2c: $05
	ld   b, b                                        ; $7a2d: $40
	rst  $38                                         ; $7a2e: $ff
	inc  bc                                          ; $7a2f: $03
	rst  $38                                         ; $7a30: $ff
	ld   bc, $2801                                   ; $7a31: $01 $01 $28
	nop                                              ; $7a34: $00
	dec  c                                           ; $7a35: $0d
	nop                                              ; $7a36: $00
	nop                                              ; $7a37: $00
	rrca                                             ; $7a38: $0f
	nop                                              ; $7a39: $00
	ld   bc, $0b0c                                   ; $7a3a: $01 $0c $0b
	ld   b, $a0                                      ; $7a3d: $06 $a0
	inc  b                                           ; $7a3f: $04
	rrca                                             ; $7a40: $0f
	nop                                              ; $7a41: $00
	ld   bc, $7d01                                   ; $7a42: $01 $01 $7d
	sbc  [hl]                                        ; $7a45: $9e
	inc  b                                           ; $7a46: $04
	adc  c                                           ; $7a47: $89
	ld   e, d                                        ; $7a48: $5a
	ld   d, d                                        ; $7a49: $52
	ld   l, l                                        ; $7a4a: $6d
	ld   d, d                                        ; $7a4b: $52
	ld   a, [$000d]                                  ; $7a4c: $fa $0d $00
	ld   a, [bc]                                     ; $7a4f: $0a
	dec  c                                           ; $7a50: $0d
	nop                                              ; $7a51: $00
	nop                                              ; $7a52: $00
	rrca                                             ; $7a53: $0f
	nop                                              ; $7a54: $00
	ld   bc, $0b0c                                   ; $7a55: $01 $0c $0b
	ld   b, $a0                                      ; $7a58: $06 $a0
	inc  b                                           ; $7a5a: $04
	rrca                                             ; $7a5b: $0f
	nop                                              ; $7a5c: $00
	ld   bc, $8f01                                   ; $7a5d: $01 $01 $8f
	sbc  [hl]                                        ; $7a60: $9e
	inc  b                                           ; $7a61: $04
	call nc, $025a                                   ; $7a62: $d4 $5a $02
	sub  l                                           ; $7a65: $95
	ld   d, [hl]                                     ; $7a66: $56
	ld   a, b                                        ; $7a67: $78
	ld   d, d                                        ; $7a68: $52
	ld   a, [$000d]                                  ; $7a69: $fa $0d $00
	ld   a, [bc]                                     ; $7a6c: $0a
	dec  c                                           ; $7a6d: $0d
	nop                                              ; $7a6e: $00
	nop                                              ; $7a6f: $00
	rrca                                             ; $7a70: $0f
	nop                                              ; $7a71: $00
	ld   bc, $0b0c                                   ; $7a72: $01 $0c $0b
	ld   b, $a0                                      ; $7a75: $06 $a0
	inc  b                                           ; $7a77: $04
	inc  e                                           ; $7a78: $1c
	inc  bc                                          ; $7a79: $03
	inc  b                                           ; $7a7a: $04
	inc  b                                           ; $7a7b: $04
	ld   bc, $7c61                                   ; $7a7c: $01 $61 $7c
	ld   e, l                                        ; $7a7f: $5d
	sub  a                                           ; $7a80: $97
	ld   d, d                                        ; $7a81: $52
	ld   a, h                                        ; $7a82: $7c
	cp   h                                           ; $7a83: $bc
	db   $ec                                         ; $7a84: $ec
	sub  $75                                         ; $7a85: $d6 $75
	dec  c                                           ; $7a87: $0d
	halt                                             ; $7a88: $76
	ld   l, a                                        ; $7a89: $6f
	sub  a                                           ; $7a8a: $97
	ld   a, b                                        ; $7a8b: $78
	ld   d, d                                        ; $7a8c: $52
	ld   [hl], l                                     ; $7a8d: $75
	rst  $38                                         ; $7a8e: $ff
	rst  $38                                         ; $7a8f: $ff
	dec  c                                           ; $7a90: $0d
	nop                                              ; $7a91: $00
	ld   a, [bc]                                     ; $7a92: $0a
	dec  c                                           ; $7a93: $0d
	nop                                              ; $7a94: $00
	nop                                              ; $7a95: $00
	rrca                                             ; $7a96: $0f
	nop                                              ; $7a97: $00
	ld   bc, $0b0c                                   ; $7a98: $01 $0c $0b
	ld   b, $00                                      ; $7a9b: $06 $00
	dec  b                                           ; $7a9d: $05
	rlca                                             ; $7a9e: $07
	cp   e                                           ; $7a9f: $bb
	inc  b                                           ; $7aa0: $04
	inc  bc                                          ; $7aa1: $03
	rst  $38                                         ; $7aa2: $ff
	ld   bc, $2003                                   ; $7aa3: $01 $03 $20
	nop                                              ; $7aa6: $00
	rlca                                             ; $7aa7: $07
	pop  hl                                          ; $7aa8: $e1
	inc  b                                           ; $7aa9: $04
	inc  bc                                          ; $7aaa: $03
	rst  $38                                         ; $7aab: $ff
	ld   bc, $2002                                   ; $7aac: $01 $02 $20
	nop                                              ; $7aaf: $00
	rlca                                             ; $7ab0: $07
	nop                                              ; $7ab1: $00
	dec  b                                           ; $7ab2: $05
	inc  bc                                          ; $7ab3: $03
	rst  $38                                         ; $7ab4: $ff
	ld   bc, $2301                                   ; $7ab5: $01 $01 $23
	nop                                              ; $7ab8: $00
	inc  e                                           ; $7ab9: $1c
	inc  bc                                          ; $7aba: $03
	inc  bc                                          ; $7abb: $03
	inc  bc                                          ; $7abc: $03
	dec  e                                           ; $7abd: $1d
	ld   b, b                                        ; $7abe: $40
	inc  de                                          ; $7abf: $13
	inc  bc                                          ; $7ac0: $03
	inc  de                                          ; $7ac1: $13
	ld   bc, $2803                                   ; $7ac2: $01 $03 $28
	nop                                              ; $7ac5: $00
	ld   bc, $9850                                   ; $7ac6: $01 $50 $98
	ld   e, d                                        ; $7ac9: $5a
	halt                                             ; $7aca: $76
	ld   d, h                                        ; $7acb: $54
	sbc  a                                           ; $7acc: $9f
	dec  c                                           ; $7acd: $0d
	ld   h, a                                        ; $7ace: $67
	ld   h, d                                        ; $7acf: $62
	ld   e, l                                        ; $7ad0: $5d
	inc  bc                                          ; $7ad1: $03
	ld   e, e                                        ; $7ad2: $5b
	ld   e, c                                        ; $7ad3: $59
	ld   [hl], c                                     ; $7ad4: $71
	ld   l, l                                        ; $7ad5: $6d
	sbc  l                                           ; $7ad6: $9d
	rst  $38                                         ; $7ad7: $ff
	rst  $38                                         ; $7ad8: $ff
	dec  c                                           ; $7ad9: $0d
	nop                                              ; $7ada: $00
	ld   a, [bc]                                     ; $7adb: $0a
	ld   b, $2c                                      ; $7adc: $06 $2c
	dec  b                                           ; $7ade: $05
	inc  e                                           ; $7adf: $1c
	inc  bc                                          ; $7ae0: $03
	nop                                              ; $7ae1: $00
	nop                                              ; $7ae2: $00
	dec  e                                           ; $7ae3: $1d
	ld   b, b                                        ; $7ae4: $40
	inc  de                                          ; $7ae5: $13
	inc  bc                                          ; $7ae6: $03
	inc  de                                          ; $7ae7: $13
	ld   bc, $2802                                   ; $7ae8: $01 $02 $28
	nop                                              ; $7aeb: $00
	ld   bc, $5483                                   ; $7aec: $01 $83 $54
	rst  $38                                         ; $7aef: $ff
	rst  $38                                         ; $7af0: $ff
	ld   e, b                                        ; $7af1: $58
	inc  b                                           ; $7af2: $04
	ld   a, e                                        ; $7af3: $7b
	sbc  d                                           ; $7af4: $9a
	ld   h, e                                        ; $7af5: $63
	adc  h                                           ; $7af6: $8c
	sbc  a                                           ; $7af7: $9f
	dec  c                                           ; $7af8: $0d
	nop                                              ; $7af9: $00
	ld   a, [bc]                                     ; $7afa: $0a
	ld   b, $2c                                      ; $7afb: $06 $2c
	dec  b                                           ; $7afd: $05
	inc  e                                           ; $7afe: $1c
	inc  bc                                          ; $7aff: $03
	inc  b                                           ; $7b00: $04
	inc  b                                           ; $7b01: $04
	dec  e                                           ; $7b02: $1d
	ld   b, b                                        ; $7b03: $40
	inc  de                                          ; $7b04: $13
	inc  bc                                          ; $7b05: $03
	inc  de                                          ; $7b06: $13
	ld   bc, $2902                                   ; $7b07: $01 $02 $29
	nop                                              ; $7b0a: $00
	ld   bc, $ffff                                   ; $7b0b: $01 $ff $ff
	inc  b                                           ; $7b0e: $04
	ld   e, $7c                                      ; $7b0f: $1e $7c
	inc  bc                                          ; $7b11: $03
	add  d                                           ; $7b12: $82
	ld   a, c                                        ; $7b13: $79
	ld   l, l                                        ; $7b14: $6d
	ld   a, h                                        ; $7b15: $7c
	adc  a                                           ; $7b16: $8f
	ld   a, [hl]                                     ; $7b17: $7e
	dec  c                                           ; $7b18: $0d
	dec  b                                           ; $7b19: $05
	dec  d                                           ; $7b1a: $15
	ld   e, c                                        ; $7b1b: $59
	ld   [hl], c                                     ; $7b1c: $71
	ld   l, l                                        ; $7b1d: $6d
	ld   a, h                                        ; $7b1e: $7c
	ld   e, c                                        ; $7b1f: $59
	ld   h, l                                        ; $7b20: $65
	sub  a                                           ; $7b21: $97
	rst  $38                                         ; $7b22: $ff
	rst  $38                                         ; $7b23: $ff
	dec  c                                           ; $7b24: $0d
	nop                                              ; $7b25: $00
	ld   a, [bc]                                     ; $7b26: $0a
	ld   b, $2c                                      ; $7b27: $06 $2c
	dec  b                                           ; $7b29: $05
	ld   bc, $9e63                                   ; $7b2a: $01 $63 $9e
	ld   e, b                                        ; $7b2d: $58
	ld   [bc], a                                     ; $7b2e: $02
	ret                                              ; $7b2f: $c9


	ld   d, d                                        ; $7b30: $52
	inc  bc                                          ; $7b31: $03
	dec  c                                           ; $7b32: $0d
	ld   [bc], a                                     ; $7b33: $02
	jp   $0d79                                       ; $7b34: $c3 $79 $0d


	sub  b                                           ; $7b37: $90
	ld   [hl], a                                     ; $7b38: $77
	sbc  b                                           ; $7b39: $98
	adc  h                                           ; $7b3a: $8c
	ld   h, l                                        ; $7b3b: $65
	sub  l                                           ; $7b3c: $95
	ld   d, h                                        ; $7b3d: $54
	sbc  a                                           ; $7b3e: $9f
	dec  c                                           ; $7b3f: $0d
	nop                                              ; $7b40: $00
	ld   a, [bc]                                     ; $7b41: $0a
	dec  c                                           ; $7b42: $0d
	nop                                              ; $7b43: $00
	nop                                              ; $7b44: $00
	rrca                                             ; $7b45: $0f
	nop                                              ; $7b46: $00
	ld   bc, $1e09                                   ; $7b47: $01 $09 $1e
	nop                                              ; $7b4a: $00
	nop                                              ; $7b4b: $00
	inc  e                                           ; $7b4c: $1c
	inc  b                                           ; $7b4d: $04
	nop                                              ; $7b4e: $00
	nop                                              ; $7b4f: $00
	ld   [bc], a                                     ; $7b50: $02
	ld   bc, $9e50                                   ; $7b51: $01 $50 $9e
	ld   l, a                                        ; $7b54: $6f
	ld   d, d                                        ; $7b55: $52
	ld   [bc], a                                     ; $7b56: $02
	inc  de                                          ; $7b57: $13
	ld   l, a                                        ; $7b58: $6f
	sub  c                                           ; $7b59: $91
	and  c                                           ; $7b5a: $a1
	sbc  a                                           ; $7b5b: $9f
	dec  c                                           ; $7b5c: $0d
	ld   l, a                                        ; $7b5d: $6f
	sub  l                                           ; $7b5e: $95
	ld   [hl], c                                     ; $7b5f: $71
	halt                                             ; $7b60: $76
	ld   d, d                                        ; $7b61: $52
	ld   d, d                                        ; $7b62: $52
	ld   sp, hl                                      ; $7b63: $f9
	dec  c                                           ; $7b64: $0d
	nop                                              ; $7b65: $00
	ld   a, [bc]                                     ; $7b66: $0a
	ld   bc, $5f58                                   ; $7b67: $01 $58 $5f
	ld   d, d                                        ; $7b6a: $52
	ld   h, c                                        ; $7b6b: $61
	ld   a, h                                        ; $7b6c: $7c
	ld   d, b                                        ; $7b6d: $50
	ld   d, d                                        ; $7b6e: $52
	ld   [hl], h                                     ; $7b6f: $74
	and  b                                           ; $7b70: $a0
	dec  c                                           ; $7b71: $0d
	ld   h, l                                        ; $7b72: $65
	ld   [hl], h                                     ; $7b73: $74
	adc  c                                           ; $7b74: $89
	ld   h, l                                        ; $7b75: $65
	ld   d, d                                        ; $7b76: $52
	ld   a, h                                        ; $7b77: $7c
	sbc  a                                           ; $7b78: $9f
	dec  c                                           ; $7b79: $0d
	nop                                              ; $7b7a: $00
	ld   a, [bc]                                     ; $7b7b: $0a
	add  hl, de                                      ; $7b7c: $19
	dec  b                                           ; $7b7d: $05
	ld   [bc], a                                     ; $7b7e: $02
	ld   [bc], a                                     ; $7b7f: $02
	ld   a, [de]                                     ; $7b80: $1a
	inc  bc                                          ; $7b81: $03
	ld   l, e                                        ; $7b82: $6b
	and  b                                           ; $7b83: $a0
	ld   h, a                                        ; $7b84: $67
	sbc  c                                           ; $7b85: $99
	nop                                              ; $7b86: $00
	nop                                              ; $7b87: $00
	ld   h, c                                        ; $7b88: $61
	halt                                             ; $7b89: $76
	sbc  l                                           ; $7b8a: $9d
	sbc  c                                           ; $7b8b: $99
	nop                                              ; $7b8c: $00
	ld   bc, $c407                                   ; $7b8d: $01 $07 $c4
	nop                                              ; $7b90: $00
	ld   [bc], a                                     ; $7b91: $02
	inc  bc                                          ; $7b92: $03
	ld   bc, $2000                                   ; $7b93: $01 $00 $20
	nop                                              ; $7b96: $00
	rlca                                             ; $7b97: $07
	ld   d, a                                        ; $7b98: $57
	nop                                              ; $7b99: $00
	ld   [bc], a                                     ; $7b9a: $02
	inc  bc                                          ; $7b9b: $03
	ld   bc, $2001                                   ; $7b9c: $01 $01 $20
	nop                                              ; $7b9f: $00
	ld   b, $8a                                      ; $7ba0: $06 $8a
	nop                                              ; $7ba2: $00
	rrca                                             ; $7ba3: $0f
	nop                                              ; $7ba4: $00
	ld   bc, $0201                                   ; $7ba5: $01 $01 $02
	jr   z, jr_04f_7bfc                              ; $7ba8: $28 $52

	ld   e, a                                        ; $7baa: $5f
	ld   [hl], a                                     ; $7bab: $77
	dec  c                                           ; $7bac: $0d
	ld   l, a                                        ; $7bad: $6f
	sub  l                                           ; $7bae: $95
	ld   [hl], c                                     ; $7baf: $71
	halt                                             ; $7bb0: $76
	ld   [bc], a                                     ; $7bb1: $02
	and  l                                           ; $7bb2: $a5
	ld   a, l                                        ; $7bb3: $7d
	rst  $38                                         ; $7bb4: $ff
	rst  $38                                         ; $7bb5: $ff
	dec  c                                           ; $7bb6: $0d
	nop                                              ; $7bb7: $00
	ld   a, [bc]                                     ; $7bb8: $0a
	inc  e                                           ; $7bb9: $1c
	inc  b                                           ; $7bba: $04
	inc  bc                                          ; $7bbb: $03
	inc  bc                                          ; $7bbc: $03
	dec  e                                           ; $7bbd: $1d
	ld   b, b                                        ; $7bbe: $40
	inc  d                                           ; $7bbf: $14
	inc  bc                                          ; $7bc0: $03
	inc  d                                           ; $7bc1: $14
	ld   bc, $2901                                   ; $7bc2: $01 $01 $29
	nop                                              ; $7bc5: $00
	ld   bc, $5484                                   ; $7bc6: $01 $84 $54
	rst  $38                                         ; $7bc9: $ff
	rst  $38                                         ; $7bca: $ff
	ld   [hl], d                                     ; $7bcb: $72
	adc  h                                           ; $7bcc: $8c
	and  c                                           ; $7bcd: $a1
	ld   a, b                                        ; $7bce: $78
	ld   d, d                                        ; $7bcf: $52
	ld   a, h                                        ; $7bd0: $7c
	sbc  a                                           ; $7bd1: $9f
	dec  c                                           ; $7bd2: $0d
	nop                                              ; $7bd3: $00
	ld   a, [bc]                                     ; $7bd4: $0a
	nop                                              ; $7bd5: $00
	inc  e                                           ; $7bd6: $1c
	inc  b                                           ; $7bd7: $04
	rlca                                             ; $7bd8: $07
	rlca                                             ; $7bd9: $07
	dec  e                                           ; $7bda: $1d
	ld   b, b                                        ; $7bdb: $40
	inc  d                                           ; $7bdc: $14
	inc  bc                                          ; $7bdd: $03
	inc  d                                           ; $7bde: $14
	ld   bc, $2902                                   ; $7bdf: $01 $02 $29
	nop                                              ; $7be2: $00
	ld   bc, $9e50                                   ; $7be3: $01 $50 $9e
	and  l                                           ; $7be6: $a5
	and  $6b                                         ; $7be7: $e6 $6b
	ld   d, h                                        ; $7be9: $54
	ld   a, b                                        ; $7bea: $78
	ld   e, c                                        ; $7beb: $59
	ld   e, b                                        ; $7bec: $58
	ld   h, l                                        ; $7bed: $65
	ld   [hl], h                                     ; $7bee: $74
	sbc  c                                           ; $7bef: $99
	rst  $38                                         ; $7bf0: $ff
	rst  $38                                         ; $7bf1: $ff
	dec  c                                           ; $7bf2: $0d
	nop                                              ; $7bf3: $00
	ld   a, [bc]                                     ; $7bf4: $0a
	inc  e                                           ; $7bf5: $1c
	inc  b                                           ; $7bf6: $04
	ld   [bc], a                                     ; $7bf7: $02
	ld   [bc], a                                     ; $7bf8: $02
	ld   bc, $5252                                   ; $7bf9: $01 $52 $52

jr_04f_7bfc:
	sub  b                                           ; $7bfc: $90
	and  c                                           ; $7bfd: $a1
	sbc  [hl]                                        ; $7bfe: $9e
	adc  c                                           ; $7bff: $89
	ld   e, c                                        ; $7c00: $59
	ld   a, h                                        ; $7c01: $7c
	add  b                                           ; $7c02: $80
	halt                                             ; $7c03: $76
	ld   a, c                                        ; $7c04: $79
	dec  c                                           ; $7c05: $0d
	ld   l, l                                        ; $7c06: $6d
	ld   a, h                                        ; $7c07: $7c
	adc  [hl]                                        ; $7c08: $8e
	sub  b                                           ; $7c09: $90
	and  c                                           ; $7c0a: $a1
	sbc  a                                           ; $7c0b: $9f
	dec  c                                           ; $7c0c: $0d
	nop                                              ; $7c0d: $00
	ld   a, [bc]                                     ; $7c0e: $0a
	nop                                              ; $7c0f: $00
	rrca                                             ; $7c10: $0f
	nop                                              ; $7c11: $00
	ld   bc, $5201                                   ; $7c12: $01 $01 $52
	ld   d, d                                        ; $7c15: $52
	sub  [hl]                                        ; $7c16: $96
	sbc  a                                           ; $7c17: $9f
	dec  c                                           ; $7c18: $0d
	inc  b                                           ; $7c19: $04
	ld   l, l                                        ; $7c1a: $6d
	ld   a, b                                        ; $7c1b: $78
	and  c                                           ; $7c1c: $a1
	ld   e, c                                        ; $7c1d: $59
	ld   [hl], l                                     ; $7c1e: $75
	dec  b                                           ; $7c1f: $05
	dec  d                                           ; $7c20: $15
	ld   e, a                                        ; $7c21: $5f
	sbc  d                                           ; $7c22: $9a
	ld   a, [hl]                                     ; $7c23: $7e
	sbc  a                                           ; $7c24: $9f
	dec  c                                           ; $7c25: $0d
	nop                                              ; $7c26: $00
	ld   a, [bc]                                     ; $7c27: $0a
	inc  e                                           ; $7c28: $1c
	inc  b                                           ; $7c29: $04
	ld   bc, $0101                                   ; $7c2a: $01 $01 $01
	sbc  l                                           ; $7c2d: $9d
	ei                                               ; $7c2e: $fb
	ld   d, d                                        ; $7c2f: $52
	sbc  [hl]                                        ; $7c30: $9e
	dec  c                                           ; $7c31: $0d
	ld   l, a                                        ; $7c32: $6f
	ld   d, d                                        ; $7c33: $52
	ld   [bc], a                                     ; $7c34: $02
	inc  de                                          ; $7c35: $13
	ld   l, a                                        ; $7c36: $6f
	sub  c                                           ; $7c37: $91
	and  c                                           ; $7c38: $a1
	sbc  [hl]                                        ; $7c39: $9e
	ld   d, b                                        ; $7c3a: $50
	sbc  b                                           ; $7c3b: $98
	ld   e, d                                        ; $7c3c: $5a
	halt                                             ; $7c3d: $76
	ld   d, h                                        ; $7c3e: $54
	sbc  a                                           ; $7c3f: $9f
	dec  c                                           ; $7c40: $0d
	nop                                              ; $7c41: $00
	ld   a, [bc]                                     ; $7c42: $0a
	inc  e                                           ; $7c43: $1c
	inc  b                                           ; $7c44: $04
	nop                                              ; $7c45: $00
	nop                                              ; $7c46: $00
	ld   bc, $9166                                   ; $7c47: $01 $66 $91
	sbc  [hl]                                        ; $7c4a: $9e
	ld   l, a                                        ; $7c4b: $6f
	ld   d, d                                        ; $7c4c: $52
	ld   [bc], a                                     ; $7c4d: $02
	inc  de                                          ; $7c4e: $13
	ld   l, a                                        ; $7c4f: $6f
	sub  c                                           ; $7c50: $91
	and  c                                           ; $7c51: $a1
	ld   a, l                                        ; $7c52: $7d
	dec  c                                           ; $7c53: $0d
	sub  [hl]                                        ; $7c54: $96
	ei                                               ; $7c55: $fb
	ld   e, e                                        ; $7c56: $5b
	add  e                                           ; $7c57: $83
	ld   h, [hl]                                     ; $7c58: $66
	and  c                                           ; $7c59: $a1
	ld   a, h                                        ; $7c5a: $7c
	sub  d                                           ; $7c5b: $92
	ld   e, l                                        ; $7c5c: $5d
	ld   a, e                                        ; $7c5d: $7b
	sbc  a                                           ; $7c5e: $9f
	dec  c                                           ; $7c5f: $0d
	nop                                              ; $7c60: $00
	ld   a, [bc]                                     ; $7c61: $0a
	ld   bc, $fb96                                   ; $7c62: $01 $96 $fb
	ld   e, e                                        ; $7c65: $5b
	add  e                                           ; $7c66: $83
	ld   h, [hl]                                     ; $7c67: $66
	and  c                                           ; $7c68: $a1
	ld   a, h                                        ; $7c69: $7c
	dec  c                                           ; $7c6a: $0d
	ld   [hl], d                                     ; $7c6b: $72
	ld   e, h                                        ; $7c6c: $5c
	ld   a, h                                        ; $7c6d: $7c
	ld   l, c                                        ; $7c6e: $69
	sbc  b                                           ; $7c6f: $98
	add  e                                           ; $7c70: $83
	and  b                                           ; $7c71: $a0
	ld   e, b                                        ; $7c72: $58
	adc  d                                           ; $7c73: $8a
	ld   d, [hl]                                     ; $7c74: $56
	ld   [hl], h                                     ; $7c75: $74
	ld   a, e                                        ; $7c76: $7b
	sbc  a                                           ; $7c77: $9f
	dec  c                                           ; $7c78: $0d
	nop                                              ; $7c79: $00
	ld   a, [bc]                                     ; $7c7a: $0a
	inc  e                                           ; $7c7b: $1c
	inc  b                                           ; $7c7c: $04
	ld   [bc], a                                     ; $7c7d: $02
	ld   [bc], a                                     ; $7c7e: $02
	ld   bc, $89fd                                   ; $7c7f: $01 $fd $89
	ld   d, h                                        ; $7c82: $54
	rst  $38                                         ; $7c83: $ff
	rst  $38                                         ; $7c84: $ff
	dec  c                                           ; $7c85: $0d
	db   $10                                         ; $7c86: $10
	ld   h, c                                        ; $7c87: $61
	and  c                                           ; $7c88: $a1
	ld   [hl], a                                     ; $7c89: $77
	ld   a, l                                        ; $7c8a: $7d
	ld   e, e                                        ; $7c8b: $5b
	ld   h, e                                        ; $7c8c: $63
	adc  h                                           ; $7c8d: $8c
	ld   e, d                                        ; $7c8e: $5a
	ld   d, b                                        ; $7c8f: $50
	ld   d, d                                        ; $7c90: $52
	ld   [hl], h                                     ; $7c91: $74
	ld   e, c                                        ; $7c92: $59
	dec  c                                           ; $7c93: $0d
	db   $10                                         ; $7c94: $10
	ld   a, [bc]                                     ; $7c95: $0a
	ld   [bc], a                                     ; $7c96: $02
	rst  $10                                         ; $7c97: $d7
	ret  nz                                          ; $7c98: $c0

	ld   a, [bc]                                     ; $7c99: $0a
	inc  bc                                          ; $7c9a: $03
	cp   $0d                                         ; $7c9b: $fe $0d
	nop                                              ; $7c9d: $00
	ld   a, [bc]                                     ; $7c9e: $0a
	ld   bc, $77fd                                   ; $7c9f: $01 $fd $77
	ld   [hl], c                                     ; $7ca2: $71
	ld   l, a                                        ; $7ca3: $6f
	ld   [hl], l                                     ; $7ca4: $75
	sub  b                                           ; $7ca5: $90
	ld   e, b                                        ; $7ca6: $58
	ld   a, b                                        ; $7ca7: $78
	ld   h, [hl]                                     ; $7ca8: $66
	ld   l, [hl]                                     ; $7ca9: $6e
	rst  $38                                         ; $7caa: $ff
	rst  $38                                         ; $7cab: $ff
	dec  c                                           ; $7cac: $0d
	db   $10                                         ; $7cad: $10
	ld   h, e                                        ; $7cae: $63
	ld   d, b                                        ; $7caf: $50
	sbc  [hl]                                        ; $7cb0: $9e
	ld   a, [bc]                                     ; $7cb1: $0a
	ld   [bc], a                                     ; $7cb2: $02
	ld   e, c                                        ; $7cb3: $59
	ld   e, c                                        ; $7cb4: $59
	ld   [hl], c                                     ; $7cb5: $71
	ld   [hl], h                                     ; $7cb6: $74
	ld   h, c                                        ; $7cb7: $61
	ld   d, d                                        ; $7cb8: $52
	ld   a, [$030a]                                  ; $7cb9: $fa $0a $03
	cp   $0d                                         ; $7cbc: $fe $0d
	nop                                              ; $7cbe: $00
	ld   a, [bc]                                     ; $7cbf: $0a
	ld   bc, $d6fd                                   ; $7cc0: $01 $fd $d6
	push af                                          ; $7cc3: $f5
	sbc  [hl]                                        ; $7cc4: $9e
	ld   a, h                                        ; $7cc5: $7c
	sbc  e                                           ; $7cc6: $9b
	ld   d, d                                        ; $7cc7: $52
	sbc  l                                           ; $7cc8: $9d
	ld   a, [$100d]                                  ; $7cc9: $fa $0d $10
	ld   a, [bc]                                     ; $7ccc: $0a
	ld   [bc], a                                     ; $7ccd: $02
	ld   h, l                                        ; $7cce: $65
	sub  l                                           ; $7ccf: $95
	ld   l, c                                        ; $7cd0: $69
	and  c                                           ; $7cd1: $a1
	ld   a, l                                        ; $7cd2: $7d
	rst  $10                                         ; $7cd3: $d7
	ret  nz                                          ; $7cd4: $c0

	sub  [hl]                                        ; $7cd5: $96
	rst  $38                                         ; $7cd6: $ff
	rst  $38                                         ; $7cd7: $ff
	ld   a, [bc]                                     ; $7cd8: $0a
	inc  bc                                          ; $7cd9: $03
	cp   $0d                                         ; $7cda: $fe $0d
	nop                                              ; $7cdc: $00
	ld   a, [bc]                                     ; $7cdd: $0a
	inc  e                                           ; $7cde: $1c
	inc  b                                           ; $7cdf: $04
	nop                                              ; $7ce0: $00
	nop                                              ; $7ce1: $00
	ld   bc, $8a58                                   ; $7ce2: $01 $58 $8a
	ld   d, [hl]                                     ; $7ce5: $56
	ld   l, l                                        ; $7ce6: $6d
	ld   sp, hl                                      ; $7ce7: $f9
	dec  c                                           ; $7ce8: $0d
	ld   h, [hl]                                     ; $7ce9: $66
	sub  c                                           ; $7cea: $91
	sbc  [hl]                                        ; $7ceb: $9e
	ld   d, d                                        ; $7cec: $52
	ld   e, l                                        ; $7ced: $5d
	sub  [hl]                                        ; $7cee: $96
	rst  $38                                         ; $7cef: $ff
	rst  $38                                         ; $7cf0: $ff
	dec  c                                           ; $7cf1: $0d
	nop                                              ; $7cf2: $00
	ld   a, [bc]                                     ; $7cf3: $0a
	inc  e                                           ; $7cf4: $1c
	inc  b                                           ; $7cf5: $04
	ld   [bc], a                                     ; $7cf6: $02
	ld   [bc], a                                     ; $7cf7: $02
	ld   bc, $fb61                                   ; $7cf8: $01 $61 $fb
	ld   a, b                                        ; $7cfb: $78
	ld   [hl], c                                     ; $7cfc: $71
	ld   l, l                                        ; $7cfd: $6d
	sub  a                                           ; $7cfe: $97
	sbc  [hl]                                        ; $7cff: $9e
	dec  c                                           ; $7d00: $0d
	ld   e, b                                        ; $7d01: $58
	sbc  d                                           ; $7d02: $9a
	ld   e, d                                        ; $7d03: $5a
	ld   d, b                                        ; $7d04: $50
	ld   d, d                                        ; $7d05: $52
	ld   [hl], h                                     ; $7d06: $74
	ld   l, [hl]                                     ; $7d07: $6e
	ld   a, [$000d]                                  ; $7d08: $fa $0d $00
	ld   a, [bc]                                     ; $7d0b: $0a
	rrca                                             ; $7d0c: $0f
	nop                                              ; $7d0d: $00
	ld   bc, $8901                                   ; $7d0e: $01 $01 $89
	ld   d, h                                        ; $7d11: $54
	rst  $38                                         ; $7d12: $ff
	rst  $38                                         ; $7d13: $ff
	ld   [bc], a                                     ; $7d14: $02
	and  l                                           ; $7d15: $a5
	inc  b                                           ; $7d16: $04
	add  hl, hl                                      ; $7d17: $29
	ld   a, l                                        ; $7d18: $7d
	rst  $38                                         ; $7d19: $ff
	rst  $38                                         ; $7d1a: $ff
	dec  c                                           ; $7d1b: $0d
	nop                                              ; $7d1c: $00
	ld   a, [bc]                                     ; $7d1d: $0a
	add  hl, de                                      ; $7d1e: $19
	dec  b                                           ; $7d1f: $05
	inc  bc                                          ; $7d20: $03
	ld   e, e                                        ; $7d21: $5b
	ld   h, e                                        ; $7d22: $63
	adc  h                                           ; $7d23: $8c
	ld   e, d                                        ; $7d24: $5a
	ld   [bc], a                                     ; $7d25: $02
	ld   a, [de]                                     ; $7d26: $1a
	inc  bc                                          ; $7d27: $03
	ld   l, e                                        ; $7d28: $6b
	ld   e, c                                        ; $7d29: $59
	rst  $10                                         ; $7d2a: $d7
	ret  nz                                          ; $7d2b: $c0

	nop                                              ; $7d2c: $00
	nop                                              ; $7d2d: $00
	ld   e, e                                        ; $7d2e: $5b
	ld   h, e                                        ; $7d2f: $63
	adc  h                                           ; $7d30: $8c
	ld   e, d                                        ; $7d31: $5a
	ld   [bc], a                                     ; $7d32: $02
	ld   a, [de]                                     ; $7d33: $1a
	inc  bc                                          ; $7d34: $03
	ld   l, e                                        ; $7d35: $6b
	ld   e, c                                        ; $7d36: $59
	xor  [hl]                                        ; $7d37: $ae
	cp   c                                           ; $7d38: $b9
	nop                                              ; $7d39: $00
	ld   bc, $635b                                   ; $7d3a: $01 $5b $63
	adc  h                                           ; $7d3d: $8c
	ld   e, d                                        ; $7d3e: $5a
	ld   [bc], a                                     ; $7d3f: $02
	ld   a, [de]                                     ; $7d40: $1a
	inc  bc                                          ; $7d41: $03
	ld   l, e                                        ; $7d42: $6b
	ld   e, c                                        ; $7d43: $59
	and  l                                           ; $7d44: $a5
	call $0200                                       ; $7d45: $cd $00 $02
	rlca                                             ; $7d48: $07
	ld   a, [de]                                     ; $7d49: $1a
	ld   [bc], a                                     ; $7d4a: $02
	ld   [bc], a                                     ; $7d4b: $02
	inc  bc                                          ; $7d4c: $03
	ld   bc, $2000                                   ; $7d4d: $01 $00 $20
	nop                                              ; $7d50: $00
	rlca                                             ; $7d51: $07
	ld   c, a                                        ; $7d52: $4f
	ld   [bc], a                                     ; $7d53: $02
	ld   [bc], a                                     ; $7d54: $02
	inc  bc                                          ; $7d55: $03
	ld   bc, $2001                                   ; $7d56: $01 $01 $20
	nop                                              ; $7d59: $00
	rlca                                             ; $7d5a: $07
	add  hl, sp                                      ; $7d5b: $39
	ld   [bc], a                                     ; $7d5c: $02
	ld   [bc], a                                     ; $7d5d: $02
	inc  bc                                          ; $7d5e: $03
	ld   bc, $2002                                   ; $7d5f: $01 $02 $20
	nop                                              ; $7d62: $00
	ld   b, $f7                                      ; $7d63: $06 $f7
	inc  bc                                          ; $7d65: $03
	rrca                                             ; $7d66: $0f
	nop                                              ; $7d67: $00
	ld   bc, $5b01                                   ; $7d68: $01 $01 $5b
	ld   h, e                                        ; $7d6b: $63
	adc  h                                           ; $7d6c: $8c
	ld   e, d                                        ; $7d6d: $5a
	ld   [bc], a                                     ; $7d6e: $02
	ld   a, [de]                                     ; $7d6f: $1a
	inc  bc                                          ; $7d70: $03
	ld   l, e                                        ; $7d71: $6b
	ld   e, c                                        ; $7d72: $59
	rst  $10                                         ; $7d73: $d7
	ret  nz                                          ; $7d74: $c0

	sbc  a                                           ; $7d75: $9f
	dec  c                                           ; $7d76: $0d
	nop                                              ; $7d77: $00
	ld   a, [bc]                                     ; $7d78: $0a

Jump_04f_7d79:
	dec  b                                           ; $7d79: $05
	ld   b, b                                        ; $7d7a: $40
	rst  $38                                         ; $7d7b: $ff
	inc  bc                                          ; $7d7c: $03
	rst  $38                                         ; $7d7d: $ff
	ld   bc, $2801                                   ; $7d7e: $01 $01 $28
	nop                                              ; $7d81: $00
	ld   b, $65                                      ; $7d82: $06 $65
	ld   [bc], a                                     ; $7d84: $02
	rrca                                             ; $7d85: $0f
	nop                                              ; $7d86: $00
	ld   bc, $5b01                                   ; $7d87: $01 $01 $5b
	ld   h, e                                        ; $7d8a: $63
	adc  h                                           ; $7d8b: $8c
	ld   e, d                                        ; $7d8c: $5a
	ld   [bc], a                                     ; $7d8d: $02
	ld   a, [de]                                     ; $7d8e: $1a
	inc  bc                                          ; $7d8f: $03
	ld   l, e                                        ; $7d90: $6b
	ld   e, c                                        ; $7d91: $59
	and  l                                           ; $7d92: $a5
	call $0d9f                                       ; $7d93: $cd $9f $0d
	nop                                              ; $7d96: $00
	ld   a, [bc]                                     ; $7d97: $0a
	ld   b, $65                                      ; $7d98: $06 $65
	ld   [bc], a                                     ; $7d9a: $02
	rrca                                             ; $7d9b: $0f
	nop                                              ; $7d9c: $00
	ld   bc, $5b01                                   ; $7d9d: $01 $01 $5b

Jump_04f_7da0:
	ld   h, e                                        ; $7da0: $63
	adc  h                                           ; $7da1: $8c
	ld   e, d                                        ; $7da2: $5a
	ld   [bc], a                                     ; $7da3: $02
	ld   a, [de]                                     ; $7da4: $1a
	inc  bc                                          ; $7da5: $03
	ld   l, e                                        ; $7da6: $6b
	ld   e, c                                        ; $7da7: $59
	xor  [hl]                                        ; $7da8: $ae
	cp   c                                           ; $7da9: $b9
	sbc  a                                           ; $7daa: $9f
	dec  c                                           ; $7dab: $0d
	nop                                              ; $7dac: $00
	ld   a, [bc]                                     ; $7dad: $0a
	ld   b, $65                                      ; $7dae: $06 $65
	ld   [bc], a                                     ; $7db0: $02
	inc  e                                           ; $7db1: $1c
	inc  b                                           ; $7db2: $04
	ld   [bc], a                                     ; $7db3: $02
	ld   [bc], a                                     ; $7db4: $02
	ld   bc, $c0d7                                   ; $7db5: $01 $d7 $c0
	ld   h, [hl]                                     ; $7db8: $66
	sub  c                                           ; $7db9: $91
	ld   a, b                                        ; $7dba: $78
	ld   d, d                                        ; $7dbb: $52
	ld   a, [$a50d]                                  ; $7dbc: $fa $0d $a5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7dbf: $cf
	cp   b                                           ; $7dc0: $b8
	cp   b                                           ; $7dc1: $b8
	ld   l, [hl]                                     ; $7dc2: $6e
	ld   a, [$000d]                                  ; $7dc3: $fa $0d $00
	ld   a, [bc]                                     ; $7dc6: $0a
	rrca                                             ; $7dc7: $0f
	nop                                              ; $7dc8: $00
	ld   bc, $7701                                   ; $7dc9: $01 $01 $77
	ld   [hl], c                                     ; $7dcc: $71
	ld   l, a                                        ; $7dcd: $6f
	ld   [hl], l                                     ; $7dce: $75
	sub  b                                           ; $7dcf: $90
	ld   e, b                                        ; $7dd0: $58
	ld   a, b                                        ; $7dd1: $78
	ld   h, [hl]                                     ; $7dd2: $66
	ld   l, [hl]                                     ; $7dd3: $6e
	rst  $38                                         ; $7dd4: $ff
	rst  $38                                         ; $7dd5: $ff
	dec  c                                           ; $7dd6: $0d
	nop                                              ; $7dd7: $00
	ld   a, [bc]                                     ; $7dd8: $0a
	add  hl, de                                      ; $7dd9: $19
	dec  b                                           ; $7dda: $05
	inc  bc                                          ; $7ddb: $03
	ld   h, e                                        ; $7ddc: $63
	ld   d, b                                        ; $7ddd: $50
	sbc  [hl]                                        ; $7dde: $9e
	ld   e, c                                        ; $7ddf: $59
	ld   e, c                                        ; $7de0: $59
	ld   [hl], c                                     ; $7de1: $71
	ld   [hl], h                                     ; $7de2: $74
	ld   h, c                                        ; $7de3: $61
	ld   d, d                                        ; $7de4: $52
	ld   a, [rRAMG]                                  ; $7de5: $fa $00 $00
	ld   h, e                                        ; $7de8: $63
	ld   d, b                                        ; $7de9: $50
	sbc  [hl]                                        ; $7dea: $9e
	adc  l                                           ; $7deb: $8d
	ld   a, b                                        ; $7dec: $78
	ld   h, d                                        ; $7ded: $62
	sbc  e                                           ; $7dee: $9b
	ld   h, l                                        ; $7def: $65
	ld   l, [hl]                                     ; $7df0: $6e
	ld   a, [$0100]                                  ; $7df1: $fa $00 $01
	ld   h, e                                        ; $7df4: $63
	ld   d, b                                        ; $7df5: $50
	sbc  [hl]                                        ; $7df6: $9e
	inc  b                                           ; $7df7: $04
	call nc, $e479                                   ; $7df8: $d4 $79 $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7dfb: $cf
	and  b                                           ; $7dfc: $a0
	adc  l                                           ; $7dfd: $8d
	ld   l, c                                        ; $7dfe: $69
	ld   [hl], h                                     ; $7dff: $74
	sub  d                                           ; $7e00: $92
	sbc  c                                           ; $7e01: $99
	ld   a, [$0200]                                  ; $7e02: $fa $00 $02
	rlca                                             ; $7e05: $07
	rst  $10                                         ; $7e06: $d7
	ld   [bc], a                                     ; $7e07: $02
	ld   [bc], a                                     ; $7e08: $02
	inc  bc                                          ; $7e09: $03
	ld   bc, $2000                                   ; $7e0a: $01 $00 $20
	nop                                              ; $7e0d: $00
	rlca                                             ; $7e0e: $07
	db   $f4                                         ; $7e0f: $f4
	ld   [bc], a                                     ; $7e10: $02
	ld   [bc], a                                     ; $7e11: $02
	inc  bc                                          ; $7e12: $03
	ld   bc, $2001                                   ; $7e13: $01 $01 $20
	nop                                              ; $7e16: $00
	rlca                                             ; $7e17: $07
	ld   [$0203], sp                                 ; $7e18: $08 $03 $02
	inc  bc                                          ; $7e1b: $03
	ld   bc, $2002                                   ; $7e1c: $01 $02 $20
	nop                                              ; $7e1f: $00
	ld   b, $f7                                      ; $7e20: $06 $f7
	inc  bc                                          ; $7e22: $03
	rrca                                             ; $7e23: $0f
	nop                                              ; $7e24: $00
	ld   bc, $6301                                   ; $7e25: $01 $01 $63
	ld   d, b                                        ; $7e28: $50
	sbc  [hl]                                        ; $7e29: $9e
	ld   e, c                                        ; $7e2a: $59
	ld   e, c                                        ; $7e2b: $59
	ld   [hl], c                                     ; $7e2c: $71
	ld   [hl], h                                     ; $7e2d: $74
	ld   h, c                                        ; $7e2e: $61
	ld   d, d                                        ; $7e2f: $52
	ld   a, [$000d]                                  ; $7e30: $fa $0d $00
	ld   a, [bc]                                     ; $7e33: $0a
	dec  b                                           ; $7e34: $05
	ld   b, b                                        ; $7e35: $40
	rst  $38                                         ; $7e36: $ff
	inc  bc                                          ; $7e37: $03
	rst  $38                                         ; $7e38: $ff
	ld   bc, $2801                                   ; $7e39: $01 $01 $28
	nop                                              ; $7e3c: $00
	ld   b, $21                                      ; $7e3d: $06 $21
	inc  bc                                          ; $7e3f: $03
	rrca                                             ; $7e40: $0f
	nop                                              ; $7e41: $00
	ld   bc, $6301                                   ; $7e42: $01 $01 $63
	ld   d, b                                        ; $7e45: $50
	sbc  [hl]                                        ; $7e46: $9e
	adc  l                                           ; $7e47: $8d
	ld   a, b                                        ; $7e48: $78
	ld   h, d                                        ; $7e49: $62
	sbc  e                                           ; $7e4a: $9b
	ld   h, l                                        ; $7e4b: $65
	ld   l, [hl]                                     ; $7e4c: $6e
	ld   a, [$000d]                                  ; $7e4d: $fa $0d $00
	ld   a, [bc]                                     ; $7e50: $0a
	ld   b, $21                                      ; $7e51: $06 $21
	inc  bc                                          ; $7e53: $03
	rrca                                             ; $7e54: $0f
	nop                                              ; $7e55: $00
	ld   bc, $6301                                   ; $7e56: $01 $01 $63
	ld   d, b                                        ; $7e59: $50
	sbc  [hl]                                        ; $7e5a: $9e
	inc  b                                           ; $7e5b: $04
	call nc, $e479                                   ; $7e5c: $d4 $79 $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e5f: $cf
	and  b                                           ; $7e60: $a0
	adc  l                                           ; $7e61: $8d
	ld   l, c                                        ; $7e62: $69
	ld   [hl], h                                     ; $7e63: $74
	sub  d                                           ; $7e64: $92
	sbc  c                                           ; $7e65: $99
	ld   a, [$000d]                                  ; $7e66: $fa $0d $00
	ld   a, [bc]                                     ; $7e69: $0a
	ld   b, $21                                      ; $7e6a: $06 $21
	inc  bc                                          ; $7e6c: $03
	inc  e                                           ; $7e6d: $1c
	inc  b                                           ; $7e6e: $04
	ld   [bc], a                                     ; $7e6f: $02
	ld   [bc], a                                     ; $7e70: $02
	ld   bc, $7152                                   ; $7e71: $01 $52 $71
	ld   e, l                                        ; $7e74: $5d
	ld   l, h                                        ; $7e75: $6c
	ei                                               ; $7e76: $fb
	ld   a, [$540d]                                  ; $7e77: $fa $0d $54
	sbc  b                                           ; $7e7a: $98
	sub  c                                           ; $7e7b: $91
	ld   a, [$000d]                                  ; $7e7c: $fa $0d $00
	ld   a, [bc]                                     ; $7e7f: $0a
	rrca                                             ; $7e80: $0f
	nop                                              ; $7e81: $00
	ld   bc, $d601                                   ; $7e82: $01 $01 $d6
	push af                                          ; $7e85: $f5
	sbc  [hl]                                        ; $7e86: $9e
	ld   a, h                                        ; $7e87: $7c
	sbc  e                                           ; $7e88: $9b
	ld   d, d                                        ; $7e89: $52
	sbc  l                                           ; $7e8a: $9d
	ld   a, [$000d]                                  ; $7e8b: $fa $0d $00
	ld   a, [bc]                                     ; $7e8e: $0a
	add  hl, de                                      ; $7e8f: $19
	dec  b                                           ; $7e90: $05
	inc  bc                                          ; $7e91: $03
	ld   h, l                                        ; $7e92: $65
	sub  l                                           ; $7e93: $95
	ld   l, c                                        ; $7e94: $69
	and  c                                           ; $7e95: $a1
	ld   a, l                                        ; $7e96: $7d
	sbc  [hl]                                        ; $7e97: $9e
	rst  $10                                         ; $7e98: $d7
	ret  nz                                          ; $7e99: $c0

	sub  [hl]                                        ; $7e9a: $96
	rst  $38                                         ; $7e9b: $ff
	rst  $38                                         ; $7e9c: $ff
	nop                                              ; $7e9d: $00
	nop                                              ; $7e9e: $00
	ld   l, l                                        ; $7e9f: $6d
	ld   e, c                                        ; $7ea0: $59
	ld   l, [hl]                                     ; $7ea1: $6e
	ld   e, c                                        ; $7ea2: $59
	sbc  [hl]                                        ; $7ea3: $9e
	and  l                                           ; $7ea4: $a5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ea5: $cf
	cp   b                                           ; $7ea6: $b8
	cp   b                                           ; $7ea7: $b8
	sub  [hl]                                        ; $7ea8: $96
	rst  $38                                         ; $7ea9: $ff
	rst  $38                                         ; $7eaa: $ff
	nop                                              ; $7eab: $00
	ld   bc, $9565                                   ; $7eac: $01 $65 $95
	ld   l, c                                        ; $7eaf: $69
	and  c                                           ; $7eb0: $a1
	sbc  [hl]                                        ; $7eb1: $9e
	inc  d                                           ; $7eb2: $14
	inc  b                                           ; $7eb3: $04
	ld   l, c                                        ; $7eb4: $69
	ld   a, h                                        ; $7eb5: $7c
	inc  bc                                          ; $7eb6: $03
	add  [hl]                                        ; $7eb7: $86
	rst  $10                                         ; $7eb8: $d7
	ret  nz                                          ; $7eb9: $c0

	sub  [hl]                                        ; $7eba: $96
	rst  $38                                         ; $7ebb: $ff
	rst  $38                                         ; $7ebc: $ff
	nop                                              ; $7ebd: $00
	ld   [bc], a                                     ; $7ebe: $02
	rlca                                             ; $7ebf: $07
	sub  c                                           ; $7ec0: $91
	inc  bc                                          ; $7ec1: $03
	ld   [bc], a                                     ; $7ec2: $02
	inc  bc                                          ; $7ec3: $03
	ld   bc, $2000                                   ; $7ec4: $01 $00 $20
	nop                                              ; $7ec7: $00
	rlca                                             ; $7ec8: $07
	or   a                                           ; $7ec9: $b7
	inc  bc                                          ; $7eca: $03
	ld   [bc], a                                     ; $7ecb: $02
	inc  bc                                          ; $7ecc: $03
	ld   bc, $2001                                   ; $7ecd: $01 $01 $20
	nop                                              ; $7ed0: $00
	rlca                                             ; $7ed1: $07
	push de                                          ; $7ed2: $d5
	inc  bc                                          ; $7ed3: $03
	ld   [bc], a                                     ; $7ed4: $02
	inc  bc                                          ; $7ed5: $03
	ld   bc, $2002                                   ; $7ed6: $01 $02 $20
	nop                                              ; $7ed9: $00
	ld   b, $f7                                      ; $7eda: $06 $f7
	inc  bc                                          ; $7edc: $03
	rrca                                             ; $7edd: $0f
	nop                                              ; $7ede: $00
	ld   bc, $4005                                   ; $7edf: $01 $05 $40
	rst  $38                                         ; $7ee2: $ff
	inc  bc                                          ; $7ee3: $03
	rst  $38                                         ; $7ee4: $ff
	ld   bc, $2801                                   ; $7ee5: $01 $01 $28
	nop                                              ; $7ee8: $00
	ld   bc, $9565                                   ; $7ee9: $01 $65 $95
	ld   l, c                                        ; $7eec: $69
	and  c                                           ; $7eed: $a1
	ld   a, l                                        ; $7eee: $7d
	sbc  [hl]                                        ; $7eef: $9e
	rst  $10                                         ; $7ef0: $d7
	ret  nz                                          ; $7ef1: $c0

	sub  [hl]                                        ; $7ef2: $96
	rst  $38                                         ; $7ef3: $ff
	rst  $38                                         ; $7ef4: $ff
	dec  c                                           ; $7ef5: $0d
	nop                                              ; $7ef6: $00
	ld   a, [bc]                                     ; $7ef7: $0a
	dec  c                                           ; $7ef8: $0d
	nop                                              ; $7ef9: $00
	nop                                              ; $7efa: $00
	rrca                                             ; $7efb: $0f
	nop                                              ; $7efc: $00
	ld   bc, $0b0c                                   ; $7efd: $01 $0c $0b
	ld   b, $10                                      ; $7f00: $06 $10
	inc  b                                           ; $7f02: $04
	rrca                                             ; $7f03: $0f
	nop                                              ; $7f04: $00
	ld   bc, $6d01                                   ; $7f05: $01 $01 $6d
	ld   e, c                                        ; $7f08: $59
	ld   l, [hl]                                     ; $7f09: $6e
	ld   e, c                                        ; $7f0a: $59
	sbc  [hl]                                        ; $7f0b: $9e
	and  l                                           ; $7f0c: $a5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f0d: $cf
	cp   b                                           ; $7f0e: $b8
	cp   b                                           ; $7f0f: $b8
	sub  [hl]                                        ; $7f10: $96
	rst  $38                                         ; $7f11: $ff
	rst  $38                                         ; $7f12: $ff
	dec  c                                           ; $7f13: $0d
	nop                                              ; $7f14: $00
	ld   a, [bc]                                     ; $7f15: $0a
	dec  c                                           ; $7f16: $0d
	nop                                              ; $7f17: $00
	nop                                              ; $7f18: $00
	rrca                                             ; $7f19: $0f
	nop                                              ; $7f1a: $00
	ld   bc, $0b0c                                   ; $7f1b: $01 $0c $0b
	ld   b, $10                                      ; $7f1e: $06 $10
	inc  b                                           ; $7f20: $04
	rrca                                             ; $7f21: $0f
	nop                                              ; $7f22: $00
	ld   bc, $6501                                   ; $7f23: $01 $01 $65
	sub  l                                           ; $7f26: $95
	ld   l, c                                        ; $7f27: $69
	and  c                                           ; $7f28: $a1
	sbc  [hl]                                        ; $7f29: $9e
	inc  d                                           ; $7f2a: $14
	inc  b                                           ; $7f2b: $04
	ld   l, c                                        ; $7f2c: $69
	ld   a, h                                        ; $7f2d: $7c
	inc  bc                                          ; $7f2e: $03
	add  [hl]                                        ; $7f2f: $86
	rst  $10                                         ; $7f30: $d7
	ret  nz                                          ; $7f31: $c0

	sub  [hl]                                        ; $7f32: $96
	rst  $38                                         ; $7f33: $ff
	rst  $38                                         ; $7f34: $ff
	dec  c                                           ; $7f35: $0d
	nop                                              ; $7f36: $00
	ld   a, [bc]                                     ; $7f37: $0a
	dec  c                                           ; $7f38: $0d
	nop                                              ; $7f39: $00
	nop                                              ; $7f3a: $00
	rrca                                             ; $7f3b: $0f
	nop                                              ; $7f3c: $00
	ld   bc, $0b0c                                   ; $7f3d: $01 $0c $0b
	ld   b, $10                                      ; $7f40: $06 $10
	inc  b                                           ; $7f42: $04
	inc  e                                           ; $7f43: $1c
	inc  b                                           ; $7f44: $04
	inc  bc                                          ; $7f45: $03
	inc  bc                                          ; $7f46: $03
	ld   bc, $fc90                                   ; $7f47: $01 $90 $fc
	sbc  [hl]                                        ; $7f4a: $9e
	halt                                             ; $7f4b: $76
	ld   l, a                                        ; $7f4c: $6f
	sub  a                                           ; $7f4d: $97
	ld   a, b                                        ; $7f4e: $78
	ld   d, d                                        ; $7f4f: $52
	ld   [hl], l                                     ; $7f50: $75
	sub  [hl]                                        ; $7f51: $96
	db   $fc                                         ; $7f52: $fc
	sbc  a                                           ; $7f53: $9f
	dec  c                                           ; $7f54: $0d
	nop                                              ; $7f55: $00
	ld   a, [bc]                                     ; $7f56: $0a
	inc  c                                           ; $7f57: $0c
	dec  bc                                          ; $7f58: $0b
	ld   b, $77                                      ; $7f59: $06 $77
	inc  b                                           ; $7f5b: $04
	rlca                                             ; $7f5c: $07
	ld   d, e                                        ; $7f5d: $53
	inc  b                                           ; $7f5e: $04
	inc  bc                                          ; $7f5f: $03
	rst  $38                                         ; $7f60: $ff
	ld   bc, $2002                                   ; $7f61: $01 $02 $20
	nop                                              ; $7f64: $00
	rlca                                             ; $7f65: $07
	ld   [hl], a                                     ; $7f66: $77
	inc  b                                           ; $7f67: $04
	inc  bc                                          ; $7f68: $03
	rst  $38                                         ; $7f69: $ff
	ld   bc, $2301                                   ; $7f6a: $01 $01 $23
	nop                                              ; $7f6d: $00
	inc  e                                           ; $7f6e: $1c
	inc  b                                           ; $7f6f: $04
	ld   bc, $1d01                                   ; $7f70: $01 $01 $1d
	ld   b, b                                        ; $7f73: $40
	inc  d                                           ; $7f74: $14
	inc  bc                                          ; $7f75: $03
	inc  d                                           ; $7f76: $14
	ld   bc, $2803                                   ; $7f77: $01 $03 $28
	nop                                              ; $7f7a: $00
	ld   bc, $9d54                                   ; $7f7b: $01 $54 $9d
	ld   d, b                                        ; $7f7e: $50
	sbc  [hl]                                        ; $7f7f: $9e
	ld   l, a                                        ; $7f80: $6f
	ld   d, d                                        ; $7f81: $52
	ld   [bc], a                                     ; $7f82: $02
	inc  de                                          ; $7f83: $13
	ld   l, a                                        ; $7f84: $6f
	sub  c                                           ; $7f85: $91
	and  c                                           ; $7f86: $a1
	dec  c                                           ; $7f87: $0d
	ld   e, b                                        ; $7f88: $58
	ld   h, [hl]                                     ; $7f89: $66
	sub  l                                           ; $7f8a: $95
	ld   d, h                                        ; $7f8b: $54
	ld   l, b                                        ; $7f8c: $68
	ei                                               ; $7f8d: $fb
	ld   a, [$770d]                                  ; $7f8e: $fa $0d $77
	ld   d, h                                        ; $7f91: $54
	sub  b                                           ; $7f92: $90
	ld   d, b                                        ; $7f93: $50
	sbc  b                                           ; $7f94: $98
	ld   e, d                                        ; $7f95: $5a
	halt                                             ; $7f96: $76
	ld   d, h                                        ; $7f97: $54
	ld   a, [$000d]                                  ; $7f98: $fa $0d $00
	ld   a, [bc]                                     ; $7f9b: $0a
	ld   b, $9e                                      ; $7f9c: $06 $9e
	inc  b                                           ; $7f9e: $04
	inc  e                                           ; $7f9f: $1c
	inc  b                                           ; $7fa0: $04
	nop                                              ; $7fa1: $00
	nop                                              ; $7fa2: $00
	ld   bc, $526f                                   ; $7fa3: $01 $6f $52
	ld   [bc], a                                     ; $7fa6: $02
	inc  de                                          ; $7fa7: $13
	ld   l, a                                        ; $7fa8: $6f
	sub  c                                           ; $7fa9: $91
	and  c                                           ; $7faa: $a1
	sbc  [hl]                                        ; $7fab: $9e
	dec  c                                           ; $7fac: $0d
	ld   e, b                                        ; $7fad: $58
	ld   [hl], d                                     ; $7fae: $72
	ld   e, c                                        ; $7faf: $59
	sbc  d                                           ; $7fb0: $9a
	ld   h, e                                        ; $7fb1: $63
	adc  h                                           ; $7fb2: $8c
	sbc  a                                           ; $7fb3: $9f
	dec  c                                           ; $7fb4: $0d
	nop                                              ; $7fb5: $00
	ld   a, [bc]                                     ; $7fb6: $0a
	dec  e                                           ; $7fb7: $1d
	ld   b, b                                        ; $7fb8: $40
	inc  d                                           ; $7fb9: $14
	inc  bc                                          ; $7fba: $03
	inc  d                                           ; $7fbb: $14
	ld   bc, $2802                                   ; $7fbc: $01 $02 $28
	nop                                              ; $7fbf: $00
	ld   b, $9e                                      ; $7fc0: $06 $9e
	inc  b                                           ; $7fc2: $04
	inc  e                                           ; $7fc3: $1c
	inc  b                                           ; $7fc4: $04
	inc  bc                                          ; $7fc5: $03
	inc  bc                                          ; $7fc6: $03
	dec  e                                           ; $7fc7: $1d
	ld   b, b                                        ; $7fc8: $40
	inc  d                                           ; $7fc9: $14
	inc  bc                                          ; $7fca: $03
	inc  d                                           ; $7fcb: $14
	ld   bc, $2902                                   ; $7fcc: $01 $02 $29
	nop                                              ; $7fcf: $00
	ld   bc, $526f                                   ; $7fd0: $01 $6f $52
	ld   [bc], a                                     ; $7fd3: $02
	inc  de                                          ; $7fd4: $13
	ld   l, a                                        ; $7fd5: $6f
	sub  c                                           ; $7fd6: $91
	and  c                                           ; $7fd7: $a1
	ld   a, c                                        ; $7fd8: $79
	dec  c                                           ; $7fd9: $0d
	ld   l, l                                        ; $7fda: $6d
	ld   a, h                                        ; $7fdb: $7c
	adc  [hl]                                        ; $7fdc: $8e
	and  c                                           ; $7fdd: $a1
	ld   h, [hl]                                     ; $7fde: $66
	sub  c                                           ; $7fdf: $91
	ld   a, b                                        ; $7fe0: $78
	ld   e, c                                        ; $7fe1: $59
	ld   [hl], c                                     ; $7fe2: $71
	ld   l, l                                        ; $7fe3: $6d
	rst  $38                                         ; $7fe4: $ff
	rst  $38                                         ; $7fe5: $ff
	dec  c                                           ; $7fe6: $0d
	nop                                              ; $7fe7: $00
	ld   a, [bc]                                     ; $7fe8: $0a
	nop                                              ; $7fe9: $00
	ld   bc, $9166                                   ; $7fea: $01 $66 $91
	sbc  [hl]                                        ; $7fed: $9e
	adc  h                                           ; $7fee: $8c
	ld   l, l                                        ; $7fef: $6d
	ld   a, e                                        ; $7ff0: $7b
	sbc  a                                           ; $7ff1: $9f
	dec  c                                           ; $7ff2: $0d
	nop                                              ; $7ff3: $00
	ld   a, [bc]                                     ; $7ff4: $0a
	nop                                              ; $7ff5: $00
	nop                                              ; $7ff6: $00
	inc  b                                           ; $7ff7: $04
	add  b                                           ; $7ff8: $80
	xor  e                                           ; $7ff9: $ab
	ld   bc, $2000                                   ; $7ffa: $01 $00 $20
	nop                                              ; $7ffd: $00
	ld   c, $2f                                      ; $7ffe: $0e $2f
