; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $04e", ROMX[$4000], BANK[$4e]

	sbc  a                                           ; $4000: $9f
	dec  c                                           ; $4001: $0d
	nop                                              ; $4002: $00
	ld   a, [bc]                                     ; $4003: $0a
	rlca                                             ; $4004: $07
	rst  JumpTable                                         ; $4005: $df
	nop                                              ; $4006: $00
	inc  bc                                          ; $4007: $03
	jr   nz, jr_04e_400b                             ; $4008: $20 $01

	ld   h, h                                        ; $400a: $64

jr_04e_400b:
	inc  hl                                          ; $400b: $23
	nop                                              ; $400c: $00
	rrca                                             ; $400d: $0f
	add  hl, bc                                      ; $400e: $09
	nop                                              ; $400f: $00
	ld   bc, $546b                                   ; $4010: $01 $6b $54
	ld   e, c                                        ; $4013: $59
	rst  $38                                         ; $4014: $ff
	rst  $38                                         ; $4015: $ff
	adc  h                                           ; $4016: $8c
	ld   d, b                                        ; $4017: $50
	sbc  [hl]                                        ; $4018: $9e
	dec  c                                           ; $4019: $0d
	ld   a, b                                        ; $401a: $78
	ld   a, c                                        ; $401b: $79
	ld   e, c                                        ; $401c: $59
	ld   [bc], a                                     ; $401d: $02
	ld   a, [de]                                     ; $401e: $1a
	dec  b                                           ; $401f: $05
	ldh  a, [$5a]                                    ; $4020: $f0 $5a
	ld   d, b                                        ; $4022: $50
	sbc  c                                           ; $4023: $99
	ld   a, b                                        ; $4024: $78
	sub  a                                           ; $4025: $97
	dec  c                                           ; $4026: $0d
	ld   d, d                                        ; $4027: $52
	ld   [hl], d                                     ; $4028: $72
	ld   [hl], l                                     ; $4029: $75
	sub  b                                           ; $402a: $90
	dec  b                                           ; $402b: $05
	db   $10                                         ; $402c: $10
	sbc  c                                           ; $402d: $99
	halt                                             ; $402e: $76
	ld   d, d                                        ; $402f: $52
	ld   d, d                                        ; $4030: $52
	sbc  a                                           ; $4031: $9f
	dec  c                                           ; $4032: $0d
	nop                                              ; $4033: $00
	ld   a, [bc]                                     ; $4034: $0a
	rrca                                             ; $4035: $0f
	nop                                              ; $4036: $00
	ld   bc, $7d01                                   ; $4037: $01 $01 $7d
	rst  $38                                         ; $403a: $ff
	rst  $38                                         ; $403b: $ff
	ld   a, l                                        ; $403c: $7d
	ld   d, d                                        ; $403d: $52
	sbc  a                                           ; $403e: $9f
	dec  c                                           ; $403f: $0d
	ld   d, b                                        ; $4040: $50
	sbc  b                                           ; $4041: $98
	ld   e, d                                        ; $4042: $5a
	halt                                             ; $4043: $76
	ld   d, h                                        ; $4044: $54
	ld   h, d                                        ; $4045: $62
	ld   h, h                                        ; $4046: $64
	ld   d, d                                        ; $4047: $52
	adc  h                                           ; $4048: $8c
	ld   h, a                                        ; $4049: $67
	sbc  a                                           ; $404a: $9f
	dec  c                                           ; $404b: $0d
	nop                                              ; $404c: $00
	ld   a, [bc]                                     ; $404d: $0a
	rrca                                             ; $404e: $0f
	add  hl, bc                                      ; $404f: $09
	nop                                              ; $4050: $00
	ld   bc, $9a6b                                   ; $4051: $01 $6b $9a
	ld   h, [hl]                                     ; $4054: $66
	sub  c                                           ; $4055: $91
	sbc  [hl]                                        ; $4056: $9e
	dec  b                                           ; $4057: $05
	ld   [hl], e                                     ; $4058: $73
	sub  b                                           ; $4059: $90
	inc  bc                                          ; $405a: $03
	dec  c                                           ; $405b: $0d
	ld   [bc], a                                     ; $405c: $02
	jp   Jump_04e_505a                               ; $405d: $c3 $5a $50


	sbc  c                                           ; $4060: $99
	ld   e, c                                        ; $4061: $59
	sub  a                                           ; $4062: $97
	dec  c                                           ; $4063: $0d
	ld   h, c                                        ; $4064: $61
	sbc  d                                           ; $4065: $9a
	ld   [hl], l                                     ; $4066: $75
	sbc  a                                           ; $4067: $9f
	dec  c                                           ; $4068: $0d
	nop                                              ; $4069: $00
	ld   a, [bc]                                     ; $406a: $0a
	nop                                              ; $406b: $00
	inc  e                                           ; $406c: $1c
	add  hl, bc                                      ; $406d: $09
	dec  b                                           ; $406e: $05
	ld   a, [bc]                                     ; $406f: $0a
	ld   bc, $0008                                   ; $4070: $01 $08 $00
	ld   e, l                                        ; $4073: $5d
	and  c                                           ; $4074: $a1
	sbc  a                                           ; $4075: $9f
	dec  c                                           ; $4076: $0d
	ld   a, b                                        ; $4077: $78
	and  c                                           ; $4078: $a1
	ld   l, [hl]                                     ; $4079: $6e
	ld   e, c                                        ; $407a: $59
	ld   [bc], a                                     ; $407b: $02
	ld   [hl], d                                     ; $407c: $72
	inc  bc                                          ; $407d: $03
	dec  bc                                          ; $407e: $0b
	ld   e, d                                        ; $407f: $5a
	ld   [bc], a                                     ; $4080: $02
	jr   z, jr_04e_40d5                              ; $4081: $28 $52

	ld   l, h                                        ; $4083: $6c
	sbc  a                                           ; $4084: $9f
	dec  c                                           ; $4085: $0d
	nop                                              ; $4086: $00
	ld   a, [bc]                                     ; $4087: $0a
	inc  e                                           ; $4088: $1c
	add  hl, bc                                      ; $4089: $09
	nop                                              ; $408a: $00
	nop                                              ; $408b: $00
	ld   bc, $a15a                                   ; $408c: $01 $5a $a1
	ld   a, [hl]                                     ; $408f: $7e
	sbc  c                                           ; $4090: $99
	ld   a, h                                        ; $4091: $7c
	sub  b                                           ; $4092: $90
	ld   d, d                                        ; $4093: $52
	ld   d, d                                        ; $4094: $52
	ld   e, d                                        ; $4095: $5a
	sbc  [hl]                                        ; $4096: $9e
	dec  c                                           ; $4097: $0d
	ld   l, l                                        ; $4098: $6d
	adc  h                                           ; $4099: $8c
	ld   a, c                                        ; $409a: $79
	ld   a, l                                        ; $409b: $7d
	inc  bc                                          ; $409c: $03
	and  a                                           ; $409d: $a7
	adc  l                                           ; $409e: $8d
	and  b                                           ; $409f: $a0
	halt                                             ; $40a0: $76
	sub  a                                           ; $40a1: $97
	ld   a, b                                        ; $40a2: $78
	ld   d, d                                        ; $40a3: $52
	halt                                             ; $40a4: $76
	dec  c                                           ; $40a5: $0d
	inc  b                                           ; $40a6: $04
	dec  c                                           ; $40a7: $0d
	ld   e, d                                        ; $40a8: $5a
	sub  b                                           ; $40a9: $90
	ld   l, l                                        ; $40aa: $6d
	ld   a, b                                        ; $40ab: $78
	ld   d, d                                        ; $40ac: $52
	ld   l, h                                        ; $40ad: $6c
	sbc  a                                           ; $40ae: $9f
	dec  c                                           ; $40af: $0d
	nop                                              ; $40b0: $00
	ld   a, [bc]                                     ; $40b1: $0a
	ld   bc, $0a04                                   ; $40b2: $01 $04 $0a
	ld   [bc], a                                     ; $40b5: $02
	nop                                              ; $40b6: $00
	ld   a, c                                        ; $40b7: $79
	halt                                             ; $40b8: $76
	ld   [hl], c                                     ; $40b9: $71
	ld   [hl], h                                     ; $40ba: $74
	ld   a, l                                        ; $40bb: $7d
	inc  bc                                          ; $40bc: $03
	sub  h                                           ; $40bd: $94
	dec  b                                           ; $40be: $05
	inc  sp                                          ; $40bf: $33
	ld   [bc], a                                     ; $40c0: $02
	ld   l, b                                        ; $40c1: $68
	dec  b                                           ; $40c2: $05
	ld   de, $0d90                                   ; $40c3: $11 $90 $0d
	inc  b                                           ; $40c6: $04
	ld   c, $02                                      ; $40c7: $0e $02
	jp   $0378                                       ; $40c9: $c3 $78 $03


	dec  c                                           ; $40cc: $0d
	ld   [bc], a                                     ; $40cd: $02
	jp   Jump_04e_547c                               ; $40ce: $c3 $7c $54


	ld   l, a                                        ; $40d1: $6f
	ld   l, [hl]                                     ; $40d2: $6e
	ld   e, c                                        ; $40d3: $59
	sub  a                                           ; $40d4: $97

jr_04e_40d5:
	ld   a, b                                        ; $40d5: $78
	sbc  a                                           ; $40d6: $9f
	dec  c                                           ; $40d7: $0d
	nop                                              ; $40d8: $00
	ld   a, [bc]                                     ; $40d9: $0a
	rrca                                             ; $40da: $0f
	nop                                              ; $40db: $00
	ld   bc, $7d01                                   ; $40dc: $01 $01 $7d
	rst  $38                                         ; $40df: $ff
	rst  $38                                         ; $40e0: $ff
	ld   a, l                                        ; $40e1: $7d
	ld   d, d                                        ; $40e2: $52
	sbc  a                                           ; $40e3: $9f
	dec  c                                           ; $40e4: $0d
	ld   [bc], a                                     ; $40e5: $02
	and  c                                           ; $40e6: $a1
	and  b                                           ; $40e7: $a0
	ld   [hl], d                                     ; $40e8: $72
	ld   e, a                                        ; $40e9: $5f
	adc  h                                           ; $40ea: $8c
	ld   h, a                                        ; $40eb: $67
	sbc  a                                           ; $40ec: $9f
	dec  c                                           ; $40ed: $0d
	nop                                              ; $40ee: $00
	ld   a, [bc]                                     ; $40ef: $0a
	ld   bc, $a154                                   ; $40f0: $01 $54 $a1
	sbc  a                                           ; $40f3: $9f
	dec  c                                           ; $40f4: $0d
	ld   l, e                                        ; $40f5: $6b
	sbc  d                                           ; $40f6: $9a
	ld   h, [hl]                                     ; $40f7: $66
	sub  c                                           ; $40f8: $91
	sbc  [hl]                                        ; $40f9: $9e
	dec  b                                           ; $40fa: $05
	ld   [hl], e                                     ; $40fb: $73
	sub  b                                           ; $40fc: $90
	ld   l, e                                        ; $40fd: $6b
	sbc  e                                           ; $40fe: $9b
	ld   l, e                                        ; $40ff: $6b
	sbc  e                                           ; $4100: $9b
	inc  bc                                          ; $4101: $03
	dec  c                                           ; $4102: $0d
	ld   [bc], a                                     ; $4103: $02
	jp   $0d79                                       ; $4104: $c3 $79 $0d


	sub  b                                           ; $4107: $90
	ld   [hl], a                                     ; $4108: $77
	sbc  c                                           ; $4109: $99
	ld   e, c                                        ; $410a: $59
	sub  a                                           ; $410b: $97
	ld   h, c                                        ; $410c: $61
	sbc  d                                           ; $410d: $9a
	ld   [hl], l                                     ; $410e: $75
	sbc  a                                           ; $410f: $9f
	dec  c                                           ; $4110: $0d
	nop                                              ; $4111: $00
	ld   a, [bc]                                     ; $4112: $0a
	nop                                              ; $4113: $00
	rrca                                             ; $4114: $0f
	nop                                              ; $4115: $00
	ld   bc, $5001                                   ; $4116: $01 $01 $50
	ld   a, h                                        ; $4119: $7c
	rst  $38                                         ; $411a: $ff
	rst  $38                                         ; $411b: $ff
	ld   l, a                                        ; $411c: $6f
	sub  l                                           ; $411d: $95
	ld   [hl], c                                     ; $411e: $71
	halt                                             ; $411f: $76
	dec  c                                           ; $4120: $0d
	ld   e, b                                        ; $4121: $58
	ld   [bc], a                                     ; $4122: $02
	jp   nz, Jump_04e_655b                           ; $4123: $c2 $5b $65

	ld   l, l                                        ; $4126: $6d
	ld   d, d                                        ; $4127: $52
	ld   h, c                                        ; $4128: $61
	halt                                             ; $4129: $76
	ld   e, d                                        ; $412a: $5a
	dec  c                                           ; $412b: $0d
	ld   d, b                                        ; $412c: $50
	sbc  c                                           ; $412d: $99
	and  c                                           ; $412e: $a1
	ld   [hl], l                                     ; $412f: $75
	ld   h, a                                        ; $4130: $67
	ld   e, a                                        ; $4131: $5f
	ld   [hl], a                                     ; $4132: $77
	rst  $38                                         ; $4133: $ff
	dec  c                                           ; $4134: $0d
	nop                                              ; $4135: $00
	ld   a, [bc]                                     ; $4136: $0a
	rrca                                             ; $4137: $0f
	add  hl, bc                                      ; $4138: $09
	nop                                              ; $4139: $00
	ld   bc, $ffff                                   ; $413a: $01 $ff $ff
	ld   [bc], a                                     ; $413d: $02
	jp   nz, Jump_04e_6d5b                           ; $413e: $c2 $5b $6d

	ld   d, d                                        ; $4141: $52
	ld   h, c                                        ; $4142: $61
	halt                                             ; $4143: $76
	ld   sp, hl                                      ; $4144: $f9
	dec  c                                           ; $4145: $0d
	nop                                              ; $4146: $00
	ld   a, [bc]                                     ; $4147: $0a
	jr   jr_04e_414d                                 ; $4148: $18 $03

	ld   bc, $5d63                                   ; $414a: $01 $63 $5d

jr_04e_414d:
	sub  a                                           ; $414d: $97
	ld   e, c                                        ; $414e: $59
	sub  a                                           ; $414f: $97
	ld   a, h                                        ; $4150: $7c
	inc  b                                           ; $4151: $04
	ld   d, a                                        ; $4152: $57
	inc  b                                           ; $4153: $04
	ld   h, e                                        ; $4154: $63
	and  b                                           ; $4155: $a0
	ld   e, e                                        ; $4156: $5b
	ld   e, l                                        ; $4157: $5d
	nop                                              ; $4158: $00
	nop                                              ; $4159: $00
	ld   h, a                                        ; $415a: $67
	adc  l                                           ; $415b: $8d
	sbc  d                                           ; $415c: $9a
	ld   e, c                                        ; $415d: $59
	sub  a                                           ; $415e: $97
	ld   a, h                                        ; $415f: $7c
	inc  b                                           ; $4160: $04
	ld   d, a                                        ; $4161: $57
	inc  b                                           ; $4162: $04
	ld   h, e                                        ; $4163: $63
	and  b                                           ; $4164: $a0
	ld   e, e                                        ; $4165: $5b
	ld   e, l                                        ; $4166: $5d
	nop                                              ; $4167: $00
	ld   bc, $7c6b                                   ; $4168: $01 $6b $7c
	inc  b                                           ; $416b: $04
	ld   e, $7c                                      ; $416c: $1e $7c
	inc  bc                                          ; $416e: $03
	add  d                                           ; $416f: $82
	ld   a, h                                        ; $4170: $7c
	inc  b                                           ; $4171: $04
	ld   d, a                                        ; $4172: $57
	inc  b                                           ; $4173: $04
	ld   h, e                                        ; $4174: $63
	and  b                                           ; $4175: $a0
	ld   e, e                                        ; $4176: $5b
	ld   e, l                                        ; $4177: $5d
	nop                                              ; $4178: $00
	ld   [bc], a                                     ; $4179: $02
	rlca                                             ; $417a: $07
	ld   [hl+], a                                    ; $417b: $22
	inc  bc                                          ; $417c: $03
	ld   [bc], a                                     ; $417d: $02
	ld   [bc], a                                     ; $417e: $02
	ld   bc, $2000                                   ; $417f: $01 $00 $20
	nop                                              ; $4182: $00
	rlca                                             ; $4183: $07
	ld   c, [hl]                                     ; $4184: $4e
	inc  b                                           ; $4185: $04
	ld   [bc], a                                     ; $4186: $02
	ld   [bc], a                                     ; $4187: $02
	ld   bc, $2001                                   ; $4188: $01 $01 $20
	nop                                              ; $418b: $00
	rlca                                             ; $418c: $07
	ld   [$0202], sp                                 ; $418d: $08 $02 $02
	ld   [bc], a                                     ; $4190: $02
	ld   bc, $2002                                   ; $4191: $01 $02 $20
	nop                                              ; $4194: $00
	jr   jr_04e_419a                                 ; $4195: $18 $03

	ld   bc, $ecdf                                   ; $4197: $01 $df $ec

jr_04e_419a:
	and  e                                           ; $419a: $a3
	ld   e, c                                        ; $419b: $59
	sub  a                                           ; $419c: $97
	ld   a, h                                        ; $419d: $7c
	inc  b                                           ; $419e: $04
	ld   d, a                                        ; $419f: $57
	inc  b                                           ; $41a0: $04
	ld   h, e                                        ; $41a1: $63
	and  b                                           ; $41a2: $a0
	ld   e, e                                        ; $41a3: $5b
	ld   e, l                                        ; $41a4: $5d
	nop                                              ; $41a5: $00
	nop                                              ; $41a6: $00
	xor  h                                           ; $41a7: $ac
	push af                                          ; $41a8: $f5
	bit  3, c                                        ; $41a9: $cb $59
	sub  a                                           ; $41ab: $97
	ld   a, h                                        ; $41ac: $7c
	inc  b                                           ; $41ad: $04
	ld   d, a                                        ; $41ae: $57
	inc  b                                           ; $41af: $04
	ld   h, e                                        ; $41b0: $63
	and  b                                           ; $41b1: $a0
	ld   e, e                                        ; $41b2: $5b
	ld   e, l                                        ; $41b3: $5d
	nop                                              ; $41b4: $00
	ld   bc, $7c6b                                   ; $41b5: $01 $6b $7c
	inc  b                                           ; $41b8: $04
	ld   e, $7c                                      ; $41b9: $1e $7c
	inc  bc                                          ; $41bb: $03
	add  d                                           ; $41bc: $82
	ld   a, h                                        ; $41bd: $7c
	inc  b                                           ; $41be: $04
	ld   d, a                                        ; $41bf: $57
	inc  b                                           ; $41c0: $04
	ld   h, e                                        ; $41c1: $63
	and  b                                           ; $41c2: $a0
	ld   e, e                                        ; $41c3: $5b
	ld   e, l                                        ; $41c4: $5d
	nop                                              ; $41c5: $00
	ld   [bc], a                                     ; $41c6: $02
	rlca                                             ; $41c7: $07
	ld   a, d                                        ; $41c8: $7a
	dec  b                                           ; $41c9: $05
	ld   [bc], a                                     ; $41ca: $02
	ld   [bc], a                                     ; $41cb: $02
	ld   bc, $2000                                   ; $41cc: $01 $00 $20
	nop                                              ; $41cf: $00
	rlca                                             ; $41d0: $07
	ldh  a, [c]                                      ; $41d1: $f2
	ld   [$0202], sp                                 ; $41d2: $08 $02 $02
	ld   bc, $2001                                   ; $41d5: $01 $01 $20
	nop                                              ; $41d8: $00
	rlca                                             ; $41d9: $07
	ld   d, l                                        ; $41da: $55
	ld   [bc], a                                     ; $41db: $02
	ld   [bc], a                                     ; $41dc: $02
	ld   [bc], a                                     ; $41dd: $02
	ld   bc, $2002                                   ; $41de: $01 $02 $20
	nop                                              ; $41e1: $00
	jr   jr_04e_41e7                                 ; $41e2: $18 $03

	ld   bc, $cf02                                   ; $41e4: $01 $02 $cf

jr_04e_41e7:
	dec  b                                           ; $41e7: $05
	ld   a, [de]                                     ; $41e8: $1a
	ld   e, c                                        ; $41e9: $59
	sub  a                                           ; $41ea: $97
	ld   a, h                                        ; $41eb: $7c
	inc  b                                           ; $41ec: $04
	ld   d, a                                        ; $41ed: $57
	inc  b                                           ; $41ee: $04
	ld   h, e                                        ; $41ef: $63
	and  b                                           ; $41f0: $a0
	ld   e, e                                        ; $41f1: $5b
	ld   e, l                                        ; $41f2: $5d
	nop                                              ; $41f3: $00
	nop                                              ; $41f4: $00
	and  e                                           ; $41f5: $a3
	and  l                                           ; $41f6: $a5
	db   $ec                                         ; $41f7: $ec
	cp   d                                           ; $41f8: $ba
	ld   e, c                                        ; $41f9: $59
	sub  a                                           ; $41fa: $97
	ld   a, h                                        ; $41fb: $7c
	inc  b                                           ; $41fc: $04
	ld   d, a                                        ; $41fd: $57
	inc  b                                           ; $41fe: $04
	ld   h, e                                        ; $41ff: $63
	and  b                                           ; $4200: $a0
	ld   e, e                                        ; $4201: $5b
	ld   e, l                                        ; $4202: $5d
	nop                                              ; $4203: $00
	ld   bc, $7c6b                                   ; $4204: $01 $6b $7c
	inc  b                                           ; $4207: $04
	ld   e, $7c                                      ; $4208: $1e $7c
	inc  bc                                          ; $420a: $03
	add  d                                           ; $420b: $82
	ld   a, h                                        ; $420c: $7c
	inc  b                                           ; $420d: $04
	ld   d, a                                        ; $420e: $57
	inc  b                                           ; $420f: $04
	ld   h, e                                        ; $4210: $63
	and  b                                           ; $4211: $a0
	ld   e, e                                        ; $4212: $5b
	ld   e, l                                        ; $4213: $5d
	nop                                              ; $4214: $00
	ld   [bc], a                                     ; $4215: $02
	rlca                                             ; $4216: $07
	ret  z                                           ; $4217: $c8

	rlca                                             ; $4218: $07
	ld   [bc], a                                     ; $4219: $02
	ld   [bc], a                                     ; $421a: $02
	ld   bc, $2000                                   ; $421b: $01 $00 $20
	nop                                              ; $421e: $00
	rlca                                             ; $421f: $07
	and  b                                           ; $4220: $a0
	ld   b, $02                                      ; $4221: $06 $02
	ld   [bc], a                                     ; $4223: $02
	ld   bc, $2001                                   ; $4224: $01 $01 $20
	nop                                              ; $4227: $00
	rlca                                             ; $4228: $07
	and  h                                           ; $4229: $a4
	ld   [bc], a                                     ; $422a: $02
	ld   [bc], a                                     ; $422b: $02
	ld   [bc], a                                     ; $422c: $02
	ld   bc, $2002                                   ; $422d: $01 $02 $20
	nop                                              ; $4230: $00
	jr   @+$04                                       ; $4231: $18 $02

	ld   bc, $7192                                   ; $4233: $01 $92 $71
	ld   a, a                                        ; $4236: $7f
	sbc  b                                           ; $4237: $98
	sub  d                                           ; $4238: $92
	adc  a                                           ; $4239: $8f
	sbc  c                                           ; $423a: $99
	nop                                              ; $423b: $00
	nop                                              ; $423c: $00
	ld   l, e                                        ; $423d: $6b
	ld   a, h                                        ; $423e: $7c
	inc  b                                           ; $423f: $04
	ld   e, $7c                                      ; $4240: $1e $7c
	inc  bc                                          ; $4242: $03
	add  d                                           ; $4243: $82
	ld   a, h                                        ; $4244: $7c
	inc  b                                           ; $4245: $04
	ld   d, a                                        ; $4246: $57
	inc  b                                           ; $4247: $04
	ld   h, e                                        ; $4248: $63
	and  b                                           ; $4249: $a0
	ld   e, e                                        ; $424a: $5b
	ld   e, l                                        ; $424b: $5d
	nop                                              ; $424c: $00
	ld   bc, $d307                                   ; $424d: $01 $07 $d3
	ld   [bc], a                                     ; $4250: $02
	ld   [bc], a                                     ; $4251: $02
	ld   [bc], a                                     ; $4252: $02
	ld   bc, $2000                                   ; $4253: $01 $00 $20
	nop                                              ; $4256: $00
	rlca                                             ; $4257: $07
	cp   e                                           ; $4258: $bb
	ld   bc, $0202                                   ; $4259: $01 $02 $02
	ld   bc, $2001                                   ; $425c: $01 $01 $20
	nop                                              ; $425f: $00
	rrca                                             ; $4260: $0f
	nop                                              ; $4261: $00
	ld   bc, $5001                                   ; $4262: $01 $01 $50
	sbc  [hl]                                        ; $4265: $9e
	sub  d                                           ; $4266: $92
	ld   [hl], c                                     ; $4267: $71
	ld   a, a                                        ; $4268: $7f
	sbc  b                                           ; $4269: $98
	ld   d, d                                        ; $426a: $52
	ld   d, d                                        ; $426b: $52
	ld   [hl], l                                     ; $426c: $75
	ld   h, a                                        ; $426d: $67
	sbc  a                                           ; $426e: $9f
	dec  c                                           ; $426f: $0d
	ld   [hl], l                                     ; $4270: $75
	ld   a, l                                        ; $4271: $7d
	sbc  [hl]                                        ; $4272: $9e
	inc  bc                                          ; $4273: $03
	add  e                                           ; $4274: $83
	dec  b                                           ; $4275: $05
	dec  c                                           ; $4276: $0d
	ld   h, l                                        ; $4277: $65
	adc  h                                           ; $4278: $8c
	ld   h, a                                        ; $4279: $67
	sbc  a                                           ; $427a: $9f
	dec  c                                           ; $427b: $0d
	nop                                              ; $427c: $00
	ld   a, [bc]                                     ; $427d: $0a
	rrca                                             ; $427e: $0f
	add  hl, bc                                      ; $427f: $09
	nop                                              ; $4280: $00
	ld   bc, $546b                                   ; $4281: $01 $6b $54
	ld   e, c                                        ; $4284: $59
	ld   d, d                                        ; $4285: $52
	sbc  a                                           ; $4286: $9f
	dec  c                                           ; $4287: $0d
	ld   [hl], l                                     ; $4288: $75
	sub  b                                           ; $4289: $90
	sbc  [hl]                                        ; $428a: $9e
	inc  b                                           ; $428b: $04
	di                                               ; $428c: $f3
	ld   e, d                                        ; $428d: $5a
	ld   d, b                                        ; $428e: $50
	ld   [hl], c                                     ; $428f: $71
	ld   l, l                                        ; $4290: $6d
	sub  a                                           ; $4291: $97
	dec  c                                           ; $4292: $0d
	ld   d, d                                        ; $4293: $52
	ld   [hl], d                                     ; $4294: $72
	ld   [hl], l                                     ; $4295: $75
	sub  b                                           ; $4296: $90
	dec  b                                           ; $4297: $05
	db   $10                                         ; $4298: $10
	sbc  c                                           ; $4299: $99
	halt                                             ; $429a: $76
	ld   d, d                                        ; $429b: $52
	ld   d, d                                        ; $429c: $52
	sbc  a                                           ; $429d: $9f
	dec  c                                           ; $429e: $0d
	nop                                              ; $429f: $00
	ld   a, [bc]                                     ; $42a0: $0a
	ld   bc, $9166                                   ; $42a1: $01 $66 $91
	sbc  [hl]                                        ; $42a4: $9e
	ld   e, d                                        ; $42a5: $5a
	and  c                                           ; $42a6: $a1
	ld   a, [hl]                                     ; $42a7: $7e
	sbc  d                                           ; $42a8: $9a
	sub  [hl]                                        ; $42a9: $96
	sbc  a                                           ; $42aa: $9f
	dec  c                                           ; $42ab: $0d
	nop                                              ; $42ac: $00
	ld   a, [bc]                                     ; $42ad: $0a
	nop                                              ; $42ae: $00
	rrca                                             ; $42af: $0f
	nop                                              ; $42b0: $00
	ld   bc, $6301                                   ; $42b1: $01 $01 $63

jr_04e_42b4:
	ld   e, l                                        ; $42b4: $5d
	sub  a                                           ; $42b5: $97
	ld   h, e                                        ; $42b6: $63
	and  c                                           ; $42b7: $a1
	ld   a, h                                        ; $42b8: $7c
	inc  b                                           ; $42b9: $04
	ld   l, l                                        ; $42ba: $6d
	add  [hl]                                        ; $42bb: $86
	ld   a, h                                        ; $42bc: $7c
	inc  b                                           ; $42bd: $04
	ld   d, a                                        ; $42be: $57
	inc  b                                           ; $42bf: $04
	ld   h, e                                        ; $42c0: $63
	ld   [hl], c                                     ; $42c1: $71
	ld   [hl], h                                     ; $42c2: $74
	dec  c                                           ; $42c3: $0d
	ld   [hl], a                                     ; $42c4: $77
	ld   d, h                                        ; $42c5: $54
	ld   a, b                                        ; $42c6: $78
	and  c                                           ; $42c7: $a1
	ld   [hl], l                                     ; $42c8: $75
	ld   h, l                                        ; $42c9: $65
	sub  l                                           ; $42ca: $95

jr_04e_42cb:
	ld   d, h                                        ; $42cb: $54
	ld   e, c                                        ; $42cc: $59
	ld   sp, hl                                      ; $42cd: $f9
	dec  c                                           ; $42ce: $0d
	nop                                              ; $42cf: $00
	ld   a, [bc]                                     ; $42d0: $0a
	rrca                                             ; $42d1: $0f
	add  hl, bc                                      ; $42d2: $09
	nop                                              ; $42d3: $00
	ld   bc, $8e83                                   ; $42d4: $01 $83 $8e
	sbc  [hl]                                        ; $42d7: $9e
	ld   l, e                                        ; $42d8: $6b
	ld   d, h                                        ; $42d9: $54
	ld   l, [hl]                                     ; $42da: $6e
	ld   a, b                                        ; $42db: $78
	rst  $38                                         ; $42dc: $ff
	rst  $38                                         ; $42dd: $ff
	dec  c                                           ; $42de: $0d
	nop                                              ; $42df: $00
	ld   a, [bc]                                     ; $42e0: $0a
	rlca                                             ; $42e1: $07
	cp   h                                           ; $42e2: $bc
	inc  bc                                          ; $42e3: $03
	inc  bc                                          ; $42e4: $03
	ld   de, $6401                                   ; $42e5: $11 $01 $64
	inc  hl                                          ; $42e8: $23
	nop                                              ; $42e9: $00
	rlca                                             ; $42ea: $07
	dec  bc                                          ; $42eb: $0b
	inc  b                                           ; $42ec: $04
	inc  bc                                          ; $42ed: $03
	ld   de, $9601                                   ; $42ee: $11 $01 $96
	dec  h                                           ; $42f1: $25
	nop                                              ; $42f2: $00
	ld   bc, $5d63                                   ; $42f3: $01 $63 $5d
	sub  a                                           ; $42f6: $97
	ld   e, l                                        ; $42f7: $5d
	and  c                                           ; $42f8: $a1
	ld   a, h                                        ; $42f9: $7c
	sbc  [hl]                                        ; $42fa: $9e
	ld   [$5d00], sp                                 ; $42fb: $08 $00 $5d
	and  c                                           ; $42fe: $a1
	dec  c                                           ; $42ff: $0d
	add  [hl]                                        ; $4300: $86
	ld   a, h                                        ; $4301: $7c
	inc  b                                           ; $4302: $04
	ld   d, a                                        ; $4303: $57
	inc  b                                           ; $4304: $04
	ld   h, e                                        ; $4305: $63
	ld   a, l                                        ; $4306: $7d
	sbc  [hl]                                        ; $4307: $9e
	adc  h                                           ; $4308: $8c
	ld   d, b                                        ; $4309: $50
	adc  h                                           ; $430a: $8c
	ld   d, b                                        ; $430b: $50
	dec  c                                           ; $430c: $0d
	halt                                             ; $430d: $76
	ld   d, d                                        ; $430e: $52
	ld   [hl], c                                     ; $430f: $71
	ld   l, l                                        ; $4310: $6d
	halt                                             ; $4311: $76
	ld   h, c                                        ; $4312: $61
	sbc  e                                           ; $4313: $9b
	ld   e, c                                        ; $4314: $59
	ld   a, b                                        ; $4315: $78
	sbc  a                                           ; $4316: $9f
	dec  c                                           ; $4317: $0d
	nop                                              ; $4318: $00
	ld   a, [bc]                                     ; $4319: $0a
	ld   bc, $5d76                                   ; $431a: $01 $76 $5d
	ld   a, c                                        ; $431d: $79
	ld   [bc], a                                     ; $431e: $02
	jr   z, jr_04e_4373                              ; $431f: $28 $52

	dec  b                                           ; $4321: $05
	jr   nz, jr_04e_42b4                             ; $4322: $20 $90

	ld   [bc], a                                     ; $4324: $02
	jp   nz, $7859                                   ; $4325: $c2 $59 $78

	ld   d, d                                        ; $4328: $52
	ld   h, l                                        ; $4329: $65
	rst  $38                                         ; $432a: $ff
	rst  $38                                         ; $432b: $ff
	dec  c                                           ; $432c: $0d
	ld   e, c                                        ; $432d: $59
	halt                                             ; $432e: $76
	ld   d, d                                        ; $432f: $52
	ld   [hl], c                                     ; $4330: $71
	ld   [hl], h                                     ; $4331: $74
	sbc  [hl]                                        ; $4332: $9e
	ld   d, d                                        ; $4333: $52
	ld   d, d                                        ; $4334: $52
	halt                                             ; $4335: $76
	ld   d, d                                        ; $4336: $52
	ld   d, h                                        ; $4337: $54
	dec  b                                           ; $4338: $05
	jr   nz, jr_04e_42cb                             ; $4339: $20 $90

	dec  c                                           ; $433b: $0d
	ld   [bc], a                                     ; $433c: $02
	jp   nz, $7859                                   ; $433d: $c2 $59 $78

	ld   d, d                                        ; $4340: $52
	ld   a, b                                        ; $4341: $78
	sbc  a                                           ; $4342: $9f
	dec  c                                           ; $4343: $0d
	nop                                              ; $4344: $00
	ld   a, [bc]                                     ; $4345: $0a
	ld   b, $18                                      ; $4346: $06 $18
	ld   a, [bc]                                     ; $4348: $0a
	ld   bc, $5d63                                   ; $4349: $01 $63 $5d
	sub  a                                           ; $434c: $97
	ld   e, l                                        ; $434d: $5d
	and  c                                           ; $434e: $a1
	ld   a, h                                        ; $434f: $7c
	sbc  [hl]                                        ; $4350: $9e
	ld   [$5d00], sp                                 ; $4351: $08 $00 $5d
	and  c                                           ; $4354: $a1
	dec  c                                           ; $4355: $0d
	add  [hl]                                        ; $4356: $86
	ld   a, h                                        ; $4357: $7c
	inc  b                                           ; $4358: $04
	ld   d, a                                        ; $4359: $57
	inc  b                                           ; $435a: $04
	ld   h, e                                        ; $435b: $63
	ld   a, l                                        ; $435c: $7d
	rst  $38                                         ; $435d: $ff
	rst  $38                                         ; $435e: $ff
	dec  c                                           ; $435f: $0d
	ld   d, b                                        ; $4360: $50
	adc  h                                           ; $4361: $8c
	sbc  b                                           ; $4362: $98
	sub  [hl]                                        ; $4363: $96
	ld   e, l                                        ; $4364: $5d
	ld   a, b                                        ; $4365: $78
	ld   d, d                                        ; $4366: $52
	ld   a, b                                        ; $4367: $78
	sbc  a                                           ; $4368: $9f
	dec  c                                           ; $4369: $0d
	nop                                              ; $436a: $00
	ld   a, [bc]                                     ; $436b: $0a
	ld   bc, $7190                                   ; $436c: $01 $90 $71
	halt                                             ; $436f: $76
	ld   [bc], a                                     ; $4370: $02
	ld   a, [de]                                     ; $4371: $1a
	inc  bc                                          ; $4372: $03

jr_04e_4373:
	ld   l, e                                        ; $4373: $6b
	ld   a, h                                        ; $4374: $7c
	ld   [bc], a                                     ; $4375: $02
	and  c                                           ; $4376: $a1
	inc  bc                                          ; $4377: $03
	and  b                                           ; $4378: $a0
	ld   l, a                                        ; $4379: $6f
	and  b                                           ; $437a: $a0
	dec  c                                           ; $437b: $0d
	ld   [bc], a                                     ; $437c: $02
	ld   h, l                                        ; $437d: $65
	ld   d, [hl]                                     ; $437e: $56
	ld   [hl], h                                     ; $437f: $74
	ld   [bc], a                                     ; $4380: $02
	ld   a, a                                        ; $4381: $7f
	inc  b                                           ; $4382: $04
	dec  de                                          ; $4383: $1b
	ld   h, l                                        ; $4384: $65
	ld   l, l                                        ; $4385: $6d
	adc  c                                           ; $4386: $89
	ld   d, h                                        ; $4387: $54
	ld   e, d                                        ; $4388: $5a
	ld   d, d                                        ; $4389: $52
	ld   d, d                                        ; $438a: $52
	halt                                             ; $438b: $76
	dec  c                                           ; $438c: $0d
	dec  b                                           ; $438d: $05
	pop  de                                          ; $438e: $d1
	ld   d, h                                        ; $438f: $54
	ld   l, h                                        ; $4390: $6c
	sbc  a                                           ; $4391: $9f
	dec  c                                           ; $4392: $0d
	nop                                              ; $4393: $00
	ld   a, [bc]                                     ; $4394: $0a
	ld   b, $18                                      ; $4395: $06 $18
	ld   a, [bc]                                     ; $4397: $0a
	ld   bc, $5d63                                   ; $4398: $01 $63 $5d
	sub  a                                           ; $439b: $97
	ld   e, l                                        ; $439c: $5d
	and  c                                           ; $439d: $a1
	ld   a, h                                        ; $439e: $7c
	sbc  [hl]                                        ; $439f: $9e
	ld   [$5d00], sp                                 ; $43a0: $08 $00 $5d
	and  c                                           ; $43a3: $a1
	dec  c                                           ; $43a4: $0d
	add  [hl]                                        ; $43a5: $86
	ld   a, h                                        ; $43a6: $7c
	inc  b                                           ; $43a7: $04
	ld   d, a                                        ; $43a8: $57
	inc  b                                           ; $43a9: $04
	ld   h, e                                        ; $43aa: $63
	ld   a, l                                        ; $43ab: $7d
	sbc  [hl]                                        ; $43ac: $9e
	ld   e, c                                        ; $43ad: $59
	ld   a, b                                        ; $43ae: $78
	sbc  b                                           ; $43af: $98
	ld   d, d                                        ; $43b0: $52
	ld   d, d                                        ; $43b1: $52
	dec  c                                           ; $43b2: $0d
	halt                                             ; $43b3: $76
	dec  b                                           ; $43b4: $05
	pop  de                                          ; $43b5: $d1
	ld   d, h                                        ; $43b6: $54
	ld   l, h                                        ; $43b7: $6c
	sbc  a                                           ; $43b8: $9f
	dec  c                                           ; $43b9: $0d
	nop                                              ; $43ba: $00
	ld   a, [bc]                                     ; $43bb: $0a
	ld   bc, $ca02                                   ; $43bc: $01 $02 $ca
	sub  b                                           ; $43bf: $90
	ld   l, e                                        ; $43c0: $6b
	sbc  d                                           ; $43c1: $9a
	ld   a, c                                        ; $43c2: $79
	ld   [bc], a                                     ; $43c3: $02
	add  hl, bc                                      ; $43c4: $09
	ld   d, [hl]                                     ; $43c5: $56
	sub  a                                           ; $43c6: $97
	sbc  d                                           ; $43c7: $9a
	sbc  c                                           ; $43c8: $99
	sub  [hl]                                        ; $43c9: $96
	ld   d, h                                        ; $43ca: $54
	ld   a, c                                        ; $43cb: $79
	dec  c                                           ; $43cc: $0d
	ld   e, d                                        ; $43cd: $5a
	and  c                                           ; $43ce: $a1
	ld   a, [hl]                                     ; $43cf: $7e
	sbc  c                                           ; $43d0: $99
	and  c                                           ; $43d1: $a1
	ld   l, [hl]                                     ; $43d2: $6e
	ld   l, h                                        ; $43d3: $6c
	sbc  a                                           ; $43d4: $9f
	dec  c                                           ; $43d5: $0d
	nop                                              ; $43d6: $00
	ld   a, [bc]                                     ; $43d7: $0a
	ld   b, $18                                      ; $43d8: $06 $18
	ld   a, [bc]                                     ; $43da: $0a
	rrca                                             ; $43db: $0f
	nop                                              ; $43dc: $00
	ld   bc, $6701                                   ; $43dd: $01 $01 $67

jr_04e_43e0:
	adc  l                                           ; $43e0: $8d
	sbc  d                                           ; $43e1: $9a
	ld   h, e                                        ; $43e2: $63
	and  c                                           ; $43e3: $a1
	ld   a, h                                        ; $43e4: $7c
	inc  b                                           ; $43e5: $04
	ld   l, l                                        ; $43e6: $6d
	add  [hl]                                        ; $43e7: $86
	ld   a, h                                        ; $43e8: $7c
	inc  b                                           ; $43e9: $04
	ld   d, a                                        ; $43ea: $57
	inc  b                                           ; $43eb: $04
	ld   h, e                                        ; $43ec: $63
	ld   [hl], c                                     ; $43ed: $71
	ld   [hl], h                                     ; $43ee: $74
	dec  c                                           ; $43ef: $0d
	ld   [hl], a                                     ; $43f0: $77
	ld   d, h                                        ; $43f1: $54
	ld   a, b                                        ; $43f2: $78
	and  c                                           ; $43f3: $a1
	ld   [hl], l                                     ; $43f4: $75
	ld   h, l                                        ; $43f5: $65
	sub  l                                           ; $43f6: $95

jr_04e_43f7:
	ld   d, h                                        ; $43f7: $54
	ld   e, c                                        ; $43f8: $59
	ld   sp, hl                                      ; $43f9: $f9
	dec  c                                           ; $43fa: $0d
	nop                                              ; $43fb: $00
	ld   a, [bc]                                     ; $43fc: $0a
	rrca                                             ; $43fd: $0f
	add  hl, bc                                      ; $43fe: $09
	nop                                              ; $43ff: $00
	ld   bc, $8e83                                   ; $4400: $01 $83 $8e
	sbc  [hl]                                        ; $4403: $9e
	ld   l, e                                        ; $4404: $6b
	ld   d, h                                        ; $4405: $54
	ld   l, [hl]                                     ; $4406: $6e
	ld   a, b                                        ; $4407: $78
	rst  $38                                         ; $4408: $ff
	rst  $38                                         ; $4409: $ff
	dec  c                                           ; $440a: $0d
	nop                                              ; $440b: $00
	ld   a, [bc]                                     ; $440c: $0a
	rlca                                             ; $440d: $07
	add  sp, $04                                     ; $440e: $e8 $04
	inc  bc                                          ; $4410: $03
	ld   [de], a                                     ; $4411: $12
	ld   bc, $2364                                   ; $4412: $01 $64 $23
	nop                                              ; $4415: $00
	rlca                                             ; $4416: $07
	scf                                              ; $4417: $37
	dec  b                                           ; $4418: $05
	inc  bc                                          ; $4419: $03
	ld   [de], a                                     ; $441a: $12
	ld   bc, $2596                                   ; $441b: $01 $96 $25
	nop                                              ; $441e: $00
	ld   bc, $8d67                                   ; $441f: $01 $67 $8d
	sbc  d                                           ; $4422: $9a
	ld   e, l                                        ; $4423: $5d
	and  c                                           ; $4424: $a1
	ld   a, h                                        ; $4425: $7c
	sbc  [hl]                                        ; $4426: $9e
	ld   [$5d00], sp                                 ; $4427: $08 $00 $5d
	and  c                                           ; $442a: $a1
	dec  c                                           ; $442b: $0d
	add  [hl]                                        ; $442c: $86
	ld   a, h                                        ; $442d: $7c
	inc  b                                           ; $442e: $04
	ld   d, a                                        ; $442f: $57
	inc  b                                           ; $4430: $04
	ld   h, e                                        ; $4431: $63
	ld   a, l                                        ; $4432: $7d
	sbc  [hl]                                        ; $4433: $9e
	adc  h                                           ; $4434: $8c
	ld   d, b                                        ; $4435: $50
	adc  h                                           ; $4436: $8c
	ld   d, b                                        ; $4437: $50
	dec  c                                           ; $4438: $0d
	halt                                             ; $4439: $76
	ld   d, d                                        ; $443a: $52
	ld   [hl], c                                     ; $443b: $71
	ld   l, l                                        ; $443c: $6d
	halt                                             ; $443d: $76
	ld   h, c                                        ; $443e: $61
	sbc  e                                           ; $443f: $9b
	ld   e, c                                        ; $4440: $59
	ld   a, b                                        ; $4441: $78
	sbc  a                                           ; $4442: $9f
	dec  c                                           ; $4443: $0d
	nop                                              ; $4444: $00
	ld   a, [bc]                                     ; $4445: $0a
	ld   bc, $5d76                                   ; $4446: $01 $76 $5d
	ld   a, c                                        ; $4449: $79
	ld   [bc], a                                     ; $444a: $02
	jr   z, jr_04e_449f                              ; $444b: $28 $52

	dec  b                                           ; $444d: $05
	jr   nz, jr_04e_43e0                             ; $444e: $20 $90

	ld   [bc], a                                     ; $4450: $02
	jp   nz, $7859                                   ; $4451: $c2 $59 $78

	ld   d, d                                        ; $4454: $52
	ld   h, l                                        ; $4455: $65
	rst  $38                                         ; $4456: $ff
	rst  $38                                         ; $4457: $ff
	dec  c                                           ; $4458: $0d
	ld   e, c                                        ; $4459: $59
	halt                                             ; $445a: $76
	ld   d, d                                        ; $445b: $52
	ld   [hl], c                                     ; $445c: $71
	ld   [hl], h                                     ; $445d: $74
	sbc  [hl]                                        ; $445e: $9e
	ld   d, d                                        ; $445f: $52
	ld   d, d                                        ; $4460: $52
	halt                                             ; $4461: $76
	ld   d, d                                        ; $4462: $52
	ld   d, h                                        ; $4463: $54
	dec  b                                           ; $4464: $05
	jr   nz, jr_04e_43f7                             ; $4465: $20 $90

	dec  c                                           ; $4467: $0d
	ld   [bc], a                                     ; $4468: $02
	jp   nz, $7859                                   ; $4469: $c2 $59 $78

	ld   d, d                                        ; $446c: $52
	ld   a, b                                        ; $446d: $78
	sbc  a                                           ; $446e: $9f
	dec  c                                           ; $446f: $0d
	nop                                              ; $4470: $00
	ld   a, [bc]                                     ; $4471: $0a
	ld   b, $18                                      ; $4472: $06 $18
	ld   a, [bc]                                     ; $4474: $0a
	ld   bc, $8d67                                   ; $4475: $01 $67 $8d
	sbc  d                                           ; $4478: $9a
	ld   e, l                                        ; $4479: $5d
	and  c                                           ; $447a: $a1
	ld   a, h                                        ; $447b: $7c
	sbc  [hl]                                        ; $447c: $9e
	ld   [$5d00], sp                                 ; $447d: $08 $00 $5d
	and  c                                           ; $4480: $a1
	dec  c                                           ; $4481: $0d
	add  [hl]                                        ; $4482: $86
	ld   a, h                                        ; $4483: $7c
	inc  b                                           ; $4484: $04
	ld   d, a                                        ; $4485: $57
	inc  b                                           ; $4486: $04
	ld   h, e                                        ; $4487: $63
	ld   a, l                                        ; $4488: $7d
	rst  $38                                         ; $4489: $ff
	rst  $38                                         ; $448a: $ff
	dec  c                                           ; $448b: $0d
	ld   d, b                                        ; $448c: $50
	adc  h                                           ; $448d: $8c
	sbc  b                                           ; $448e: $98
	sub  [hl]                                        ; $448f: $96
	ld   e, l                                        ; $4490: $5d
	ld   a, b                                        ; $4491: $78
	ld   d, d                                        ; $4492: $52
	ld   a, b                                        ; $4493: $78
	sbc  a                                           ; $4494: $9f
	dec  c                                           ; $4495: $0d
	nop                                              ; $4496: $00
	ld   a, [bc]                                     ; $4497: $0a
	ld   bc, $7190                                   ; $4498: $01 $90 $71
	halt                                             ; $449b: $76
	ld   [bc], a                                     ; $449c: $02
	ld   a, [de]                                     ; $449d: $1a
	inc  bc                                          ; $449e: $03

jr_04e_449f:
	ld   l, e                                        ; $449f: $6b
	ld   a, h                                        ; $44a0: $7c
	ld   [bc], a                                     ; $44a1: $02
	and  c                                           ; $44a2: $a1
	inc  bc                                          ; $44a3: $03
	and  b                                           ; $44a4: $a0
	ld   l, a                                        ; $44a5: $6f
	and  b                                           ; $44a6: $a0
	dec  c                                           ; $44a7: $0d
	ld   [bc], a                                     ; $44a8: $02
	ld   h, l                                        ; $44a9: $65
	ld   d, [hl]                                     ; $44aa: $56
	ld   [hl], h                                     ; $44ab: $74
	ld   [bc], a                                     ; $44ac: $02
	ld   a, a                                        ; $44ad: $7f
	inc  b                                           ; $44ae: $04
	dec  de                                          ; $44af: $1b
	ld   h, l                                        ; $44b0: $65
	ld   l, l                                        ; $44b1: $6d
	adc  c                                           ; $44b2: $89
	ld   d, h                                        ; $44b3: $54
	ld   e, d                                        ; $44b4: $5a
	ld   d, d                                        ; $44b5: $52
	ld   d, d                                        ; $44b6: $52
	halt                                             ; $44b7: $76
	dec  c                                           ; $44b8: $0d
	dec  b                                           ; $44b9: $05
	pop  de                                          ; $44ba: $d1
	ld   d, h                                        ; $44bb: $54
	ld   l, h                                        ; $44bc: $6c
	sbc  a                                           ; $44bd: $9f
	dec  c                                           ; $44be: $0d
	nop                                              ; $44bf: $00
	ld   a, [bc]                                     ; $44c0: $0a
	ld   b, $18                                      ; $44c1: $06 $18
	ld   a, [bc]                                     ; $44c3: $0a
	ld   bc, $8d67                                   ; $44c4: $01 $67 $8d
	sbc  d                                           ; $44c7: $9a
	ld   e, l                                        ; $44c8: $5d
	and  c                                           ; $44c9: $a1
	ld   a, h                                        ; $44ca: $7c
	sbc  [hl]                                        ; $44cb: $9e
	ld   [$5d00], sp                                 ; $44cc: $08 $00 $5d
	and  c                                           ; $44cf: $a1
	dec  c                                           ; $44d0: $0d
	add  [hl]                                        ; $44d1: $86
	ld   a, h                                        ; $44d2: $7c
	inc  b                                           ; $44d3: $04
	ld   d, a                                        ; $44d4: $57
	inc  b                                           ; $44d5: $04
	ld   h, e                                        ; $44d6: $63
	ld   a, l                                        ; $44d7: $7d
	sbc  [hl]                                        ; $44d8: $9e
	ld   e, c                                        ; $44d9: $59
	ld   a, b                                        ; $44da: $78
	sbc  b                                           ; $44db: $98
	ld   d, d                                        ; $44dc: $52
	ld   d, d                                        ; $44dd: $52
	dec  c                                           ; $44de: $0d
	halt                                             ; $44df: $76
	dec  b                                           ; $44e0: $05
	pop  de                                          ; $44e1: $d1
	ld   d, h                                        ; $44e2: $54
	ld   l, h                                        ; $44e3: $6c
	sbc  a                                           ; $44e4: $9f
	dec  c                                           ; $44e5: $0d
	nop                                              ; $44e6: $00
	ld   a, [bc]                                     ; $44e7: $0a
	ld   bc, $ca02                                   ; $44e8: $01 $02 $ca
	sub  b                                           ; $44eb: $90
	ld   l, e                                        ; $44ec: $6b
	sbc  d                                           ; $44ed: $9a
	ld   a, c                                        ; $44ee: $79
	ld   [bc], a                                     ; $44ef: $02
	add  hl, bc                                      ; $44f0: $09
	ld   d, [hl]                                     ; $44f1: $56
	sub  a                                           ; $44f2: $97
	sbc  d                                           ; $44f3: $9a
	sbc  c                                           ; $44f4: $99
	sub  [hl]                                        ; $44f5: $96
	ld   d, h                                        ; $44f6: $54
	ld   a, c                                        ; $44f7: $79
	dec  c                                           ; $44f8: $0d
	ld   e, d                                        ; $44f9: $5a
	and  c                                           ; $44fa: $a1
	ld   a, [hl]                                     ; $44fb: $7e
	sbc  c                                           ; $44fc: $99
	and  c                                           ; $44fd: $a1
	ld   l, [hl]                                     ; $44fe: $6e
	ld   l, h                                        ; $44ff: $6c
	sbc  a                                           ; $4500: $9f
	dec  c                                           ; $4501: $0d
	nop                                              ; $4502: $00
	ld   a, [bc]                                     ; $4503: $0a
	ld   b, $18                                      ; $4504: $06 $18
	ld   a, [bc]                                     ; $4506: $0a
	rrca                                             ; $4507: $0f
	nop                                              ; $4508: $00
	ld   bc, $df01                                   ; $4509: $01 $01 $df
	db   $ec                                         ; $450c: $ec
	and  e                                           ; $450d: $a3
	ld   h, e                                        ; $450e: $63
	and  c                                           ; $450f: $a1
	ld   a, h                                        ; $4510: $7c
	inc  b                                           ; $4511: $04
	ld   l, l                                        ; $4512: $6d
	add  [hl]                                        ; $4513: $86
	ld   a, h                                        ; $4514: $7c
	inc  b                                           ; $4515: $04
	ld   d, a                                        ; $4516: $57
	inc  b                                           ; $4517: $04
	ld   h, e                                        ; $4518: $63
	ld   [hl], c                                     ; $4519: $71
	ld   [hl], h                                     ; $451a: $74
	dec  c                                           ; $451b: $0d
	ld   [hl], a                                     ; $451c: $77
	ld   d, h                                        ; $451d: $54
	ld   a, b                                        ; $451e: $78
	and  c                                           ; $451f: $a1
	ld   [hl], l                                     ; $4520: $75

jr_04e_4521:
	ld   h, l                                        ; $4521: $65
	sub  l                                           ; $4522: $95
	ld   d, h                                        ; $4523: $54
	ld   e, c                                        ; $4524: $59
	ld   sp, hl                                      ; $4525: $f9
	dec  c                                           ; $4526: $0d
	nop                                              ; $4527: $00
	ld   a, [bc]                                     ; $4528: $0a
	rrca                                             ; $4529: $0f
	add  hl, bc                                      ; $452a: $09
	nop                                              ; $452b: $00
	ld   bc, $8e83                                   ; $452c: $01 $83 $8e
	sbc  [hl]                                        ; $452f: $9e
	ld   l, e                                        ; $4530: $6b
	ld   d, h                                        ; $4531: $54
	ld   l, [hl]                                     ; $4532: $6e
	ld   a, b                                        ; $4533: $78
	rst  $38                                         ; $4534: $ff
	rst  $38                                         ; $4535: $ff
	dec  c                                           ; $4536: $0d
	nop                                              ; $4537: $00
	ld   a, [bc]                                     ; $4538: $0a
	rlca                                             ; $4539: $07
	ld   [de], a                                     ; $453a: $12
	ld   b, $03                                      ; $453b: $06 $03
	inc  de                                          ; $453d: $13
	ld   bc, $2364                                   ; $453e: $01 $64 $23
	nop                                              ; $4541: $00
	rlca                                             ; $4542: $07
	ld   e, a                                        ; $4543: $5f
	ld   b, $03                                      ; $4544: $06 $03
	inc  de                                          ; $4546: $13
	ld   bc, $2596                                   ; $4547: $01 $96 $25
	nop                                              ; $454a: $00
	ld   bc, $ecdf                                   ; $454b: $01 $df $ec
	and  e                                           ; $454e: $a3
	ld   a, h                                        ; $454f: $7c
	sbc  [hl]                                        ; $4550: $9e
	ld   [$5d00], sp                                 ; $4551: $08 $00 $5d
	and  c                                           ; $4554: $a1
	dec  c                                           ; $4555: $0d
	add  [hl]                                        ; $4556: $86
	ld   a, h                                        ; $4557: $7c
	inc  b                                           ; $4558: $04
	ld   d, a                                        ; $4559: $57
	inc  b                                           ; $455a: $04
	ld   h, e                                        ; $455b: $63
	ld   a, l                                        ; $455c: $7d
	sbc  [hl]                                        ; $455d: $9e
	adc  h                                           ; $455e: $8c
	ld   d, b                                        ; $455f: $50
	adc  h                                           ; $4560: $8c
	ld   d, b                                        ; $4561: $50
	dec  c                                           ; $4562: $0d
	halt                                             ; $4563: $76
	ld   d, d                                        ; $4564: $52
	ld   [hl], c                                     ; $4565: $71
	ld   l, l                                        ; $4566: $6d
	halt                                             ; $4567: $76
	ld   h, c                                        ; $4568: $61
	sbc  e                                           ; $4569: $9b
	ld   e, c                                        ; $456a: $59
	ld   a, b                                        ; $456b: $78
	sbc  a                                           ; $456c: $9f
	dec  c                                           ; $456d: $0d
	nop                                              ; $456e: $00
	ld   a, [bc]                                     ; $456f: $0a
	ld   bc, $5d76                                   ; $4570: $01 $76 $5d
	ld   a, c                                        ; $4573: $79
	ld   [bc], a                                     ; $4574: $02
	jr   z, jr_04e_45c9                              ; $4575: $28 $52

	dec  b                                           ; $4577: $05
	jr   nz, @-$6e                                   ; $4578: $20 $90

	ld   [bc], a                                     ; $457a: $02
	jp   nz, $7859                                   ; $457b: $c2 $59 $78

	ld   d, d                                        ; $457e: $52
	ld   h, l                                        ; $457f: $65
	rst  $38                                         ; $4580: $ff
	rst  $38                                         ; $4581: $ff
	dec  c                                           ; $4582: $0d
	ld   e, c                                        ; $4583: $59
	halt                                             ; $4584: $76
	ld   d, d                                        ; $4585: $52
	ld   [hl], c                                     ; $4586: $71
	ld   [hl], h                                     ; $4587: $74
	sbc  [hl]                                        ; $4588: $9e
	ld   d, d                                        ; $4589: $52
	ld   d, d                                        ; $458a: $52
	halt                                             ; $458b: $76
	ld   d, d                                        ; $458c: $52
	ld   d, h                                        ; $458d: $54
	dec  b                                           ; $458e: $05
	jr   nz, jr_04e_4521                             ; $458f: $20 $90

	dec  c                                           ; $4591: $0d
	ld   [bc], a                                     ; $4592: $02
	jp   nz, $7859                                   ; $4593: $c2 $59 $78

	ld   d, d                                        ; $4596: $52
	ld   a, b                                        ; $4597: $78
	sbc  a                                           ; $4598: $9f
	dec  c                                           ; $4599: $0d
	nop                                              ; $459a: $00
	ld   a, [bc]                                     ; $459b: $0a
	ld   b, $18                                      ; $459c: $06 $18
	ld   a, [bc]                                     ; $459e: $0a
	ld   bc, $ecdf                                   ; $459f: $01 $df $ec
	and  e                                           ; $45a2: $a3
	ld   a, h                                        ; $45a3: $7c
	sbc  [hl]                                        ; $45a4: $9e
	ld   [$5d00], sp                                 ; $45a5: $08 $00 $5d
	and  c                                           ; $45a8: $a1
	dec  c                                           ; $45a9: $0d
	add  [hl]                                        ; $45aa: $86
	ld   a, h                                        ; $45ab: $7c
	inc  b                                           ; $45ac: $04
	ld   d, a                                        ; $45ad: $57
	inc  b                                           ; $45ae: $04
	ld   h, e                                        ; $45af: $63
	ld   a, l                                        ; $45b0: $7d
	rst  $38                                         ; $45b1: $ff
	rst  $38                                         ; $45b2: $ff
	dec  c                                           ; $45b3: $0d
	ld   d, b                                        ; $45b4: $50
	adc  h                                           ; $45b5: $8c
	sbc  b                                           ; $45b6: $98
	sub  [hl]                                        ; $45b7: $96
	ld   e, l                                        ; $45b8: $5d
	ld   a, b                                        ; $45b9: $78
	ld   d, d                                        ; $45ba: $52
	ld   a, b                                        ; $45bb: $78
	sbc  a                                           ; $45bc: $9f
	dec  c                                           ; $45bd: $0d
	nop                                              ; $45be: $00
	ld   a, [bc]                                     ; $45bf: $0a
	ld   bc, $7190                                   ; $45c0: $01 $90 $71
	halt                                             ; $45c3: $76
	ld   [bc], a                                     ; $45c4: $02
	ld   a, [de]                                     ; $45c5: $1a
	inc  bc                                          ; $45c6: $03
	ld   l, e                                        ; $45c7: $6b
	ld   a, h                                        ; $45c8: $7c

jr_04e_45c9:
	ld   [bc], a                                     ; $45c9: $02
	and  c                                           ; $45ca: $a1
	inc  bc                                          ; $45cb: $03
	and  b                                           ; $45cc: $a0
	ld   l, a                                        ; $45cd: $6f
	and  b                                           ; $45ce: $a0
	dec  c                                           ; $45cf: $0d
	ld   [bc], a                                     ; $45d0: $02
	ld   h, l                                        ; $45d1: $65
	ld   d, [hl]                                     ; $45d2: $56
	ld   [hl], h                                     ; $45d3: $74
	ld   [bc], a                                     ; $45d4: $02
	ld   a, a                                        ; $45d5: $7f
	inc  b                                           ; $45d6: $04
	dec  de                                          ; $45d7: $1b
	ld   h, l                                        ; $45d8: $65
	ld   l, l                                        ; $45d9: $6d
	adc  c                                           ; $45da: $89
	ld   d, h                                        ; $45db: $54
	ld   e, d                                        ; $45dc: $5a
	ld   d, d                                        ; $45dd: $52
	ld   d, d                                        ; $45de: $52
	halt                                             ; $45df: $76
	dec  c                                           ; $45e0: $0d
	dec  b                                           ; $45e1: $05
	pop  de                                          ; $45e2: $d1
	ld   d, h                                        ; $45e3: $54
	ld   l, h                                        ; $45e4: $6c
	sbc  a                                           ; $45e5: $9f
	dec  c                                           ; $45e6: $0d
	nop                                              ; $45e7: $00
	ld   a, [bc]                                     ; $45e8: $0a
	ld   b, $18                                      ; $45e9: $06 $18
	ld   a, [bc]                                     ; $45eb: $0a
	ld   bc, $ecdf                                   ; $45ec: $01 $df $ec
	and  e                                           ; $45ef: $a3
	ld   a, h                                        ; $45f0: $7c
	sbc  [hl]                                        ; $45f1: $9e
	ld   [$5d00], sp                                 ; $45f2: $08 $00 $5d
	and  c                                           ; $45f5: $a1
	dec  c                                           ; $45f6: $0d
	add  [hl]                                        ; $45f7: $86
	ld   a, h                                        ; $45f8: $7c
	inc  b                                           ; $45f9: $04
	ld   d, a                                        ; $45fa: $57
	inc  b                                           ; $45fb: $04
	ld   h, e                                        ; $45fc: $63
	ld   a, l                                        ; $45fd: $7d
	sbc  [hl]                                        ; $45fe: $9e
	ld   e, c                                        ; $45ff: $59
	ld   a, b                                        ; $4600: $78
	sbc  b                                           ; $4601: $98
	ld   d, d                                        ; $4602: $52
	ld   d, d                                        ; $4603: $52
	dec  c                                           ; $4604: $0d
	halt                                             ; $4605: $76
	dec  b                                           ; $4606: $05
	pop  de                                          ; $4607: $d1
	ld   d, h                                        ; $4608: $54
	ld   l, h                                        ; $4609: $6c
	sbc  a                                           ; $460a: $9f
	dec  c                                           ; $460b: $0d
	nop                                              ; $460c: $00
	ld   a, [bc]                                     ; $460d: $0a
	ld   bc, $ca02                                   ; $460e: $01 $02 $ca
	sub  b                                           ; $4611: $90
	ld   l, e                                        ; $4612: $6b
	sbc  d                                           ; $4613: $9a
	ld   a, c                                        ; $4614: $79
	ld   [bc], a                                     ; $4615: $02
	add  hl, bc                                      ; $4616: $09
	ld   d, [hl]                                     ; $4617: $56
	sub  a                                           ; $4618: $97
	sbc  d                                           ; $4619: $9a
	sbc  c                                           ; $461a: $99
	sub  [hl]                                        ; $461b: $96
	ld   d, h                                        ; $461c: $54
	ld   a, c                                        ; $461d: $79
	dec  c                                           ; $461e: $0d
	ld   e, d                                        ; $461f: $5a
	and  c                                           ; $4620: $a1
	ld   a, [hl]                                     ; $4621: $7e
	sbc  c                                           ; $4622: $99
	and  c                                           ; $4623: $a1
	ld   l, [hl]                                     ; $4624: $6e
	ld   l, h                                        ; $4625: $6c
	sbc  a                                           ; $4626: $9f
	dec  c                                           ; $4627: $0d
	nop                                              ; $4628: $00
	ld   a, [bc]                                     ; $4629: $0a
	ld   b, $18                                      ; $462a: $06 $18
	ld   a, [bc]                                     ; $462c: $0a
	rrca                                             ; $462d: $0f
	nop                                              ; $462e: $00
	ld   bc, $a301                                   ; $462f: $01 $01 $a3
	and  l                                           ; $4632: $a5
	db   $ec                                         ; $4633: $ec
	cp   d                                           ; $4634: $ba
	ld   a, h                                        ; $4635: $7c
	inc  b                                           ; $4636: $04
	ld   l, l                                        ; $4637: $6d
	add  [hl]                                        ; $4638: $86
	ld   a, h                                        ; $4639: $7c
	inc  b                                           ; $463a: $04
	ld   d, a                                        ; $463b: $57
	inc  b                                           ; $463c: $04
	ld   h, e                                        ; $463d: $63
	ld   [hl], c                                     ; $463e: $71
	ld   [hl], h                                     ; $463f: $74
	dec  c                                           ; $4640: $0d
	ld   [hl], a                                     ; $4641: $77
	ld   d, h                                        ; $4642: $54
	ld   a, b                                        ; $4643: $78
	and  c                                           ; $4644: $a1
	ld   [hl], l                                     ; $4645: $75
	ld   h, l                                        ; $4646: $65

jr_04e_4647:
	sub  l                                           ; $4647: $95
	ld   d, h                                        ; $4648: $54
	ld   e, c                                        ; $4649: $59
	ld   sp, hl                                      ; $464a: $f9
	dec  c                                           ; $464b: $0d
	nop                                              ; $464c: $00
	ld   a, [bc]                                     ; $464d: $0a
	rrca                                             ; $464e: $0f
	add  hl, bc                                      ; $464f: $09
	nop                                              ; $4650: $00
	ld   bc, $8e83                                   ; $4651: $01 $83 $8e
	sbc  [hl]                                        ; $4654: $9e
	ld   l, e                                        ; $4655: $6b
	ld   d, h                                        ; $4656: $54
	ld   l, [hl]                                     ; $4657: $6e
	ld   a, b                                        ; $4658: $78
	rst  $38                                         ; $4659: $ff
	rst  $38                                         ; $465a: $ff
	dec  c                                           ; $465b: $0d
	nop                                              ; $465c: $00
	ld   a, [bc]                                     ; $465d: $0a
	rlca                                             ; $465e: $07
	jr   c, jr_04e_4668                              ; $465f: $38 $07

	inc  bc                                          ; $4661: $03
	inc  d                                           ; $4662: $14
	ld   bc, $2364                                   ; $4663: $01 $64 $23
	nop                                              ; $4666: $00
	rlca                                             ; $4667: $07

jr_04e_4668:
	add  [hl]                                        ; $4668: $86
	rlca                                             ; $4669: $07
	inc  bc                                          ; $466a: $03
	inc  d                                           ; $466b: $14
	ld   bc, $2596                                   ; $466c: $01 $96 $25
	nop                                              ; $466f: $00
	ld   bc, $a5a3                                   ; $4670: $01 $a3 $a5
	db   $ec                                         ; $4673: $ec
	cp   d                                           ; $4674: $ba
	ld   a, h                                        ; $4675: $7c
	sbc  [hl]                                        ; $4676: $9e
	ld   [$5d00], sp                                 ; $4677: $08 $00 $5d
	and  c                                           ; $467a: $a1
	dec  c                                           ; $467b: $0d
	add  [hl]                                        ; $467c: $86
	ld   a, h                                        ; $467d: $7c
	inc  b                                           ; $467e: $04
	ld   d, a                                        ; $467f: $57
	inc  b                                           ; $4680: $04
	ld   h, e                                        ; $4681: $63
	ld   a, l                                        ; $4682: $7d
	sbc  [hl]                                        ; $4683: $9e
	adc  h                                           ; $4684: $8c
	ld   d, b                                        ; $4685: $50
	adc  h                                           ; $4686: $8c
	ld   d, b                                        ; $4687: $50
	dec  c                                           ; $4688: $0d
	halt                                             ; $4689: $76
	ld   d, d                                        ; $468a: $52
	ld   [hl], c                                     ; $468b: $71
	ld   l, l                                        ; $468c: $6d
	halt                                             ; $468d: $76
	ld   h, c                                        ; $468e: $61
	sbc  e                                           ; $468f: $9b
	ld   e, c                                        ; $4690: $59
	ld   a, b                                        ; $4691: $78
	sbc  a                                           ; $4692: $9f
	dec  c                                           ; $4693: $0d
	nop                                              ; $4694: $00
	ld   a, [bc]                                     ; $4695: $0a
	ld   bc, $5d76                                   ; $4696: $01 $76 $5d
	ld   a, c                                        ; $4699: $79
	ld   [bc], a                                     ; $469a: $02
	jr   z, jr_04e_46ef                              ; $469b: $28 $52

	dec  b                                           ; $469d: $05
	jr   nz, @-$6e                                   ; $469e: $20 $90

	ld   [bc], a                                     ; $46a0: $02
	jp   nz, $7859                                   ; $46a1: $c2 $59 $78

	ld   d, d                                        ; $46a4: $52
	ld   h, l                                        ; $46a5: $65
	rst  $38                                         ; $46a6: $ff
	rst  $38                                         ; $46a7: $ff
	dec  c                                           ; $46a8: $0d
	ld   e, c                                        ; $46a9: $59
	halt                                             ; $46aa: $76
	ld   d, d                                        ; $46ab: $52
	ld   [hl], c                                     ; $46ac: $71
	ld   [hl], h                                     ; $46ad: $74
	sbc  [hl]                                        ; $46ae: $9e
	ld   d, d                                        ; $46af: $52
	ld   d, d                                        ; $46b0: $52
	halt                                             ; $46b1: $76
	ld   d, d                                        ; $46b2: $52
	ld   d, h                                        ; $46b3: $54
	dec  b                                           ; $46b4: $05
	jr   nz, jr_04e_4647                             ; $46b5: $20 $90

	dec  c                                           ; $46b7: $0d
	ld   [bc], a                                     ; $46b8: $02
	jp   nz, $7859                                   ; $46b9: $c2 $59 $78

	ld   d, d                                        ; $46bc: $52
	ld   a, b                                        ; $46bd: $78
	sbc  a                                           ; $46be: $9f
	dec  c                                           ; $46bf: $0d
	nop                                              ; $46c0: $00
	ld   a, [bc]                                     ; $46c1: $0a
	ld   b, $18                                      ; $46c2: $06 $18
	ld   a, [bc]                                     ; $46c4: $0a
	ld   bc, $a5a3                                   ; $46c5: $01 $a3 $a5
	db   $ec                                         ; $46c8: $ec
	cp   d                                           ; $46c9: $ba
	ld   a, h                                        ; $46ca: $7c
	sbc  [hl]                                        ; $46cb: $9e
	ld   [$5d00], sp                                 ; $46cc: $08 $00 $5d
	and  c                                           ; $46cf: $a1
	dec  c                                           ; $46d0: $0d
	add  [hl]                                        ; $46d1: $86
	ld   a, h                                        ; $46d2: $7c
	inc  b                                           ; $46d3: $04
	ld   d, a                                        ; $46d4: $57
	inc  b                                           ; $46d5: $04
	ld   h, e                                        ; $46d6: $63
	ld   a, l                                        ; $46d7: $7d
	rst  $38                                         ; $46d8: $ff
	rst  $38                                         ; $46d9: $ff
	dec  c                                           ; $46da: $0d
	ld   d, b                                        ; $46db: $50
	adc  h                                           ; $46dc: $8c
	sbc  b                                           ; $46dd: $98
	sub  [hl]                                        ; $46de: $96
	ld   e, l                                        ; $46df: $5d
	ld   a, b                                        ; $46e0: $78
	ld   d, d                                        ; $46e1: $52
	ld   a, b                                        ; $46e2: $78
	sbc  a                                           ; $46e3: $9f
	dec  c                                           ; $46e4: $0d
	nop                                              ; $46e5: $00
	ld   a, [bc]                                     ; $46e6: $0a
	ld   bc, $7190                                   ; $46e7: $01 $90 $71
	halt                                             ; $46ea: $76
	ld   [bc], a                                     ; $46eb: $02
	ld   a, [de]                                     ; $46ec: $1a
	inc  bc                                          ; $46ed: $03
	ld   l, e                                        ; $46ee: $6b

jr_04e_46ef:
	ld   a, h                                        ; $46ef: $7c
	ld   [bc], a                                     ; $46f0: $02
	and  c                                           ; $46f1: $a1
	inc  bc                                          ; $46f2: $03
	and  b                                           ; $46f3: $a0
	ld   l, a                                        ; $46f4: $6f
	and  b                                           ; $46f5: $a0
	dec  c                                           ; $46f6: $0d
	ld   [bc], a                                     ; $46f7: $02
	ld   h, l                                        ; $46f8: $65
	ld   d, [hl]                                     ; $46f9: $56
	ld   [hl], h                                     ; $46fa: $74
	ld   [bc], a                                     ; $46fb: $02
	ld   a, a                                        ; $46fc: $7f
	inc  b                                           ; $46fd: $04
	dec  de                                          ; $46fe: $1b
	ld   h, l                                        ; $46ff: $65
	ld   l, l                                        ; $4700: $6d
	adc  c                                           ; $4701: $89
	ld   d, h                                        ; $4702: $54
	ld   e, d                                        ; $4703: $5a
	ld   d, d                                        ; $4704: $52
	ld   d, d                                        ; $4705: $52
	halt                                             ; $4706: $76
	dec  c                                           ; $4707: $0d
	dec  b                                           ; $4708: $05
	pop  de                                          ; $4709: $d1
	ld   d, h                                        ; $470a: $54
	ld   l, h                                        ; $470b: $6c
	sbc  a                                           ; $470c: $9f
	dec  c                                           ; $470d: $0d
	nop                                              ; $470e: $00
	ld   a, [bc]                                     ; $470f: $0a
	ld   b, $18                                      ; $4710: $06 $18
	ld   a, [bc]                                     ; $4712: $0a
	ld   bc, $a5a3                                   ; $4713: $01 $a3 $a5
	db   $ec                                         ; $4716: $ec
	cp   d                                           ; $4717: $ba
	ld   a, h                                        ; $4718: $7c
	sbc  [hl]                                        ; $4719: $9e
	ld   [$5d00], sp                                 ; $471a: $08 $00 $5d
	and  c                                           ; $471d: $a1
	dec  c                                           ; $471e: $0d
	add  [hl]                                        ; $471f: $86
	ld   a, h                                        ; $4720: $7c
	inc  b                                           ; $4721: $04
	ld   d, a                                        ; $4722: $57
	inc  b                                           ; $4723: $04
	ld   h, e                                        ; $4724: $63
	ld   a, l                                        ; $4725: $7d
	sbc  [hl]                                        ; $4726: $9e
	ld   e, c                                        ; $4727: $59
	ld   a, b                                        ; $4728: $78
	sbc  b                                           ; $4729: $98
	ld   d, d                                        ; $472a: $52
	ld   d, d                                        ; $472b: $52
	dec  c                                           ; $472c: $0d
	halt                                             ; $472d: $76
	dec  b                                           ; $472e: $05
	pop  de                                          ; $472f: $d1
	ld   d, h                                        ; $4730: $54
	ld   l, h                                        ; $4731: $6c
	sbc  a                                           ; $4732: $9f
	dec  c                                           ; $4733: $0d
	nop                                              ; $4734: $00
	ld   a, [bc]                                     ; $4735: $0a
	ld   bc, $ca02                                   ; $4736: $01 $02 $ca
	sub  b                                           ; $4739: $90
	ld   l, e                                        ; $473a: $6b
	sbc  d                                           ; $473b: $9a
	ld   a, c                                        ; $473c: $79
	ld   [bc], a                                     ; $473d: $02
	add  hl, bc                                      ; $473e: $09
	ld   d, [hl]                                     ; $473f: $56
	sub  a                                           ; $4740: $97
	sbc  d                                           ; $4741: $9a
	sbc  c                                           ; $4742: $99
	sub  [hl]                                        ; $4743: $96
	ld   d, h                                        ; $4744: $54
	ld   a, c                                        ; $4745: $79
	dec  c                                           ; $4746: $0d
	ld   e, d                                        ; $4747: $5a
	and  c                                           ; $4748: $a1
	ld   a, [hl]                                     ; $4749: $7e
	sbc  c                                           ; $474a: $99
	and  c                                           ; $474b: $a1
	ld   l, [hl]                                     ; $474c: $6e
	ld   l, h                                        ; $474d: $6c
	sbc  a                                           ; $474e: $9f
	dec  c                                           ; $474f: $0d
	nop                                              ; $4750: $00
	ld   a, [bc]                                     ; $4751: $0a
	ld   b, $18                                      ; $4752: $06 $18
	ld   a, [bc]                                     ; $4754: $0a
	rrca                                             ; $4755: $0f
	nop                                              ; $4756: $00
	ld   bc, $0201                                   ; $4757: $01 $01 $02

jr_04e_475a:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $475a: $cf
	dec  b                                           ; $475b: $05
	ld   a, [de]                                     ; $475c: $1a
	ld   h, e                                        ; $475d: $63
	and  c                                           ; $475e: $a1
	ld   a, h                                        ; $475f: $7c
	inc  b                                           ; $4760: $04
	ld   l, l                                        ; $4761: $6d
	add  [hl]                                        ; $4762: $86
	ld   a, h                                        ; $4763: $7c
	inc  b                                           ; $4764: $04
	ld   d, a                                        ; $4765: $57
	inc  b                                           ; $4766: $04
	ld   h, e                                        ; $4767: $63
	ld   [hl], c                                     ; $4768: $71
	ld   [hl], h                                     ; $4769: $74
	dec  c                                           ; $476a: $0d
	ld   [hl], a                                     ; $476b: $77
	ld   d, h                                        ; $476c: $54
	ld   a, b                                        ; $476d: $78
	and  c                                           ; $476e: $a1
	ld   [hl], l                                     ; $476f: $75
	ld   h, l                                        ; $4770: $65

jr_04e_4771:
	sub  l                                           ; $4771: $95
	ld   d, h                                        ; $4772: $54
	ld   e, c                                        ; $4773: $59
	ld   sp, hl                                      ; $4774: $f9
	dec  c                                           ; $4775: $0d
	nop                                              ; $4776: $00
	ld   a, [bc]                                     ; $4777: $0a
	rrca                                             ; $4778: $0f
	add  hl, bc                                      ; $4779: $09
	nop                                              ; $477a: $00
	ld   bc, $8e83                                   ; $477b: $01 $83 $8e
	sbc  [hl]                                        ; $477e: $9e
	ld   l, e                                        ; $477f: $6b
	ld   d, h                                        ; $4780: $54
	ld   l, [hl]                                     ; $4781: $6e
	ld   a, b                                        ; $4782: $78
	rst  $38                                         ; $4783: $ff
	rst  $38                                         ; $4784: $ff
	dec  c                                           ; $4785: $0d
	nop                                              ; $4786: $00
	ld   a, [bc]                                     ; $4787: $0a
	rlca                                             ; $4788: $07
	ld   h, d                                        ; $4789: $62
	ld   [$1503], sp                                 ; $478a: $08 $03 $15
	ld   bc, $2364                                   ; $478d: $01 $64 $23
	nop                                              ; $4790: $00
	rlca                                             ; $4791: $07
	or   b                                           ; $4792: $b0
	ld   [$1503], sp                                 ; $4793: $08 $03 $15
	ld   bc, $2596                                   ; $4796: $01 $96 $25
	nop                                              ; $4799: $00
	ld   bc, $cf02                                   ; $479a: $01 $02 $cf
	dec  b                                           ; $479d: $05
	ld   a, [de]                                     ; $479e: $1a
	ld   a, h                                        ; $479f: $7c
	sbc  [hl]                                        ; $47a0: $9e
	ld   [$5d00], sp                                 ; $47a1: $08 $00 $5d
	and  c                                           ; $47a4: $a1
	dec  c                                           ; $47a5: $0d
	add  [hl]                                        ; $47a6: $86
	ld   a, h                                        ; $47a7: $7c
	inc  b                                           ; $47a8: $04
	ld   d, a                                        ; $47a9: $57
	inc  b                                           ; $47aa: $04
	ld   h, e                                        ; $47ab: $63
	ld   a, l                                        ; $47ac: $7d
	sbc  [hl]                                        ; $47ad: $9e
	adc  h                                           ; $47ae: $8c
	ld   d, b                                        ; $47af: $50
	adc  h                                           ; $47b0: $8c
	ld   d, b                                        ; $47b1: $50
	dec  c                                           ; $47b2: $0d
	halt                                             ; $47b3: $76
	ld   d, d                                        ; $47b4: $52
	ld   [hl], c                                     ; $47b5: $71
	ld   l, l                                        ; $47b6: $6d
	halt                                             ; $47b7: $76
	ld   h, c                                        ; $47b8: $61
	sbc  e                                           ; $47b9: $9b
	ld   e, c                                        ; $47ba: $59
	ld   a, b                                        ; $47bb: $78
	sbc  a                                           ; $47bc: $9f
	dec  c                                           ; $47bd: $0d
	nop                                              ; $47be: $00
	ld   a, [bc]                                     ; $47bf: $0a
	ld   bc, $5d76                                   ; $47c0: $01 $76 $5d
	ld   a, c                                        ; $47c3: $79
	ld   [bc], a                                     ; $47c4: $02
	jr   z, jr_04e_4819                              ; $47c5: $28 $52

	dec  b                                           ; $47c7: $05
	jr   nz, jr_04e_475a                             ; $47c8: $20 $90

	ld   [bc], a                                     ; $47ca: $02
	jp   nz, $7859                                   ; $47cb: $c2 $59 $78

	ld   d, d                                        ; $47ce: $52
	ld   h, l                                        ; $47cf: $65
	rst  $38                                         ; $47d0: $ff
	rst  $38                                         ; $47d1: $ff
	dec  c                                           ; $47d2: $0d
	ld   e, c                                        ; $47d3: $59
	halt                                             ; $47d4: $76
	ld   d, d                                        ; $47d5: $52
	ld   [hl], c                                     ; $47d6: $71
	ld   [hl], h                                     ; $47d7: $74
	sbc  [hl]                                        ; $47d8: $9e
	ld   d, d                                        ; $47d9: $52
	ld   d, d                                        ; $47da: $52
	halt                                             ; $47db: $76
	ld   d, d                                        ; $47dc: $52
	ld   d, h                                        ; $47dd: $54
	dec  b                                           ; $47de: $05
	jr   nz, jr_04e_4771                             ; $47df: $20 $90

	dec  c                                           ; $47e1: $0d
	ld   [bc], a                                     ; $47e2: $02
	jp   nz, $7859                                   ; $47e3: $c2 $59 $78

	ld   d, d                                        ; $47e6: $52
	ld   a, b                                        ; $47e7: $78
	sbc  a                                           ; $47e8: $9f
	dec  c                                           ; $47e9: $0d
	nop                                              ; $47ea: $00
	ld   a, [bc]                                     ; $47eb: $0a
	ld   b, $18                                      ; $47ec: $06 $18
	ld   a, [bc]                                     ; $47ee: $0a
	ld   bc, $cf02                                   ; $47ef: $01 $02 $cf
	dec  b                                           ; $47f2: $05
	ld   a, [de]                                     ; $47f3: $1a
	ld   a, h                                        ; $47f4: $7c
	sbc  [hl]                                        ; $47f5: $9e
	ld   [$5d00], sp                                 ; $47f6: $08 $00 $5d
	and  c                                           ; $47f9: $a1
	dec  c                                           ; $47fa: $0d
	add  [hl]                                        ; $47fb: $86
	ld   a, h                                        ; $47fc: $7c
	inc  b                                           ; $47fd: $04
	ld   d, a                                        ; $47fe: $57
	inc  b                                           ; $47ff: $04
	ld   h, e                                        ; $4800: $63
	ld   a, l                                        ; $4801: $7d
	rst  $38                                         ; $4802: $ff
	rst  $38                                         ; $4803: $ff
	dec  c                                           ; $4804: $0d
	ld   d, b                                        ; $4805: $50
	adc  h                                           ; $4806: $8c
	sbc  b                                           ; $4807: $98
	sub  [hl]                                        ; $4808: $96
	ld   e, l                                        ; $4809: $5d
	ld   a, b                                        ; $480a: $78
	ld   d, d                                        ; $480b: $52
	ld   a, b                                        ; $480c: $78
	sbc  a                                           ; $480d: $9f
	dec  c                                           ; $480e: $0d
	nop                                              ; $480f: $00
	ld   a, [bc]                                     ; $4810: $0a
	ld   bc, $7190                                   ; $4811: $01 $90 $71
	halt                                             ; $4814: $76
	ld   [bc], a                                     ; $4815: $02
	ld   a, [de]                                     ; $4816: $1a
	inc  bc                                          ; $4817: $03
	ld   l, e                                        ; $4818: $6b

jr_04e_4819:
	ld   a, h                                        ; $4819: $7c
	ld   [bc], a                                     ; $481a: $02
	and  c                                           ; $481b: $a1
	inc  bc                                          ; $481c: $03
	and  b                                           ; $481d: $a0
	ld   l, a                                        ; $481e: $6f
	and  b                                           ; $481f: $a0
	dec  c                                           ; $4820: $0d
	ld   [bc], a                                     ; $4821: $02
	ld   h, l                                        ; $4822: $65
	ld   d, [hl]                                     ; $4823: $56
	ld   [hl], h                                     ; $4824: $74
	ld   [bc], a                                     ; $4825: $02
	ld   a, a                                        ; $4826: $7f
	inc  b                                           ; $4827: $04
	dec  de                                          ; $4828: $1b
	ld   h, l                                        ; $4829: $65
	ld   l, l                                        ; $482a: $6d
	adc  c                                           ; $482b: $89
	ld   d, h                                        ; $482c: $54
	ld   e, d                                        ; $482d: $5a
	ld   d, d                                        ; $482e: $52
	ld   d, d                                        ; $482f: $52
	halt                                             ; $4830: $76
	dec  c                                           ; $4831: $0d
	dec  b                                           ; $4832: $05
	pop  de                                          ; $4833: $d1
	ld   d, h                                        ; $4834: $54
	ld   l, h                                        ; $4835: $6c
	sbc  a                                           ; $4836: $9f
	dec  c                                           ; $4837: $0d
	nop                                              ; $4838: $00
	ld   a, [bc]                                     ; $4839: $0a
	ld   b, $18                                      ; $483a: $06 $18
	ld   a, [bc]                                     ; $483c: $0a
	ld   bc, $cf02                                   ; $483d: $01 $02 $cf
	dec  b                                           ; $4840: $05
	ld   a, [de]                                     ; $4841: $1a
	ld   a, h                                        ; $4842: $7c
	sbc  [hl]                                        ; $4843: $9e
	ld   [$5d00], sp                                 ; $4844: $08 $00 $5d
	and  c                                           ; $4847: $a1
	dec  c                                           ; $4848: $0d
	add  [hl]                                        ; $4849: $86
	ld   a, h                                        ; $484a: $7c
	inc  b                                           ; $484b: $04
	ld   d, a                                        ; $484c: $57
	inc  b                                           ; $484d: $04
	ld   h, e                                        ; $484e: $63
	ld   a, l                                        ; $484f: $7d
	sbc  [hl]                                        ; $4850: $9e
	ld   e, c                                        ; $4851: $59
	ld   a, b                                        ; $4852: $78
	sbc  b                                           ; $4853: $98
	ld   d, d                                        ; $4854: $52
	ld   d, d                                        ; $4855: $52
	dec  c                                           ; $4856: $0d
	halt                                             ; $4857: $76
	dec  b                                           ; $4858: $05
	pop  de                                          ; $4859: $d1
	ld   d, h                                        ; $485a: $54
	ld   l, h                                        ; $485b: $6c
	sbc  a                                           ; $485c: $9f
	dec  c                                           ; $485d: $0d
	nop                                              ; $485e: $00
	ld   a, [bc]                                     ; $485f: $0a
	ld   bc, $ca02                                   ; $4860: $01 $02 $ca
	sub  b                                           ; $4863: $90
	ld   l, e                                        ; $4864: $6b
	sbc  d                                           ; $4865: $9a
	ld   a, c                                        ; $4866: $79
	ld   [bc], a                                     ; $4867: $02
	add  hl, bc                                      ; $4868: $09
	ld   d, [hl]                                     ; $4869: $56
	sub  a                                           ; $486a: $97
	sbc  d                                           ; $486b: $9a
	sbc  c                                           ; $486c: $99
	sub  [hl]                                        ; $486d: $96
	ld   d, h                                        ; $486e: $54
	ld   a, c                                        ; $486f: $79
	dec  c                                           ; $4870: $0d
	ld   e, d                                        ; $4871: $5a
	and  c                                           ; $4872: $a1
	ld   a, [hl]                                     ; $4873: $7e
	sbc  c                                           ; $4874: $99
	and  c                                           ; $4875: $a1
	ld   l, [hl]                                     ; $4876: $6e
	ld   l, h                                        ; $4877: $6c
	sbc  a                                           ; $4878: $9f
	dec  c                                           ; $4879: $0d
	nop                                              ; $487a: $00
	ld   a, [bc]                                     ; $487b: $0a
	ld   b, $18                                      ; $487c: $06 $18
	ld   a, [bc]                                     ; $487e: $0a
	rrca                                             ; $487f: $0f
	nop                                              ; $4880: $00
	ld   bc, $ac01                                   ; $4881: $01 $01 $ac
	push af                                          ; $4884: $f5
	bit  4, e                                        ; $4885: $cb $63
	and  c                                           ; $4887: $a1
	ld   a, h                                        ; $4888: $7c
	inc  b                                           ; $4889: $04
	ld   l, l                                        ; $488a: $6d
	add  [hl]                                        ; $488b: $86
	ld   a, h                                        ; $488c: $7c
	inc  b                                           ; $488d: $04
	ld   d, a                                        ; $488e: $57
	inc  b                                           ; $488f: $04
	ld   h, e                                        ; $4890: $63
	ld   [hl], c                                     ; $4891: $71
	ld   [hl], h                                     ; $4892: $74
	dec  c                                           ; $4893: $0d
	ld   [hl], a                                     ; $4894: $77
	ld   d, h                                        ; $4895: $54
	ld   a, b                                        ; $4896: $78
	and  c                                           ; $4897: $a1
	ld   [hl], l                                     ; $4898: $75

jr_04e_4899:
	ld   h, l                                        ; $4899: $65
	sub  l                                           ; $489a: $95
	ld   d, h                                        ; $489b: $54
	ld   e, c                                        ; $489c: $59
	ld   sp, hl                                      ; $489d: $f9
	dec  c                                           ; $489e: $0d
	nop                                              ; $489f: $00
	ld   a, [bc]                                     ; $48a0: $0a
	rrca                                             ; $48a1: $0f
	add  hl, bc                                      ; $48a2: $09
	nop                                              ; $48a3: $00
	ld   bc, $8e83                                   ; $48a4: $01 $83 $8e
	sbc  [hl]                                        ; $48a7: $9e
	ld   l, e                                        ; $48a8: $6b
	ld   d, h                                        ; $48a9: $54
	ld   l, [hl]                                     ; $48aa: $6e
	ld   a, b                                        ; $48ab: $78
	rst  $38                                         ; $48ac: $ff
	rst  $38                                         ; $48ad: $ff
	dec  c                                           ; $48ae: $0d
	nop                                              ; $48af: $00
	ld   a, [bc]                                     ; $48b0: $0a
	rlca                                             ; $48b1: $07
	adc  d                                           ; $48b2: $8a
	add  hl, bc                                      ; $48b3: $09
	inc  bc                                          ; $48b4: $03
	ld   d, $01                                      ; $48b5: $16 $01
	ld   h, h                                        ; $48b7: $64
	inc  hl                                          ; $48b8: $23
	nop                                              ; $48b9: $00
	rlca                                             ; $48ba: $07
	rst  $10                                         ; $48bb: $d7
	add  hl, bc                                      ; $48bc: $09
	inc  bc                                          ; $48bd: $03
	ld   d, $01                                      ; $48be: $16 $01
	sub  [hl]                                        ; $48c0: $96
	dec  h                                           ; $48c1: $25
	nop                                              ; $48c2: $00
	ld   bc, $f5ac                                   ; $48c3: $01 $ac $f5
	bit  7, h                                        ; $48c6: $cb $7c
	sbc  [hl]                                        ; $48c8: $9e
	ld   [$5d00], sp                                 ; $48c9: $08 $00 $5d
	and  c                                           ; $48cc: $a1
	dec  c                                           ; $48cd: $0d
	add  [hl]                                        ; $48ce: $86
	ld   a, h                                        ; $48cf: $7c
	inc  b                                           ; $48d0: $04
	ld   d, a                                        ; $48d1: $57
	inc  b                                           ; $48d2: $04
	ld   h, e                                        ; $48d3: $63
	ld   a, l                                        ; $48d4: $7d
	sbc  [hl]                                        ; $48d5: $9e
	adc  h                                           ; $48d6: $8c
	ld   d, b                                        ; $48d7: $50
	adc  h                                           ; $48d8: $8c
	ld   d, b                                        ; $48d9: $50
	dec  c                                           ; $48da: $0d
	halt                                             ; $48db: $76
	ld   d, d                                        ; $48dc: $52
	ld   [hl], c                                     ; $48dd: $71
	ld   l, l                                        ; $48de: $6d
	halt                                             ; $48df: $76
	ld   h, c                                        ; $48e0: $61
	sbc  e                                           ; $48e1: $9b
	ld   e, c                                        ; $48e2: $59
	ld   a, b                                        ; $48e3: $78
	sbc  a                                           ; $48e4: $9f
	dec  c                                           ; $48e5: $0d
	nop                                              ; $48e6: $00
	ld   a, [bc]                                     ; $48e7: $0a
	ld   bc, $5d76                                   ; $48e8: $01 $76 $5d
	ld   a, c                                        ; $48eb: $79
	ld   [bc], a                                     ; $48ec: $02
	jr   z, jr_04e_4941                              ; $48ed: $28 $52

	dec  b                                           ; $48ef: $05
	jr   nz, @-$6e                                   ; $48f0: $20 $90

	ld   [bc], a                                     ; $48f2: $02
	jp   nz, $7859                                   ; $48f3: $c2 $59 $78

	ld   d, d                                        ; $48f6: $52
	ld   h, l                                        ; $48f7: $65
	rst  $38                                         ; $48f8: $ff
	rst  $38                                         ; $48f9: $ff
	dec  c                                           ; $48fa: $0d
	ld   e, c                                        ; $48fb: $59
	halt                                             ; $48fc: $76
	ld   d, d                                        ; $48fd: $52
	ld   [hl], c                                     ; $48fe: $71
	ld   [hl], h                                     ; $48ff: $74
	sbc  [hl]                                        ; $4900: $9e
	ld   d, d                                        ; $4901: $52
	ld   d, d                                        ; $4902: $52
	halt                                             ; $4903: $76
	ld   d, d                                        ; $4904: $52
	ld   d, h                                        ; $4905: $54
	dec  b                                           ; $4906: $05
	jr   nz, jr_04e_4899                             ; $4907: $20 $90

	dec  c                                           ; $4909: $0d
	ld   [bc], a                                     ; $490a: $02
	jp   nz, $7859                                   ; $490b: $c2 $59 $78

	ld   d, d                                        ; $490e: $52
	ld   a, b                                        ; $490f: $78
	sbc  a                                           ; $4910: $9f
	dec  c                                           ; $4911: $0d
	nop                                              ; $4912: $00
	ld   a, [bc]                                     ; $4913: $0a
	ld   b, $18                                      ; $4914: $06 $18
	ld   a, [bc]                                     ; $4916: $0a
	ld   bc, $f5ac                                   ; $4917: $01 $ac $f5
	bit  7, h                                        ; $491a: $cb $7c
	sbc  [hl]                                        ; $491c: $9e
	ld   [$5d00], sp                                 ; $491d: $08 $00 $5d
	and  c                                           ; $4920: $a1
	dec  c                                           ; $4921: $0d
	add  [hl]                                        ; $4922: $86
	ld   a, h                                        ; $4923: $7c
	inc  b                                           ; $4924: $04
	ld   d, a                                        ; $4925: $57
	inc  b                                           ; $4926: $04
	ld   h, e                                        ; $4927: $63
	ld   a, l                                        ; $4928: $7d
	rst  $38                                         ; $4929: $ff
	rst  $38                                         ; $492a: $ff
	dec  c                                           ; $492b: $0d
	ld   d, b                                        ; $492c: $50
	adc  h                                           ; $492d: $8c
	sbc  b                                           ; $492e: $98
	sub  [hl]                                        ; $492f: $96
	ld   e, l                                        ; $4930: $5d
	ld   a, b                                        ; $4931: $78
	ld   d, d                                        ; $4932: $52
	ld   a, b                                        ; $4933: $78
	sbc  a                                           ; $4934: $9f
	dec  c                                           ; $4935: $0d
	nop                                              ; $4936: $00
	ld   a, [bc]                                     ; $4937: $0a
	ld   bc, $7190                                   ; $4938: $01 $90 $71
	halt                                             ; $493b: $76
	ld   [bc], a                                     ; $493c: $02
	ld   a, [de]                                     ; $493d: $1a
	inc  bc                                          ; $493e: $03
	ld   l, e                                        ; $493f: $6b
	ld   a, h                                        ; $4940: $7c

jr_04e_4941:
	ld   [bc], a                                     ; $4941: $02
	and  c                                           ; $4942: $a1
	inc  bc                                          ; $4943: $03
	and  b                                           ; $4944: $a0
	ld   l, a                                        ; $4945: $6f
	and  b                                           ; $4946: $a0
	dec  c                                           ; $4947: $0d
	ld   [bc], a                                     ; $4948: $02
	ld   h, l                                        ; $4949: $65
	ld   d, [hl]                                     ; $494a: $56
	ld   [hl], h                                     ; $494b: $74
	ld   [bc], a                                     ; $494c: $02
	ld   a, a                                        ; $494d: $7f
	inc  b                                           ; $494e: $04
	dec  de                                          ; $494f: $1b
	ld   h, l                                        ; $4950: $65
	ld   l, l                                        ; $4951: $6d
	adc  c                                           ; $4952: $89
	ld   d, h                                        ; $4953: $54
	ld   e, d                                        ; $4954: $5a
	ld   d, d                                        ; $4955: $52
	ld   d, d                                        ; $4956: $52
	halt                                             ; $4957: $76
	dec  c                                           ; $4958: $0d
	dec  b                                           ; $4959: $05
	pop  de                                          ; $495a: $d1
	ld   d, h                                        ; $495b: $54
	ld   l, h                                        ; $495c: $6c
	sbc  a                                           ; $495d: $9f
	dec  c                                           ; $495e: $0d
	nop                                              ; $495f: $00
	ld   a, [bc]                                     ; $4960: $0a
	ld   b, $18                                      ; $4961: $06 $18
	ld   a, [bc]                                     ; $4963: $0a
	ld   bc, $f5ac                                   ; $4964: $01 $ac $f5
	bit  7, h                                        ; $4967: $cb $7c
	sbc  [hl]                                        ; $4969: $9e
	ld   [$5d00], sp                                 ; $496a: $08 $00 $5d
	and  c                                           ; $496d: $a1
	dec  c                                           ; $496e: $0d
	add  [hl]                                        ; $496f: $86
	ld   a, h                                        ; $4970: $7c
	inc  b                                           ; $4971: $04
	ld   d, a                                        ; $4972: $57
	inc  b                                           ; $4973: $04
	ld   h, e                                        ; $4974: $63
	ld   a, l                                        ; $4975: $7d
	sbc  [hl]                                        ; $4976: $9e
	ld   e, c                                        ; $4977: $59
	ld   a, b                                        ; $4978: $78
	sbc  b                                           ; $4979: $98
	ld   d, d                                        ; $497a: $52
	ld   d, d                                        ; $497b: $52
	dec  c                                           ; $497c: $0d
	halt                                             ; $497d: $76
	dec  b                                           ; $497e: $05
	pop  de                                          ; $497f: $d1
	ld   d, h                                        ; $4980: $54
	ld   l, h                                        ; $4981: $6c
	sbc  a                                           ; $4982: $9f
	dec  c                                           ; $4983: $0d
	nop                                              ; $4984: $00
	ld   a, [bc]                                     ; $4985: $0a
	ld   bc, $ca02                                   ; $4986: $01 $02 $ca
	sub  b                                           ; $4989: $90
	ld   l, e                                        ; $498a: $6b
	sbc  d                                           ; $498b: $9a
	ld   a, c                                        ; $498c: $79
	ld   [bc], a                                     ; $498d: $02
	add  hl, bc                                      ; $498e: $09
	ld   d, [hl]                                     ; $498f: $56
	sub  a                                           ; $4990: $97
	sbc  d                                           ; $4991: $9a
	sbc  c                                           ; $4992: $99
	sub  [hl]                                        ; $4993: $96
	ld   d, h                                        ; $4994: $54
	ld   a, c                                        ; $4995: $79
	dec  c                                           ; $4996: $0d
	ld   e, d                                        ; $4997: $5a
	and  c                                           ; $4998: $a1
	ld   a, [hl]                                     ; $4999: $7e
	sbc  c                                           ; $499a: $99
	and  c                                           ; $499b: $a1
	ld   l, [hl]                                     ; $499c: $6e
	ld   l, h                                        ; $499d: $6c
	sbc  a                                           ; $499e: $9f
	dec  c                                           ; $499f: $0d
	nop                                              ; $49a0: $00
	ld   a, [bc]                                     ; $49a1: $0a
	ld   b, $18                                      ; $49a2: $06 $18
	ld   a, [bc]                                     ; $49a4: $0a
	rrca                                             ; $49a5: $0f
	nop                                              ; $49a6: $00
	ld   bc, $6b01                                   ; $49a7: $01 $01 $6b
	ld   d, h                                        ; $49aa: $54
	ld   [hl], l                                     ; $49ab: $75
	ld   h, a                                        ; $49ac: $67
	ld   e, c                                        ; $49ad: $59
	rst  $38                                         ; $49ae: $ff
	rst  $38                                         ; $49af: $ff
	dec  c                                           ; $49b0: $0d
	ld   d, b                                        ; $49b1: $50
	sbc  b                                           ; $49b2: $98
	ld   e, d                                        ; $49b3: $5a
	halt                                             ; $49b4: $76
	ld   d, h                                        ; $49b5: $54
	ld   h, d                                        ; $49b6: $62
	ld   h, h                                        ; $49b7: $64
	ld   d, d                                        ; $49b8: $52
	adc  h                                           ; $49b9: $8c
	ld   h, l                                        ; $49ba: $65
	ld   l, l                                        ; $49bb: $6d
	sbc  a                                           ; $49bc: $9f
	dec  c                                           ; $49bd: $0d
	nop                                              ; $49be: $00
	ld   a, [bc]                                     ; $49bf: $0a
	rrca                                             ; $49c0: $0f
	add  hl, bc                                      ; $49c1: $09
	nop                                              ; $49c2: $00
	ld   bc, $a154                                   ; $49c3: $01 $54 $a1
	sbc  a                                           ; $49c6: $9f
	dec  c                                           ; $49c7: $0d
	ld   e, d                                        ; $49c8: $5a
	and  c                                           ; $49c9: $a1
	ld   a, [hl]                                     ; $49ca: $7e
	sbc  d                                           ; $49cb: $9a
	sub  [hl]                                        ; $49cc: $96
	sbc  a                                           ; $49cd: $9f
	dec  c                                           ; $49ce: $0d
	nop                                              ; $49cf: $00
	ld   a, [bc]                                     ; $49d0: $0a
	nop                                              ; $49d1: $00
	rrca                                             ; $49d2: $0f
	nop                                              ; $49d3: $00
	ld   bc, $5001                                   ; $49d4: $01 $01 $50
	ld   a, h                                        ; $49d7: $7c
	sbc  [hl]                                        ; $49d8: $9e
	inc  bc                                          ; $49d9: $03
	ld   l, l                                        ; $49da: $6d
	dec  b                                           ; $49db: $05
	add  hl, de                                      ; $49dc: $19
	ld   a, h                                        ; $49dd: $7c
	and  e                                           ; $49de: $a3
	jp   z, $a5d1                                    ; $49df: $ca $d1 $a5

	cp   d                                           ; $49e2: $ba
	and  b                                           ; $49e3: $a0
	dec  c                                           ; $49e4: $0d
	ld   e, b                                        ; $49e5: $58
	ld   [bc], a                                     ; $49e6: $02
	add  b                                           ; $49e7: $80
	ld   d, d                                        ; $49e8: $52
	ld   h, l                                        ; $49e9: $65
	ld   l, l                                        ; $49ea: $6d
	ld   d, d                                        ; $49eb: $52
	and  c                                           ; $49ec: $a1
	ld   [hl], l                                     ; $49ed: $75
	ld   h, a                                        ; $49ee: $67
	ld   e, a                                        ; $49ef: $5f
	ld   [hl], a                                     ; $49f0: $77
	sbc  a                                           ; $49f1: $9f
	dec  c                                           ; $49f2: $0d
	nop                                              ; $49f3: $00
	ld   a, [bc]                                     ; $49f4: $0a
	rrca                                             ; $49f5: $0f
	add  hl, bc                                      ; $49f6: $09
	nop                                              ; $49f7: $00
	ld   bc, $8e83                                   ; $49f8: $01 $83 $8e
	sbc  [hl]                                        ; $49fb: $9e
	ld   l, e                                        ; $49fc: $6b
	ld   d, h                                        ; $49fd: $54
	ld   l, [hl]                                     ; $49fe: $6e
	ld   a, b                                        ; $49ff: $78
	rst  $38                                         ; $4a00: $ff
	rst  $38                                         ; $4a01: $ff
	dec  c                                           ; $4a02: $0d
	nop                                              ; $4a03: $00
	ld   a, [bc]                                     ; $4a04: $0a
	rlca                                             ; $4a05: $07
	ld   a, $0b                                      ; $4a06: $3e $0b
	inc  bc                                          ; $4a08: $03
	inc  hl                                          ; $4a09: $23
	ld   bc, $234e                                   ; $4a0a: $01 $4e $23
	inc  bc                                          ; $4a0d: $03
	inc  h                                           ; $4a0e: $24
	ld   bc, $234e                                   ; $4a0f: $01 $4e $23
	inc  e                                           ; $4a12: $1c
	inc  bc                                          ; $4a13: $03
	dec  h                                           ; $4a14: $25
	ld   bc, $234e                                   ; $4a15: $01 $4e $23
	inc  e                                           ; $4a18: $1c
	inc  bc                                          ; $4a19: $03
	ld   [hl+], a                                    ; $4a1a: $22
	ld   bc, $234e                                   ; $4a1b: $01 $4e $23
	inc  e                                           ; $4a1e: $1c
	inc  bc                                          ; $4a1f: $03
	ld   hl, $4e01                                   ; $4a20: $21 $01 $4e
	inc  hl                                          ; $4a23: $23
	inc  e                                           ; $4a24: $1c
	nop                                              ; $4a25: $00
	rlca                                             ; $4a26: $07
	or   d                                           ; $4a27: $b2
	dec  bc                                          ; $4a28: $0b
	inc  bc                                          ; $4a29: $03
	inc  hl                                          ; $4a2a: $23
	ld   bc, $255f                                   ; $4a2b: $01 $5f $25
	inc  bc                                          ; $4a2e: $03
	inc  h                                           ; $4a2f: $24
	ld   bc, $255f                                   ; $4a30: $01 $5f $25
	inc  e                                           ; $4a33: $1c
	inc  bc                                          ; $4a34: $03
	dec  h                                           ; $4a35: $25
	ld   bc, $255f                                   ; $4a36: $01 $5f $25
	inc  e                                           ; $4a39: $1c
	inc  bc                                          ; $4a3a: $03
	ld   [hl+], a                                    ; $4a3b: $22
	ld   bc, $255f                                   ; $4a3c: $01 $5f $25
	inc  e                                           ; $4a3f: $1c
	inc  bc                                          ; $4a40: $03
	ld   hl, $5f01                                   ; $4a41: $21 $01 $5f
	dec  h                                           ; $4a44: $25
	inc  e                                           ; $4a45: $1c
	nop                                              ; $4a46: $00
	rlca                                             ; $4a47: $07
	inc  a                                           ; $4a48: $3c
	inc  c                                           ; $4a49: $0c
	inc  bc                                          ; $4a4a: $03
	inc  hl                                          ; $4a4b: $23
	ld   bc, $234e                                   ; $4a4c: $01 $4e $23
	inc  bc                                          ; $4a4f: $03
	inc  h                                           ; $4a50: $24
	ld   bc, $234e                                   ; $4a51: $01 $4e $23
	inc  e                                           ; $4a54: $1c
	inc  bc                                          ; $4a55: $03
	dec  h                                           ; $4a56: $25
	ld   bc, $234e                                   ; $4a57: $01 $4e $23
	inc  e                                           ; $4a5a: $1c
	nop                                              ; $4a5b: $00
	rlca                                             ; $4a5c: $07
	db   $ec                                         ; $4a5d: $ec
	inc  c                                           ; $4a5e: $0c
	inc  bc                                          ; $4a5f: $03
	inc  h                                           ; $4a60: $24
	inc  bc                                          ; $4a61: $03
	inc  hl                                          ; $4a62: $23
	inc  hl                                          ; $4a63: $23
	inc  bc                                          ; $4a64: $03
	inc  h                                           ; $4a65: $24
	inc  bc                                          ; $4a66: $03
	dec  h                                           ; $4a67: $25
	inc  hl                                          ; $4a68: $23
	inc  e                                           ; $4a69: $1c
	inc  bc                                          ; $4a6a: $03
	inc  h                                           ; $4a6b: $24
	inc  bc                                          ; $4a6c: $03
	ld   [hl+], a                                    ; $4a6d: $22
	inc  hl                                          ; $4a6e: $23
	inc  e                                           ; $4a6f: $1c
	inc  bc                                          ; $4a70: $03
	inc  h                                           ; $4a71: $24
	inc  bc                                          ; $4a72: $03
	ld   hl, $1c23                                   ; $4a73: $21 $23 $1c
	nop                                              ; $4a76: $00
	rlca                                             ; $4a77: $07
	adc  b                                           ; $4a78: $88
	dec  c                                           ; $4a79: $0d
	inc  bc                                          ; $4a7a: $03
	dec  h                                           ; $4a7b: $25
	inc  bc                                          ; $4a7c: $03
	inc  hl                                          ; $4a7d: $23
	inc  hl                                          ; $4a7e: $23
	inc  bc                                          ; $4a7f: $03
	dec  h                                           ; $4a80: $25
	inc  bc                                          ; $4a81: $03
	inc  h                                           ; $4a82: $24
	inc  hl                                          ; $4a83: $23
	inc  e                                           ; $4a84: $1c
	inc  bc                                          ; $4a85: $03
	dec  h                                           ; $4a86: $25
	inc  bc                                          ; $4a87: $03
	ld   [hl+], a                                    ; $4a88: $22
	inc  hl                                          ; $4a89: $23
	inc  e                                           ; $4a8a: $1c
	inc  bc                                          ; $4a8b: $03
	dec  h                                           ; $4a8c: $25
	inc  bc                                          ; $4a8d: $03
	ld   hl, $1c23                                   ; $4a8e: $21 $23 $1c
	nop                                              ; $4a91: $00
	rlca                                             ; $4a92: $07
	add  hl, hl                                      ; $4a93: $29
	ld   c, $03                                      ; $4a94: $0e $03
	ld   [hl+], a                                    ; $4a96: $22
	inc  bc                                          ; $4a97: $03
	inc  hl                                          ; $4a98: $23
	inc  hl                                          ; $4a99: $23
	inc  bc                                          ; $4a9a: $03
	ld   [hl+], a                                    ; $4a9b: $22
	inc  bc                                          ; $4a9c: $03
	inc  h                                           ; $4a9d: $24
	inc  hl                                          ; $4a9e: $23
	inc  e                                           ; $4a9f: $1c
	inc  bc                                          ; $4aa0: $03
	ld   [hl+], a                                    ; $4aa1: $22
	inc  bc                                          ; $4aa2: $03
	dec  h                                           ; $4aa3: $25
	inc  hl                                          ; $4aa4: $23
	inc  e                                           ; $4aa5: $1c
	inc  bc                                          ; $4aa6: $03
	ld   [hl+], a                                    ; $4aa7: $22
	inc  bc                                          ; $4aa8: $03
	ld   hl, $1c23                                   ; $4aa9: $21 $23 $1c
	nop                                              ; $4aac: $00
	rlca                                             ; $4aad: $07
	ld   h, e                                        ; $4aae: $63
	rrca                                             ; $4aaf: $0f
	inc  bc                                          ; $4ab0: $03
	inc  hl                                          ; $4ab1: $23
	inc  bc                                          ; $4ab2: $03
	ld   [hl+], a                                    ; $4ab3: $22
	inc  hl                                          ; $4ab4: $23
	inc  bc                                          ; $4ab5: $03
	inc  hl                                          ; $4ab6: $23
	inc  bc                                          ; $4ab7: $03
	inc  h                                           ; $4ab8: $24
	inc  hl                                          ; $4ab9: $23
	inc  e                                           ; $4aba: $1c
	inc  bc                                          ; $4abb: $03
	inc  hl                                          ; $4abc: $23
	inc  bc                                          ; $4abd: $03
	ld   [hl+], a                                    ; $4abe: $22
	inc  hl                                          ; $4abf: $23
	inc  e                                           ; $4ac0: $1c
	inc  bc                                          ; $4ac1: $03
	inc  hl                                          ; $4ac2: $23
	inc  bc                                          ; $4ac3: $03
	ld   hl, $1c23                                   ; $4ac4: $21 $23 $1c
	nop                                              ; $4ac7: $00
	ld   b, $bf                                      ; $4ac8: $06 $bf
	ld   c, $0f                                      ; $4aca: $0e $0f
	add  hl, bc                                      ; $4acc: $09
	nop                                              ; $4acd: $00
	ld   bc, $ca02                                   ; $4ace: $01 $02 $ca
	ld   a, h                                        ; $4ad1: $7c
	inc  b                                           ; $4ad2: $04
	ld   a, d                                        ; $4ad3: $7a
	ld   [bc], a                                     ; $4ad4: $02
	ld   a, e                                        ; $4ad5: $7b
	sbc  [hl]                                        ; $4ad6: $9e
	and  e                                           ; $4ad7: $a3
	jp   z, $a5d1                                    ; $4ad8: $ca $d1 $a5

	cp   d                                           ; $4adb: $ba
	ld   d, d                                        ; $4adc: $52
	ld   l, d                                        ; $4add: $6a
	and  c                                           ; $4ade: $a1
	ld   a, c                                        ; $4adf: $79
	dec  c                                           ; $4ae0: $0d
	sub  b                                           ; $4ae1: $90
	ld   [hl], c                                     ; $4ae2: $71
	halt                                             ; $4ae3: $76
	ld   l, a                                        ; $4ae4: $6f
	sub  c                                           ; $4ae5: $91
	and  c                                           ; $4ae6: $a1
	halt                                             ; $4ae7: $76
	inc  bc                                          ; $4ae8: $03
	ld   l, l                                        ; $4ae9: $6d
	dec  b                                           ; $4aea: $05
	add  hl, de                                      ; $4aeb: $19
	ld   a, c                                        ; $4aec: $79
	dec  c                                           ; $4aed: $0d
	inc  bc                                          ; $4aee: $03
	add  b                                           ; $4aef: $80
	ld   l, l                                        ; $4af0: $6d
	adc  c                                           ; $4af1: $89
	ld   d, h                                        ; $4af2: $54
	ld   e, d                                        ; $4af3: $5a
	ld   d, d                                        ; $4af4: $52
	ld   d, d                                        ; $4af5: $52
	ld   a, b                                        ; $4af6: $78
	sbc  a                                           ; $4af7: $9f
	dec  c                                           ; $4af8: $0d
	nop                                              ; $4af9: $00
	ld   a, [bc]                                     ; $4afa: $0a
	ld   bc, $d303                                   ; $4afb: $01 $03 $d3
	dec  b                                           ; $4afe: $05
	ld   a, [bc]                                     ; $4aff: $0a
	sub  b                                           ; $4b00: $90
	ld   l, c                                        ; $4b01: $69
	ld   l, b                                        ; $4b02: $68
	ld   a, c                                        ; $4b03: $79
	ld   [bc], a                                     ; $4b04: $02
	reti                                             ; $4b05: $d9


	ld   [bc], a                                     ; $4b06: $02
	ld   h, e                                        ; $4b07: $63
	ld   l, [hl]                                     ; $4b08: $6e
	ld   e, a                                        ; $4b09: $5f
	dec  c                                           ; $4b0a: $0d
	sub  b                                           ; $4b0b: $90
	halt                                             ; $4b0c: $76
	adc  a                                           ; $4b0d: $8f
	sbc  c                                           ; $4b0e: $99
	sub  [hl]                                        ; $4b0f: $96
	ld   d, h                                        ; $4b10: $54
	ld   [hl], l                                     ; $4b11: $75
	ld   a, l                                        ; $4b12: $7d
	pop  bc                                          ; $4b13: $c1
	db   $e3                                         ; $4b14: $e3
	ld   l, [hl]                                     ; $4b15: $6e
	ld   l, h                                        ; $4b16: $6c
	sbc  a                                           ; $4b17: $9f
	dec  c                                           ; $4b18: $0d
	nop                                              ; $4b19: $00
	ld   a, [bc]                                     ; $4b1a: $0a
	rrca                                             ; $4b1b: $0f
	nop                                              ; $4b1c: $00
	ld   bc, $7d01                                   ; $4b1d: $01 $01 $7d
	sbc  [hl]                                        ; $4b20: $9e
	ld   a, l                                        ; $4b21: $7d
	ld   d, d                                        ; $4b22: $52
	sbc  a                                           ; $4b23: $9f
	dec  c                                           ; $4b24: $0d
	sbc  l                                           ; $4b25: $9d
	ld   e, c                                        ; $4b26: $59
	sbc  b                                           ; $4b27: $98
	adc  h                                           ; $4b28: $8c
	ld   h, l                                        ; $4b29: $65
	ld   l, l                                        ; $4b2a: $6d
	ld   a, [$0dfa]                                  ; $4b2b: $fa $fa $0d
	ld   d, b                                        ; $4b2e: $50
	sbc  b                                           ; $4b2f: $98
	ld   e, d                                        ; $4b30: $5a
	halt                                             ; $4b31: $76
	ld   d, h                                        ; $4b32: $54
	ld   h, d                                        ; $4b33: $62
	ld   h, h                                        ; $4b34: $64
	ld   d, d                                        ; $4b35: $52
	adc  h                                           ; $4b36: $8c
	ld   h, a                                        ; $4b37: $67
	ld   a, [$000d]                                  ; $4b38: $fa $0d $00
	ld   a, [bc]                                     ; $4b3b: $0a
	ld   b, $04                                      ; $4b3c: $06 $04
	db   $10                                         ; $4b3e: $10
	inc  e                                           ; $4b3f: $1c
	add  hl, bc                                      ; $4b40: $09
	ld   bc, $0101                                   ; $4b41: $01 $01 $01
	ld   [$5d00], sp                                 ; $4b44: $08 $00 $5d
	and  c                                           ; $4b47: $a1
	ld   a, l                                        ; $4b48: $7d
	dec  c                                           ; $4b49: $0d
	ld   [bc], a                                     ; $4b4a: $02
	and  l                                           ; $4b4b: $a5
	ld   a, h                                        ; $4b4c: $7c
	halt                                             ; $4b4d: $76
	ld   h, c                                        ; $4b4e: $61
	sbc  e                                           ; $4b4f: $9b
	ld   [bc], a                                     ; $4b50: $02
	sbc  l                                           ; $4b51: $9d
	ld   d, h                                        ; $4b52: $54
	ld   h, c                                        ; $4b53: $61
	halt                                             ; $4b54: $76
	ld   a, b                                        ; $4b55: $78
	ld   h, l                                        ; $4b56: $65
	ld   l, [hl]                                     ; $4b57: $6e
	ld   a, b                                        ; $4b58: $78
	sbc  a                                           ; $4b59: $9f
	dec  c                                           ; $4b5a: $0d
	nop                                              ; $4b5b: $00
	ld   a, [bc]                                     ; $4b5c: $0a
	ld   bc, $7c77                                   ; $4b5d: $01 $77 $7c
	inc  bc                                          ; $4b60: $03
	ld   l, l                                        ; $4b61: $6d
	dec  b                                           ; $4b62: $05
	add  hl, de                                      ; $4b63: $19
	sub  b                                           ; $4b64: $90
	adc  h                                           ; $4b65: $8c
	and  c                                           ; $4b66: $a1
	add  a                                           ; $4b67: $87
	and  c                                           ; $4b68: $a1
	ld   a, b                                        ; $4b69: $78
	ld   e, l                                        ; $4b6a: $5d
	dec  c                                           ; $4b6b: $0d
	ld   e, d                                        ; $4b6c: $5a
	and  c                                           ; $4b6d: $a1
	ld   a, [hl]                                     ; $4b6e: $7e
	ld   [hl], c                                     ; $4b6f: $71
	ld   [hl], h                                     ; $4b70: $74
	sub  d                                           ; $4b71: $92
	ld   [hl], c                                     ; $4b72: $71
	ld   [hl], h                                     ; $4b73: $74
	ld   d, d                                        ; $4b74: $52
	sbc  c                                           ; $4b75: $99
	dec  c                                           ; $4b76: $0d
	sub  [hl]                                        ; $4b77: $96
	ld   d, h                                        ; $4b78: $54
	ld   l, [hl]                                     ; $4b79: $6e
	ld   h, l                                        ; $4b7a: $65
	rst  $38                                         ; $4b7b: $ff
	rst  $38                                         ; $4b7c: $ff
	dec  c                                           ; $4b7d: $0d
	nop                                              ; $4b7e: $00
	ld   a, [bc]                                     ; $4b7f: $0a
	ld   bc, $9a61                                   ; $4b80: $01 $61 $9a
	ld   e, c                                        ; $4b83: $59
	sub  a                                           ; $4b84: $97
	sub  b                                           ; $4b85: $90
	sbc  [hl]                                        ; $4b86: $9e
	ld   h, c                                        ; $4b87: $61
	ld   a, h                                        ; $4b88: $7c
	inc  bc                                          ; $4b89: $03
	cp   $03                                         ; $4b8a: $fe $03
	add  [hl]                                        ; $4b8c: $86
	ld   [hl], l                                     ; $4b8d: $75
	dec  c                                           ; $4b8e: $0d
	ld   d, d                                        ; $4b8f: $52
	ld   e, a                                        ; $4b90: $5f
	ld   a, [hl]                                     ; $4b91: $7e
	sbc  [hl]                                        ; $4b92: $9e
	ld   [bc], a                                     ; $4b93: $02
	sbc  l                                           ; $4b94: $9d
	ld   d, h                                        ; $4b95: $54
	ld   h, c                                        ; $4b96: $61
	halt                                             ; $4b97: $76
	ld   a, b                                        ; $4b98: $78
	ld   h, l                                        ; $4b99: $65
	ld   l, [hl]                                     ; $4b9a: $6e
	sbc  a                                           ; $4b9b: $9f
	dec  c                                           ; $4b9c: $0d
	nop                                              ; $4b9d: $00
	ld   a, [bc]                                     ; $4b9e: $0a
	rrca                                             ; $4b9f: $0f
	nop                                              ; $4ba0: $00
	ld   bc, $7d01                                   ; $4ba1: $01 $01 $7d
	ld   d, d                                        ; $4ba4: $52
	ld   a, [$500d]                                  ; $4ba5: $fa $0d $50
	sbc  b                                           ; $4ba8: $98
	ld   e, d                                        ; $4ba9: $5a
	halt                                             ; $4baa: $76
	ld   d, h                                        ; $4bab: $54
	ld   h, d                                        ; $4bac: $62
	ld   h, h                                        ; $4bad: $64
	ld   d, d                                        ; $4bae: $52
	adc  h                                           ; $4baf: $8c
	ld   h, a                                        ; $4bb0: $67
	ld   a, [$0dfa]                                  ; $4bb1: $fa $fa $0d
	ld   [bc], a                                     ; $4bb4: $02
	and  l                                           ; $4bb5: $a5
	ld   [bc], a                                     ; $4bb6: $02
	xor  d                                           ; $4bb7: $aa
	sub  b                                           ; $4bb8: $90
	sbc  [hl]                                        ; $4bb9: $9e
	ld   e, d                                        ; $4bba: $5a
	and  c                                           ; $4bbb: $a1
	ld   a, [hl]                                     ; $4bbc: $7e
	sbc  b                                           ; $4bbd: $98
	adc  h                                           ; $4bbe: $8c
	ld   h, a                                        ; $4bbf: $67
	ld   [hl], c                                     ; $4bc0: $71
	ld   a, [$0dfa]                                  ; $4bc1: $fa $fa $0d
	nop                                              ; $4bc4: $00
	ld   a, [bc]                                     ; $4bc5: $0a
	ld   b, $04                                      ; $4bc6: $06 $04
	db   $10                                         ; $4bc8: $10
	rrca                                             ; $4bc9: $0f
	add  hl, bc                                      ; $4bca: $09
	nop                                              ; $4bcb: $00
	ld   bc, $0008                                   ; $4bcc: $01 $08 $00
	ld   e, l                                        ; $4bcf: $5d
	and  c                                           ; $4bd0: $a1
	ld   a, l                                        ; $4bd1: $7d
	dec  c                                           ; $4bd2: $0d
	ld   [bc], a                                     ; $4bd3: $02
	jr   nc, jr_04e_4bda                             ; $4bd4: $30 $04

	dec  de                                          ; $4bd6: $1b
	inc  b                                           ; $4bd7: $04
	ld   b, e                                        ; $4bd8: $43
	dec  b                                           ; $4bd9: $05

jr_04e_4bda:
	ld   a, [bc]                                     ; $4bda: $0a
	ld   a, h                                        ; $4bdb: $7c
	inc  b                                           ; $4bdc: $04
	ld   d, a                                        ; $4bdd: $57
	dec  b                                           ; $4bde: $05
	add  hl, hl                                      ; $4bdf: $29
	ld   e, d                                        ; $4be0: $5a
	inc  bc                                          ; $4be1: $03
	ld   d, a                                        ; $4be2: $57
	inc  b                                           ; $4be3: $04
	dec  c                                           ; $4be4: $0d
	inc  b                                           ; $4be5: $04
	jr   nz, jr_04e_4c61                             ; $4be6: $20 $79

	dec  c                                           ; $4be8: $0d
	inc  bc                                          ; $4be9: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4bea: $cf
	ld   d, d                                        ; $4beb: $52
	sub  [hl]                                        ; $4bec: $96
	ld   d, h                                        ; $4bed: $54
	ld   l, [hl]                                     ; $4bee: $6e
	ld   a, b                                        ; $4bef: $78
	sbc  a                                           ; $4bf0: $9f
	dec  c                                           ; $4bf1: $0d
	nop                                              ; $4bf2: $00
	ld   a, [bc]                                     ; $4bf3: $0a
	ld   bc, $5d63                                   ; $4bf4: $01 $63 $5d
	sub  a                                           ; $4bf7: $97
	ld   e, l                                        ; $4bf8: $5d
	and  c                                           ; $4bf9: $a1
	ld   a, h                                        ; $4bfa: $7c
	inc  bc                                          ; $4bfb: $03
	ld   l, l                                        ; $4bfc: $6d
	dec  b                                           ; $4bfd: $05
	add  hl, de                                      ; $4bfe: $19
	and  b                                           ; $4bff: $a0
	dec  c                                           ; $4c00: $0d
	ld   l, a                                        ; $4c01: $6f
	sub  l                                           ; $4c02: $95
	ld   [hl], c                                     ; $4c03: $71
	halt                                             ; $4c04: $76
	inc  b                                           ; $4c05: $04
	rrca                                             ; $4c06: $0f
	adc  a                                           ; $4c07: $8f
	ld   a, c                                        ; $4c08: $79
	halt                                             ; $4c09: $76
	ld   [hl], c                                     ; $4c0a: $71
	ld   [hl], h                                     ; $4c0b: $74
	ld   e, b                                        ; $4c0c: $58
	ld   e, l                                        ; $4c0d: $5d
	halt                                             ; $4c0e: $76
	dec  c                                           ; $4c0f: $0d
	ld   d, d                                        ; $4c10: $52
	ld   d, d                                        ; $4c11: $52
	and  c                                           ; $4c12: $a1
	ld   h, [hl]                                     ; $4c13: $66
	sub  c                                           ; $4c14: $91
	ld   a, b                                        ; $4c15: $78
	ld   d, d                                        ; $4c16: $52
	ld   e, c                                        ; $4c17: $59
	ld   a, b                                        ; $4c18: $78
	sbc  a                                           ; $4c19: $9f
	dec  c                                           ; $4c1a: $0d
	nop                                              ; $4c1b: $00
	ld   a, [bc]                                     ; $4c1c: $0a
	ld   bc, $5d63                                   ; $4c1d: $01 $63 $5d
	sub  a                                           ; $4c20: $97
	ld   e, l                                        ; $4c21: $5d
	and  c                                           ; $4c22: $a1
	ld   a, h                                        ; $4c23: $7c
	inc  bc                                          ; $4c24: $03
	ld   l, l                                        ; $4c25: $6d
	dec  b                                           ; $4c26: $05
	add  hl, de                                      ; $4c27: $19
	ld   a, l                                        ; $4c28: $7d
	sbc  [hl]                                        ; $4c29: $9e
	dec  c                                           ; $4c2a: $0d
	inc  bc                                          ; $4c2b: $03
	ld   [hl], l                                     ; $4c2c: $75
	di                                               ; $4c2d: $f3
	ld   [bc], a                                     ; $4c2e: $02
	adc  h                                           ; $4c2f: $8c
	di                                               ; $4c30: $f3
	inc  b                                           ; $4c31: $04
	dec  c                                           ; $4c32: $0d
	db   $10                                         ; $4c33: $10
	halt                                             ; $4c34: $76
	sbc  [hl]                                        ; $4c35: $9e
	inc  bc                                          ; $4c36: $03
	ld   d, a                                        ; $4c37: $57
	ld   [hl], h                                     ; $4c38: $74
	ld   a, h                                        ; $4c39: $7c
	inc  b                                           ; $4c3a: $04
	rst  JumpTable                                         ; $4c3b: $df
	inc  bc                                          ; $4c3c: $03
	and  [hl]                                        ; $4c3d: $a6
	ld   e, d                                        ; $4c3e: $5a
	dec  c                                           ; $4c3f: $0d
	ld   [bc], a                                     ; $4c40: $02
	call nc, Call_04e_5102                           ; $4c41: $d4 $02 $51
	ld   h, e                                        ; $4c44: $63
	sbc  d                                           ; $4c45: $9a
	sbc  c                                           ; $4c46: $99
	ld   e, c                                        ; $4c47: $59
	sub  a                                           ; $4c48: $97
	ld   a, e                                        ; $4c49: $7b
	sbc  a                                           ; $4c4a: $9f
	dec  c                                           ; $4c4b: $0d
	nop                                              ; $4c4c: $00
	ld   a, [bc]                                     ; $4c4d: $0a
	rrca                                             ; $4c4e: $0f
	nop                                              ; $4c4f: $00
	ld   bc, $7801                                   ; $4c50: $01 $01 $78
	sbc  c                                           ; $4c53: $99
	adc  c                                           ; $4c54: $89
	ld   [hl], a                                     ; $4c55: $77
	rst  $38                                         ; $4c56: $ff
	rst  $38                                         ; $4c57: $ff
	dec  c                                           ; $4c58: $0d
	sbc  l                                           ; $4c59: $9d
	ld   e, c                                        ; $4c5a: $59
	sbc  b                                           ; $4c5b: $98
	adc  h                                           ; $4c5c: $8c
	ld   h, l                                        ; $4c5d: $65
	ld   l, l                                        ; $4c5e: $6d
	sbc  [hl]                                        ; $4c5f: $9e
	and  e                                           ; $4c60: $a3

jr_04e_4c61:
	jp   z, $a5d1                                    ; $4c61: $ca $d1 $a5

	cp   d                                           ; $4c64: $ba
	sbc  [hl]                                        ; $4c65: $9e
	dec  c                                           ; $4c66: $0d
	ld   d, b                                        ; $4c67: $50
	sbc  b                                           ; $4c68: $98
	ld   e, d                                        ; $4c69: $5a
	halt                                             ; $4c6a: $76
	ld   d, h                                        ; $4c6b: $54
	ld   h, d                                        ; $4c6c: $62
	ld   h, h                                        ; $4c6d: $64
	ld   d, d                                        ; $4c6e: $52
	adc  h                                           ; $4c6f: $8c
	ld   h, l                                        ; $4c70: $65
	ld   l, l                                        ; $4c71: $6d
	sbc  a                                           ; $4c72: $9f
	dec  c                                           ; $4c73: $0d
	nop                                              ; $4c74: $00
	ld   a, [bc]                                     ; $4c75: $0a
	ld   b, $04                                      ; $4c76: $06 $04
	db   $10                                         ; $4c78: $10
	rrca                                             ; $4c79: $0f
	add  hl, bc                                      ; $4c7a: $09
	nop                                              ; $4c7b: $00
	ld   bc, $0008                                   ; $4c7c: $01 $08 $00
	ld   e, l                                        ; $4c7f: $5d
	and  c                                           ; $4c80: $a1
	ld   a, l                                        ; $4c81: $7d
	dec  c                                           ; $4c82: $0d
	inc  bc                                          ; $4c83: $03
	and  [hl]                                        ; $4c84: $a6
	inc  bc                                          ; $4c85: $03
	ld   [hl], b                                     ; $4c86: $70
	ld   h, e                                        ; $4c87: $63
	ld   a, h                                        ; $4c88: $7c
	inc  b                                           ; $4c89: $04
	ld   d, a                                        ; $4c8a: $57
	dec  b                                           ; $4c8b: $05
	add  hl, hl                                      ; $4c8c: $29
	ld   e, d                                        ; $4c8d: $5a
	dec  c                                           ; $4c8e: $0d
	inc  bc                                          ; $4c8f: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c90: $cf
	ld   d, d                                        ; $4c91: $52
	sub  [hl]                                        ; $4c92: $96
	ld   d, h                                        ; $4c93: $54
	ld   l, [hl]                                     ; $4c94: $6e
	ld   a, b                                        ; $4c95: $78
	sbc  a                                           ; $4c96: $9f
	dec  c                                           ; $4c97: $0d
	nop                                              ; $4c98: $00
	ld   a, [bc]                                     ; $4c99: $0a
	ld   bc, $8d67                                   ; $4c9a: $01 $67 $8d
	sbc  d                                           ; $4c9d: $9a
	ld   e, l                                        ; $4c9e: $5d
	and  c                                           ; $4c9f: $a1
	ld   a, h                                        ; $4ca0: $7c
	inc  bc                                          ; $4ca1: $03
	ld   l, l                                        ; $4ca2: $6d
	dec  b                                           ; $4ca3: $05
	add  hl, de                                      ; $4ca4: $19
	and  b                                           ; $4ca5: $a0
	dec  c                                           ; $4ca6: $0d
	ld   l, a                                        ; $4ca7: $6f
	sub  l                                           ; $4ca8: $95
	ld   [hl], c                                     ; $4ca9: $71
	halt                                             ; $4caa: $76
	inc  b                                           ; $4cab: $04
	rrca                                             ; $4cac: $0f
	adc  a                                           ; $4cad: $8f
	ld   a, c                                        ; $4cae: $79
	halt                                             ; $4caf: $76
	ld   [hl], c                                     ; $4cb0: $71
	ld   [hl], h                                     ; $4cb1: $74
	ld   e, b                                        ; $4cb2: $58
	ld   e, l                                        ; $4cb3: $5d
	halt                                             ; $4cb4: $76
	dec  c                                           ; $4cb5: $0d
	ld   d, d                                        ; $4cb6: $52
	ld   d, d                                        ; $4cb7: $52
	and  c                                           ; $4cb8: $a1
	ld   h, [hl]                                     ; $4cb9: $66
	sub  c                                           ; $4cba: $91
	ld   a, b                                        ; $4cbb: $78
	ld   d, d                                        ; $4cbc: $52
	ld   e, c                                        ; $4cbd: $59
	ld   a, b                                        ; $4cbe: $78
	sbc  a                                           ; $4cbf: $9f
	dec  c                                           ; $4cc0: $0d
	nop                                              ; $4cc1: $00
	ld   a, [bc]                                     ; $4cc2: $0a
	ld   bc, $8d67                                   ; $4cc3: $01 $67 $8d
	sbc  d                                           ; $4cc6: $9a
	ld   e, l                                        ; $4cc7: $5d
	and  c                                           ; $4cc8: $a1
	ld   a, h                                        ; $4cc9: $7c
	inc  bc                                          ; $4cca: $03
	ld   l, l                                        ; $4ccb: $6d
	dec  b                                           ; $4ccc: $05
	add  hl, de                                      ; $4ccd: $19
	ld   a, l                                        ; $4cce: $7d
	dec  c                                           ; $4ccf: $0d
	inc  bc                                          ; $4cd0: $03
	and  [hl]                                        ; $4cd1: $a6
	inc  bc                                          ; $4cd2: $03
	ld   [hl], b                                     ; $4cd3: $70
	ld   h, e                                        ; $4cd4: $63
	ld   a, h                                        ; $4cd5: $7c
	ld   [bc], a                                     ; $4cd6: $02
	call nc, Call_04e_5102                           ; $4cd7: $d4 $02 $51
	ld   a, c                                        ; $4cda: $79
	ld   a, l                                        ; $4cdb: $7d
	dec  c                                           ; $4cdc: $0d
	ld   d, h                                        ; $4cdd: $54
	ld   [hl], c                                     ; $4cde: $71
	ld   [hl], h                                     ; $4cdf: $74
	ld   [hl], d                                     ; $4ce0: $72
	ld   e, a                                        ; $4ce1: $5f
	ld   l, [hl]                                     ; $4ce2: $6e
	ld   e, c                                        ; $4ce3: $59
	sub  a                                           ; $4ce4: $97
	ld   a, e                                        ; $4ce5: $7b
	sbc  a                                           ; $4ce6: $9f
	dec  c                                           ; $4ce7: $0d
	nop                                              ; $4ce8: $00
	ld   a, [bc]                                     ; $4ce9: $0a
	rrca                                             ; $4cea: $0f
	nop                                              ; $4ceb: $00
	ld   bc, $7801                                   ; $4cec: $01 $01 $78
	sbc  c                                           ; $4cef: $99
	adc  c                                           ; $4cf0: $89
	ld   [hl], a                                     ; $4cf1: $77
	rst  $38                                         ; $4cf2: $ff
	rst  $38                                         ; $4cf3: $ff
	dec  c                                           ; $4cf4: $0d
	sbc  l                                           ; $4cf5: $9d
	ld   e, c                                        ; $4cf6: $59
	sbc  b                                           ; $4cf7: $98
	adc  h                                           ; $4cf8: $8c
	ld   h, l                                        ; $4cf9: $65
	ld   l, l                                        ; $4cfa: $6d
	sbc  [hl]                                        ; $4cfb: $9e
	and  e                                           ; $4cfc: $a3
	jp   z, $a5d1                                    ; $4cfd: $ca $d1 $a5

	cp   d                                           ; $4d00: $ba
	sbc  [hl]                                        ; $4d01: $9e
	dec  c                                           ; $4d02: $0d
	ld   d, b                                        ; $4d03: $50
	sbc  b                                           ; $4d04: $98
	ld   e, d                                        ; $4d05: $5a
	halt                                             ; $4d06: $76
	ld   d, h                                        ; $4d07: $54
	ld   h, d                                        ; $4d08: $62
	ld   h, h                                        ; $4d09: $64
	ld   d, d                                        ; $4d0a: $52
	adc  h                                           ; $4d0b: $8c
	ld   h, l                                        ; $4d0c: $65
	ld   l, l                                        ; $4d0d: $6d
	sbc  a                                           ; $4d0e: $9f
	dec  c                                           ; $4d0f: $0d
	nop                                              ; $4d10: $00
	ld   a, [bc]                                     ; $4d11: $0a
	ld   b, $04                                      ; $4d12: $06 $04
	db   $10                                         ; $4d14: $10
	rrca                                             ; $4d15: $0f
	add  hl, bc                                      ; $4d16: $09
	nop                                              ; $4d17: $00
	ld   bc, $0008                                   ; $4d18: $01 $08 $00
	ld   e, l                                        ; $4d1b: $5d
	and  c                                           ; $4d1c: $a1
	ld   a, l                                        ; $4d1d: $7d
	dec  c                                           ; $4d1e: $0d
	ld   b, $25                                      ; $4d1f: $06 $25
	inc  b                                           ; $4d21: $04
	dec  bc                                          ; $4d22: $0b
	ld   b, $80                                      ; $4d23: $06 $80
	ld   a, h                                        ; $4d25: $7c
	inc  b                                           ; $4d26: $04
	ld   d, a                                        ; $4d27: $57
	dec  b                                           ; $4d28: $05
	add  hl, hl                                      ; $4d29: $29
	ld   e, d                                        ; $4d2a: $5a
	dec  c                                           ; $4d2b: $0d
	inc  bc                                          ; $4d2c: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d2d: $cf
	ld   d, d                                        ; $4d2e: $52
	sub  [hl]                                        ; $4d2f: $96
	ld   d, h                                        ; $4d30: $54
	ld   l, [hl]                                     ; $4d31: $6e
	ld   a, b                                        ; $4d32: $78
	sbc  a                                           ; $4d33: $9f
	dec  c                                           ; $4d34: $0d
	nop                                              ; $4d35: $00
	ld   a, [bc]                                     ; $4d36: $0a
	ld   bc, $ecdf                                   ; $4d37: $01 $df $ec
	and  e                                           ; $4d3a: $a3
	ld   a, h                                        ; $4d3b: $7c
	inc  bc                                          ; $4d3c: $03
	ld   l, l                                        ; $4d3d: $6d
	dec  b                                           ; $4d3e: $05
	add  hl, de                                      ; $4d3f: $19
	and  b                                           ; $4d40: $a0
	dec  c                                           ; $4d41: $0d
	ld   l, a                                        ; $4d42: $6f
	sub  l                                           ; $4d43: $95
	ld   [hl], c                                     ; $4d44: $71
	halt                                             ; $4d45: $76
	inc  b                                           ; $4d46: $04
	rrca                                             ; $4d47: $0f
	adc  a                                           ; $4d48: $8f
	ld   a, c                                        ; $4d49: $79
	halt                                             ; $4d4a: $76
	ld   [hl], c                                     ; $4d4b: $71
	ld   [hl], h                                     ; $4d4c: $74
	ld   e, b                                        ; $4d4d: $58
	ld   e, l                                        ; $4d4e: $5d
	halt                                             ; $4d4f: $76
	dec  c                                           ; $4d50: $0d
	ld   d, d                                        ; $4d51: $52
	ld   d, d                                        ; $4d52: $52
	and  c                                           ; $4d53: $a1
	ld   h, [hl]                                     ; $4d54: $66
	sub  c                                           ; $4d55: $91
	ld   a, b                                        ; $4d56: $78
	ld   d, d                                        ; $4d57: $52
	ld   e, c                                        ; $4d58: $59
	ld   a, b                                        ; $4d59: $78
	sbc  a                                           ; $4d5a: $9f
	dec  c                                           ; $4d5b: $0d
	nop                                              ; $4d5c: $00
	ld   a, [bc]                                     ; $4d5d: $0a
	ld   bc, $ecdf                                   ; $4d5e: $01 $df $ec
	and  e                                           ; $4d61: $a3
	ld   a, h                                        ; $4d62: $7c
	inc  bc                                          ; $4d63: $03
	ld   l, l                                        ; $4d64: $6d
	dec  b                                           ; $4d65: $05
	add  hl, de                                      ; $4d66: $19
	ld   a, l                                        ; $4d67: $7d
	inc  bc                                          ; $4d68: $03
	daa                                              ; $4d69: $27
	ld   [bc], a                                     ; $4d6a: $02
	sub  c                                           ; $4d6b: $91
	ld   l, [hl]                                     ; $4d6c: $6e
	ld   e, c                                        ; $4d6d: $59
	sub  a                                           ; $4d6e: $97
	sbc  [hl]                                        ; $4d6f: $9e
	dec  c                                           ; $4d70: $0d
	ld   e, c                                        ; $4d71: $59
	ld   a, b                                        ; $4d72: $78
	sbc  b                                           ; $4d73: $98
	ld   a, h                                        ; $4d74: $7c
	ld   b, $25                                      ; $4d75: $06 $25
	inc  b                                           ; $4d77: $04
	dec  bc                                          ; $4d78: $0b
	ld   b, $80                                      ; $4d79: $06 $80
	and  b                                           ; $4d7b: $a0
	dec  c                                           ; $4d7c: $0d
	inc  b                                           ; $4d7d: $04
	rst  JumpTable                                         ; $4d7e: $df
	ld   b, $85                                      ; $4d7f: $06 $85
	ld   h, e                                        ; $4d81: $63
	sbc  d                                           ; $4d82: $9a
	sbc  c                                           ; $4d83: $99
	ld   e, c                                        ; $4d84: $59
	sub  a                                           ; $4d85: $97
	ld   a, e                                        ; $4d86: $7b
	sbc  a                                           ; $4d87: $9f
	dec  c                                           ; $4d88: $0d
	nop                                              ; $4d89: $00
	ld   a, [bc]                                     ; $4d8a: $0a
	rrca                                             ; $4d8b: $0f
	nop                                              ; $4d8c: $00
	ld   bc, $7801                                   ; $4d8d: $01 $01 $78
	sbc  c                                           ; $4d90: $99
	adc  c                                           ; $4d91: $89
	ld   [hl], a                                     ; $4d92: $77
	rst  $38                                         ; $4d93: $ff
	rst  $38                                         ; $4d94: $ff
	dec  c                                           ; $4d95: $0d
	sbc  l                                           ; $4d96: $9d
	ld   e, c                                        ; $4d97: $59
	sbc  b                                           ; $4d98: $98
	adc  h                                           ; $4d99: $8c
	ld   h, l                                        ; $4d9a: $65
	ld   l, l                                        ; $4d9b: $6d
	sbc  [hl]                                        ; $4d9c: $9e
	and  e                                           ; $4d9d: $a3
	jp   z, $a5d1                                    ; $4d9e: $ca $d1 $a5

	cp   d                                           ; $4da1: $ba
	sbc  [hl]                                        ; $4da2: $9e
	dec  c                                           ; $4da3: $0d
	ld   d, b                                        ; $4da4: $50
	sbc  b                                           ; $4da5: $98
	ld   e, d                                        ; $4da6: $5a
	halt                                             ; $4da7: $76
	ld   d, h                                        ; $4da8: $54
	ld   h, d                                        ; $4da9: $62
	ld   h, h                                        ; $4daa: $64
	ld   d, d                                        ; $4dab: $52
	adc  h                                           ; $4dac: $8c
	ld   h, l                                        ; $4dad: $65
	ld   l, l                                        ; $4dae: $6d
	sbc  a                                           ; $4daf: $9f
	dec  c                                           ; $4db0: $0d
	nop                                              ; $4db1: $00
	ld   a, [bc]                                     ; $4db2: $0a
	ld   b, $04                                      ; $4db3: $06 $04
	db   $10                                         ; $4db5: $10
	rrca                                             ; $4db6: $0f
	add  hl, bc                                      ; $4db7: $09
	nop                                              ; $4db8: $00
	ld   bc, $0008                                   ; $4db9: $01 $08 $00
	ld   e, l                                        ; $4dbc: $5d
	and  c                                           ; $4dbd: $a1
	ld   a, l                                        ; $4dbe: $7d
	dec  c                                           ; $4dbf: $0d
	dec  b                                           ; $4dc0: $05
	add  hl, bc                                      ; $4dc1: $09
	dec  b                                           ; $4dc2: $05
	ld   a, [bc]                                     ; $4dc3: $0a
	ld   a, h                                        ; $4dc4: $7c
	inc  b                                           ; $4dc5: $04
	ld   d, a                                        ; $4dc6: $57
	dec  b                                           ; $4dc7: $05
	add  hl, hl                                      ; $4dc8: $29
	ld   e, d                                        ; $4dc9: $5a
	dec  c                                           ; $4dca: $0d
	inc  bc                                          ; $4dcb: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4dcc: $cf
	ld   d, d                                        ; $4dcd: $52
	sub  [hl]                                        ; $4dce: $96
	ld   d, h                                        ; $4dcf: $54
	ld   l, [hl]                                     ; $4dd0: $6e
	ld   a, b                                        ; $4dd1: $78
	sbc  a                                           ; $4dd2: $9f
	dec  c                                           ; $4dd3: $0d
	nop                                              ; $4dd4: $00
	ld   a, [bc]                                     ; $4dd5: $0a
	ld   bc, $a5a3                                   ; $4dd6: $01 $a3 $a5
	db   $ec                                         ; $4dd9: $ec
	cp   d                                           ; $4dda: $ba
	ld   a, h                                        ; $4ddb: $7c
	inc  bc                                          ; $4ddc: $03
	ld   l, l                                        ; $4ddd: $6d
	dec  b                                           ; $4dde: $05
	add  hl, de                                      ; $4ddf: $19
	and  b                                           ; $4de0: $a0
	dec  c                                           ; $4de1: $0d
	ld   l, a                                        ; $4de2: $6f
	sub  l                                           ; $4de3: $95
	ld   [hl], c                                     ; $4de4: $71
	halt                                             ; $4de5: $76
	inc  b                                           ; $4de6: $04
	rrca                                             ; $4de7: $0f
	adc  a                                           ; $4de8: $8f
	ld   a, c                                        ; $4de9: $79
	halt                                             ; $4dea: $76
	ld   [hl], c                                     ; $4deb: $71
	ld   [hl], h                                     ; $4dec: $74
	ld   e, b                                        ; $4ded: $58
	ld   e, l                                        ; $4dee: $5d
	halt                                             ; $4def: $76
	dec  c                                           ; $4df0: $0d
	ld   d, d                                        ; $4df1: $52
	ld   d, d                                        ; $4df2: $52
	and  c                                           ; $4df3: $a1
	ld   h, [hl]                                     ; $4df4: $66
	sub  c                                           ; $4df5: $91
	ld   a, b                                        ; $4df6: $78
	ld   d, d                                        ; $4df7: $52
	ld   e, c                                        ; $4df8: $59
	ld   a, b                                        ; $4df9: $78
	sbc  a                                           ; $4dfa: $9f
	dec  c                                           ; $4dfb: $0d
	nop                                              ; $4dfc: $00
	ld   a, [bc]                                     ; $4dfd: $0a
	ld   bc, $a5a3                                   ; $4dfe: $01 $a3 $a5
	db   $ec                                         ; $4e01: $ec
	cp   d                                           ; $4e02: $ba
	ld   a, h                                        ; $4e03: $7c
	inc  bc                                          ; $4e04: $03
	ld   l, l                                        ; $4e05: $6d
	dec  b                                           ; $4e06: $05
	add  hl, de                                      ; $4e07: $19
	ld   a, l                                        ; $4e08: $7d
	dec  c                                           ; $4e09: $0d
	dec  b                                           ; $4e0a: $05
	add  hl, bc                                      ; $4e0b: $09
	dec  b                                           ; $4e0c: $05
	ld   a, [bc]                                     ; $4e0d: $0a
	and  e                                           ; $4e0e: $a3
	call nz, Call_04e_79d8                           ; $4e0f: $c4 $d8 $79
	ld   a, l                                        ; $4e12: $7d
	dec  c                                           ; $4e13: $0d
	ld   d, h                                        ; $4e14: $54
	ld   [hl], c                                     ; $4e15: $71
	ld   [hl], h                                     ; $4e16: $74
	ld   [hl], d                                     ; $4e17: $72
	ld   e, a                                        ; $4e18: $5f
	ld   l, [hl]                                     ; $4e19: $6e
	ld   e, c                                        ; $4e1a: $59
	sub  a                                           ; $4e1b: $97
	ld   a, e                                        ; $4e1c: $7b
	sbc  a                                           ; $4e1d: $9f
	dec  c                                           ; $4e1e: $0d
	nop                                              ; $4e1f: $00
	ld   a, [bc]                                     ; $4e20: $0a
	rrca                                             ; $4e21: $0f
	nop                                              ; $4e22: $00
	ld   bc, $7801                                   ; $4e23: $01 $01 $78
	sbc  c                                           ; $4e26: $99
	adc  c                                           ; $4e27: $89
	ld   [hl], a                                     ; $4e28: $77
	rst  $38                                         ; $4e29: $ff
	rst  $38                                         ; $4e2a: $ff
	dec  c                                           ; $4e2b: $0d
	sbc  l                                           ; $4e2c: $9d
	ld   e, c                                        ; $4e2d: $59
	sbc  b                                           ; $4e2e: $98
	adc  h                                           ; $4e2f: $8c
	ld   h, l                                        ; $4e30: $65
	ld   l, l                                        ; $4e31: $6d
	sbc  [hl]                                        ; $4e32: $9e
	and  e                                           ; $4e33: $a3
	jp   z, $a5d1                                    ; $4e34: $ca $d1 $a5

	cp   d                                           ; $4e37: $ba
	sbc  [hl]                                        ; $4e38: $9e
	dec  c                                           ; $4e39: $0d
	ld   d, b                                        ; $4e3a: $50
	sbc  b                                           ; $4e3b: $98
	ld   e, d                                        ; $4e3c: $5a
	halt                                             ; $4e3d: $76
	ld   d, h                                        ; $4e3e: $54
	ld   h, d                                        ; $4e3f: $62
	ld   h, h                                        ; $4e40: $64
	ld   d, d                                        ; $4e41: $52
	adc  h                                           ; $4e42: $8c
	ld   h, l                                        ; $4e43: $65
	ld   l, l                                        ; $4e44: $6d
	sbc  a                                           ; $4e45: $9f
	dec  c                                           ; $4e46: $0d
	nop                                              ; $4e47: $00
	ld   a, [bc]                                     ; $4e48: $0a
	ld   b, $04                                      ; $4e49: $06 $04
	db   $10                                         ; $4e4b: $10
	rrca                                             ; $4e4c: $0f
	add  hl, bc                                      ; $4e4d: $09
	nop                                              ; $4e4e: $00
	ld   bc, $0008                                   ; $4e4f: $01 $08 $00
	ld   e, l                                        ; $4e52: $5d
	and  c                                           ; $4e53: $a1
	ld   a, l                                        ; $4e54: $7d
	dec  c                                           ; $4e55: $0d
	sub  b                                           ; $4e56: $90
	ld   d, h                                        ; $4e57: $54
	inc  bc                                          ; $4e58: $03
	ld   l, h                                        ; $4e59: $6c
	ld   h, l                                        ; $4e5a: $65
	ld   [bc], a                                     ; $4e5b: $02
	add  h                                           ; $4e5c: $84
	ld   [bc], a                                     ; $4e5d: $02
	and  d                                           ; $4e5e: $a2
	inc  b                                           ; $4e5f: $04
	jr   nz, jr_04e_4e66                             ; $4e60: $20 $04

	dec  hl                                          ; $4e62: $2b
	inc  bc                                          ; $4e63: $03
	dec  [hl]                                        ; $4e64: $35
	and  b                                           ; $4e65: $a0

jr_04e_4e66:
	dec  c                                           ; $4e66: $0d
	inc  b                                           ; $4e67: $04
	pop  de                                          ; $4e68: $d1
	ld   a, c                                        ; $4e69: $79
	ld   [hl], d                                     ; $4e6a: $72
	ld   e, a                                        ; $4e6b: $5f
	ld   l, l                                        ; $4e6c: $6d
	adc  c                                           ; $4e6d: $89
	ld   d, h                                        ; $4e6e: $54
	ld   e, d                                        ; $4e6f: $5a
	ld   d, d                                        ; $4e70: $52
	ld   d, d                                        ; $4e71: $52
	ld   a, b                                        ; $4e72: $78
	sbc  a                                           ; $4e73: $9f
	dec  c                                           ; $4e74: $0d
	nop                                              ; $4e75: $00
	ld   a, [bc]                                     ; $4e76: $0a
	ld   bc, $cf02                                   ; $4e77: $01 $02 $cf
	dec  b                                           ; $4e7a: $05
	ld   a, [de]                                     ; $4e7b: $1a
	ld   a, h                                        ; $4e7c: $7c
	inc  bc                                          ; $4e7d: $03
	ld   l, l                                        ; $4e7e: $6d
	dec  b                                           ; $4e7f: $05
	add  hl, de                                      ; $4e80: $19
	and  b                                           ; $4e81: $a0
	dec  c                                           ; $4e82: $0d
	ld   l, a                                        ; $4e83: $6f
	sub  l                                           ; $4e84: $95
	ld   [hl], c                                     ; $4e85: $71
	halt                                             ; $4e86: $76
	inc  b                                           ; $4e87: $04
	rrca                                             ; $4e88: $0f
	adc  a                                           ; $4e89: $8f
	ld   a, c                                        ; $4e8a: $79
	halt                                             ; $4e8b: $76
	ld   [hl], c                                     ; $4e8c: $71
	ld   [hl], h                                     ; $4e8d: $74
	ld   e, b                                        ; $4e8e: $58
	ld   e, l                                        ; $4e8f: $5d
	halt                                             ; $4e90: $76
	dec  c                                           ; $4e91: $0d
	ld   d, d                                        ; $4e92: $52
	ld   d, d                                        ; $4e93: $52
	and  c                                           ; $4e94: $a1
	ld   h, [hl]                                     ; $4e95: $66
	sub  c                                           ; $4e96: $91
	ld   a, b                                        ; $4e97: $78
	ld   d, d                                        ; $4e98: $52
	ld   e, c                                        ; $4e99: $59
	ld   a, b                                        ; $4e9a: $78
	sbc  a                                           ; $4e9b: $9f
	dec  c                                           ; $4e9c: $0d
	nop                                              ; $4e9d: $00
	ld   a, [bc]                                     ; $4e9e: $0a
	ld   bc, $cf02                                   ; $4e9f: $01 $02 $cf
	dec  b                                           ; $4ea2: $05
	ld   a, [de]                                     ; $4ea3: $1a
	ld   a, h                                        ; $4ea4: $7c
	ld   [bc], a                                     ; $4ea5: $02
	ld   l, d                                        ; $4ea6: $6a
	ld   b, $44                                      ; $4ea7: $06 $44
	and  b                                           ; $4ea9: $a0
	sbc  [hl]                                        ; $4eaa: $9e
	ld   l, e                                        ; $4eab: $6b
	ld   a, [hl]                                     ; $4eac: $7e
	ld   [hl], l                                     ; $4ead: $75
	ld   [bc], a                                     ; $4eae: $02
	sub  l                                           ; $4eaf: $95
	ld   [hl], h                                     ; $4eb0: $74
	sbc  c                                           ; $4eb1: $99
	dec  c                                           ; $4eb2: $0d
	ld   l, [hl]                                     ; $4eb3: $6e
	ld   e, a                                        ; $4eb4: $5f
	ld   [hl], l                                     ; $4eb5: $75
	sub  b                                           ; $4eb6: $90
	inc  b                                           ; $4eb7: $04
	xor  [hl]                                        ; $4eb8: $ae
	ld   [bc], a                                     ; $4eb9: $02
	call nc, Call_04e_7879                           ; $4eba: $d4 $79 $78
	sbc  c                                           ; $4ebd: $99
	ld   e, c                                        ; $4ebe: $59
	sub  a                                           ; $4ebf: $97
	ld   a, e                                        ; $4ec0: $7b
	sbc  a                                           ; $4ec1: $9f
	dec  c                                           ; $4ec2: $0d
	nop                                              ; $4ec3: $00
	ld   a, [bc]                                     ; $4ec4: $0a
	rrca                                             ; $4ec5: $0f
	nop                                              ; $4ec6: $00
	ld   bc, $7801                                   ; $4ec7: $01 $01 $78
	sbc  c                                           ; $4eca: $99
	adc  c                                           ; $4ecb: $89
	ld   [hl], a                                     ; $4ecc: $77
	rst  $38                                         ; $4ecd: $ff
	rst  $38                                         ; $4ece: $ff
	dec  c                                           ; $4ecf: $0d
	sbc  l                                           ; $4ed0: $9d
	ld   e, c                                        ; $4ed1: $59
	sbc  b                                           ; $4ed2: $98
	adc  h                                           ; $4ed3: $8c
	ld   h, l                                        ; $4ed4: $65
	ld   l, l                                        ; $4ed5: $6d
	sbc  [hl]                                        ; $4ed6: $9e
	and  e                                           ; $4ed7: $a3
	jp   z, $a5d1                                    ; $4ed8: $ca $d1 $a5

	cp   d                                           ; $4edb: $ba
	sbc  [hl]                                        ; $4edc: $9e
	dec  c                                           ; $4edd: $0d
	ld   d, b                                        ; $4ede: $50
	sbc  b                                           ; $4edf: $98
	ld   e, d                                        ; $4ee0: $5a
	halt                                             ; $4ee1: $76
	ld   d, h                                        ; $4ee2: $54
	ld   h, d                                        ; $4ee3: $62
	ld   h, h                                        ; $4ee4: $64
	ld   d, d                                        ; $4ee5: $52
	adc  h                                           ; $4ee6: $8c
	ld   h, l                                        ; $4ee7: $65
	ld   l, l                                        ; $4ee8: $6d
	sbc  a                                           ; $4ee9: $9f
	dec  c                                           ; $4eea: $0d
	nop                                              ; $4eeb: $00
	ld   a, [bc]                                     ; $4eec: $0a
	ld   b, $04                                      ; $4eed: $06 $04
	db   $10                                         ; $4eef: $10
	rrca                                             ; $4ef0: $0f
	add  hl, bc                                      ; $4ef1: $09
	nop                                              ; $4ef2: $00
	ld   bc, $0008                                   ; $4ef3: $01 $08 $00
	ld   e, l                                        ; $4ef6: $5d
	and  c                                           ; $4ef7: $a1
	ld   a, l                                        ; $4ef8: $7d
	dec  c                                           ; $4ef9: $0d
	sub  b                                           ; $4efa: $90
	ld   [hl], c                                     ; $4efb: $71
	halt                                             ; $4efc: $76
	ld   [bc], a                                     ; $4efd: $02
	and  c                                           ; $4efe: $a1
	ld   [bc], a                                     ; $4eff: $02
	ld   a, e                                        ; $4f00: $7b
	ld   d, d                                        ; $4f01: $52
	and  b                                           ; $4f02: $a0
	dec  c                                           ; $4f03: $0d
	inc  b                                           ; $4f04: $04
	pop  de                                          ; $4f05: $d1
	ld   a, c                                        ; $4f06: $79
	ld   [hl], d                                     ; $4f07: $72
	ld   e, a                                        ; $4f08: $5f
	ld   l, l                                        ; $4f09: $6d
	adc  c                                           ; $4f0a: $89
	ld   d, h                                        ; $4f0b: $54
	ld   e, d                                        ; $4f0c: $5a
	ld   d, d                                        ; $4f0d: $52
	ld   d, d                                        ; $4f0e: $52
	ld   a, b                                        ; $4f0f: $78
	sbc  a                                           ; $4f10: $9f
	dec  c                                           ; $4f11: $0d
	nop                                              ; $4f12: $00
	ld   a, [bc]                                     ; $4f13: $0a
	ld   bc, $f5ac                                   ; $4f14: $01 $ac $f5
	bit  7, h                                        ; $4f17: $cb $7c
	inc  bc                                          ; $4f19: $03
	ld   l, l                                        ; $4f1a: $6d
	dec  b                                           ; $4f1b: $05
	add  hl, de                                      ; $4f1c: $19
	and  b                                           ; $4f1d: $a0
	dec  c                                           ; $4f1e: $0d
	ld   l, a                                        ; $4f1f: $6f
	sub  l                                           ; $4f20: $95
	ld   [hl], c                                     ; $4f21: $71
	halt                                             ; $4f22: $76
	inc  b                                           ; $4f23: $04
	rrca                                             ; $4f24: $0f
	adc  a                                           ; $4f25: $8f
	ld   a, c                                        ; $4f26: $79
	halt                                             ; $4f27: $76
	ld   [hl], c                                     ; $4f28: $71
	ld   [hl], h                                     ; $4f29: $74
	ld   e, b                                        ; $4f2a: $58
	ld   e, l                                        ; $4f2b: $5d
	halt                                             ; $4f2c: $76
	dec  c                                           ; $4f2d: $0d
	ld   d, d                                        ; $4f2e: $52
	ld   d, d                                        ; $4f2f: $52
	and  c                                           ; $4f30: $a1
	ld   h, [hl]                                     ; $4f31: $66
	sub  c                                           ; $4f32: $91
	ld   a, b                                        ; $4f33: $78
	ld   d, d                                        ; $4f34: $52
	ld   e, c                                        ; $4f35: $59
	ld   a, b                                        ; $4f36: $78
	sbc  a                                           ; $4f37: $9f
	dec  c                                           ; $4f38: $0d
	nop                                              ; $4f39: $00
	ld   a, [bc]                                     ; $4f3a: $0a
	ld   bc, $f5ac                                   ; $4f3b: $01 $ac $f5
	bit  7, h                                        ; $4f3e: $cb $7c
	ld   [bc], a                                     ; $4f40: $02
	or   [hl]                                        ; $4f41: $b6
	inc  bc                                          ; $4f42: $03
	ld   l, e                                        ; $4f43: $6b
	ld   a, l                                        ; $4f44: $7d
	dec  c                                           ; $4f45: $0d
	adc  h                                           ; $4f46: $8c
	ld   h, e                                        ; $4f47: $63
	ld   a, c                                        ; $4f48: $79
	ld   bc, $0207                                   ; $4f49: $01 $07 $02
	and  c                                           ; $4f4c: $a1
	ld   [bc], a                                     ; $4f4d: $02
	ld   a, e                                        ; $4f4e: $7b
	ld   d, d                                        ; $4f4f: $52
	ld   a, h                                        ; $4f50: $7c
	inc  b                                           ; $4f51: $04
	ld   d, d                                        ; $4f52: $52
	inc  bc                                          ; $4f53: $03
	db   $10                                         ; $4f54: $10
	ld   bc, $0d08                                   ; $4f55: $01 $08 $0d
	halt                                             ; $4f58: $76
	ld   d, d                                        ; $4f59: $52
	ld   d, h                                        ; $4f5a: $54
	ld   [bc], a                                     ; $4f5b: $02
	scf                                              ; $4f5c: $37
	ld   h, [hl]                                     ; $4f5d: $66
	ld   l, [hl]                                     ; $4f5e: $6e
	ld   e, c                                        ; $4f5f: $59
	sub  a                                           ; $4f60: $97
	ld   a, e                                        ; $4f61: $7b
	sbc  a                                           ; $4f62: $9f
	dec  c                                           ; $4f63: $0d
	nop                                              ; $4f64: $00
	ld   a, [bc]                                     ; $4f65: $0a
	rrca                                             ; $4f66: $0f
	nop                                              ; $4f67: $00
	ld   bc, $7801                                   ; $4f68: $01 $01 $78
	sbc  c                                           ; $4f6b: $99
	adc  c                                           ; $4f6c: $89
	ld   [hl], a                                     ; $4f6d: $77
	rst  $38                                         ; $4f6e: $ff
	rst  $38                                         ; $4f6f: $ff
	dec  c                                           ; $4f70: $0d
	sbc  l                                           ; $4f71: $9d
	ld   e, c                                        ; $4f72: $59
	sbc  b                                           ; $4f73: $98
	adc  h                                           ; $4f74: $8c
	ld   h, l                                        ; $4f75: $65
	ld   l, l                                        ; $4f76: $6d
	sbc  [hl]                                        ; $4f77: $9e
	and  e                                           ; $4f78: $a3
	jp   z, $a5d1                                    ; $4f79: $ca $d1 $a5

	cp   d                                           ; $4f7c: $ba
	sbc  [hl]                                        ; $4f7d: $9e
	dec  c                                           ; $4f7e: $0d
	ld   d, b                                        ; $4f7f: $50
	sbc  b                                           ; $4f80: $98
	ld   e, d                                        ; $4f81: $5a
	halt                                             ; $4f82: $76
	ld   d, h                                        ; $4f83: $54
	ld   h, d                                        ; $4f84: $62
	ld   h, h                                        ; $4f85: $64
	ld   d, d                                        ; $4f86: $52
	adc  h                                           ; $4f87: $8c
	ld   h, l                                        ; $4f88: $65
	ld   l, l                                        ; $4f89: $6d
	sbc  a                                           ; $4f8a: $9f
	dec  c                                           ; $4f8b: $0d
	nop                                              ; $4f8c: $00
	ld   a, [bc]                                     ; $4f8d: $0a
	ld   b, $04                                      ; $4f8e: $06 $04
	db   $10                                         ; $4f90: $10
	inc  e                                           ; $4f91: $1c
	add  hl, bc                                      ; $4f92: $09
	ld   bc, $0101                                   ; $4f93: $01 $01 $01
	ld   d, h                                        ; $4f96: $54
	and  c                                           ; $4f97: $a1
	sbc  a                                           ; $4f98: $9f
	dec  c                                           ; $4f99: $0d
	ld   l, e                                        ; $4f9a: $6b
	sbc  d                                           ; $4f9b: $9a
	ld   h, [hl]                                     ; $4f9c: $66
	sub  c                                           ; $4f9d: $91
	sbc  [hl]                                        ; $4f9e: $9e
	ld   e, d                                        ; $4f9f: $5a
	and  c                                           ; $4fa0: $a1
	ld   a, [hl]                                     ; $4fa1: $7e
	sbc  d                                           ; $4fa2: $9a
	sub  [hl]                                        ; $4fa3: $96
	sbc  a                                           ; $4fa4: $9f
	dec  c                                           ; $4fa5: $0d
	nop                                              ; $4fa6: $00
	ld   a, [bc]                                     ; $4fa7: $0a
	nop                                              ; $4fa8: $00
	nop                                              ; $4fa9: $00
	inc  b                                           ; $4faa: $04
	add  b                                           ; $4fab: $80
	xor  b                                           ; $4fac: $a8
	ld   bc, $2000                                   ; $4fad: $01 $00 $20
	nop                                              ; $4fb0: $00
	ld   c, $2f                                      ; $4fb1: $0e $2f
	inc  e                                           ; $4fb3: $1c
	dec  c                                           ; $4fb4: $0d
	ld   bc, $0201                                   ; $4fb5: $01 $01 $02
	ld   bc, $9750                                   ; $4fb8: $01 $50 $97
	sbc  [hl]                                        ; $4fbb: $9e
	ld   [$5d00], sp                                 ; $4fbc: $08 $00 $5d
	and  c                                           ; $4fbf: $a1
	sbc  a                                           ; $4fc0: $9f
	dec  c                                           ; $4fc1: $0d
	ld   a, e                                        ; $4fc2: $7b
	ld   d, [hl]                                     ; $4fc3: $56
	sbc  [hl]                                        ; $4fc4: $9e
	inc  b                                           ; $4fc5: $04
	dec  hl                                          ; $4fc6: $2b
	ld   [hl], c                                     ; $4fc7: $71
	ld   [hl], h                                     ; $4fc8: $74
	sbc  c                                           ; $4fc9: $99
	ld   sp, hl                                      ; $4fca: $f9
	dec  c                                           ; $4fcb: $0d
	nop                                              ; $4fcc: $00
	ld   a, [bc]                                     ; $4fcd: $0a
	inc  e                                           ; $4fce: $1c
	dec  c                                           ; $4fcf: $0d
	nop                                              ; $4fd0: $00
	nop                                              ; $4fd1: $00
	ld   bc, $cf02                                   ; $4fd2: $01 $02 $cf
	dec  b                                           ; $4fd5: $05
	ld   a, [de]                                     ; $4fd6: $1a
	ld   a, h                                        ; $4fd7: $7c
	db   $e3                                         ; $4fd8: $e3
	xor  l                                           ; $4fd9: $ad
	adc  $9f                                         ; $4fda: $ce $9f
	dec  c                                           ; $4fdc: $0d
	ld   d, b                                        ; $4fdd: $50
	ld   a, h                                        ; $4fde: $7c
	db   $e3                                         ; $4fdf: $e3
	xor  l                                           ; $4fe0: $ad
	adc  $79                                         ; $4fe1: $ce $79
	ld   a, l                                        ; $4fe3: $7d
	ld   a, b                                        ; $4fe4: $78
	and  c                                           ; $4fe5: $a1
	halt                                             ; $4fe6: $76
	ld   a, [$000d]                                  ; $4fe7: $fa $0d $00
	ld   a, [bc]                                     ; $4fea: $0a
	inc  e                                           ; $4feb: $1c
	dec  c                                           ; $4fec: $0d
	ld   [bc], a                                     ; $4fed: $02
	ld   [bc], a                                     ; $4fee: $02
	ld   bc, $5f04                                   ; $4fef: $01 $04 $5f
	inc  b                                           ; $4ff2: $04
	pop  bc                                          ; $4ff3: $c1
	inc  b                                           ; $4ff4: $04
	ld   h, b                                        ; $4ff5: $60
	ld   [bc], a                                     ; $4ff6: $02
	ld   d, a                                        ; $4ff7: $57
	ld   e, d                                        ; $4ff8: $5a
	ld   h, l                                        ; $4ff9: $65
	ld   h, c                                        ; $4ffa: $61
	adc  h                                           ; $4ffb: $8c
	sbc  d                                           ; $4ffc: $9a
	ld   [hl], h                                     ; $4ffd: $74
	sbc  c                                           ; $4ffe: $99
	dec  c                                           ; $4fff: $0d
	sub  a                                           ; $5000: $97
	ld   h, l                                        ; $5001: $65
	ld   d, d                                        ; $5002: $52
	ld   a, h                                        ; $5003: $7c
	sub  [hl]                                        ; $5004: $96
	sbc  a                                           ; $5005: $9f
	dec  c                                           ; $5006: $0d
	nop                                              ; $5007: $00
	ld   a, [bc]                                     ; $5008: $0a
	inc  e                                           ; $5009: $1c
	dec  c                                           ; $500a: $0d
	ld   bc, $0101                                   ; $500b: $01 $01 $01
	ld   l, a                                        ; $500e: $6f
	ld   a, b                                        ; $500f: $78
	adc  l                                           ; $5010: $8d
	ld   a, c                                        ; $5011: $79
	sbc  [hl]                                        ; $5012: $9e
	ld   d, b                                        ; $5013: $50
	ld   l, l                                        ; $5014: $6d
	ld   h, l                                        ; $5015: $65
	ld   e, d                                        ; $5016: $5a
	ld   [bc], a                                     ; $5017: $02
	sbc  l                                           ; $5018: $9d
	ld   [hl], c                                     ; $5019: $71
	ld   l, l                                        ; $501a: $6d
	ld   [hl], c                                     ; $501b: $71
	ld   [hl], h                                     ; $501c: $74
	dec  c                                           ; $501d: $0d
	res  4, l                                        ; $501e: $cb $a5
	cp   b                                           ; $5020: $b8
	jp   hl                                          ; $5021: $e9


	sub  [hl]                                        ; $5022: $96
	sbc  a                                           ; $5023: $9f
	dec  c                                           ; $5024: $0d
	nop                                              ; $5025: $00
	ld   a, [bc]                                     ; $5026: $0a
	dec  b                                           ; $5027: $05
	add  b                                           ; $5028: $80
	ld   h, $01                                      ; $5029: $26 $01
	ld   bc, $0000                                   ; $502b: $01 $00 $00
	nop                                              ; $502e: $00
	inc  bc                                          ; $502f: $03
	ld   h, a                                        ; $5030: $67
	ld   [bc], a                                     ; $5031: $02
	nop                                              ; $5032: $00
	ld   hl, $0f00                                   ; $5033: $21 $00 $0f
	nop                                              ; $5036: $00
	ld   bc, $0102                                   ; $5037: $01 $02 $01
	xor  h                                           ; $503a: $ac
	push af                                          ; $503b: $f5
	bit  4, e                                        ; $503c: $cb $63
	and  c                                           ; $503e: $a1
	sbc  a                                           ; $503f: $9f
	dec  c                                           ; $5040: $0d
	ld   e, b                                        ; $5041: $58
	inc  b                                           ; $5042: $04
	ld   a, e                                        ; $5043: $7b
	sbc  d                                           ; $5044: $9a
	ld   h, e                                        ; $5045: $63
	adc  h                                           ; $5046: $8c
	ld   [hl], l                                     ; $5047: $75
	ld   h, a                                        ; $5048: $67
	sbc  a                                           ; $5049: $9f
	dec  c                                           ; $504a: $0d
	nop                                              ; $504b: $00
	ld   a, [bc]                                     ; $504c: $0a
	inc  e                                           ; $504d: $1c
	ld   b, $00                                      ; $504e: $06 $00
	nop                                              ; $5050: $00
	ld   bc, $5896                                   ; $5051: $01 $96 $58
	sbc  [hl]                                        ; $5054: $9e
	ld   [$9f00], sp                                 ; $5055: $08 $00 $9f
	dec  c                                           ; $5058: $0d
	nop                                              ; $5059: $00

Jump_04e_505a:
	ld   a, [bc]                                     ; $505a: $0a
	ld   bc, $546b                                   ; $505b: $01 $6b $54
	ld   l, [hl]                                     ; $505e: $6e
	sbc  [hl]                                        ; $505f: $9e
	ld   e, b                                        ; $5060: $58
	adc  h                                           ; $5061: $8c
	ld   d, [hl]                                     ; $5062: $56
	inc  b                                           ; $5063: $04
	dec  hl                                          ; $5064: $2b
	ld   [hl], c                                     ; $5065: $71
	ld   [hl], h                                     ; $5066: $74
	sbc  c                                           ; $5067: $99
	ld   e, c                                        ; $5068: $59
	ld   sp, hl                                      ; $5069: $f9
	dec  c                                           ; $506a: $0d
	ld   a, b                                        ; $506b: $78
	and  c                                           ; $506c: $a1
	ld   [hl], l                                     ; $506d: $75
	sub  b                                           ; $506e: $90
	sbc  [hl]                                        ; $506f: $9e
	inc  bc                                          ; $5070: $03
	db   $f4                                         ; $5071: $f4
	inc  b                                           ; $5072: $04
	ld   e, c                                        ; $5073: $59
	ld   e, d                                        ; $5074: $5a
	inc  bc                                          ; $5075: $03
	xor  [hl]                                        ; $5076: $ae
	ld   d, [hl]                                     ; $5077: $56
	ld   a, b                                        ; $5078: $78
	ld   e, l                                        ; $5079: $5d
	dec  c                                           ; $507a: $0d
	ld   a, b                                        ; $507b: $78
	ld   [hl], c                                     ; $507c: $71
	ld   l, l                                        ; $507d: $6d
	and  c                                           ; $507e: $a1
	ld   l, [hl]                                     ; $507f: $6e
	ld   [hl], c                                     ; $5080: $71
	ld   [hl], h                                     ; $5081: $74
	sub  [hl]                                        ; $5082: $96
	sbc  a                                           ; $5083: $9f
	dec  c                                           ; $5084: $0d
	nop                                              ; $5085: $00
	ld   a, [bc]                                     ; $5086: $0a
	ld   bc, $0008                                   ; $5087: $01 $08 $00
	sbc  [hl]                                        ; $508a: $9e
	ld   [bc], a                                     ; $508b: $02
	and  l                                           ; $508c: $a5
	inc  b                                           ; $508d: $04
	rst  $28                                         ; $508e: $ef
	ld   d, b                                        ; $508f: $50
	ld   d, d                                        ; $5090: $52
	ld   [hl], h                                     ; $5091: $74
	sbc  c                                           ; $5092: $99
	ld   e, c                                        ; $5093: $59
	ld   sp, hl                                      ; $5094: $f9
	dec  c                                           ; $5095: $0d
	ld   b, $09                                      ; $5096: $06 $09
	inc  bc                                          ; $5098: $03
	add  d                                           ; $5099: $82
	ld   [hl], l                                     ; $509a: $75
	ld   [bc], a                                     ; $509b: $02
	call $0e02                                       ; $509c: $cd $02 $0e
	and  b                                           ; $509f: $a0
	ld   h, l                                        ; $50a0: $65
	sub  a                                           ; $50a1: $97
	add  a                                           ; $50a2: $87
	sub  [hl]                                        ; $50a3: $96
	ld   d, h                                        ; $50a4: $54
	ld   l, d                                        ; $50a5: $6a
	sbc  a                                           ; $50a6: $9f
	dec  c                                           ; $50a7: $0d
	nop                                              ; $50a8: $00
	ld   a, [bc]                                     ; $50a9: $0a
	add  hl, de                                      ; $50aa: $19
	dec  b                                           ; $50ab: $05
	ld   [bc], a                                     ; $50ac: $02
	ld   a, l                                        ; $50ad: $7d
	ld   d, d                                        ; $50ae: $52
	nop                                              ; $50af: $00
	nop                                              ; $50b0: $00
	ld   d, d                                        ; $50b1: $52
	ld   d, d                                        ; $50b2: $52
	ld   d, [hl]                                     ; $50b3: $56
	nop                                              ; $50b4: $00
	ld   bc, $9607                                   ; $50b5: $01 $07 $96
	nop                                              ; $50b8: $00
	ld   [bc], a                                     ; $50b9: $02
	inc  bc                                          ; $50ba: $03
	ld   bc, $2000                                   ; $50bb: $01 $00 $20
	nop                                              ; $50be: $00
	rlca                                             ; $50bf: $07
	db   $ec                                         ; $50c0: $ec
	nop                                              ; $50c1: $00
	ld   [bc], a                                     ; $50c2: $02
	inc  bc                                          ; $50c3: $03
	ld   bc, $2001                                   ; $50c4: $01 $01 $20
	nop                                              ; $50c7: $00
	ld   b, $fc                                      ; $50c8: $06 $fc
	ld   bc, $000f                                   ; $50ca: $01 $0f $00
	ld   bc, $9d01                                   ; $50cd: $01 $01 $9d
	ld   e, c                                        ; $50d0: $59
	sbc  b                                           ; $50d1: $98
	adc  h                                           ; $50d2: $8c
	ld   h, l                                        ; $50d3: $65
	ld   l, l                                        ; $50d4: $6d
	sbc  a                                           ; $50d5: $9f
	dec  c                                           ; $50d6: $0d
	ld   [bc], a                                     ; $50d7: $02
	call $0e02                                       ; $50d8: $cd $02 $0e
	and  b                                           ; $50db: $a0
	ld   h, l                                        ; $50dc: $65
	sub  a                                           ; $50dd: $97
	add  a                                           ; $50de: $87
	adc  h                                           ; $50df: $8c
	ld   h, l                                        ; $50e0: $65
	sub  l                                           ; $50e1: $95
	ld   d, h                                        ; $50e2: $54
	sbc  a                                           ; $50e3: $9f
	dec  c                                           ; $50e4: $0d
	nop                                              ; $50e5: $00
	ld   a, [bc]                                     ; $50e6: $0a
	inc  e                                           ; $50e7: $1c
	ld   b, $01                                      ; $50e8: $06 $01
	ld   bc, $401d                                   ; $50ea: $01 $1d $40
	ld   d, $03                                      ; $50ed: $16 $03
	ld   d, $01                                      ; $50ef: $16 $01
	ld   [bc], a                                     ; $50f1: $02
	jr   z, jr_04e_50f4                              ; $50f2: $28 $00

jr_04e_50f4:
	ld   bc, $6596                                   ; $50f4: $01 $96 $65
	sbc  a                                           ; $50f7: $9f
	dec  c                                           ; $50f8: $0d
	ld   h, [hl]                                     ; $50f9: $66
	sub  c                                           ; $50fa: $91
	sbc  [hl]                                        ; $50fb: $9e
	ld   [bc], a                                     ; $50fc: $02
	and  l                                           ; $50fd: $a5
	inc  b                                           ; $50fe: $04
	rst  $28                                         ; $50ff: $ef
	ld   a, b                                        ; $5100: $78
	sbc  a                                           ; $5101: $9f

Call_04e_5102:
	dec  c                                           ; $5102: $0d
	nop                                              ; $5103: $00
	dec  b                                           ; $5104: $05
	add  b                                           ; $5105: $80
	ld   a, l                                        ; $5106: $7d
	ld   bc, $0001                                   ; $5107: $01 $01 $00
	ld   bc, $f403                                   ; $510a: $01 $03 $f4
	inc  b                                           ; $510d: $04
	ld   e, c                                        ; $510e: $59
	ld   [hl], l                                     ; $510f: $75
	inc  b                                           ; $5110: $04
	rla                                              ; $5111: $17
	ld   [hl], c                                     ; $5112: $71
	ld   [hl], h                                     ; $5113: $74
	sbc  c                                           ; $5114: $99
	ld   l, d                                        ; $5115: $6a
	ld   a, [$000d]                                  ; $5116: $fa $0d $00
	ld   a, [bc]                                     ; $5119: $0a
	dec  b                                           ; $511a: $05
	ld   b, b                                        ; $511b: $40
	ld   e, l                                        ; $511c: $5d
	ld   [bc], a                                     ; $511d: $02
	nop                                              ; $511e: $00
	nop                                              ; $511f: $00
	nop                                              ; $5120: $00
	rrca                                             ; $5121: $0f
	nop                                              ; $5122: $00
	ld   bc, $6701                                   ; $5123: $01 $01 $67
	adc  l                                           ; $5126: $8d
	adc  h                                           ; $5127: $8c
	ld   l, c                                        ; $5128: $69
	and  c                                           ; $5129: $a1
	ld   e, d                                        ; $512a: $5a
	sbc  [hl]                                        ; $512b: $9e
	dec  c                                           ; $512c: $0d
	ld   [bc], a                                     ; $512d: $02
	and  l                                           ; $512e: $a5
	inc  b                                           ; $512f: $04
	rst  $28                                         ; $5130: $ef
	ld   a, l                                        ; $5131: $7d
	ld   l, a                                        ; $5132: $6f
	sub  l                                           ; $5133: $95
	ld   [hl], c                                     ; $5134: $71
	halt                                             ; $5135: $76
	rst  $38                                         ; $5136: $ff
	rst  $38                                         ; $5137: $ff
	dec  c                                           ; $5138: $0d
	nop                                              ; $5139: $00
	ld   a, [bc]                                     ; $513a: $0a
	inc  e                                           ; $513b: $1c
	ld   b, $02                                      ; $513c: $06 $02
	ld   [bc], a                                     ; $513e: $02
	ld   bc, $a178                                   ; $513f: $01 $78 $a1
	ld   l, [hl]                                     ; $5142: $6e
	sub  [hl]                                        ; $5143: $96
	db   $fc                                         ; $5144: $fc
	dec  c                                           ; $5145: $0d
	inc  bc                                          ; $5146: $03
	db   $f4                                         ; $5147: $f4
	inc  b                                           ; $5148: $04
	ld   e, c                                        ; $5149: $59
	ld   e, d                                        ; $514a: $5a
	inc  bc                                          ; $514b: $03
	xor  [hl]                                        ; $514c: $ae
	ld   d, [hl]                                     ; $514d: $56
	ld   a, b                                        ; $514e: $78
	ld   e, e                                        ; $514f: $5b
	sub  c                                           ; $5150: $91
	dec  c                                           ; $5151: $0d
	db   $e3                                         ; $5152: $e3
	cp   b                                           ; $5153: $b8
	ld   e, d                                        ; $5154: $5a
	inc  bc                                          ; $5155: $03
	ld   l, d                                        ; $5156: $6a
	ld   d, [hl]                                     ; $5157: $56
	ld   a, b                                        ; $5158: $78
	ld   d, d                                        ; $5159: $52
	and  c                                           ; $515a: $a1
	ld   l, [hl]                                     ; $515b: $6e
	ld   l, h                                        ; $515c: $6c
	ld   sp, hl                                      ; $515d: $f9
	dec  c                                           ; $515e: $0d
	nop                                              ; $515f: $00
	ld   a, [bc]                                     ; $5160: $0a
	add  hl, de                                      ; $5161: $19
	dec  b                                           ; $5162: $05
	ld   [bc], a                                     ; $5163: $02
	ld   [hl], d                                     ; $5164: $72
	ld   e, e                                        ; $5165: $5b
	ld   d, b                                        ; $5166: $50
	ld   d, h                                        ; $5167: $54
	nop                                              ; $5168: $00
	nop                                              ; $5169: $00
	ld   [hl], d                                     ; $516a: $72
	ld   e, e                                        ; $516b: $5b
	ld   d, b                                        ; $516c: $50
	sbc  l                                           ; $516d: $9d
	ld   a, b                                        ; $516e: $78
	ld   d, d                                        ; $516f: $52
	nop                                              ; $5170: $00
	ld   bc, $5207                                   ; $5171: $01 $07 $52
	ld   bc, $0302                                   ; $5174: $01 $02 $03
	ld   bc, $2000                                   ; $5177: $01 $00 $20
	nop                                              ; $517a: $00
	rlca                                             ; $517b: $07
	and  l                                           ; $517c: $a5
	ld   bc, $0302                                   ; $517d: $01 $02 $03
	ld   bc, $2001                                   ; $5180: $01 $01 $20
	nop                                              ; $5183: $00
	ld   b, $fc                                      ; $5184: $06 $fc
	ld   bc, $000f                                   ; $5186: $01 $0f $00
	ld   bc, $9d01                                   ; $5189: $01 $01 $9d
	ld   e, c                                        ; $518c: $59
	sbc  b                                           ; $518d: $98
	adc  h                                           ; $518e: $8c
	ld   h, l                                        ; $518f: $65
	ld   l, l                                        ; $5190: $6d
	rst  $38                                         ; $5191: $ff
	rst  $38                                         ; $5192: $ff
	dec  c                                           ; $5193: $0d
	ld   e, b                                        ; $5194: $58
	ld   [hl], d                                     ; $5195: $72
	ld   e, e                                        ; $5196: $5b
	ld   d, b                                        ; $5197: $50
	ld   d, d                                        ; $5198: $52
	ld   h, l                                        ; $5199: $65
	adc  h                                           ; $519a: $8c
	ld   h, a                                        ; $519b: $67
	sbc  a                                           ; $519c: $9f
	dec  c                                           ; $519d: $0d
	nop                                              ; $519e: $00
	ld   a, [bc]                                     ; $519f: $0a
	inc  e                                           ; $51a0: $1c
	ld   b, $01                                      ; $51a1: $06 $01
	ld   bc, $401d                                   ; $51a3: $01 $1d $40
	ld   d, $03                                      ; $51a6: $16 $03
	ld   d, $01                                      ; $51a8: $16 $01
	ld   bc, $0028                                   ; $51aa: $01 $28 $00
	ld   bc, $6596                                   ; $51ad: $01 $96 $65
	sbc  a                                           ; $51b0: $9f
	dec  c                                           ; $51b1: $0d
	ld   h, [hl]                                     ; $51b2: $66
	sub  c                                           ; $51b3: $91
	sbc  [hl]                                        ; $51b4: $9e
	ld   [bc], a                                     ; $51b5: $02
	and  l                                           ; $51b6: $a5
	inc  b                                           ; $51b7: $04
	rst  $28                                         ; $51b8: $ef
	ld   a, b                                        ; $51b9: $78
	sbc  a                                           ; $51ba: $9f
	dec  c                                           ; $51bb: $0d
	nop                                              ; $51bc: $00
	dec  b                                           ; $51bd: $05
	add  b                                           ; $51be: $80
	ld   a, l                                        ; $51bf: $7d
	ld   bc, $0001                                   ; $51c0: $01 $01 $00
	ld   bc, $f403                                   ; $51c3: $01 $03 $f4
	inc  b                                           ; $51c6: $04
	ld   e, c                                        ; $51c7: $59
	ld   [hl], l                                     ; $51c8: $75
	inc  b                                           ; $51c9: $04
	rla                                              ; $51ca: $17
	ld   [hl], c                                     ; $51cb: $71
	ld   [hl], h                                     ; $51cc: $74
	sbc  c                                           ; $51cd: $99
	ld   l, d                                        ; $51ce: $6a
	ld   a, [$000d]                                  ; $51cf: $fa $0d $00
	ld   a, [bc]                                     ; $51d2: $0a
	dec  b                                           ; $51d3: $05
	ld   b, b                                        ; $51d4: $40
	ld   e, l                                        ; $51d5: $5d
	ld   [bc], a                                     ; $51d6: $02
	nop                                              ; $51d7: $00
	nop                                              ; $51d8: $00
	nop                                              ; $51d9: $00
	rrca                                             ; $51da: $0f
	nop                                              ; $51db: $00
	ld   bc, $6b01                                   ; $51dc: $01 $01 $6b
	sbc  d                                           ; $51df: $9a
	ld   [hl], l                                     ; $51e0: $75
	sub  b                                           ; $51e1: $90
	sbc  [hl]                                        ; $51e2: $9e
	sub  d                                           ; $51e3: $92
	ld   a, l                                        ; $51e4: $7d
	sbc  b                                           ; $51e5: $98
	rst  $38                                         ; $51e6: $ff
	rst  $38                                         ; $51e7: $ff
	dec  c                                           ; $51e8: $0d
	nop                                              ; $51e9: $00
	ld   a, [bc]                                     ; $51ea: $0a
	inc  e                                           ; $51eb: $1c
	ld   b, $02                                      ; $51ec: $06 $02
	ld   [bc], a                                     ; $51ee: $02
	dec  e                                           ; $51ef: $1d
	ld   b, b                                        ; $51f0: $40
	ld   d, $03                                      ; $51f1: $16 $03
	ld   d, $01                                      ; $51f3: $16 $01
	inc  bc                                          ; $51f5: $03
	add  hl, hl                                      ; $51f6: $29
	nop                                              ; $51f7: $00
	ld   bc, $599d                                   ; $51f8: $01 $9d $59
	ld   [hl], c                                     ; $51fb: $71
	ld   l, l                                        ; $51fc: $6d
	sub  [hl]                                        ; $51fd: $96
	rst  $38                                         ; $51fe: $ff
	rst  $38                                         ; $51ff: $ff
	dec  c                                           ; $5200: $0d
	nop                                              ; $5201: $00
	dec  b                                           ; $5202: $05
	ld   b, b                                        ; $5203: $40
	ld   c, l                                        ; $5204: $4d
	ld   [bc], a                                     ; $5205: $02
	nop                                              ; $5206: $00
	nop                                              ; $5207: $00
	ld   bc, $5490                                   ; $5208: $01 $90 $54
	ld   e, b                                        ; $520b: $58
	inc  bc                                          ; $520c: $03
	ld   c, a                                        ; $520d: $4f
	ld   a, c                                        ; $520e: $79
	ld   a, l                                        ; $520f: $7d
	ld   l, l                                        ; $5210: $6d
	ld   a, h                                        ; $5211: $7c
	adc  h                                           ; $5212: $8c
	ld   a, b                                        ; $5213: $78
	ld   d, d                                        ; $5214: $52
	ld   l, d                                        ; $5215: $6a
	sbc  a                                           ; $5216: $9f
	dec  c                                           ; $5217: $0d
	nop                                              ; $5218: $00
	dec  b                                           ; $5219: $05
	ld   b, b                                        ; $521a: $40
	ld   d, e                                        ; $521b: $53
	ld   bc, $0001                                   ; $521c: $01 $01 $00
	ld   bc, $9166                                   ; $521f: $01 $66 $91
	ld   d, b                                        ; $5222: $50
	ld   a, b                                        ; $5223: $78
	sbc  a                                           ; $5224: $9f
	dec  c                                           ; $5225: $0d
	nop                                              ; $5226: $00
	ld   a, [bc]                                     ; $5227: $0a
	dec  c                                           ; $5228: $0d
	nop                                              ; $5229: $00
	nop                                              ; $522a: $00
	rrca                                             ; $522b: $0f
	nop                                              ; $522c: $00
	ld   bc, $1e09                                   ; $522d: $01 $09 $1e
	nop                                              ; $5230: $00
	inc  e                                           ; $5231: $1c
	ld   b, $02                                      ; $5232: $06 $02
	ld   [bc], a                                     ; $5234: $02
	ld   bc, $8c6e                                   ; $5235: $01 $6e $8c
	ld   [hl], c                                     ; $5238: $71
	ld   [hl], h                                     ; $5239: $74
	ld   l, a                                        ; $523a: $6f
	sub  c                                           ; $523b: $91
	dec  c                                           ; $523c: $0d
	inc  b                                           ; $523d: $04
	sbc  [hl]                                        ; $523e: $9e
	ld   e, c                                        ; $523f: $59
	sub  a                                           ; $5240: $97
	ld   a, b                                        ; $5241: $78
	ld   d, d                                        ; $5242: $52
	ld   l, [hl]                                     ; $5243: $6e
	sbc  e                                           ; $5244: $9b
	rst  $38                                         ; $5245: $ff
	rst  $38                                         ; $5246: $ff
	dec  c                                           ; $5247: $0d
	nop                                              ; $5248: $00
	ld   a, [bc]                                     ; $5249: $0a
	ld   bc, $508c                                   ; $524a: $01 $8c $50
	ld   d, d                                        ; $524d: $52
	ld   d, d                                        ; $524e: $52
	ld   h, e                                        ; $524f: $63
	rst  $38                                         ; $5250: $ff
	rst  $38                                         ; $5251: $ff
	dec  c                                           ; $5252: $0d
	inc  b                                           ; $5253: $04
	sub  $05                                         ; $5254: $d6 $05
	ld   de, $7579                                   ; $5256: $11 $79 $75
	sub  b                                           ; $5259: $90
	ld   [hl], d                                     ; $525a: $72
	ld   e, e                                        ; $525b: $5b
	ld   d, b                                        ; $525c: $50
	sbc  l                                           ; $525d: $9d
	ld   l, c                                        ; $525e: $69
	sbc  c                                           ; $525f: $99
	ld   e, c                                        ; $5260: $59
	sub  a                                           ; $5261: $97
	dec  c                                           ; $5262: $0d
	nop                                              ; $5263: $00
	dec  b                                           ; $5264: $05
	add  b                                           ; $5265: $80
	ld   a, l                                        ; $5266: $7d
	ld   bc, $0001                                   ; $5267: $01 $01 $00
	ld   bc, $a502                                   ; $526a: $01 $02 $a5
	inc  b                                           ; $526d: $04
	rst  $28                                         ; $526e: $ef
	sbc  [hl]                                        ; $526f: $9e
	inc  bc                                          ; $5270: $03
	db   $f4                                         ; $5271: $f4
	inc  b                                           ; $5272: $04
	ld   e, c                                        ; $5273: $59
	ld   [hl], l                                     ; $5274: $75
	inc  b                                           ; $5275: $04
	rla                                              ; $5276: $17
	ld   [hl], c                                     ; $5277: $71
	ld   [hl], h                                     ; $5278: $74
	sbc  c                                           ; $5279: $99
	ld   e, c                                        ; $527a: $59
	sub  a                                           ; $527b: $97
	ld   a, b                                        ; $527c: $78
	sbc  a                                           ; $527d: $9f
	dec  c                                           ; $527e: $0d
	nop                                              ; $527f: $00
	ld   a, [bc]                                     ; $5280: $0a
	dec  b                                           ; $5281: $05
	ld   b, b                                        ; $5282: $40
	ld   e, l                                        ; $5283: $5d
	ld   [bc], a                                     ; $5284: $02
	nop                                              ; $5285: $00
	nop                                              ; $5286: $00
	nop                                              ; $5287: $00
	nop                                              ; $5288: $00
	ld   c, $3d                                      ; $5289: $0e $3d
	inc  e                                           ; $528b: $1c
	inc  bc                                          ; $528c: $03
	nop                                              ; $528d: $00
	nop                                              ; $528e: $00
	ld   [bc], a                                     ; $528f: $02
	ld   bc, $9750                                   ; $5290: $01 $50 $97
	sbc  [hl]                                        ; $5293: $9e
	ld   [$5d00], sp                                 ; $5294: $08 $00 $5d
	and  c                                           ; $5297: $a1
	sbc  a                                           ; $5298: $9f
	dec  c                                           ; $5299: $0d
	ld   [bc], a                                     ; $529a: $02
	jr   z, jr_04e_52ef                              ; $529b: $28 $52

	ld   e, a                                        ; $529d: $5f
	ld   [hl], a                                     ; $529e: $77
	inc  bc                                          ; $529f: $03
	ld   l, e                                        ; $52a0: $6b
	inc  b                                           ; $52a1: $04
	ld   [de], a                                     ; $52a2: $12
	ld   [hl], c                                     ; $52a3: $71
	ld   [hl], h                                     ; $52a4: $74
	sub  b                                           ; $52a5: $90
	sub  a                                           ; $52a6: $97
	ld   d, [hl]                                     ; $52a7: $56
	sbc  c                                           ; $52a8: $99
	dec  c                                           ; $52a9: $0d
	ld   e, c                                        ; $52aa: $59
	ld   h, l                                        ; $52ab: $65
	sub  a                                           ; $52ac: $97
	ld   sp, hl                                      ; $52ad: $f9
	dec  c                                           ; $52ae: $0d
	nop                                              ; $52af: $00
	ld   a, [bc]                                     ; $52b0: $0a
	ld   bc, $786d                                   ; $52b1: $01 $6d $78
	ld   a, h                                        ; $52b4: $7c
	inc  bc                                          ; $52b5: $03
	ld   a, h                                        ; $52b6: $7c
	dec  b                                           ; $52b7: $05
	ld   de, $65a0                                   ; $52b8: $11 $a0 $65
	ld   l, l                                        ; $52bb: $6d
	ld   d, d                                        ; $52bc: $52
	ld   a, h                                        ; $52bd: $7c
	sub  [hl]                                        ; $52be: $96
	sbc  a                                           ; $52bf: $9f
	dec  c                                           ; $52c0: $0d
	nop                                              ; $52c1: $00
	ld   a, [bc]                                     ; $52c2: $0a
	ld   bc, $c803                                   ; $52c3: $01 $03 $c8
	ld   e, d                                        ; $52c6: $5a
	inc  b                                           ; $52c7: $04
	adc  a                                           ; $52c8: $8f
	ld   a, h                                        ; $52c9: $7c
	ret  nz                                          ; $52ca: $c0

	and  l                                           ; $52cb: $a5
	ret                                              ; $52cc: $c9


	db   $ed                                         ; $52cd: $ed
	and  b                                           ; $52ce: $a0
	ld   [bc], a                                     ; $52cf: $02
	sbc  l                                           ; $52d0: $9d
	ld   d, h                                        ; $52d1: $54
	ld   e, c                                        ; $52d2: $59
	sub  a                                           ; $52d3: $97
	dec  c                                           ; $52d4: $0d
	inc  bc                                          ; $52d5: $03
	xor  h                                           ; $52d6: $ac
	inc  bc                                          ; $52d7: $03
	or   b                                           ; $52d8: $b0
	inc  b                                           ; $52d9: $04
	ld   d, h                                        ; $52da: $54
	ld   a, h                                        ; $52db: $7c
	ld   l, l                                        ; $52dc: $6d
	ld   a, b                                        ; $52dd: $78
	ld   a, c                                        ; $52de: $79
	ld   e, b                                        ; $52df: $58
	ld   d, d                                        ; $52e0: $52
	ld   [hl], h                                     ; $52e1: $74
	dec  c                                           ; $52e2: $0d
	ld   l, a                                        ; $52e3: $6f
	sub  l                                           ; $52e4: $95
	ld   d, h                                        ; $52e5: $54
	ld   l, [hl]                                     ; $52e6: $6e
	ld   d, d                                        ; $52e7: $52
	sbc  a                                           ; $52e8: $9f
	dec  c                                           ; $52e9: $0d
	nop                                              ; $52ea: $00
	ld   a, [bc]                                     ; $52eb: $0a
	ld   bc, $9166                                   ; $52ec: $01 $66 $91

jr_04e_52ef:
	sbc  [hl]                                        ; $52ef: $9e
	ld   d, d                                        ; $52f0: $52
	ld   e, l                                        ; $52f1: $5d
	sbc  l                                           ; $52f2: $9d
	sub  [hl]                                        ; $52f3: $96
	sbc  a                                           ; $52f4: $9f
	dec  c                                           ; $52f5: $0d
	adc  h                                           ; $52f6: $8c
	ld   l, b                                        ; $52f7: $68
	ld   a, l                                        ; $52f8: $7d
	ld   bc, $0307                                   ; $52f9: $01 $07 $03
	ld   e, $76                                      ; $52fc: $1e $76
	inc  b                                           ; $52fe: $04
	and  d                                           ; $52ff: $a2
	ld   bc, $9f08                                   ; $5300: $01 $08 $9f
	dec  c                                           ; $5303: $0d
	nop                                              ; $5304: $00
	ld   a, [bc]                                     ; $5305: $0a
	add  hl, de                                      ; $5306: $19
	dec  b                                           ; $5307: $05
	inc  bc                                          ; $5308: $03
	jp   z, $c9ba                                    ; $5309: $ca $ba $c9

	xor  c                                           ; $530c: $a9
	sub  $ba                                         ; $530d: $d6 $ba
	xor  [hl]                                        ; $530f: $ae
	ei                                               ; $5310: $fb
	nop                                              ; $5311: $00
	nop                                              ; $5312: $00
	ret                                              ; $5313: $c9


	db   $ed                                         ; $5314: $ed
	cp   d                                           ; $5315: $ba
	ret                                              ; $5316: $c9


	and  l                                           ; $5317: $a5
	nop                                              ; $5318: $00
	ld   bc, $a4c8                                   ; $5319: $01 $c8 $a4
	or   d                                           ; $531c: $b2
	push af                                          ; $531d: $f5
	cp   e                                           ; $531e: $bb
	nop                                              ; $531f: $00
	ld   [bc], a                                     ; $5320: $02
	rlca                                             ; $5321: $07
	or   [hl]                                        ; $5322: $b6
	nop                                              ; $5323: $00
	ld   [bc], a                                     ; $5324: $02
	inc  bc                                          ; $5325: $03
	ld   bc, $2000                                   ; $5326: $01 $00 $20
	nop                                              ; $5329: $00
	rlca                                             ; $532a: $07
	reti                                             ; $532b: $d9


	nop                                              ; $532c: $00
	ld   [bc], a                                     ; $532d: $02
	inc  bc                                          ; $532e: $03
	ld   bc, $2001                                   ; $532f: $01 $01 $20
	nop                                              ; $5332: $00
	rlca                                             ; $5333: $07
	rlca                                             ; $5334: $07
	ld   bc, $0302                                   ; $5335: $01 $02 $03
	ld   bc, $2002                                   ; $5338: $01 $02 $20
	nop                                              ; $533b: $00
	ld   b, $35                                      ; $533c: $06 $35
	ld   bc, $031c                                   ; $533e: $01 $1c $03
	inc  bc                                          ; $5341: $03
	inc  bc                                          ; $5342: $03
	ld   bc, $6763                                   ; $5343: $01 $63 $67
	ld   e, d                                        ; $5346: $5a
	sbc  [hl]                                        ; $5347: $9e
	sub  [hl]                                        ; $5348: $96
	ld   e, l                                        ; $5349: $5d
	inc  b                                           ; $534a: $04
	dec  hl                                          ; $534b: $2b
	ld   [hl], c                                     ; $534c: $71
	ld   [hl], h                                     ; $534d: $74
	ld   d, d                                        ; $534e: $52
	sbc  c                                           ; $534f: $99
	sbc  l                                           ; $5350: $9d
	ld   a, e                                        ; $5351: $7b
	sbc  a                                           ; $5352: $9f
	dec  c                                           ; $5353: $0d
	nop                                              ; $5354: $00
	ld   a, [bc]                                     ; $5355: $0a
	dec  b                                           ; $5356: $05
	ld   b, b                                        ; $5357: $40
	rst  $38                                         ; $5358: $ff
	inc  bc                                          ; $5359: $03
	rst  $38                                         ; $535a: $ff
	ld   bc, $2801                                   ; $535b: $01 $01 $28
	nop                                              ; $535e: $00
	ld   b, $53                                      ; $535f: $06 $53
	ld   bc, $031c                                   ; $5361: $01 $1c $03
	inc  b                                           ; $5364: $04
	inc  b                                           ; $5365: $04
	ld   bc, $edc9                                   ; $5366: $01 $c9 $ed
	cp   d                                           ; $5369: $ba
	ret                                              ; $536a: $c9


	and  l                                           ; $536b: $a5
	ld   h, [hl]                                     ; $536c: $66
	sub  c                                           ; $536d: $91
	ld   a, b                                        ; $536e: $78
	ld   d, d                                        ; $536f: $52
	ld   [hl], l                                     ; $5370: $75
	ld   h, l                                        ; $5371: $65
	sub  l                                           ; $5372: $95
	sbc  a                                           ; $5373: $9f
	dec  c                                           ; $5374: $0d
	ld   bc, $0307                                   ; $5375: $01 $07 $03
	ld   e, $76                                      ; $5378: $1e $76
	inc  b                                           ; $537a: $04
	and  d                                           ; $537b: $a2
	ld   bc, $7d08                                   ; $537c: $01 $08 $7d
	dec  c                                           ; $537f: $0d
	jp   z, $c9ba                                    ; $5380: $ca $ba $c9

	xor  c                                           ; $5383: $a9
	sub  $ba                                         ; $5384: $d6 $ba
	xor  [hl]                                        ; $5386: $ae
	ei                                               ; $5387: $fb
	sub  [hl]                                        ; $5388: $96
	sbc  a                                           ; $5389: $9f
	dec  c                                           ; $538a: $0d
	nop                                              ; $538b: $00
	ld   a, [bc]                                     ; $538c: $0a
	ld   b, $53                                      ; $538d: $06 $53
	ld   bc, $031c                                   ; $538f: $01 $1c $03
	inc  b                                           ; $5392: $04
	inc  b                                           ; $5393: $04
	ld   bc, $a4c8                                   ; $5394: $01 $c8 $a4
	or   d                                           ; $5397: $b2
	push af                                          ; $5398: $f5
	cp   e                                           ; $5399: $bb
	ld   h, [hl]                                     ; $539a: $66
	sub  c                                           ; $539b: $91
	ld   a, b                                        ; $539c: $78
	ld   d, d                                        ; $539d: $52
	ld   [hl], l                                     ; $539e: $75
	ld   h, l                                        ; $539f: $65
	sub  l                                           ; $53a0: $95
	sbc  a                                           ; $53a1: $9f
	dec  c                                           ; $53a2: $0d
	ld   bc, $0307                                   ; $53a3: $01 $07 $03
	ld   e, $76                                      ; $53a6: $1e $76
	inc  b                                           ; $53a8: $04
	and  d                                           ; $53a9: $a2
	ld   bc, $7d08                                   ; $53aa: $01 $08 $7d
	dec  c                                           ; $53ad: $0d
	jp   z, $c9ba                                    ; $53ae: $ca $ba $c9

	xor  c                                           ; $53b1: $a9
	sub  $ba                                         ; $53b2: $d6 $ba
	xor  [hl]                                        ; $53b4: $ae
	ei                                               ; $53b5: $fb
	sub  [hl]                                        ; $53b6: $96
	sbc  a                                           ; $53b7: $9f
	dec  c                                           ; $53b8: $0d
	nop                                              ; $53b9: $00
	ld   a, [bc]                                     ; $53ba: $0a
	ld   b, $53                                      ; $53bb: $06 $53
	ld   bc, $031c                                   ; $53bd: $01 $1c $03
	inc  b                                           ; $53c0: $04
	inc  b                                           ; $53c1: $04
	ld   bc, $4904                                   ; $53c2: $01 $04 $49
	sub  d                                           ; $53c5: $92
	ld   [hl], c                                     ; $53c6: $71
	ld   [hl], h                                     ; $53c7: $74
	sbc  c                                           ; $53c8: $99
	ld   a, h                                        ; $53c9: $7c
	sbc  a                                           ; $53ca: $9f
	dec  c                                           ; $53cb: $0d
	jp   z, $c9ba                                    ; $53cc: $ca $ba $c9

	xor  c                                           ; $53cf: $a9
	sub  $ba                                         ; $53d0: $d6 $ba
	xor  [hl]                                        ; $53d2: $ae
	ei                                               ; $53d3: $fb
	sub  [hl]                                        ; $53d4: $96
	sbc  a                                           ; $53d5: $9f
	dec  c                                           ; $53d6: $0d
	nop                                              ; $53d7: $00
	ld   a, [bc]                                     ; $53d8: $0a
	ld   b, $53                                      ; $53d9: $06 $53
	ld   bc, $031c                                   ; $53db: $01 $1c $03
	nop                                              ; $53de: $00
	nop                                              ; $53df: $00
	ld   bc, $6803                                   ; $53e0: $01 $03 $68
	sbc  [hl]                                        ; $53e3: $9e
	ld   bc, $0307                                   ; $53e4: $01 $07 $03
	xor  b                                           ; $53e7: $a8
	dec  b                                           ; $53e8: $05
	jp   c, $0476                                    ; $53e9: $da $76 $04

	xor  b                                           ; $53ec: $a8
	dec  b                                           ; $53ed: $05
	ld   hl, $0801                                   ; $53ee: $21 $01 $08
	sbc  a                                           ; $53f1: $9f
	dec  c                                           ; $53f2: $0d
	nop                                              ; $53f3: $00
	ld   a, [bc]                                     ; $53f4: $0a
	add  hl, de                                      ; $53f5: $19
	dec  b                                           ; $53f6: $05
	inc  bc                                          ; $53f7: $03
	ret                                              ; $53f8: $c9


	db   $ed                                         ; $53f9: $ed
	cp   d                                           ; $53fa: $ba
	ret                                              ; $53fb: $c9


	and  l                                           ; $53fc: $a5
	nop                                              ; $53fd: $00
	nop                                              ; $53fe: $00
	reti                                             ; $53ff: $d9


	ldh  [$f5], a                                    ; $5400: $e0 $f5
	or   c                                           ; $5402: $b1
	and  a                                           ; $5403: $a7
	xor  b                                           ; $5404: $a8
	ei                                               ; $5405: $fb
	nop                                              ; $5406: $00
	ld   bc, $c4d9                                   ; $5407: $01 $d9 $c4
	cp   h                                           ; $540a: $bc
	nop                                              ; $540b: $00
	ld   [bc], a                                     ; $540c: $02
	rlca                                             ; $540d: $07
	and  d                                           ; $540e: $a2
	ld   bc, $0302                                   ; $540f: $01 $02 $03
	ld   bc, $2000                                   ; $5412: $01 $00 $20
	nop                                              ; $5415: $00
	rlca                                             ; $5416: $07
	cp   d                                           ; $5417: $ba
	ld   bc, $0302                                   ; $5418: $01 $02 $03
	ld   bc, $2001                                   ; $541b: $01 $01 $20
	nop                                              ; $541e: $00
	rlca                                             ; $541f: $07
	jp   hl                                          ; $5420: $e9


	ld   bc, $0302                                   ; $5421: $01 $02 $03
	ld   bc, $2002                                   ; $5424: $01 $02 $20
	nop                                              ; $5427: $00
	ld   b, $14                                      ; $5428: $06 $14
	ld   [bc], a                                     ; $542a: $02
	inc  e                                           ; $542b: $1c
	inc  bc                                          ; $542c: $03
	inc  bc                                          ; $542d: $03
	inc  bc                                          ; $542e: $03
	ld   bc, $546b                                   ; $542f: $01 $6b $54
	sub  [hl]                                        ; $5432: $96
	sbc  a                                           ; $5433: $9f
	dec  c                                           ; $5434: $0d
	nop                                              ; $5435: $00
	ld   a, [bc]                                     ; $5436: $0a
	dec  b                                           ; $5437: $05
	ld   b, b                                        ; $5438: $40
	rst  $38                                         ; $5439: $ff
	inc  bc                                          ; $543a: $03
	rst  $38                                         ; $543b: $ff
	ld   bc, $2801                                   ; $543c: $01 $01 $28
	nop                                              ; $543f: $00
	ld   b, $2f                                      ; $5440: $06 $2f
	ld   [bc], a                                     ; $5442: $02
	inc  e                                           ; $5443: $1c
	inc  bc                                          ; $5444: $03
	inc  b                                           ; $5445: $04
	inc  b                                           ; $5446: $04
	ld   bc, $e0d9                                   ; $5447: $01 $d9 $e0
	push af                                          ; $544a: $f5
	or   c                                           ; $544b: $b1
	and  a                                           ; $544c: $a7
	xor  b                                           ; $544d: $a8
	ei                                               ; $544e: $fb
	ld   h, [hl]                                     ; $544f: $66
	sub  c                                           ; $5450: $91
	ld   a, b                                        ; $5451: $78
	ld   d, d                                        ; $5452: $52
	sbc  l                                           ; $5453: $9d
	sbc  a                                           ; $5454: $9f
	dec  c                                           ; $5455: $0d
	ld   bc, $0307                                   ; $5456: $01 $07 $03
	xor  b                                           ; $5459: $a8
	dec  b                                           ; $545a: $05
	jp   c, $0476                                    ; $545b: $da $76 $04

	xor  b                                           ; $545e: $a8
	dec  b                                           ; $545f: $05
	ld   hl, $0801                                   ; $5460: $21 $01 $08
	ld   a, l                                        ; $5463: $7d
	dec  c                                           ; $5464: $0d
	ret                                              ; $5465: $c9


	db   $ed                                         ; $5466: $ed
	cp   d                                           ; $5467: $ba
	ret                                              ; $5468: $c9


	and  l                                           ; $5469: $a5
	sub  [hl]                                        ; $546a: $96
	sbc  a                                           ; $546b: $9f
	dec  c                                           ; $546c: $0d
	nop                                              ; $546d: $00
	ld   a, [bc]                                     ; $546e: $0a
	ld   b, $2f                                      ; $546f: $06 $2f
	ld   [bc], a                                     ; $5471: $02
	inc  e                                           ; $5472: $1c
	inc  bc                                          ; $5473: $03
	inc  b                                           ; $5474: $04
	inc  b                                           ; $5475: $04
	ld   bc, $c4d9                                   ; $5476: $01 $d9 $c4
	cp   h                                           ; $5479: $bc
	ld   h, [hl]                                     ; $547a: $66
	sub  c                                           ; $547b: $91

Jump_04e_547c:
	ld   a, b                                        ; $547c: $78
	ld   d, d                                        ; $547d: $52
	sbc  l                                           ; $547e: $9d
	sbc  a                                           ; $547f: $9f
	dec  c                                           ; $5480: $0d
	ld   bc, $0307                                   ; $5481: $01 $07 $03
	xor  b                                           ; $5484: $a8
	dec  b                                           ; $5485: $05
	jp   c, $0476                                    ; $5486: $da $76 $04

	xor  b                                           ; $5489: $a8
	dec  b                                           ; $548a: $05
	ld   hl, $0801                                   ; $548b: $21 $01 $08
	ld   a, l                                        ; $548e: $7d
	dec  c                                           ; $548f: $0d
	ret                                              ; $5490: $c9


	db   $ed                                         ; $5491: $ed
	cp   d                                           ; $5492: $ba
	ret                                              ; $5493: $c9


	and  l                                           ; $5494: $a5
	sub  [hl]                                        ; $5495: $96
	sbc  a                                           ; $5496: $9f
	dec  c                                           ; $5497: $0d
	nop                                              ; $5498: $00
	ld   a, [bc]                                     ; $5499: $0a
	ld   b, $2f                                      ; $549a: $06 $2f
	ld   [bc], a                                     ; $549c: $02
	inc  e                                           ; $549d: $1c
	inc  bc                                          ; $549e: $03
	inc  b                                           ; $549f: $04
	inc  b                                           ; $54a0: $04
	ld   bc, $4904                                   ; $54a1: $01 $04 $49
	sub  d                                           ; $54a4: $92
	ld   [hl], c                                     ; $54a5: $71
	ld   [hl], h                                     ; $54a6: $74
	sbc  c                                           ; $54a7: $99
	ld   a, h                                        ; $54a8: $7c
	sbc  a                                           ; $54a9: $9f
	dec  c                                           ; $54aa: $0d
	ret                                              ; $54ab: $c9


	db   $ed                                         ; $54ac: $ed
	cp   d                                           ; $54ad: $ba
	ret                                              ; $54ae: $c9


	and  l                                           ; $54af: $a5
	sub  [hl]                                        ; $54b0: $96
	sbc  a                                           ; $54b1: $9f
	dec  c                                           ; $54b2: $0d
	nop                                              ; $54b3: $00
	ld   a, [bc]                                     ; $54b4: $0a
	ld   b, $2f                                      ; $54b5: $06 $2f
	ld   [bc], a                                     ; $54b7: $02
	inc  e                                           ; $54b8: $1c
	inc  bc                                          ; $54b9: $03
	nop                                              ; $54ba: $00
	nop                                              ; $54bb: $00
	ld   bc, $6903                                   ; $54bc: $01 $03 $69
	ld   [bc], a                                     ; $54bf: $02
	xor  d                                           ; $54c0: $aa
	ld   a, l                                        ; $54c1: $7d
	ld   bc, $0307                                   ; $54c2: $01 $07 $03
	sub  l                                           ; $54c5: $95
	dec  b                                           ; $54c6: $05
	inc  e                                           ; $54c7: $1c
	ld   a, h                                        ; $54c8: $7c
	ld   [bc], a                                     ; $54c9: $02
	inc  [hl]                                        ; $54ca: $34
	ld   bc, $9608                                   ; $54cb: $01 $08 $96
	sbc  a                                           ; $54ce: $9f
	dec  c                                           ; $54cf: $0d
	nop                                              ; $54d0: $00
	ld   a, [bc]                                     ; $54d1: $0a
	add  hl, de                                      ; $54d2: $19
	dec  b                                           ; $54d3: $05
	inc  bc                                          ; $54d4: $03
	reti                                             ; $54d5: $d9


	call nz, $00bc                                   ; $54d6: $c4 $bc $00
	nop                                              ; $54d9: $00
	xor  h                                           ; $54da: $ac
	sub  $ac                                         ; $54db: $d6 $ac
	nop                                              ; $54dd: $00
	ld   bc, $e0ac                                   ; $54de: $01 $ac $e0
	rst  $20                                         ; $54e1: $e7
	nop                                              ; $54e2: $00
	ld   [bc], a                                     ; $54e3: $02
	rlca                                             ; $54e4: $07
	ld   a, c                                        ; $54e5: $79
	ld   [bc], a                                     ; $54e6: $02
	ld   [bc], a                                     ; $54e7: $02
	inc  bc                                          ; $54e8: $03
	ld   bc, $2000                                   ; $54e9: $01 $00 $20
	nop                                              ; $54ec: $00
	rlca                                             ; $54ed: $07
	sub  a                                           ; $54ee: $97
	ld   [bc], a                                     ; $54ef: $02
	ld   [bc], a                                     ; $54f0: $02
	inc  bc                                          ; $54f1: $03
	ld   bc, $2001                                   ; $54f2: $01 $01 $20
	nop                                              ; $54f5: $00
	rlca                                             ; $54f6: $07
	cp   [hl]                                        ; $54f7: $be
	ld   [bc], a                                     ; $54f8: $02
	ld   [bc], a                                     ; $54f9: $02
	inc  bc                                          ; $54fa: $03
	ld   bc, $2002                                   ; $54fb: $01 $02 $20
	nop                                              ; $54fe: $00
	ld   b, $e5                                      ; $54ff: $06 $e5
	ld   [bc], a                                     ; $5501: $02
	inc  e                                           ; $5502: $1c
	inc  bc                                          ; $5503: $03
	inc  bc                                          ; $5504: $03
	inc  bc                                          ; $5505: $03
	ld   bc, $546b                                   ; $5506: $01 $6b $54
	sub  [hl]                                        ; $5509: $96
	sbc  a                                           ; $550a: $9f
	ld   d, b                                        ; $550b: $50
	ld   [hl], c                                     ; $550c: $71
	ld   [hl], h                                     ; $550d: $74
	sbc  c                                           ; $550e: $99
	sbc  l                                           ; $550f: $9d
	sbc  a                                           ; $5510: $9f
	dec  c                                           ; $5511: $0d
	nop                                              ; $5512: $00
	ld   a, [bc]                                     ; $5513: $0a
	dec  b                                           ; $5514: $05
	ld   b, b                                        ; $5515: $40
	rst  $38                                         ; $5516: $ff
	inc  bc                                          ; $5517: $03
	rst  $38                                         ; $5518: $ff
	ld   bc, $2801                                   ; $5519: $01 $01 $28
	nop                                              ; $551c: $00
	ld   b, $00                                      ; $551d: $06 $00
	inc  bc                                          ; $551f: $03
	inc  e                                           ; $5520: $1c
	inc  bc                                          ; $5521: $03
	inc  b                                           ; $5522: $04
	inc  b                                           ; $5523: $04
	ld   bc, $d6ac                                   ; $5524: $01 $ac $d6
	xor  h                                           ; $5527: $ac
	ld   h, [hl]                                     ; $5528: $66
	sub  c                                           ; $5529: $91
	ld   a, b                                        ; $552a: $78
	ld   d, d                                        ; $552b: $52
	sbc  l                                           ; $552c: $9d
	sbc  a                                           ; $552d: $9f
	dec  c                                           ; $552e: $0d
	ld   bc, $0307                                   ; $552f: $01 $07 $03
	sub  l                                           ; $5532: $95
	dec  b                                           ; $5533: $05
	inc  e                                           ; $5534: $1c
	ld   a, h                                        ; $5535: $7c
	ld   [bc], a                                     ; $5536: $02
	inc  [hl]                                        ; $5537: $34
	ld   bc, $7d08                                   ; $5538: $01 $08 $7d
	sbc  [hl]                                        ; $553b: $9e
	reti                                             ; $553c: $d9


	call nz, $96bc                                   ; $553d: $c4 $bc $96
	sbc  a                                           ; $5540: $9f
	dec  c                                           ; $5541: $0d
	nop                                              ; $5542: $00
	ld   a, [bc]                                     ; $5543: $0a
	ld   b, $00                                      ; $5544: $06 $00
	inc  bc                                          ; $5546: $03
	inc  e                                           ; $5547: $1c
	inc  bc                                          ; $5548: $03
	inc  b                                           ; $5549: $04
	inc  b                                           ; $554a: $04
	ld   bc, $e0ac                                   ; $554b: $01 $ac $e0
	rst  $20                                         ; $554e: $e7
	ld   h, [hl]                                     ; $554f: $66
	sub  c                                           ; $5550: $91
	ld   a, b                                        ; $5551: $78
	ld   d, d                                        ; $5552: $52
	sbc  l                                           ; $5553: $9d
	sbc  a                                           ; $5554: $9f
	dec  c                                           ; $5555: $0d
	ld   bc, $0307                                   ; $5556: $01 $07 $03
	sub  l                                           ; $5559: $95
	dec  b                                           ; $555a: $05
	inc  e                                           ; $555b: $1c
	ld   a, h                                        ; $555c: $7c
	ld   [bc], a                                     ; $555d: $02
	inc  [hl]                                        ; $555e: $34
	ld   bc, $7d08                                   ; $555f: $01 $08 $7d
	sbc  [hl]                                        ; $5562: $9e
	reti                                             ; $5563: $d9


	call nz, $96bc                                   ; $5564: $c4 $bc $96
	sbc  a                                           ; $5567: $9f
	dec  c                                           ; $5568: $0d
	nop                                              ; $5569: $00
	ld   a, [bc]                                     ; $556a: $0a
	ld   b, $00                                      ; $556b: $06 $00
	inc  bc                                          ; $556d: $03
	inc  e                                           ; $556e: $1c
	inc  bc                                          ; $556f: $03
	inc  b                                           ; $5570: $04
	inc  b                                           ; $5571: $04
	ld   bc, $4904                                   ; $5572: $01 $04 $49
	sub  d                                           ; $5575: $92
	ld   [hl], c                                     ; $5576: $71
	ld   [hl], h                                     ; $5577: $74
	sbc  c                                           ; $5578: $99
	ld   a, h                                        ; $5579: $7c
	sbc  a                                           ; $557a: $9f
	dec  c                                           ; $557b: $0d
	reti                                             ; $557c: $d9


	call nz, Call_04e_75bc                           ; $557d: $c4 $bc $75
	ld   h, l                                        ; $5580: $65
	sub  l                                           ; $5581: $95
	sbc  a                                           ; $5582: $9f
	dec  c                                           ; $5583: $0d
	nop                                              ; $5584: $00
	ld   a, [bc]                                     ; $5585: $0a
	ld   b, $00                                      ; $5586: $06 $00
	inc  bc                                          ; $5588: $03
	rlca                                             ; $5589: $07
	dec  de                                          ; $558a: $1b
	inc  bc                                          ; $558b: $03
	inc  bc                                          ; $558c: $03
	rst  $38                                         ; $558d: $ff
	ld   bc, $2003                                   ; $558e: $01 $03 $20
	nop                                              ; $5591: $00
	rlca                                             ; $5592: $07
	ccf                                              ; $5593: $3f
	inc  bc                                          ; $5594: $03
	inc  bc                                          ; $5595: $03
	rst  $38                                         ; $5596: $ff
	ld   bc, $2002                                   ; $5597: $01 $02 $20
	nop                                              ; $559a: $00
	rlca                                             ; $559b: $07
	ld   h, b                                        ; $559c: $60
	inc  bc                                          ; $559d: $03
	inc  bc                                          ; $559e: $03
	rst  $38                                         ; $559f: $ff
	ld   bc, $2301                                   ; $55a0: $01 $01 $23
	nop                                              ; $55a3: $00
	inc  e                                           ; $55a4: $1c
	inc  bc                                          ; $55a5: $03
	inc  bc                                          ; $55a6: $03
	inc  bc                                          ; $55a7: $03
	dec  e                                           ; $55a8: $1d
	ld   b, b                                        ; $55a9: $40
	inc  de                                          ; $55aa: $13
	inc  bc                                          ; $55ab: $03
	inc  de                                          ; $55ac: $13
	ld   bc, $2803                                   ; $55ad: $01 $03 $28
	nop                                              ; $55b0: $00
	ld   bc, $0458                                   ; $55b1: $01 $58 $04
	ld   a, e                                        ; $55b4: $7b
	sbc  d                                           ; $55b5: $9a
	ld   h, e                                        ; $55b6: $63
	adc  h                                           ; $55b7: $8c
	sbc  a                                           ; $55b8: $9f
	dec  c                                           ; $55b9: $0d
	ld   h, a                                        ; $55ba: $67
	ld   h, d                                        ; $55bb: $62
	ld   e, l                                        ; $55bc: $5d
	inc  bc                                          ; $55bd: $03
	ld   e, e                                        ; $55be: $5b
	ld   e, c                                        ; $55bf: $59
	ld   [hl], c                                     ; $55c0: $71
	ld   l, l                                        ; $55c1: $6d
	sbc  l                                           ; $55c2: $9d
	sbc  a                                           ; $55c3: $9f
	dec  c                                           ; $55c4: $0d
	nop                                              ; $55c5: $00
	ld   a, [bc]                                     ; $55c6: $0a
	nop                                              ; $55c7: $00
	inc  e                                           ; $55c8: $1c
	inc  bc                                          ; $55c9: $03
	inc  bc                                          ; $55ca: $03
	inc  bc                                          ; $55cb: $03
	dec  e                                           ; $55cc: $1d
	ld   b, b                                        ; $55cd: $40
	inc  de                                          ; $55ce: $13
	inc  bc                                          ; $55cf: $03
	inc  de                                          ; $55d0: $13
	ld   bc, $2801                                   ; $55d1: $01 $01 $28
	nop                                              ; $55d4: $00
	ld   bc, $0458                                   ; $55d5: $01 $58 $04
	ld   a, e                                        ; $55d8: $7b
	sbc  d                                           ; $55d9: $9a
	ld   h, e                                        ; $55da: $63
	adc  h                                           ; $55db: $8c
	sbc  a                                           ; $55dc: $9f
	dec  c                                           ; $55dd: $0d
	sub  b                                           ; $55de: $90
	ld   d, h                                        ; $55df: $54
	ld   d, d                                        ; $55e0: $52
	ld   d, d                                        ; $55e1: $52
	sbc  l                                           ; $55e2: $9d
	sub  [hl]                                        ; $55e3: $96
	sbc  a                                           ; $55e4: $9f
	dec  c                                           ; $55e5: $0d
	nop                                              ; $55e6: $00
	ld   a, [bc]                                     ; $55e7: $0a
	nop                                              ; $55e8: $00
	inc  e                                           ; $55e9: $1c
	inc  bc                                          ; $55ea: $03
	inc  b                                           ; $55eb: $04
	inc  b                                           ; $55ec: $04
	dec  e                                           ; $55ed: $1d
	ld   b, b                                        ; $55ee: $40
	inc  de                                          ; $55ef: $13
	inc  bc                                          ; $55f0: $03
	inc  de                                          ; $55f1: $13
	ld   bc, $2902                                   ; $55f2: $01 $02 $29
	nop                                              ; $55f5: $00
	ld   bc, $ffff                                   ; $55f6: $01 $ff $ff
	rst  $38                                         ; $55f9: $ff
	rst  $38                                         ; $55fa: $ff
	rst  $38                                         ; $55fb: $ff
	rst  $38                                         ; $55fc: $ff
	rst  $38                                         ; $55fd: $ff
	rst  $38                                         ; $55fe: $ff
	dec  c                                           ; $55ff: $0d
	add  b                                           ; $5600: $80
	halt                                             ; $5601: $76
	sbc  b                                           ; $5602: $98
	ld   [hl], l                                     ; $5603: $75
	sub  d                                           ; $5604: $92
	ld   [hl], c                                     ; $5605: $71
	ld   l, l                                        ; $5606: $6d
	inc  b                                           ; $5607: $04
	ld   a, b                                        ; $5608: $78
	ld   e, d                                        ; $5609: $5a
	dec  c                                           ; $560a: $0d
	inc  bc                                          ; $560b: $03
	ld   [hl], b                                     ; $560c: $70
	ld   e, c                                        ; $560d: $59
	ld   [hl], c                                     ; $560e: $71
	ld   l, l                                        ; $560f: $6d
	sbc  l                                           ; $5610: $9d
	sbc  a                                           ; $5611: $9f
	dec  c                                           ; $5612: $0d
	nop                                              ; $5613: $00
	ld   a, [bc]                                     ; $5614: $0a
	dec  e                                           ; $5615: $1d
	ld   b, b                                        ; $5616: $40
	inc  de                                          ; $5617: $13
	inc  bc                                          ; $5618: $03
	inc  de                                          ; $5619: $13
	ld   bc, $2902                                   ; $561a: $01 $02 $29
	nop                                              ; $561d: $00
	ld   bc, $0008                                   ; $561e: $01 $08 $00
	ld   e, l                                        ; $5621: $5d
	and  c                                           ; $5622: $a1
	ld   a, l                                        ; $5623: $7d
	sbc  [hl]                                        ; $5624: $9e
	sub  b                                           ; $5625: $90
	ld   d, h                                        ; $5626: $54
	inc  bc                                          ; $5627: $03
	ld   l, h                                        ; $5628: $6c
	ld   h, l                                        ; $5629: $65
	dec  c                                           ; $562a: $0d
	inc  bc                                          ; $562b: $03
	dec  bc                                          ; $562c: $0b
	and  c                                           ; $562d: $a1
	ld   a, b                                        ; $562e: $78
	ld   [bc], a                                     ; $562f: $02
	jp   $02a0                                       ; $5630: $c3 $a0 $02


	and  d                                           ; $5633: $a2
	and  c                                           ; $5634: $a1
	ld   l, [hl]                                     ; $5635: $6e
	inc  b                                           ; $5636: $04
	ld   a, b                                        ; $5637: $78
	ld   e, d                                        ; $5638: $5a
	ld   d, d                                        ; $5639: $52
	ld   d, d                                        ; $563a: $52
	dec  c                                           ; $563b: $0d
	and  c                                           ; $563c: $a1
	ld   h, [hl]                                     ; $563d: $66
	sub  c                                           ; $563e: $91
	ld   a, b                                        ; $563f: $78
	ld   d, d                                        ; $5640: $52
	sbc  a                                           ; $5641: $9f
	ld   l, e                                        ; $5642: $6b
	sbc  d                                           ; $5643: $9a
	ld   h, [hl]                                     ; $5644: $66
	sub  c                                           ; $5645: $91
	sbc  a                                           ; $5646: $9f
	dec  c                                           ; $5647: $0d
	nop                                              ; $5648: $00
	ld   a, [bc]                                     ; $5649: $0a
	dec  c                                           ; $564a: $0d
	nop                                              ; $564b: $00
	nop                                              ; $564c: $00
	rrca                                             ; $564d: $0f
	nop                                              ; $564e: $00
	ld   bc, $1e09                                   ; $564f: $01 $09 $1e
	nop                                              ; $5652: $00
	nop                                              ; $5653: $00
	ld   c, $29                                      ; $5654: $0e $29
	rrca                                             ; $5656: $0f
	nop                                              ; $5657: $00
	ld   bc, $0102                                   ; $5658: $01 $02 $01
	ld   bc, $a103                                   ; $565b: $01 $03 $a1
	rst  $38                                         ; $565e: $ff
	rst  $38                                         ; $565f: $ff
	ld   sp, hl                                      ; $5660: $f9
	dec  c                                           ; $5661: $0d
	db   $10                                         ; $5662: $10
	inc  b                                           ; $5663: $04
	ld   c, c                                        ; $5664: $49
	ld   e, c                                        ; $5665: $59
	dec  b                                           ; $5666: $05
	ld   [de], a                                     ; $5667: $12
	ld   l, a                                        ; $5668: $6f
	ld   [hl], h                                     ; $5669: $74
	sbc  c                                           ; $566a: $99
	ld   l, h                                        ; $566b: $6c
	rst  $38                                         ; $566c: $ff
	rst  $38                                         ; $566d: $ff
	ld   bc, $0d04                                   ; $566e: $01 $04 $0d
	nop                                              ; $5671: $00
	ld   a, [bc]                                     ; $5672: $0a
	db   $10                                         ; $5673: $10
	dec  h                                           ; $5674: $25
	nop                                              ; $5675: $00
	ld   bc, $0301                                   ; $5676: $01 $01 $03
	inc  b                                           ; $5679: $04
	xor  d                                           ; $567a: $aa
	ld   [bc], a                                     ; $567b: $02
	sub  a                                           ; $567c: $97
	rst  $38                                         ; $567d: $ff
	rst  $38                                         ; $567e: $ff
	dec  c                                           ; $567f: $0d
	db   $10                                         ; $5680: $10
	and  e                                           ; $5681: $a3
	and  l                                           ; $5682: $a5
	db   $ec                                         ; $5683: $ec
	cp   d                                           ; $5684: $ba
	ld   a, h                                        ; $5685: $7c
	ld   l, [hl]                                     ; $5686: $6e
	rst  $38                                         ; $5687: $ff
	rst  $38                                         ; $5688: $ff
	ld   bc, $0d04                                   ; $5689: $01 $04 $0d
	nop                                              ; $568c: $00
	ld   a, [bc]                                     ; $568d: $0a
	add  hl, de                                      ; $568e: $19
	dec  b                                           ; $568f: $05
	inc  bc                                          ; $5690: $03
	inc  b                                           ; $5691: $04
	ld   de, $008e                                   ; $5692: $11 $8e $00
	nop                                              ; $5695: $00
	inc  b                                           ; $5696: $04
	ld   de, $788c                                   ; $5697: $11 $8c $78
	ld   d, d                                        ; $569a: $52
	nop                                              ; $569b: $00
	ld   bc, $e0b5                                   ; $569c: $01 $b5 $e0
	inc  b                                           ; $569f: $04
	add  a                                           ; $56a0: $87
	add  [hl]                                        ; $56a1: $86
	ld   h, a                                        ; $56a2: $67
	ld   [hl], h                                     ; $56a3: $74
	sbc  c                                           ; $56a4: $99
	nop                                              ; $56a5: $00
	ld   [bc], a                                     ; $56a6: $02
	rlca                                             ; $56a7: $07
	ld   [hl], c                                     ; $56a8: $71
	nop                                              ; $56a9: $00
	ld   [bc], a                                     ; $56aa: $02
	inc  bc                                          ; $56ab: $03
	ld   bc, $2000                                   ; $56ac: $01 $00 $20
	nop                                              ; $56af: $00
	rlca                                             ; $56b0: $07
	inc  e                                           ; $56b1: $1c
	ld   bc, $0302                                   ; $56b2: $01 $02 $03
	ld   bc, $2001                                   ; $56b5: $01 $01 $20
	nop                                              ; $56b8: $00
	rlca                                             ; $56b9: $07
	db   $db                                         ; $56ba: $db
	nop                                              ; $56bb: $00
	ld   [bc], a                                     ; $56bc: $02
	inc  bc                                          ; $56bd: $03
	ld   bc, $2002                                   ; $56be: $01 $02 $20
	nop                                              ; $56c1: $00
	ld   b, $05                                      ; $56c2: $06 $05
	ld   bc, $000f                                   ; $56c4: $01 $0f $00
	ld   bc, $0101                                   ; $56c7: $01 $01 $01
	inc  bc                                          ; $56ca: $03
	inc  b                                           ; $56cb: $04
	ld   de, $75a1                                   ; $56cc: $11 $a1 $75
	adc  l                                           ; $56cf: $8d
	sub  [hl]                                        ; $56d0: $96
	ld   d, h                                        ; $56d1: $54
	rst  $38                                         ; $56d2: $ff
	rst  $38                                         ; $56d3: $ff
	ld   bc, $0d04                                   ; $56d4: $01 $04 $0d
	nop                                              ; $56d7: $00
	ld   a, [bc]                                     ; $56d8: $0a
	ld   bc, $5bfd                                   ; $56d9: $01 $fd $5b
	sub  l                                           ; $56dc: $95
	ld   d, h                                        ; $56dd: $54
	ld   a, l                                        ; $56de: $7d
	sbc  [hl]                                        ; $56df: $9e
	cp   c                                           ; $56e0: $b9
	push hl                                          ; $56e1: $e5
	push af                                          ; $56e2: $f5
	sbc  $fb                                         ; $56e3: $de $fb
	db   $ed                                         ; $56e5: $ed
	halt                                             ; $56e6: $76
	dec  c                                           ; $56e7: $0d
	db   $10                                         ; $56e8: $10
	ld   d, d                                        ; $56e9: $52
	ld   [hl], c                                     ; $56ea: $71
	ld   h, l                                        ; $56eb: $65
	sub  l                                           ; $56ec: $95
	ld   a, c                                        ; $56ed: $79
	ld   e, b                                        ; $56ee: $58
	sub  $ef                                         ; $56ef: $d6 $ef
	ld   a, c                                        ; $56f1: $79
	ld   a, l                                        ; $56f2: $7d
	ld   d, d                                        ; $56f3: $52
	sbc  b                                           ; $56f4: $98
	dec  c                                           ; $56f5: $0d
	db   $10                                         ; $56f6: $10
	adc  h                                           ; $56f7: $8c
	ld   h, l                                        ; $56f8: $65
	ld   l, l                                        ; $56f9: $6d
	sbc  a                                           ; $56fa: $9f
	db   $10                                         ; $56fb: $10
	db   $10                                         ; $56fc: $10
	db   $10                                         ; $56fd: $10
	db   $10                                         ; $56fe: $10
	db   $10                                         ; $56ff: $10
	ld   e, b                                        ; $5700: $58
	sbc  l                                           ; $5701: $9d
	sbc  b                                           ; $5702: $98
	cp   $0d                                         ; $5703: $fe $0d
	nop                                              ; $5705: $00
	ld   a, [bc]                                     ; $5706: $0a
	ld   bc, $0301                                   ; $5707: $01 $01 $03
	rst  $38                                         ; $570a: $ff
	rst  $38                                         ; $570b: $ff
	rst  $38                                         ; $570c: $ff
	rst  $38                                         ; $570d: $ff
	rst  $38                                         ; $570e: $ff
	rst  $38                                         ; $570f: $ff
	rst  $38                                         ; $5710: $ff
	rst  $38                                         ; $5711: $ff
	dec  c                                           ; $5712: $0d
	db   $10                                         ; $5713: $10
	halt                                             ; $5714: $76
	sbc  b                                           ; $5715: $98
	ld   d, b                                        ; $5716: $50
	ld   d, [hl]                                     ; $5717: $56
	ld   l, b                                        ; $5718: $68
	dec  c                                           ; $5719: $0d
	db   $10                                         ; $571a: $10
	ld   d, b                                        ; $571b: $50
	ld   l, b                                        ; $571c: $68
	ld   e, c                                        ; $571d: $59
	ld   [hl], c                                     ; $571e: $71
	ld   [hl], h                                     ; $571f: $74
	ld   e, b                                        ; $5720: $58
	ld   h, c                                        ; $5721: $61
	ld   d, h                                        ; $5722: $54
	ld   bc, $0d04                                   ; $5723: $01 $04 $0d
	nop                                              ; $5726: $00
	ld   a, [bc]                                     ; $5727: $0a
	dec  b                                           ; $5728: $05
	add  b                                           ; $5729: $80
	dec  a                                           ; $572a: $3d
	ld   bc, $0001                                   ; $572b: $01 $01 $00
	nop                                              ; $572e: $00
	rrca                                             ; $572f: $0f
	nop                                              ; $5730: $00
	ld   bc, $0101                                   ; $5731: $01 $01 $01
	inc  bc                                          ; $5734: $03
	ld   d, d                                        ; $5735: $52
	sub  a                                           ; $5736: $97
	ld   a, b                                        ; $5737: $78
	ld   d, d                                        ; $5738: $52
	ld   a, h                                        ; $5739: $7c
	ld   e, c                                        ; $573a: $59
	ld   a, b                                        ; $573b: $78
	ld   sp, hl                                      ; $573c: $f9
	dec  c                                           ; $573d: $0d
	nop                                              ; $573e: $00
	dec  b                                           ; $573f: $05
	add  b                                           ; $5740: $80
	ccf                                              ; $5741: $3f
	ld   bc, $0001                                   ; $5742: $01 $01 $00
	ld   bc, $6610                                   ; $5745: $01 $10 $66
	sub  c                                           ; $5748: $91
	ld   d, b                                        ; $5749: $50
	sbc  [hl]                                        ; $574a: $9e
	or   l                                           ; $574b: $b5
	ldh  [rDIV], a                                   ; $574c: $e0 $04
	add  a                                           ; $574e: $87
	add  [hl]                                        ; $574f: $86
	halt                                             ; $5750: $76
	rst  $38                                         ; $5751: $ff
	rst  $38                                         ; $5752: $ff
	ld   bc, $0d04                                   ; $5753: $01 $04 $0d
	nop                                              ; $5756: $00
	ld   a, [bc]                                     ; $5757: $0a
	nop                                              ; $5758: $00
	rrca                                             ; $5759: $0f
	nop                                              ; $575a: $00
	ld   bc, $0101                                   ; $575b: $01 $01 $01
	inc  bc                                          ; $575e: $03
	ld   h, c                                        ; $575f: $61
	ld   a, h                                        ; $5760: $7c
	adc  h                                           ; $5761: $8c
	adc  h                                           ; $5762: $8c
	ld   a, c                                        ; $5763: $79
	ld   h, l                                        ; $5764: $65
	halt                                             ; $5765: $76
	ld   e, l                                        ; $5766: $5d
	ld   e, c                                        ; $5767: $59
	rst  $38                                         ; $5768: $ff
	rst  $38                                         ; $5769: $ff
	ld   bc, $0d04                                   ; $576a: $01 $04 $0d
	nop                                              ; $576d: $00
	ld   a, [bc]                                     ; $576e: $0a
	nop                                              ; $576f: $00
	rrca                                             ; $5770: $0f
	nop                                              ; $5771: $00
	ld   bc, $0101                                   ; $5772: $01 $01 $01
	inc  bc                                          ; $5775: $03
	halt                                             ; $5776: $76
	sbc  b                                           ; $5777: $98
	ld   d, b                                        ; $5778: $50
	ld   d, [hl]                                     ; $5779: $56
	ld   l, b                                        ; $577a: $68
	dec  c                                           ; $577b: $0d
	db   $10                                         ; $577c: $10
	ld   d, b                                        ; $577d: $50
	ld   l, b                                        ; $577e: $68
	ld   e, c                                        ; $577f: $59
	ld   [hl], c                                     ; $5780: $71
	ld   [hl], h                                     ; $5781: $74
	ld   e, b                                        ; $5782: $58
	ld   h, c                                        ; $5783: $61
	ld   d, h                                        ; $5784: $54
	rst  $38                                         ; $5785: $ff
	rst  $38                                         ; $5786: $ff
	ld   bc, $0d04                                   ; $5787: $01 $04 $0d
	nop                                              ; $578a: $00
	ld   a, [bc]                                     ; $578b: $0a
	dec  b                                           ; $578c: $05
	add  b                                           ; $578d: $80
	ld   a, $01                                      ; $578e: $3e $01
	ld   bc, $0000                                   ; $5790: $01 $00 $00
	nop                                              ; $5793: $00
	ld   c, $4c                                      ; $5794: $0e $4c
	inc  e                                           ; $5796: $1c
	dec  b                                           ; $5797: $05
	ld   bc, $0201                                   ; $5798: $01 $01 $02
	ld   bc, $5858                                   ; $579b: $01 $58 $58
	sbc  [hl]                                        ; $579e: $9e
	ld   [$7d00], sp                                 ; $579f: $08 $00 $7d
	and  c                                           ; $57a2: $a1
	dec  c                                           ; $57a3: $0d
	xor  c                                           ; $57a4: $a9
	xor  c                                           ; $57a5: $a9
	halt                                             ; $57a6: $76
	ld   h, c                                        ; $57a7: $61
	ld   a, c                                        ; $57a8: $79
	dec  b                                           ; $57a9: $05
	db   $10                                         ; $57aa: $10
	ld   l, l                                        ; $57ab: $6d
	ld   a, b                                        ; $57ac: $78
	sbc  a                                           ; $57ad: $9f
	dec  c                                           ; $57ae: $0d
	nop                                              ; $57af: $00
	ld   a, [bc]                                     ; $57b0: $0a
	ld   bc, $956f                                   ; $57b1: $01 $6f $95
	ld   [hl], c                                     ; $57b4: $71
	halt                                             ; $57b5: $76
	inc  bc                                          ; $57b6: $03
	adc  e                                           ; $57b7: $8b
	ld   [bc], a                                     ; $57b8: $02
	sub  [hl]                                        ; $57b9: $96
	ld   a, h                                        ; $57ba: $7c
	inc  bc                                          ; $57bb: $03
	ld   l, e                                        ; $57bc: $6b
	inc  b                                           ; $57bd: $04
	ld   [de], a                                     ; $57be: $12
	ld   d, d                                        ; $57bf: $52
	and  b                                           ; $57c0: $a0
	dec  c                                           ; $57c1: $0d
	ld   l, l                                        ; $57c2: $6d
	ld   a, h                                        ; $57c3: $7c
	adc  l                                           ; $57c4: $8d
	ld   l, l                                        ; $57c5: $6d
	ld   d, d                                        ; $57c6: $52
	ld   a, e                                        ; $57c7: $7b
	and  c                                           ; $57c8: $a1
	ld   e, a                                        ; $57c9: $5f
	ld   [hl], a                                     ; $57ca: $77
	dec  c                                           ; $57cb: $0d
	xor  c                                           ; $57cc: $a9
	xor  c                                           ; $57cd: $a9
	ld   e, c                                        ; $57ce: $59
	ld   a, b                                        ; $57cf: $78
	db   $fc                                         ; $57d0: $fc
	ld   sp, hl                                      ; $57d1: $f9
	dec  c                                           ; $57d2: $0d
	nop                                              ; $57d3: $00
	ld   a, [bc]                                     ; $57d4: $0a
	add  hl, de                                      ; $57d5: $19
	dec  b                                           ; $57d6: $05
	ld   [bc], a                                     ; $57d7: $02
	ld   d, d                                        ; $57d8: $52
	ld   d, d                                        ; $57d9: $52
	ld   [hl], l                                     ; $57da: $75
	ld   h, a                                        ; $57db: $67
	sub  [hl]                                        ; $57dc: $96
	nop                                              ; $57dd: $00
	nop                                              ; $57de: $00
	ld   [bc], a                                     ; $57df: $02
	and  l                                           ; $57e0: $a5
	ld   a, l                                        ; $57e1: $7d
	ld   l, a                                        ; $57e2: $6f
	sub  l                                           ; $57e3: $95
	ld   [hl], c                                     ; $57e4: $71
	halt                                             ; $57e5: $76
	rst  $38                                         ; $57e6: $ff
	nop                                              ; $57e7: $00
	ld   bc, $6a07                                   ; $57e8: $01 $07 $6a
	nop                                              ; $57eb: $00
	ld   [bc], a                                     ; $57ec: $02
	inc  bc                                          ; $57ed: $03
	ld   bc, $2000                                   ; $57ee: $01 $00 $20
	nop                                              ; $57f1: $00
	rlca                                             ; $57f2: $07
	rst  ToBoot                                         ; $57f3: $c7
	nop                                              ; $57f4: $00
	ld   [bc], a                                     ; $57f5: $02
	inc  bc                                          ; $57f6: $03
	ld   bc, $2001                                   ; $57f7: $01 $01 $20
	nop                                              ; $57fa: $00
	ld   b, $17                                      ; $57fb: $06 $17
	ld   bc, $000f                                   ; $57fd: $01 $0f $00
	ld   bc, $5201                                   ; $5800: $01 $01 $52
	ld   d, d                                        ; $5803: $52
	ld   [hl], l                                     ; $5804: $75
	ld   h, a                                        ; $5805: $67
	sub  [hl]                                        ; $5806: $96
	sbc  a                                           ; $5807: $9f
	dec  c                                           ; $5808: $0d
	inc  b                                           ; $5809: $04
	ld   l, l                                        ; $580a: $6d
	ld   [hl], l                                     ; $580b: $75
	ld   e, b                                        ; $580c: $58
	inc  b                                           ; $580d: $04
	db   $ec                                         ; $580e: $ec
	ld   a, c                                        ; $580f: $79
	dec  b                                           ; $5810: $05
	ld   d, $74                                      ; $5811: $16 $74
	sbc  c                                           ; $5813: $99
	ld   a, b                                        ; $5814: $78
	sub  a                                           ; $5815: $97
	dec  c                                           ; $5816: $0d
	ld   e, b                                        ; $5817: $58
	sub  d                                           ; $5818: $92
	ld   h, a                                        ; $5819: $67
	ld   d, d                                        ; $581a: $52
	ld   h, d                                        ; $581b: $62
	inc  b                                           ; $581c: $04
	di                                               ; $581d: $f3
	ld   [hl], l                                     ; $581e: $75
	ld   h, a                                        ; $581f: $67
	sub  [hl]                                        ; $5820: $96
	sbc  a                                           ; $5821: $9f
	dec  c                                           ; $5822: $0d
	nop                                              ; $5823: $00
	ld   a, [bc]                                     ; $5824: $0a
	inc  e                                           ; $5825: $1c
	dec  b                                           ; $5826: $05
	ld   bc, $1d01                                   ; $5827: $01 $01 $1d
	ld   b, b                                        ; $582a: $40
	dec  d                                           ; $582b: $15
	inc  bc                                          ; $582c: $03
	dec  d                                           ; $582d: $15
	ld   bc, $2801                                   ; $582e: $01 $01 $28
	nop                                              ; $5831: $00
	ld   bc, $f5dc                                   ; $5832: $01 $dc $f5
	rst  JumpTable                                         ; $5835: $df
	ld   e, c                                        ; $5836: $59
	ld   a, [$780d]                                  ; $5837: $fa $0d $78
	sub  a                                           ; $583a: $97
	sbc  [hl]                                        ; $583b: $9e
	inc  b                                           ; $583c: $04
	ld   b, l                                        ; $583d: $45
	ld   [hl], c                                     ; $583e: $71
	ld   [hl], h                                     ; $583f: $74
	inc  b                                           ; $5840: $04
	ld   b, l                                        ; $5841: $45
	ld   [hl], c                                     ; $5842: $71
	ld   [hl], h                                     ; $5843: $74
	sbc  a                                           ; $5844: $9f
	dec  c                                           ; $5845: $0d
	ld   d, h                                        ; $5846: $54
	sbc  d                                           ; $5847: $9a
	ld   h, l                                        ; $5848: $65
	ld   d, d                                        ; $5849: $52
	sbc  l                                           ; $584a: $9d
	db   $fc                                         ; $584b: $fc
	sbc  a                                           ; $584c: $9f
	dec  c                                           ; $584d: $0d
	nop                                              ; $584e: $00
	ld   a, [bc]                                     ; $584f: $0a
	dec  c                                           ; $5850: $0d
	nop                                              ; $5851: $00
	nop                                              ; $5852: $00
	rrca                                             ; $5853: $0f
	nop                                              ; $5854: $00
	ld   bc, $5423                                   ; $5855: $01 $23 $54
	ld   b, $6d                                      ; $5858: $06 $6d
	ld   bc, $000f                                   ; $585a: $01 $0f $00
	ld   bc, $6701                                   ; $585d: $01 $01 $67
	adc  l                                           ; $5860: $8d
	adc  h                                           ; $5861: $8c
	ld   l, c                                        ; $5862: $69
	and  c                                           ; $5863: $a1
	sbc  [hl]                                        ; $5864: $9e
	dec  c                                           ; $5865: $0d
	ld   [bc], a                                     ; $5866: $02
	and  l                                           ; $5867: $a5
	ld   a, l                                        ; $5868: $7d
	ld   l, a                                        ; $5869: $6f
	sub  l                                           ; $586a: $95
	ld   [hl], c                                     ; $586b: $71
	halt                                             ; $586c: $76
	rst  $38                                         ; $586d: $ff
	inc  bc                                          ; $586e: $03
	ld   l, a                                        ; $586f: $6f
	ld   [bc], a                                     ; $5870: $02
	xor  c                                           ; $5871: $a9
	ld   e, d                                        ; $5872: $5a
	rst  $38                                         ; $5873: $ff
	rst  $38                                         ; $5874: $ff
	dec  c                                           ; $5875: $0d
	nop                                              ; $5876: $00
	ld   a, [bc]                                     ; $5877: $0a
	inc  e                                           ; $5878: $1c
	dec  b                                           ; $5879: $05
	ld   [bc], a                                     ; $587a: $02
	ld   [bc], a                                     ; $587b: $02
	ld   bc, $546b                                   ; $587c: $01 $6b $54
	ld   e, c                                        ; $587f: $59
	rst  $38                                         ; $5880: $ff
	rst  $38                                         ; $5881: $ff
	sbc  a                                           ; $5882: $9f
	dec  c                                           ; $5883: $0d
	ld   l, e                                        ; $5884: $6b
	sbc  d                                           ; $5885: $9a
	sub  d                                           ; $5886: $92
	ld   [hl], c                                     ; $5887: $71
	ld   l, l                                        ; $5888: $6d
	sub  a                                           ; $5889: $97
	sbc  [hl]                                        ; $588a: $9e
	ld   h, l                                        ; $588b: $65
	sub  c                                           ; $588c: $91
	ei                                               ; $588d: $fb
	ld   a, b                                        ; $588e: $78
	ld   d, d                                        ; $588f: $52
	ld   a, b                                        ; $5890: $78
	sbc  a                                           ; $5891: $9f
	dec  c                                           ; $5892: $0d
	nop                                              ; $5893: $00
	ld   a, [bc]                                     ; $5894: $0a
	ld   bc, $7889                                   ; $5895: $01 $89 $78
	sbc  [hl]                                        ; $5898: $9e
	adc  h                                           ; $5899: $8c
	ld   l, l                                        ; $589a: $6d
	ld   [bc], a                                     ; $589b: $02
	and  l                                           ; $589c: $a5
	inc  b                                           ; $589d: $04
	add  hl, hl                                      ; $589e: $29
	inc  bc                                          ; $589f: $03
	ld   l, e                                        ; $58a0: $6b
	inc  b                                           ; $58a1: $04
	ld   [de], a                                     ; $58a2: $12
	ld   [hl], c                                     ; $58a3: $71
	ld   [hl], h                                     ; $58a4: $74
	ld   a, b                                        ; $58a5: $78
	sbc  a                                           ; $58a6: $9f
	dec  c                                           ; $58a7: $0d
	nop                                              ; $58a8: $00
	ld   a, [bc]                                     ; $58a9: $0a
	nop                                              ; $58aa: $00
	inc  e                                           ; $58ab: $1c
	dec  b                                           ; $58ac: $05
	rlca                                             ; $58ad: $07
	rlca                                             ; $58ae: $07
	ld   bc, $7877                                   ; $58af: $01 $77 $78
	ld   d, d                                        ; $58b2: $52
	ld   h, l                                        ; $58b3: $65
	ld   l, l                                        ; $58b4: $6d
	and  c                                           ; $58b5: $a1
	sub  d                                           ; $58b6: $92
	ld   sp, hl                                      ; $58b7: $f9
	dec  c                                           ; $58b8: $0d
	rst  $38                                         ; $58b9: $ff
	rst  $38                                         ; $58ba: $ff
	ld   l, e                                        ; $58bb: $6b
	ld   d, h                                        ; $58bc: $54
	ld   e, c                                        ; $58bd: $59
	sbc  [hl]                                        ; $58be: $9e
	and  a                                           ; $58bf: $a7
	jp   nz, $037c                                   ; $58c0: $c2 $7c $03

	adc  e                                           ; $58c3: $8b
	ld   [bc], a                                     ; $58c4: $02
	sub  [hl]                                        ; $58c5: $96
	ld   a, c                                        ; $58c6: $79
	dec  c                                           ; $58c7: $0d
	inc  b                                           ; $58c8: $04
	ld   [hl], c                                     ; $58c9: $71
	ld   e, e                                        ; $58ca: $5b
	ld   [bc], a                                     ; $58cb: $02
	ld   a, e                                        ; $58cc: $7b
	ld   d, h                                        ; $58cd: $54
	ld   a, h                                        ; $58ce: $7c
	ld   e, d                                        ; $58cf: $5a
	and  l                                           ; $58d0: $a5
	and  $92                                         ; $58d1: $e6 $92
	ld   a, e                                        ; $58d3: $7b
	and  c                                           ; $58d4: $a1
	ld   a, b                                        ; $58d5: $78
	sbc  a                                           ; $58d6: $9f
	dec  c                                           ; $58d7: $0d
	nop                                              ; $58d8: $00
	ld   a, [bc]                                     ; $58d9: $0a
	dec  e                                           ; $58da: $1d
	ld   b, b                                        ; $58db: $40
	dec  d                                           ; $58dc: $15
	inc  bc                                          ; $58dd: $03
	dec  d                                           ; $58de: $15
	ld   bc, $2902                                   ; $58df: $01 $02 $29
	nop                                              ; $58e2: $00
	ld   bc, $9a6b                                   ; $58e3: $01 $6b $9a
	sub  d                                           ; $58e6: $92
	ld   [hl], c                                     ; $58e7: $71
	ld   l, l                                        ; $58e8: $6d
	sub  a                                           ; $58e9: $97
	sbc  [hl]                                        ; $58ea: $9e
	sub  b                                           ; $58eb: $90
	ei                                               ; $58ec: $fb
	xor  c                                           ; $58ed: $a9
	xor  c                                           ; $58ee: $a9
	sbc  l                                           ; $58ef: $9d
	sbc  a                                           ; $58f0: $9f
	dec  c                                           ; $58f1: $0d
	nop                                              ; $58f2: $00
	ld   a, [bc]                                     ; $58f3: $0a
	dec  b                                           ; $58f4: $05
	ld   b, b                                        ; $58f5: $40
	ld   c, h                                        ; $58f6: $4c
	ld   [bc], a                                     ; $58f7: $02
	nop                                              ; $58f8: $00
	nop                                              ; $58f9: $00
	dec  b                                           ; $58fa: $05
	ld   b, b                                        ; $58fb: $40
	ld   d, d                                        ; $58fc: $52
	ld   bc, $0001                                   ; $58fd: $01 $01 $00
	nop                                              ; $5900: $00
	inc  e                                           ; $5901: $1c
	dec  b                                           ; $5902: $05
	nop                                              ; $5903: $00
	nop                                              ; $5904: $00
	ld   bc, $6596                                   ; $5905: $01 $96 $65
	sbc  [hl]                                        ; $5908: $9e
	adc  c                                           ; $5909: $89
	ld   a, b                                        ; $590a: $78
	ld   h, e                                        ; $590b: $63
	ld   [hl], c                                     ; $590c: $71
	ld   l, e                                        ; $590d: $6b
	ld   e, l                                        ; $590e: $5d
	ld   d, d                                        ; $590f: $52
	ld   h, c                                        ; $5910: $61
	ld   e, c                                        ; $5911: $59
	sbc  a                                           ; $5912: $9f
	dec  c                                           ; $5913: $0d
	nop                                              ; $5914: $00
	ld   a, [bc]                                     ; $5915: $0a
	ld   bc, $9a61                                   ; $5916: $01 $61 $9a
	ld   a, l                                        ; $5919: $7d
	sbc  [hl]                                        ; $591a: $9e
	ld   [bc], a                                     ; $591b: $02
	and  l                                           ; $591c: $a5
	inc  bc                                          ; $591d: $03
	adc  [hl]                                        ; $591e: $8e
	inc  bc                                          ; $591f: $03
	xor  h                                           ; $5920: $ac
	inc  b                                           ; $5921: $04
	dec  bc                                          ; $5922: $0b
	ld   a, h                                        ; $5923: $7c
	sbc  [hl]                                        ; $5924: $9e
	inc  bc                                          ; $5925: $03
	add  c                                           ; $5926: $81
	ld   [bc], a                                     ; $5927: $02
	ld   d, l                                        ; $5928: $55
	db   $e3                                         ; $5929: $e3
	xor  h                                           ; $592a: $ac
	dec  c                                           ; $592b: $0d
	sub  d                                           ; $592c: $92
	ld   a, e                                        ; $592d: $7b
	and  c                                           ; $592e: $a1
	ld   e, a                                        ; $592f: $5f
	ld   [hl], a                                     ; $5930: $77
	rst  $38                                         ; $5931: $ff
	rst  $38                                         ; $5932: $ff
	ld   [hl], d                                     ; $5933: $72
	ld   e, a                                        ; $5934: $5f
	ld   [hl], h                                     ; $5935: $74
	adc  l                                           ; $5936: $8d
	ld   [hl], h                                     ; $5937: $74
	dec  c                                           ; $5938: $0d
	ld   e, l                                        ; $5939: $5d
	sbc  d                                           ; $593a: $9a
	add  [hl]                                        ; $593b: $86
	and  c                                           ; $593c: $a1
	ld   e, c                                        ; $593d: $59
	sbc  a                                           ; $593e: $9f
	dec  c                                           ; $593f: $0d
	nop                                              ; $5940: $00
	ld   a, [bc]                                     ; $5941: $0a
	add  hl, de                                      ; $5942: $19
	dec  b                                           ; $5943: $05
	ld   [bc], a                                     ; $5944: $02
	db   $ed                                         ; $5945: $ed
	ei                                               ; $5946: $fb
	cp   e                                           ; $5947: $bb
	ld   a, c                                        ; $5948: $79
	ld   [hl], d                                     ; $5949: $72
	ld   e, a                                        ; $594a: $5f
	sbc  c                                           ; $594b: $99
	nop                                              ; $594c: $00
	nop                                              ; $594d: $00
	ld   e, e                                        ; $594e: $5b
	ld   l, a                                        ; $594f: $6f
	and  c                                           ; $5950: $a1
	halt                                             ; $5951: $76
	ld   [hl], d                                     ; $5952: $72
	ld   e, a                                        ; $5953: $5f
	sbc  c                                           ; $5954: $99
	nop                                              ; $5955: $00
	ld   bc, $0f07                                   ; $5956: $01 $07 $0f
	ld   [bc], a                                     ; $5959: $02
	ld   [bc], a                                     ; $595a: $02
	inc  bc                                          ; $595b: $03
	ld   bc, $2000                                   ; $595c: $01 $00 $20
	nop                                              ; $595f: $00
	rlca                                             ; $5960: $07
	ld   d, c                                        ; $5961: $51
	inc  bc                                          ; $5962: $03
	ld   [bc], a                                     ; $5963: $02
	inc  bc                                          ; $5964: $03
	ld   bc, $2001                                   ; $5965: $01 $01 $20
	nop                                              ; $5968: $00
	ld   b, $d8                                      ; $5969: $06 $d8
	ld   bc, $051c                                   ; $596b: $01 $1c $05
	rlca                                             ; $596e: $07
	rlca                                             ; $596f: $07
	ld   bc, $5289                                   ; $5970: $01 $89 $52
	adc  c                                           ; $5973: $89
	ld   d, d                                        ; $5974: $52
	sbc  [hl]                                        ; $5975: $9e
	or   c                                           ; $5976: $b1
	cp   e                                           ; $5977: $bb
	or   c                                           ; $5978: $b1
	cp   e                                           ; $5979: $bb
	ld   l, c                                        ; $597a: $69
	and  c                                           ; $597b: $a1
	halt                                             ; $597c: $76
	dec  c                                           ; $597d: $0d
	ld   l, a                                        ; $597e: $6f
	sub  c                                           ; $597f: $91
	ld   [hl], c                                     ; $5980: $71
	ld   l, a                                        ; $5981: $6f
	sub  c                                           ; $5982: $91
	halt                                             ; $5983: $76
	sbc  [hl]                                        ; $5984: $9e
	ld   [hl], d                                     ; $5985: $72
	ld   e, a                                        ; $5986: $5f
	sbc  c                                           ; $5987: $99
	ld   a, [$000d]                                  ; $5988: $fa $0d $00
	ld   a, [bc]                                     ; $598b: $0a
	inc  e                                           ; $598c: $1c
	dec  b                                           ; $598d: $05
	ld   bc, $0101                                   ; $598e: $01 $01 $01
	sub  [hl]                                        ; $5991: $96
	ld   h, l                                        ; $5992: $65
	sbc  [hl]                                        ; $5993: $9e
	cp   h                                           ; $5994: $bc
	call nz, $abc9                                   ; $5995: $c4 $c9 $ab
	call nz, $fbb2                                   ; $5998: $c4 $b2 $fb
	sub  d                                           ; $599b: $92
	sbc  a                                           ; $599c: $9f
	dec  c                                           ; $599d: $0d
	nop                                              ; $599e: $00
	ld   a, [bc]                                     ; $599f: $0a
	ld   b, $51                                      ; $59a0: $06 $51
	inc  bc                                          ; $59a2: $03
	inc  e                                           ; $59a3: $1c
	dec  b                                           ; $59a4: $05
	nop                                              ; $59a5: $00
	nop                                              ; $59a6: $00
	ld   bc, $5656                                   ; $59a7: $01 $56 $56
	ld   e, c                                        ; $59aa: $59
	sbc  [hl]                                        ; $59ab: $9e
	adc  c                                           ; $59ac: $89
	ld   a, b                                        ; $59ad: $78
	ld   [bc], a                                     ; $59ae: $02
	ld   a, a                                        ; $59af: $7f
	ld   e, l                                        ; $59b0: $5d
	ld   [hl], l                                     ; $59b1: $75
	sbc  a                                           ; $59b2: $9f
	dec  c                                           ; $59b3: $0d
	cp   d                                           ; $59b4: $ba
	and  l                                           ; $59b5: $a5
	call nz, $abc2                                   ; $59b6: $c4 $c2 $ab
	push af                                          ; $59b9: $f5
	ld   a, [$000d]                                  ; $59ba: $fa $0d $00
	ld   a, [bc]                                     ; $59bd: $0a
	dec  c                                           ; $59be: $0d
	nop                                              ; $59bf: $00
	nop                                              ; $59c0: $00
	rrca                                             ; $59c1: $0f
	nop                                              ; $59c2: $00
	ld   bc, $080c                                   ; $59c3: $01 $0c $08
	ld   sp, $2040                                   ; $59c6: $31 $40 $20
	inc  bc                                          ; $59c9: $03
	jr   nz, jr_04e_59cd                             ; $59ca: $20 $01

	ld   a, [bc]                                     ; $59cc: $0a

jr_04e_59cd:
	add  hl, hl                                      ; $59cd: $29
	nop                                              ; $59ce: $00
	inc  e                                           ; $59cf: $1c
	dec  b                                           ; $59d0: $05
	jr   nz, jr_04e_59db                             ; $59d1: $20 $08

	ld   bc, $8c67                                   ; $59d3: $01 $67 $8c
	and  c                                           ; $59d6: $a1
	sbc  [hl]                                        ; $59d7: $9e
	ld   h, a                                        ; $59d8: $67
	adc  h                                           ; $59d9: $8c
	and  c                                           ; $59da: $a1

jr_04e_59db:
	sbc  a                                           ; $59db: $9f
	dec  c                                           ; $59dc: $0d
	nop                                              ; $59dd: $00
	dec  b                                           ; $59de: $05
	add  b                                           ; $59df: $80
	ld   sp, $0101                                   ; $59e0: $31 $01 $01
	nop                                              ; $59e3: $00
	ld   bc, $8303                                   ; $59e4: $01 $03 $83
	inc  b                                           ; $59e7: $04
	sbc  b                                           ; $59e8: $98
	ld   h, l                                        ; $59e9: $65
	ld   [hl], h                                     ; $59ea: $74
	ld   h, l                                        ; $59eb: $65
	sub  b                                           ; $59ec: $90
	ld   l, l                                        ; $59ed: $6d
	sbc  l                                           ; $59ee: $9d
	sbc  a                                           ; $59ef: $9f
	dec  c                                           ; $59f0: $0d
	nop                                              ; $59f1: $00
	dec  b                                           ; $59f2: $05
	ld   b, b                                        ; $59f3: $40
	ld   b, c                                        ; $59f4: $41
	ld   [bc], a                                     ; $59f5: $02
	nop                                              ; $59f6: $00
	nop                                              ; $59f7: $00
	ld   bc, $d0d0                                   ; $59f8: $01 $d0 $d0
	ret  nc                                          ; $59fb: $d0

	ret  nc                                          ; $59fc: $d0

	sbc  a                                           ; $59fd: $9f
	dec  c                                           ; $59fe: $0d
	nop                                              ; $59ff: $00
	ld   a, [bc]                                     ; $5a00: $0a
	rrca                                             ; $5a01: $0f
	nop                                              ; $5a02: $00
	ld   bc, $ff01                                   ; $5a03: $01 $01 $ff
	rst  $38                                         ; $5a06: $ff
	rst  $38                                         ; $5a07: $ff
	rst  $38                                         ; $5a08: $ff
	rst  $38                                         ; $5a09: $ff
	rst  $38                                         ; $5a0a: $ff
	dec  c                                           ; $5a0b: $0d
	ld   d, b                                        ; $5a0c: $50
	ei                                               ; $5a0d: $fb
	add  c                                           ; $5a0e: $81
	ld   [hl], c                                     ; $5a0f: $71
	ld   e, l                                        ; $5a10: $5d
	sbc  b                                           ; $5a11: $98
	ld   h, l                                        ; $5a12: $65
	ld   l, l                                        ; $5a13: $6d
	rst  $38                                         ; $5a14: $ff
	rst  $38                                         ; $5a15: $ff
	dec  c                                           ; $5a16: $0d
	nop                                              ; $5a17: $00
	ld   a, [bc]                                     ; $5a18: $0a
	rrca                                             ; $5a19: $0f
	dec  b                                           ; $5a1a: $05
	ld   [$5801], sp                                 ; $5a1b: $08 $01 $58
	ld   [hl], c                                     ; $5a1e: $71
	rst  $38                                         ; $5a1f: $ff
	rst  $38                                         ; $5a20: $ff
	ld   [$7d00], sp                                 ; $5a21: $08 $00 $7d
	and  c                                           ; $5a24: $a1
	dec  c                                           ; $5a25: $0d
	inc  b                                           ; $5a26: $04
	sub  $02                                         ; $5a27: $d6 $02
	jp   Jump_04e_7192                               ; $5a29: $c3 $92 $71


	ld   l, l                                        ; $5a2c: $6d
	ld   e, c                                        ; $5a2d: $59
	ld   a, [$000d]                                  ; $5a2e: $fa $0d $00
	ld   a, [bc]                                     ; $5a31: $0a
	rrca                                             ; $5a32: $0f
	nop                                              ; $5a33: $00
	ld   bc, $5601                                   ; $5a34: $01 $01 $56
	ld   d, [hl]                                     ; $5a37: $56
	sbc  a                                           ; $5a38: $9f
	ld   a, b                                        ; $5a39: $78
	and  c                                           ; $5a3a: $a1
	halt                                             ; $5a3b: $76
	ld   a, b                                        ; $5a3c: $78
	ld   e, l                                        ; $5a3d: $5d
	and  l                                           ; $5a3e: $a5
	and  $78                                         ; $5a3f: $e6 $78
	dec  b                                           ; $5a41: $05
	ld   e, a                                        ; $5a42: $5f
	ld   [bc], a                                     ; $5a43: $02
	scf                                              ; $5a44: $37
	ld   e, d                                        ; $5a45: $5a
	dec  c                                           ; $5a46: $0d
	ld   h, l                                        ; $5a47: $65
	ld   l, l                                        ; $5a48: $6d
	and  c                                           ; $5a49: $a1
	ld   [hl], l                                     ; $5a4a: $75
	sbc  [hl]                                        ; $5a4b: $9e
	ld   e, e                                        ; $5a4c: $5b
	ld   l, a                                        ; $5a4d: $6f
	and  c                                           ; $5a4e: $a1
	halt                                             ; $5a4f: $76
	dec  c                                           ; $5a50: $0d
	ld   [hl], d                                     ; $5a51: $72
	ld   e, a                                        ; $5a52: $5f
	ld   a, b                                        ; $5a53: $78
	ld   e, c                                        ; $5a54: $59
	ld   [hl], c                                     ; $5a55: $71
	ld   l, l                                        ; $5a56: $6d
	and  c                                           ; $5a57: $a1
	ld   [hl], l                                     ; $5a58: $75
	ld   h, a                                        ; $5a59: $67
	sub  [hl]                                        ; $5a5a: $96
	sbc  a                                           ; $5a5b: $9f
	dec  c                                           ; $5a5c: $0d
	nop                                              ; $5a5d: $00
	ld   a, [bc]                                     ; $5a5e: $0a
	ld   bc, $7c6b                                   ; $5a5f: $01 $6b $7c
	ld   e, b                                        ; $5a62: $58
	ld   e, c                                        ; $5a63: $59
	ld   h, b                                        ; $5a64: $60
	ld   [hl], l                                     ; $5a65: $75
	sbc  [hl]                                        ; $5a66: $9e
	ld   [bc], a                                     ; $5a67: $02
	ld   e, b                                        ; $5a68: $58
	ld   [bc], a                                     ; $5a69: $02
	ld   d, [hl]                                     ; $5a6a: $56
	ld   e, d                                        ; $5a6b: $5a
	dec  c                                           ; $5a6c: $0d
	dec  b                                           ; $5a6d: $05
	rst  JumpTable                                         ; $5a6e: $df
	ld   [hl], c                                     ; $5a6f: $71
	inc  b                                           ; $5a70: $04
	ld   a, a                                        ; $5a71: $7f
	and  c                                           ; $5a72: $a1
	ld   [hl], l                                     ; $5a73: $75
	ld   d, d                                        ; $5a74: $52
	ld   [hl], c                                     ; $5a75: $71
	ld   [hl], h                                     ; $5a76: $74
	sbc  [hl]                                        ; $5a77: $9e
	adc  h                                           ; $5a78: $8c
	ld   e, e                                        ; $5a79: $5b
	ld   l, h                                        ; $5a7a: $6c
	ld   d, [hl]                                     ; $5a7b: $56
	and  b                                           ; $5a7c: $a0
	dec  c                                           ; $5a7d: $0d
	ld   e, l                                        ; $5a7e: $5d
	sbc  l                                           ; $5a7f: $9d
	ld   l, b                                        ; $5a80: $68
	ld   a, c                                        ; $5a81: $79
	ld   h, a                                        ; $5a82: $67
	adc  l                                           ; $5a83: $8d
	adc  h                                           ; $5a84: $8c
	ld   h, l                                        ; $5a85: $65
	ld   l, l                                        ; $5a86: $6d
	sbc  a                                           ; $5a87: $9f
	dec  c                                           ; $5a88: $0d
	nop                                              ; $5a89: $00
	ld   a, [bc]                                     ; $5a8a: $0a
	rrca                                             ; $5a8b: $0f
	dec  b                                           ; $5a8c: $05
	ld   [$401d], sp                                 ; $5a8d: $08 $1d $40
	dec  d                                           ; $5a90: $15
	inc  bc                                          ; $5a91: $03
	dec  d                                           ; $5a92: $15
	ld   bc, $2902                                   ; $5a93: $01 $02 $29
	nop                                              ; $5a96: $00
	ld   bc, $fca1                                   ; $5a97: $01 $a1 $fc
	sbc  [hl]                                        ; $5a9a: $9e
	ld   b, $54                                      ; $5a9b: $06 $54
	dec  b                                           ; $5a9d: $05
	ret                                              ; $5a9e: $c9


	ld   a, b                                        ; $5a9f: $78
	ld   [bc], a                                     ; $5aa0: $02
	and  c                                           ; $5aa1: $a1
	inc  b                                           ; $5aa2: $04
	sbc  [hl]                                        ; $5aa3: $9e
	sub  d                                           ; $5aa4: $92
	ld   a, b                                        ; $5aa5: $78
	db   $fc                                         ; $5aa6: $fc
	sbc  a                                           ; $5aa7: $9f
	dec  c                                           ; $5aa8: $0d
	db   $fd                                         ; $5aa9: $fd
	and  l                                           ; $5aaa: $a5
	and  $78                                         ; $5aab: $e6 $78
	dec  b                                           ; $5aad: $05
	ld   e, a                                        ; $5aae: $5f
	ld   [bc], a                                     ; $5aaf: $02
	scf                                              ; $5ab0: $37
	cp   $6f                                         ; $5ab1: $fe $6f
	sub  e                                           ; $5ab3: $93
	ei                                               ; $5ab4: $fb
	ld   a, h                                        ; $5ab5: $7c
	ld   a, l                                        ; $5ab6: $7d
	dec  c                                           ; $5ab7: $0d
	inc  b                                           ; $5ab8: $04
	ld   l, h                                        ; $5ab9: $6c
	ld   h, l                                        ; $5aba: $65
	ld   d, d                                        ; $5abb: $52
	ld   a, b                                        ; $5abc: $78
	db   $fc                                         ; $5abd: $fc
	sbc  a                                           ; $5abe: $9f
	dec  c                                           ; $5abf: $0d
	nop                                              ; $5ac0: $00
	ld   a, [bc]                                     ; $5ac1: $0a
	ld   bc, $ffff                                   ; $5ac2: $01 $ff $ff
	adc  h                                           ; $5ac5: $8c
	ld   d, b                                        ; $5ac6: $50
	sbc  [hl]                                        ; $5ac7: $9e
	xor  c                                           ; $5ac8: $a9
	xor  c                                           ; $5ac9: $a9
	sbc  l                                           ; $5aca: $9d
	rst  $38                                         ; $5acb: $ff
	rst  $38                                         ; $5acc: $ff
	sbc  a                                           ; $5acd: $9f
	dec  c                                           ; $5ace: $0d
	inc  b                                           ; $5acf: $04
	sub  $02                                         ; $5ad0: $d6 $02
	jp   Jump_04e_7192                               ; $5ad2: $c3 $92 $71


	ld   [hl], h                                     ; $5ad5: $74
	and  c                                           ; $5ad6: $a1
	ld   h, l                                        ; $5ad7: $65
	sbc  a                                           ; $5ad8: $9f
	dec  c                                           ; $5ad9: $0d
	adc  c                                           ; $5ada: $89
	ld   a, b                                        ; $5adb: $78
	sbc  [hl]                                        ; $5adc: $9e
	adc  h                                           ; $5add: $8c
	ld   l, l                                        ; $5ade: $6d
	ld   a, b                                        ; $5adf: $78
	sbc  a                                           ; $5ae0: $9f
	dec  c                                           ; $5ae1: $0d
	nop                                              ; $5ae2: $00
	ld   a, [bc]                                     ; $5ae3: $0a
	nop                                              ; $5ae4: $00
	inc  e                                           ; $5ae5: $1c
	dec  b                                           ; $5ae6: $05
	nop                                              ; $5ae7: $00
	nop                                              ; $5ae8: $00
	ld   bc, $5656                                   ; $5ae9: $01 $56 $56
	ld   e, c                                        ; $5aec: $59
	sbc  [hl]                                        ; $5aed: $9e
	adc  c                                           ; $5aee: $89
	ld   a, b                                        ; $5aef: $78
	ld   [bc], a                                     ; $5af0: $02
	ld   a, a                                        ; $5af1: $7f
	ld   e, l                                        ; $5af2: $5d
	ld   [hl], l                                     ; $5af3: $75
	sbc  a                                           ; $5af4: $9f
	dec  c                                           ; $5af5: $0d
	cp   d                                           ; $5af6: $ba
	and  l                                           ; $5af7: $a5
	call nz, $abc2                                   ; $5af8: $c4 $c2 $ab
	push af                                          ; $5afb: $f5
	ld   a, [$000d]                                  ; $5afc: $fa $0d $00
	ld   a, [bc]                                     ; $5aff: $0a
	dec  c                                           ; $5b00: $0d
	nop                                              ; $5b01: $00
	nop                                              ; $5b02: $00
	rrca                                             ; $5b03: $0f
	nop                                              ; $5b04: $00
	ld   bc, $080c                                   ; $5b05: $01 $0c $08
	inc  de                                          ; $5b08: $13
	nop                                              ; $5b09: $00
	inc  e                                           ; $5b0a: $1c
	dec  b                                           ; $5b0b: $05
	jr   nz, jr_04e_5b16                             ; $5b0c: $20 $08

	ld   bc, $8c67                                   ; $5b0e: $01 $67 $8c
	and  c                                           ; $5b11: $a1
	sbc  [hl]                                        ; $5b12: $9e
	ld   h, a                                        ; $5b13: $67
	adc  h                                           ; $5b14: $8c
	and  c                                           ; $5b15: $a1

jr_04e_5b16:
	sbc  a                                           ; $5b16: $9f
	dec  c                                           ; $5b17: $0d
	inc  bc                                          ; $5b18: $03
	add  e                                           ; $5b19: $83
	inc  b                                           ; $5b1a: $04
	sbc  b                                           ; $5b1b: $98
	ld   h, l                                        ; $5b1c: $65
	ld   [hl], h                                     ; $5b1d: $74
	ld   h, l                                        ; $5b1e: $65
	sub  b                                           ; $5b1f: $90
	ld   l, l                                        ; $5b20: $6d
	sbc  l                                           ; $5b21: $9d
	sbc  a                                           ; $5b22: $9f
	dec  c                                           ; $5b23: $0d
	ret  nc                                          ; $5b24: $d0

	ret  nc                                          ; $5b25: $d0

	ret  nc                                          ; $5b26: $d0

	ret  nc                                          ; $5b27: $d0

	rst  $38                                         ; $5b28: $ff
	rst  $38                                         ; $5b29: $ff
	ld   sp, hl                                      ; $5b2a: $f9
	ld   sp, hl                                      ; $5b2b: $f9
	ld   sp, hl                                      ; $5b2c: $f9
	dec  c                                           ; $5b2d: $0d
	nop                                              ; $5b2e: $00
	ld   a, [bc]                                     ; $5b2f: $0a
	ld   bc, hScriptOpcodeParams+1                                   ; $5b30: $01 $a1 $ff
	rst  $38                                         ; $5b33: $ff
	ld   sp, hl                                      ; $5b34: $f9
	dec  c                                           ; $5b35: $0d
	ld   [$7d00], sp                                 ; $5b36: $08 $00 $7d
	and  c                                           ; $5b39: $a1
	ld   sp, hl                                      ; $5b3a: $f9
	dec  c                                           ; $5b3b: $0d
	inc  b                                           ; $5b3c: $04
	ld   c, $03                                      ; $5b3d: $0e $03
	sbc  l                                           ; $5b3f: $9d
	inc  b                                           ; $5b40: $04
	and  [hl]                                        ; $5b41: $a6
	ld   e, c                                        ; $5b42: $59
	ld   sp, hl                                      ; $5b43: $f9
	dec  c                                           ; $5b44: $0d
	nop                                              ; $5b45: $00
	ld   a, [bc]                                     ; $5b46: $0a
	rlca                                             ; $5b47: $07
	db   $ed                                         ; $5b48: $ed
	inc  b                                           ; $5b49: $04
	inc  bc                                          ; $5b4a: $03
	inc  d                                           ; $5b4b: $14
	ld   bc, $2269                                   ; $5b4c: $01 $69 $22
	nop                                              ; $5b4f: $00
	inc  e                                           ; $5b50: $1c
	inc  b                                           ; $5b51: $04
	ld   b, $06                                      ; $5b52: $06 $06
	ld   bc, $fb50                                   ; $5b54: $01 $50 $fb
	ld   [hl], c                                     ; $5b57: $71
	sbc  [hl]                                        ; $5b58: $9e
	ld   h, c                                        ; $5b59: $61
	ld   d, h                                        ; $5b5a: $54
	sub  a                                           ; $5b5b: $97
	and  c                                           ; $5b5c: $a1
	ld   a, [$000d]                                  ; $5b5d: $fa $0d $00
	ld   a, [bc]                                     ; $5b60: $0a
	dec  b                                           ; $5b61: $05
	add  b                                           ; $5b62: $80
	ld   sp, $0101                                   ; $5b63: $31 $01 $01
	nop                                              ; $5b66: $00
	dec  b                                           ; $5b67: $05
	ld   b, b                                        ; $5b68: $40
	ld   b, c                                        ; $5b69: $41
	ld   [bc], a                                     ; $5b6a: $02
	nop                                              ; $5b6b: $00
	nop                                              ; $5b6c: $00
	inc  e                                           ; $5b6d: $1c
	inc  b                                           ; $5b6e: $04
	rlca                                             ; $5b6f: $07
	rlca                                             ; $5b70: $07
	ld   bc, $6d8c                                   ; $5b71: $01 $8c $6d
	ld   h, l                                        ; $5b74: $65
	ld   [hl], c                                     ; $5b75: $71
	ld   a, a                                        ; $5b76: $7f
	ld   d, d                                        ; $5b77: $52
	ld   h, l                                        ; $5b78: $65
	ld   l, l                                        ; $5b79: $6d
	and  c                                           ; $5b7a: $a1
	ld   [hl], l                                     ; $5b7b: $75
	ld   h, l                                        ; $5b7c: $65
	sub  l                                           ; $5b7d: $95
	ei                                               ; $5b7e: $fb
	sbc  a                                           ; $5b7f: $9f
	dec  c                                           ; $5b80: $0d
	ld   d, b                                        ; $5b81: $50
	ei                                               ; $5b82: $fb
	ld   d, b                                        ; $5b83: $50
	sbc  [hl]                                        ; $5b84: $9e
	ld   l, a                                        ; $5b85: $6f
	ld   d, d                                        ; $5b86: $52
	ld   [bc], a                                     ; $5b87: $02
	inc  de                                          ; $5b88: $13
	ld   l, a                                        ; $5b89: $6f
	sub  c                                           ; $5b8a: $91
	and  c                                           ; $5b8b: $a1
	adc  h                                           ; $5b8c: $8c
	ld   [hl], l                                     ; $5b8d: $75
	dec  c                                           ; $5b8e: $0d
	adc  h                                           ; $5b8f: $8c
	ld   e, e                                        ; $5b90: $5b
	ld   h, c                                        ; $5b91: $61
	and  c                                           ; $5b92: $a1
	ld   h, [hl]                                     ; $5b93: $66
	sub  c                                           ; $5b94: $91
	ld   [hl], c                                     ; $5b95: $71
	ld   [hl], h                                     ; $5b96: $74
	sbc  a                                           ; $5b97: $9f
	dec  c                                           ; $5b98: $0d
	nop                                              ; $5b99: $00
	ld   a, [bc]                                     ; $5b9a: $0a
	inc  e                                           ; $5b9b: $1c
	inc  b                                           ; $5b9c: $04
	ld   bc, $0101                                   ; $5b9d: $01 $01 $01
	ld   l, a                                        ; $5ba0: $6f
	ld   d, d                                        ; $5ba1: $52
	ld   [bc], a                                     ; $5ba2: $02
	inc  de                                          ; $5ba3: $13
	ld   l, a                                        ; $5ba4: $6f
	sub  c                                           ; $5ba5: $91
	and  c                                           ; $5ba6: $a1
	sbc  [hl]                                        ; $5ba7: $9e
	ld   l, [hl]                                     ; $5ba8: $6e
	ld   d, d                                        ; $5ba9: $52
	ld   h, [hl]                                     ; $5baa: $66
	sub  l                                           ; $5bab: $95
	ld   d, h                                        ; $5bac: $54
	add  h                                           ; $5bad: $84
	ld   sp, hl                                      ; $5bae: $f9
	dec  c                                           ; $5baf: $0d
	and  e                                           ; $5bb0: $a3
	and  l                                           ; $5bb1: $a5
	db   $ec                                         ; $5bb2: $ec
	cp   d                                           ; $5bb3: $ba
	ld   e, d                                        ; $5bb4: $5a
	ld   d, d                                        ; $5bb5: $52
	adc  h                                           ; $5bb6: $8c
	sbc  [hl]                                        ; $5bb7: $9e
	dec  c                                           ; $5bb8: $0d
	ld   a, b                                        ; $5bb9: $78
	ld   e, b                                        ; $5bba: $58
	ld   h, l                                        ; $5bbb: $65
	ld   [hl], h                                     ; $5bbc: $74
	ld   d, b                                        ; $5bbd: $50
	ld   h, b                                        ; $5bbe: $60
	sbc  c                                           ; $5bbf: $99
	ld   e, c                                        ; $5bc0: $59
	sub  a                                           ; $5bc1: $97
	ld   a, e                                        ; $5bc2: $7b
	sbc  a                                           ; $5bc3: $9f
	dec  c                                           ; $5bc4: $0d
	nop                                              ; $5bc5: $00
	ld   a, [bc]                                     ; $5bc6: $0a
	ld   bc, $eca5                                   ; $5bc7: $01 $a5 $ec
	cp   d                                           ; $5bca: $ba
	di                                               ; $5bcb: $f3
	rst  JumpTable                                         ; $5bcc: $df
	db   $ec                                         ; $5bcd: $ec
	ld   [$fbce], a                                  ; $5bce: $ea $ce $fb
	call nz, $fac9                                   ; $5bd1: $c4 $c9 $fa
	dec  c                                           ; $5bd4: $0d
	nop                                              ; $5bd5: $00
	ld   a, [bc]                                     ; $5bd6: $0a
	inc  c                                           ; $5bd7: $0c
	ld   a, [bc]                                     ; $5bd8: $0a
	add  hl, bc                                      ; $5bd9: $09
	ld   d, b                                        ; $5bda: $50
	dec  c                                           ; $5bdb: $0d
	nop                                              ; $5bdc: $00
	nop                                              ; $5bdd: $00
	rrca                                             ; $5bde: $0f
	nop                                              ; $5bdf: $00
	ld   bc, $020c                                   ; $5be0: $01 $0c $02
	ld   sp, $2040                                   ; $5be3: $31 $40 $20
	ld   bc, $00ff                                   ; $5be6: $01 $ff $00
	ld   c, $03                                      ; $5be9: $0e $03
	add  hl, bc                                      ; $5beb: $09
	ld   d, b                                        ; $5bec: $50
	inc  de                                          ; $5bed: $13
	inc  bc                                          ; $5bee: $03
	inc  c                                           ; $5bef: $0c
	inc  c                                           ; $5bf0: $0c
	ld   c, $54                                      ; $5bf1: $0e $54
	rrca                                             ; $5bf3: $0f
	nop                                              ; $5bf4: $00
	ld   bc, $040d                                   ; $5bf5: $01 $0d $04
	ld   bc, $5401                                   ; $5bf8: $01 $01 $54
	rst  $38                                         ; $5bfb: $ff
	rst  $38                                         ; $5bfc: $ff
	sbc  [hl]                                        ; $5bfd: $9e
	ld   d, h                                        ; $5bfe: $54
	db   $fc                                         ; $5bff: $fc
	and  c                                           ; $5c00: $a1
	rst  $38                                         ; $5c01: $ff
	dec  c                                           ; $5c02: $0d
	nop                                              ; $5c03: $00
	ld   a, [bc]                                     ; $5c04: $0a
	rrca                                             ; $5c05: $0f
	inc  b                                           ; $5c06: $04
	ld   bc, $9001                                   ; $5c07: $01 $01 $90
	ld   d, h                                        ; $5c0a: $54
	ld   l, [hl]                                     ; $5c0b: $6e
	ld   d, d                                        ; $5c0c: $52
	ld   h, [hl]                                     ; $5c0d: $66
	sub  l                                           ; $5c0e: $95
	ld   d, h                                        ; $5c0f: $54
	add  h                                           ; $5c10: $84
	ld   l, [hl]                                     ; $5c11: $6e
	sub  [hl]                                        ; $5c12: $96
	sbc  a                                           ; $5c13: $9f
	dec  c                                           ; $5c14: $0d
	ld   l, a                                        ; $5c15: $6f
	ld   d, d                                        ; $5c16: $52
	ld   [bc], a                                     ; $5c17: $02
	inc  de                                          ; $5c18: $13
	ld   l, a                                        ; $5c19: $6f
	sub  c                                           ; $5c1a: $91
	and  c                                           ; $5c1b: $a1
	sbc  a                                           ; $5c1c: $9f
	dec  c                                           ; $5c1d: $0d
	nop                                              ; $5c1e: $00
	ld   a, [bc]                                     ; $5c1f: $0a
	rrca                                             ; $5c20: $0f
	nop                                              ; $5c21: $00
	ld   bc, $0301                                   ; $5c22: $01 $01 $03
	ld   e, e                                        ; $5c25: $5b
	ld   e, c                                        ; $5c26: $59
	ld   [hl], c                                     ; $5c27: $71
	ld   l, l                                        ; $5c28: $6d
	ld   a, h                                        ; $5c29: $7c
	ld   e, c                                        ; $5c2a: $59
	rst  $38                                         ; $5c2b: $ff
	rst  $38                                         ; $5c2c: $ff
	dec  c                                           ; $5c2d: $0d
	nop                                              ; $5c2e: $00
	ld   a, [bc]                                     ; $5c2f: $0a
	inc  e                                           ; $5c30: $1c
	dec  b                                           ; $5c31: $05
	inc  b                                           ; $5c32: $04
	inc  b                                           ; $5c33: $04
	dec  e                                           ; $5c34: $1d
	ld   b, b                                        ; $5c35: $40
	dec  d                                           ; $5c36: $15
	inc  bc                                          ; $5c37: $03
	dec  d                                           ; $5c38: $15
	ld   bc, $2802                                   ; $5c39: $01 $02 $28
	nop                                              ; $5c3c: $00
	ld   bc, $9756                                   ; $5c3d: $01 $56 $97
	ld   d, d                                        ; $5c40: $52
	ld   h, a                                        ; $5c41: $67
	adc  h                                           ; $5c42: $8c
	and  c                                           ; $5c43: $a1
	ld   e, c                                        ; $5c44: $59
	ld   [hl], c                                     ; $5c45: $71
	ld   l, l                                        ; $5c46: $6d
	ld   a, b                                        ; $5c47: $78
	db   $fc                                         ; $5c48: $fc
	sbc  a                                           ; $5c49: $9f
	dec  c                                           ; $5c4a: $0d
	ld   h, c                                        ; $5c4b: $61
	and  c                                           ; $5c4c: $a1
	ld   a, b                                        ; $5c4d: $78
	ld   h, c                                        ; $5c4e: $61
	halt                                             ; $5c4f: $76
	ld   a, c                                        ; $5c50: $79
	ld   a, b                                        ; $5c51: $78
	sbc  c                                           ; $5c52: $99
	halt                                             ; $5c53: $76
	ld   a, l                                        ; $5c54: $7d
	sbc  [hl]                                        ; $5c55: $9e
	dec  b                                           ; $5c56: $05
	pop  de                                          ; $5c57: $d1
	ld   [hl], h                                     ; $5c58: $74
	dec  c                                           ; $5c59: $0d
	ld   a, b                                        ; $5c5a: $78
	ld   e, c                                        ; $5c5b: $59
	ld   [hl], c                                     ; $5c5c: $71
	ld   l, l                                        ; $5c5d: $6d
	and  c                                           ; $5c5e: $a1
	sub  d                                           ; $5c5f: $92
	rst  $38                                         ; $5c60: $ff
	rst  $38                                         ; $5c61: $ff
	dec  c                                           ; $5c62: $0d
	nop                                              ; $5c63: $00
	ld   a, [bc]                                     ; $5c64: $0a
	ld   bc, $9a61                                   ; $5c65: $01 $61 $9a
	ld   a, c                                        ; $5c68: $79
	ld   h, c                                        ; $5c69: $61
	sbc  b                                           ; $5c6a: $98
	and  c                                           ; $5c6b: $a1
	halt                                             ; $5c6c: $76
	sbc  [hl]                                        ; $5c6d: $9e
	adc  h                                           ; $5c6e: $8c
	ld   l, l                                        ; $5c6f: $6d
	inc  bc                                          ; $5c70: $03
	adc  e                                           ; $5c71: $8b
	ld   [bc], a                                     ; $5c72: $02
	sub  [hl]                                        ; $5c73: $96
	dec  c                                           ; $5c74: $0d
	inc  bc                                          ; $5c75: $03
	ld   l, e                                        ; $5c76: $6b
	inc  b                                           ; $5c77: $04
	ld   [de], a                                     ; $5c78: $12
	ld   [hl], c                                     ; $5c79: $71
	ld   [hl], h                                     ; $5c7a: $74
	ld   a, b                                        ; $5c7b: $78
	sbc  a                                           ; $5c7c: $9f
	dec  c                                           ; $5c7d: $0d
	nop                                              ; $5c7e: $00
	ld   a, [bc]                                     ; $5c7f: $0a
	nop                                              ; $5c80: $00
	inc  e                                           ; $5c81: $1c
	dec  b                                           ; $5c82: $05
	inc  bc                                          ; $5c83: $03
	inc  bc                                          ; $5c84: $03
	ld   bc, $0008                                   ; $5c85: $01 $08 $00
	ld   a, l                                        ; $5c88: $7d
	and  c                                           ; $5c89: $a1
	ld   a, [$080d]                                  ; $5c8a: $fa $0d $08
	nop                                              ; $5c8d: $00
	ld   a, l                                        ; $5c8e: $7d
	and  c                                           ; $5c8f: $a1
	ld   a, [$650d]                                  ; $5c90: $fa $0d $65
	ld   [hl], c                                     ; $5c93: $71
	ld   e, c                                        ; $5c94: $59
	sbc  b                                           ; $5c95: $98
	ld   h, l                                        ; $5c96: $65
	ei                                               ; $5c97: $fb
	sub  d                                           ; $5c98: $92
	ld   a, [$0dfa]                                  ; $5c99: $fa $fa $0d
	nop                                              ; $5c9c: $00
	ld   a, [bc]                                     ; $5c9d: $0a
	dec  c                                           ; $5c9e: $0d
	nop                                              ; $5c9f: $00
	nop                                              ; $5ca0: $00
	rrca                                             ; $5ca1: $0f
	nop                                              ; $5ca2: $00
	ld   bc, $020c                                   ; $5ca3: $01 $0c $02
	ld   c, $03                                      ; $5ca6: $0e $03
	add  hl, bc                                      ; $5ca8: $09
	ld   e, $0c                                      ; $5ca9: $1e $0c
	inc  c                                           ; $5cab: $0c
	ld   c, $73                                      ; $5cac: $0e $73
	inc  e                                           ; $5cae: $1c
	ld   a, [bc]                                     ; $5caf: $0a
	nop                                              ; $5cb0: $00
	nop                                              ; $5cb1: $00
	ld   bc, $fc96                                   ; $5cb2: $01 $96 $fc
	sbc  [hl]                                        ; $5cb5: $9e
	ld   [$9f00], sp                                 ; $5cb6: $08 $00 $9f
	dec  c                                           ; $5cb9: $0d
	ld   h, e                                        ; $5cba: $63
	ld   d, d                                        ; $5cbb: $52
	ld   a, b                                        ; $5cbc: $78
	and  c                                           ; $5cbd: $a1
	ld   l, [hl]                                     ; $5cbe: $6e
	ld   [hl], c                                     ; $5cbf: $71
	ld   l, l                                        ; $5cc0: $6d
	ld   a, b                                        ; $5cc1: $78
	sbc  a                                           ; $5cc2: $9f
	dec  c                                           ; $5cc3: $0d
	nop                                              ; $5cc4: $00
	ld   a, [bc]                                     ; $5cc5: $0a
	inc  e                                           ; $5cc6: $1c
	ld   a, [bc]                                     ; $5cc7: $0a
	inc  b                                           ; $5cc8: $04
	inc  b                                           ; $5cc9: $04
	ld   bc, hScriptOpcodeParams+1                                   ; $5cca: $01 $a1 $ff
	rst  $38                                         ; $5ccd: $ff
	sbc  [hl]                                        ; $5cce: $9e
	ld   [hl], l                                     ; $5ccf: $75
	sub  b                                           ; $5cd0: $90
	ld   h, c                                        ; $5cd1: $61
	ld   a, h                                        ; $5cd2: $7c
	or   d                                           ; $5cd3: $b2
	xor  l                                           ; $5cd4: $ad
	ld   h, [hl]                                     ; $5cd5: $66
	sub  c                                           ; $5cd6: $91
	db   $fc                                         ; $5cd7: $fc
	dec  c                                           ; $5cd8: $0d
	inc  bc                                          ; $5cd9: $03
	ld   l, l                                        ; $5cda: $6d
	dec  b                                           ; $5cdb: $05
	add  hl, de                                      ; $5cdc: $19
	ld   a, l                                        ; $5cdd: $7d
	ld   [bc], a                                     ; $5cde: $02
	ei                                               ; $5cdf: $fb
	ld   e, a                                        ; $5ce0: $5f
	sub  a                                           ; $5ce1: $97
	sbc  d                                           ; $5ce2: $9a
	ld   l, e                                        ; $5ce3: $6b
	ld   d, h                                        ; $5ce4: $54
	ld   a, c                                        ; $5ce5: $79
	ld   a, e                                        ; $5ce6: $7b
	ei                                               ; $5ce7: $fb
	ld   a, b                                        ; $5ce8: $78
	sbc  a                                           ; $5ce9: $9f
	dec  c                                           ; $5cea: $0d
	nop                                              ; $5ceb: $00
	ld   a, [bc]                                     ; $5cec: $0a
	ld   bc, $9d59                                   ; $5ced: $01 $59 $9d
	ld   d, d                                        ; $5cf0: $52
	ld   l, e                                        ; $5cf1: $6b
	ld   d, h                                        ; $5cf2: $54
	ld   l, [hl]                                     ; $5cf3: $6e
	ld   e, d                                        ; $5cf4: $5a
	rst  $38                                         ; $5cf5: $ff
	rst  $38                                         ; $5cf6: $ff
	dec  c                                           ; $5cf7: $0d
	ld   [bc], a                                     ; $5cf8: $02
	and  l                                           ; $5cf9: $a5
	ld   [bc], a                                     ; $5cfa: $02
	sub  e                                           ; $5cfb: $93
	ld   a, h                                        ; $5cfc: $7c
	inc  b                                           ; $5cfd: $04
	dec  c                                           ; $5cfe: $0d
	ld   [bc], a                                     ; $5cff: $02
	sub  [hl]                                        ; $5d00: $96
	inc  b                                           ; $5d01: $04
	ld   b, l                                        ; $5d02: $45
	inc  b                                           ; $5d03: $04
	ld   a, [bc]                                     ; $5d04: $0a
	ld   a, l                                        ; $5d05: $7d
	sbc  [hl]                                        ; $5d06: $9e
	dec  c                                           ; $5d07: $0d
	ld   h, c                                        ; $5d08: $61
	ld   h, c                                        ; $5d09: $61
	adc  h                                           ; $5d0a: $8c
	ld   [hl], l                                     ; $5d0b: $75
	ld   l, [hl]                                     ; $5d0c: $6e
	ld   a, b                                        ; $5d0d: $78
	sbc  a                                           ; $5d0e: $9f
	dec  c                                           ; $5d0f: $0d
	nop                                              ; $5d10: $00
	ld   a, [bc]                                     ; $5d11: $0a
	inc  e                                           ; $5d12: $1c
	ld   a, [bc]                                     ; $5d13: $0a
	ld   [bc], a                                     ; $5d14: $02
	ld   [bc], a                                     ; $5d15: $02
	ld   bc, $0d04                                   ; $5d16: $01 $04 $0d
	inc  bc                                          ; $5d19: $03
	ld   sp, hl                                      ; $5d1a: $f9
	ld   h, l                                        ; $5d1b: $65
	ld   [hl], h                                     ; $5d1c: $74
	inc  bc                                          ; $5d1d: $03
	add  b                                           ; $5d1e: $80
	inc  bc                                          ; $5d1f: $03
	jp   c, Jump_04e_7465                            ; $5d20: $da $65 $74

	ld   h, c                                        ; $5d23: $61
	ld   d, d                                        ; $5d24: $52
	sbc  a                                           ; $5d25: $9f
	dec  c                                           ; $5d26: $0d
	inc  b                                           ; $5d27: $04
	rla                                              ; $5d28: $17
	ld   [hl], c                                     ; $5d29: $71
	ld   [hl], h                                     ; $5d2a: $74
	sbc  c                                           ; $5d2b: $99
	ld   l, d                                        ; $5d2c: $6a
	sbc  a                                           ; $5d2d: $9f
	dec  c                                           ; $5d2e: $0d
	ld   h, [hl]                                     ; $5d2f: $66
	sub  c                                           ; $5d30: $91
	ld   d, b                                        ; $5d31: $50
	ld   a, b                                        ; $5d32: $78
	sbc  a                                           ; $5d33: $9f
	dec  c                                           ; $5d34: $0d
	nop                                              ; $5d35: $00
	ld   a, [bc]                                     ; $5d36: $0a
	ld   h, $00                                      ; $5d37: $26 $00
	inc  e                                           ; $5d39: $1c
	ld   [bc], a                                     ; $5d3a: $02
	ld   bc, $0201                                   ; $5d3b: $01 $01 $02
	ld   bc, $9750                                   ; $5d3e: $01 $50 $97
	sbc  [hl]                                        ; $5d41: $9e
	ld   [$6300], sp                                 ; $5d42: $08 $00 $63
	and  c                                           ; $5d45: $a1
	sbc  a                                           ; $5d46: $9f
	dec  c                                           ; $5d47: $0d
	ld   l, a                                        ; $5d48: $6f
	sub  l                                           ; $5d49: $95
	ld   d, h                                        ; $5d4a: $54
	ld   [hl], a                                     ; $5d4b: $77
	sub  [hl]                                        ; $5d4c: $96
	ld   e, c                                        ; $5d4d: $59
	ld   [hl], c                                     ; $5d4e: $71
	ld   l, l                                        ; $5d4f: $6d
	ld   [hl], l                                     ; $5d50: $75
	ld   h, a                                        ; $5d51: $67
	sbc  l                                           ; $5d52: $9d
	sbc  a                                           ; $5d53: $9f
	dec  c                                           ; $5d54: $0d
	nop                                              ; $5d55: $00
	ld   a, [bc]                                     ; $5d56: $0a
	ld   bc, $8f04                                   ; $5d57: $01 $04 $8f
	inc  b                                           ; $5d5a: $04
	ld   de, $7c8d                                   ; $5d5b: $11 $8d $7c
	ld   [bc], a                                     ; $5d5e: $02
	ld   a, [de]                                     ; $5d5f: $1a
	inc  bc                                          ; $5d60: $03
	ld   l, e                                        ; $5d61: $6b
	and  b                                           ; $5d62: $a0
	dec  c                                           ; $5d63: $0d
	ld   h, l                                        ; $5d64: $65
	ld   [hl], h                                     ; $5d65: $74
	ld   e, l                                        ; $5d66: $5d
	ld   l, [hl]                                     ; $5d67: $6e
	ld   h, e                                        ; $5d68: $63
	ld   d, d                                        ; $5d69: $52
	adc  h                                           ; $5d6a: $8c
	ld   l, c                                        ; $5d6b: $69
	and  c                                           ; $5d6c: $a1
	ld   h, c                                        ; $5d6d: $61
	halt                                             ; $5d6e: $76
	sbc  a                                           ; $5d6f: $9f
	dec  c                                           ; $5d70: $0d
	nop                                              ; $5d71: $00
	ld   a, [bc]                                     ; $5d72: $0a
	add  hl, de                                      ; $5d73: $19
	dec  b                                           ; $5d74: $05
	ld   [bc], a                                     ; $5d75: $02
	ld   [bc], a                                     ; $5d76: $02
	ld   a, [de]                                     ; $5d77: $1a
	inc  bc                                          ; $5d78: $03
	ld   l, e                                        ; $5d79: $6b
	and  b                                           ; $5d7a: $a0
	ld   h, a                                        ; $5d7b: $67
	sbc  c                                           ; $5d7c: $99
	nop                                              ; $5d7d: $00
	nop                                              ; $5d7e: $00
	ld   h, c                                        ; $5d7f: $61
	halt                                             ; $5d80: $76
	sbc  l                                           ; $5d81: $9d
	sbc  c                                           ; $5d82: $99
	nop                                              ; $5d83: $00
	ld   bc, $d107                                   ; $5d84: $01 $07 $d1
	nop                                              ; $5d87: $00
	ld   [bc], a                                     ; $5d88: $02
	inc  bc                                          ; $5d89: $03
	ld   bc, $2000                                   ; $5d8a: $01 $00 $20
	nop                                              ; $5d8d: $00
	rlca                                             ; $5d8e: $07
	ld   h, c                                        ; $5d8f: $61
	nop                                              ; $5d90: $00
	ld   [bc], a                                     ; $5d91: $02
	inc  bc                                          ; $5d92: $03
	ld   bc, $2001                                   ; $5d93: $01 $01 $20
	nop                                              ; $5d96: $00
	ld   b, $94                                      ; $5d97: $06 $94
	nop                                              ; $5d99: $00
	rrca                                             ; $5d9a: $0f
	nop                                              ; $5d9b: $00
	ld   bc, $6701                                   ; $5d9c: $01 $01 $67
	adc  l                                           ; $5d9f: $8d
	adc  h                                           ; $5da0: $8c
	ld   l, c                                        ; $5da1: $69
	and  c                                           ; $5da2: $a1
	sbc  a                                           ; $5da3: $9f
	dec  c                                           ; $5da4: $0d
	ld   l, a                                        ; $5da5: $6f
	sub  l                                           ; $5da6: $95
	ld   [hl], c                                     ; $5da7: $71
	halt                                             ; $5da8: $76
	ld   [bc], a                                     ; $5da9: $02
	and  l                                           ; $5daa: $a5
	ld   a, l                                        ; $5dab: $7d
	rst  $38                                         ; $5dac: $ff
	rst  $38                                         ; $5dad: $ff
	dec  c                                           ; $5dae: $0d
	nop                                              ; $5daf: $00
	ld   a, [bc]                                     ; $5db0: $0a
	inc  e                                           ; $5db1: $1c
	ld   [bc], a                                     ; $5db2: $02
	rlca                                             ; $5db3: $07
	rlca                                             ; $5db4: $07
	dec  e                                           ; $5db5: $1d
	ld   b, b                                        ; $5db6: $40
	ld   [de], a                                     ; $5db7: $12
	inc  bc                                          ; $5db8: $03
	ld   [de], a                                     ; $5db9: $12
	ld   bc, $2902                                   ; $5dba: $01 $02 $29
	nop                                              ; $5dbd: $00
	ld   bc, $9750                                   ; $5dbe: $01 $50 $97
	sbc  [hl]                                        ; $5dc1: $9e
	ld   l, e                                        ; $5dc2: $6b
	ld   d, h                                        ; $5dc3: $54
	ld   [hl], l                                     ; $5dc4: $75
	ld   h, a                                        ; $5dc5: $67
	ld   a, h                                        ; $5dc6: $7c
	rst  $38                                         ; $5dc7: $ff
	rst  $38                                         ; $5dc8: $ff
	dec  c                                           ; $5dc9: $0d
	nop                                              ; $5dca: $00
	ld   a, [bc]                                     ; $5dcb: $0a
	nop                                              ; $5dcc: $00
	inc  e                                           ; $5dcd: $1c
	ld   [bc], a                                     ; $5dce: $02
	rlca                                             ; $5dcf: $07
	rlca                                             ; $5dd0: $07
	dec  e                                           ; $5dd1: $1d
	ld   b, b                                        ; $5dd2: $40
	ld   [de], a                                     ; $5dd3: $12
	inc  bc                                          ; $5dd4: $03
	ld   [de], a                                     ; $5dd5: $12
	ld   bc, $2903                                   ; $5dd6: $01 $03 $29
	nop                                              ; $5dd9: $00
	ld   bc, $6d9d                                   ; $5dda: $01 $9d $6d
	ld   e, l                                        ; $5ddd: $5d
	ld   h, l                                        ; $5dde: $65
	ld   e, d                                        ; $5ddf: $5a
	dec  b                                           ; $5de0: $05
	jr   nz, jr_04e_5e48                             ; $5de1: $20 $65

	ld   e, c                                        ; $5de3: $59
	ld   e, a                                        ; $5de4: $5f
	ld   [hl], h                                     ; $5de5: $74
	dec  c                                           ; $5de6: $0d
	ld   d, b                                        ; $5de7: $50
	ld   h, b                                        ; $5de8: $60
	ld   l, l                                        ; $5de9: $6d
	ld   a, h                                        ; $5dea: $7c
	ld   a, c                                        ; $5deb: $79
	ld   l, [hl]                                     ; $5dec: $6e
	adc  h                                           ; $5ded: $8c
	ld   [hl], c                                     ; $5dee: $71
	ld   [hl], h                                     ; $5def: $74
	sbc  c                                           ; $5df0: $99
	ld   a, b                                        ; $5df1: $78
	and  c                                           ; $5df2: $a1
	ld   [hl], h                                     ; $5df3: $74
	sbc  a                                           ; $5df4: $9f
	dec  c                                           ; $5df5: $0d
	sub  b                                           ; $5df6: $90
	ld   d, h                                        ; $5df7: $54
	ld   d, d                                        ; $5df8: $52
	ld   d, d                                        ; $5df9: $52
	ld   [hl], l                                     ; $5dfa: $75
	ld   h, a                                        ; $5dfb: $67
	sbc  l                                           ; $5dfc: $9d
	sbc  a                                           ; $5dfd: $9f
	dec  c                                           ; $5dfe: $0d
	nop                                              ; $5dff: $00
	ld   a, [bc]                                     ; $5e00: $0a
	dec  c                                           ; $5e01: $0d
	nop                                              ; $5e02: $00
	nop                                              ; $5e03: $00
	rrca                                             ; $5e04: $0f
	nop                                              ; $5e05: $00
	ld   bc, $1e09                                   ; $5e06: $01 $09 $1e
	nop                                              ; $5e09: $00
	rrca                                             ; $5e0a: $0f
	nop                                              ; $5e0b: $00
	ld   bc, $5201                                   ; $5e0c: $01 $01 $52
	ld   d, d                                        ; $5e0f: $52
	ld   [hl], l                                     ; $5e10: $75
	ld   h, a                                        ; $5e11: $67
	sub  [hl]                                        ; $5e12: $96
	sbc  a                                           ; $5e13: $9f
	dec  c                                           ; $5e14: $0d
	inc  b                                           ; $5e15: $04
	ld   l, l                                        ; $5e16: $6d
	ld   [hl], l                                     ; $5e17: $75
	ld   e, b                                        ; $5e18: $58
	inc  b                                           ; $5e19: $04
	db   $ec                                         ; $5e1a: $ec
	ld   a, c                                        ; $5e1b: $79
	dec  b                                           ; $5e1c: $05
	ld   d, $74                                      ; $5e1d: $16 $74
	sbc  c                                           ; $5e1f: $99
	ld   a, b                                        ; $5e20: $78
	sub  a                                           ; $5e21: $97
	rst  $38                                         ; $5e22: $ff
	rst  $38                                         ; $5e23: $ff
	dec  c                                           ; $5e24: $0d
	nop                                              ; $5e25: $00
	ld   a, [bc]                                     ; $5e26: $0a
	rrca                                             ; $5e27: $0f
	ld   [bc], a                                     ; $5e28: $02
	ld   bc, $5001                                   ; $5e29: $01 $01 $50
	sub  a                                           ; $5e2c: $97
	sbc  [hl]                                        ; $5e2d: $9e
	ld   l, e                                        ; $5e2e: $6b
	ld   d, h                                        ; $5e2f: $54
	sbc  a                                           ; $5e30: $9f
	dec  c                                           ; $5e31: $0d
	ld   [hl], l                                     ; $5e32: $75
	ld   a, l                                        ; $5e33: $7d
	sbc  [hl]                                        ; $5e34: $9e
	ld   [$6300], sp                                 ; $5e35: $08 $00 $63
	and  c                                           ; $5e38: $a1
	ld   a, l                                        ; $5e39: $7d
	dec  c                                           ; $5e3a: $0d
	inc  bc                                          ; $5e3b: $03
	ld   d, b                                        ; $5e3c: $50
	ld   [bc], a                                     ; $5e3d: $02
	ld   a, h                                        ; $5e3e: $7c
	ld   [bc], a                                     ; $5e3f: $02
	or   [hl]                                        ; $5e40: $b6
	ld   a, h                                        ; $5e41: $7c
	inc  b                                           ; $5e42: $04
	db   $ec                                         ; $5e43: $ec
	and  b                                           ; $5e44: $a0
	ld   e, b                                        ; $5e45: $58
	ld   [bc], a                                     ; $5e46: $02
	add  b                                           ; $5e47: $80

jr_04e_5e48:
	ld   d, d                                        ; $5e48: $52
	ld   h, a                                        ; $5e49: $67
	sbc  c                                           ; $5e4a: $99
	sbc  l                                           ; $5e4b: $9d
	sbc  a                                           ; $5e4c: $9f
	dec  c                                           ; $5e4d: $0d
	nop                                              ; $5e4e: $00
	ld   a, [bc]                                     ; $5e4f: $0a
	inc  e                                           ; $5e50: $1c
	ld   [bc], a                                     ; $5e51: $02
	nop                                              ; $5e52: $00
	nop                                              ; $5e53: $00
	ld   bc, $7d75                                   ; $5e54: $01 $75 $7d
	sbc  [hl]                                        ; $5e57: $9e
	cp   h                                           ; $5e58: $bc
	db   $ec                                         ; $5e59: $ec
	sub  $a0                                         ; $5e5a: $d6 $a0
	ld   [bc], a                                     ; $5e5c: $02
	sbc  l                                           ; $5e5d: $9d
	ld   d, h                                        ; $5e5e: $54
	ld   e, c                                        ; $5e5f: $59
	sub  a                                           ; $5e60: $97
	dec  c                                           ; $5e61: $0d
	ld   [bc], a                                     ; $5e62: $02
	ld   a, d                                        ; $5e63: $7a
	ld   d, [hl]                                     ; $5e64: $56
	ld   [hl], h                                     ; $5e65: $74
	ld   l, a                                        ; $5e66: $6f
	sub  l                                           ; $5e67: $95
	ld   d, h                                        ; $5e68: $54
	ld   l, [hl]                                     ; $5e69: $6e
	ld   d, d                                        ; $5e6a: $52
	sbc  a                                           ; $5e6b: $9f
	dec  c                                           ; $5e6c: $0d
	nop                                              ; $5e6d: $00
	ld   a, [bc]                                     ; $5e6e: $0a
	ld   bc, $58fd                                   ; $5e6f: $01 $fd $58
	ld   d, d                                        ; $5e72: $52
	sub  a                                           ; $5e73: $97
	ld   a, l                                        ; $5e74: $7d
	ld   a, [bc]                                     ; $5e75: $0a
	ld   [bc], a                                     ; $5e76: $02
	inc  bc                                          ; $5e77: $03
	ld   d, b                                        ; $5e78: $50
	ld   [bc], a                                     ; $5e79: $02
	ld   a, h                                        ; $5e7a: $7c
	ld   [bc], a                                     ; $5e7b: $02
	or   [hl]                                        ; $5e7c: $b6
	ld   a, [bc]                                     ; $5e7d: $0a
	inc  bc                                          ; $5e7e: $03
	ld   l, [hl]                                     ; $5e7f: $6e
	ld   a, [$0dfe]                                  ; $5e80: $fa $fe $0d
	nop                                              ; $5e83: $00
	ld   a, [bc]                                     ; $5e84: $0a
	ld   bc, $92fd                                   ; $5e85: $01 $fd $92
	ld   d, d                                        ; $5e88: $52
	ld   a, [$0410]                                  ; $5e89: $fa $10 $04
	ld   hl, sp+$02                                  ; $5e8c: $f8 $02
	add  a                                           ; $5e8e: $87
	inc  b                                           ; $5e8f: $04
	or   a                                           ; $5e90: $b7
	inc  bc                                          ; $5e91: $03
	add  d                                           ; $5e92: $82
	ld   a, [$100d]                                  ; $5e93: $fa $0d $10
	ld   a, [bc]                                     ; $5e96: $0a
	ld   [bc], a                                     ; $5e97: $02
	ld   l, e                                        ; $5e98: $6b
	ld   a, h                                        ; $5e99: $7c
	ld   [bc], a                                     ; $5e9a: $02
	cp   b                                           ; $5e9b: $b8
	and  b                                           ; $5e9c: $a0
	ld   a, l                                        ; $5e9d: $7d
	ld   a, b                                        ; $5e9e: $78
	ld   l, c                                        ; $5e9f: $69
	ld   a, [$030a]                                  ; $5ea0: $fa $0a $03
	cp   $0d                                         ; $5ea3: $fe $0d
	nop                                              ; $5ea5: $00
	ld   a, [bc]                                     ; $5ea6: $0a
	ld   bc, $58fd                                   ; $5ea7: $01 $fd $58
	inc  bc                                          ; $5eaa: $03
	ld   [hl-], a                                    ; $5eab: $32
	dec  b                                           ; $5eac: $05
	ld   b, e                                        ; $5ead: $43
	ld   h, e                                        ; $5eae: $63
	and  c                                           ; $5eaf: $a1
	and  b                                           ; $5eb0: $a0
	rst  $38                                         ; $5eb1: $ff
	rst  $38                                         ; $5eb2: $ff
	dec  c                                           ; $5eb3: $0d
	db   $10                                         ; $5eb4: $10
	ld   d, h                                        ; $5eb5: $54
	ld   a, d                                        ; $5eb6: $7a
	rst  $38                                         ; $5eb7: $ff
	sbc  [hl]                                        ; $5eb8: $9e
	ld   a, [bc]                                     ; $5eb9: $0a
	ld   [bc], a                                     ; $5eba: $02
	add  b                                           ; $5ebb: $80
	ld   e, e                                        ; $5ebc: $5b
	sub  l                                           ; $5ebd: $95
	ld   d, h                                        ; $5ebe: $54
	ld   l, [hl]                                     ; $5ebf: $6e
	ld   l, h                                        ; $5ec0: $6c
	ld   a, [$030a]                                  ; $5ec1: $fa $0a $03
	cp   $0d                                         ; $5ec4: $fe $0d
	nop                                              ; $5ec6: $00
	ld   a, [bc]                                     ; $5ec7: $0a
	ld   bc, $7a02                                   ; $5ec8: $01 $02 $7a
	ld   d, [hl]                                     ; $5ecb: $56
	adc  h                                           ; $5ecc: $8c
	ld   h, l                                        ; $5ecd: $65
	ld   l, l                                        ; $5ece: $6d
	sbc  l                                           ; $5ecf: $9d
	ld   a, e                                        ; $5ed0: $7b
	ld   sp, hl                                      ; $5ed1: $f9
	dec  c                                           ; $5ed2: $0d
	ld   [hl], l                                     ; $5ed3: $75
	ld   a, l                                        ; $5ed4: $7d
	sbc  [hl]                                        ; $5ed5: $9e
	ld   d, d                                        ; $5ed6: $52
	ld   e, e                                        ; $5ed7: $5b
	adc  h                                           ; $5ed8: $8c
	ld   h, a                                        ; $5ed9: $67
	sbc  l                                           ; $5eda: $9d
	sub  [hl]                                        ; $5edb: $96
	sbc  a                                           ; $5edc: $9f
	dec  c                                           ; $5edd: $0d
	nop                                              ; $5ede: $00
	ld   a, [bc]                                     ; $5edf: $0a
	inc  e                                           ; $5ee0: $1c
	ld   [bc], a                                     ; $5ee1: $02
	ld   [bc], a                                     ; $5ee2: $02
	ld   [bc], a                                     ; $5ee3: $02
	ld   bc, $9258                                   ; $5ee4: $01 $58 $92
	ld   sp, hl                                      ; $5ee7: $f9
	dec  c                                           ; $5ee8: $0d
	ld   e, b                                        ; $5ee9: $58
	inc  bc                                          ; $5eea: $03
	ld   c, a                                        ; $5eeb: $4f
	ld   a, l                                        ; $5eec: $7d
	inc  bc                                          ; $5eed: $03
	xor  c                                           ; $5eee: $a9
	ld   l, [hl]                                     ; $5eef: $6e
	ld   d, d                                        ; $5ef0: $52
	ld   sp, hl                                      ; $5ef1: $f9
	dec  c                                           ; $5ef2: $0d
	nop                                              ; $5ef3: $00
	ld   a, [bc]                                     ; $5ef4: $0a
	rrca                                             ; $5ef5: $0f
	nop                                              ; $5ef6: $00
	ld   bc, $fd01                                   ; $5ef7: $01 $01 $fd
	ld   e, b                                        ; $5efa: $58
	ld   d, d                                        ; $5efb: $52
	sub  a                                           ; $5efc: $97
	ld   a, l                                        ; $5efd: $7d
	rst  $38                                         ; $5efe: $ff
	rst  $38                                         ; $5eff: $ff
	rst  $38                                         ; $5f00: $ff
	rst  $38                                         ; $5f01: $ff
	dec  c                                           ; $5f02: $0d
	nop                                              ; $5f03: $00
	ld   a, [bc]                                     ; $5f04: $0a
	add  hl, de                                      ; $5f05: $19
	dec  b                                           ; $5f06: $05
	inc  bc                                          ; $5f07: $03
	inc  bc                                          ; $5f08: $03
	ld   d, b                                        ; $5f09: $50
	ld   [bc], a                                     ; $5f0a: $02
	ld   a, h                                        ; $5f0b: $7c
	ld   [bc], a                                     ; $5f0c: $02
	or   [hl]                                        ; $5f0d: $b6
	ld   l, [hl]                                     ; $5f0e: $6e
	ld   a, [rRAMG]                                  ; $5f0f: $fa $00 $00
	inc  bc                                          ; $5f12: $03
	ei                                               ; $5f13: $fb
	inc  b                                           ; $5f14: $04
	ld   a, [hl]                                     ; $5f15: $7e
	ld   [bc], a                                     ; $5f16: $02
	ld   a, l                                        ; $5f17: $7d
	ld   l, [hl]                                     ; $5f18: $6e
	ld   a, [$0100]                                  ; $5f19: $fa $00 $01
	ld   [bc], a                                     ; $5f1c: $02
	db   $f4                                         ; $5f1d: $f4
	ld   [bc], a                                     ; $5f1e: $02
	ld   a, h                                        ; $5f1f: $7c
	ld   [bc], a                                     ; $5f20: $02
	ldh  a, [c]                                      ; $5f21: $f2
	ld   l, [hl]                                     ; $5f22: $6e
	ld   a, [$0200]                                  ; $5f23: $fa $00 $02
	rlca                                             ; $5f26: $07
	dec  bc                                          ; $5f27: $0b
	ld   [bc], a                                     ; $5f28: $02
	ld   [bc], a                                     ; $5f29: $02
	inc  bc                                          ; $5f2a: $03
	ld   bc, $2000                                   ; $5f2b: $01 $00 $20
	nop                                              ; $5f2e: $00
	rlca                                             ; $5f2f: $07
	dec  l                                           ; $5f30: $2d
	ld   [bc], a                                     ; $5f31: $02
	ld   [bc], a                                     ; $5f32: $02
	inc  bc                                          ; $5f33: $03
	ld   bc, $2001                                   ; $5f34: $01 $01 $20
	nop                                              ; $5f37: $00
	rlca                                             ; $5f38: $07
	ld   b, [hl]                                     ; $5f39: $46
	ld   [bc], a                                     ; $5f3a: $02
	ld   [bc], a                                     ; $5f3b: $02
	inc  bc                                          ; $5f3c: $03
	ld   bc, $2002                                   ; $5f3d: $01 $02 $20
	nop                                              ; $5f40: $00
	ld   b, $31                                      ; $5f41: $06 $31
	inc  b                                           ; $5f43: $04
	rrca                                             ; $5f44: $0f
	nop                                              ; $5f45: $00
	ld   bc, $fd01                                   ; $5f46: $01 $01 $fd
	ld   e, b                                        ; $5f49: $58
	ld   d, d                                        ; $5f4a: $52
	sub  a                                           ; $5f4b: $97
	ld   a, l                                        ; $5f4c: $7d
	sbc  [hl]                                        ; $5f4d: $9e
	inc  bc                                          ; $5f4e: $03
	ld   d, b                                        ; $5f4f: $50
	ld   [bc], a                                     ; $5f50: $02
	ld   a, h                                        ; $5f51: $7c
	ld   [bc], a                                     ; $5f52: $02
	or   [hl]                                        ; $5f53: $b6
	ld   l, [hl]                                     ; $5f54: $6e
	ld   a, [$0dfe]                                  ; $5f55: $fa $fe $0d
	nop                                              ; $5f58: $00
	ld   a, [bc]                                     ; $5f59: $0a
	dec  b                                           ; $5f5a: $05
	ld   b, b                                        ; $5f5b: $40
	rst  $38                                         ; $5f5c: $ff
	inc  bc                                          ; $5f5d: $03
	rst  $38                                         ; $5f5e: $ff
	ld   bc, $2801                                   ; $5f5f: $01 $01 $28
	nop                                              ; $5f62: $00
	ld   b, $5f                                      ; $5f63: $06 $5f
	ld   [bc], a                                     ; $5f65: $02
	rrca                                             ; $5f66: $0f
	nop                                              ; $5f67: $00
	ld   bc, $fd01                                   ; $5f68: $01 $01 $fd
	ld   e, b                                        ; $5f6b: $58
	ld   d, d                                        ; $5f6c: $52
	sub  a                                           ; $5f6d: $97
	ld   a, l                                        ; $5f6e: $7d
	sbc  [hl]                                        ; $5f6f: $9e
	inc  bc                                          ; $5f70: $03
	ei                                               ; $5f71: $fb
	inc  b                                           ; $5f72: $04
	ld   a, [hl]                                     ; $5f73: $7e
	ld   [bc], a                                     ; $5f74: $02
	ld   a, l                                        ; $5f75: $7d
	ld   l, [hl]                                     ; $5f76: $6e
	ld   a, [$0dfe]                                  ; $5f77: $fa $fe $0d
	nop                                              ; $5f7a: $00
	ld   a, [bc]                                     ; $5f7b: $0a
	ld   b, $5f                                      ; $5f7c: $06 $5f
	ld   [bc], a                                     ; $5f7e: $02
	rrca                                             ; $5f7f: $0f
	nop                                              ; $5f80: $00
	ld   bc, $fd01                                   ; $5f81: $01 $01 $fd
	ld   e, b                                        ; $5f84: $58
	ld   d, d                                        ; $5f85: $52
	sub  a                                           ; $5f86: $97
	ld   a, l                                        ; $5f87: $7d
	sbc  [hl]                                        ; $5f88: $9e
	ld   [bc], a                                     ; $5f89: $02
	db   $f4                                         ; $5f8a: $f4
	ld   [bc], a                                     ; $5f8b: $02
	ld   a, h                                        ; $5f8c: $7c
	ld   [bc], a                                     ; $5f8d: $02
	ldh  a, [c]                                      ; $5f8e: $f2
	ld   l, [hl]                                     ; $5f8f: $6e
	ld   a, [$0dfe]                                  ; $5f90: $fa $fe $0d
	nop                                              ; $5f93: $00
	ld   a, [bc]                                     ; $5f94: $0a
	ld   b, $5f                                      ; $5f95: $06 $5f
	ld   [bc], a                                     ; $5f97: $02
	inc  e                                           ; $5f98: $1c
	ld   [bc], a                                     ; $5f99: $02
	ld   [bc], a                                     ; $5f9a: $02
	ld   [bc], a                                     ; $5f9b: $02
	ld   bc, $7c61                                   ; $5f9c: $01 $61 $7c
	inc  b                                           ; $5f9f: $04
	ld   hl, sp+$02                                  ; $5fa0: $f8 $02
	add  a                                           ; $5fa2: $87
	inc  bc                                          ; $5fa3: $03
	ld   e, h                                        ; $5fa4: $5c
	ld   a, c                                        ; $5fa5: $79
	dec  c                                           ; $5fa6: $0d
	inc  b                                           ; $5fa7: $04
	ld   c, c                                        ; $5fa8: $49
	and  b                                           ; $5fa9: $a0
	ld   h, l                                        ; $5faa: $65
	ld   a, c                                        ; $5fab: $79
	ld   e, e                                        ; $5fac: $5b
	ld   l, l                                        ; $5fad: $6d
	ld   a, h                                        ; $5fae: $7c
	ld   l, [hl]                                     ; $5faf: $6e
	sbc  a                                           ; $5fb0: $9f
	dec  c                                           ; $5fb1: $0d
	nop                                              ; $5fb2: $00
	ld   a, [bc]                                     ; $5fb3: $0a
	rrca                                             ; $5fb4: $0f
	nop                                              ; $5fb5: $00
	ld   bc, $9201                                   ; $5fb6: $01 $01 $92
	ld   d, d                                        ; $5fb9: $52
	ld   a, [$0410]                                  ; $5fba: $fa $10 $04
	ld   hl, sp+$02                                  ; $5fbd: $f8 $02
	add  a                                           ; $5fbf: $87
	inc  b                                           ; $5fc0: $04
	or   a                                           ; $5fc1: $b7
	inc  bc                                          ; $5fc2: $03
	add  d                                           ; $5fc3: $82
	ld   a, [$ff0d]                                  ; $5fc4: $fa $0d $ff
	rst  $38                                         ; $5fc7: $ff
	rst  $38                                         ; $5fc8: $ff
	rst  $38                                         ; $5fc9: $ff
	dec  c                                           ; $5fca: $0d
	nop                                              ; $5fcb: $00
	ld   a, [bc]                                     ; $5fcc: $0a
	add  hl, de                                      ; $5fcd: $19
	dec  b                                           ; $5fce: $05
	inc  bc                                          ; $5fcf: $03
	ld   l, e                                        ; $5fd0: $6b
	ld   a, h                                        ; $5fd1: $7c
	ld   [bc], a                                     ; $5fd2: $02
	cp   b                                           ; $5fd3: $b8
	and  b                                           ; $5fd4: $a0
	ld   a, l                                        ; $5fd5: $7d
	ld   a, b                                        ; $5fd6: $78
	ld   l, c                                        ; $5fd7: $69
	ld   a, [rRAMG]                                  ; $5fd8: $fa $00 $00
	ld   l, e                                        ; $5fdb: $6b
	ld   a, h                                        ; $5fdc: $7c
	dec  b                                           ; $5fdd: $05
	ld   e, b                                        ; $5fde: $58
	and  b                                           ; $5fdf: $a0
	sub  [hl]                                        ; $5fe0: $96
	ld   h, c                                        ; $5fe1: $61
	ld   l, c                                        ; $5fe2: $69
	ld   a, [$0100]                                  ; $5fe3: $fa $00 $01
	ld   l, e                                        ; $5fe6: $6b
	ld   a, h                                        ; $5fe7: $7c
	ld   [bc], a                                     ; $5fe8: $02
	dec  sp                                          ; $5fe9: $3b
	and  b                                           ; $5fea: $a0
	sbc  l                                           ; $5feb: $9d
	ld   l, l                                        ; $5fec: $6d
	ld   l, c                                        ; $5fed: $69
	ld   a, [$0200]                                  ; $5fee: $fa $00 $02
	rlca                                             ; $5ff1: $07
	sub  $02                                         ; $5ff2: $d6 $02
	ld   [bc], a                                     ; $5ff4: $02
	inc  bc                                          ; $5ff5: $03
	ld   bc, $2000                                   ; $5ff6: $01 $00 $20
	nop                                              ; $5ff9: $00
	rlca                                             ; $5ffa: $07
	nop                                              ; $5ffb: $00
	inc  bc                                          ; $5ffc: $03
	ld   [bc], a                                     ; $5ffd: $02
	inc  bc                                          ; $5ffe: $03
	ld   bc, $2001                                   ; $5fff: $01 $01 $20
	nop                                              ; $6002: $00
	rlca                                             ; $6003: $07
	ld   hl, $0203                                   ; $6004: $21 $03 $02
	inc  bc                                          ; $6007: $03
	ld   bc, $2002                                   ; $6008: $01 $02 $20
	nop                                              ; $600b: $00
	ld   b, $31                                      ; $600c: $06 $31
	inc  b                                           ; $600e: $04
	rrca                                             ; $600f: $0f
	nop                                              ; $6010: $00
	ld   bc, $9201                                   ; $6011: $01 $01 $92
	ld   d, d                                        ; $6014: $52
	ld   a, [$0410]                                  ; $6015: $fa $10 $04
	ld   hl, sp+$02                                  ; $6018: $f8 $02
	add  a                                           ; $601a: $87
	inc  b                                           ; $601b: $04
	or   a                                           ; $601c: $b7
	inc  bc                                          ; $601d: $03
	add  d                                           ; $601e: $82
	ld   a, [$6b0d]                                  ; $601f: $fa $0d $6b
	ld   a, h                                        ; $6022: $7c
	ld   [bc], a                                     ; $6023: $02
	cp   b                                           ; $6024: $b8
	and  b                                           ; $6025: $a0
	ld   a, l                                        ; $6026: $7d
	ld   a, b                                        ; $6027: $78
	ld   l, c                                        ; $6028: $69
	ld   a, [$000d]                                  ; $6029: $fa $0d $00
	ld   a, [bc]                                     ; $602c: $0a
	dec  b                                           ; $602d: $05
	ld   b, b                                        ; $602e: $40
	rst  $38                                         ; $602f: $ff
	inc  bc                                          ; $6030: $03
	rst  $38                                         ; $6031: $ff
	ld   bc, $2801                                   ; $6032: $01 $01 $28
	nop                                              ; $6035: $00
	ld   b, $42                                      ; $6036: $06 $42
	inc  bc                                          ; $6038: $03
	rrca                                             ; $6039: $0f
	nop                                              ; $603a: $00
	ld   bc, $9201                                   ; $603b: $01 $01 $92
	ld   d, d                                        ; $603e: $52
	ld   a, [$0410]                                  ; $603f: $fa $10 $04
	ld   hl, sp+$02                                  ; $6042: $f8 $02
	add  a                                           ; $6044: $87
	inc  b                                           ; $6045: $04
	or   a                                           ; $6046: $b7
	inc  bc                                          ; $6047: $03
	add  d                                           ; $6048: $82
	ld   a, [$6b0d]                                  ; $6049: $fa $0d $6b
	ld   a, h                                        ; $604c: $7c
	dec  b                                           ; $604d: $05
	ld   e, b                                        ; $604e: $58
	and  b                                           ; $604f: $a0
	sub  [hl]                                        ; $6050: $96
	ld   h, c                                        ; $6051: $61
	ld   l, c                                        ; $6052: $69
	ld   a, [$000d]                                  ; $6053: $fa $0d $00
	ld   a, [bc]                                     ; $6056: $0a
	ld   b, $42                                      ; $6057: $06 $42
	inc  bc                                          ; $6059: $03
	rrca                                             ; $605a: $0f
	nop                                              ; $605b: $00
	ld   bc, $9201                                   ; $605c: $01 $01 $92
	ld   d, d                                        ; $605f: $52
	ld   a, [$0410]                                  ; $6060: $fa $10 $04
	ld   hl, sp+$02                                  ; $6063: $f8 $02
	add  a                                           ; $6065: $87
	inc  b                                           ; $6066: $04
	or   a                                           ; $6067: $b7
	inc  bc                                          ; $6068: $03
	add  d                                           ; $6069: $82
	ld   a, [$6b0d]                                  ; $606a: $fa $0d $6b
	ld   a, h                                        ; $606d: $7c
	ld   [bc], a                                     ; $606e: $02
	dec  sp                                          ; $606f: $3b
	and  b                                           ; $6070: $a0
	sbc  l                                           ; $6071: $9d
	ld   l, l                                        ; $6072: $6d
	ld   l, c                                        ; $6073: $69
	ld   a, [$000d]                                  ; $6074: $fa $0d $00
	ld   a, [bc]                                     ; $6077: $0a
	ld   b, $42                                      ; $6078: $06 $42
	inc  bc                                          ; $607a: $03
	inc  e                                           ; $607b: $1c
	ld   [bc], a                                     ; $607c: $02
	ld   bc, $0101                                   ; $607d: $01 $01 $01
	ld   d, d                                        ; $6080: $52
	ld   d, d                                        ; $6081: $52
	ld   l, h                                        ; $6082: $6c
	rst  $38                                         ; $6083: $ff
	rst  $38                                         ; $6084: $ff
	dec  c                                           ; $6085: $0d
	ld   [bc], a                                     ; $6086: $02
	xor  d                                           ; $6087: $aa
	sbc  e                                           ; $6088: $9b
	ld   a, c                                        ; $6089: $79
	ld   d, d                                        ; $608a: $52
	sbc  c                                           ; $608b: $99
	dec  b                                           ; $608c: $05
	ld   d, a                                        ; $608d: $57
	inc  bc                                          ; $608e: $03
	ld   b, h                                        ; $608f: $44
	halt                                             ; $6090: $76
	ld   h, c                                        ; $6091: $61
	ld   d, h                                        ; $6092: $54
	ld   e, c                                        ; $6093: $59
	and  c                                           ; $6094: $a1
	dec  c                                           ; $6095: $0d
	ld   a, b                                        ; $6096: $78
	sub  a                                           ; $6097: $97
	ld   a, [hl]                                     ; $6098: $7e
	ld   a, b                                        ; $6099: $78
	rst  $38                                         ; $609a: $ff
	sub  $d6                                         ; $609b: $d6 $d6
	sub  $d6                                         ; $609d: $d6 $d6
	sub  $ff                                         ; $609f: $d6 $ff
	rst  $38                                         ; $60a1: $ff
	dec  c                                           ; $60a2: $0d
	nop                                              ; $60a3: $00
	ld   a, [bc]                                     ; $60a4: $0a
	rrca                                             ; $60a5: $0f
	nop                                              ; $60a6: $00
	ld   bc, $5801                                   ; $60a7: $01 $01 $58
	inc  bc                                          ; $60aa: $03
	ld   [hl-], a                                    ; $60ab: $32
	dec  b                                           ; $60ac: $05
	ld   b, e                                        ; $60ad: $43
	ld   h, e                                        ; $60ae: $63
	and  c                                           ; $60af: $a1
	and  b                                           ; $60b0: $a0
	rst  $38                                         ; $60b1: $ff
	rst  $38                                         ; $60b2: $ff
	dec  c                                           ; $60b3: $0d
	ld   d, h                                        ; $60b4: $54
	ld   a, d                                        ; $60b5: $7a
	rst  $38                                         ; $60b6: $ff
	rst  $38                                         ; $60b7: $ff
	rst  $38                                         ; $60b8: $ff
	rst  $38                                         ; $60b9: $ff
	rst  $38                                         ; $60ba: $ff
	dec  c                                           ; $60bb: $0d
	nop                                              ; $60bc: $00
	ld   a, [bc]                                     ; $60bd: $0a
	add  hl, de                                      ; $60be: $19
	dec  b                                           ; $60bf: $05
	inc  bc                                          ; $60c0: $03
	add  b                                           ; $60c1: $80
	ld   e, e                                        ; $60c2: $5b
	sub  l                                           ; $60c3: $95
	ld   d, h                                        ; $60c4: $54
	ld   l, [hl]                                     ; $60c5: $6e
	ld   l, h                                        ; $60c6: $6c
	ld   a, [rRAMG]                                  ; $60c7: $fa $00 $00
	cp   e                                           ; $60ca: $bb
	db   $ed                                         ; $60cb: $ed
	and  l                                           ; $60cc: $a5
	ld   l, h                                        ; $60cd: $6c
	ld   a, [$0100]                                  ; $60ce: $fa $00 $01
	pop  bc                                          ; $60d1: $c1
	or   [hl]                                        ; $60d2: $b6
	and  l                                           ; $60d3: $a5
	ld   l, h                                        ; $60d4: $6c
	ld   a, [$0200]                                  ; $60d5: $fa $00 $02
	rlca                                             ; $60d8: $07
	cp   l                                           ; $60d9: $bd
	inc  bc                                          ; $60da: $03
	ld   [bc], a                                     ; $60db: $02
	inc  bc                                          ; $60dc: $03
	ld   bc, $2000                                   ; $60dd: $01 $00 $20
	nop                                              ; $60e0: $00
	rlca                                             ; $60e1: $07
	db   $eb                                         ; $60e2: $eb
	inc  bc                                          ; $60e3: $03
	ld   [bc], a                                     ; $60e4: $02
	inc  bc                                          ; $60e5: $03
	ld   bc, $2001                                   ; $60e6: $01 $01 $20
	nop                                              ; $60e9: $00
	rlca                                             ; $60ea: $07
	ld   c, $04                                      ; $60eb: $0e $04
	ld   [bc], a                                     ; $60ed: $02
	inc  bc                                          ; $60ee: $03
	ld   bc, $2002                                   ; $60ef: $01 $02 $20
	nop                                              ; $60f2: $00
	ld   b, $31                                      ; $60f3: $06 $31
	inc  b                                           ; $60f5: $04
	rrca                                             ; $60f6: $0f
	nop                                              ; $60f7: $00
	ld   bc, $5801                                   ; $60f8: $01 $01 $58
	inc  bc                                          ; $60fb: $03
	ld   [hl-], a                                    ; $60fc: $32
	dec  b                                           ; $60fd: $05
	ld   b, e                                        ; $60fe: $43
	ld   h, e                                        ; $60ff: $63
	and  c                                           ; $6100: $a1
	and  b                                           ; $6101: $a0
	rst  $38                                         ; $6102: $ff
	rst  $38                                         ; $6103: $ff
	dec  c                                           ; $6104: $0d
	ld   d, h                                        ; $6105: $54
	ld   a, d                                        ; $6106: $7a
	rst  $38                                         ; $6107: $ff
	sbc  [hl]                                        ; $6108: $9e
	add  b                                           ; $6109: $80
	ld   e, e                                        ; $610a: $5b
	sub  l                                           ; $610b: $95
	ld   d, h                                        ; $610c: $54
	ld   l, [hl]                                     ; $610d: $6e
	ld   l, h                                        ; $610e: $6c
	ld   a, [$000d]                                  ; $610f: $fa $0d $00
	ld   a, [bc]                                     ; $6112: $0a
	dec  b                                           ; $6113: $05
	ld   b, b                                        ; $6114: $40
	rst  $38                                         ; $6115: $ff
	inc  bc                                          ; $6116: $03
	rst  $38                                         ; $6117: $ff
	ld   bc, $2801                                   ; $6118: $01 $01 $28
	nop                                              ; $611b: $00
	dec  c                                           ; $611c: $0d
	nop                                              ; $611d: $00
	nop                                              ; $611e: $00
	inc  c                                           ; $611f: $0c
	dec  bc                                          ; $6120: $0b
	ld   b, $61                                      ; $6121: $06 $61
	inc  b                                           ; $6123: $04
	rrca                                             ; $6124: $0f
	nop                                              ; $6125: $00
	ld   bc, $5801                                   ; $6126: $01 $01 $58
	inc  bc                                          ; $6129: $03
	ld   [hl-], a                                    ; $612a: $32
	dec  b                                           ; $612b: $05
	ld   b, e                                        ; $612c: $43
	ld   h, e                                        ; $612d: $63
	and  c                                           ; $612e: $a1
	and  b                                           ; $612f: $a0
	rst  $38                                         ; $6130: $ff
	rst  $38                                         ; $6131: $ff
	dec  c                                           ; $6132: $0d
	ld   d, h                                        ; $6133: $54
	ld   a, d                                        ; $6134: $7a
	rst  $38                                         ; $6135: $ff
	sbc  [hl]                                        ; $6136: $9e
	cp   e                                           ; $6137: $bb
	db   $ed                                         ; $6138: $ed
	and  l                                           ; $6139: $a5
	ld   l, h                                        ; $613a: $6c
	ld   a, [$000d]                                  ; $613b: $fa $0d $00
	ld   a, [bc]                                     ; $613e: $0a
	dec  c                                           ; $613f: $0d
	nop                                              ; $6140: $00
	nop                                              ; $6141: $00
	inc  c                                           ; $6142: $0c
	dec  bc                                          ; $6143: $0b
	ld   b, $61                                      ; $6144: $06 $61
	inc  b                                           ; $6146: $04
	rrca                                             ; $6147: $0f
	nop                                              ; $6148: $00
	ld   bc, $5801                                   ; $6149: $01 $01 $58
	inc  bc                                          ; $614c: $03
	ld   [hl-], a                                    ; $614d: $32
	dec  b                                           ; $614e: $05
	ld   b, e                                        ; $614f: $43
	ld   h, e                                        ; $6150: $63
	and  c                                           ; $6151: $a1
	and  b                                           ; $6152: $a0
	rst  $38                                         ; $6153: $ff
	rst  $38                                         ; $6154: $ff
	dec  c                                           ; $6155: $0d
	ld   d, h                                        ; $6156: $54
	ld   a, d                                        ; $6157: $7a
	rst  $38                                         ; $6158: $ff
	sbc  [hl]                                        ; $6159: $9e
	pop  bc                                          ; $615a: $c1
	or   [hl]                                        ; $615b: $b6
	and  l                                           ; $615c: $a5
	ld   l, h                                        ; $615d: $6c
	ld   a, [$000d]                                  ; $615e: $fa $0d $00
	ld   a, [bc]                                     ; $6161: $0a
	dec  c                                           ; $6162: $0d
	nop                                              ; $6163: $00
	nop                                              ; $6164: $00
	inc  c                                           ; $6165: $0c
	dec  bc                                          ; $6166: $0b
	ld   b, $61                                      ; $6167: $06 $61
	inc  b                                           ; $6169: $04
	inc  e                                           ; $616a: $1c
	ld   [bc], a                                     ; $616b: $02
	rlca                                             ; $616c: $07
	rlca                                             ; $616d: $07
	ld   bc, $7c61                                   ; $616e: $01 $61 $7c
	ld   e, l                                        ; $6171: $5d
	sub  a                                           ; $6172: $97
	ld   d, d                                        ; $6173: $52
	ld   a, h                                        ; $6174: $7c
	cp   h                                           ; $6175: $bc
	db   $ec                                         ; $6176: $ec
	sub  $75                                         ; $6177: $d6 $75
	dec  c                                           ; $6179: $0d
	adc  h                                           ; $617a: $8c
	ld   l, a                                        ; $617b: $6f
	ld   e, d                                        ; $617c: $5a
	ld   d, [hl]                                     ; $617d: $56
	sbc  c                                           ; $617e: $99
	ld   a, b                                        ; $617f: $78
	and  c                                           ; $6180: $a1
	ld   [hl], h                                     ; $6181: $74
	rst  $38                                         ; $6182: $ff
	rst  $38                                         ; $6183: $ff
	dec  c                                           ; $6184: $0d
	sub  d                                           ; $6185: $92
	ld   [hl], c                                     ; $6186: $71
	ld   [hl], h                                     ; $6187: $74
	sub  a                                           ; $6188: $97
	sbc  d                                           ; $6189: $9a
	adc  h                                           ; $618a: $8c
	ld   l, c                                        ; $618b: $69
	and  c                                           ; $618c: $a1
	sbc  l                                           ; $618d: $9d
	sbc  a                                           ; $618e: $9f
	dec  c                                           ; $618f: $0d
	nop                                              ; $6190: $00
	ld   a, [bc]                                     ; $6191: $0a
	dec  c                                           ; $6192: $0d
	nop                                              ; $6193: $00
	nop                                              ; $6194: $00
	inc  c                                           ; $6195: $0c
	dec  bc                                          ; $6196: $0b
	ld   b, $dd                                      ; $6197: $06 $dd
	inc  b                                           ; $6199: $04
	rlca                                             ; $619a: $07
	ld   a, h                                        ; $619b: $7c
	inc  b                                           ; $619c: $04
	inc  bc                                          ; $619d: $03
	rst  $38                                         ; $619e: $ff
	ld   bc, $2003                                   ; $619f: $01 $03 $20
	nop                                              ; $61a2: $00
	rlca                                             ; $61a3: $07
	cp   a                                           ; $61a4: $bf
	inc  b                                           ; $61a5: $04
	inc  bc                                          ; $61a6: $03
	rst  $38                                         ; $61a7: $ff
	ld   bc, $2002                                   ; $61a8: $01 $02 $20
	nop                                              ; $61ab: $00
	rlca                                             ; $61ac: $07
	db   $dd                                         ; $61ad: $dd
	inc  b                                           ; $61ae: $04
	inc  bc                                          ; $61af: $03
	rst  $38                                         ; $61b0: $ff
	ld   bc, $2301                                   ; $61b1: $01 $01 $23
	nop                                              ; $61b4: $00
	inc  e                                           ; $61b5: $1c
	ld   [bc], a                                     ; $61b6: $02
	ld   bc, $1d01                                   ; $61b7: $01 $01 $1d
	ld   b, b                                        ; $61ba: $40
	ld   [de], a                                     ; $61bb: $12
	inc  bc                                          ; $61bc: $03
	ld   [de], a                                     ; $61bd: $12
	ld   bc, $2803                                   ; $61be: $01 $03 $28
	nop                                              ; $61c1: $00
	ld   bc, $a603                                   ; $61c2: $01 $03 $a6
	inc  bc                                          ; $61c5: $03
	add  d                                           ; $61c6: $82
	ld   a, c                                        ; $61c7: $79
	ld   h, l                                        ; $61c8: $65
	ld   [hl], h                                     ; $61c9: $74
	ld   a, l                                        ; $61ca: $7d
	dec  c                                           ; $61cb: $0d
	ld   a, b                                        ; $61cc: $78
	ld   e, c                                        ; $61cd: $59
	ld   a, b                                        ; $61ce: $78
	ld   e, c                                        ; $61cf: $59
	ld   [bc], a                                     ; $61d0: $02
	ld   l, e                                        ; $61d1: $6b
	ld   e, d                                        ; $61d2: $5a
	ld   d, d                                        ; $61d3: $52
	ld   d, d                                        ; $61d4: $52
	ld   [hl], l                                     ; $61d5: $75
	ld   h, a                                        ; $61d6: $67
	sbc  l                                           ; $61d7: $9d
	ld   a, e                                        ; $61d8: $7b
	sbc  a                                           ; $61d9: $9f
	dec  c                                           ; $61da: $0d
	inc  bc                                          ; $61db: $03
	ld   e, e                                        ; $61dc: $5b
	ld   e, c                                        ; $61dd: $59
	sbc  b                                           ; $61de: $98
	adc  h                                           ; $61df: $8c
	ld   h, l                                        ; $61e0: $65
	ld   l, l                                        ; $61e1: $6d
	sbc  l                                           ; $61e2: $9d
	sbc  a                                           ; $61e3: $9f
	dec  c                                           ; $61e4: $0d
	nop                                              ; $61e5: $00
	ld   a, [bc]                                     ; $61e6: $0a
	ld   bc, $5477                                   ; $61e7: $01 $77 $54
	sub  b                                           ; $61ea: $90
	sbc  [hl]                                        ; $61eb: $9e
	ld   d, b                                        ; $61ec: $50
	sbc  b                                           ; $61ed: $98
	ld   e, d                                        ; $61ee: $5a
	halt                                             ; $61ef: $76
	ld   d, h                                        ; $61f0: $54
	sbc  a                                           ; $61f1: $9f
	dec  c                                           ; $61f2: $0d
	nop                                              ; $61f3: $00
	ld   a, [bc]                                     ; $61f4: $0a
	ld   b, $0b                                      ; $61f5: $06 $0b
	dec  b                                           ; $61f7: $05
	inc  e                                           ; $61f8: $1c
	ld   [bc], a                                     ; $61f9: $02
	nop                                              ; $61fa: $00
	nop                                              ; $61fb: $00
	dec  e                                           ; $61fc: $1d
	ld   b, b                                        ; $61fd: $40
	ld   [de], a                                     ; $61fe: $12
	inc  bc                                          ; $61ff: $03
	ld   [de], a                                     ; $6200: $12
	ld   bc, $2801                                   ; $6201: $01 $01 $28
	nop                                              ; $6204: $00
	ld   bc, $5d62                                   ; $6205: $01 $62 $5d
	sbc  e                                           ; $6208: $9b
	ld   d, h                                        ; $6209: $54
	ld   h, e                                        ; $620a: $63
	adc  h                                           ; $620b: $8c
	ld   [hl], l                                     ; $620c: $75
	ld   h, l                                        ; $620d: $65
	ld   l, l                                        ; $620e: $6d
	sbc  a                                           ; $620f: $9f
	dec  c                                           ; $6210: $0d
	nop                                              ; $6211: $00
	ld   a, [bc]                                     ; $6212: $0a
	ld   b, $0b                                      ; $6213: $06 $0b
	dec  b                                           ; $6215: $05
	inc  e                                           ; $6216: $1c
	ld   [bc], a                                     ; $6217: $02
	dec  b                                           ; $6218: $05
	dec  b                                           ; $6219: $05
	dec  e                                           ; $621a: $1d
	ld   b, b                                        ; $621b: $40
	ld   [de], a                                     ; $621c: $12
	inc  bc                                          ; $621d: $03
	ld   [de], a                                     ; $621e: $12
	ld   bc, $2902                                   ; $621f: $01 $02 $29
	nop                                              ; $6222: $00
	ld   bc, $a603                                   ; $6223: $01 $03 $a6
	inc  bc                                          ; $6226: $03
	add  d                                           ; $6227: $82
	ld   a, c                                        ; $6228: $79
	ld   l, l                                        ; $6229: $6d
	ld   a, h                                        ; $622a: $7c
	and  c                                           ; $622b: $a1
	ld   l, [hl]                                     ; $622c: $6e
	sbc  l                                           ; $622d: $9d
	ld   l, l                                        ; $622e: $6d
	ld   e, l                                        ; $622f: $5d
	ld   h, l                                        ; $6230: $65
	ld   e, d                                        ; $6231: $5a
	dec  c                                           ; $6232: $0d
	pop  de                                          ; $6233: $d1
	xor  h                                           ; $6234: $ac
	ld   l, [hl]                                     ; $6235: $6e
	ld   [hl], c                                     ; $6236: $71
	ld   l, l                                        ; $6237: $6d
	ld   a, h                                        ; $6238: $7c
	ld   e, c                                        ; $6239: $59
	ld   h, l                                        ; $623a: $65
	sub  a                                           ; $623b: $97
	rst  $38                                         ; $623c: $ff
	rst  $38                                         ; $623d: $ff
	dec  c                                           ; $623e: $0d
	nop                                              ; $623f: $00
	ld   a, [bc]                                     ; $6240: $0a
	ld   b, $0b                                      ; $6241: $06 $0b
	dec  b                                           ; $6243: $05
	inc  e                                           ; $6244: $1c
	ld   [bc], a                                     ; $6245: $02
	nop                                              ; $6246: $00
	nop                                              ; $6247: $00
	ld   bc, $7d75                                   ; $6248: $01 $75 $7d
	sbc  [hl]                                        ; $624b: $9e
	sbc  l                                           ; $624c: $9d
	ld   l, l                                        ; $624d: $6d
	ld   e, l                                        ; $624e: $5d
	ld   h, l                                        ; $624f: $65
	ld   a, l                                        ; $6250: $7d
	ld   h, c                                        ; $6251: $61
	sbc  d                                           ; $6252: $9a
	ld   [hl], l                                     ; $6253: $75
	sbc  a                                           ; $6254: $9f
	dec  c                                           ; $6255: $0d
	nop                                              ; $6256: $00
	ld   a, [bc]                                     ; $6257: $0a
	dec  c                                           ; $6258: $0d
	nop                                              ; $6259: $00
	nop                                              ; $625a: $00
	rrca                                             ; $625b: $0f
	nop                                              ; $625c: $00
	ld   bc, $1e09                                   ; $625d: $01 $09 $1e
	nop                                              ; $6260: $00
	nop                                              ; $6261: $00
	inc  b                                           ; $6262: $04
	add  b                                           ; $6263: $80
	xor  d                                           ; $6264: $aa
	ld   bc, $2000                                   ; $6265: $01 $00 $20
	nop                                              ; $6268: $00
	ld   c, $2f                                      ; $6269: $0e $2f
	inc  e                                           ; $626b: $1c
	dec  c                                           ; $626c: $0d
	nop                                              ; $626d: $00
	nop                                              ; $626e: $00
	ld   [bc], a                                     ; $626f: $02
	ld   bc, $9750                                   ; $6270: $01 $50 $97
	sbc  [hl]                                        ; $6273: $9e
	ld   [$5d00], sp                                 ; $6274: $08 $00 $5d
	and  c                                           ; $6277: $a1
	sbc  a                                           ; $6278: $9f
	dec  c                                           ; $6279: $0d
	nop                                              ; $627a: $00
	ld   a, [bc]                                     ; $627b: $0a
	inc  e                                           ; $627c: $1c
	dec  c                                           ; $627d: $0d
	ld   bc, $0101                                   ; $627e: $01 $01 $01
	ld   a, e                                        ; $6281: $7b
	ld   d, [hl]                                     ; $6282: $56
	sbc  [hl]                                        ; $6283: $9e
	inc  b                                           ; $6284: $04
	dec  hl                                          ; $6285: $2b
	ld   [hl], c                                     ; $6286: $71
	ld   [hl], h                                     ; $6287: $74
	sbc  c                                           ; $6288: $99
	ld   sp, hl                                      ; $6289: $f9
	dec  c                                           ; $628a: $0d
	nop                                              ; $628b: $00
	ld   a, [bc]                                     ; $628c: $0a
	ld   bc, $5d63                                   ; $628d: $01 $63 $5d
	sub  a                                           ; $6290: $97
	ld   h, e                                        ; $6291: $63
	and  c                                           ; $6292: $a1
	sbc  [hl]                                        ; $6293: $9e
	dec  c                                           ; $6294: $0d
	ld   [bc], a                                     ; $6295: $02
	cp   h                                           ; $6296: $bc
	ld   a, h                                        ; $6297: $7c
	dec  b                                           ; $6298: $05
	add  hl, de                                      ; $6299: $19
	inc  bc                                          ; $629a: $03
	and  h                                           ; $629b: $a4
	ld   a, c                                        ; $629c: $79
	inc  bc                                          ; $629d: $03
	xor  [hl]                                        ; $629e: $ae
	ld   d, h                                        ; $629f: $54
	inc  b                                           ; $62a0: $04
	push de                                          ; $62a1: $d5
	inc  b                                           ; $62a2: $04
	inc  l                                           ; $62a3: $2c
	and  b                                           ; $62a4: $a0
	dec  c                                           ; $62a5: $0d
	ld   h, e                                        ; $62a6: $63
	ld   e, d                                        ; $62a7: $5a
	ld   h, l                                        ; $62a8: $65
	ld   [hl], h                                     ; $62a9: $74
	ld   d, d                                        ; $62aa: $52
	sbc  c                                           ; $62ab: $99
	ld   l, e                                        ; $62ac: $6b
	ld   d, h                                        ; $62ad: $54
	sub  [hl]                                        ; $62ae: $96
	sbc  a                                           ; $62af: $9f
	dec  c                                           ; $62b0: $0d
	nop                                              ; $62b1: $00
	ld   a, [bc]                                     ; $62b2: $0a
	ld   bc, $6d50                                   ; $62b3: $01 $50 $6d
	ld   h, l                                        ; $62b6: $65
	ld   a, h                                        ; $62b7: $7c
	ld   d, h                                        ; $62b8: $54
	sbc  l                                           ; $62b9: $9d
	ld   h, e                                        ; $62ba: $63
	dec  b                                           ; $62bb: $05
	jr   nz, jr_04e_633b                             ; $62bc: $20 $7d

	sbc  [hl]                                        ; $62be: $9e
	dec  c                                           ; $62bf: $0d
	ld   e, b                                        ; $62c0: $58
	adc  d                                           ; $62c1: $8a
	ld   d, [hl]                                     ; $62c2: $56
	halt                                             ; $62c3: $76
	ld   d, d                                        ; $62c4: $52
	ld   [hl], h                                     ; $62c5: $74
	cp   [hl]                                        ; $62c6: $be
	push af                                          ; $62c7: $f5
	ld   a, l                                        ; $62c8: $7d
	ld   a, b                                        ; $62c9: $78
	ld   d, d                                        ; $62ca: $52
	ld   e, c                                        ; $62cb: $59
	sub  a                                           ; $62cc: $97
	sbc  a                                           ; $62cd: $9f
	dec  c                                           ; $62ce: $0d
	ld   h, [hl]                                     ; $62cf: $66
	sub  c                                           ; $62d0: $91
	ld   d, b                                        ; $62d1: $50
	ld   a, e                                        ; $62d2: $7b
	sbc  a                                           ; $62d3: $9f
	dec  c                                           ; $62d4: $0d
	nop                                              ; $62d5: $00
	ld   a, [bc]                                     ; $62d6: $0a
	nop                                              ; $62d7: $00
	nop                                              ; $62d8: $00
	inc  e                                           ; $62d9: $1c
	dec  b                                           ; $62da: $05
	nop                                              ; $62db: $00
	nop                                              ; $62dc: $00
	ld   [bc], a                                     ; $62dd: $02
	ld   bc, $7196                                   ; $62de: $01 $96 $71
	sbc  [hl]                                        ; $62e1: $9e
	ld   [$7d00], sp                                 ; $62e2: $08 $00 $7d
	and  c                                           ; $62e5: $a1
	sbc  a                                           ; $62e6: $9f
	dec  c                                           ; $62e7: $0d
	ld   l, a                                        ; $62e8: $6f
	sub  l                                           ; $62e9: $95
	ld   d, h                                        ; $62ea: $54
	ld   [hl], a                                     ; $62eb: $77
	sub  [hl]                                        ; $62ec: $96
	ld   e, c                                        ; $62ed: $59
	ld   [hl], c                                     ; $62ee: $71
	ld   l, l                                        ; $62ef: $6d
	sbc  a                                           ; $62f0: $9f
	dec  c                                           ; $62f1: $0d
	nop                                              ; $62f2: $00
	ld   a, [bc]                                     ; $62f3: $0a
	ld   bc, $6590                                   ; $62f4: $01 $90 $65
	sbc  [hl]                                        ; $62f7: $9e
	inc  bc                                          ; $62f8: $03
	ld   l, a                                        ; $62f9: $6f
	ld   [bc], a                                     ; $62fa: $02
	xor  c                                           ; $62fb: $a9
	ld   e, d                                        ; $62fc: $5a
	ld   d, b                                        ; $62fd: $50
	ld   [hl], c                                     ; $62fe: $71
	ld   l, l                                        ; $62ff: $6d
	sub  a                                           ; $6300: $97
	dec  c                                           ; $6301: $0d
	inc  b                                           ; $6302: $04
	adc  a                                           ; $6303: $8f
	inc  b                                           ; $6304: $04
	ld   de, $7c8d                                   ; $6305: $11 $8d $7c
	ld   [bc], a                                     ; $6308: $02
	ld   a, [de]                                     ; $6309: $1a
	inc  bc                                          ; $630a: $03
	ld   l, e                                        ; $630b: $6b
	and  b                                           ; $630c: $a0
	ld   h, l                                        ; $630d: $65
	ld   [hl], h                                     ; $630e: $74
	dec  c                                           ; $630f: $0d
	sub  b                                           ; $6310: $90
	sub  a                                           ; $6311: $97
	ld   d, d                                        ; $6312: $52
	ld   l, l                                        ; $6313: $6d
	ld   d, d                                        ; $6314: $52
	ld   a, e                                        ; $6315: $7b
	and  c                                           ; $6316: $a1
	ld   e, a                                        ; $6317: $5f
	ld   [hl], a                                     ; $6318: $77
	rst  $38                                         ; $6319: $ff
	rst  $38                                         ; $631a: $ff
	dec  c                                           ; $631b: $0d
	nop                                              ; $631c: $00
	ld   a, [bc]                                     ; $631d: $0a
	add  hl, de                                      ; $631e: $19
	dec  b                                           ; $631f: $05
	ld   [bc], a                                     ; $6320: $02
	ld   [bc], a                                     ; $6321: $02
	ld   a, [de]                                     ; $6322: $1a
	inc  bc                                          ; $6323: $03
	ld   l, e                                        ; $6324: $6b
	and  b                                           ; $6325: $a0
	ld   h, a                                        ; $6326: $67
	sbc  c                                           ; $6327: $99
	nop                                              ; $6328: $00
	nop                                              ; $6329: $00
	ld   h, c                                        ; $632a: $61
	halt                                             ; $632b: $76
	sbc  l                                           ; $632c: $9d
	sbc  c                                           ; $632d: $99
	nop                                              ; $632e: $00
	ld   bc, $e707                                   ; $632f: $01 $07 $e7
	nop                                              ; $6332: $00
	ld   [bc], a                                     ; $6333: $02
	inc  bc                                          ; $6334: $03
	ld   bc, $2000                                   ; $6335: $01 $00 $20
	nop                                              ; $6338: $00
	rlca                                             ; $6339: $07
	ld   l, h                                        ; $633a: $6c

jr_04e_633b:
	nop                                              ; $633b: $00
	ld   [bc], a                                     ; $633c: $02
	inc  bc                                          ; $633d: $03
	ld   bc, $2001                                   ; $633e: $01 $01 $20
	nop                                              ; $6341: $00
	ld   b, $ad                                      ; $6342: $06 $ad
	nop                                              ; $6344: $00
	rrca                                             ; $6345: $0f
	nop                                              ; $6346: $00
	ld   bc, $6701                                   ; $6347: $01 $01 $67
	adc  l                                           ; $634a: $8d
	adc  h                                           ; $634b: $8c
	ld   l, c                                        ; $634c: $69
	and  c                                           ; $634d: $a1
	sbc  a                                           ; $634e: $9f
	dec  c                                           ; $634f: $0d
	ld   l, a                                        ; $6350: $6f
	sub  l                                           ; $6351: $95
	ld   [hl], c                                     ; $6352: $71
	halt                                             ; $6353: $76
	ld   [bc], a                                     ; $6354: $02
	and  l                                           ; $6355: $a5
	ld   a, l                                        ; $6356: $7d
	rst  $38                                         ; $6357: $ff
	rst  $38                                         ; $6358: $ff
	dec  c                                           ; $6359: $0d
	nop                                              ; $635a: $00
	ld   a, [bc]                                     ; $635b: $0a
	inc  e                                           ; $635c: $1c
	dec  b                                           ; $635d: $05
	ld   [bc], a                                     ; $635e: $02
	ld   [bc], a                                     ; $635f: $02
	dec  e                                           ; $6360: $1d
	ld   b, b                                        ; $6361: $40
	dec  d                                           ; $6362: $15
	inc  bc                                          ; $6363: $03
	dec  d                                           ; $6364: $15
	ld   bc, $2901                                   ; $6365: $01 $01 $29
	nop                                              ; $6368: $00
	ld   bc, $546b                                   ; $6369: $01 $6b $54
	ld   e, c                                        ; $636c: $59
	rst  $38                                         ; $636d: $ff
	rst  $38                                         ; $636e: $ff
	dec  c                                           ; $636f: $0d
	ld   h, a                                        ; $6370: $67
	adc  h                                           ; $6371: $8c
	and  c                                           ; $6372: $a1
	ld   a, b                                        ; $6373: $78
	sbc  [hl]                                        ; $6374: $9e
	inc  bc                                          ; $6375: $03
	dec  c                                           ; $6376: $0d
	ld   [bc], a                                     ; $6377: $02
	jp   $0d7c                                       ; $6378: $c3 $7c $0d


	ld   h, [hl]                                     ; $637b: $66
	sub  c                                           ; $637c: $91
	adc  h                                           ; $637d: $8c
	ld   h, l                                        ; $637e: $65
	ld   [hl], h                                     ; $637f: $74
	rst  $38                                         ; $6380: $ff
	rst  $38                                         ; $6381: $ff
	dec  c                                           ; $6382: $0d
	nop                                              ; $6383: $00
	ld   a, [bc]                                     ; $6384: $0a
	nop                                              ; $6385: $00
	inc  e                                           ; $6386: $1c
	dec  b                                           ; $6387: $05
	ld   [bc], a                                     ; $6388: $02
	ld   [bc], a                                     ; $6389: $02
	dec  e                                           ; $638a: $1d
	ld   b, b                                        ; $638b: $40
	dec  d                                           ; $638c: $15
	inc  bc                                          ; $638d: $03
	dec  d                                           ; $638e: $15
	ld   bc, $2901                                   ; $638f: $01 $01 $29
	nop                                              ; $6392: $00
	ld   bc, $9e50                                   ; $6393: $01 $50 $9e
	inc  b                                           ; $6396: $04
	ld   [hl], l                                     ; $6397: $75
	ld   h, l                                        ; $6398: $65
	ld   d, d                                        ; $6399: $52
	and  c                                           ; $639a: $a1
	sub  d                                           ; $639b: $92
	ld   [hl], c                                     ; $639c: $71
	ld   l, l                                        ; $639d: $6d
	sub  a                                           ; $639e: $97
	dec  c                                           ; $639f: $0d
	xor  c                                           ; $63a0: $a9
	xor  c                                           ; $63a1: $a9
	ld   a, e                                        ; $63a2: $7b
	and  c                                           ; $63a3: $a1
	ld   [hl], l                                     ; $63a4: $75
	sbc  a                                           ; $63a5: $9f
	dec  c                                           ; $63a6: $0d
	nop                                              ; $63a7: $00
	ld   a, [bc]                                     ; $63a8: $0a
	ld   bc, $8c67                                   ; $63a9: $01 $67 $8c
	and  c                                           ; $63ac: $a1
	ld   a, b                                        ; $63ad: $78
	sbc  [hl]                                        ; $63ae: $9e
	inc  bc                                          ; $63af: $03
	dec  c                                           ; $63b0: $0d
	ld   [bc], a                                     ; $63b1: $02
	jp   $0d7c                                       ; $63b2: $c3 $7c $0d


	ld   h, [hl]                                     ; $63b5: $66
	sub  c                                           ; $63b6: $91
	adc  h                                           ; $63b7: $8c
	ld   h, l                                        ; $63b8: $65
	ld   [hl], h                                     ; $63b9: $74
	rst  $38                                         ; $63ba: $ff
	rst  $38                                         ; $63bb: $ff
	dec  c                                           ; $63bc: $0d
	nop                                              ; $63bd: $00
	ld   a, [bc]                                     ; $63be: $0a
	nop                                              ; $63bf: $00
	rrca                                             ; $63c0: $0f
	nop                                              ; $63c1: $00
	ld   bc, $5201                                   ; $63c2: $01 $01 $52
	ld   d, d                                        ; $63c5: $52
	ld   [hl], l                                     ; $63c6: $75
	ld   h, a                                        ; $63c7: $67
	sub  [hl]                                        ; $63c8: $96
	sbc  a                                           ; $63c9: $9f
	dec  c                                           ; $63ca: $0d
	inc  b                                           ; $63cb: $04
	ld   l, l                                        ; $63cc: $6d
	ld   [hl], l                                     ; $63cd: $75
	ld   e, b                                        ; $63ce: $58
	inc  b                                           ; $63cf: $04
	db   $ec                                         ; $63d0: $ec
	ld   a, c                                        ; $63d1: $79
	dec  b                                           ; $63d2: $05
	ld   d, $74                                      ; $63d3: $16 $74
	sbc  c                                           ; $63d5: $99
	ld   a, b                                        ; $63d6: $78
	sub  a                                           ; $63d7: $97
	rst  $38                                         ; $63d8: $ff
	rst  $38                                         ; $63d9: $ff
	dec  c                                           ; $63da: $0d
	nop                                              ; $63db: $00
	ld   a, [bc]                                     ; $63dc: $0a
	inc  e                                           ; $63dd: $1c
	dec  b                                           ; $63de: $05
	ld   bc, $0101                                   ; $63df: $01 $01 $01
	ld   e, b                                        ; $63e2: $58
	ld   e, b                                        ; $63e3: $58
	ld   e, e                                        ; $63e4: $5b
	ld   a, c                                        ; $63e5: $79
	ld   d, b                                        ; $63e6: $50
	sbc  b                                           ; $63e7: $98
	ld   e, d                                        ; $63e8: $5a
	halt                                             ; $63e9: $76
	ld   d, h                                        ; $63ea: $54
	ld   a, b                                        ; $63eb: $78
	sbc  a                                           ; $63ec: $9f
	dec  c                                           ; $63ed: $0d
	nop                                              ; $63ee: $00
	ld   a, [bc]                                     ; $63ef: $0a
	inc  e                                           ; $63f0: $1c
	dec  b                                           ; $63f1: $05
	nop                                              ; $63f2: $00
	nop                                              ; $63f3: $00
	ld   bc, $9166                                   ; $63f4: $01 $66 $91
	ld   d, b                                        ; $63f7: $50
	sbc  [hl]                                        ; $63f8: $9e
	ld   [$7d00], sp                                 ; $63f9: $08 $00 $7d
	and  c                                           ; $63fc: $a1
	ld   a, l                                        ; $63fd: $7d
	dec  c                                           ; $63fe: $0d
	inc  b                                           ; $63ff: $04
	ld   hl, sp+$02                                  ; $6400: $f8 $02
	add  a                                           ; $6402: $87
	inc  b                                           ; $6403: $04
	or   a                                           ; $6404: $b7
	inc  bc                                          ; $6405: $03
	add  d                                           ; $6406: $82
	ld   a, h                                        ; $6407: $7c
	inc  b                                           ; $6408: $04
	db   $ec                                         ; $6409: $ec
	and  b                                           ; $640a: $a0
	ld   e, b                                        ; $640b: $58
	ld   [bc], a                                     ; $640c: $02
	add  b                                           ; $640d: $80
	ld   d, d                                        ; $640e: $52
	ld   h, a                                        ; $640f: $67
	sbc  c                                           ; $6410: $99
	sbc  l                                           ; $6411: $9d
	sbc  a                                           ; $6412: $9f
	dec  c                                           ; $6413: $0d
	nop                                              ; $6414: $00
	ld   a, [bc]                                     ; $6415: $0a
	ld   bc, $f804                                   ; $6416: $01 $04 $f8
	ld   [bc], a                                     ; $6419: $02
	add  a                                           ; $641a: $87
	inc  b                                           ; $641b: $04
	or   a                                           ; $641c: $b7
	inc  bc                                          ; $641d: $03
	add  d                                           ; $641e: $82
	ld   a, h                                        ; $641f: $7c
	inc  bc                                          ; $6420: $03
	ld   l, b                                        ; $6421: $68
	ld   a, h                                        ; $6422: $7c
	inc  b                                           ; $6423: $04
	inc  c                                           ; $6424: $0c
	dec  b                                           ; $6425: $05
	push de                                          ; $6426: $d5
	and  b                                           ; $6427: $a0
	dec  c                                           ; $6428: $0d
	ld   e, b                                        ; $6429: $58
	adc  d                                           ; $642a: $8a
	ld   d, [hl]                                     ; $642b: $56
	sbc  c                                           ; $642c: $99
	and  c                                           ; $642d: $a1
	sub  d                                           ; $642e: $92
	ld   [hl], l                                     ; $642f: $75
	sbc  a                                           ; $6430: $9f
	dec  c                                           ; $6431: $0d
	nop                                              ; $6432: $00
	ld   a, [bc]                                     ; $6433: $0a
	ld   bc, $d6fd                                   ; $6434: $01 $fd $d6
	sub  $d6                                         ; $6437: $d6 $d6
	sbc  a                                           ; $6439: $9f
	ld   a, [bc]                                     ; $643a: $0a
	ld   [bc], a                                     ; $643b: $02
	or   [hl]                                        ; $643c: $b6
	db   $ed                                         ; $643d: $ed
	ld   h, d                                        ; $643e: $62
	halt                                             ; $643f: $76
	ld   e, e                                        ; $6440: $5b
	ld   a, c                                        ; $6441: $79
	ld   a, [bc]                                     ; $6442: $0a
	inc  bc                                          ; $6443: $03
	dec  c                                           ; $6444: $0d
	db   $10                                         ; $6445: $10
	sub  d                                           ; $6446: $92
	sub  a                                           ; $6447: $97
	sbc  d                                           ; $6448: $9a
	sbc  c                                           ; $6449: $99
	inc  bc                                          ; $644a: $03
	ret  z                                           ; $644b: $c8

	ld   [hl], l                                     ; $644c: $75
	ld   a, l                                        ; $644d: $7d
	ld   a, b                                        ; $644e: $78
	ld   d, d                                        ; $644f: $52
	sbc  l                                           ; $6450: $9d
	cp   $0d                                         ; $6451: $fe $0d
	nop                                              ; $6453: $00
	ld   a, [bc]                                     ; $6454: $0a
	ld   bc, $03fd                                   ; $6455: $01 $fd $03
	ld   l, b                                        ; $6458: $68
	ld   a, l                                        ; $6459: $7d
	ld   e, b                                        ; $645a: $58
	inc  bc                                          ; $645b: $03
	ld   c, a                                        ; $645c: $4f
	ld   e, c                                        ; $645d: $59
	sbc  a                                           ; $645e: $9f
	ld   a, [bc]                                     ; $645f: $0a
	ld   [bc], a                                     ; $6460: $02
	xor  h                                           ; $6461: $ac
	call nz, $83d2                                   ; $6462: $c4 $d2 $83
	ld   l, d                                        ; $6465: $6a
	ld   d, d                                        ; $6466: $52
	ld   e, d                                        ; $6467: $5a
	ld   a, [bc]                                     ; $6468: $0a
	inc  bc                                          ; $6469: $03
	dec  c                                           ; $646a: $0d
	db   $10                                         ; $646b: $10
	ld   h, c                                        ; $646c: $61
	ld   a, h                                        ; $646d: $7c
	inc  bc                                          ; $646e: $03
	ret  z                                           ; $646f: $c8

	ld   a, c                                        ; $6470: $79
	inc  bc                                          ; $6471: $03
	ld   c, [hl]                                     ; $6472: $4e
	ld   [hl], h                                     ; $6473: $74
	sbc  c                                           ; $6474: $99
	halt                                             ; $6475: $76
	ld   [hl], l                                     ; $6476: $75
	sub  b                                           ; $6477: $90
	dec  c                                           ; $6478: $0d
	db   $10                                         ; $6479: $10
	dec  b                                           ; $647a: $05
	pop  de                                          ; $647b: $d1
	ld   [hl], c                                     ; $647c: $71
	ld   [hl], h                                     ; $647d: $74
	ld   d, d                                        ; $647e: $52
	sbc  c                                           ; $647f: $99
	ld   a, h                                        ; $6480: $7c
	ld   e, c                                        ; $6481: $59
	cp   $0d                                         ; $6482: $fe $0d
	nop                                              ; $6484: $00
	ld   a, [bc]                                     ; $6485: $0a
	ld   bc, $6bfd                                   ; $6486: $01 $fd $6b
	and  c                                           ; $6489: $a1
	ld   a, b                                        ; $648a: $78
	ld   a, c                                        ; $648b: $79
	ld   h, c                                        ; $648c: $61
	ld   a, h                                        ; $648d: $7c
	ld   a, [bc]                                     ; $648e: $0a
	ld   [bc], a                                     ; $648f: $02
	dec  b                                           ; $6490: $05
	ld   d, a                                        ; $6491: $57
	inc  bc                                          ; $6492: $03
	ld   b, h                                        ; $6493: $44
	ld   e, d                                        ; $6494: $5a
	dec  c                                           ; $6495: $0d
	db   $10                                         ; $6496: $10
	inc  b                                           ; $6497: $04
	ld   c, $03                                      ; $6498: $0e $03
	dec  de                                          ; $649a: $1b
	ld   a, b                                        ; $649b: $78
	ld   a, h                                        ; $649c: $7c
	ld   e, c                                        ; $649d: $59
	ld   sp, hl                                      ; $649e: $f9
	ld   a, [bc]                                     ; $649f: $0a
	inc  bc                                          ; $64a0: $03
	db   $10                                         ; $64a1: $10
	ld   h, c                                        ; $64a2: $61
	ld   a, h                                        ; $64a3: $7c
	dec  b                                           ; $64a4: $05
	ld   d, a                                        ; $64a5: $57
	inc  bc                                          ; $64a6: $03
	ld   b, h                                        ; $64a7: $44
	dec  c                                           ; $64a8: $0d
	db   $10                                         ; $64a9: $10
	ld   h, e                                        ; $64aa: $63
	ld   l, h                                        ; $64ab: $6c
	sub  d                                           ; $64ac: $92
	ld   d, h                                        ; $64ad: $54
	adc  h                                           ; $64ae: $8c
	ld   d, d                                        ; $64af: $52
	and  c                                           ; $64b0: $a1
	ld   l, [hl]                                     ; $64b1: $6e
	sbc  e                                           ; $64b2: $9b
	ld   d, h                                        ; $64b3: $54
	ld   a, b                                        ; $64b4: $78
	cp   $0d                                         ; $64b5: $fe $0d
	nop                                              ; $64b7: $00
	ld   a, [bc]                                     ; $64b8: $0a
	inc  e                                           ; $64b9: $1c
	dec  b                                           ; $64ba: $05
	ld   bc, $0101                                   ; $64bb: $01 $01 $01
	ld   e, b                                        ; $64be: $58
	adc  d                                           ; $64bf: $8a
	ld   d, [hl]                                     ; $64c0: $56
	ld   l, l                                        ; $64c1: $6d
	ld   sp, hl                                      ; $64c2: $f9
	dec  c                                           ; $64c3: $0d
	adc  c                                           ; $64c4: $89
	ld   a, b                                        ; $64c5: $78
	sbc  [hl]                                        ; $64c6: $9e
	ld   d, d                                        ; $64c7: $52
	ld   e, l                                        ; $64c8: $5d
	ld   [hl], l                                     ; $64c9: $75
	rst  $38                                         ; $64ca: $ff
	rst  $38                                         ; $64cb: $ff
	dec  c                                           ; $64cc: $0d
	nop                                              ; $64cd: $00
	ld   a, [bc]                                     ; $64ce: $0a
	inc  e                                           ; $64cf: $1c
	dec  b                                           ; $64d0: $05
	rlca                                             ; $64d1: $07
	rlca                                             ; $64d2: $07
	ld   bc, $cca3                                   ; $64d3: $01 $a3 $cc
	xor  [hl]                                        ; $64d6: $ae
	ld   a, [$0210]                                  ; $64d7: $fa $10 $02
	ld   a, h                                        ; $64da: $7c
	ld   [bc], a                                     ; $64db: $02
	or   [hl]                                        ; $64dc: $b6
	ld   a, h                                        ; $64dd: $7c
	and  e                                           ; $64de: $a3
	call z, $faae                                    ; $64df: $cc $ae $fa
	dec  c                                           ; $64e2: $0d
	inc  b                                           ; $64e3: $04
	ld   c, $03                                      ; $64e4: $0e $03
	sbc  l                                           ; $64e6: $9d
	inc  b                                           ; $64e7: $04
	and  [hl]                                        ; $64e8: $a6
	ld   e, c                                        ; $64e9: $59
	ld   a, [$0dfa]                                  ; $64ea: $fa $fa $0d
	or   b                                           ; $64ed: $b0
	call nz, $fbbe                                   ; $64ee: $c4 $be $fb
	sbc  [hl]                                        ; $64f1: $9e
	inc  b                                           ; $64f2: $04
	ld   hl, sp+$02                                  ; $64f3: $f8 $02
	add  a                                           ; $64f5: $87
	inc  b                                           ; $64f6: $04
	or   a                                           ; $64f7: $b7
	inc  bc                                          ; $64f8: $03
	add  d                                           ; $64f9: $82
	adc  a                                           ; $64fa: $8f
	rst  $38                                         ; $64fb: $ff
	rst  $38                                         ; $64fc: $ff
	dec  c                                           ; $64fd: $0d
	nop                                              ; $64fe: $00
	ld   a, [bc]                                     ; $64ff: $0a
	rrca                                             ; $6500: $0f
	nop                                              ; $6501: $00
	ld   bc, $d601                                   ; $6502: $01 $01 $d6
	sub  $d6                                         ; $6505: $d6 $d6
	rst  $38                                         ; $6507: $ff
	rst  $38                                         ; $6508: $ff
	dec  c                                           ; $6509: $0d
	nop                                              ; $650a: $00
	ld   a, [bc]                                     ; $650b: $0a
	add  hl, de                                      ; $650c: $19
	dec  b                                           ; $650d: $05
	inc  bc                                          ; $650e: $03
	or   [hl]                                        ; $650f: $b6
	db   $ed                                         ; $6510: $ed
	ld   h, d                                        ; $6511: $62
	halt                                             ; $6512: $76
	ld   e, e                                        ; $6513: $5b
	ld   a, c                                        ; $6514: $79
	rst  $38                                         ; $6515: $ff
	rst  $38                                         ; $6516: $ff
	nop                                              ; $6517: $00
	nop                                              ; $6518: $00
	and  l                                           ; $6519: $a5
	call Call_04e_7662                               ; $651a: $cd $62 $76
	ld   e, e                                        ; $651d: $5b
	ld   a, c                                        ; $651e: $79
	rst  $38                                         ; $651f: $ff
	rst  $38                                         ; $6520: $ff
	nop                                              ; $6521: $00
	ld   bc, $b9ae                                   ; $6522: $01 $ae $b9
	ld   h, d                                        ; $6525: $62
	halt                                             ; $6526: $76
	ld   e, e                                        ; $6527: $5b
	ld   a, c                                        ; $6528: $79
	rst  $38                                         ; $6529: $ff
	rst  $38                                         ; $652a: $ff
	nop                                              ; $652b: $00
	ld   [bc], a                                     ; $652c: $02
	rlca                                             ; $652d: $07
	ld   [hl], d                                     ; $652e: $72
	ld   [bc], a                                     ; $652f: $02
	ld   [bc], a                                     ; $6530: $02
	inc  bc                                          ; $6531: $03
	ld   bc, $2000                                   ; $6532: $01 $00 $20
	nop                                              ; $6535: $00
	rlca                                             ; $6536: $07
	sbc  b                                           ; $6537: $98
	ld   [bc], a                                     ; $6538: $02
	ld   [bc], a                                     ; $6539: $02
	inc  bc                                          ; $653a: $03
	ld   bc, $2001                                   ; $653b: $01 $01 $20
	nop                                              ; $653e: $00
	rlca                                             ; $653f: $07
	or   l                                           ; $6540: $b5
	ld   [bc], a                                     ; $6541: $02
	ld   [bc], a                                     ; $6542: $02
	inc  bc                                          ; $6543: $03
	ld   bc, $2002                                   ; $6544: $01 $02 $20
	nop                                              ; $6547: $00
	ld   b, $ea                                      ; $6548: $06 $ea
	inc  b                                           ; $654a: $04
	rrca                                             ; $654b: $0f
	nop                                              ; $654c: $00
	ld   bc, $b601                                   ; $654d: $01 $01 $b6
	db   $ed                                         ; $6550: $ed
	ld   h, d                                        ; $6551: $62
	halt                                             ; $6552: $76
	ld   e, e                                        ; $6553: $5b
	ld   a, c                                        ; $6554: $79
	dec  c                                           ; $6555: $0d
	sub  d                                           ; $6556: $92
	sub  a                                           ; $6557: $97
	sbc  d                                           ; $6558: $9a
	sbc  c                                           ; $6559: $99
	inc  bc                                          ; $655a: $03

Jump_04e_655b:
	ret  z                                           ; $655b: $c8

	ld   [hl], l                                     ; $655c: $75
	ld   a, l                                        ; $655d: $7d
	ld   a, b                                        ; $655e: $78
	ld   d, d                                        ; $655f: $52
	sbc  l                                           ; $6560: $9d
	sbc  a                                           ; $6561: $9f
	dec  c                                           ; $6562: $0d
	nop                                              ; $6563: $00
	ld   a, [bc]                                     ; $6564: $0a
	dec  b                                           ; $6565: $05
	ld   b, b                                        ; $6566: $40
	rst  $38                                         ; $6567: $ff
	inc  bc                                          ; $6568: $03
	rst  $38                                         ; $6569: $ff
	ld   bc, $2801                                   ; $656a: $01 $01 $28
	nop                                              ; $656d: $00
	ld   b, $d2                                      ; $656e: $06 $d2
	ld   [bc], a                                     ; $6570: $02
	rrca                                             ; $6571: $0f
	nop                                              ; $6572: $00
	ld   bc, $a501                                   ; $6573: $01 $01 $a5
	call Call_04e_7662                               ; $6576: $cd $62 $76
	ld   e, e                                        ; $6579: $5b
	ld   a, c                                        ; $657a: $79
	dec  c                                           ; $657b: $0d
	sub  d                                           ; $657c: $92
	sub  a                                           ; $657d: $97
	sbc  d                                           ; $657e: $9a
	sbc  c                                           ; $657f: $99
	inc  bc                                          ; $6580: $03
	ret  z                                           ; $6581: $c8

	ld   [hl], l                                     ; $6582: $75
	ld   a, l                                        ; $6583: $7d
	ld   a, b                                        ; $6584: $78
	ld   d, d                                        ; $6585: $52
	sbc  l                                           ; $6586: $9d
	sbc  a                                           ; $6587: $9f
	dec  c                                           ; $6588: $0d
	nop                                              ; $6589: $00
	ld   a, [bc]                                     ; $658a: $0a
	ld   b, $d2                                      ; $658b: $06 $d2
	ld   [bc], a                                     ; $658d: $02
	rrca                                             ; $658e: $0f
	nop                                              ; $658f: $00
	ld   bc, $ae01                                   ; $6590: $01 $01 $ae
	cp   c                                           ; $6593: $b9
	ld   h, d                                        ; $6594: $62
	halt                                             ; $6595: $76
	ld   e, e                                        ; $6596: $5b
	ld   a, c                                        ; $6597: $79
	dec  c                                           ; $6598: $0d
	sub  d                                           ; $6599: $92
	sub  a                                           ; $659a: $97
	sbc  d                                           ; $659b: $9a
	sbc  c                                           ; $659c: $99
	inc  bc                                          ; $659d: $03
	ret  z                                           ; $659e: $c8

	ld   [hl], l                                     ; $659f: $75
	ld   a, l                                        ; $65a0: $7d
	ld   a, b                                        ; $65a1: $78
	ld   d, d                                        ; $65a2: $52
	sbc  l                                           ; $65a3: $9d
	sbc  a                                           ; $65a4: $9f
	dec  c                                           ; $65a5: $0d
	nop                                              ; $65a6: $00
	ld   a, [bc]                                     ; $65a7: $0a
	ld   b, $d2                                      ; $65a8: $06 $d2
	ld   [bc], a                                     ; $65aa: $02
	inc  e                                           ; $65ab: $1c
	dec  b                                           ; $65ac: $05
	rlca                                             ; $65ad: $07
	rlca                                             ; $65ae: $07
	ld   bc, $715d                                   ; $65af: $01 $5d $71
	ld   l, e                                        ; $65b2: $6b
	ei                                               ; $65b3: $fb
	sbc  [hl]                                        ; $65b4: $9e
	xor  e                                           ; $65b5: $ab
	xor  $5a                                         ; $65b6: $ee $5a
	sub  d                                           ; $65b8: $92
	ld   [hl], c                                     ; $65b9: $71
	ld   [hl], d                                     ; $65ba: $72
	ld   e, a                                        ; $65bb: $5f
	ld   [hl], h                                     ; $65bc: $74
	dec  c                                           ; $65bd: $0d
	sub  d                                           ; $65be: $92
	sbc  c                                           ; $65bf: $99
	ld   l, d                                        ; $65c0: $6a
	ld   a, [$000d]                                  ; $65c1: $fa $0d $00
	ld   a, [bc]                                     ; $65c4: $0a
	rrca                                             ; $65c5: $0f
	nop                                              ; $65c6: $00
	ld   bc, $0301                                   ; $65c7: $01 $01 $03
	ld   l, b                                        ; $65ca: $68
	ld   a, l                                        ; $65cb: $7d
	ld   e, b                                        ; $65cc: $58
	inc  bc                                          ; $65cd: $03
	ld   c, a                                        ; $65ce: $4f
	ld   e, c                                        ; $65cf: $59
	sbc  a                                           ; $65d0: $9f
	dec  c                                           ; $65d1: $0d
	nop                                              ; $65d2: $00
	ld   a, [bc]                                     ; $65d3: $0a
	add  hl, de                                      ; $65d4: $19
	dec  b                                           ; $65d5: $05
	inc  bc                                          ; $65d6: $03
	xor  h                                           ; $65d7: $ac
	call nz, $83d2                                   ; $65d8: $c4 $d2 $83
	ld   l, d                                        ; $65db: $6a
	ld   d, d                                        ; $65dc: $52
	ld   e, d                                        ; $65dd: $5a
	rst  $38                                         ; $65de: $ff
	rst  $38                                         ; $65df: $ff
	nop                                              ; $65e0: $00
	nop                                              ; $65e1: $00
	xor  h                                           ; $65e2: $ac
	xor  c                                           ; $65e3: $a9
	db   $ed                                         ; $65e4: $ed
	add  e                                           ; $65e5: $83
	ld   l, d                                        ; $65e6: $6a
	ld   d, d                                        ; $65e7: $52
	ld   e, d                                        ; $65e8: $5a
	rst  $38                                         ; $65e9: $ff
	rst  $38                                         ; $65ea: $ff
	nop                                              ; $65eb: $00
	ld   bc, $c0d7                                   ; $65ec: $01 $d7 $c0
	add  e                                           ; $65ef: $83
	ld   l, d                                        ; $65f0: $6a
	ld   d, d                                        ; $65f1: $52
	ld   e, d                                        ; $65f2: $5a
	rst  $38                                         ; $65f3: $ff
	rst  $38                                         ; $65f4: $ff
	nop                                              ; $65f5: $00
	ld   [bc], a                                     ; $65f6: $02
	rlca                                             ; $65f7: $07
	inc  a                                           ; $65f8: $3c
	inc  bc                                          ; $65f9: $03
	ld   [bc], a                                     ; $65fa: $02
	inc  bc                                          ; $65fb: $03
	ld   bc, $2000                                   ; $65fc: $01 $00 $20
	nop                                              ; $65ff: $00
	rlca                                             ; $6600: $07
	ld   l, a                                        ; $6601: $6f
	inc  bc                                          ; $6602: $03
	ld   [bc], a                                     ; $6603: $02
	inc  bc                                          ; $6604: $03
	ld   bc, $2001                                   ; $6605: $01 $01 $20
	nop                                              ; $6608: $00
	rlca                                             ; $6609: $07
	sub  a                                           ; $660a: $97
	inc  bc                                          ; $660b: $03
	ld   [bc], a                                     ; $660c: $02
	inc  bc                                          ; $660d: $03
	ld   bc, $2002                                   ; $660e: $01 $02 $20
	nop                                              ; $6611: $00
	ld   b, $ea                                      ; $6612: $06 $ea
	inc  b                                           ; $6614: $04
	rrca                                             ; $6615: $0f
	nop                                              ; $6616: $00
	ld   bc, $ac01                                   ; $6617: $01 $01 $ac
	call nz, $83d2                                   ; $661a: $c4 $d2 $83
	ld   l, d                                        ; $661d: $6a
	ld   d, d                                        ; $661e: $52
	ld   e, d                                        ; $661f: $5a
	dec  c                                           ; $6620: $0d
	ld   h, c                                        ; $6621: $61
	ld   a, h                                        ; $6622: $7c
	inc  bc                                          ; $6623: $03
	ret  z                                           ; $6624: $c8

	ld   a, c                                        ; $6625: $79
	inc  bc                                          ; $6626: $03
	ld   c, [hl]                                     ; $6627: $4e
	ld   [hl], h                                     ; $6628: $74
	sbc  c                                           ; $6629: $99
	halt                                             ; $662a: $76
	ld   [hl], l                                     ; $662b: $75
	sub  b                                           ; $662c: $90
	dec  c                                           ; $662d: $0d
	nop                                              ; $662e: $00
	dec  b                                           ; $662f: $05
	ld   b, b                                        ; $6630: $40
	rst  $38                                         ; $6631: $ff
	inc  bc                                          ; $6632: $03
	rst  $38                                         ; $6633: $ff
	ld   bc, $2801                                   ; $6634: $01 $01 $28
	nop                                              ; $6637: $00
	ld   bc, $d105                                   ; $6638: $01 $05 $d1
	ld   [hl], c                                     ; $663b: $71
	ld   [hl], h                                     ; $663c: $74
	ld   d, d                                        ; $663d: $52
	sbc  c                                           ; $663e: $99
	ld   a, h                                        ; $663f: $7c
	ld   e, c                                        ; $6640: $59
	sbc  a                                           ; $6641: $9f
	dec  c                                           ; $6642: $0d
	nop                                              ; $6643: $00
	ld   a, [bc]                                     ; $6644: $0a
	ld   b, $be                                      ; $6645: $06 $be
	inc  bc                                          ; $6647: $03
	rrca                                             ; $6648: $0f
	nop                                              ; $6649: $00
	ld   bc, $ac01                                   ; $664a: $01 $01 $ac
	xor  c                                           ; $664d: $a9
	db   $ed                                         ; $664e: $ed
	add  e                                           ; $664f: $83
	ld   l, d                                        ; $6650: $6a
	ld   d, d                                        ; $6651: $52
	ld   e, d                                        ; $6652: $5a
	dec  c                                           ; $6653: $0d
	ld   h, c                                        ; $6654: $61
	ld   a, h                                        ; $6655: $7c
	inc  bc                                          ; $6656: $03
	ret  z                                           ; $6657: $c8

	ld   a, c                                        ; $6658: $79
	inc  bc                                          ; $6659: $03
	ld   c, [hl]                                     ; $665a: $4e
	ld   [hl], h                                     ; $665b: $74
	sbc  c                                           ; $665c: $99
	halt                                             ; $665d: $76
	ld   [hl], l                                     ; $665e: $75
	sub  b                                           ; $665f: $90
	dec  c                                           ; $6660: $0d
	dec  b                                           ; $6661: $05
	pop  de                                          ; $6662: $d1
	ld   [hl], c                                     ; $6663: $71
	ld   [hl], h                                     ; $6664: $74
	ld   d, d                                        ; $6665: $52
	sbc  c                                           ; $6666: $99
	ld   a, h                                        ; $6667: $7c
	ld   e, c                                        ; $6668: $59
	sbc  a                                           ; $6669: $9f
	dec  c                                           ; $666a: $0d
	nop                                              ; $666b: $00
	ld   a, [bc]                                     ; $666c: $0a
	ld   b, $be                                      ; $666d: $06 $be
	inc  bc                                          ; $666f: $03
	rrca                                             ; $6670: $0f
	nop                                              ; $6671: $00
	ld   bc, $d701                                   ; $6672: $01 $01 $d7
	ret  nz                                          ; $6675: $c0

	add  e                                           ; $6676: $83
	ld   l, d                                        ; $6677: $6a
	ld   d, d                                        ; $6678: $52
	ld   e, d                                        ; $6679: $5a
	dec  c                                           ; $667a: $0d
	ld   h, c                                        ; $667b: $61
	ld   a, h                                        ; $667c: $7c
	inc  bc                                          ; $667d: $03
	ret  z                                           ; $667e: $c8

	ld   a, c                                        ; $667f: $79
	inc  bc                                          ; $6680: $03
	ld   c, [hl]                                     ; $6681: $4e
	ld   [hl], h                                     ; $6682: $74
	sbc  c                                           ; $6683: $99
	halt                                             ; $6684: $76
	ld   [hl], l                                     ; $6685: $75
	sub  b                                           ; $6686: $90
	dec  c                                           ; $6687: $0d
	dec  b                                           ; $6688: $05
	pop  de                                          ; $6689: $d1
	ld   [hl], c                                     ; $668a: $71
	ld   [hl], h                                     ; $668b: $74
	ld   d, d                                        ; $668c: $52
	sbc  c                                           ; $668d: $99
	ld   a, h                                        ; $668e: $7c
	ld   e, c                                        ; $668f: $59
	sbc  a                                           ; $6690: $9f
	dec  c                                           ; $6691: $0d
	nop                                              ; $6692: $00
	ld   a, [bc]                                     ; $6693: $0a
	ld   b, $be                                      ; $6694: $06 $be
	inc  bc                                          ; $6696: $03
	inc  e                                           ; $6697: $1c
	dec  b                                           ; $6698: $05
	rlca                                             ; $6699: $07
	rlca                                             ; $669a: $07
	ld   bc, $7978                                   ; $669b: $01 $78 $79
	ld   e, b                                        ; $669e: $58
	ei                                               ; $669f: $fb
	ei                                               ; $66a0: $fb
	ld   [hl], c                                     ; $66a1: $71
	ld   a, [$580d]                                  ; $66a2: $fa $0d $58
	ld   [hl], c                                     ; $66a5: $71
	ld   h, l                                        ; $66a6: $65
	sub  l                                           ; $66a7: $95
	ld   d, h                                        ; $66a8: $54
	inc  bc                                          ; $66a9: $03
	sbc  b                                           ; $66aa: $98
	ld   a, l                                        ; $66ab: $7d
	xor  e                                           ; $66ac: $ab
	xor  $5a                                         ; $66ad: $ee $5a
	inc  bc                                          ; $66af: $03
	sub  e                                           ; $66b0: $93
	sbc  c                                           ; $66b1: $99
	ld   a, [$000d]                                  ; $66b2: $fa $0d $00
	ld   a, [bc]                                     ; $66b5: $0a
	rrca                                             ; $66b6: $0f
	nop                                              ; $66b7: $00
	ld   bc, $6b01                                   ; $66b8: $01 $01 $6b
	and  c                                           ; $66bb: $a1
	ld   a, b                                        ; $66bc: $78
	ld   a, c                                        ; $66bd: $79
	ld   h, c                                        ; $66be: $61
	ld   a, h                                        ; $66bf: $7c
	rst  $38                                         ; $66c0: $ff
	rst  $38                                         ; $66c1: $ff
	dec  c                                           ; $66c2: $0d
	nop                                              ; $66c3: $00
	ld   a, [bc]                                     ; $66c4: $0a
	add  hl, de                                      ; $66c5: $19
	dec  b                                           ; $66c6: $05
	inc  bc                                          ; $66c7: $03
	dec  b                                           ; $66c8: $05
	ld   d, a                                        ; $66c9: $57
	inc  bc                                          ; $66ca: $03
	ld   b, h                                        ; $66cb: $44
	ld   e, d                                        ; $66cc: $5a
	inc  b                                           ; $66cd: $04
	ld   c, $03                                      ; $66ce: $0e $03
	dec  de                                          ; $66d0: $1b
	ld   a, b                                        ; $66d1: $78
	ld   a, h                                        ; $66d2: $7c
	ld   e, c                                        ; $66d3: $59
	rst  $38                                         ; $66d4: $ff
	rst  $38                                         ; $66d5: $ff
	nop                                              ; $66d6: $00
	nop                                              ; $66d7: $00
	inc  bc                                          ; $66d8: $03
	ld   l, [hl]                                     ; $66d9: $6e
	inc  b                                           ; $66da: $04
	ld   e, c                                        ; $66db: $59
	ld   e, d                                        ; $66dc: $5a
	inc  b                                           ; $66dd: $04
	ld   c, $03                                      ; $66de: $0e $03
	dec  de                                          ; $66e0: $1b
	ld   a, b                                        ; $66e1: $78
	ld   a, h                                        ; $66e2: $7c
	ld   e, c                                        ; $66e3: $59
	rst  $38                                         ; $66e4: $ff
	rst  $38                                         ; $66e5: $ff
	nop                                              ; $66e6: $00
	ld   bc, $9203                                   ; $66e7: $01 $03 $92
	inc  b                                           ; $66ea: $04
	ld   l, $5a                                      ; $66eb: $2e $5a
	inc  b                                           ; $66ed: $04
	ld   c, $03                                      ; $66ee: $0e $03
	dec  de                                          ; $66f0: $1b
	ld   a, b                                        ; $66f1: $78
	ld   a, h                                        ; $66f2: $7c
	ld   e, c                                        ; $66f3: $59
	rst  $38                                         ; $66f4: $ff
	rst  $38                                         ; $66f5: $ff
	nop                                              ; $66f6: $00
	ld   [bc], a                                     ; $66f7: $02
	rlca                                             ; $66f8: $07
	dec  a                                           ; $66f9: $3d
	inc  b                                           ; $66fa: $04
	ld   [bc], a                                     ; $66fb: $02
	inc  bc                                          ; $66fc: $03
	ld   bc, $2000                                   ; $66fd: $01 $00 $20
	nop                                              ; $6700: $00
	rlca                                             ; $6701: $07
	ld   [hl], h                                     ; $6702: $74
	inc  b                                           ; $6703: $04
	ld   [bc], a                                     ; $6704: $02
	inc  bc                                          ; $6705: $03
	ld   bc, $2001                                   ; $6706: $01 $01 $20
	nop                                              ; $6709: $00
	rlca                                             ; $670a: $07
	and  b                                           ; $670b: $a0
	inc  b                                           ; $670c: $04
	ld   [bc], a                                     ; $670d: $02
	inc  bc                                          ; $670e: $03
	ld   bc, $2002                                   ; $670f: $01 $02 $20
	nop                                              ; $6712: $00
	ld   b, $ea                                      ; $6713: $06 $ea
	inc  b                                           ; $6715: $04
	rrca                                             ; $6716: $0f
	nop                                              ; $6717: $00
	ld   bc, $0501                                   ; $6718: $01 $01 $05
	ld   d, a                                        ; $671b: $57
	inc  bc                                          ; $671c: $03
	ld   b, h                                        ; $671d: $44
	ld   e, d                                        ; $671e: $5a
	inc  b                                           ; $671f: $04
	ld   c, $03                                      ; $6720: $0e $03
	dec  de                                          ; $6722: $1b
	ld   a, b                                        ; $6723: $78
	ld   a, h                                        ; $6724: $7c
	ld   e, c                                        ; $6725: $59
	rst  $38                                         ; $6726: $ff
	rst  $38                                         ; $6727: $ff
	dec  c                                           ; $6728: $0d
	ld   h, c                                        ; $6729: $61
	ld   a, h                                        ; $672a: $7c
	dec  b                                           ; $672b: $05
	ld   d, a                                        ; $672c: $57
	inc  bc                                          ; $672d: $03
	ld   b, h                                        ; $672e: $44
	ld   h, e                                        ; $672f: $63
	ld   l, h                                        ; $6730: $6c
	sub  d                                           ; $6731: $92
	ld   d, h                                        ; $6732: $54
	adc  h                                           ; $6733: $8c
	ld   d, d                                        ; $6734: $52
	and  c                                           ; $6735: $a1
	dec  c                                           ; $6736: $0d
	nop                                              ; $6737: $00
	dec  b                                           ; $6738: $05
	ld   b, b                                        ; $6739: $40
	rst  $38                                         ; $673a: $ff
	inc  bc                                          ; $673b: $03
	rst  $38                                         ; $673c: $ff
	ld   bc, $2801                                   ; $673d: $01 $01 $28
	nop                                              ; $6740: $00
	ld   bc, $9b6e                                   ; $6741: $01 $6e $9b
	ld   d, h                                        ; $6744: $54
	ld   a, b                                        ; $6745: $78
	sbc  a                                           ; $6746: $9f
	dec  c                                           ; $6747: $0d
	nop                                              ; $6748: $00
	ld   a, [bc]                                     ; $6749: $0a
	ld   b, $cc                                      ; $674a: $06 $cc
	inc  b                                           ; $674c: $04
	rrca                                             ; $674d: $0f
	nop                                              ; $674e: $00
	ld   bc, $0301                                   ; $674f: $01 $01 $03
	ld   l, [hl]                                     ; $6752: $6e
	inc  b                                           ; $6753: $04
	ld   e, c                                        ; $6754: $59
	ld   e, d                                        ; $6755: $5a
	inc  b                                           ; $6756: $04
	ld   c, $03                                      ; $6757: $0e $03
	dec  de                                          ; $6759: $1b
	ld   a, b                                        ; $675a: $78
	ld   a, h                                        ; $675b: $7c
	ld   e, c                                        ; $675c: $59
	rst  $38                                         ; $675d: $ff
	rst  $38                                         ; $675e: $ff
	dec  c                                           ; $675f: $0d
	ld   h, c                                        ; $6760: $61
	ld   a, h                                        ; $6761: $7c
	inc  bc                                          ; $6762: $03
	ld   l, [hl]                                     ; $6763: $6e
	inc  b                                           ; $6764: $04
	ld   e, c                                        ; $6765: $59
	ld   h, e                                        ; $6766: $63
	ld   l, h                                        ; $6767: $6c
	sub  d                                           ; $6768: $92
	ld   d, h                                        ; $6769: $54
	adc  h                                           ; $676a: $8c
	ld   d, d                                        ; $676b: $52
	and  c                                           ; $676c: $a1
	dec  c                                           ; $676d: $0d
	ld   l, [hl]                                     ; $676e: $6e
	sbc  e                                           ; $676f: $9b
	ld   d, h                                        ; $6770: $54
	ld   a, b                                        ; $6771: $78
	sbc  a                                           ; $6772: $9f
	dec  c                                           ; $6773: $0d
	nop                                              ; $6774: $00
	ld   a, [bc]                                     ; $6775: $0a
	ld   b, $cc                                      ; $6776: $06 $cc
	inc  b                                           ; $6778: $04
	rrca                                             ; $6779: $0f
	nop                                              ; $677a: $00
	ld   bc, $0301                                   ; $677b: $01 $01 $03
	sub  d                                           ; $677e: $92
	inc  b                                           ; $677f: $04
	ld   l, $5a                                      ; $6780: $2e $5a
	inc  b                                           ; $6782: $04
	ld   c, $03                                      ; $6783: $0e $03
	dec  de                                          ; $6785: $1b
	ld   a, b                                        ; $6786: $78
	ld   a, h                                        ; $6787: $7c
	ld   e, c                                        ; $6788: $59
	rst  $38                                         ; $6789: $ff
	rst  $38                                         ; $678a: $ff
	dec  c                                           ; $678b: $0d
	ld   h, c                                        ; $678c: $61
	ld   a, h                                        ; $678d: $7c
	inc  bc                                          ; $678e: $03
	sub  d                                           ; $678f: $92
	inc  b                                           ; $6790: $04
	ld   l, $63                                      ; $6791: $2e $63
	ld   l, h                                        ; $6793: $6c
	sub  d                                           ; $6794: $92
	ld   d, h                                        ; $6795: $54
	adc  h                                           ; $6796: $8c
	ld   d, d                                        ; $6797: $52
	and  c                                           ; $6798: $a1
	dec  c                                           ; $6799: $0d
	ld   l, [hl]                                     ; $679a: $6e
	sbc  e                                           ; $679b: $9b
	ld   d, h                                        ; $679c: $54
	ld   a, b                                        ; $679d: $78
	sbc  a                                           ; $679e: $9f
	dec  c                                           ; $679f: $0d
	nop                                              ; $67a0: $00
	ld   a, [bc]                                     ; $67a1: $0a
	ld   b, $cc                                      ; $67a2: $06 $cc
	inc  b                                           ; $67a4: $04
	inc  e                                           ; $67a5: $1c
	dec  b                                           ; $67a6: $05
	rlca                                             ; $67a7: $07
	rlca                                             ; $67a8: $07
	ld   bc, $8c6e                                   ; $67a9: $01 $6e $8c
	sbc  d                                           ; $67ac: $9a
	ld   a, [$5910]                                  ; $67ad: $fa $10 $59
	ld   e, l                                        ; $67b0: $5d
	ld   h, d                                        ; $67b1: $62
	ld   h, l                                        ; $67b2: $65
	sbc  e                                           ; $67b3: $9b
	ld   a, [$000d]                                  ; $67b4: $fa $0d $00
	ld   a, [bc]                                     ; $67b7: $0a
	dec  c                                           ; $67b8: $0d
	nop                                              ; $67b9: $00
	nop                                              ; $67ba: $00
	rrca                                             ; $67bb: $0f
	nop                                              ; $67bc: $00
	ld   bc, $0b0c                                   ; $67bd: $01 $0c $0b
	ld   b, $13                                      ; $67c0: $06 $13
	dec  b                                           ; $67c2: $05
	inc  e                                           ; $67c3: $1c
	dec  b                                           ; $67c4: $05
	ld   [bc], a                                     ; $67c5: $02
	ld   [bc], a                                     ; $67c6: $02
	ld   bc, $7c61                                   ; $67c7: $01 $61 $7c
	ld   e, l                                        ; $67ca: $5d
	sub  a                                           ; $67cb: $97
	ld   d, d                                        ; $67cc: $52
	ld   a, h                                        ; $67cd: $7c
	inc  b                                           ; $67ce: $04
	inc  c                                           ; $67cf: $0c
	dec  b                                           ; $67d0: $05
	push de                                          ; $67d1: $d5
	ld   [hl], l                                     ; $67d2: $75
	dec  c                                           ; $67d3: $0d
	halt                                             ; $67d4: $76
	ld   l, a                                        ; $67d5: $6f
	sub  a                                           ; $67d6: $97
	and  c                                           ; $67d7: $a1
	halt                                             ; $67d8: $76
	ld   d, d                                        ; $67d9: $52
	ld   [hl], h                                     ; $67da: $74
	ei                                               ; $67db: $fb
	ld   a, b                                        ; $67dc: $78
	sbc  a                                           ; $67dd: $9f
	dec  c                                           ; $67de: $0d
	nop                                              ; $67df: $00
	ld   a, [bc]                                     ; $67e0: $0a
	dec  c                                           ; $67e1: $0d
	nop                                              ; $67e2: $00
	nop                                              ; $67e3: $00
	rrca                                             ; $67e4: $0f
	nop                                              ; $67e5: $00
	ld   bc, $0b0c                                   ; $67e6: $01 $0c $0b
	ld   b, $77                                      ; $67e9: $06 $77
	dec  b                                           ; $67eb: $05
	rlca                                             ; $67ec: $07
	jr   z, jr_04e_67f4                              ; $67ed: $28 $05

	inc  bc                                          ; $67ef: $03
	rst  $38                                         ; $67f0: $ff
	ld   bc, $2003                                   ; $67f1: $01 $03 $20

jr_04e_67f4:
	nop                                              ; $67f4: $00
	rlca                                             ; $67f5: $07
	ld   d, h                                        ; $67f6: $54
	dec  b                                           ; $67f7: $05
	inc  bc                                          ; $67f8: $03
	rst  $38                                         ; $67f9: $ff
	ld   bc, $2002                                   ; $67fa: $01 $02 $20
	nop                                              ; $67fd: $00
	ld   b, $77                                      ; $67fe: $06 $77
	dec  b                                           ; $6800: $05
	inc  e                                           ; $6801: $1c
	dec  b                                           ; $6802: $05
	ld   bc, $1d01                                   ; $6803: $01 $01 $1d
	ld   b, b                                        ; $6806: $40
	dec  d                                           ; $6807: $15
	inc  bc                                          ; $6808: $03
	dec  d                                           ; $6809: $15
	ld   bc, $2803                                   ; $680a: $01 $03 $28
	nop                                              ; $680d: $00
	ld   bc, $5858                                   ; $680e: $01 $58 $58
	ld   e, e                                        ; $6811: $5b
	ld   a, c                                        ; $6812: $79
	sbc  [hl]                                        ; $6813: $9e
	inc  bc                                          ; $6814: $03
	ld   e, e                                        ; $6815: $5b
	ld   e, c                                        ; $6816: $59
	ld   [hl], c                                     ; $6817: $71
	ld   l, l                                        ; $6818: $6d
	sbc  l                                           ; $6819: $9d
	sbc  a                                           ; $681a: $9f
	dec  c                                           ; $681b: $0d
	adc  c                                           ; $681c: $89
	and  c                                           ; $681d: $a1
	adc  h                                           ; $681e: $8c
	sbc  [hl]                                        ; $681f: $9e
	ld   d, b                                        ; $6820: $50
	sbc  b                                           ; $6821: $98
	ld   e, d                                        ; $6822: $5a
	halt                                             ; $6823: $76
	ld   d, h                                        ; $6824: $54
	ld   a, b                                        ; $6825: $78
	sbc  a                                           ; $6826: $9f
	dec  c                                           ; $6827: $0d
	nop                                              ; $6828: $00
	ld   a, [bc]                                     ; $6829: $0a
	ld   b, $a8                                      ; $682a: $06 $a8
	dec  b                                           ; $682c: $05
	inc  e                                           ; $682d: $1c
	dec  b                                           ; $682e: $05
	nop                                              ; $682f: $00
	nop                                              ; $6830: $00
	dec  e                                           ; $6831: $1d
	ld   b, b                                        ; $6832: $40
	dec  d                                           ; $6833: $15
	inc  bc                                          ; $6834: $03
	dec  d                                           ; $6835: $15
	ld   bc, $2802                                   ; $6836: $01 $02 $28
	nop                                              ; $6839: $00
	ld   bc, $5483                                   ; $683a: $01 $83 $54
	rst  $38                                         ; $683d: $ff
	rst  $38                                         ; $683e: $ff
	ld   e, b                                        ; $683f: $58
	inc  b                                           ; $6840: $04
	ld   a, e                                        ; $6841: $7b
	sbc  d                                           ; $6842: $9a
	ld   h, e                                        ; $6843: $63
	and  c                                           ; $6844: $a1
	sub  d                                           ; $6845: $92
	ld   [hl], c                                     ; $6846: $71
	ld   l, l                                        ; $6847: $6d
	ld   a, b                                        ; $6848: $78
	sbc  a                                           ; $6849: $9f
	dec  c                                           ; $684a: $0d
	nop                                              ; $684b: $00
	ld   a, [bc]                                     ; $684c: $0a
	ld   b, $a8                                      ; $684d: $06 $a8
	dec  b                                           ; $684f: $05
	inc  e                                           ; $6850: $1c
	dec  b                                           ; $6851: $05
	ld   [bc], a                                     ; $6852: $02
	ld   [bc], a                                     ; $6853: $02
	dec  e                                           ; $6854: $1d
	ld   b, b                                        ; $6855: $40
	dec  d                                           ; $6856: $15
	inc  bc                                          ; $6857: $03
	dec  d                                           ; $6858: $15
	ld   bc, $2902                                   ; $6859: $01 $02 $29
	nop                                              ; $685c: $00
	ld   bc, $ffff                                   ; $685d: $01 $ff $ff
	inc  b                                           ; $6860: $04
	ld   e, $7c                                      ; $6861: $1e $7c
	inc  bc                                          ; $6863: $03
	add  d                                           ; $6864: $82
	ld   a, c                                        ; $6865: $79
	ld   l, l                                        ; $6866: $6d
	ld   a, h                                        ; $6867: $7c
	and  c                                           ; $6868: $a1
	ld   l, [hl]                                     ; $6869: $6e
	inc  b                                           ; $686a: $04
	ld   a, b                                        ; $686b: $78
	ld   e, d                                        ; $686c: $5a
	dec  c                                           ; $686d: $0d
	dec  b                                           ; $686e: $05
	dec  d                                           ; $686f: $15
	ld   e, c                                        ; $6870: $59
	ld   [hl], c                                     ; $6871: $71
	ld   l, l                                        ; $6872: $6d
	ld   e, c                                        ; $6873: $59
	sub  b                                           ; $6874: $90
	ld   h, l                                        ; $6875: $65
	sbc  d                                           ; $6876: $9a
	and  c                                           ; $6877: $a1
	ld   a, b                                        ; $6878: $78
	rst  $38                                         ; $6879: $ff
	rst  $38                                         ; $687a: $ff
	dec  c                                           ; $687b: $0d
	nop                                              ; $687c: $00
	ld   a, [bc]                                     ; $687d: $0a
	ld   b, $a8                                      ; $687e: $06 $a8
	dec  b                                           ; $6880: $05
	ld   bc, $7889                                   ; $6881: $01 $89 $78
	sbc  [hl]                                        ; $6884: $9e
	adc  h                                           ; $6885: $8c
	ld   l, l                                        ; $6886: $6d
	ld   a, b                                        ; $6887: $78
	sbc  a                                           ; $6888: $9f
	dec  c                                           ; $6889: $0d
	nop                                              ; $688a: $00
	ld   a, [bc]                                     ; $688b: $0a
	dec  c                                           ; $688c: $0d
	nop                                              ; $688d: $00
	nop                                              ; $688e: $00
	rrca                                             ; $688f: $0f
	nop                                              ; $6890: $00
	ld   bc, $1e09                                   ; $6891: $01 $09 $1e
	nop                                              ; $6894: $00
	nop                                              ; $6895: $00
	inc  bc                                          ; $6896: $03
	ld   c, [hl]                                     ; $6897: $4e
	ld   [bc], a                                     ; $6898: $02
	nop                                              ; $6899: $00
	inc  bc                                          ; $689a: $03
	ld   c, b                                        ; $689b: $48
	add  hl, hl                                      ; $689c: $29
	add  hl, hl                                      ; $689d: $29
	ld   bc, $2201                                   ; $689e: $01 $01 $22
	nop                                              ; $68a1: $00
	ld   c, $32                                      ; $68a2: $0e $32
	inc  e                                           ; $68a4: $1c
	ld   bc, $0000                                   ; $68a5: $01 $00 $00
	ld   [bc], a                                     ; $68a8: $02
	ld   bc, $9e50                                   ; $68a9: $01 $50 $9e
	ld   [$6300], sp                                 ; $68ac: $08 $00 $63
	and  c                                           ; $68af: $a1
	sbc  a                                           ; $68b0: $9f
	dec  c                                           ; $68b1: $0d
	nop                                              ; $68b2: $00
	ld   a, [bc]                                     ; $68b3: $0a
	inc  e                                           ; $68b4: $1c
	ld   bc, $0404                                   ; $68b5: $01 $04 $04
	ld   bc, $a502                                   ; $68b8: $01 $02 $a5
	inc  b                                           ; $68bb: $04
	xor  d                                           ; $68bc: $aa
	ld   a, h                                        ; $68bd: $7c
	ld   [bc], a                                     ; $68be: $02
	or   [hl]                                        ; $68bf: $b6
	rst  $38                                         ; $68c0: $ff
	rst  $38                                         ; $68c1: $ff
	dec  c                                           ; $68c2: $0d
	ld   l, a                                        ; $68c3: $6f
	sub  l                                           ; $68c4: $95
	ld   [hl], c                                     ; $68c5: $71
	halt                                             ; $68c6: $76
	dec  b                                           ; $68c7: $05
	ld   [hl], d                                     ; $68c8: $72
	ld   [bc], a                                     ; $68c9: $02
	ld   a, a                                        ; $68ca: $7f
	ld   e, e                                        ; $68cb: $5b
	ld   e, d                                        ; $68cc: $5a
	ld   d, b                                        ; $68cd: $50
	sub  d                                           ; $68ce: $92
	ld   h, l                                        ; $68cf: $65
	ld   d, d                                        ; $68d0: $52
	halt                                             ; $68d1: $76
	dec  c                                           ; $68d2: $0d
	dec  b                                           ; $68d3: $05
	pop  de                                          ; $68d4: $d1
	ld   d, d                                        ; $68d5: $52
	adc  h                                           ; $68d6: $8c
	ld   l, c                                        ; $68d7: $69
	and  c                                           ; $68d8: $a1
	ld   sp, hl                                      ; $68d9: $f9
	dec  c                                           ; $68da: $0d
	nop                                              ; $68db: $00
	ld   a, [bc]                                     ; $68dc: $0a
	add  hl, de                                      ; $68dd: $19
	dec  b                                           ; $68de: $05
	inc  bc                                          ; $68df: $03
	dec  b                                           ; $68e0: $05
	call nc, $999a                                   ; $68e1: $d4 $9a $99
	halt                                             ; $68e4: $76
	dec  b                                           ; $68e5: $05
	pop  de                                          ; $68e6: $d1
	ld   d, d                                        ; $68e7: $52
	adc  h                                           ; $68e8: $8c
	ld   h, a                                        ; $68e9: $67
	sub  [hl]                                        ; $68ea: $96
	nop                                              ; $68eb: $00
	nop                                              ; $68ec: $00
	dec  b                                           ; $68ed: $05
	sbc  l                                           ; $68ee: $9d
	sbc  d                                           ; $68ef: $9a
	sbc  c                                           ; $68f0: $99
	halt                                             ; $68f1: $76
	dec  b                                           ; $68f2: $05
	pop  de                                          ; $68f3: $d1
	ld   d, d                                        ; $68f4: $52
	adc  h                                           ; $68f5: $8c
	ld   h, a                                        ; $68f6: $67
	sub  [hl]                                        ; $68f7: $96
	nop                                              ; $68f8: $00
	ld   bc, $2202                                   ; $68f9: $01 $02 $22
	ld   l, [hl]                                     ; $68fc: $6e
	halt                                             ; $68fd: $76
	dec  b                                           ; $68fe: $05
	pop  de                                          ; $68ff: $d1
	ld   d, d                                        ; $6900: $52
	adc  h                                           ; $6901: $8c
	ld   h, a                                        ; $6902: $67
	sub  [hl]                                        ; $6903: $96
	nop                                              ; $6904: $00
	ld   [bc], a                                     ; $6905: $02
	rlca                                             ; $6906: $07
	and  c                                           ; $6907: $a1
	nop                                              ; $6908: $00
	ld   [bc], a                                     ; $6909: $02
	inc  bc                                          ; $690a: $03
	ld   bc, $2000                                   ; $690b: $01 $00 $20
	nop                                              ; $690e: $00
	rlca                                             ; $690f: $07
	ldh  a, [rP1]                                    ; $6910: $f0 $00
	ld   [bc], a                                     ; $6912: $02
	inc  bc                                          ; $6913: $03
	ld   bc, $2001                                   ; $6914: $01 $01 $20
	nop                                              ; $6917: $00
	rlca                                             ; $6918: $07
	ld   e, d                                        ; $6919: $5a
	inc  bc                                          ; $691a: $03
	ld   [bc], a                                     ; $691b: $02
	inc  bc                                          ; $691c: $03
	ld   bc, $2002                                   ; $691d: $01 $02 $20
	nop                                              ; $6920: $00
	ld   b, $82                                      ; $6921: $06 $82
	nop                                              ; $6923: $00
	inc  e                                           ; $6924: $1c
	ld   bc, $0404                                   ; $6925: $01 $04 $04
	ld   bc, $2202                                   ; $6928: $01 $02 $22
	ld   a, c                                        ; $692b: $79
	ld   a, b                                        ; $692c: $78
	ld   [hl], c                                     ; $692d: $71
	ld   l, l                                        ; $692e: $6d
	sub  a                                           ; $692f: $97
	ld   d, d                                        ; $6930: $52
	sub  d                                           ; $6931: $92
	ld   [hl], l                                     ; $6932: $75
	ld   h, a                                        ; $6933: $67
	ld   a, e                                        ; $6934: $7b
	rst  $38                                         ; $6935: $ff
	rst  $38                                         ; $6936: $ff
	dec  c                                           ; $6937: $0d
	nop                                              ; $6938: $00
	ld   a, [bc]                                     ; $6939: $0a
	dec  c                                           ; $693a: $0d
	nop                                              ; $693b: $00
	nop                                              ; $693c: $00
	rrca                                             ; $693d: $0f
	nop                                              ; $693e: $00
	ld   bc, $1e09                                   ; $693f: $01 $09 $1e
	nop                                              ; $6942: $00
	rrca                                             ; $6943: $0f
	nop                                              ; $6944: $00
	ld   bc, $0501                                   ; $6945: $01 $01 $05
	call nc, $999a                                   ; $6948: $d4 $9a $99
	halt                                             ; $694b: $76
	dec  b                                           ; $694c: $05
	pop  de                                          ; $694d: $d1
	ld   d, d                                        ; $694e: $52
	adc  h                                           ; $694f: $8c
	ld   h, a                                        ; $6950: $67
	sub  [hl]                                        ; $6951: $96
	sbc  a                                           ; $6952: $9f
	dec  c                                           ; $6953: $0d
	dec  b                                           ; $6954: $05
	ld   [hl], d                                     ; $6955: $72
	ld   a, h                                        ; $6956: $7c
	dec  b                                           ; $6957: $05
	inc  d                                           ; $6958: $14
	sbc  d                                           ; $6959: $9a
	ld   e, d                                        ; $695a: $5a
	inc  bc                                          ; $695b: $03
	ld   [hl], b                                     ; $695c: $70
	ld   d, d                                        ; $695d: $52
	ld   [hl], l                                     ; $695e: $75
	ld   h, a                                        ; $695f: $67
	ld   h, l                                        ; $6960: $65
	rst  $38                                         ; $6961: $ff
	rst  $38                                         ; $6962: $ff
	dec  c                                           ; $6963: $0d
	nop                                              ; $6964: $00
	ld   a, [bc]                                     ; $6965: $0a
	inc  e                                           ; $6966: $1c
	ld   bc, $0101                                   ; $6967: $01 $01 $01
	dec  e                                           ; $696a: $1d
	ld   b, b                                        ; $696b: $40
	ld   de, $1103                                   ; $696c: $11 $03 $11
	ld   bc, $2802                                   ; $696f: $01 $02 $28
	nop                                              ; $6972: $00
	ld   bc, $546b                                   ; $6973: $01 $6b $54
	ld   [hl], l                                     ; $6976: $75
	ld   h, a                                        ; $6977: $67
	ld   a, e                                        ; $6978: $7b
	sbc  a                                           ; $6979: $9f
	dec  c                                           ; $697a: $0d
	dec  b                                           ; $697b: $05
	call nc, Call_04e_6d9a                           ; $697c: $d4 $9a $6d
	sub  a                                           ; $697f: $97
	ld   d, d                                        ; $6980: $52
	ld   d, d                                        ; $6981: $52
	ld   [hl], l                                     ; $6982: $75
	ld   h, a                                        ; $6983: $67
	ld   a, e                                        ; $6984: $7b
	sbc  a                                           ; $6985: $9f
	dec  c                                           ; $6986: $0d
	nop                                              ; $6987: $00
	ld   a, [bc]                                     ; $6988: $0a
	dec  c                                           ; $6989: $0d
	nop                                              ; $698a: $00
	nop                                              ; $698b: $00
	rrca                                             ; $698c: $0f
	nop                                              ; $698d: $00
	ld   bc, $1e09                                   ; $698e: $01 $09 $1e
	nop                                              ; $6991: $00
	rrca                                             ; $6992: $0f
	nop                                              ; $6993: $00
	ld   bc, $0501                                   ; $6994: $01 $01 $05
	sbc  l                                           ; $6997: $9d
	sbc  d                                           ; $6998: $9a
	sbc  c                                           ; $6999: $99
	halt                                             ; $699a: $76
	dec  b                                           ; $699b: $05
	pop  de                                          ; $699c: $d1
	ld   d, d                                        ; $699d: $52
	adc  h                                           ; $699e: $8c
	ld   h, a                                        ; $699f: $67
	sub  [hl]                                        ; $69a0: $96
	sbc  a                                           ; $69a1: $9f
	dec  c                                           ; $69a2: $0d
	adc  c                                           ; $69a3: $89
	sub  a                                           ; $69a4: $97
	rst  $38                                         ; $69a5: $ff
	rst  $38                                         ; $69a6: $ff
	dec  c                                           ; $69a7: $0d
	nop                                              ; $69a8: $00
	ld   a, [bc]                                     ; $69a9: $0a
	inc  c                                           ; $69aa: $0c
	dec  b                                           ; $69ab: $05
	dec  c                                           ; $69ac: $0d
	nop                                              ; $69ad: $00
	nop                                              ; $69ae: $00
	ld   d, $14                                      ; $69af: $16 $14
	rrca                                             ; $69b1: $0f
	ld   bc, $0118                                   ; $69b2: $01 $18 $01
	ld   e, e                                        ; $69b5: $5b
	sub  c                                           ; $69b6: $91
	ld   [hl], c                                     ; $69b7: $71
	sbc  [hl]                                        ; $69b8: $9e
	xor  h                                           ; $69b9: $ac
	ldh  [$cb], a                                    ; $69ba: $e0 $cb
	db   $ec                                         ; $69bc: $ec
	ld   a, [$000d]                                  ; $69bd: $fa $0d $00
	ld   a, [bc]                                     ; $69c0: $0a
	rrca                                             ; $69c1: $0f
	nop                                              ; $69c2: $00
	ld   bc, $6301                                   ; $69c3: $01 $01 $63
	sbc  [hl]                                        ; $69c6: $9e
	ld   h, e                                        ; $69c7: $63
	ld   e, l                                        ; $69c8: $5d
	sub  a                                           ; $69c9: $97
	ld   h, e                                        ; $69ca: $63
	and  c                                           ; $69cb: $a1
	dec  c                                           ; $69cc: $0d
	ld   l, [hl]                                     ; $69cd: $6e
	ld   d, d                                        ; $69ce: $52
	ld   h, [hl]                                     ; $69cf: $66
	sub  l                                           ; $69d0: $95
	ld   d, h                                        ; $69d1: $54
	add  h                                           ; $69d2: $84
	ld   [hl], l                                     ; $69d3: $75
	ld   h, a                                        ; $69d4: $67
	ld   e, c                                        ; $69d5: $59
	ld   a, [$0df9]                                  ; $69d6: $fa $f9 $0d
	nop                                              ; $69d9: $00
	ld   a, [bc]                                     ; $69da: $0a
	add  hl, de                                      ; $69db: $19
	dec  b                                           ; $69dc: $05
	inc  bc                                          ; $69dd: $03
	inc  b                                           ; $69de: $04
	ld   c, $03                                      ; $69df: $0e $03
	rlca                                             ; $69e1: $07
	ld   d, d                                        ; $69e2: $52
	ld   h, a                                        ; $69e3: $67
	sbc  c                                           ; $69e4: $99
	nop                                              ; $69e5: $00
	nop                                              ; $69e6: $00
	ld   a, b                                        ; $69e7: $78
	ld   e, [hl]                                     ; $69e8: $5e
	ld   h, e                                        ; $69e9: $63
	adc  a                                           ; $69ea: $8f
	sbc  c                                           ; $69eb: $99
	nop                                              ; $69ec: $00
	ld   bc, $d402                                   ; $69ed: $01 $02 $d4
	ld   e, l                                        ; $69f0: $5d
	ld   l, [hl]                                     ; $69f1: $6e
	ld   e, e                                        ; $69f2: $5b
	ld   h, l                                        ; $69f3: $65
	adc  a                                           ; $69f4: $8f
	sbc  c                                           ; $69f5: $99
	nop                                              ; $69f6: $00
	ld   [bc], a                                     ; $69f7: $02
	rlca                                             ; $69f8: $07
	ld   [hl], h                                     ; $69f9: $74
	ld   bc, $0302                                   ; $69fa: $01 $02 $03
	ld   bc, $2000                                   ; $69fd: $01 $00 $20
	nop                                              ; $6a00: $00
	rlca                                             ; $6a01: $07
	jp   hl                                          ; $6a02: $e9


	ld   bc, $0302                                   ; $6a03: $01 $02 $03
	ld   bc, $2001                                   ; $6a06: $01 $01 $20
	nop                                              ; $6a09: $00
	rlca                                             ; $6a0a: $07
	halt                                             ; $6a0b: $76
	ld   [bc], a                                     ; $6a0c: $02
	ld   [bc], a                                     ; $6a0d: $02
	inc  bc                                          ; $6a0e: $03
	ld   bc, $2002                                   ; $6a0f: $01 $02 $20
	nop                                              ; $6a12: $00
	ld   b, $24                                      ; $6a13: $06 $24
	inc  bc                                          ; $6a15: $03
	rrca                                             ; $6a16: $0f
	nop                                              ; $6a17: $00
	ld   bc, $5001                                   ; $6a18: $01 $01 $50
	ld   a, l                                        ; $6a1b: $7d
	ld   a, l                                        ; $6a1c: $7d
	ld   a, l                                        ; $6a1d: $7d
	ld   a, l                                        ; $6a1e: $7d
	ld   a, l                                        ; $6a1f: $7d
	ld   a, [$630d]                                  ; $6a20: $fa $0d $63
	ld   e, l                                        ; $6a23: $5d
	sub  a                                           ; $6a24: $97
	ld   h, e                                        ; $6a25: $63
	and  c                                           ; $6a26: $a1
	sbc  [hl]                                        ; $6a27: $9e
	xor  h                                           ; $6a28: $ac
	ldh  [$cb], a                                    ; $6a29: $e0 $cb
	db   $ec                                         ; $6a2b: $ec
	dec  c                                           ; $6a2c: $0d
	ld   h, c                                        ; $6a2d: $61
	sbc  l                                           ; $6a2e: $9d
	ld   d, d                                        ; $6a2f: $52
	and  c                                           ; $6a30: $a1
	ld   [hl], l                                     ; $6a31: $75
	ld   h, a                                        ; $6a32: $67
	ld   e, c                                        ; $6a33: $59
	ld   sp, hl                                      ; $6a34: $f9
	dec  c                                           ; $6a35: $0d
	nop                                              ; $6a36: $00
	ld   a, [bc]                                     ; $6a37: $0a
	ld   c, $32                                      ; $6a38: $0e $32
	inc  e                                           ; $6a3a: $1c
	ld   bc, $0202                                   ; $6a3b: $01 $02 $02
	dec  e                                           ; $6a3e: $1d
	ld   b, b                                        ; $6a3f: $40
	ld   de, $1103                                   ; $6a40: $11 $03 $11
	ld   bc, $2903                                   ; $6a43: $01 $03 $29
	nop                                              ; $6a46: $00
	ld   bc, $546b                                   ; $6a47: $01 $6b $54
	ld   [hl], l                                     ; $6a4a: $75
	ld   h, a                                        ; $6a4b: $67
	sub  [hl]                                        ; $6a4c: $96
	ld   [hl], c                                     ; $6a4d: $71
	ld   a, [$000d]                                  ; $6a4e: $fa $0d $00
	dec  b                                           ; $6a51: $05
	ld   b, b                                        ; $6a52: $40
	ld   c, b                                        ; $6a53: $48
	ld   [bc], a                                     ; $6a54: $02
	nop                                              ; $6a55: $00
	nop                                              ; $6a56: $00
	ld   bc, $9075                                   ; $6a57: $01 $75 $90
	sbc  [hl]                                        ; $6a5a: $9e
	inc  bc                                          ; $6a5b: $03
	rlca                                             ; $6a5c: $07
	ld   d, h                                        ; $6a5d: $54
	ld   h, c                                        ; $6a5e: $61
	halt                                             ; $6a5f: $76
	ld   a, b                                        ; $6a60: $78
	ld   d, d                                        ; $6a61: $52
	ld   h, [hl]                                     ; $6a62: $66
	sub  c                                           ; $6a63: $91
	dec  c                                           ; $6a64: $0d
	nop                                              ; $6a65: $00
	dec  b                                           ; $6a66: $05
	ld   b, b                                        ; $6a67: $40
	ld   c, [hl]                                     ; $6a68: $4e
	ld   bc, $0001                                   ; $6a69: $01 $01 $00
	ld   bc, $5278                                   ; $6a6c: $01 $78 $52
	ld   [hl], l                                     ; $6a6f: $75
	ld   h, a                                        ; $6a70: $67
	ld   e, c                                        ; $6a71: $59
	ld   a, [$000d]                                  ; $6a72: $fa $0d $00
	ld   a, [bc]                                     ; $6a75: $0a
	ld   bc, $8303                                   ; $6a76: $01 $03 $83
	dec  b                                           ; $6a79: $05
	dec  c                                           ; $6a7a: $0d
	ld   h, l                                        ; $6a7b: $65
	adc  h                                           ; $6a7c: $8c
	ld   h, a                                        ; $6a7d: $67
	ld   a, [$000d]                                  ; $6a7e: $fa $0d $00
	ld   a, [bc]                                     ; $6a81: $0a
	dec  c                                           ; $6a82: $0d
	nop                                              ; $6a83: $00
	nop                                              ; $6a84: $00
	rrca                                             ; $6a85: $0f
	nop                                              ; $6a86: $00
	ld   bc, $1e09                                   ; $6a87: $01 $09 $1e
	nop                                              ; $6a8a: $00
	ld   c, $32                                      ; $6a8b: $0e $32
	rrca                                             ; $6a8d: $0f
	nop                                              ; $6a8e: $00
	ld   bc, $0401                                   ; $6a8f: $01 $01 $04
	ld   c, $03                                      ; $6a92: $0e $03
	sbc  l                                           ; $6a94: $9d
	inc  b                                           ; $6a95: $04
	and  [hl]                                        ; $6a96: $a6
	ld   [hl], l                                     ; $6a97: $75
	ld   h, a                                        ; $6a98: $67
	sub  [hl]                                        ; $6a99: $96
	sbc  [hl]                                        ; $6a9a: $9e
	ld   h, e                                        ; $6a9b: $63
	ld   e, l                                        ; $6a9c: $5d
	sub  a                                           ; $6a9d: $97
	ld   h, e                                        ; $6a9e: $63
	and  c                                           ; $6a9f: $a1
	rst  $38                                         ; $6aa0: $ff
	rst  $38                                         ; $6aa1: $ff
	dec  c                                           ; $6aa2: $0d
	dec  b                                           ; $6aa3: $05
	pop  de                                          ; $6aa4: $d1
	ld   [hl], c                                     ; $6aa5: $71
	ld   l, l                                        ; $6aa6: $6d
	sub  [hl]                                        ; $6aa7: $96
	sbc  b                                           ; $6aa8: $98
	ld   [bc], a                                     ; $6aa9: $02
	ld   bc, $7552                                   ; $6aaa: $01 $52 $75
	ld   h, a                                        ; $6aad: $67
	ld   e, c                                        ; $6aae: $59
	sub  a                                           ; $6aaf: $97
	sbc  a                                           ; $6ab0: $9f
	dec  c                                           ; $6ab1: $0d
	nop                                              ; $6ab2: $00
	ld   a, [bc]                                     ; $6ab3: $0a
	inc  e                                           ; $6ab4: $1c
	ld   bc, $0303                                   ; $6ab5: $01 $03 $03
	ld   bc, $0703                                   ; $6ab8: $01 $03 $07
	sbc  l                                           ; $6abb: $9d
	ld   a, b                                        ; $6abc: $78
	ld   d, d                                        ; $6abd: $52
	and  c                                           ; $6abe: $a1
	ld   [hl], l                                     ; $6abf: $75
	ld   h, a                                        ; $6ac0: $67
	ld   e, c                                        ; $6ac1: $59
	rst  $38                                         ; $6ac2: $ff
	rst  $38                                         ; $6ac3: $ff
	ld   sp, hl                                      ; $6ac4: $f9
	dec  c                                           ; $6ac5: $0d
	nop                                              ; $6ac6: $00
	ld   a, [bc]                                     ; $6ac7: $0a
	rrca                                             ; $6ac8: $0f
	nop                                              ; $6ac9: $00
	ld   bc, $6b01                                   ; $6aca: $01 $01 $6b
	ld   h, c                                        ; $6acd: $61
	adc  h                                           ; $6ace: $8c
	ld   [hl], l                                     ; $6acf: $75
	inc  bc                                          ; $6ad0: $03
	add  [hl]                                        ; $6ad1: $86
	ld   [bc], a                                     ; $6ad2: $02
	xor  l                                           ; $6ad3: $ad
	ld   h, [hl]                                     ; $6ad4: $66
	sub  c                                           ; $6ad5: $91
	ld   a, b                                        ; $6ad6: $78
	ld   d, d                                        ; $6ad7: $52
	ld   [hl], l                                     ; $6ad8: $75
	ld   h, a                                        ; $6ad9: $67
	sub  [hl]                                        ; $6ada: $96
	sbc  a                                           ; $6adb: $9f
	dec  c                                           ; $6adc: $0d
	nop                                              ; $6add: $00
	ld   a, [bc]                                     ; $6ade: $0a
	inc  e                                           ; $6adf: $1c
	ld   bc, $0505                                   ; $6ae0: $01 $05 $05
	dec  e                                           ; $6ae3: $1d
	ld   b, b                                        ; $6ae4: $40
	ld   de, $1103                                   ; $6ae5: $11 $03 $11
	ld   bc, $2802                                   ; $6ae8: $01 $02 $28
	nop                                              ; $6aeb: $00
	ld   bc, $8d67                                   ; $6aec: $01 $67 $8d
	adc  h                                           ; $6aef: $8c
	ld   l, c                                        ; $6af0: $69
	and  c                                           ; $6af1: $a1
	rst  $38                                         ; $6af2: $ff
	rst  $38                                         ; $6af3: $ff
	dec  c                                           ; $6af4: $0d
	ld   h, d                                        ; $6af5: $62
	inc  bc                                          ; $6af6: $03
	ld   [hl], l                                     ; $6af7: $75
	inc  b                                           ; $6af8: $04
	xor  e                                           ; $6af9: $ab
	ld   e, c                                        ; $6afa: $59
	ld   e, a                                        ; $6afb: $5f
	ld   [hl], h                                     ; $6afc: $74
	rst  $38                                         ; $6afd: $ff
	rst  $38                                         ; $6afe: $ff
	dec  c                                           ; $6aff: $0d
	nop                                              ; $6b00: $00
	ld   a, [bc]                                     ; $6b01: $0a
	ld   bc, $8303                                   ; $6b02: $01 $03 $83
	dec  b                                           ; $6b05: $05
	dec  c                                           ; $6b06: $0d
	ld   h, l                                        ; $6b07: $65
	adc  h                                           ; $6b08: $8c
	ld   h, a                                        ; $6b09: $67
	rst  $38                                         ; $6b0a: $ff
	rst  $38                                         ; $6b0b: $ff
	dec  c                                           ; $6b0c: $0d
	nop                                              ; $6b0d: $00
	ld   a, [bc]                                     ; $6b0e: $0a
	dec  c                                           ; $6b0f: $0d
	nop                                              ; $6b10: $00
	nop                                              ; $6b11: $00
	rrca                                             ; $6b12: $0f
	nop                                              ; $6b13: $00
	ld   bc, $1e09                                   ; $6b14: $01 $09 $1e
	nop                                              ; $6b17: $00
	ld   c, $32                                      ; $6b18: $0e $32
	rrca                                             ; $6b1a: $0f
	nop                                              ; $6b1b: $00
	ld   bc, $6301                                   ; $6b1c: $01 $01 $63
	ld   e, l                                        ; $6b1f: $5d
	sub  a                                           ; $6b20: $97
	ld   h, e                                        ; $6b21: $63
	and  c                                           ; $6b22: $a1
	ld   a, [$0410]                                  ; $6b23: $fa $10 $04
	ld   c, $03                                      ; $6b26: $0e $03
	sbc  l                                           ; $6b28: $9d
	inc  b                                           ; $6b29: $04
	and  [hl]                                        ; $6b2a: $a6
	ld   [hl], l                                     ; $6b2b: $75
	ld   h, a                                        ; $6b2c: $67
	ld   a, [$040d]                                  ; $6b2d: $fa $0d $04
	ld   l, l                                        ; $6b30: $6d
	ld   e, d                                        ; $6b31: $5a
	ld   [hl], d                                     ; $6b32: $72
	ld   d, d                                        ; $6b33: $52
	ld   [hl], h                                     ; $6b34: $74
	ld   d, d                                        ; $6b35: $52
	adc  h                                           ; $6b36: $8c
	ld   h, a                                        ; $6b37: $67
	ld   e, c                                        ; $6b38: $59
	sub  a                                           ; $6b39: $97
	ld   a, [$0dfa]                                  ; $6b3a: $fa $fa $0d
	nop                                              ; $6b3d: $00
	ld   a, [bc]                                     ; $6b3e: $0a
	rrca                                             ; $6b3f: $0f
	ld   bc, $0103                                   ; $6b40: $01 $03 $01
	ld   d, b                                        ; $6b43: $50
	sbc  [hl]                                        ; $6b44: $9e
	ld   d, b                                        ; $6b45: $50
	ld   a, h                                        ; $6b46: $7c
	rst  $38                                         ; $6b47: $ff
	rst  $38                                         ; $6b48: $ff
	dec  c                                           ; $6b49: $0d
	sub  b                                           ; $6b4a: $90
	ld   d, h                                        ; $6b4b: $54
	inc  b                                           ; $6b4c: $04
	ld   c, $03                                      ; $6b4d: $0e $03
	sbc  l                                           ; $6b4f: $9d
	inc  b                                           ; $6b50: $04
	and  [hl]                                        ; $6b51: $a6
	ld   [hl], l                                     ; $6b52: $75
	ld   h, a                                        ; $6b53: $67
	ld   e, c                                        ; $6b54: $59
	sub  a                                           ; $6b55: $97
	rst  $38                                         ; $6b56: $ff
	rst  $38                                         ; $6b57: $ff
	dec  c                                           ; $6b58: $0d
	ld   a, l                                        ; $6b59: $7d
	ld   a, b                                        ; $6b5a: $78
	ld   h, l                                        ; $6b5b: $65
	ld   [hl], h                                     ; $6b5c: $74
	sub  b                                           ; $6b5d: $90
	sub  a                                           ; $6b5e: $97
	ld   d, [hl]                                     ; $6b5f: $56
	adc  h                                           ; $6b60: $8c
	ld   l, c                                        ; $6b61: $69
	and  c                                           ; $6b62: $a1
	ld   e, c                                        ; $6b63: $59
	rst  $38                                         ; $6b64: $ff
	rst  $38                                         ; $6b65: $ff
	ld   sp, hl                                      ; $6b66: $f9
	dec  c                                           ; $6b67: $0d
	nop                                              ; $6b68: $00
	ld   a, [bc]                                     ; $6b69: $0a
	rrca                                             ; $6b6a: $0f
	nop                                              ; $6b6b: $00
	ld   bc, $010d                                   ; $6b6c: $01 $0d $01
	dec  b                                           ; $6b6f: $05
	ld   bc, $9e67                                   ; $6b70: $01 $67 $9e
	ld   h, a                                        ; $6b73: $67
	adc  l                                           ; $6b74: $8d
	adc  h                                           ; $6b75: $8c
	ld   l, c                                        ; $6b76: $69
	and  c                                           ; $6b77: $a1
	rst  $38                                         ; $6b78: $ff
	rst  $38                                         ; $6b79: $ff
	dec  c                                           ; $6b7a: $0d
	nop                                              ; $6b7b: $00
	ld   a, [bc]                                     ; $6b7c: $0a
	inc  e                                           ; $6b7d: $1c
	ld   bc, $0505                                   ; $6b7e: $01 $05 $05
	dec  e                                           ; $6b81: $1d
	ld   b, b                                        ; $6b82: $40
	ld   de, $1103                                   ; $6b83: $11 $03 $11
	ld   bc, $2801                                   ; $6b86: $01 $01 $28
	nop                                              ; $6b89: $00
	ld   bc, $6d50                                   ; $6b8a: $01 $50 $6d
	ld   h, l                                        ; $6b8d: $65
	ld   a, h                                        ; $6b8e: $7c
	inc  b                                           ; $6b8f: $04
	ld   a, b                                        ; $6b90: $78
	ld   h, c                                        ; $6b91: $61
	ld   l, e                                        ; $6b92: $6b
	ld   h, a                                        ; $6b93: $67
	adc  l                                           ; $6b94: $8d
	adc  h                                           ; $6b95: $8c
	ld   l, c                                        ; $6b96: $69
	and  c                                           ; $6b97: $a1
	rst  $38                                         ; $6b98: $ff
	rst  $38                                         ; $6b99: $ff
	dec  c                                           ; $6b9a: $0d
	xor  h                                           ; $6b9b: $ac
	ldh  [$cb], a                                    ; $6b9c: $e0 $cb
	db   $ec                                         ; $6b9e: $ec
	ld   a, b                                        ; $6b9f: $78
	and  c                                           ; $6ba0: $a1
	ld   e, c                                        ; $6ba1: $59
	ld   a, c                                        ; $6ba2: $79
	dec  c                                           ; $6ba3: $0d
	ld   e, b                                        ; $6ba4: $58
	add  c                                           ; $6ba5: $81
	ld   d, [hl]                                     ; $6ba6: $56
	ld   l, a                                        ; $6ba7: $6f
	sub  c                                           ; $6ba8: $91
	ld   [hl], c                                     ; $6ba9: $71
	ld   [hl], h                                     ; $6baa: $74
	rst  $38                                         ; $6bab: $ff
	rst  $38                                         ; $6bac: $ff
	dec  c                                           ; $6bad: $0d
	nop                                              ; $6bae: $00
	ld   a, [bc]                                     ; $6baf: $0a
	ld   bc, $8303                                   ; $6bb0: $01 $03 $83
	dec  b                                           ; $6bb3: $05
	dec  c                                           ; $6bb4: $0d
	ld   h, l                                        ; $6bb5: $65
	adc  h                                           ; $6bb6: $8c
	ld   h, a                                        ; $6bb7: $67
	rst  $38                                         ; $6bb8: $ff
	rst  $38                                         ; $6bb9: $ff
	dec  c                                           ; $6bba: $0d
	nop                                              ; $6bbb: $00
	ld   a, [bc]                                     ; $6bbc: $0a
	dec  c                                           ; $6bbd: $0d
	nop                                              ; $6bbe: $00
	nop                                              ; $6bbf: $00
	rrca                                             ; $6bc0: $0f
	nop                                              ; $6bc1: $00
	ld   bc, $1e09                                   ; $6bc2: $01 $09 $1e
	nop                                              ; $6bc5: $00
	ld   c, $32                                      ; $6bc6: $0e $32
	inc  e                                           ; $6bc8: $1c
	ld   bc, $0404                                   ; $6bc9: $01 $04 $04
	ld   bc, $e0ac                                   ; $6bcc: $01 $ac $e0
	set  5, h                                        ; $6bcf: $cb $ec
	rst  $38                                         ; $6bd1: $ff
	rst  $38                                         ; $6bd2: $ff
	dec  c                                           ; $6bd3: $0d
	ld   e, b                                        ; $6bd4: $58
	ld   h, e                                        ; $6bd5: $63
	adc  h                                           ; $6bd6: $8c
	ld   [hl], c                                     ; $6bd7: $71
	ld   l, l                                        ; $6bd8: $6d
	adc  l                                           ; $6bd9: $8d
	ld   l, l                                        ; $6bda: $6d
	ld   d, d                                        ; $6bdb: $52
	ld   [hl], l                                     ; $6bdc: $75
	ld   h, a                                        ; $6bdd: $67
	ld   a, e                                        ; $6bde: $7b
	rst  $38                                         ; $6bdf: $ff
	rst  $38                                         ; $6be0: $ff
	dec  c                                           ; $6be1: $0d
	nop                                              ; $6be2: $00
	ld   a, [bc]                                     ; $6be3: $0a
	ld   bc, $9166                                   ; $6be4: $01 $66 $91
	sbc  [hl]                                        ; $6be7: $9e
	inc  bc                                          ; $6be8: $03
	add  e                                           ; $6be9: $83
	dec  b                                           ; $6bea: $05
	dec  c                                           ; $6beb: $0d
	ld   h, l                                        ; $6bec: $65
	adc  h                                           ; $6bed: $8c
	ld   h, a                                        ; $6bee: $67
	ld   a, [$000d]                                  ; $6bef: $fa $0d $00
	ld   a, [bc]                                     ; $6bf2: $0a
	dec  c                                           ; $6bf3: $0d
	nop                                              ; $6bf4: $00
	nop                                              ; $6bf5: $00
	rrca                                             ; $6bf6: $0f
	nop                                              ; $6bf7: $00
	ld   bc, $1e09                                   ; $6bf8: $01 $09 $1e
	nop                                              ; $6bfb: $00
	rrca                                             ; $6bfc: $0f
	nop                                              ; $6bfd: $00
	ld   bc, $0201                                   ; $6bfe: $01 $01 $02
	ld   [hl+], a                                    ; $6c01: $22
	ld   l, [hl]                                     ; $6c02: $6e
	halt                                             ; $6c03: $76
	dec  b                                           ; $6c04: $05
	pop  de                                          ; $6c05: $d1
	ld   d, d                                        ; $6c06: $52
	adc  h                                           ; $6c07: $8c
	ld   h, a                                        ; $6c08: $67
	sub  [hl]                                        ; $6c09: $96
	sbc  a                                           ; $6c0a: $9f
	dec  c                                           ; $6c0b: $0d
	nop                                              ; $6c0c: $00
	ld   a, [bc]                                     ; $6c0d: $0a
	inc  e                                           ; $6c0e: $1c
	ld   bc, $0606                                   ; $6c0f: $01 $06 $06
	dec  e                                           ; $6c12: $1d
	ld   b, b                                        ; $6c13: $40
	ld   de, $1103                                   ; $6c14: $11 $03 $11
	ld   bc, $2901                                   ; $6c17: $01 $01 $29
	nop                                              ; $6c1a: $00
	ld   bc, $2202                                   ; $6c1b: $01 $02 $22
	ld   [hl], l                                     ; $6c1e: $75
	ld   h, a                                        ; $6c1f: $67
	ld   e, c                                        ; $6c20: $59
	rst  $38                                         ; $6c21: $ff
	rst  $38                                         ; $6c22: $ff
	dec  c                                           ; $6c23: $0d
	ld   [bc], a                                     ; $6c24: $02
	sbc  d                                           ; $6c25: $9a
	ld   e, e                                        ; $6c26: $5b
	ld   h, [hl]                                     ; $6c27: $66
	sub  c                                           ; $6c28: $91
	ld   a, b                                        ; $6c29: $78
	ld   d, d                                        ; $6c2a: $52
	and  c                                           ; $6c2b: $a1
	ld   [hl], l                                     ; $6c2c: $75
	ld   h, a                                        ; $6c2d: $67
	sub  [hl]                                        ; $6c2e: $96
	ld   a, e                                        ; $6c2f: $7b
	sbc  a                                           ; $6c30: $9f
	dec  c                                           ; $6c31: $0d
	nop                                              ; $6c32: $00
	ld   a, [bc]                                     ; $6c33: $0a
	dec  c                                           ; $6c34: $0d
	nop                                              ; $6c35: $00
	nop                                              ; $6c36: $00
	rrca                                             ; $6c37: $0f
	nop                                              ; $6c38: $00
	ld   bc, $1e09                                   ; $6c39: $01 $09 $1e
	nop                                              ; $6c3c: $00
	nop                                              ; $6c3d: $00
	inc  b                                           ; $6c3e: $04
	add  b                                           ; $6c3f: $80
	jp   nz, $0001                                   ; $6c40: $c2 $01 $00

	jr   nz, jr_04e_6c45                             ; $6c43: $20 $00

jr_04e_6c45:
	ld   c, $1f                                      ; $6c45: $0e $1f
	rrca                                             ; $6c47: $0f
	nop                                              ; $6c48: $00
	ld   bc, $0102                                   ; $6c49: $01 $02 $01
	inc  b                                           ; $6c4c: $04
	ld   c, c                                        ; $6c4d: $49
	ld   h, l                                        ; $6c4e: $65
	ld   [hl], h                                     ; $6c4f: $74
	sbc  c                                           ; $6c50: $99
	and  c                                           ; $6c51: $a1
	ld   [hl], l                                     ; $6c52: $75
	ld   h, a                                        ; $6c53: $67
	ld   e, c                                        ; $6c54: $59
	dec  c                                           ; $6c55: $0d
	rst  JumpTable                                         ; $6c56: $df
	db   $ec                                         ; $6c57: $ec
	and  e                                           ; $6c58: $a3
	ld   h, e                                        ; $6c59: $63
	and  c                                           ; $6c5a: $a1
	ld   sp, hl                                      ; $6c5b: $f9
	dec  c                                           ; $6c5c: $0d
	nop                                              ; $6c5d: $00
	ld   a, [bc]                                     ; $6c5e: $0a
	inc  e                                           ; $6c5f: $1c
	inc  bc                                          ; $6c60: $03
	nop                                              ; $6c61: $00
	nop                                              ; $6c62: $00
	ld   bc, $9750                                   ; $6c63: $01 $50 $97
	sbc  [hl]                                        ; $6c66: $9e
	ld   [$5d00], sp                                 ; $6c67: $08 $00 $5d
	and  c                                           ; $6c6a: $a1
	sbc  a                                           ; $6c6b: $9f
	dec  c                                           ; $6c6c: $0d
	inc  b                                           ; $6c6d: $04
	ld   c, $04                                      ; $6c6e: $0e $04
	ld   d, $02                                      ; $6c70: $16 $02
	xor  b                                           ; $6c72: $a8
	ld   e, d                                        ; $6c73: $5a
	ld   h, c                                        ; $6c74: $61
	sbc  l                                           ; $6c75: $9d
	sbc  d                                           ; $6c76: $9a
	ld   [hl], h                                     ; $6c77: $74
	ld   l, l                                        ; $6c78: $6d
	ld   e, c                                        ; $6c79: $59
	sub  a                                           ; $6c7a: $97
	dec  c                                           ; $6c7b: $0d
	ld   a, b                                        ; $6c7c: $78
	ld   e, b                                        ; $6c7d: $58
	ld   l, e                                        ; $6c7e: $6b
	ld   d, h                                        ; $6c7f: $54
	halt                                             ; $6c80: $76
	dec  b                                           ; $6c81: $05
	pop  de                                          ; $6c82: $d1
	ld   [hl], c                                     ; $6c83: $71
	ld   [hl], h                                     ; $6c84: $74
	rst  $38                                         ; $6c85: $ff
	rst  $38                                         ; $6c86: $ff
	dec  c                                           ; $6c87: $0d
	nop                                              ; $6c88: $00
	ld   a, [bc]                                     ; $6c89: $0a
	add  hl, de                                      ; $6c8a: $19
	dec  b                                           ; $6c8b: $05
	ld   [bc], a                                     ; $6c8c: $02
	inc  bc                                          ; $6c8d: $03
	ld   l, e                                        ; $6c8e: $6b
	inc  b                                           ; $6c8f: $04
	ld   [de], a                                     ; $6c90: $12
	ld   d, d                                        ; $6c91: $52
	adc  h                                           ; $6c92: $8c
	ld   h, a                                        ; $6c93: $67
	nop                                              ; $6c94: $00
	nop                                              ; $6c95: $00
	ld   e, d                                        ; $6c96: $5a
	and  c                                           ; $6c97: $a1
	ld   a, [hl]                                     ; $6c98: $7e
	ld   [hl], c                                     ; $6c99: $71
	ld   [hl], h                                     ; $6c9a: $74
	ld   [bc], a                                     ; $6c9b: $02
	inc  [hl]                                        ; $6c9c: $34
	ld   h, e                                        ; $6c9d: $63
	ld   d, d                                        ; $6c9e: $52
	nop                                              ; $6c9f: $00
	ld   bc, $e507                                   ; $6ca0: $01 $07 $e5
	nop                                              ; $6ca3: $00
	ld   [bc], a                                     ; $6ca4: $02
	inc  bc                                          ; $6ca5: $03
	ld   bc, $2000                                   ; $6ca6: $01 $00 $20
	nop                                              ; $6ca9: $00
	rlca                                             ; $6caa: $07
	ld   [hl], c                                     ; $6cab: $71
	nop                                              ; $6cac: $00
	ld   [bc], a                                     ; $6cad: $02
	inc  bc                                          ; $6cae: $03
	ld   bc, $2001                                   ; $6caf: $01 $01 $20
	nop                                              ; $6cb2: $00
	ld   b, $c2                                      ; $6cb3: $06 $c2
	nop                                              ; $6cb5: $00
	rrca                                             ; $6cb6: $0f
	nop                                              ; $6cb7: $00
	ld   bc, $5a01                                   ; $6cb8: $01 $01 $5a
	and  c                                           ; $6cbb: $a1
	ld   a, [hl]                                     ; $6cbc: $7e
	ld   [hl], c                                     ; $6cbd: $71
	ld   [hl], h                                     ; $6cbe: $74
	ld   [bc], a                                     ; $6cbf: $02
	inc  [hl]                                        ; $6cc0: $34
	ld   h, e                                        ; $6cc1: $63
	ld   d, d                                        ; $6cc2: $52
	sbc  a                                           ; $6cc3: $9f
	dec  c                                           ; $6cc4: $0d
	nop                                              ; $6cc5: $00
	ld   a, [bc]                                     ; $6cc6: $0a
	inc  e                                           ; $6cc7: $1c
	inc  bc                                          ; $6cc8: $03
	inc  b                                           ; $6cc9: $04
	inc  b                                           ; $6cca: $04
	dec  e                                           ; $6ccb: $1d
	ld   b, b                                        ; $6ccc: $40
	inc  de                                          ; $6ccd: $13
	inc  bc                                          ; $6cce: $03
	inc  de                                          ; $6ccf: $13
	ld   bc, $2902                                   ; $6cd0: $01 $02 $29
	nop                                              ; $6cd3: $00
	ld   bc, $2002                                   ; $6cd4: $01 $02 $20
	inc  bc                                          ; $6cd7: $03
	add  d                                           ; $6cd8: $82
	ld   h, [hl]                                     ; $6cd9: $66
	sub  c                                           ; $6cda: $91
	inc  b                                           ; $6cdb: $04
	ld   c, $04                                      ; $6cdc: $0e $04
	adc  h                                           ; $6cde: $8c
	ld   l, [hl]                                     ; $6cdf: $6e
	sbc  l                                           ; $6ce0: $9d
	rst  $38                                         ; $6ce1: $ff
	rst  $38                                         ; $6ce2: $ff
	dec  c                                           ; $6ce3: $0d
	xor  h                                           ; $6ce4: $ac
	push af                                          ; $6ce5: $f5
	bit  7, c                                        ; $6ce6: $cb $79
	ld   [hl], l                                     ; $6ce8: $75
	sub  b                                           ; $6ce9: $90
	ld   l, l                                        ; $6cea: $6d
	ld   a, h                                        ; $6ceb: $7c
	sub  b                                           ; $6cec: $90
	ld   d, h                                        ; $6ced: $54
	dec  c                                           ; $6cee: $0d
	ld   e, c                                        ; $6cef: $59
	ld   h, l                                        ; $6cf0: $65
	sub  a                                           ; $6cf1: $97
	rst  $38                                         ; $6cf2: $ff
	rst  $38                                         ; $6cf3: $ff
	dec  c                                           ; $6cf4: $0d
	nop                                              ; $6cf5: $00
	ld   a, [bc]                                     ; $6cf6: $0a
	rrca                                             ; $6cf7: $0f
	nop                                              ; $6cf8: $00
	ld   bc, $0301                                   ; $6cf9: $01 $01 $03
	add  e                                           ; $6cfc: $83
	dec  b                                           ; $6cfd: $05
	dec  c                                           ; $6cfe: $0d
	ld   h, l                                        ; $6cff: $65
	adc  h                                           ; $6d00: $8c
	ld   h, a                                        ; $6d01: $67
	sbc  a                                           ; $6d02: $9f
	dec  c                                           ; $6d03: $0d
	nop                                              ; $6d04: $00
	ld   a, [bc]                                     ; $6d05: $0a
	nop                                              ; $6d06: $00
	inc  e                                           ; $6d07: $1c
	inc  bc                                          ; $6d08: $03
	nop                                              ; $6d09: $00
	nop                                              ; $6d0a: $00
	ld   bc, $999d                                   ; $6d0b: $01 $9d $99
	ld   d, d                                        ; $6d0e: $52
	ld   e, a                                        ; $6d0f: $5f
	ld   [hl], a                                     ; $6d10: $77
	sbc  [hl]                                        ; $6d11: $9e
	dec  c                                           ; $6d12: $0d
	ld   l, a                                        ; $6d13: $6f
	sub  l                                           ; $6d14: $95
	ld   [hl], c                                     ; $6d15: $71
	halt                                             ; $6d16: $76
	inc  bc                                          ; $6d17: $03
	ld   l, e                                        ; $6d18: $6b
	inc  b                                           ; $6d19: $04
	ld   [de], a                                     ; $6d1a: $12
	ld   [hl], c                                     ; $6d1b: $71
	ld   [hl], h                                     ; $6d1c: $74
	sub  b                                           ; $6d1d: $90
	sub  a                                           ; $6d1e: $97
	ld   d, [hl]                                     ; $6d1f: $56
	sbc  c                                           ; $6d20: $99
	ld   sp, hl                                      ; $6d21: $f9
	dec  c                                           ; $6d22: $0d
	nop                                              ; $6d23: $00
	ld   a, [bc]                                     ; $6d24: $0a
	inc  c                                           ; $6d25: $0c
	dec  bc                                          ; $6d26: $0b
	ld   b, $2a                                      ; $6d27: $06 $2a
	ld   bc, $000f                                   ; $6d29: $01 $0f $00
	ld   bc, $0301                                   ; $6d2c: $01 $01 $03
	ld   l, e                                        ; $6d2f: $6b
	inc  b                                           ; $6d30: $04
	ld   [de], a                                     ; $6d31: $12
	ld   d, d                                        ; $6d32: $52
	adc  h                                           ; $6d33: $8c
	ld   h, a                                        ; $6d34: $67
	sbc  a                                           ; $6d35: $9f
	dec  c                                           ; $6d36: $0d
	rst  JumpTable                                         ; $6d37: $df
	db   $ec                                         ; $6d38: $ec
	and  e                                           ; $6d39: $a3
	ld   h, e                                        ; $6d3a: $63
	and  c                                           ; $6d3b: $a1
	ld   [bc], a                                     ; $6d3c: $02
	jr   nz, jr_04e_6d42                             ; $6d3d: $20 $03

	add  d                                           ; $6d3f: $82
	ld   h, [hl]                                     ; $6d40: $66
	sub  c                                           ; $6d41: $91

jr_04e_6d42:
	dec  c                                           ; $6d42: $0d
	inc  b                                           ; $6d43: $04
	ld   c, $04                                      ; $6d44: $0e $04
	adc  h                                           ; $6d46: $8c
	ld   [hl], l                                     ; $6d47: $75
	ld   h, l                                        ; $6d48: $65
	sub  l                                           ; $6d49: $95
	ld   d, h                                        ; $6d4a: $54
	ld   e, c                                        ; $6d4b: $59
	sub  a                                           ; $6d4c: $97
	rst  $38                                         ; $6d4d: $ff
	rst  $38                                         ; $6d4e: $ff
	dec  c                                           ; $6d4f: $0d
	nop                                              ; $6d50: $00
	ld   a, [bc]                                     ; $6d51: $0a
	inc  e                                           ; $6d52: $1c
	inc  bc                                          ; $6d53: $03
	inc  bc                                          ; $6d54: $03
	inc  bc                                          ; $6d55: $03
	dec  e                                           ; $6d56: $1d
	ld   b, b                                        ; $6d57: $40
	inc  de                                          ; $6d58: $13
	inc  bc                                          ; $6d59: $03
	inc  de                                          ; $6d5a: $13

Jump_04e_6d5b:
	ld   bc, $2802                                   ; $6d5b: $01 $02 $28
	nop                                              ; $6d5e: $00
	ld   bc, $9850                                   ; $6d5f: $01 $50 $98
	ld   e, d                                        ; $6d62: $5a
	halt                                             ; $6d63: $76
	ld   d, h                                        ; $6d64: $54
	sbc  [hl]                                        ; $6d65: $9e
	inc  bc                                          ; $6d66: $03
	ld   e, e                                        ; $6d67: $5b
	ld   e, c                                        ; $6d68: $59
	sbc  c                                           ; $6d69: $99
	sbc  l                                           ; $6d6a: $9d
	sbc  a                                           ; $6d6b: $9f
	dec  c                                           ; $6d6c: $0d
	nop                                              ; $6d6d: $00
	ld   a, [bc]                                     ; $6d6e: $0a
	ld   bc, $9166                                   ; $6d6f: $01 $66 $91
	sbc  [hl]                                        ; $6d72: $9e
	dec  b                                           ; $6d73: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d74: $cf
	adc  a                                           ; $6d75: $8f
	sbc  c                                           ; $6d76: $99
	sbc  l                                           ; $6d77: $9d
	sub  [hl]                                        ; $6d78: $96
	sbc  a                                           ; $6d79: $9f
	dec  c                                           ; $6d7a: $0d
	nop                                              ; $6d7b: $00
	ld   a, [bc]                                     ; $6d7c: $0a
	inc  e                                           ; $6d7d: $1c
	inc  bc                                          ; $6d7e: $03
	nop                                              ; $6d7f: $00
	nop                                              ; $6d80: $00
	ld   bc, $688c                                   ; $6d81: $01 $8c $68
	ld   a, l                                        ; $6d84: $7d
	sbc  [hl]                                        ; $6d85: $9e
	ld   e, c                                        ; $6d86: $59
	and  c                                           ; $6d87: $a1
	ld   a, b                                        ; $6d88: $78
	and  b                                           ; $6d89: $a0
	rst  $38                                         ; $6d8a: $ff
	rst  $38                                         ; $6d8b: $ff
	dec  c                                           ; $6d8c: $0d
	nop                                              ; $6d8d: $00
	ld   a, [bc]                                     ; $6d8e: $0a
	add  hl, de                                      ; $6d8f: $19
	dec  b                                           ; $6d90: $05
	ld   [bc], a                                     ; $6d91: $02
	ld   e, c                                        ; $6d92: $59
	ld   e, a                                        ; $6d93: $5f
	sbc  c                                           ; $6d94: $99
	nop                                              ; $6d95: $00
	nop                                              ; $6d96: $00
	sub  [hl]                                        ; $6d97: $96
	and  c                                           ; $6d98: $a1
	ld   [hl], l                                     ; $6d99: $75

Call_04e_6d9a:
	ld   e, l                                        ; $6d9a: $5d
	sbc  c                                           ; $6d9b: $99
	nop                                              ; $6d9c: $00
	ld   bc, $6e07                                   ; $6d9d: $01 $07 $6e
	ld   bc, $0302                                   ; $6da0: $01 $02 $03
	ld   bc, $2000                                   ; $6da3: $01 $00 $20
	nop                                              ; $6da6: $00
	rlca                                             ; $6da7: $07
	xor  b                                           ; $6da8: $a8
	ld   bc, $0302                                   ; $6da9: $01 $02 $03
	ld   bc, $2001                                   ; $6dac: $01 $01 $20
	nop                                              ; $6daf: $00
	ld   b, $e6                                      ; $6db0: $06 $e6
	ld   bc, $000f                                   ; $6db2: $01 $0f $00
	ld   bc, $6101                                   ; $6db5: $01 $01 $61
	ld   a, h                                        ; $6db8: $7c
	dec  b                                           ; $6db9: $05
	sbc  a                                           ; $6dba: $9f
	inc  bc                                          ; $6dbb: $03
	jr   nc, jr_04e_6e37                             ; $6dbc: $30 $79

	ld   e, c                                        ; $6dbe: $59
	ld   e, a                                        ; $6dbf: $5f
	sbc  c                                           ; $6dc0: $99
	and  c                                           ; $6dc1: $a1
	ld   [hl], l                                     ; $6dc2: $75
	ld   h, a                                        ; $6dc3: $67
	ld   a, e                                        ; $6dc4: $7b
	ld   sp, hl                                      ; $6dc5: $f9
	dec  c                                           ; $6dc6: $0d
	nop                                              ; $6dc7: $00
	ld   a, [bc]                                     ; $6dc8: $0a
	inc  e                                           ; $6dc9: $1c
	inc  bc                                          ; $6dca: $03
	inc  bc                                          ; $6dcb: $03
	inc  bc                                          ; $6dcc: $03
	ld   bc, $546b                                   ; $6dcd: $01 $6b $54
	sub  [hl]                                        ; $6dd0: $96
	sbc  [hl]                                        ; $6dd1: $9e
	ld   a, b                                        ; $6dd2: $78
	ld   e, c                                        ; $6dd3: $59
	ld   a, b                                        ; $6dd4: $78
	ld   e, c                                        ; $6dd5: $59
	inc  bc                                          ; $6dd6: $03
	ld   h, l                                        ; $6dd7: $65
	inc  bc                                          ; $6dd8: $03
	ld   l, e                                        ; $6dd9: $6b
	ld   d, d                                        ; $6dda: $52
	sbc  l                                           ; $6ddb: $9d
	ld   a, e                                        ; $6ddc: $7b
	sbc  a                                           ; $6ddd: $9f
	dec  c                                           ; $6dde: $0d
	nop                                              ; $6ddf: $00
	ld   a, [bc]                                     ; $6de0: $0a
	dec  b                                           ; $6de1: $05
	ld   b, b                                        ; $6de2: $40
	rst  $38                                         ; $6de3: $ff
	inc  bc                                          ; $6de4: $03
	rst  $38                                         ; $6de5: $ff
	ld   bc, $2801                                   ; $6de6: $01 $01 $28
	nop                                              ; $6de9: $00
	ld   b, $0a                                      ; $6dea: $06 $0a
	ld   [bc], a                                     ; $6dec: $02
	rrca                                             ; $6ded: $0f
	nop                                              ; $6dee: $00
	ld   bc, $ac01                                   ; $6def: $01 $01 $ac
	push af                                          ; $6df2: $f5
	bit  4, e                                        ; $6df3: $cb $63
	and  c                                           ; $6df5: $a1
	and  b                                           ; $6df6: $a0
	sub  [hl]                                        ; $6df7: $96
	and  c                                           ; $6df8: $a1
	ld   [hl], l                                     ; $6df9: $75
	dec  b                                           ; $6dfa: $05
	db   $10                                         ; $6dfb: $10
	adc  h                                           ; $6dfc: $8c
	ld   h, a                                        ; $6dfd: $67
	sbc  a                                           ; $6dfe: $9f
	dec  c                                           ; $6dff: $0d
	nop                                              ; $6e00: $00
	ld   a, [bc]                                     ; $6e01: $0a
	inc  e                                           ; $6e02: $1c
	inc  bc                                          ; $6e03: $03
	inc  b                                           ; $6e04: $04
	inc  b                                           ; $6e05: $04
	ld   bc, $f5ac                                   ; $6e06: $01 $ac $f5
	bit  4, [hl]                                     ; $6e09: $cb $66
	sub  c                                           ; $6e0b: $91
	ld   a, b                                        ; $6e0c: $78
	ld   e, l                                        ; $6e0d: $5d
	ld   [hl], h                                     ; $6e0e: $74
	dec  c                                           ; $6e0f: $0d
	db   $fd                                         ; $6e10: $fd
	ld   e, c                                        ; $6e11: $59
	and  c                                           ; $6e12: $a1
	ld   a, b                                        ; $6e13: $78
	cp   $96                                         ; $6e14: $fe $96
	rst  $38                                         ; $6e16: $ff
	rst  $38                                         ; $6e17: $ff
	dec  c                                           ; $6e18: $0d
	ld   d, d                                        ; $6e19: $52
	ld   d, d                                        ; $6e1a: $52

jr_04e_6e1b:
	sbc  l                                           ; $6e1b: $9d
	sbc  [hl]                                        ; $6e1c: $9e
	inc  bc                                          ; $6e1d: $03
	ret  z                                           ; $6e1e: $c8

	ld   e, d                                        ; $6e1f: $5a
	sub  d                                           ; $6e20: $92
	sbc  c                                           ; $6e21: $99
	ld   e, c                                        ; $6e22: $59
	sub  a                                           ; $6e23: $97
	sbc  a                                           ; $6e24: $9f
	dec  c                                           ; $6e25: $0d
	nop                                              ; $6e26: $00
	ld   a, [bc]                                     ; $6e27: $0a
	ld   b, $0a                                      ; $6e28: $06 $0a
	ld   [bc], a                                     ; $6e2a: $02
	inc  e                                           ; $6e2b: $1c
	inc  bc                                          ; $6e2c: $03
	ld   [bc], a                                     ; $6e2d: $02
	ld   [bc], a                                     ; $6e2e: $02
	ld   bc, $4904                                   ; $6e2f: $01 $04 $49
	and  b                                           ; $6e32: $a0
	adc  d                                           ; $6e33: $8a
	ei                                               ; $6e34: $fb
	ld   [hl], c                                     ; $6e35: $71
	halt                                             ; $6e36: $76

jr_04e_6e37:
	ld   h, l                                        ; $6e37: $65
	ld   [hl], h                                     ; $6e38: $74
	sbc  c                                           ; $6e39: $99
	ld   a, h                                        ; $6e3a: $7c
	ld   a, [$520d]                                  ; $6e3b: $fa $0d $52
	ld   d, d                                        ; $6e3e: $52
	sbc  l                                           ; $6e3f: $9d
	sbc  [hl]                                        ; $6e40: $9e
	inc  bc                                          ; $6e41: $03
	ret  z                                           ; $6e42: $c8

	ld   e, d                                        ; $6e43: $5a
	sub  d                                           ; $6e44: $92
	sbc  c                                           ; $6e45: $99
	ld   e, c                                        ; $6e46: $59
	sub  a                                           ; $6e47: $97
	sbc  a                                           ; $6e48: $9f
	dec  c                                           ; $6e49: $0d
	nop                                              ; $6e4a: $00
	ld   a, [bc]                                     ; $6e4b: $0a
	ld   b, $0a                                      ; $6e4c: $06 $0a
	ld   [bc], a                                     ; $6e4e: $02
	inc  e                                           ; $6e4f: $1c
	inc  bc                                          ; $6e50: $03
	nop                                              ; $6e51: $00
	nop                                              ; $6e52: $00
	ld   bc, $6803                                   ; $6e53: $01 $03 $68
	ld   a, l                                        ; $6e56: $7d
	sbc  [hl]                                        ; $6e57: $9e
	ld   e, e                                        ; $6e58: $5b
	sbc  b                                           ; $6e59: $98
	and  b                                           ; $6e5a: $a0
	inc  bc                                          ; $6e5b: $03
	xor  [hl]                                        ; $6e5c: $ae
	ld   [hl], c                                     ; $6e5d: $71
	ld   [hl], h                                     ; $6e5e: $74
	rst  $38                                         ; $6e5f: $ff
	rst  $38                                         ; $6e60: $ff
	dec  c                                           ; $6e61: $0d
	nop                                              ; $6e62: $00
	ld   a, [bc]                                     ; $6e63: $0a
	add  hl, de                                      ; $6e64: $19
	dec  b                                           ; $6e65: $05
	inc  bc                                          ; $6e66: $03
	ld   d, b                                        ; $6e67: $50
	ld   a, b                                        ; $6e68: $78
	and  b                                           ; $6e69: $a0
	ld   d, b                                        ; $6e6a: $50
	ld   e, a                                        ; $6e6b: $5f
	sbc  c                                           ; $6e6c: $99
	nop                                              ; $6e6d: $00
	nop                                              ; $6e6e: $00
	or   b                                           ; $6e6f: $b0
	xor  a                                           ; $6e70: $af
	and  b                                           ; $6e71: $a0
	ld   d, h                                        ; $6e72: $54
	ld   [hl], d                                     ; $6e73: $72
	nop                                              ; $6e74: $00
	ld   bc, $9f05                                   ; $6e75: $01 $05 $9f
	inc  bc                                          ; $6e78: $03
	jr   nc, jr_04e_6e1b                             ; $6e79: $30 $a0

	inc  bc                                          ; $6e7b: $03
	dec  de                                          ; $6e7c: $1b
	sbc  c                                           ; $6e7d: $99
	nop                                              ; $6e7e: $00
	ld   [bc], a                                     ; $6e7f: $02
	rlca                                             ; $6e80: $07
	ld   e, c                                        ; $6e81: $59
	ld   [bc], a                                     ; $6e82: $02
	ld   [bc], a                                     ; $6e83: $02
	inc  bc                                          ; $6e84: $03
	ld   bc, $2000                                   ; $6e85: $01 $00 $20
	nop                                              ; $6e88: $00
	rlca                                             ; $6e89: $07
	adc  a                                           ; $6e8a: $8f
	ld   [bc], a                                     ; $6e8b: $02
	ld   [bc], a                                     ; $6e8c: $02
	inc  bc                                          ; $6e8d: $03
	ld   bc, $2001                                   ; $6e8e: $01 $01 $20
	nop                                              ; $6e91: $00
	rlca                                             ; $6e92: $07
	jp   $0202                                       ; $6e93: $c3 $02 $02


	inc  bc                                          ; $6e96: $03
	ld   bc, $2002                                   ; $6e97: $01 $02 $20
	nop                                              ; $6e9a: $00
	ld   b, $fc                                      ; $6e9b: $06 $fc
	ld   [bc], a                                     ; $6e9d: $02
	rrca                                             ; $6e9e: $0f
	nop                                              ; $6e9f: $00
	ld   bc, $5001                                   ; $6ea0: $01 $01 $50
	ld   a, b                                        ; $6ea3: $78
	and  b                                           ; $6ea4: $a0
	ld   d, b                                        ; $6ea5: $50
	ld   e, a                                        ; $6ea6: $5f
	sbc  c                                           ; $6ea7: $99
	and  c                                           ; $6ea8: $a1
	ld   [hl], l                                     ; $6ea9: $75
	ld   h, a                                        ; $6eaa: $67
	ld   a, e                                        ; $6eab: $7b
	ld   sp, hl                                      ; $6eac: $f9
	dec  c                                           ; $6ead: $0d
	nop                                              ; $6eae: $00
	ld   a, [bc]                                     ; $6eaf: $0a
	inc  e                                           ; $6eb0: $1c

jr_04e_6eb1:
	inc  bc                                          ; $6eb1: $03
	inc  bc                                          ; $6eb2: $03
	inc  bc                                          ; $6eb3: $03
	ld   bc, $546b                                   ; $6eb4: $01 $6b $54
	sub  [hl]                                        ; $6eb7: $96
	sbc  [hl]                                        ; $6eb8: $9e
	ld   a, b                                        ; $6eb9: $78
	ld   e, c                                        ; $6eba: $59
	ld   a, b                                        ; $6ebb: $78
	ld   e, c                                        ; $6ebc: $59
	inc  bc                                          ; $6ebd: $03
	ld   h, l                                        ; $6ebe: $65
	inc  bc                                          ; $6ebf: $03
	ld   l, e                                        ; $6ec0: $6b
	ld   d, d                                        ; $6ec1: $52
	sbc  l                                           ; $6ec2: $9d
	ld   a, e                                        ; $6ec3: $7b
	sbc  a                                           ; $6ec4: $9f
	dec  c                                           ; $6ec5: $0d
	nop                                              ; $6ec6: $00
	ld   a, [bc]                                     ; $6ec7: $0a
	dec  b                                           ; $6ec8: $05
	ld   b, b                                        ; $6ec9: $40
	rst  $38                                         ; $6eca: $ff
	inc  bc                                          ; $6ecb: $03
	rst  $38                                         ; $6ecc: $ff
	ld   bc, $2801                                   ; $6ecd: $01 $01 $28
	nop                                              ; $6ed0: $00
	ld   b, $20                                      ; $6ed1: $06 $20
	inc  bc                                          ; $6ed3: $03
	rrca                                             ; $6ed4: $0f
	nop                                              ; $6ed5: $00
	ld   bc, $b001                                   ; $6ed6: $01 $01 $b0
	xor  a                                           ; $6ed9: $af
	and  b                                           ; $6eda: $a0
	ld   d, h                                        ; $6edb: $54
	ld   [hl], d                                     ; $6edc: $72
	and  c                                           ; $6edd: $a1
	ld   [hl], l                                     ; $6ede: $75
	ld   h, a                                        ; $6edf: $67
	ld   a, e                                        ; $6ee0: $7b
	ld   sp, hl                                      ; $6ee1: $f9
	dec  c                                           ; $6ee2: $0d
	nop                                              ; $6ee3: $00
	ld   a, [bc]                                     ; $6ee4: $0a
	inc  e                                           ; $6ee5: $1c
	inc  bc                                          ; $6ee6: $03
	ld   b, $06                                      ; $6ee7: $06 $06
	ld   bc, $7454                                   ; $6ee9: $01 $54 $74
	sbc  c                                           ; $6eec: $99
	sbc  l                                           ; $6eed: $9d
	ld   e, a                                        ; $6eee: $5f
	ld   a, b                                        ; $6eef: $78
	ld   d, d                                        ; $6ef0: $52
	ld   [hl], l                                     ; $6ef1: $75
	ld   h, l                                        ; $6ef2: $65
	sub  l                                           ; $6ef3: $95
	ld   a, [$520d]                                  ; $6ef4: $fa $0d $52
	ld   d, d                                        ; $6ef7: $52
	sbc  l                                           ; $6ef8: $9d
	sbc  [hl]                                        ; $6ef9: $9e
	inc  bc                                          ; $6efa: $03
	ret  z                                           ; $6efb: $c8

	ld   e, d                                        ; $6efc: $5a
	sub  d                                           ; $6efd: $92
	sbc  c                                           ; $6efe: $99
	ld   e, c                                        ; $6eff: $59
	sub  a                                           ; $6f00: $97
	sbc  a                                           ; $6f01: $9f
	dec  c                                           ; $6f02: $0d
	nop                                              ; $6f03: $00
	ld   a, [bc]                                     ; $6f04: $0a
	ld   b, $20                                      ; $6f05: $06 $20
	inc  bc                                          ; $6f07: $03
	rrca                                             ; $6f08: $0f
	nop                                              ; $6f09: $00
	ld   bc, $0501                                   ; $6f0a: $01 $01 $05
	sbc  a                                           ; $6f0d: $9f
	inc  bc                                          ; $6f0e: $03
	jr   nc, jr_04e_6eb1                             ; $6f0f: $30 $a0

	inc  bc                                          ; $6f11: $03
	dec  de                                          ; $6f12: $1b
	sbc  c                                           ; $6f13: $99
	and  c                                           ; $6f14: $a1
	ld   [hl], l                                     ; $6f15: $75
	ld   h, a                                        ; $6f16: $67
	ld   a, e                                        ; $6f17: $7b
	ld   sp, hl                                      ; $6f18: $f9
	dec  c                                           ; $6f19: $0d
	nop                                              ; $6f1a: $00
	ld   a, [bc]                                     ; $6f1b: $0a
	inc  e                                           ; $6f1c: $1c
	inc  bc                                          ; $6f1d: $03
	inc  b                                           ; $6f1e: $04
	inc  b                                           ; $6f1f: $04
	ld   bc, $1b03                                   ; $6f20: $01 $03 $1b
	sbc  d                                           ; $6f23: $9a
	sbc  c                                           ; $6f24: $99
	sbc  l                                           ; $6f25: $9d
	ld   e, a                                        ; $6f26: $5f
	ld   a, b                                        ; $6f27: $78
	ld   d, d                                        ; $6f28: $52
	ld   [hl], l                                     ; $6f29: $75
	ld   h, l                                        ; $6f2a: $65
	sub  l                                           ; $6f2b: $95
	rst  $38                                         ; $6f2c: $ff
	rst  $38                                         ; $6f2d: $ff
	dec  c                                           ; $6f2e: $0d
	ld   d, d                                        ; $6f2f: $52
	ld   d, d                                        ; $6f30: $52
	sbc  l                                           ; $6f31: $9d
	sbc  [hl]                                        ; $6f32: $9e
	inc  bc                                          ; $6f33: $03
	ret  z                                           ; $6f34: $c8

	ld   e, d                                        ; $6f35: $5a
	sub  d                                           ; $6f36: $92
	sbc  c                                           ; $6f37: $99
	ld   e, c                                        ; $6f38: $59
	sub  a                                           ; $6f39: $97
	sbc  a                                           ; $6f3a: $9f
	dec  c                                           ; $6f3b: $0d
	nop                                              ; $6f3c: $00
	ld   a, [bc]                                     ; $6f3d: $0a
	ld   b, $20                                      ; $6f3e: $06 $20
	inc  bc                                          ; $6f40: $03
	inc  e                                           ; $6f41: $1c
	inc  bc                                          ; $6f42: $03
	ld   [bc], a                                     ; $6f43: $02
	ld   [bc], a                                     ; $6f44: $02
	ld   bc, $4904                                   ; $6f45: $01 $04 $49
	and  b                                           ; $6f48: $a0
	adc  d                                           ; $6f49: $8a
	ei                                               ; $6f4a: $fb
	ld   [hl], c                                     ; $6f4b: $71
	halt                                             ; $6f4c: $76
	ld   h, l                                        ; $6f4d: $65
	ld   [hl], h                                     ; $6f4e: $74
	sbc  c                                           ; $6f4f: $99
	ld   a, h                                        ; $6f50: $7c
	ld   a, [$520d]                                  ; $6f51: $fa $0d $52
	ld   d, d                                        ; $6f54: $52
	sbc  l                                           ; $6f55: $9d
	sbc  [hl]                                        ; $6f56: $9e
	inc  bc                                          ; $6f57: $03
	ret  z                                           ; $6f58: $c8

	ld   e, d                                        ; $6f59: $5a
	sub  d                                           ; $6f5a: $92
	sbc  c                                           ; $6f5b: $99
	ld   e, c                                        ; $6f5c: $59
	sub  a                                           ; $6f5d: $97
	sbc  a                                           ; $6f5e: $9f
	dec  c                                           ; $6f5f: $0d
	nop                                              ; $6f60: $00
	ld   a, [bc]                                     ; $6f61: $0a
	ld   b, $20                                      ; $6f62: $06 $20
	inc  bc                                          ; $6f64: $03
	inc  e                                           ; $6f65: $1c
	inc  bc                                          ; $6f66: $03
	nop                                              ; $6f67: $00
	nop                                              ; $6f68: $00
	ld   bc, $6803                                   ; $6f69: $01 $03 $68
	ld   a, l                                        ; $6f6c: $7d
	ret  nc                                          ; $6f6d: $d0

	db   $ec                                         ; $6f6e: $ec
	xor  l                                           ; $6f6f: $ad
	adc  $a0                                         ; $6f70: $ce $a0
	rst  $38                                         ; $6f72: $ff
	rst  $38                                         ; $6f73: $ff
	dec  c                                           ; $6f74: $0d
	nop                                              ; $6f75: $00
	ld   a, [bc]                                     ; $6f76: $0a
	add  hl, de                                      ; $6f77: $19
	dec  b                                           ; $6f78: $05
	ld   [bc], a                                     ; $6f79: $02
	ld   d, b                                        ; $6f7a: $50
	ld   a, b                                        ; $6f7b: $78
	ld   a, c                                        ; $6f7c: $79
	inc  bc                                          ; $6f7d: $03
	pop  hl                                          ; $6f7e: $e1
	ld   h, a                                        ; $6f7f: $67
	nop                                              ; $6f80: $00
	nop                                              ; $6f81: $00
	sub  [hl]                                        ; $6f82: $96
	ld   h, [hl]                                     ; $6f83: $66
	sbc  b                                           ; $6f84: $98
	adc  h                                           ; $6f85: $8c
	ld   e, l                                        ; $6f86: $5d
	sbc  c                                           ; $6f87: $99
	nop                                              ; $6f88: $00
	ld   bc, $5a07                                   ; $6f89: $01 $07 $5a
	inc  bc                                          ; $6f8c: $03
	ld   [bc], a                                     ; $6f8d: $02
	inc  bc                                          ; $6f8e: $03
	ld   bc, $2000                                   ; $6f8f: $01 $00 $20
	nop                                              ; $6f92: $00
	rlca                                             ; $6f93: $07
	xor  h                                           ; $6f94: $ac
	inc  bc                                          ; $6f95: $03
	ld   [bc], a                                     ; $6f96: $02
	inc  bc                                          ; $6f97: $03
	ld   bc, $2001                                   ; $6f98: $01 $01 $20
	nop                                              ; $6f9b: $00
	ld   b, $ec                                      ; $6f9c: $06 $ec
	inc  bc                                          ; $6f9e: $03
	rrca                                             ; $6f9f: $0f
	nop                                              ; $6fa0: $00
	ld   bc, $5001                                   ; $6fa1: $01 $01 $50
	ld   a, b                                        ; $6fa4: $78
	ld   a, c                                        ; $6fa5: $79
	inc  bc                                          ; $6fa6: $03
	pop  hl                                          ; $6fa7: $e1
	ld   h, a                                        ; $6fa8: $67
	and  c                                           ; $6fa9: $a1
	ld   [hl], l                                     ; $6faa: $75
	ld   h, a                                        ; $6fab: $67
	ld   a, e                                        ; $6fac: $7b
	ld   sp, hl                                      ; $6fad: $f9
	dec  c                                           ; $6fae: $0d
	nop                                              ; $6faf: $00
	ld   a, [bc]                                     ; $6fb0: $0a
	inc  e                                           ; $6fb1: $1c
	inc  bc                                          ; $6fb2: $03
	inc  bc                                          ; $6fb3: $03
	inc  bc                                          ; $6fb4: $03
	ld   bc, $546b                                   ; $6fb5: $01 $6b $54
	sub  [hl]                                        ; $6fb8: $96
	sbc  a                                           ; $6fb9: $9f
	dec  c                                           ; $6fba: $0d
	ld   l, e                                        ; $6fbb: $6b
	ld   d, h                                        ; $6fbc: $54
	ld   h, l                                        ; $6fbd: $65
	ld   l, l                                        ; $6fbe: $6d
	sub  a                                           ; $6fbf: $97
	sbc  [hl]                                        ; $6fc0: $9e
	ld   h, c                                        ; $6fc1: $61
	ld   a, h                                        ; $6fc2: $7c
	dec  b                                           ; $6fc3: $05
	sbc  a                                           ; $6fc4: $9f
	inc  bc                                          ; $6fc5: $03
	jr   nc, jr_04e_703e                             ; $6fc6: $30 $76

	dec  c                                           ; $6fc8: $0d
	nop                                              ; $6fc9: $00
	dec  b                                           ; $6fca: $05
	ld   b, b                                        ; $6fcb: $40
	rst  $38                                         ; $6fcc: $ff
	inc  bc                                          ; $6fcd: $03
	rst  $38                                         ; $6fce: $ff
	ld   bc, $2801                                   ; $6fcf: $01 $01 $28
	nop                                              ; $6fd2: $00
	ld   bc, $7152                                   ; $6fd3: $01 $52 $71
	ld   h, l                                        ; $6fd6: $65
	sub  l                                           ; $6fd7: $95
	ld   a, c                                        ; $6fd8: $79
	dec  b                                           ; $6fd9: $05
	adc  c                                           ; $6fda: $89
	inc  bc                                          ; $6fdb: $03
	call nc, Call_04e_7465                           ; $6fdc: $d4 $65 $74
	ld   e, b                                        ; $6fdf: $58
	ld   d, d                                        ; $6fe0: $52
	ld   [hl], h                                     ; $6fe1: $74
	sbc  a                                           ; $6fe2: $9f
	dec  c                                           ; $6fe3: $0d
	nop                                              ; $6fe4: $00
	ld   a, [bc]                                     ; $6fe5: $0a
	dec  c                                           ; $6fe6: $0d
	nop                                              ; $6fe7: $00
	nop                                              ; $6fe8: $00
	rrca                                             ; $6fe9: $0f
	nop                                              ; $6fea: $00
	ld   bc, $020c                                   ; $6feb: $01 $0c $02
	ld   b, $18                                      ; $6fee: $06 $18
	inc  b                                           ; $6ff0: $04
	rrca                                             ; $6ff1: $0f
	nop                                              ; $6ff2: $00
	ld   bc, $9601                                   ; $6ff3: $01 $01 $96
	ld   h, [hl]                                     ; $6ff6: $66
	sbc  c                                           ; $6ff7: $99
	and  c                                           ; $6ff8: $a1
	ld   [hl], l                                     ; $6ff9: $75
	ld   h, a                                        ; $6ffa: $67
	ld   a, e                                        ; $6ffb: $7b
	sbc  a                                           ; $6ffc: $9f
	dec  c                                           ; $6ffd: $0d
	nop                                              ; $6ffe: $00
	ld   a, [bc]                                     ; $6fff: $0a
	inc  e                                           ; $7000: $1c
	inc  bc                                          ; $7001: $03
	ld   [bc], a                                     ; $7002: $02
	ld   [bc], a                                     ; $7003: $02
	ld   bc, $6696                                   ; $7004: $01 $96 $66
	ld   [hl], c                                     ; $7007: $71
	ld   l, l                                        ; $7008: $6d
	sub  a                                           ; $7009: $97
	dec  c                                           ; $700a: $0d
	inc  bc                                          ; $700b: $03
	xor  [hl]                                        ; $700c: $ae
	ld   d, [hl]                                     ; $700d: $56
	ld   a, b                                        ; $700e: $78
	ld   e, l                                        ; $700f: $5d
	ld   a, b                                        ; $7010: $78
	sbc  c                                           ; $7011: $99
	ld   [hl], l                                     ; $7012: $75
	ld   h, l                                        ; $7013: $65
	sub  l                                           ; $7014: $95
	ld   a, [$520d]                                  ; $7015: $fa $0d $52
	ld   d, d                                        ; $7018: $52
	sbc  l                                           ; $7019: $9d
	sbc  [hl]                                        ; $701a: $9e
	inc  bc                                          ; $701b: $03
	ret  z                                           ; $701c: $c8

	ld   e, d                                        ; $701d: $5a
	sub  d                                           ; $701e: $92
	sbc  c                                           ; $701f: $99
	ld   e, c                                        ; $7020: $59
	sub  a                                           ; $7021: $97
	sbc  a                                           ; $7022: $9f
	dec  c                                           ; $7023: $0d
	nop                                              ; $7024: $00
	ld   a, [bc]                                     ; $7025: $0a
	dec  c                                           ; $7026: $0d
	nop                                              ; $7027: $00
	nop                                              ; $7028: $00
	rrca                                             ; $7029: $0f
	nop                                              ; $702a: $00
	ld   bc, $020c                                   ; $702b: $01 $0c $02
	ld   b, $18                                      ; $702e: $06 $18
	inc  b                                           ; $7030: $04
	inc  e                                           ; $7031: $1c
	inc  bc                                          ; $7032: $03
	ld   [bc], a                                     ; $7033: $02
	ld   [bc], a                                     ; $7034: $02
	ld   bc, $4904                                   ; $7035: $01 $04 $49
	and  b                                           ; $7038: $a0
	adc  d                                           ; $7039: $8a
	ei                                               ; $703a: $fb
	ld   [hl], c                                     ; $703b: $71
	halt                                             ; $703c: $76
	ld   h, l                                        ; $703d: $65

jr_04e_703e:
	ld   [hl], h                                     ; $703e: $74
	sbc  c                                           ; $703f: $99
	ld   a, h                                        ; $7040: $7c
	ld   a, [$520d]                                  ; $7041: $fa $0d $52
	ld   d, d                                        ; $7044: $52
	sbc  l                                           ; $7045: $9d
	sbc  [hl]                                        ; $7046: $9e
	inc  bc                                          ; $7047: $03
	ret  z                                           ; $7048: $c8

	ld   e, d                                        ; $7049: $5a
	sub  d                                           ; $704a: $92
	sbc  c                                           ; $704b: $99
	ld   e, c                                        ; $704c: $59
	sub  a                                           ; $704d: $97
	sbc  a                                           ; $704e: $9f
	dec  c                                           ; $704f: $0d
	nop                                              ; $7050: $00
	ld   a, [bc]                                     ; $7051: $0a
	dec  c                                           ; $7052: $0d
	nop                                              ; $7053: $00
	nop                                              ; $7054: $00
	rrca                                             ; $7055: $0f
	nop                                              ; $7056: $00
	ld   bc, $020c                                   ; $7057: $01 $0c $02
	ld   b, $18                                      ; $705a: $06 $18
	inc  b                                           ; $705c: $04
	ld   c, $1f                                      ; $705d: $0e $1f
	rlca                                             ; $705f: $07
	dec  [hl]                                        ; $7060: $35
	inc  b                                           ; $7061: $04
	inc  bc                                          ; $7062: $03
	rst  $38                                         ; $7063: $ff
	ld   bc, $2003                                   ; $7064: $01 $03 $20
	nop                                              ; $7067: $00
	rlca                                             ; $7068: $07
	ld   l, h                                        ; $7069: $6c
	inc  b                                           ; $706a: $04
	inc  bc                                          ; $706b: $03
	rst  $38                                         ; $706c: $ff
	ld   bc, $2002                                   ; $706d: $01 $02 $20
	nop                                              ; $7070: $00
	rlca                                             ; $7071: $07
	and  b                                           ; $7072: $a0
	inc  b                                           ; $7073: $04
	inc  bc                                          ; $7074: $03
	rst  $38                                         ; $7075: $ff
	ld   bc, $2301                                   ; $7076: $01 $01 $23
	nop                                              ; $7079: $00
	inc  e                                           ; $707a: $1c
	inc  bc                                          ; $707b: $03
	inc  bc                                          ; $707c: $03
	inc  bc                                          ; $707d: $03
	dec  e                                           ; $707e: $1d
	ld   b, b                                        ; $707f: $40
	inc  de                                          ; $7080: $13
	inc  bc                                          ; $7081: $03
	inc  de                                          ; $7082: $13
	ld   bc, $2803                                   ; $7083: $01 $03 $28
	nop                                              ; $7086: $00
	ld   bc, $0458                                   ; $7087: $01 $58 $04
	ld   a, e                                        ; $708a: $7b
	sbc  d                                           ; $708b: $9a
	ld   h, e                                        ; $708c: $63
	adc  h                                           ; $708d: $8c
	sbc  a                                           ; $708e: $9f
	dec  c                                           ; $708f: $0d
	ld   h, a                                        ; $7090: $67
	ld   h, d                                        ; $7091: $62
	ld   e, l                                        ; $7092: $5d
	inc  bc                                          ; $7093: $03
	ld   e, e                                        ; $7094: $5b
	ld   e, c                                        ; $7095: $59
	ld   [hl], c                                     ; $7096: $71
	ld   l, l                                        ; $7097: $6d
	sbc  l                                           ; $7098: $9d
	sbc  a                                           ; $7099: $9f
	dec  c                                           ; $709a: $0d
	nop                                              ; $709b: $00
	ld   a, [bc]                                     ; $709c: $0a
	rlca                                             ; $709d: $07
	dec  b                                           ; $709e: $05
	ld   b, $04                                      ; $709f: $06 $04
	add  b                                           ; $70a1: $80
	add  c                                           ; $70a2: $81
	ld   bc, $20ff                                   ; $70a3: $01 $ff $20
	nop                                              ; $70a6: $00
	rlca                                             ; $70a7: $07
	rst  $10                                         ; $70a8: $d7
	inc  b                                           ; $70a9: $04
	inc  b                                           ; $70aa: $04
	add  b                                           ; $70ab: $80
	add  c                                           ; $70ac: $81
	ld   bc, $2000                                   ; $70ad: $01 $00 $20
	nop                                              ; $70b0: $00
	inc  e                                           ; $70b1: $1c
	inc  bc                                          ; $70b2: $03
	inc  bc                                          ; $70b3: $03
	inc  bc                                          ; $70b4: $03
	dec  e                                           ; $70b5: $1d
	ld   b, b                                        ; $70b6: $40
	inc  de                                          ; $70b7: $13
	inc  bc                                          ; $70b8: $03
	inc  de                                          ; $70b9: $13
	ld   bc, $2801                                   ; $70ba: $01 $01 $28
	nop                                              ; $70bd: $00
	ld   bc, $0458                                   ; $70be: $01 $58 $04
	ld   a, e                                        ; $70c1: $7b
	sbc  d                                           ; $70c2: $9a
	ld   h, e                                        ; $70c3: $63
	adc  h                                           ; $70c4: $8c
	sbc  a                                           ; $70c5: $9f
	dec  c                                           ; $70c6: $0d
	sub  b                                           ; $70c7: $90
	ld   d, h                                        ; $70c8: $54
	ld   d, d                                        ; $70c9: $52
	ld   d, d                                        ; $70ca: $52
	sbc  l                                           ; $70cb: $9d
	sub  [hl]                                        ; $70cc: $96
	sbc  a                                           ; $70cd: $9f
	dec  c                                           ; $70ce: $0d
	nop                                              ; $70cf: $00
	ld   a, [bc]                                     ; $70d0: $0a
	rlca                                             ; $70d1: $07
	dec  b                                           ; $70d2: $05
	ld   b, $04                                      ; $70d3: $06 $04
	add  b                                           ; $70d5: $80
	add  c                                           ; $70d6: $81
	ld   bc, $20ff                                   ; $70d7: $01 $ff $20
	nop                                              ; $70da: $00
	rlca                                             ; $70db: $07
	rst  $10                                         ; $70dc: $d7
	inc  b                                           ; $70dd: $04
	inc  b                                           ; $70de: $04
	add  b                                           ; $70df: $80
	add  c                                           ; $70e0: $81
	ld   bc, $2000                                   ; $70e1: $01 $00 $20
	nop                                              ; $70e4: $00
	inc  e                                           ; $70e5: $1c
	inc  bc                                          ; $70e6: $03
	inc  b                                           ; $70e7: $04
	inc  b                                           ; $70e8: $04
	dec  e                                           ; $70e9: $1d
	ld   b, b                                        ; $70ea: $40
	inc  de                                          ; $70eb: $13
	inc  bc                                          ; $70ec: $03
	inc  de                                          ; $70ed: $13
	ld   bc, $2901                                   ; $70ee: $01 $01 $29
	nop                                              ; $70f1: $00
	ld   bc, $7680                                   ; $70f2: $01 $80 $76
	sbc  b                                           ; $70f5: $98
	ld   [hl], l                                     ; $70f6: $75
	sub  d                                           ; $70f7: $92
	ld   [hl], c                                     ; $70f8: $71
	ld   l, l                                        ; $70f9: $6d
	inc  b                                           ; $70fa: $04
	ld   a, b                                        ; $70fb: $78
	ld   e, d                                        ; $70fc: $5a
	dec  c                                           ; $70fd: $0d
	inc  bc                                          ; $70fe: $03
	ld   [hl], b                                     ; $70ff: $70
	ld   e, c                                        ; $7100: $59
	ld   [hl], c                                     ; $7101: $71
	ld   l, l                                        ; $7102: $6d
	sbc  l                                           ; $7103: $9d
	sbc  a                                           ; $7104: $9f
	dec  c                                           ; $7105: $0d
	nop                                              ; $7106: $00
	ld   a, [bc]                                     ; $7107: $0a
	rlca                                             ; $7108: $07
	dec  b                                           ; $7109: $05
	ld   b, $04                                      ; $710a: $06 $04
	add  b                                           ; $710c: $80
	add  c                                           ; $710d: $81
	ld   bc, $20ff                                   ; $710e: $01 $ff $20
	nop                                              ; $7111: $00
	rlca                                             ; $7112: $07
	rst  $10                                         ; $7113: $d7
	inc  b                                           ; $7114: $04
	inc  b                                           ; $7115: $04
	add  b                                           ; $7116: $80
	add  c                                           ; $7117: $81
	ld   bc, $2000                                   ; $7118: $01 $00 $20
	nop                                              ; $711b: $00
	inc  e                                           ; $711c: $1c
	inc  bc                                          ; $711d: $03
	inc  b                                           ; $711e: $04
	inc  b                                           ; $711f: $04
	ld   bc, $6176                                   ; $7120: $01 $76 $61
	sbc  e                                           ; $7123: $9b
	ld   [hl], l                                     ; $7124: $75
	sbc  [hl]                                        ; $7125: $9e
	ld   a, b                                        ; $7126: $78
	ld   l, d                                        ; $7127: $6a
	inc  b                                           ; $7128: $04
	ld   c, $04                                      ; $7129: $0e $04
	ld   d, $02                                      ; $712b: $16 $02
	xor  b                                           ; $712d: $a8
	ld   e, d                                        ; $712e: $5a
	dec  c                                           ; $712f: $0d
	ld   h, c                                        ; $7130: $61
	sbc  l                                           ; $7131: $9d
	sbc  d                                           ; $7132: $9a
	ld   [hl], h                                     ; $7133: $74
	ld   l, l                                        ; $7134: $6d
	ld   a, h                                        ; $7135: $7c
	ld   e, c                                        ; $7136: $59
	ld   h, l                                        ; $7137: $65
	sub  a                                           ; $7138: $97
	rst  $38                                         ; $7139: $ff
	rst  $38                                         ; $713a: $ff
	ld   sp, hl                                      ; $713b: $f9
	dec  c                                           ; $713c: $0d
	nop                                              ; $713d: $00
	ld   a, [bc]                                     ; $713e: $0a
	add  hl, de                                      ; $713f: $19
	dec  b                                           ; $7140: $05
	ld   [bc], a                                     ; $7141: $02
	inc  bc                                          ; $7142: $03
	sub  h                                           ; $7143: $94
	inc  bc                                          ; $7144: $03
	sbc  c                                           ; $7145: $99
	ld   a, c                                        ; $7146: $79
	ld   l, l                                        ; $7147: $6d
	ld   e, b                                        ; $7148: $58
	sbc  d                                           ; $7149: $9a
	ld   l, l                                        ; $714a: $6d
	halt                                             ; $714b: $76
	ld   e, c                                        ; $714c: $59
	ld   sp, hl                                      ; $714d: $f9
	nop                                              ; $714e: $00
	nop                                              ; $714f: $00
	adc  $bb                                         ; $7150: $ce $bb
	ldh  [$79], a                                    ; $7152: $e0 $79
	sub  d                                           ; $7154: $92
	sub  a                                           ; $7155: $97
	sbc  d                                           ; $7156: $9a
	ld   l, l                                        ; $7157: $6d
	halt                                             ; $7158: $76
	ld   e, c                                        ; $7159: $59
	ld   sp, hl                                      ; $715a: $f9
	nop                                              ; $715b: $00
	ld   bc, $2d07                                   ; $715c: $01 $07 $2d
	dec  b                                           ; $715f: $05
	ld   [bc], a                                     ; $7160: $02
	inc  bc                                          ; $7161: $03
	ld   bc, $2000                                   ; $7162: $01 $00 $20
	nop                                              ; $7165: $00
	rlca                                             ; $7166: $07
	adc  h                                           ; $7167: $8c
	dec  b                                           ; $7168: $05
	ld   [bc], a                                     ; $7169: $02
	inc  bc                                          ; $716a: $03
	ld   bc, $2001                                   ; $716b: $01 $01 $20
	nop                                              ; $716e: $00
	ld   b, $c7                                      ; $716f: $06 $c7
	dec  b                                           ; $7171: $05
	rrca                                             ; $7172: $0f
	nop                                              ; $7173: $00
	ld   bc, $0301                                   ; $7174: $01 $01 $03
	sub  h                                           ; $7177: $94
	inc  bc                                          ; $7178: $03
	sbc  c                                           ; $7179: $99
	ld   a, c                                        ; $717a: $79
	ld   l, l                                        ; $717b: $6d
	ld   e, b                                        ; $717c: $58
	sbc  d                                           ; $717d: $9a
	ld   l, l                                        ; $717e: $6d
	halt                                             ; $717f: $76
	ld   e, c                                        ; $7180: $59
	ld   sp, hl                                      ; $7181: $f9
	dec  c                                           ; $7182: $0d
	nop                                              ; $7183: $00
	ld   a, [bc]                                     ; $7184: $0a
	inc  e                                           ; $7185: $1c
	inc  bc                                          ; $7186: $03
	inc  b                                           ; $7187: $04
	inc  b                                           ; $7188: $04
	ld   bc, $546b                                   ; $7189: $01 $6b $54
	ld   a, e                                        ; $718c: $7b
	rst  $38                                         ; $718d: $ff
	rst  $38                                         ; $718e: $ff
	ld   [bc], a                                     ; $718f: $02
	and  l                                           ; $7190: $a5
	inc  b                                           ; $7191: $04

Jump_04e_7192:
	add  hl, hl                                      ; $7192: $29
	ld   e, c                                        ; $7193: $59
	sub  a                                           ; $7194: $97
	dec  c                                           ; $7195: $0d
	ld   l, a                                        ; $7196: $6f
	sub  c                                           ; $7197: $91
	and  c                                           ; $7198: $a1
	halt                                             ; $7199: $76
	inc  b                                           ; $719a: $04
	or   h                                           ; $719b: $b4
	ld   [bc], a                                     ; $719c: $02
	ld   l, b                                        ; $719d: $68
	ld   h, l                                        ; $719e: $65
	ld   a, b                                        ; $719f: $78
	ld   d, d                                        ; $71a0: $52
	halt                                             ; $71a1: $76
	dec  c                                           ; $71a2: $0d
	ld   d, d                                        ; $71a3: $52
	ld   e, a                                        ; $71a4: $5f
	ld   a, b                                        ; $71a5: $78
	ld   d, d                                        ; $71a6: $52
	sbc  l                                           ; $71a7: $9d
	ld   a, e                                        ; $71a8: $7b
	sbc  a                                           ; $71a9: $9f
	dec  c                                           ; $71aa: $0d
	nop                                              ; $71ab: $00
	ld   a, [bc]                                     ; $71ac: $0a
	inc  e                                           ; $71ad: $1c
	inc  bc                                          ; $71ae: $03
	nop                                              ; $71af: $00
	nop                                              ; $71b0: $00
	ld   bc, $9166                                   ; $71b1: $01 $66 $91
	sbc  [hl]                                        ; $71b4: $9e
	ld   [$5d00], sp                                 ; $71b5: $08 $00 $5d
	and  c                                           ; $71b8: $a1
	sbc  a                                           ; $71b9: $9f
	dec  c                                           ; $71ba: $0d
	ld   e, b                                        ; $71bb: $58
	inc  b                                           ; $71bc: $04
	ld   a, e                                        ; $71bd: $7b
	sbc  d                                           ; $71be: $9a
	ld   h, e                                        ; $71bf: $63
	adc  h                                           ; $71c0: $8c
	ld   [hl], l                                     ; $71c1: $75
	ld   h, l                                        ; $71c2: $65
	ld   l, l                                        ; $71c3: $6d
	sbc  a                                           ; $71c4: $9f
	dec  c                                           ; $71c5: $0d
	nop                                              ; $71c6: $00
	ld   a, [bc]                                     ; $71c7: $0a
	dec  c                                           ; $71c8: $0d
	nop                                              ; $71c9: $00
	nop                                              ; $71ca: $00
	rrca                                             ; $71cb: $0f
	nop                                              ; $71cc: $00
	ld   bc, $1e09                                   ; $71cd: $01 $09 $1e
	nop                                              ; $71d0: $00
	rrca                                             ; $71d1: $0f
	nop                                              ; $71d2: $00
	ld   bc, $ce01                                   ; $71d3: $01 $01 $ce
	cp   e                                           ; $71d6: $bb
	ldh  [$79], a                                    ; $71d7: $e0 $79
	sub  d                                           ; $71d9: $92
	sub  a                                           ; $71da: $97
	sbc  d                                           ; $71db: $9a
	ld   l, l                                        ; $71dc: $6d
	halt                                             ; $71dd: $76
	ld   e, c                                        ; $71de: $59
	ld   sp, hl                                      ; $71df: $f9
	dec  c                                           ; $71e0: $0d
	nop                                              ; $71e1: $00
	ld   a, [bc]                                     ; $71e2: $0a
	inc  e                                           ; $71e3: $1c
	inc  bc                                          ; $71e4: $03
	inc  b                                           ; $71e5: $04
	inc  b                                           ; $71e6: $04
	dec  e                                           ; $71e7: $1d
	ld   b, b                                        ; $71e8: $40
	inc  de                                          ; $71e9: $13
	inc  bc                                          ; $71ea: $03
	inc  de                                          ; $71eb: $13
	ld   bc, $2901                                   ; $71ec: $01 $01 $29
	nop                                              ; $71ef: $00
	ld   bc, $bbce                                   ; $71f0: $01 $ce $bb
	ldh  [$5a], a                                    ; $71f3: $e0 $5a
	inc  b                                           ; $71f5: $04
	ld   c, $04                                      ; $71f6: $0e $04
	ld   d, $02                                      ; $71f8: $16 $02
	xor  b                                           ; $71fa: $a8
	and  b                                           ; $71fb: $a0
	dec  c                                           ; $71fc: $0d
	ld   h, c                                        ; $71fd: $61
	sbc  l                                           ; $71fe: $9d
	ld   h, a                                        ; $71ff: $67
	sbc  l                                           ; $7200: $9d
	ld   e, a                                        ; $7201: $5f
	ld   a, b                                        ; $7202: $78
	ld   d, d                                        ; $7203: $52
	ld   [hl], l                                     ; $7204: $75
	ld   h, l                                        ; $7205: $65
	sub  l                                           ; $7206: $95
	rst  $38                                         ; $7207: $ff
	rst  $38                                         ; $7208: $ff
	dec  c                                           ; $7209: $0d
	nop                                              ; $720a: $00
	ld   a, [bc]                                     ; $720b: $0a
	inc  e                                           ; $720c: $1c
	inc  bc                                          ; $720d: $03
	inc  b                                           ; $720e: $04
	inc  b                                           ; $720f: $04
	ld   bc, $9e8c                                   ; $7210: $01 $8c $9e
	ld   d, d                                        ; $7213: $52
	ld   d, d                                        ; $7214: $52
	sbc  l                                           ; $7215: $9d
	sbc  a                                           ; $7216: $9f
	dec  c                                           ; $7217: $0d
	ld   [bc], a                                     ; $7218: $02
	xor  d                                           ; $7219: $aa
	ld   [hl], l                                     ; $721a: $75
	inc  bc                                          ; $721b: $03
	cp   $87                                         ; $721c: $fe $87
	sbc  c                                           ; $721e: $99
	ld   e, c                                        ; $721f: $59
	sub  a                                           ; $7220: $97
	rst  $38                                         ; $7221: $ff
	rst  $38                                         ; $7222: $ff
	dec  c                                           ; $7223: $0d
	nop                                              ; $7224: $00
	ld   a, [bc]                                     ; $7225: $0a
	inc  e                                           ; $7226: $1c
	inc  bc                                          ; $7227: $03
	nop                                              ; $7228: $00
	nop                                              ; $7229: $00
	ld   bc, $9166                                   ; $722a: $01 $66 $91
	sbc  [hl]                                        ; $722d: $9e
	ld   [$5d00], sp                                 ; $722e: $08 $00 $5d
	and  c                                           ; $7231: $a1
	sbc  a                                           ; $7232: $9f
	dec  c                                           ; $7233: $0d
	ld   e, b                                        ; $7234: $58
	inc  b                                           ; $7235: $04
	ld   a, e                                        ; $7236: $7b
	sbc  d                                           ; $7237: $9a
	ld   h, e                                        ; $7238: $63
	adc  h                                           ; $7239: $8c
	ld   [hl], l                                     ; $723a: $75
	ld   h, l                                        ; $723b: $65
	ld   l, l                                        ; $723c: $6d
	sbc  a                                           ; $723d: $9f
	dec  c                                           ; $723e: $0d
	nop                                              ; $723f: $00
	ld   a, [bc]                                     ; $7240: $0a
	dec  c                                           ; $7241: $0d
	nop                                              ; $7242: $00
	nop                                              ; $7243: $00
	rrca                                             ; $7244: $0f
	nop                                              ; $7245: $00
	ld   bc, $1e09                                   ; $7246: $01 $09 $1e
	nop                                              ; $7249: $00
	inc  e                                           ; $724a: $1c
	inc  bc                                          ; $724b: $03
	inc  b                                           ; $724c: $04
	inc  b                                           ; $724d: $04
	ld   bc, $6176                                   ; $724e: $01 $76 $61
	sbc  e                                           ; $7251: $9b
	ld   [hl], l                                     ; $7252: $75
	sbc  [hl]                                        ; $7253: $9e
	ld   a, b                                        ; $7254: $78
	ld   l, d                                        ; $7255: $6a
	inc  b                                           ; $7256: $04
	ld   c, $04                                      ; $7257: $0e $04
	ld   d, $02                                      ; $7259: $16 $02
	xor  b                                           ; $725b: $a8
	ld   e, d                                        ; $725c: $5a
	dec  c                                           ; $725d: $0d
	ld   h, c                                        ; $725e: $61
	sbc  l                                           ; $725f: $9d
	sbc  d                                           ; $7260: $9a
	ld   [hl], h                                     ; $7261: $74
	ld   l, l                                        ; $7262: $6d
	ld   a, h                                        ; $7263: $7c
	ld   e, c                                        ; $7264: $59
	ld   h, l                                        ; $7265: $65
	sub  a                                           ; $7266: $97
	rst  $38                                         ; $7267: $ff
	rst  $38                                         ; $7268: $ff
	ld   sp, hl                                      ; $7269: $f9
	dec  c                                           ; $726a: $0d
	nop                                              ; $726b: $00
	ld   a, [bc]                                     ; $726c: $0a
	add  hl, de                                      ; $726d: $19
	dec  b                                           ; $726e: $05
	inc  bc                                          ; $726f: $03
	inc  bc                                          ; $7270: $03
	sub  h                                           ; $7271: $94
	inc  bc                                          ; $7272: $03
	sbc  c                                           ; $7273: $99
	ld   a, c                                        ; $7274: $79
	ld   l, l                                        ; $7275: $6d
	ld   e, b                                        ; $7276: $58
	sbc  d                                           ; $7277: $9a
	ld   l, l                                        ; $7278: $6d
	halt                                             ; $7279: $76
	ld   e, c                                        ; $727a: $59
	ld   sp, hl                                      ; $727b: $f9
	nop                                              ; $727c: $00
	nop                                              ; $727d: $00
	adc  $bb                                         ; $727e: $ce $bb
	ldh  [$79], a                                    ; $7280: $e0 $79
	sub  d                                           ; $7282: $92
	sub  a                                           ; $7283: $97
	sbc  d                                           ; $7284: $9a
	ld   l, l                                        ; $7285: $6d
	halt                                             ; $7286: $76
	ld   e, c                                        ; $7287: $59
	ld   sp, hl                                      ; $7288: $f9
	nop                                              ; $7289: $00
	ld   bc, $8b03                                   ; $728a: $01 $03 $8b
	ld   a, l                                        ; $728d: $7d
	rst  $38                                         ; $728e: $ff
	rst  $38                                         ; $728f: $ff
	nop                                              ; $7290: $00
	ld   [bc], a                                     ; $7291: $02
	rlca                                             ; $7292: $07
	ld   l, e                                        ; $7293: $6b
	ld   b, $02                                      ; $7294: $06 $02
	inc  bc                                          ; $7296: $03
	ld   bc, $2000                                   ; $7297: $01 $00 $20
	nop                                              ; $729a: $00
	rlca                                             ; $729b: $07
	jp   z, $0206                                    ; $729c: $ca $06 $02

	inc  bc                                          ; $729f: $03
	ld   bc, $2001                                   ; $72a0: $01 $01 $20
	nop                                              ; $72a3: $00
	rlca                                             ; $72a4: $07
	ld   b, e                                        ; $72a5: $43
	rlca                                             ; $72a6: $07
	ld   [bc], a                                     ; $72a7: $02
	inc  bc                                          ; $72a8: $03
	ld   bc, $2002                                   ; $72a9: $01 $02 $20
	nop                                              ; $72ac: $00
	ld   b, $05                                      ; $72ad: $06 $05
	rlca                                             ; $72af: $07
	rrca                                             ; $72b0: $0f
	nop                                              ; $72b1: $00
	ld   bc, $0301                                   ; $72b2: $01 $01 $03
	sub  h                                           ; $72b5: $94
	inc  bc                                          ; $72b6: $03
	sbc  c                                           ; $72b7: $99
	ld   a, c                                        ; $72b8: $79
	ld   l, l                                        ; $72b9: $6d
	ld   e, b                                        ; $72ba: $58
	sbc  d                                           ; $72bb: $9a
	ld   l, l                                        ; $72bc: $6d
	halt                                             ; $72bd: $76
	ld   e, c                                        ; $72be: $59
	ld   sp, hl                                      ; $72bf: $f9
	dec  c                                           ; $72c0: $0d
	nop                                              ; $72c1: $00
	ld   a, [bc]                                     ; $72c2: $0a
	inc  e                                           ; $72c3: $1c
	inc  bc                                          ; $72c4: $03
	inc  b                                           ; $72c5: $04
	inc  b                                           ; $72c6: $04
	ld   bc, $546b                                   ; $72c7: $01 $6b $54
	ld   a, e                                        ; $72ca: $7b
	rst  $38                                         ; $72cb: $ff
	rst  $38                                         ; $72cc: $ff
	ld   [bc], a                                     ; $72cd: $02
	and  l                                           ; $72ce: $a5
	inc  b                                           ; $72cf: $04
	add  hl, hl                                      ; $72d0: $29
	ld   e, c                                        ; $72d1: $59
	sub  a                                           ; $72d2: $97
	dec  c                                           ; $72d3: $0d
	ld   l, a                                        ; $72d4: $6f
	sub  c                                           ; $72d5: $91
	and  c                                           ; $72d6: $a1
	halt                                             ; $72d7: $76
	inc  b                                           ; $72d8: $04
	or   h                                           ; $72d9: $b4
	ld   [bc], a                                     ; $72da: $02
	ld   l, b                                        ; $72db: $68
	ld   h, l                                        ; $72dc: $65
	ld   a, b                                        ; $72dd: $78
	ld   d, d                                        ; $72de: $52
	halt                                             ; $72df: $76
	dec  c                                           ; $72e0: $0d
	ld   d, d                                        ; $72e1: $52
	ld   e, a                                        ; $72e2: $5f
	ld   a, b                                        ; $72e3: $78
	ld   d, d                                        ; $72e4: $52
	sbc  l                                           ; $72e5: $9d
	ld   a, e                                        ; $72e6: $7b
	sbc  a                                           ; $72e7: $9f
	dec  c                                           ; $72e8: $0d
	nop                                              ; $72e9: $00
	ld   a, [bc]                                     ; $72ea: $0a
	inc  e                                           ; $72eb: $1c
	inc  bc                                          ; $72ec: $03
	nop                                              ; $72ed: $00
	nop                                              ; $72ee: $00
	ld   bc, $9166                                   ; $72ef: $01 $66 $91
	sbc  [hl]                                        ; $72f2: $9e
	ld   [$5d00], sp                                 ; $72f3: $08 $00 $5d
	and  c                                           ; $72f6: $a1
	sbc  a                                           ; $72f7: $9f
	dec  c                                           ; $72f8: $0d
	ld   e, b                                        ; $72f9: $58
	inc  b                                           ; $72fa: $04
	ld   a, e                                        ; $72fb: $7b
	sbc  d                                           ; $72fc: $9a
	ld   h, e                                        ; $72fd: $63
	adc  h                                           ; $72fe: $8c
	ld   [hl], l                                     ; $72ff: $75
	ld   h, l                                        ; $7300: $65
	ld   l, l                                        ; $7301: $6d
	sbc  a                                           ; $7302: $9f
	dec  c                                           ; $7303: $0d
	nop                                              ; $7304: $00
	ld   a, [bc]                                     ; $7305: $0a
	dec  c                                           ; $7306: $0d
	nop                                              ; $7307: $00
	nop                                              ; $7308: $00
	rrca                                             ; $7309: $0f
	nop                                              ; $730a: $00
	ld   bc, $1e09                                   ; $730b: $01 $09 $1e
	nop                                              ; $730e: $00
	rrca                                             ; $730f: $0f
	nop                                              ; $7310: $00
	ld   bc, $ce01                                   ; $7311: $01 $01 $ce
	cp   e                                           ; $7314: $bb
	ldh  [$79], a                                    ; $7315: $e0 $79
	sub  d                                           ; $7317: $92
	sub  a                                           ; $7318: $97
	sbc  d                                           ; $7319: $9a
	ld   l, l                                        ; $731a: $6d
	halt                                             ; $731b: $76
	ld   e, c                                        ; $731c: $59
	ld   sp, hl                                      ; $731d: $f9
	dec  c                                           ; $731e: $0d
	nop                                              ; $731f: $00
	ld   a, [bc]                                     ; $7320: $0a
	inc  e                                           ; $7321: $1c
	inc  bc                                          ; $7322: $03
	inc  b                                           ; $7323: $04
	inc  b                                           ; $7324: $04
	dec  e                                           ; $7325: $1d
	ld   b, b                                        ; $7326: $40
	inc  de                                          ; $7327: $13
	inc  bc                                          ; $7328: $03
	inc  de                                          ; $7329: $13
	ld   bc, $2901                                   ; $732a: $01 $01 $29
	nop                                              ; $732d: $00
	ld   bc, $bbce                                   ; $732e: $01 $ce $bb
	ldh  [$5a], a                                    ; $7331: $e0 $5a
	inc  b                                           ; $7333: $04
	ld   c, $04                                      ; $7334: $0e $04
	ld   d, $02                                      ; $7336: $16 $02
	xor  b                                           ; $7338: $a8
	and  b                                           ; $7339: $a0
	dec  c                                           ; $733a: $0d
	ld   h, c                                        ; $733b: $61
	sbc  l                                           ; $733c: $9d
	ld   h, a                                        ; $733d: $67
	sbc  l                                           ; $733e: $9d
	ld   e, a                                        ; $733f: $5f
	ld   a, b                                        ; $7340: $78
	ld   d, d                                        ; $7341: $52
	ld   [hl], l                                     ; $7342: $75
	ld   h, l                                        ; $7343: $65
	sub  l                                           ; $7344: $95
	rst  $38                                         ; $7345: $ff
	rst  $38                                         ; $7346: $ff
	dec  c                                           ; $7347: $0d
	nop                                              ; $7348: $00
	ld   a, [bc]                                     ; $7349: $0a
	inc  e                                           ; $734a: $1c
	inc  bc                                          ; $734b: $03
	inc  b                                           ; $734c: $04
	inc  b                                           ; $734d: $04
	ld   bc, $9e8c                                   ; $734e: $01 $8c $9e
	ld   d, d                                        ; $7351: $52
	ld   d, d                                        ; $7352: $52
	sbc  l                                           ; $7353: $9d
	sbc  a                                           ; $7354: $9f
	dec  c                                           ; $7355: $0d
	ld   [bc], a                                     ; $7356: $02
	xor  d                                           ; $7357: $aa
	ld   [hl], l                                     ; $7358: $75
	inc  bc                                          ; $7359: $03
	cp   $87                                         ; $735a: $fe $87
	sbc  c                                           ; $735c: $99
	ld   e, c                                        ; $735d: $59
	sub  a                                           ; $735e: $97
	rst  $38                                         ; $735f: $ff
	rst  $38                                         ; $7360: $ff
	dec  c                                           ; $7361: $0d
	nop                                              ; $7362: $00
	ld   a, [bc]                                     ; $7363: $0a
	inc  e                                           ; $7364: $1c
	inc  bc                                          ; $7365: $03
	nop                                              ; $7366: $00
	nop                                              ; $7367: $00
	ld   bc, $9166                                   ; $7368: $01 $66 $91
	sbc  [hl]                                        ; $736b: $9e
	ld   [$5d00], sp                                 ; $736c: $08 $00 $5d
	and  c                                           ; $736f: $a1
	sbc  a                                           ; $7370: $9f
	dec  c                                           ; $7371: $0d
	ld   e, b                                        ; $7372: $58
	inc  b                                           ; $7373: $04
	ld   a, e                                        ; $7374: $7b
	sbc  d                                           ; $7375: $9a
	ld   h, e                                        ; $7376: $63
	adc  h                                           ; $7377: $8c
	ld   [hl], l                                     ; $7378: $75
	ld   h, l                                        ; $7379: $65
	ld   l, l                                        ; $737a: $6d
	sbc  a                                           ; $737b: $9f
	dec  c                                           ; $737c: $0d
	nop                                              ; $737d: $00
	ld   a, [bc]                                     ; $737e: $0a
	dec  c                                           ; $737f: $0d
	nop                                              ; $7380: $00
	nop                                              ; $7381: $00
	rrca                                             ; $7382: $0f
	nop                                              ; $7383: $00
	ld   bc, $1e09                                   ; $7384: $01 $09 $1e
	nop                                              ; $7387: $00
	rrca                                             ; $7388: $0f
	nop                                              ; $7389: $00
	ld   bc, $0301                                   ; $738a: $01 $01 $03
	adc  e                                           ; $738d: $8b
	ld   a, l                                        ; $738e: $7d
	rst  $38                                         ; $738f: $ff
	rst  $38                                         ; $7390: $ff
	dec  c                                           ; $7391: $0d
	xor  h                                           ; $7392: $ac
	push af                                          ; $7393: $f5
	bit  4, e                                        ; $7394: $cb $63
	and  c                                           ; $7396: $a1
	ld   e, d                                        ; $7397: $5a
	ld   h, c                                        ; $7398: $61
	sbc  l                                           ; $7399: $9d
	ld   h, l                                        ; $739a: $65
	ld   l, l                                        ; $739b: $6d
	and  c                                           ; $739c: $a1
	ld   [hl], l                                     ; $739d: $75
	ld   h, a                                        ; $739e: $67
	sbc  a                                           ; $739f: $9f
	dec  c                                           ; $73a0: $0d
	nop                                              ; $73a1: $00
	ld   a, [bc]                                     ; $73a2: $0a
	inc  e                                           ; $73a3: $1c
	inc  bc                                          ; $73a4: $03
	inc  b                                           ; $73a5: $04
	inc  b                                           ; $73a6: $04
	ld   bc, $f5ac                                   ; $73a7: $01 $ac $f5
	bit  3, d                                        ; $73aa: $cb $5a
	ld   sp, hl                                      ; $73ac: $f9
	dec  c                                           ; $73ad: $0d
	sub  b                                           ; $73ae: $90
	ld   d, h                                        ; $73af: $54
	rst  $38                                         ; $73b0: $ff
	rst  $38                                         ; $73b1: $ff
	ld   h, l                                        ; $73b2: $65
	ld   e, c                                        ; $73b3: $59
	ld   l, l                                        ; $73b4: $6d
	ld   a, b                                        ; $73b5: $78
	ld   d, d                                        ; $73b6: $52
	sbc  l                                           ; $73b7: $9d
	ld   a, e                                        ; $73b8: $7b
	sbc  a                                           ; $73b9: $9f
	dec  c                                           ; $73ba: $0d
	ld   [bc], a                                     ; $73bb: $02
	xor  d                                           ; $73bc: $aa
	ld   [hl], l                                     ; $73bd: $75
	inc  bc                                          ; $73be: $03
	and  $02                                         ; $73bf: $e6 $02
	ld   b, $65                                      ; $73c1: $06 $65
	ld   [hl], h                                     ; $73c3: $74
	ld   e, b                                        ; $73c4: $58
	ld   e, l                                        ; $73c5: $5d
	sbc  l                                           ; $73c6: $9d
	sbc  a                                           ; $73c7: $9f
	dec  c                                           ; $73c8: $0d
	nop                                              ; $73c9: $00
	ld   a, [bc]                                     ; $73ca: $0a
	inc  e                                           ; $73cb: $1c
	inc  bc                                          ; $73cc: $03
	nop                                              ; $73cd: $00
	nop                                              ; $73ce: $00
	ld   bc, $9166                                   ; $73cf: $01 $66 $91
	sbc  [hl]                                        ; $73d2: $9e
	ld   [$5d00], sp                                 ; $73d3: $08 $00 $5d
	and  c                                           ; $73d6: $a1
	sbc  a                                           ; $73d7: $9f
	dec  c                                           ; $73d8: $0d
	ld   e, b                                        ; $73d9: $58
	inc  b                                           ; $73da: $04
	ld   a, e                                        ; $73db: $7b
	sbc  d                                           ; $73dc: $9a
	ld   h, e                                        ; $73dd: $63
	adc  h                                           ; $73de: $8c
	ld   [hl], l                                     ; $73df: $75
	ld   h, l                                        ; $73e0: $65
	ld   l, l                                        ; $73e1: $6d
	sbc  a                                           ; $73e2: $9f
	dec  c                                           ; $73e3: $0d
	nop                                              ; $73e4: $00
	ld   a, [bc]                                     ; $73e5: $0a
	dec  c                                           ; $73e6: $0d
	nop                                              ; $73e7: $00
	nop                                              ; $73e8: $00
	rrca                                             ; $73e9: $0f
	nop                                              ; $73ea: $00
	ld   bc, $1e09                                   ; $73eb: $01 $09 $1e
	nop                                              ; $73ee: $00
	nop                                              ; $73ef: $00
	inc  b                                           ; $73f0: $04
	add  b                                           ; $73f1: $80
	ret  nz                                          ; $73f2: $c0

	ld   bc, $2000                                   ; $73f3: $01 $00 $20
	nop                                              ; $73f6: $00
	inc  e                                           ; $73f7: $1c
	rrca                                             ; $73f8: $0f
	ld   bc, $0201                                   ; $73f9: $01 $01 $02
	ld   bc, $5092                                   ; $73fc: $01 $92 $50
	sbc  [hl]                                        ; $73ff: $9e
	ld   [$5d00], sp                                 ; $7400: $08 $00 $5d
	and  c                                           ; $7403: $a1
	sbc  a                                           ; $7404: $9f
	dec  c                                           ; $7405: $0d
	nop                                              ; $7406: $00
	ld   a, [bc]                                     ; $7407: $0a
	dec  b                                           ; $7408: $05
	add  b                                           ; $7409: $80
	ld   de, $0101                                   ; $740a: $11 $01 $01
	nop                                              ; $740d: $00
	rlca                                             ; $740e: $07
	ld   d, a                                        ; $740f: $57
	nop                                              ; $7410: $00
	inc  b                                           ; $7411: $04
	add  b                                           ; $7412: $80
	rst  ToBoot                                         ; $7413: $c7
	ld   bc, $20ff                                   ; $7414: $01 $ff $20
	nop                                              ; $7417: $00
	dec  b                                           ; $7418: $05
	add  b                                           ; $7419: $80
	rst  ToBoot                                         ; $741a: $c7
	ld   bc, $0001                                   ; $741b: $01 $01 $00
	ld   bc, $7305                                   ; $741e: $01 $05 $73
	ld   a, l                                        ; $7421: $7d
	ld   [bc], a                                     ; $7422: $02
	ld   d, b                                        ; $7423: $50
	inc  bc                                          ; $7424: $03
	ld   e, b                                        ; $7425: $58
	ld   b, $2d                                      ; $7426: $06 $2d
	ld   [bc], a                                     ; $7428: $02
	jr   nz, @+$01                                   ; $7429: $20 $ff

	rst  $38                                         ; $742b: $ff
	dec  c                                           ; $742c: $0d
	inc  b                                           ; $742d: $04
	ld   c, $03                                      ; $742e: $0e $03
	sub  b                                           ; $7430: $90
	halt                                             ; $7431: $76
	ld   a, l                                        ; $7432: $7d
	inc  b                                           ; $7433: $04
	ld   c, $7c                                      ; $7434: $0e $7c
	inc  bc                                          ; $7436: $03
	sub  d                                           ; $7437: $92
	inc  b                                           ; $7438: $04
	ld   [$9f6e], a                                  ; $7439: $ea $6e $9f
	dec  c                                           ; $743c: $0d
	ld   [bc], a                                     ; $743d: $02
	dec  bc                                          ; $743e: $0b
	ld   [bc], a                                     ; $743f: $02
	xor  d                                           ; $7440: $aa
	sbc  [hl]                                        ; $7441: $9e
	sub  [hl]                                        ; $7442: $96
	sbc  e                                           ; $7443: $9b
	ld   h, l                                        ; $7444: $65
	ld   e, l                                        ; $7445: $5d
	ld   a, b                                        ; $7446: $78
	sbc  a                                           ; $7447: $9f
	dec  c                                           ; $7448: $0d
	nop                                              ; $7449: $00
	ld   a, [bc]                                     ; $744a: $0a
	ld   b, $81                                      ; $744b: $06 $81
	nop                                              ; $744d: $00
	ld   bc, $7305                                   ; $744e: $01 $05 $73
	ld   a, l                                        ; $7451: $7d
	ld   [bc], a                                     ; $7452: $02
	ld   d, b                                        ; $7453: $50
	inc  bc                                          ; $7454: $03
	ld   e, b                                        ; $7455: $58
	ld   b, $2d                                      ; $7456: $06 $2d
	ld   [bc], a                                     ; $7458: $02
	jr   nz, @+$01                                   ; $7459: $20 $ff

	rst  $38                                         ; $745b: $ff
	dec  c                                           ; $745c: $0d
	ld   e, b                                        ; $745d: $58
	ld   [hl], c                                     ; $745e: $71
	halt                                             ; $745f: $76
	sbc  [hl]                                        ; $7460: $9e
	inc  bc                                          ; $7461: $03
	sub  h                                           ; $7462: $94
	dec  b                                           ; $7463: $05
	inc  sp                                          ; $7464: $33

Call_04e_7465:
Jump_04e_7465:
	dec  b                                           ; $7465: $05
	ld   b, a                                        ; $7466: $47
	dec  b                                           ; $7467: $05
	ld   [hl-], a                                    ; $7468: $32
	ld   a, l                                        ; $7469: $7d
	dec  c                                           ; $746a: $0d
	ld   h, c                                        ; $746b: $61
	ld   a, h                                        ; $746c: $7c
	inc  bc                                          ; $746d: $03
	ld   c, a                                        ; $746e: $4f
	sub  d                                           ; $746f: $92
	ld   [hl], c                                     ; $7470: $71
	ld   l, l                                        ; $7471: $6d
	ld   a, b                                        ; $7472: $78
	rst  $38                                         ; $7473: $ff
	rst  $38                                         ; $7474: $ff
	dec  c                                           ; $7475: $0d
	nop                                              ; $7476: $00
	ld   a, [bc]                                     ; $7477: $0a
	ld   bc, $ca02                                   ; $7478: $01 $02 $ca
	ld   e, d                                        ; $747b: $5a
	inc  b                                           ; $747c: $04
	ld   [$8f02], sp                                 ; $747d: $08 $02 $8f
	ld   [bc], a                                     ; $7480: $02
	sub  b                                           ; $7481: $90
	ld   [bc], a                                     ; $7482: $02
	sub  c                                           ; $7483: $91
	inc  b                                           ; $7484: $04
	add  hl, bc                                      ; $7485: $09
	ld   a, h                                        ; $7486: $7c
	ld   h, c                                        ; $7487: $61
	halt                                             ; $7488: $76
	and  b                                           ; $7489: $a0
	dec  c                                           ; $748a: $0d
	ld   [hl], a                                     ; $748b: $77
	sbc  d                                           ; $748c: $9a
	ld   l, [hl]                                     ; $748d: $6e
	ld   e, a                                        ; $748e: $5f
	inc  b                                           ; $748f: $04
	dec  hl                                          ; $7490: $2b
	ld   [hl], c                                     ; $7491: $71
	ld   l, l                                        ; $7492: $6d
	ld   e, c                                        ; $7493: $59
	dec  c                                           ; $7494: $0d
	or   b                                           ; $7495: $b0
	and  l                                           ; $7496: $a5
	cp   e                                           ; $7497: $bb
	ld   [hl], l                                     ; $7498: $75
	ld   [bc], a                                     ; $7499: $02
	sbc  a                                           ; $749a: $9f
	ld   e, c                                        ; $749b: $59
	adc  a                                           ; $749c: $8f
	ld   [hl], h                                     ; $749d: $74
	ld   d, b                                        ; $749e: $50
	ld   h, b                                        ; $749f: $60
	sub  [hl]                                        ; $74a0: $96
	ld   d, h                                        ; $74a1: $54
	sbc  a                                           ; $74a2: $9f
	dec  c                                           ; $74a3: $0d
	nop                                              ; $74a4: $00
	ld   a, [bc]                                     ; $74a5: $0a
	dec  c                                           ; $74a6: $0d
	rrca                                             ; $74a7: $0f
	db   $10                                         ; $74a8: $10
	rrca                                             ; $74a9: $0f
	rrca                                             ; $74aa: $0f
	ld   bc, $6501                                   ; $74ab: $01 $01 $65
	ld   d, b                                        ; $74ae: $50
	sbc  l                                           ; $74af: $9d
	ld   l, c                                        ; $74b0: $69
	ld   l, [hl]                                     ; $74b1: $6e
	ld   a, b                                        ; $74b2: $78
	ld   c, a                                        ; $74b3: $4f
	db   $fc                                         ; $74b4: $fc
	rst  $38                                         ; $74b5: $ff
	rst  $38                                         ; $74b6: $ff
	dec  c                                           ; $74b7: $0d
	ld   h, c                                        ; $74b8: $61
	and  c                                           ; $74b9: $a1
	ld   a, b                                        ; $74ba: $78
	inc  b                                           ; $74bb: $04
	db   $ec                                         ; $74bc: $ec
	and  b                                           ; $74bd: $a0
	sub  b                                           ; $74be: $90
	sub  a                                           ; $74bf: $97
	ld   d, [hl]                                     ; $74c0: $56
	sbc  c                                           ; $74c1: $99
	ld   a, b                                        ; $74c2: $78
	and  c                                           ; $74c3: $a1
	ld   [hl], h                                     ; $74c4: $74
	sbc  a                                           ; $74c5: $9f
	dec  c                                           ; $74c6: $0d
	nop                                              ; $74c7: $00
	ld   a, [bc]                                     ; $74c8: $0a
	inc  e                                           ; $74c9: $1c
	rrca                                             ; $74ca: $0f
	ld   [bc], a                                     ; $74cb: $02
	ld   [bc], a                                     ; $74cc: $02
	ld   bc, $7463                                   ; $74cd: $01 $63 $74
	inc  b                                           ; $74d0: $04
	cp   a                                           ; $74d1: $bf
	inc  b                                           ; $74d2: $04
	dec  d                                           ; $74d3: $15
	ld   l, [hl]                                     ; $74d4: $6e
	ld   a, [$000d]                                  ; $74d5: $fa $0d $00
	ld   a, [bc]                                     ; $74d8: $0a
	ld   b, $27                                      ; $74d9: $06 $27
	ld   bc, $0f1c                                   ; $74db: $01 $1c $0f
	ld   bc, $0101                                   ; $74de: $01 $01 $01
	ld   [bc], a                                     ; $74e1: $02
	dec  bc                                          ; $74e2: $0b
	inc  bc                                          ; $74e3: $03
	ld   h, l                                        ; $74e4: $65
	ld   [hl], l                                     ; $74e5: $75
	or   b                                           ; $74e6: $b0
	and  l                                           ; $74e7: $a5
	cp   e                                           ; $74e8: $bb
	ld   a, l                                        ; $74e9: $7d
	inc  bc                                          ; $74ea: $03
	ld   a, [hl]                                     ; $74eb: $7e
	sbc  l                                           ; $74ec: $9d
	sbc  b                                           ; $74ed: $98
	ld   l, [hl]                                     ; $74ee: $6e
	sbc  a                                           ; $74ef: $9f
	dec  c                                           ; $74f0: $0d
	ld   [bc], a                                     ; $74f1: $02
	jp   z, EnqueueHDMATransfer                                    ; $74f2: $ca $7c $02

	and  c                                           ; $74f5: $a1
	inc  bc                                          ; $74f6: $03
	and  b                                           ; $74f7: $a0
	ld   l, a                                        ; $74f8: $6f
	ld   a, l                                        ; $74f9: $7d
	sbc  [hl]                                        ; $74fa: $9e
	ld   h, e                                        ; $74fb: $63
	ld   e, l                                        ; $74fc: $5d
	sub  a                                           ; $74fd: $97
	ld   h, e                                        ; $74fe: $63
	and  c                                           ; $74ff: $a1
	ld   a, c                                        ; $7500: $79
	dec  c                                           ; $7501: $0d
	inc  b                                           ; $7502: $04
	ld   [de], a                                     ; $7503: $12
	ld   d, [hl]                                     ; $7504: $56
	ld   [hl], h                                     ; $7505: $74
	ld   e, b                                        ; $7506: $58
	ld   e, l                                        ; $7507: $5d
	sub  [hl]                                        ; $7508: $96
	rst  $38                                         ; $7509: $ff
	rst  $38                                         ; $750a: $ff
	and  e                                           ; $750b: $a3
	ret  z                                           ; $750c: $c8

	and  h                                           ; $750d: $a4
	xor  e                                           ; $750e: $ab
	cp   d                                           ; $750f: $ba
	ld   a, [$000d]                                  ; $7510: $fa $0d $00
	ld   a, [bc]                                     ; $7513: $0a
	dec  e                                           ; $7514: $1d
	ld   b, b                                        ; $7515: $40
	ld   de, $1103                                   ; $7516: $11 $03 $11
	inc  bc                                          ; $7519: $03
	rst  $38                                         ; $751a: $ff
	jr   z, jr_04e_751d                              ; $751b: $28 $00

jr_04e_751d:
	nop                                              ; $751d: $00
	dec  b                                           ; $751e: $05
	ld   b, b                                        ; $751f: $40
	cp   $01                                         ; $7520: $fe $01
	nop                                              ; $7522: $00
	nop                                              ; $7523: $00
	dec  b                                           ; $7524: $05
	add  b                                           ; $7525: $80
	ld   c, a                                        ; $7526: $4f
	ld   bc, $0000                                   ; $7527: $01 $00 $00
	dec  b                                           ; $752a: $05
	add  b                                           ; $752b: $80
	ld   d, b                                        ; $752c: $50
	ld   bc, $0000                                   ; $752d: $01 $00 $00
	dec  b                                           ; $7530: $05
	add  b                                           ; $7531: $80
	ld   d, c                                        ; $7532: $51
	ld   bc, $0000                                   ; $7533: $01 $00 $00
	dec  b                                           ; $7536: $05
	add  b                                           ; $7537: $80
	ld   d, d                                        ; $7538: $52
	ld   bc, $0000                                   ; $7539: $01 $00 $00
	dec  b                                           ; $753c: $05
	add  b                                           ; $753d: $80
	ld   d, e                                        ; $753e: $53
	ld   bc, $0000                                   ; $753f: $01 $00 $00
	dec  b                                           ; $7542: $05
	add  b                                           ; $7543: $80
	ld   d, h                                        ; $7544: $54
	ld   bc, $0000                                   ; $7545: $01 $00 $00
	dec  b                                           ; $7548: $05
	add  b                                           ; $7549: $80
	ld   d, l                                        ; $754a: $55
	ld   bc, $0000                                   ; $754b: $01 $00 $00
	dec  b                                           ; $754e: $05
	add  b                                           ; $754f: $80
	ld   d, [hl]                                     ; $7550: $56
	ld   bc, $0000                                   ; $7551: $01 $00 $00
	dec  b                                           ; $7554: $05
	add  b                                           ; $7555: $80
	ld   d, a                                        ; $7556: $57
	ld   bc, $0000                                   ; $7557: $01 $00 $00
	rlca                                             ; $755a: $07
	push hl                                          ; $755b: $e5
	nop                                              ; $755c: $00
	inc  bc                                          ; $755d: $03
	cp   $01                                         ; $755e: $fe $01
	inc  bc                                          ; $7560: $03
	dec  h                                           ; $7561: $25
	nop                                              ; $7562: $00
	dec  b                                           ; $7563: $05
	ld   b, b                                        ; $7564: $40
	cp   $03                                         ; $7565: $fe $03
	cp   $01                                         ; $7567: $fe $01
	ld   bc, $0028                                   ; $7569: $01 $28 $00
	jr   nz, jr_04e_756f                             ; $756c: $20 $01

	ld   e, d                                        ; $756e: $5a

jr_04e_756f:
	nop                                              ; $756f: $00
	rlca                                             ; $7570: $07
	call nz, $0201                                   ; $7571: $c4 $01 $02
	dec  b                                           ; $7574: $05
	ld   bc, $220a                                   ; $7575: $01 $0a $22
	nop                                              ; $7578: $00
	rlca                                             ; $7579: $07
	ld   h, b                                        ; $757a: $60
	ld   [bc], a                                     ; $757b: $02
	ld   [bc], a                                     ; $757c: $02
	dec  b                                           ; $757d: $05
	ld   bc, $2214                                   ; $757e: $01 $14 $22
	nop                                              ; $7581: $00
	rlca                                             ; $7582: $07
	ld   c, $03                                      ; $7583: $0e $03
	ld   [bc], a                                     ; $7585: $02
	dec  b                                           ; $7586: $05
	ld   bc, $221e                                   ; $7587: $01 $1e $22
	nop                                              ; $758a: $00
	rlca                                             ; $758b: $07
	call z, $0203                                    ; $758c: $cc $03 $02
	dec  b                                           ; $758f: $05
	ld   bc, $2228                                   ; $7590: $01 $28 $22
	nop                                              ; $7593: $00
	rlca                                             ; $7594: $07
	ld   h, h                                        ; $7595: $64
	inc  b                                           ; $7596: $04
	ld   [bc], a                                     ; $7597: $02
	dec  b                                           ; $7598: $05
	ld   bc, $2232                                   ; $7599: $01 $32 $22
	nop                                              ; $759c: $00
	rlca                                             ; $759d: $07
	cp   $04                                         ; $759e: $fe $04
	ld   [bc], a                                     ; $75a0: $02
	dec  b                                           ; $75a1: $05
	ld   bc, $223c                                   ; $75a2: $01 $3c $22
	nop                                              ; $75a5: $00
	rlca                                             ; $75a6: $07
	or   [hl]                                        ; $75a7: $b6
	dec  b                                           ; $75a8: $05
	ld   [bc], a                                     ; $75a9: $02
	dec  b                                           ; $75aa: $05
	ld   bc, $2246                                   ; $75ab: $01 $46 $22
	nop                                              ; $75ae: $00
	rlca                                             ; $75af: $07
	ld   e, a                                        ; $75b0: $5f
	ld   b, $02                                      ; $75b1: $06 $02
	dec  b                                           ; $75b3: $05
	ld   bc, $2250                                   ; $75b4: $01 $50 $22
	nop                                              ; $75b7: $00
	ld   b, $0c                                      ; $75b8: $06 $0c
	rlca                                             ; $75ba: $07
	rlca                                             ; $75bb: $07

Call_04e_75bc:
	ld   h, b                                        ; $75bc: $60
	ld   [bc], a                                     ; $75bd: $02
	inc  b                                           ; $75be: $04
	add  b                                           ; $75bf: $80
	ld   c, a                                        ; $75c0: $4f
	ld   bc, $20ff                                   ; $75c1: $01 $ff $20
	nop                                              ; $75c4: $00
	dec  b                                           ; $75c5: $05
	add  b                                           ; $75c6: $80
	ld   c, a                                        ; $75c7: $4f
	ld   bc, $0001                                   ; $75c8: $01 $01 $00
	ld   bc, $5d63                                   ; $75cb: $01 $63 $5d
	sub  a                                           ; $75ce: $97
	ld   h, e                                        ; $75cf: $63
	and  c                                           ; $75d0: $a1
	ld   a, h                                        ; $75d1: $7c
	inc  bc                                          ; $75d2: $03
	ld   d, d                                        ; $75d3: $52
	adc  h                                           ; $75d4: $8c
	sbc  d                                           ; $75d5: $9a
	ld   [bc], a                                     ; $75d6: $02
	adc  $05                                         ; $75d7: $ce $05
	or   b                                           ; $75d9: $b0
	ld   a, l                                        ; $75da: $7d
	ld   sp, hl                                      ; $75db: $f9
	dec  c                                           ; $75dc: $0d
	nop                                              ; $75dd: $00
	ld   a, [bc]                                     ; $75de: $0a
	add  hl, de                                      ; $75df: $19
	dec  b                                           ; $75e0: $05
	inc  bc                                          ; $75e1: $03
	inc  bc                                          ; $75e2: $03
	ld   a, a                                        ; $75e3: $7f
	inc  b                                           ; $75e4: $04
	inc  c                                           ; $75e5: $0c
	nop                                              ; $75e6: $00
	nop                                              ; $75e7: $00
	dec  b                                           ; $75e8: $05
	push hl                                          ; $75e9: $e5
	dec  b                                           ; $75ea: $05
	xor  [hl]                                        ; $75eb: $ae
	nop                                              ; $75ec: $00
	ld   bc, $ac05                                   ; $75ed: $01 $05 $ac
	inc  bc                                          ; $75f0: $03
	ld   c, a                                        ; $75f1: $4f
	nop                                              ; $75f2: $00
	ld   [bc], a                                     ; $75f3: $02
	rlca                                             ; $75f4: $07
	dec  de                                          ; $75f5: $1b
	ld   [bc], a                                     ; $75f6: $02
	ld   [bc], a                                     ; $75f7: $02
	inc  bc                                          ; $75f8: $03
	ld   bc, $2000                                   ; $75f9: $01 $00 $20
	nop                                              ; $75fc: $00
	rlca                                             ; $75fd: $07
	jr   c, jr_04e_7602                              ; $75fe: $38 $02

	ld   [bc], a                                     ; $7600: $02
	inc  bc                                          ; $7601: $03

jr_04e_7602:
	ld   bc, $2001                                   ; $7602: $01 $01 $20
	nop                                              ; $7605: $00
	rlca                                             ; $7606: $07
	jr   c, jr_04e_760b                              ; $7607: $38 $02

	ld   [bc], a                                     ; $7609: $02
	inc  bc                                          ; $760a: $03

jr_04e_760b:
	ld   bc, $2002                                   ; $760b: $01 $02 $20
	nop                                              ; $760e: $00
	ld   b, $38                                      ; $760f: $06 $38
	ld   [bc], a                                     ; $7611: $02
	inc  e                                           ; $7612: $1c
	rrca                                             ; $7613: $0f
	ld   bc, $1401                                   ; $7614: $01 $01 $14
	dec  de                                          ; $7617: $1b
	ld   bc, $0301                                   ; $7618: $01 $01 $03
	ld   c, d                                        ; $761b: $4a
	ld   [bc], a                                     ; $761c: $02
	or   h                                           ; $761d: $b4
	ld   l, [hl]                                     ; $761e: $6e
	sbc  a                                           ; $761f: $9f
	dec  c                                           ; $7620: $0d
	nop                                              ; $7621: $00
	ld   a, [bc]                                     ; $7622: $0a
	dec  b                                           ; $7623: $05
	ld   b, b                                        ; $7624: $40
	rst  $38                                         ; $7625: $ff
	inc  bc                                          ; $7626: $03
	rst  $38                                         ; $7627: $ff
	ld   bc, $2801                                   ; $7628: $01 $01 $28
	nop                                              ; $762b: $00
	ld   b, $63                                      ; $762c: $06 $63
	ld   bc, $0f1c                                   ; $762e: $01 $1c $0f
	ld   [bc], a                                     ; $7631: $02
	ld   [bc], a                                     ; $7632: $02
	inc  d                                           ; $7633: $14
	inc  e                                           ; $7634: $1c
	ld   bc, $0301                                   ; $7635: $01 $01 $03
	jr   z, jr_04e_763e                              ; $7638: $28 $04

	ld   c, b                                        ; $763a: $48
	ld   l, [hl]                                     ; $763b: $6e
	ld   [hl], c                                     ; $763c: $71
	ld   l, l                                        ; $763d: $6d

jr_04e_763e:
	ld   a, b                                        ; $763e: $78
	rst  $38                                         ; $763f: $ff
	rst  $38                                         ; $7640: $ff
	dec  c                                           ; $7641: $0d
	inc  bc                                          ; $7642: $03
	ld   c, d                                        ; $7643: $4a
	ld   [bc], a                                     ; $7644: $02
	or   h                                           ; $7645: $b4
	ld   a, l                                        ; $7646: $7d
	ld   bc, $0307                                   ; $7647: $01 $07 $03
	ld   a, a                                        ; $764a: $7f
	inc  b                                           ; $764b: $04
	inc  c                                           ; $764c: $0c
	ld   bc, $6e08                                   ; $764d: $01 $08 $6e
	sbc  a                                           ; $7650: $9f
	dec  c                                           ; $7651: $0d
	nop                                              ; $7652: $00
	ld   a, [bc]                                     ; $7653: $0a
	ld   b, $63                                      ; $7654: $06 $63
	ld   bc, $0e07                                   ; $7656: $01 $07 $0e
	inc  bc                                          ; $7659: $03
	inc  b                                           ; $765a: $04
	add  b                                           ; $765b: $80
	ld   d, b                                        ; $765c: $50
	ld   bc, $20ff                                   ; $765d: $01 $ff $20
	nop                                              ; $7660: $00
	dec  b                                           ; $7661: $05

Call_04e_7662:
	add  b                                           ; $7662: $80
	ld   d, b                                        ; $7663: $50
	ld   bc, $0001                                   ; $7664: $01 $01 $00
	ld   bc, $5d63                                   ; $7667: $01 $63 $5d
	sub  a                                           ; $766a: $97
	ld   h, e                                        ; $766b: $63
	and  c                                           ; $766c: $a1
	ld   e, d                                        ; $766d: $5a
	inc  bc                                          ; $766e: $03
	ld   l, c                                        ; $766f: $69
	ld   [bc], a                                     ; $7670: $02
	and  b                                           ; $7671: $a0
	ld   [bc], a                                     ; $7672: $02
	sbc  d                                           ; $7673: $9a
	ld   e, e                                        ; $7674: $5b
	ld   a, b                                        ; $7675: $78
	dec  c                                           ; $7676: $0d
	ld   b, $38                                      ; $7677: $06 $38
	ld   [bc], a                                     ; $7679: $02
	ld   [hl], a                                     ; $767a: $77
	inc  b                                           ; $767b: $04
	db   $10                                         ; $767c: $10
	ld   a, h                                        ; $767d: $7c
	inc  bc                                          ; $767e: $03
	ld   l, d                                        ; $767f: $6a
	add  a                                           ; $7680: $87
	inc  b                                           ; $7681: $04
	sub  d                                           ; $7682: $92
	ld   a, l                                        ; $7683: $7d
	ld   sp, hl                                      ; $7684: $f9
	dec  c                                           ; $7685: $0d
	nop                                              ; $7686: $00
	ld   a, [bc]                                     ; $7687: $0a
	add  hl, de                                      ; $7688: $19
	dec  b                                           ; $7689: $05
	inc  bc                                          ; $768a: $03
	xor  e                                           ; $768b: $ab
	ldh  [c], a                                      ; $768c: $e2
	db   $eb                                         ; $768d: $eb
	and  l                                           ; $768e: $a5
	cp   d                                           ; $768f: $ba
	nop                                              ; $7690: $00
	nop                                              ; $7691: $00
	ret  nc                                          ; $7692: $d0

	push af                                          ; $7693: $f5
	pop  de                                          ; $7694: $d1
	ei                                               ; $7695: $fb
	or   c                                           ; $7696: $b1
	nop                                              ; $7697: $00
	ld   bc, $e6d0                                   ; $7698: $01 $d0 $e6
	cp   b                                           ; $769b: $b8
	db   $eb                                         ; $769c: $eb
	and  l                                           ; $769d: $a5
	cp   d                                           ; $769e: $ba
	nop                                              ; $769f: $00
	ld   [bc], a                                     ; $76a0: $02
	rlca                                             ; $76a1: $07
	ret  z                                           ; $76a2: $c8

	ld   [bc], a                                     ; $76a3: $02
	ld   [bc], a                                     ; $76a4: $02
	inc  bc                                          ; $76a5: $03
	ld   bc, $2000                                   ; $76a6: $01 $00 $20
	nop                                              ; $76a9: $00
	rlca                                             ; $76aa: $07
	push hl                                          ; $76ab: $e5
	ld   [bc], a                                     ; $76ac: $02
	ld   [bc], a                                     ; $76ad: $02
	inc  bc                                          ; $76ae: $03
	ld   bc, $2001                                   ; $76af: $01 $01 $20
	nop                                              ; $76b2: $00
	rlca                                             ; $76b3: $07
	push hl                                          ; $76b4: $e5
	ld   [bc], a                                     ; $76b5: $02
	ld   [bc], a                                     ; $76b6: $02
	inc  bc                                          ; $76b7: $03
	ld   bc, $2002                                   ; $76b8: $01 $02 $20
	nop                                              ; $76bb: $00
	ld   b, $e5                                      ; $76bc: $06 $e5
	ld   [bc], a                                     ; $76be: $02
	inc  e                                           ; $76bf: $1c
	rrca                                             ; $76c0: $0f
	ld   bc, $1401                                   ; $76c1: $01 $01 $14
	dec  de                                          ; $76c4: $1b
	ld   bc, $0301                                   ; $76c5: $01 $01 $03
	ld   c, d                                        ; $76c8: $4a
	ld   [bc], a                                     ; $76c9: $02
	or   h                                           ; $76ca: $b4
	ld   l, [hl]                                     ; $76cb: $6e
	sbc  a                                           ; $76cc: $9f
	dec  c                                           ; $76cd: $0d
	nop                                              ; $76ce: $00
	ld   a, [bc]                                     ; $76cf: $0a
	dec  b                                           ; $76d0: $05
	ld   b, b                                        ; $76d1: $40
	rst  $38                                         ; $76d2: $ff
	inc  bc                                          ; $76d3: $03
	rst  $38                                         ; $76d4: $ff
	ld   bc, $2801                                   ; $76d5: $01 $01 $28
	nop                                              ; $76d8: $00
	ld   b, $63                                      ; $76d9: $06 $63
	ld   bc, $0f1c                                   ; $76db: $01 $1c $0f
	ld   [bc], a                                     ; $76de: $02
	ld   [bc], a                                     ; $76df: $02
	inc  d                                           ; $76e0: $14
	inc  e                                           ; $76e1: $1c
	ld   bc, $0301                                   ; $76e2: $01 $01 $03
	jr   z, jr_04e_76eb                              ; $76e5: $28 $04

	ld   c, b                                        ; $76e7: $48
	ld   l, [hl]                                     ; $76e8: $6e
	ld   [hl], c                                     ; $76e9: $71
	ld   l, l                                        ; $76ea: $6d

jr_04e_76eb:
	ld   a, b                                        ; $76eb: $78
	rst  $38                                         ; $76ec: $ff
	rst  $38                                         ; $76ed: $ff
	dec  c                                           ; $76ee: $0d
	inc  bc                                          ; $76ef: $03
	ld   c, d                                        ; $76f0: $4a
	ld   [bc], a                                     ; $76f1: $02
	or   h                                           ; $76f2: $b4
	ld   a, l                                        ; $76f3: $7d
	ld   bc, $ab07                                   ; $76f4: $01 $07 $ab
	ldh  [c], a                                      ; $76f7: $e2
	db   $eb                                         ; $76f8: $eb
	and  l                                           ; $76f9: $a5
	cp   d                                           ; $76fa: $ba
	ld   bc, $6e08                                   ; $76fb: $01 $08 $6e
	sbc  a                                           ; $76fe: $9f
	dec  c                                           ; $76ff: $0d
	nop                                              ; $7700: $00
	ld   a, [bc]                                     ; $7701: $0a
	ld   b, $63                                      ; $7702: $06 $63
	ld   bc, $cc07                                   ; $7704: $01 $07 $cc
	inc  bc                                          ; $7707: $03
	inc  b                                           ; $7708: $04
	add  b                                           ; $7709: $80
	ld   d, c                                        ; $770a: $51
	ld   bc, $20ff                                   ; $770b: $01 $ff $20
	nop                                              ; $770e: $00
	dec  b                                           ; $770f: $05
	add  b                                           ; $7710: $80
	ld   d, c                                        ; $7711: $51
	ld   bc, $0001                                   ; $7712: $01 $01 $00
	ld   bc, $5d63                                   ; $7715: $01 $63 $5d
	sub  a                                           ; $7718: $97
	ld   h, e                                        ; $7719: $63
	and  c                                           ; $771a: $a1
	ld   e, d                                        ; $771b: $5a
	ld   [bc], a                                     ; $771c: $02
	add  [hl]                                        ; $771d: $86
	ld   b, $02                                      ; $771e: $06 $02
	ld   h, l                                        ; $7720: $65
	ld   [hl], h                                     ; $7721: $74
	ld   d, d                                        ; $7722: $52
	sbc  c                                           ; $7723: $99
	dec  c                                           ; $7724: $0d
	ld   [bc], a                                     ; $7725: $02
	cp   h                                           ; $7726: $bc
	inc  bc                                          ; $7727: $03
	db   $10                                         ; $7728: $10
	ld   a, h                                        ; $7729: $7c
	dec  b                                           ; $772a: $05
	inc  d                                           ; $772b: $14
	inc  b                                           ; $772c: $04
	sbc  l                                           ; $772d: $9d
	ld   a, l                                        ; $772e: $7d
	ld   sp, hl                                      ; $772f: $f9
	dec  c                                           ; $7730: $0d
	nop                                              ; $7731: $00
	ld   a, [bc]                                     ; $7732: $0a
	add  hl, de                                      ; $7733: $19
	dec  b                                           ; $7734: $05
	inc  bc                                          ; $7735: $03
	inc  b                                           ; $7736: $04
	sbc  d                                           ; $7737: $9a
	inc  bc                                          ; $7738: $03
	adc  c                                           ; $7739: $89
	ld   [bc], a                                     ; $773a: $02
	jr   nz, jr_04e_7741                             ; $773b: $20 $04

	inc  l                                           ; $773d: $2c
	dec  b                                           ; $773e: $05
	inc  d                                           ; $773f: $14
	nop                                              ; $7740: $00

jr_04e_7741:
	nop                                              ; $7741: $00
	inc  bc                                          ; $7742: $03
	sub  b                                           ; $7743: $90
	inc  b                                           ; $7744: $04
	ld   d, $04                                      ; $7745: $16 $04
	sub  $04                                         ; $7747: $d6 $04
	ld   c, b                                        ; $7749: $48
	dec  b                                           ; $774a: $05
	inc  d                                           ; $774b: $14
	nop                                              ; $774c: $00
	ld   bc, $1304                                   ; $774d: $01 $04 $13
	inc  bc                                          ; $7750: $03
	sbc  c                                           ; $7751: $99
	dec  b                                           ; $7752: $05
	ld   de, $7503                                   ; $7753: $11 $03 $75
	dec  b                                           ; $7756: $05
	inc  d                                           ; $7757: $14
	nop                                              ; $7758: $00
	ld   [bc], a                                     ; $7759: $02
	rlca                                             ; $775a: $07
	add  c                                           ; $775b: $81
	inc  bc                                          ; $775c: $03
	ld   [bc], a                                     ; $775d: $02
	inc  bc                                          ; $775e: $03
	ld   bc, $2000                                   ; $775f: $01 $00 $20
	nop                                              ; $7762: $00
	rlca                                             ; $7763: $07
	sbc  [hl]                                        ; $7764: $9e
	inc  bc                                          ; $7765: $03
	ld   [bc], a                                     ; $7766: $02
	inc  bc                                          ; $7767: $03
	ld   bc, $2001                                   ; $7768: $01 $01 $20
	nop                                              ; $776b: $00
	rlca                                             ; $776c: $07
	sbc  [hl]                                        ; $776d: $9e
	inc  bc                                          ; $776e: $03
	ld   [bc], a                                     ; $776f: $02
	inc  bc                                          ; $7770: $03
	ld   bc, $2002                                   ; $7771: $01 $02 $20
	nop                                              ; $7774: $00
	ld   b, $9e                                      ; $7775: $06 $9e
	inc  bc                                          ; $7777: $03
	inc  e                                           ; $7778: $1c
	rrca                                             ; $7779: $0f
	ld   bc, $1401                                   ; $777a: $01 $01 $14
	dec  de                                          ; $777d: $1b
	ld   bc, $0301                                   ; $777e: $01 $01 $03
	ld   c, d                                        ; $7781: $4a
	ld   [bc], a                                     ; $7782: $02
	or   h                                           ; $7783: $b4
	ld   l, [hl]                                     ; $7784: $6e
	sbc  a                                           ; $7785: $9f
	dec  c                                           ; $7786: $0d
	nop                                              ; $7787: $00
	ld   a, [bc]                                     ; $7788: $0a
	dec  b                                           ; $7789: $05
	ld   b, b                                        ; $778a: $40
	rst  $38                                         ; $778b: $ff
	inc  bc                                          ; $778c: $03
	rst  $38                                         ; $778d: $ff
	ld   bc, $2801                                   ; $778e: $01 $01 $28
	nop                                              ; $7791: $00
	ld   b, $63                                      ; $7792: $06 $63
	ld   bc, $0f1c                                   ; $7794: $01 $1c $0f
	ld   [bc], a                                     ; $7797: $02
	ld   [bc], a                                     ; $7798: $02
	inc  d                                           ; $7799: $14
	inc  e                                           ; $779a: $1c
	ld   bc, $0301                                   ; $779b: $01 $01 $03
	jr   z, jr_04e_77a4                              ; $779e: $28 $04

	ld   c, b                                        ; $77a0: $48
	ld   l, [hl]                                     ; $77a1: $6e
	ld   [hl], c                                     ; $77a2: $71
	ld   l, l                                        ; $77a3: $6d

jr_04e_77a4:
	ld   a, b                                        ; $77a4: $78
	rst  $38                                         ; $77a5: $ff
	rst  $38                                         ; $77a6: $ff
	dec  c                                           ; $77a7: $0d
	inc  bc                                          ; $77a8: $03
	ld   c, d                                        ; $77a9: $4a
	ld   [bc], a                                     ; $77aa: $02
	or   h                                           ; $77ab: $b4
	ld   a, l                                        ; $77ac: $7d
	ld   bc, $0407                                   ; $77ad: $01 $07 $04
	sbc  d                                           ; $77b0: $9a
	inc  bc                                          ; $77b1: $03
	adc  c                                           ; $77b2: $89
	ld   [bc], a                                     ; $77b3: $02
	jr   nz, @+$06                                   ; $77b4: $20 $04

	inc  l                                           ; $77b6: $2c
	dec  b                                           ; $77b7: $05
	inc  d                                           ; $77b8: $14
	ld   bc, $6e08                                   ; $77b9: $01 $08 $6e
	sbc  a                                           ; $77bc: $9f
	dec  c                                           ; $77bd: $0d
	nop                                              ; $77be: $00
	ld   a, [bc]                                     ; $77bf: $0a
	ld   b, $63                                      ; $77c0: $06 $63
	ld   bc, $6407                                   ; $77c2: $01 $07 $64
	inc  b                                           ; $77c5: $04
	inc  b                                           ; $77c6: $04
	add  b                                           ; $77c7: $80
	ld   d, d                                        ; $77c8: $52
	ld   bc, $20ff                                   ; $77c9: $01 $ff $20
	nop                                              ; $77cc: $00
	dec  b                                           ; $77cd: $05
	add  b                                           ; $77ce: $80
	ld   d, d                                        ; $77cf: $52
	ld   bc, $0001                                   ; $77d0: $01 $01 $00
	ld   bc, $5d63                                   ; $77d3: $01 $63 $5d
	sub  a                                           ; $77d6: $97
	ld   h, e                                        ; $77d7: $63
	and  c                                           ; $77d8: $a1
	ld   e, d                                        ; $77d9: $5a
	ld   [bc], a                                     ; $77da: $02
	sub  h                                           ; $77db: $94
	inc  bc                                          ; $77dc: $03
	ld   l, e                                        ; $77dd: $6b
	halt                                             ; $77de: $76
	ld   h, l                                        ; $77df: $65
	ld   [hl], h                                     ; $77e0: $74
	ld   d, d                                        ; $77e1: $52
	sbc  c                                           ; $77e2: $99
	dec  c                                           ; $77e3: $0d
	sub  b                                           ; $77e4: $90
	ld   a, h                                        ; $77e5: $7c
	ld   a, l                                        ; $77e6: $7d
	ld   sp, hl                                      ; $77e7: $f9
	dec  c                                           ; $77e8: $0d
	nop                                              ; $77e9: $00
	ld   a, [bc]                                     ; $77ea: $0a
	add  hl, de                                      ; $77eb: $19
	dec  b                                           ; $77ec: $05
	inc  bc                                          ; $77ed: $03
	dec  b                                           ; $77ee: $05
	rla                                              ; $77ef: $17
	nop                                              ; $77f0: $00
	nop                                              ; $77f1: $00
	reti                                             ; $77f2: $d9


	call nc, Boot                                    ; $77f3: $d4 $00 $01
	or   b                                           ; $77f6: $b0
	db   $e4                                         ; $77f7: $e4
	nop                                              ; $77f8: $00
	ld   [bc], a                                     ; $77f9: $02
	rlca                                             ; $77fa: $07
	ld   hl, $0204                                   ; $77fb: $21 $04 $02
	inc  bc                                          ; $77fe: $03
	ld   bc, $2000                                   ; $77ff: $01 $00 $20
	nop                                              ; $7802: $00
	rlca                                             ; $7803: $07
	ld   a, $04                                      ; $7804: $3e $04
	ld   [bc], a                                     ; $7806: $02
	inc  bc                                          ; $7807: $03
	ld   bc, $2001                                   ; $7808: $01 $01 $20
	nop                                              ; $780b: $00
	rlca                                             ; $780c: $07
	ld   a, $04                                      ; $780d: $3e $04
	ld   [bc], a                                     ; $780f: $02
	inc  bc                                          ; $7810: $03
	ld   bc, $2002                                   ; $7811: $01 $02 $20
	nop                                              ; $7814: $00
	ld   b, $3e                                      ; $7815: $06 $3e
	inc  b                                           ; $7817: $04
	inc  e                                           ; $7818: $1c
	rrca                                             ; $7819: $0f
	ld   bc, $1401                                   ; $781a: $01 $01 $14
	dec  de                                          ; $781d: $1b
	ld   bc, $0301                                   ; $781e: $01 $01 $03
	ld   c, d                                        ; $7821: $4a
	ld   [bc], a                                     ; $7822: $02
	or   h                                           ; $7823: $b4
	ld   l, [hl]                                     ; $7824: $6e
	sbc  a                                           ; $7825: $9f
	dec  c                                           ; $7826: $0d
	nop                                              ; $7827: $00
	ld   a, [bc]                                     ; $7828: $0a
	dec  b                                           ; $7829: $05
	ld   b, b                                        ; $782a: $40
	rst  $38                                         ; $782b: $ff
	inc  bc                                          ; $782c: $03
	rst  $38                                         ; $782d: $ff
	ld   bc, $2801                                   ; $782e: $01 $01 $28
	nop                                              ; $7831: $00
	ld   b, $63                                      ; $7832: $06 $63
	ld   bc, $0f1c                                   ; $7834: $01 $1c $0f
	ld   [bc], a                                     ; $7837: $02
	ld   [bc], a                                     ; $7838: $02
	inc  d                                           ; $7839: $14
	inc  e                                           ; $783a: $1c
	ld   bc, $0301                                   ; $783b: $01 $01 $03
	jr   z, jr_04e_7844                              ; $783e: $28 $04

	ld   c, b                                        ; $7840: $48
	ld   l, [hl]                                     ; $7841: $6e
	ld   [hl], c                                     ; $7842: $71
	ld   l, l                                        ; $7843: $6d

jr_04e_7844:
	ld   a, b                                        ; $7844: $78
	rst  $38                                         ; $7845: $ff
	rst  $38                                         ; $7846: $ff
	dec  c                                           ; $7847: $0d
	inc  bc                                          ; $7848: $03
	ld   c, d                                        ; $7849: $4a
	ld   [bc], a                                     ; $784a: $02
	or   h                                           ; $784b: $b4
	ld   a, l                                        ; $784c: $7d
	ld   bc, $0507                                   ; $784d: $01 $07 $05
	rla                                              ; $7850: $17
	ld   bc, $6e08                                   ; $7851: $01 $08 $6e
	sbc  a                                           ; $7854: $9f
	dec  c                                           ; $7855: $0d
	nop                                              ; $7856: $00
	ld   a, [bc]                                     ; $7857: $0a
	ld   b, $63                                      ; $7858: $06 $63
	ld   bc, $fe07                                   ; $785a: $01 $07 $fe
	inc  b                                           ; $785d: $04
	inc  b                                           ; $785e: $04
	add  b                                           ; $785f: $80
	ld   d, e                                        ; $7860: $53
	ld   bc, $20ff                                   ; $7861: $01 $ff $20
	nop                                              ; $7864: $00
	dec  b                                           ; $7865: $05
	add  b                                           ; $7866: $80
	ld   d, e                                        ; $7867: $53
	ld   bc, $0001                                   ; $7868: $01 $01 $00
	ld   bc, $5d63                                   ; $786b: $01 $63 $5d
	sub  a                                           ; $786e: $97
	ld   h, e                                        ; $786f: $63
	and  c                                           ; $7870: $a1
	ld   e, d                                        ; $7871: $5a
	inc  bc                                          ; $7872: $03
	cp   c                                           ; $7873: $b9
	sbc  c                                           ; $7874: $99
	ld   [bc], a                                     ; $7875: $02
	jr   c, jr_04e_787c                              ; $7876: $38 $04

	ld   d, d                                        ; $7878: $52

Call_04e_7879:
	ld   a, h                                        ; $7879: $7c
	inc  bc                                          ; $787a: $03
	dec  bc                                          ; $787b: $0b

jr_04e_787c:
	ld   a, l                                        ; $787c: $7d
	ld   sp, hl                                      ; $787d: $f9
	dec  c                                           ; $787e: $0d
	nop                                              ; $787f: $00
	ld   a, [bc]                                     ; $7880: $0a
	add  hl, de                                      ; $7881: $19
	dec  b                                           ; $7882: $05
	inc  bc                                          ; $7883: $03
	push de                                          ; $7884: $d5
	push af                                          ; $7885: $f5
	or   b                                           ; $7886: $b0
	nop                                              ; $7887: $00
	nop                                              ; $7888: $00
	xor  $c4                                         ; $7889: $ee $c4
	jp   z, Boot                                     ; $788b: $ca $00 $01

	rst  $10                                         ; $788e: $d7
	db   $ed                                         ; $788f: $ed
	ei                                               ; $7890: $fb
	nop                                              ; $7891: $00
	ld   [bc], a                                     ; $7892: $02
	rlca                                             ; $7893: $07
	cp   d                                           ; $7894: $ba
	inc  b                                           ; $7895: $04
	ld   [bc], a                                     ; $7896: $02
	inc  bc                                          ; $7897: $03
	ld   bc, $2000                                   ; $7898: $01 $00 $20
	nop                                              ; $789b: $00
	rlca                                             ; $789c: $07
	rst  $10                                         ; $789d: $d7
	inc  b                                           ; $789e: $04
	ld   [bc], a                                     ; $789f: $02
	inc  bc                                          ; $78a0: $03
	ld   bc, $2001                                   ; $78a1: $01 $01 $20
	nop                                              ; $78a4: $00
	rlca                                             ; $78a5: $07
	rst  $10                                         ; $78a6: $d7
	inc  b                                           ; $78a7: $04
	ld   [bc], a                                     ; $78a8: $02
	inc  bc                                          ; $78a9: $03
	ld   bc, $2002                                   ; $78aa: $01 $02 $20
	nop                                              ; $78ad: $00
	ld   b, $d7                                      ; $78ae: $06 $d7
	inc  b                                           ; $78b0: $04
	inc  e                                           ; $78b1: $1c
	rrca                                             ; $78b2: $0f
	ld   bc, $1401                                   ; $78b3: $01 $01 $14
	dec  de                                          ; $78b6: $1b
	ld   bc, $0301                                   ; $78b7: $01 $01 $03
	ld   c, d                                        ; $78ba: $4a
	ld   [bc], a                                     ; $78bb: $02
	or   h                                           ; $78bc: $b4
	ld   l, [hl]                                     ; $78bd: $6e
	sbc  a                                           ; $78be: $9f
	dec  c                                           ; $78bf: $0d
	nop                                              ; $78c0: $00
	ld   a, [bc]                                     ; $78c1: $0a
	dec  b                                           ; $78c2: $05
	ld   b, b                                        ; $78c3: $40
	rst  $38                                         ; $78c4: $ff
	inc  bc                                          ; $78c5: $03
	rst  $38                                         ; $78c6: $ff
	ld   bc, $2801                                   ; $78c7: $01 $01 $28
	nop                                              ; $78ca: $00
	ld   b, $63                                      ; $78cb: $06 $63
	ld   bc, $0f1c                                   ; $78cd: $01 $1c $0f
	ld   [bc], a                                     ; $78d0: $02
	ld   [bc], a                                     ; $78d1: $02
	inc  d                                           ; $78d2: $14
	inc  e                                           ; $78d3: $1c
	ld   bc, $0301                                   ; $78d4: $01 $01 $03
	jr   z, jr_04e_78dd                              ; $78d7: $28 $04

	ld   c, b                                        ; $78d9: $48
	ld   l, [hl]                                     ; $78da: $6e
	ld   [hl], c                                     ; $78db: $71
	ld   l, l                                        ; $78dc: $6d

jr_04e_78dd:
	ld   a, b                                        ; $78dd: $78
	rst  $38                                         ; $78de: $ff
	rst  $38                                         ; $78df: $ff
	dec  c                                           ; $78e0: $0d
	inc  bc                                          ; $78e1: $03
	ld   c, d                                        ; $78e2: $4a
	ld   [bc], a                                     ; $78e3: $02
	or   h                                           ; $78e4: $b4
	ld   a, l                                        ; $78e5: $7d
	ld   bc, $d507                                   ; $78e6: $01 $07 $d5
	push af                                          ; $78e9: $f5
	or   b                                           ; $78ea: $b0
	ld   bc, $6e08                                   ; $78eb: $01 $08 $6e
	sbc  a                                           ; $78ee: $9f
	dec  c                                           ; $78ef: $0d
	nop                                              ; $78f0: $00
	ld   a, [bc]                                     ; $78f1: $0a
	ld   b, $63                                      ; $78f2: $06 $63
	ld   bc, $b607                                   ; $78f4: $01 $07 $b6
	dec  b                                           ; $78f7: $05
	inc  b                                           ; $78f8: $04
	add  b                                           ; $78f9: $80
	ld   d, h                                        ; $78fa: $54
	ld   bc, $20ff                                   ; $78fb: $01 $ff $20
	nop                                              ; $78fe: $00
	dec  b                                           ; $78ff: $05
	add  b                                           ; $7900: $80
	ld   d, h                                        ; $7901: $54
	ld   bc, $0001                                   ; $7902: $01 $01 $00
	ld   bc, $5d63                                   ; $7905: $01 $63 $5d
	sub  a                                           ; $7908: $97
	ld   h, e                                        ; $7909: $63
	and  c                                           ; $790a: $a1
	ld   e, d                                        ; $790b: $5a
	inc  bc                                          ; $790c: $03
	and  b                                           ; $790d: $a0
	ld   [hl], c                                     ; $790e: $71
	ld   [hl], h                                     ; $790f: $74
	ld   d, d                                        ; $7910: $52
	sbc  c                                           ; $7911: $99
	dec  c                                           ; $7912: $0d
	inc  b                                           ; $7913: $04
	xor  d                                           ; $7914: $aa
	inc  b                                           ; $7915: $04
	adc  a                                           ; $7916: $8f
	inc  b                                           ; $7917: $04
	inc  l                                           ; $7918: $2c
	ld   a, h                                        ; $7919: $7c
	inc  b                                           ; $791a: $04
	rst  ToBoot                                         ; $791b: $c7
	inc  bc                                          ; $791c: $03
	ld   c, a                                        ; $791d: $4f
	ld   a, l                                        ; $791e: $7d
	ld   sp, hl                                      ; $791f: $f9
	dec  c                                           ; $7920: $0d
	nop                                              ; $7921: $00
	ld   a, [bc]                                     ; $7922: $0a
	add  hl, de                                      ; $7923: $19
	dec  b                                           ; $7924: $05
	inc  bc                                          ; $7925: $03
	sbc  d                                           ; $7926: $9a
	ld   d, d                                        ; $7927: $52
	ld   e, a                                        ; $7928: $5f
	and  c                                           ; $7929: $a1
	ld   d, b                                        ; $792a: $50
	sub  a                                           ; $792b: $97
	ld   l, l                                        ; $792c: $6d
	ld   e, c                                        ; $792d: $59
	nop                                              ; $792e: $00
	nop                                              ; $792f: $00
	ld   e, l                                        ; $7930: $5d
	ld   h, e                                        ; $7931: $63
	ld   a, b                                        ; $7932: $78
	ld   e, h                                        ; $7933: $5c
	ld   a, h                                        ; $7934: $7c
	ld   [hl], d                                     ; $7935: $72
	sbc  c                                           ; $7936: $99
	ld   e, h                                        ; $7937: $5c
	nop                                              ; $7938: $00
	ld   bc, $5496                                   ; $7939: $01 $96 $54
	halt                                             ; $793c: $76
	ld   d, h                                        ; $793d: $54
	adc  [hl]                                        ; $793e: $8e
	sub  a                                           ; $793f: $97
	adc  h                                           ; $7940: $8c
	ld   h, e                                        ; $7941: $63
	nop                                              ; $7942: $00
	ld   [bc], a                                     ; $7943: $02
	rlca                                             ; $7944: $07
	ld   l, e                                        ; $7945: $6b
	dec  b                                           ; $7946: $05
	ld   [bc], a                                     ; $7947: $02
	inc  bc                                          ; $7948: $03
	ld   bc, $2000                                   ; $7949: $01 $00 $20
	nop                                              ; $794c: $00
	rlca                                             ; $794d: $07
	adc  b                                           ; $794e: $88
	dec  b                                           ; $794f: $05
	ld   [bc], a                                     ; $7950: $02
	inc  bc                                          ; $7951: $03
	ld   bc, $2001                                   ; $7952: $01 $01 $20
	nop                                              ; $7955: $00
	rlca                                             ; $7956: $07
	adc  b                                           ; $7957: $88
	dec  b                                           ; $7958: $05
	ld   [bc], a                                     ; $7959: $02
	inc  bc                                          ; $795a: $03
	ld   bc, $2002                                   ; $795b: $01 $02 $20
	nop                                              ; $795e: $00
	ld   b, $88                                      ; $795f: $06 $88
	dec  b                                           ; $7961: $05
	inc  e                                           ; $7962: $1c
	rrca                                             ; $7963: $0f
	ld   bc, $1401                                   ; $7964: $01 $01 $14
	dec  de                                          ; $7967: $1b
	ld   bc, $0301                                   ; $7968: $01 $01 $03
	ld   c, d                                        ; $796b: $4a
	ld   [bc], a                                     ; $796c: $02
	or   h                                           ; $796d: $b4
	ld   l, [hl]                                     ; $796e: $6e
	sbc  a                                           ; $796f: $9f
	dec  c                                           ; $7970: $0d
	nop                                              ; $7971: $00
	ld   a, [bc]                                     ; $7972: $0a
	dec  b                                           ; $7973: $05
	ld   b, b                                        ; $7974: $40
	rst  $38                                         ; $7975: $ff
	inc  bc                                          ; $7976: $03
	rst  $38                                         ; $7977: $ff
	ld   bc, $2801                                   ; $7978: $01 $01 $28
	nop                                              ; $797b: $00
	ld   b, $63                                      ; $797c: $06 $63
	ld   bc, $0f1c                                   ; $797e: $01 $1c $0f
	ld   [bc], a                                     ; $7981: $02
	ld   [bc], a                                     ; $7982: $02
	inc  d                                           ; $7983: $14
	inc  e                                           ; $7984: $1c
	ld   bc, $0301                                   ; $7985: $01 $01 $03
	jr   z, jr_04e_798e                              ; $7988: $28 $04

	ld   c, b                                        ; $798a: $48
	ld   l, [hl]                                     ; $798b: $6e
	ld   [hl], c                                     ; $798c: $71
	ld   l, l                                        ; $798d: $6d

jr_04e_798e:
	ld   a, b                                        ; $798e: $78
	rst  $38                                         ; $798f: $ff
	rst  $38                                         ; $7990: $ff
	dec  c                                           ; $7991: $0d
	inc  bc                                          ; $7992: $03
	ld   c, d                                        ; $7993: $4a
	ld   [bc], a                                     ; $7994: $02
	or   h                                           ; $7995: $b4
	ld   a, l                                        ; $7996: $7d
	sbc  [hl]                                        ; $7997: $9e
	ld   bc, $9a07                                   ; $7998: $01 $07 $9a
	ld   d, d                                        ; $799b: $52
	ld   e, a                                        ; $799c: $5f
	and  c                                           ; $799d: $a1
	ld   d, b                                        ; $799e: $50
	sub  a                                           ; $799f: $97
	ld   l, l                                        ; $79a0: $6d
	ld   e, c                                        ; $79a1: $59
	ld   bc, $0d08                                   ; $79a2: $01 $08 $0d
	ld   l, [hl]                                     ; $79a5: $6e
	sbc  a                                           ; $79a6: $9f
	dec  c                                           ; $79a7: $0d
	nop                                              ; $79a8: $00
	ld   a, [bc]                                     ; $79a9: $0a
	ld   b, $63                                      ; $79aa: $06 $63
	ld   bc, $5f07                                   ; $79ac: $01 $07 $5f
	ld   b, $04                                      ; $79af: $06 $04
	add  b                                           ; $79b1: $80
	ld   d, l                                        ; $79b2: $55
	ld   bc, $20ff                                   ; $79b3: $01 $ff $20
	nop                                              ; $79b6: $00
	dec  b                                           ; $79b7: $05
	add  b                                           ; $79b8: $80
	ld   d, l                                        ; $79b9: $55
	ld   bc, $0001                                   ; $79ba: $01 $01 $00
	ld   bc, $5d63                                   ; $79bd: $01 $63 $5d
	sub  a                                           ; $79c0: $97
	ld   h, e                                        ; $79c1: $63
	and  c                                           ; $79c2: $a1
	ld   e, d                                        ; $79c3: $5a
	inc  b                                           ; $79c4: $04
	ld   c, e                                        ; $79c5: $4b
	inc  b                                           ; $79c6: $04
	ldh  a, [c]                                      ; $79c7: $f2
	ld   [bc], a                                     ; $79c8: $02
	sub  a                                           ; $79c9: $97
	ld   [hl], l                                     ; $79ca: $75
	dec  c                                           ; $79cb: $0d
	ld   [bc], a                                     ; $79cc: $02
	rra                                              ; $79cd: $1f
	ld   h, [hl]                                     ; $79ce: $66
	sbc  c                                           ; $79cf: $99
	inc  b                                           ; $79d0: $04
	db   $ec                                         ; $79d1: $ec
	ld   a, l                                        ; $79d2: $7d
	ld   sp, hl                                      ; $79d3: $f9
	dec  c                                           ; $79d4: $0d
	nop                                              ; $79d5: $00
	ld   a, [bc]                                     ; $79d6: $0a
	add  hl, de                                      ; $79d7: $19

Call_04e_79d8:
	dec  b                                           ; $79d8: $05
	inc  bc                                          ; $79d9: $03
	inc  b                                           ; $79da: $04
	ld   a, [de]                                     ; $79db: $1a
	ld   [bc], a                                     ; $79dc: $02
	cp   b                                           ; $79dd: $b8
	nop                                              ; $79de: $00
	nop                                              ; $79df: $00
	inc  bc                                          ; $79e0: $03
	ld   d, b                                        ; $79e1: $50
	ld   [bc], a                                     ; $79e2: $02
	ld   a, h                                        ; $79e3: $7c
	ld   [bc], a                                     ; $79e4: $02
	or   [hl]                                        ; $79e5: $b6
	nop                                              ; $79e6: $00
	ld   bc, $f804                                   ; $79e7: $01 $04 $f8
	ld   [bc], a                                     ; $79ea: $02
	add  a                                           ; $79eb: $87
	inc  b                                           ; $79ec: $04
	or   a                                           ; $79ed: $b7
	inc  bc                                          ; $79ee: $03
	add  d                                           ; $79ef: $82
	nop                                              ; $79f0: $00
	ld   [bc], a                                     ; $79f1: $02
	rlca                                             ; $79f2: $07
	add  hl, de                                      ; $79f3: $19
	ld   b, $02                                      ; $79f4: $06 $02
	inc  bc                                          ; $79f6: $03
	ld   bc, $2000                                   ; $79f7: $01 $00 $20
	nop                                              ; $79fa: $00
	rlca                                             ; $79fb: $07
	ld   [hl], $06                                   ; $79fc: $36 $06
	ld   [bc], a                                     ; $79fe: $02
	inc  bc                                          ; $79ff: $03
	ld   bc, $2001                                   ; $7a00: $01 $01 $20
	nop                                              ; $7a03: $00
	rlca                                             ; $7a04: $07
	ld   [hl], $06                                   ; $7a05: $36 $06
	ld   [bc], a                                     ; $7a07: $02
	inc  bc                                          ; $7a08: $03
	ld   bc, $2002                                   ; $7a09: $01 $02 $20
	nop                                              ; $7a0c: $00
	ld   b, $36                                      ; $7a0d: $06 $36
	ld   b, $1c                                      ; $7a0f: $06 $1c
	rrca                                             ; $7a11: $0f
	ld   bc, $1401                                   ; $7a12: $01 $01 $14
	dec  de                                          ; $7a15: $1b
	ld   bc, $0301                                   ; $7a16: $01 $01 $03
	ld   c, d                                        ; $7a19: $4a
	ld   [bc], a                                     ; $7a1a: $02
	or   h                                           ; $7a1b: $b4
	ld   l, [hl]                                     ; $7a1c: $6e
	sbc  a                                           ; $7a1d: $9f
	dec  c                                           ; $7a1e: $0d
	nop                                              ; $7a1f: $00
	ld   a, [bc]                                     ; $7a20: $0a
	dec  b                                           ; $7a21: $05
	ld   b, b                                        ; $7a22: $40
	rst  $38                                         ; $7a23: $ff
	inc  bc                                          ; $7a24: $03
	rst  $38                                         ; $7a25: $ff
	ld   bc, $2801                                   ; $7a26: $01 $01 $28
	nop                                              ; $7a29: $00
	ld   b, $63                                      ; $7a2a: $06 $63
	ld   bc, $0f1c                                   ; $7a2c: $01 $1c $0f
	ld   [bc], a                                     ; $7a2f: $02
	ld   [bc], a                                     ; $7a30: $02
	inc  d                                           ; $7a31: $14
	inc  e                                           ; $7a32: $1c
	ld   bc, $0301                                   ; $7a33: $01 $01 $03
	jr   z, jr_04e_7a3c                              ; $7a36: $28 $04

	ld   c, b                                        ; $7a38: $48
	ld   l, [hl]                                     ; $7a39: $6e
	ld   [hl], c                                     ; $7a3a: $71
	ld   l, l                                        ; $7a3b: $6d

jr_04e_7a3c:
	ld   a, b                                        ; $7a3c: $78
	rst  $38                                         ; $7a3d: $ff
	rst  $38                                         ; $7a3e: $ff
	dec  c                                           ; $7a3f: $0d
	inc  bc                                          ; $7a40: $03
	ld   c, d                                        ; $7a41: $4a
	ld   [bc], a                                     ; $7a42: $02
	or   h                                           ; $7a43: $b4
	ld   a, l                                        ; $7a44: $7d
	sbc  [hl]                                        ; $7a45: $9e
	ld   bc, $0407                                   ; $7a46: $01 $07 $04
	ld   a, [de]                                     ; $7a49: $1a
	ld   [bc], a                                     ; $7a4a: $02
	cp   b                                           ; $7a4b: $b8
	ld   bc, $6e08                                   ; $7a4c: $01 $08 $6e
	sbc  a                                           ; $7a4f: $9f
	dec  c                                           ; $7a50: $0d
	nop                                              ; $7a51: $00
	ld   a, [bc]                                     ; $7a52: $0a
	ld   b, $63                                      ; $7a53: $06 $63
	ld   bc, $0c07                                   ; $7a55: $01 $07 $0c
	rlca                                             ; $7a58: $07
	inc  b                                           ; $7a59: $04
	add  b                                           ; $7a5a: $80
	ld   d, [hl]                                     ; $7a5b: $56
	ld   bc, $20ff                                   ; $7a5c: $01 $ff $20
	nop                                              ; $7a5f: $00
	dec  b                                           ; $7a60: $05
	add  b                                           ; $7a61: $80
	ld   d, [hl]                                     ; $7a62: $56
	ld   bc, $0001                                   ; $7a63: $01 $01 $00
	ld   bc, $5d63                                   ; $7a66: $01 $63 $5d
	sub  a                                           ; $7a69: $97
	ld   h, e                                        ; $7a6a: $63
	and  c                                           ; $7a6b: $a1
	ld   e, d                                        ; $7a6c: $5a
	ld   [bc], a                                     ; $7a6d: $02
	sbc  d                                           ; $7a6e: $9a
	ld   e, e                                        ; $7a6f: $5b
	ld   a, b                                        ; $7a70: $78
	dec  c                                           ; $7a71: $0d
	inc  b                                           ; $7a72: $04
	adc  a                                           ; $7a73: $8f
	ld   a, h                                        ; $7a74: $7c
	inc  b                                           ; $7a75: $04
	rst  ToBoot                                         ; $7a76: $c7
	inc  bc                                          ; $7a77: $03
	ld   c, a                                        ; $7a78: $4f
	ld   a, l                                        ; $7a79: $7d
	ld   sp, hl                                      ; $7a7a: $f9
	dec  c                                           ; $7a7b: $0d
	nop                                              ; $7a7c: $00
	ld   a, [bc]                                     ; $7a7d: $0a
	add  hl, de                                      ; $7a7e: $19
	dec  b                                           ; $7a7f: $05
	inc  bc                                          ; $7a80: $03
	dec  b                                           ; $7a81: $05
	rra                                              ; $7a82: $1f
	inc  b                                           ; $7a83: $04
	sub  c                                           ; $7a84: $91
	inc  b                                           ; $7a85: $04
	sub  d                                           ; $7a86: $92
	ld   [bc], a                                     ; $7a87: $02
	and  h                                           ; $7a88: $a4
	nop                                              ; $7a89: $00
	nop                                              ; $7a8a: $00
	inc  b                                           ; $7a8b: $04
	and  d                                           ; $7a8c: $a2
	halt                                             ; $7a8d: $76
	inc  bc                                          ; $7a8e: $03
	ld   e, $00                                      ; $7a8f: $1e $00
	ld   bc, $9503                                   ; $7a91: $01 $03 $95
	dec  b                                           ; $7a94: $05
	inc  e                                           ; $7a95: $1c
	ld   a, h                                        ; $7a96: $7c
	inc  bc                                          ; $7a97: $03
	ld   h, l                                        ; $7a98: $65
	nop                                              ; $7a99: $00
	ld   [bc], a                                     ; $7a9a: $02
	rlca                                             ; $7a9b: $07
	jp   nz, $0206                                   ; $7a9c: $c2 $06 $02

	inc  bc                                          ; $7a9f: $03
	ld   bc, $2000                                   ; $7aa0: $01 $00 $20
	nop                                              ; $7aa3: $00
	rlca                                             ; $7aa4: $07
	rst  JumpTable                                         ; $7aa5: $df
	ld   b, $02                                      ; $7aa6: $06 $02
	inc  bc                                          ; $7aa8: $03
	ld   bc, $2001                                   ; $7aa9: $01 $01 $20
	nop                                              ; $7aac: $00
	rlca                                             ; $7aad: $07
	rst  JumpTable                                         ; $7aae: $df
	ld   b, $02                                      ; $7aaf: $06 $02
	inc  bc                                          ; $7ab1: $03
	ld   bc, $2002                                   ; $7ab2: $01 $02 $20
	nop                                              ; $7ab5: $00
	ld   b, $df                                      ; $7ab6: $06 $df
	ld   b, $1c                                      ; $7ab8: $06 $1c
	rrca                                             ; $7aba: $0f
	ld   bc, $1401                                   ; $7abb: $01 $01 $14
	dec  de                                          ; $7abe: $1b
	ld   bc, $0301                                   ; $7abf: $01 $01 $03
	ld   c, d                                        ; $7ac2: $4a
	ld   [bc], a                                     ; $7ac3: $02
	or   h                                           ; $7ac4: $b4
	ld   l, [hl]                                     ; $7ac5: $6e
	sbc  a                                           ; $7ac6: $9f
	dec  c                                           ; $7ac7: $0d
	nop                                              ; $7ac8: $00
	ld   a, [bc]                                     ; $7ac9: $0a
	dec  b                                           ; $7aca: $05
	ld   b, b                                        ; $7acb: $40
	rst  $38                                         ; $7acc: $ff
	inc  bc                                          ; $7acd: $03
	rst  $38                                         ; $7ace: $ff
	ld   bc, $2801                                   ; $7acf: $01 $01 $28
	nop                                              ; $7ad2: $00
	ld   b, $63                                      ; $7ad3: $06 $63
	ld   bc, $0f1c                                   ; $7ad5: $01 $1c $0f
	ld   [bc], a                                     ; $7ad8: $02
	ld   [bc], a                                     ; $7ad9: $02
	inc  d                                           ; $7ada: $14
	inc  e                                           ; $7adb: $1c
	ld   bc, $0301                                   ; $7adc: $01 $01 $03
	jr   z, jr_04e_7ae5                              ; $7adf: $28 $04

	ld   c, b                                        ; $7ae1: $48
	ld   l, [hl]                                     ; $7ae2: $6e
	ld   [hl], c                                     ; $7ae3: $71
	ld   l, l                                        ; $7ae4: $6d

jr_04e_7ae5:
	ld   a, b                                        ; $7ae5: $78
	rst  $38                                         ; $7ae6: $ff
	rst  $38                                         ; $7ae7: $ff
	dec  c                                           ; $7ae8: $0d
	inc  bc                                          ; $7ae9: $03
	ld   c, d                                        ; $7aea: $4a
	ld   [bc], a                                     ; $7aeb: $02
	or   h                                           ; $7aec: $b4
	ld   a, l                                        ; $7aed: $7d
	sbc  [hl]                                        ; $7aee: $9e
	ld   bc, $0507                                   ; $7aef: $01 $07 $05
	rra                                              ; $7af2: $1f
	inc  b                                           ; $7af3: $04
	sub  c                                           ; $7af4: $91
	inc  b                                           ; $7af5: $04
	sub  d                                           ; $7af6: $92
	ld   [bc], a                                     ; $7af7: $02
	and  h                                           ; $7af8: $a4
	ld   bc, $6e08                                   ; $7af9: $01 $08 $6e
	sbc  a                                           ; $7afc: $9f
	dec  c                                           ; $7afd: $0d
	nop                                              ; $7afe: $00
	ld   a, [bc]                                     ; $7aff: $0a
	ld   b, $63                                      ; $7b00: $06 $63
	ld   bc, $c407                                   ; $7b02: $01 $07 $c4
	ld   bc, $8004                                   ; $7b05: $01 $04 $80
	ld   d, a                                        ; $7b08: $57
	ld   bc, $20ff                                   ; $7b09: $01 $ff $20
	nop                                              ; $7b0c: $00
	dec  b                                           ; $7b0d: $05
	add  b                                           ; $7b0e: $80
	ld   d, a                                        ; $7b0f: $57
	ld   bc, $0001                                   ; $7b10: $01 $01 $00
	ld   bc, $5d63                                   ; $7b13: $01 $63 $5d
	sub  a                                           ; $7b16: $97
	ld   h, e                                        ; $7b17: $63
	and  c                                           ; $7b18: $a1
	ld   a, h                                        ; $7b19: $7c
	db   $ec                                         ; $7b1a: $ec
	db   $dd                                         ; $7b1b: $dd
	push af                                          ; $7b1c: $f5
	ld   a, h                                        ; $7b1d: $7c
	inc  bc                                          ; $7b1e: $03
	dec  bc                                          ; $7b1f: $0b
	ld   a, l                                        ; $7b20: $7d
	ld   sp, hl                                      ; $7b21: $f9
	dec  c                                           ; $7b22: $0d
	nop                                              ; $7b23: $00
	ld   a, [bc]                                     ; $7b24: $0a
	add  hl, de                                      ; $7b25: $19
	dec  b                                           ; $7b26: $05
	inc  bc                                          ; $7b27: $03
	inc  bc                                          ; $7b28: $03
	ld   bc, $0b03                                   ; $7b29: $01 $03 $0b
	nop                                              ; $7b2c: $00
	nop                                              ; $7b2d: $00
	inc  bc                                          ; $7b2e: $03
	ld   a, [bc]                                     ; $7b2f: $0a
	inc  bc                                          ; $7b30: $03
	dec  bc                                          ; $7b31: $0b
	nop                                              ; $7b32: $00
	ld   bc, $0202                                   ; $7b33: $01 $02 $02
	inc  bc                                          ; $7b36: $03
	dec  bc                                          ; $7b37: $0b
	nop                                              ; $7b38: $00
	ld   [bc], a                                     ; $7b39: $02
	rlca                                             ; $7b3a: $07
	ld   h, c                                        ; $7b3b: $61
	rlca                                             ; $7b3c: $07
	ld   [bc], a                                     ; $7b3d: $02
	inc  bc                                          ; $7b3e: $03
	ld   bc, $2000                                   ; $7b3f: $01 $00 $20
	nop                                              ; $7b42: $00
	rlca                                             ; $7b43: $07
	ld   a, [hl]                                     ; $7b44: $7e
	rlca                                             ; $7b45: $07
	ld   [bc], a                                     ; $7b46: $02
	inc  bc                                          ; $7b47: $03
	ld   bc, $2001                                   ; $7b48: $01 $01 $20
	nop                                              ; $7b4b: $00
	rlca                                             ; $7b4c: $07
	ld   a, [hl]                                     ; $7b4d: $7e
	rlca                                             ; $7b4e: $07
	ld   [bc], a                                     ; $7b4f: $02
	inc  bc                                          ; $7b50: $03
	ld   bc, $2002                                   ; $7b51: $01 $02 $20
	nop                                              ; $7b54: $00
	ld   b, $7e                                      ; $7b55: $06 $7e
	rlca                                             ; $7b57: $07
	inc  e                                           ; $7b58: $1c
	rrca                                             ; $7b59: $0f
	ld   bc, $1401                                   ; $7b5a: $01 $01 $14
	dec  de                                          ; $7b5d: $1b
	ld   bc, $0301                                   ; $7b5e: $01 $01 $03
	ld   c, d                                        ; $7b61: $4a
	ld   [bc], a                                     ; $7b62: $02
	or   h                                           ; $7b63: $b4
	ld   l, [hl]                                     ; $7b64: $6e
	sbc  a                                           ; $7b65: $9f
	dec  c                                           ; $7b66: $0d
	nop                                              ; $7b67: $00
	ld   a, [bc]                                     ; $7b68: $0a
	dec  b                                           ; $7b69: $05
	ld   b, b                                        ; $7b6a: $40
	rst  $38                                         ; $7b6b: $ff
	inc  bc                                          ; $7b6c: $03
	rst  $38                                         ; $7b6d: $ff
	ld   bc, $2801                                   ; $7b6e: $01 $01 $28
	nop                                              ; $7b71: $00
	ld   b, $63                                      ; $7b72: $06 $63
	ld   bc, $0f1c                                   ; $7b74: $01 $1c $0f
	ld   [bc], a                                     ; $7b77: $02
	ld   [bc], a                                     ; $7b78: $02
	inc  d                                           ; $7b79: $14
	inc  e                                           ; $7b7a: $1c
	ld   bc, $0301                                   ; $7b7b: $01 $01 $03
	jr   z, jr_04e_7b84                              ; $7b7e: $28 $04

	ld   c, b                                        ; $7b80: $48
	ld   l, [hl]                                     ; $7b81: $6e
	ld   [hl], c                                     ; $7b82: $71
	ld   l, l                                        ; $7b83: $6d

jr_04e_7b84:
	ld   a, b                                        ; $7b84: $78
	rst  $38                                         ; $7b85: $ff
	rst  $38                                         ; $7b86: $ff
	dec  c                                           ; $7b87: $0d
	inc  bc                                          ; $7b88: $03
	ld   c, d                                        ; $7b89: $4a
	ld   [bc], a                                     ; $7b8a: $02
	or   h                                           ; $7b8b: $b4
	ld   a, l                                        ; $7b8c: $7d
	sbc  [hl]                                        ; $7b8d: $9e
	ld   bc, $0307                                   ; $7b8e: $01 $07 $03
	ld   bc, $0b03                                   ; $7b91: $01 $03 $0b
	ld   bc, $6e08                                   ; $7b94: $01 $08 $6e
	sbc  a                                           ; $7b97: $9f
	dec  c                                           ; $7b98: $0d
	nop                                              ; $7b99: $00
	ld   a, [bc]                                     ; $7b9a: $0a
	ld   b, $63                                      ; $7b9b: $06 $63
	ld   bc, $0400                                   ; $7b9d: $01 $00 $04
	add  b                                           ; $7ba0: $80
	call nz, $0001                                   ; $7ba1: $c4 $01 $00
	jr   nz, jr_04e_7ba6                             ; $7ba4: $20 $00

jr_04e_7ba6:
	inc  e                                           ; $7ba6: $1c
	inc  b                                           ; $7ba7: $04
	ld   bc, $0201                                   ; $7ba8: $01 $01 $02
	ld   bc, $9e50                                   ; $7bab: $01 $50 $9e
	ld   l, a                                        ; $7bae: $6f
	ld   d, d                                        ; $7baf: $52
	ld   [bc], a                                     ; $7bb0: $02
	inc  de                                          ; $7bb1: $13
	ld   l, a                                        ; $7bb2: $6f
	sub  c                                           ; $7bb3: $91
	and  c                                           ; $7bb4: $a1
	ld   a, [$500d]                                  ; $7bb5: $fa $0d $50
	ei                                               ; $7bb8: $fb
	ld   l, e                                        ; $7bb9: $6b
	ei                                               ; $7bba: $fb
	adc  d                                           ; $7bbb: $8a
	ei                                               ; $7bbc: $fb
	ld   a, [$000d]                                  ; $7bbd: $fa $0d $00
	ld   a, [bc]                                     ; $7bc0: $0a
	add  hl, de                                      ; $7bc1: $19
	dec  b                                           ; $7bc2: $05
	inc  bc                                          ; $7bc3: $03
	ld   h, l                                        ; $7bc4: $65
	sbc  b                                           ; $7bc5: $98
	halt                                             ; $7bc6: $76
	sbc  b                                           ; $7bc7: $98
	nop                                              ; $7bc8: $00
	nop                                              ; $7bc9: $00
	or   b                                           ; $7bca: $b0
	and  l                                           ; $7bcb: $a5
	cp   e                                           ; $7bcc: $bb
	nop                                              ; $7bcd: $00
	ld   bc, $9166                                   ; $7bce: $01 $66 $91
	and  c                                           ; $7bd1: $a1
	ld   e, a                                        ; $7bd2: $5f
	and  c                                           ; $7bd3: $a1
	nop                                              ; $7bd4: $00
	ld   [bc], a                                     ; $7bd5: $02
	rlca                                             ; $7bd6: $07
	add  e                                           ; $7bd7: $83
	nop                                              ; $7bd8: $00
	ld   [bc], a                                     ; $7bd9: $02
	inc  bc                                          ; $7bda: $03
	ld   bc, $2000                                   ; $7bdb: $01 $00 $20
	nop                                              ; $7bde: $00
	rlca                                             ; $7bdf: $07
	cp   h                                           ; $7be0: $bc
	inc  bc                                          ; $7be1: $03
	ld   [bc], a                                     ; $7be2: $02
	inc  bc                                          ; $7be3: $03
	ld   bc, $2001                                   ; $7be4: $01 $01 $20
	nop                                              ; $7be7: $00
	rlca                                             ; $7be8: $07
	ld   [$0206], a                                  ; $7be9: $ea $06 $02
	inc  bc                                          ; $7bec: $03
	ld   bc, $2002                                   ; $7bed: $01 $02 $20
	nop                                              ; $7bf0: $00
	ld   b, $4e                                      ; $7bf1: $06 $4e
	nop                                              ; $7bf3: $00
	inc  e                                           ; $7bf4: $1c
	inc  b                                           ; $7bf5: $04
	rlca                                             ; $7bf6: $07
	rlca                                             ; $7bf7: $07
	dec  e                                           ; $7bf8: $1d
	ld   b, b                                        ; $7bf9: $40
	inc  d                                           ; $7bfa: $14
	inc  bc                                          ; $7bfb: $03
	inc  d                                           ; $7bfc: $14
	ld   bc, $2902                                   ; $7bfd: $01 $02 $29
	nop                                              ; $7c00: $00
	ld   bc, $9e50                                   ; $7c01: $01 $50 $9e
	and  l                                           ; $7c04: $a5
	and  $6b                                         ; $7c05: $e6 $6b
	ld   d, h                                        ; $7c07: $54
	ld   a, b                                        ; $7c08: $78
	ld   e, c                                        ; $7c09: $59
	ld   e, b                                        ; $7c0a: $58
	ld   h, l                                        ; $7c0b: $65
	ld   [hl], h                                     ; $7c0c: $74
	sbc  c                                           ; $7c0d: $99
	rst  $38                                         ; $7c0e: $ff
	rst  $38                                         ; $7c0f: $ff
	dec  c                                           ; $7c10: $0d
	nop                                              ; $7c11: $00
	ld   a, [bc]                                     ; $7c12: $0a
	ld   bc, $5490                                   ; $7c13: $01 $90 $54
	ld   d, d                                        ; $7c16: $52
	ld   d, d                                        ; $7c17: $52
	ld   a, [$520d]                                  ; $7c18: $fa $0d $52
	ld   h, c                                        ; $7c1b: $61
	ld   d, h                                        ; $7c1c: $54
	sbc  [hl]                                        ; $7c1d: $9e
	cp   c                                           ; $7c1e: $b9
	push hl                                          ; $7c1f: $e5
	push af                                          ; $7c20: $f5
	sbc  $fb                                         ; $7c21: $de $fb
	db   $ed                                         ; $7c23: $ed
	sbc  a                                           ; $7c24: $9f
	dec  c                                           ; $7c25: $0d
	nop                                              ; $7c26: $00
	ld   a, [bc]                                     ; $7c27: $0a
	nop                                              ; $7c28: $00
	rrca                                             ; $7c29: $0f
	nop                                              ; $7c2a: $00
	ld   bc, $6601                                   ; $7c2b: $01 $01 $66
	sub  c                                           ; $7c2e: $91
	ld   d, b                                        ; $7c2f: $50
	sbc  [hl]                                        ; $7c30: $9e
	ld   h, l                                        ; $7c31: $65
	sbc  b                                           ; $7c32: $98
	halt                                             ; $7c33: $76
	sbc  b                                           ; $7c34: $98
	and  b                                           ; $7c35: $a0
	sub  d                                           ; $7c36: $92
	sbc  e                                           ; $7c37: $9b
	ld   d, h                                        ; $7c38: $54
	sbc  a                                           ; $7c39: $9f
	dec  c                                           ; $7c3a: $0d
	nop                                              ; $7c3b: $00
	ld   a, [bc]                                     ; $7c3c: $0a
	dec  b                                           ; $7c3d: $05
	add  b                                           ; $7c3e: $80
	ld   b, l                                        ; $7c3f: $45
	ld   bc, $0001                                   ; $7c40: $01 $01 $00
	rrca                                             ; $7c43: $0f
	inc  b                                           ; $7c44: $04
	nop                                              ; $7c45: $00
	ld   bc, $a154                                   ; $7c46: $01 $54 $a1
	sbc  [hl]                                        ; $7c49: $9e
	ld   d, d                                        ; $7c4a: $52
	ld   d, d                                        ; $7c4b: $52
	sub  [hl]                                        ; $7c4c: $96
	sbc  a                                           ; $7c4d: $9f
	dec  c                                           ; $7c4e: $0d
	ld   h, [hl]                                     ; $7c4f: $66
	sub  c                                           ; $7c50: $91
	sbc  [hl]                                        ; $7c51: $9e
	and  e                                           ; $7c52: $a3
	and  l                                           ; $7c53: $a5
	db   $ec                                         ; $7c54: $ec
	cp   d                                           ; $7c55: $ba
	ld   e, c                                        ; $7c56: $59
	sub  a                                           ; $7c57: $97
	ld   a, e                                        ; $7c58: $7b
	sbc  a                                           ; $7c59: $9f
	dec  c                                           ; $7c5a: $0d
	ld   h, e                                        ; $7c5b: $63
	ld   d, d                                        ; $7c5c: $52
	ld   h, l                                        ; $7c5d: $65
	sub  l                                           ; $7c5e: $95
	ld   a, l                                        ; $7c5f: $7d
	ld   bc, $a307                                   ; $7c60: $01 $07 $a3
	and  l                                           ; $7c63: $a5
	db   $ec                                         ; $7c64: $ec
	cp   d                                           ; $7c65: $ba
	ld   bc, $6e08                                   ; $7c66: $01 $08 $6e
	sub  [hl]                                        ; $7c69: $96
	sbc  a                                           ; $7c6a: $9f
	dec  c                                           ; $7c6b: $0d
	nop                                              ; $7c6c: $00
	ld   a, [bc]                                     ; $7c6d: $0a
	add  hl, de                                      ; $7c6e: $19
	dec  b                                           ; $7c6f: $05
	inc  bc                                          ; $7c70: $03
	cp   d                                           ; $7c71: $ba
	and  l                                           ; $7c72: $a5
	xor  h                                           ; $7c73: $ac
	nop                                              ; $7c74: $00
	nop                                              ; $7c75: $00
	cp   d                                           ; $7c76: $ba
	pop  af                                          ; $7c77: $f1
	push af                                          ; $7c78: $f5
	nop                                              ; $7c79: $00
	ld   bc, $c9ba                                   ; $7c7a: $01 $ba $c9
	ei                                               ; $7c7d: $fb
	push af                                          ; $7c7e: $f5
	nop                                              ; $7c7f: $00
	ld   [bc], a                                     ; $7c80: $02
	rlca                                             ; $7c81: $07
	dec  a                                           ; $7c82: $3d
	ld   bc, $0302                                   ; $7c83: $01 $02 $03
	ld   bc, $2000                                   ; $7c86: $01 $00 $20
	nop                                              ; $7c89: $00
	rlca                                             ; $7c8a: $07
	dec  de                                          ; $7c8b: $1b
	ld   bc, $0302                                   ; $7c8c: $01 $02 $03
	ld   bc, $2001                                   ; $7c8f: $01 $01 $20
	nop                                              ; $7c92: $00
	rlca                                             ; $7c93: $07
	dec  de                                          ; $7c94: $1b
	ld   bc, $0302                                   ; $7c95: $01 $02 $03
	ld   bc, $2002                                   ; $7c98: $01 $02 $20
	nop                                              ; $7c9b: $00
	ld   b, $f9                                      ; $7c9c: $06 $f9
	nop                                              ; $7c9e: $00
	inc  e                                           ; $7c9f: $1c
	inc  b                                           ; $7ca0: $04
	nop                                              ; $7ca1: $00
	nop                                              ; $7ca2: $00
	ld   bc, $fbd7                                   ; $7ca3: $01 $d7 $fb
	sbc  [hl]                                        ; $7ca6: $9e
	ld   h, [hl]                                     ; $7ca7: $66
	ld   e, c                                        ; $7ca8: $59
	and  c                                           ; $7ca9: $a1
	ld   e, h                                        ; $7caa: $5c
	sbc  d                                           ; $7cab: $9a
	ld   l, [hl]                                     ; $7cac: $6e
	sub  [hl]                                        ; $7cad: $96
	sbc  a                                           ; $7cae: $9f
	dec  c                                           ; $7caf: $0d
	ld   l, a                                        ; $7cb0: $6f
	ld   d, d                                        ; $7cb1: $52
	ld   [bc], a                                     ; $7cb2: $02
	inc  de                                          ; $7cb3: $13
	ld   l, a                                        ; $7cb4: $6f
	sub  c                                           ; $7cb5: $91
	and  c                                           ; $7cb6: $a1
	ld   a, h                                        ; $7cb7: $7c
	adc  h                                           ; $7cb8: $8c
	ld   e, a                                        ; $7cb9: $5f
	sbc  a                                           ; $7cba: $9f
	dec  c                                           ; $7cbb: $0d
	nop                                              ; $7cbc: $00
	ld   a, [bc]                                     ; $7cbd: $0a
	ld   b, $9e                                      ; $7cbe: $06 $9e
	inc  bc                                          ; $7cc0: $03
	inc  e                                           ; $7cc1: $1c
	inc  b                                           ; $7cc2: $04
	nop                                              ; $7cc3: $00
	nop                                              ; $7cc4: $00
	ld   bc, $0701                                   ; $7cc5: $01 $01 $07
	push af                                          ; $7cc8: $f5
	ld   bc, $5a08                                   ; $7cc9: $01 $08 $5a
	ld   [hl], d                                     ; $7ccc: $72
	ld   d, d                                        ; $7ccd: $52
	ld   l, l                                        ; $7cce: $6d
	ld   e, c                                        ; $7ccf: $59
	sub  a                                           ; $7cd0: $97
	dec  c                                           ; $7cd1: $0d
	ld   l, a                                        ; $7cd2: $6f
	ld   d, d                                        ; $7cd3: $52
	ld   [bc], a                                     ; $7cd4: $02
	inc  de                                          ; $7cd5: $13
	ld   l, a                                        ; $7cd6: $6f
	sub  c                                           ; $7cd7: $91
	and  c                                           ; $7cd8: $a1
	ld   a, h                                        ; $7cd9: $7c
	adc  h                                           ; $7cda: $8c
	ld   e, a                                        ; $7cdb: $5f
	sbc  a                                           ; $7cdc: $9f
	dec  c                                           ; $7cdd: $0d
	nop                                              ; $7cde: $00
	ld   a, [bc]                                     ; $7cdf: $0a
	ld   b, $9e                                      ; $7ce0: $06 $9e
	inc  bc                                          ; $7ce2: $03
	rrca                                             ; $7ce3: $0f
	nop                                              ; $7ce4: $00
	ld   bc, $0101                                   ; $7ce5: $01 $01 $01
	rlca                                             ; $7ce8: $07
	cp   d                                           ; $7ce9: $ba
	and  l                                           ; $7cea: $a5
	xor  h                                           ; $7ceb: $ac
	ld   bc, $fa08                                   ; $7cec: $01 $08 $fa
	dec  c                                           ; $7cef: $0d
	nop                                              ; $7cf0: $00
	ld   a, [bc]                                     ; $7cf1: $0a
	inc  e                                           ; $7cf2: $1c
	inc  b                                           ; $7cf3: $04
	nop                                              ; $7cf4: $00
	nop                                              ; $7cf5: $00
	ld   bc, $ffac                                   ; $7cf6: $01 $ac $ff
	rst  $38                                         ; $7cf9: $ff
	ld   bc, $ac07                                   ; $7cfa: $01 $07 $ac
	db   $e3                                         ; $7cfd: $e3
	db   $eb                                         ; $7cfe: $eb
	ld   bc, $fa08                                   ; $7cff: $01 $08 $fa
	dec  c                                           ; $7d02: $0d
	nop                                              ; $7d03: $00
	ld   a, [bc]                                     ; $7d04: $0a
	add  hl, de                                      ; $7d05: $19
	dec  b                                           ; $7d06: $05
	inc  bc                                          ; $7d07: $03
	db   $eb                                         ; $7d08: $eb
	and  l                                           ; $7d09: $a5
	push af                                          ; $7d0a: $f5
	pop  bc                                          ; $7d0b: $c1
	push af                                          ; $7d0c: $f5
	cp   d                                           ; $7d0d: $ba
	nop                                              ; $7d0e: $00
	nop                                              ; $7d0f: $00
	db   $eb                                         ; $7d10: $eb
	ei                                               ; $7d11: $fb
	db   $e3                                         ; $7d12: $e3
	push af                                          ; $7d13: $f5
	nop                                              ; $7d14: $00
	ld   bc, $a5eb                                   ; $7d15: $01 $eb $a5
	xor  e                                           ; $7d18: $ab
	push af                                          ; $7d19: $f5
	nop                                              ; $7d1a: $00
	ld   [bc], a                                     ; $7d1b: $02
	rlca                                             ; $7d1c: $07
	sub  h                                           ; $7d1d: $94
	ld   bc, $0302                                   ; $7d1e: $01 $02 $03
	ld   bc, $2000                                   ; $7d21: $01 $00 $20
	nop                                              ; $7d24: $00
	rlca                                             ; $7d25: $07
	dec  de                                          ; $7d26: $1b
	ld   bc, $0302                                   ; $7d27: $01 $02 $03
	ld   bc, $2001                                   ; $7d2a: $01 $01 $20
	nop                                              ; $7d2d: $00
	rlca                                             ; $7d2e: $07
	dec  de                                          ; $7d2f: $1b
	ld   bc, $0302                                   ; $7d30: $01 $02 $03
	ld   bc, $2002                                   ; $7d33: $01 $02 $20
	nop                                              ; $7d36: $00
	ld   b, $f9                                      ; $7d37: $06 $f9
	nop                                              ; $7d39: $00
	rrca                                             ; $7d3a: $0f
	nop                                              ; $7d3b: $00
	ld   bc, $0101                                   ; $7d3c: $01 $01 $01
	rlca                                             ; $7d3f: $07
	db   $eb                                         ; $7d40: $eb
	and  l                                           ; $7d41: $a5
	push af                                          ; $7d42: $f5
	pop  bc                                          ; $7d43: $c1
	push af                                          ; $7d44: $f5
	cp   d                                           ; $7d45: $ba
	ld   bc, $fa08                                   ; $7d46: $01 $08 $fa
	dec  c                                           ; $7d49: $0d
	nop                                              ; $7d4a: $00
	ld   a, [bc]                                     ; $7d4b: $0a
	inc  e                                           ; $7d4c: $1c
	inc  b                                           ; $7d4d: $04
	nop                                              ; $7d4e: $00
	nop                                              ; $7d4f: $00
	ld   bc, $ffba                                   ; $7d50: $01 $ba $ff
	rst  $38                                         ; $7d53: $ff
	ld   bc, $ba07                                   ; $7d54: $01 $07 $ba
	and  l                                           ; $7d57: $a5
	cp   d                                           ; $7d58: $ba
	ld   bc, $fa08                                   ; $7d59: $01 $08 $fa
	dec  c                                           ; $7d5c: $0d
	nop                                              ; $7d5d: $00
	ld   a, [bc]                                     ; $7d5e: $0a
	add  hl, de                                      ; $7d5f: $19
	dec  b                                           ; $7d60: $05
	inc  bc                                          ; $7d61: $03
	cp   d                                           ; $7d62: $ba
	jp   nc, $baa5                                   ; $7d63: $d2 $a5 $ba

	nop                                              ; $7d66: $00
	nop                                              ; $7d67: $00
	cp   d                                           ; $7d68: $ba
	pop  af                                          ; $7d69: $f1
	push af                                          ; $7d6a: $f5
	nop                                              ; $7d6b: $00
	ld   bc, $b2ba                                   ; $7d6c: $01 $ba $b2
	db   $ed                                         ; $7d6f: $ed
	ret                                              ; $7d70: $c9


	push af                                          ; $7d71: $f5
	nop                                              ; $7d72: $00
	ld   [bc], a                                     ; $7d73: $02
	rlca                                             ; $7d74: $07
	db   $ec                                         ; $7d75: $ec
	ld   bc, $0302                                   ; $7d76: $01 $02 $03
	ld   bc, $2000                                   ; $7d79: $01 $00 $20
	nop                                              ; $7d7c: $00
	rlca                                             ; $7d7d: $07
	dec  de                                          ; $7d7e: $1b
	ld   bc, $0302                                   ; $7d7f: $01 $02 $03
	ld   bc, $2001                                   ; $7d82: $01 $01 $20
	nop                                              ; $7d85: $00
	rlca                                             ; $7d86: $07
	dec  de                                          ; $7d87: $1b
	ld   bc, $0302                                   ; $7d88: $01 $02 $03
	ld   bc, $2002                                   ; $7d8b: $01 $02 $20
	nop                                              ; $7d8e: $00
	ld   b, $f9                                      ; $7d8f: $06 $f9
	nop                                              ; $7d91: $00
	rrca                                             ; $7d92: $0f
	nop                                              ; $7d93: $00
	ld   bc, $0101                                   ; $7d94: $01 $01 $01
	rlca                                             ; $7d97: $07
	cp   d                                           ; $7d98: $ba
	jp   nc, $baa5                                   ; $7d99: $d2 $a5 $ba

	ld   bc, $fa08                                   ; $7d9c: $01 $08 $fa
	dec  c                                           ; $7d9f: $0d
	nop                                              ; $7da0: $00
	ld   a, [bc]                                     ; $7da1: $0a
	inc  e                                           ; $7da2: $1c
	inc  b                                           ; $7da3: $04
	inc  bc                                          ; $7da4: $03
	inc  bc                                          ; $7da5: $03
	ld   bc, $6d8c                                   ; $7da6: $01 $8c $6d
	ld   bc, $ba07                                   ; $7da9: $01 $07 $ba
	ld   bc, $5308                                   ; $7dac: $01 $08 $53
	ld   sp, hl                                      ; $7daf: $f9
	dec  c                                           ; $7db0: $0d
	ld   d, [hl]                                     ; $7db1: $56
	rst  $38                                         ; $7db2: $ff
	rst  $38                                         ; $7db3: $ff
	halt                                             ; $7db4: $76
	ld   bc, $6707                                   ; $7db5: $01 $07 $67
	sbc  c                                           ; $7db8: $99
	adc  a                                           ; $7db9: $8f
	ld   bc, $fa08                                   ; $7dba: $01 $08 $fa
	dec  c                                           ; $7dbd: $0d
	nop                                              ; $7dbe: $00
	ld   a, [bc]                                     ; $7dbf: $0a
	add  hl, de                                      ; $7dc0: $19
	dec  b                                           ; $7dc1: $05
	inc  bc                                          ; $7dc2: $03
	db   $e3                                         ; $7dc3: $e3
	pop  bc                                          ; $7dc4: $c1
	xor  h                                           ; $7dc5: $ac
	nop                                              ; $7dc6: $00
	nop                                              ; $7dc7: $00
	db   $e3                                         ; $7dc8: $e3
	xor  l                                           ; $7dc9: $ad
	call c, $00f5                                    ; $7dca: $dc $f5 $00
	ld   bc, $528f                                   ; $7dcd: $01 $8f $52
	ld   h, [hl]                                     ; $7dd0: $66
	and  c                                           ; $7dd1: $a1
	nop                                              ; $7dd2: $00
	ld   [bc], a                                     ; $7dd3: $02
	rlca                                             ; $7dd4: $07
	xor  c                                           ; $7dd5: $a9
	ld   [bc], a                                     ; $7dd6: $02
	ld   [bc], a                                     ; $7dd7: $02
	inc  bc                                          ; $7dd8: $03
	ld   bc, $2000                                   ; $7dd9: $01 $00 $20
	nop                                              ; $7ddc: $00
	rlca                                             ; $7ddd: $07
	ld   a, e                                        ; $7dde: $7b
	ld   [bc], a                                     ; $7ddf: $02
	ld   [bc], a                                     ; $7de0: $02
	inc  bc                                          ; $7de1: $03
	ld   bc, $2001                                   ; $7de2: $01 $01 $20
	nop                                              ; $7de5: $00
	rlca                                             ; $7de6: $07
	ld   a, e                                        ; $7de7: $7b
	ld   [bc], a                                     ; $7de8: $02
	ld   [bc], a                                     ; $7de9: $02
	inc  bc                                          ; $7dea: $03
	ld   bc, $2002                                   ; $7deb: $01 $02 $20
	nop                                              ; $7dee: $00
	ld   b, $4c                                      ; $7def: $06 $4c
	ld   [bc], a                                     ; $7df1: $02
	inc  e                                           ; $7df2: $1c
	inc  b                                           ; $7df3: $04
	ld   bc, $1d01                                   ; $7df4: $01 $01 $1d
	ld   b, b                                        ; $7df7: $40
	inc  d                                           ; $7df8: $14
	inc  bc                                          ; $7df9: $03
	inc  d                                           ; $7dfa: $14
	ld   bc, $2802                                   ; $7dfb: $01 $02 $28
	nop                                              ; $7dfe: $00
	ld   bc, $fbd7                                   ; $7dff: $01 $d7 $fb
	sbc  [hl]                                        ; $7e02: $9e
	ld   h, [hl]                                     ; $7e03: $66
	ld   e, c                                        ; $7e04: $59
	and  c                                           ; $7e05: $a1
	ld   e, h                                        ; $7e06: $5c
	sbc  d                                           ; $7e07: $9a
	ld   l, [hl]                                     ; $7e08: $6e
	sub  [hl]                                        ; $7e09: $96
	sbc  a                                           ; $7e0a: $9f
	dec  c                                           ; $7e0b: $0d
	and  e                                           ; $7e0c: $a3
	and  l                                           ; $7e0d: $a5
	db   $ec                                         ; $7e0e: $ec
	cp   d                                           ; $7e0f: $ba
	ld   a, h                                        ; $7e10: $7c
	ld   e, c                                        ; $7e11: $59
	ld   l, a                                        ; $7e12: $6f
	db   $fc                                         ; $7e13: $fc
	sbc  a                                           ; $7e14: $9f
	dec  c                                           ; $7e15: $0d
	xor  c                                           ; $7e16: $a9
	reti                                             ; $7e17: $d9


	reti                                             ; $7e18: $d9


	reti                                             ; $7e19: $d9


	sbc  a                                           ; $7e1a: $9f
	dec  c                                           ; $7e1b: $0d
	nop                                              ; $7e1c: $00
	ld   a, [bc]                                     ; $7e1d: $0a
	ld   b, $9e                                      ; $7e1e: $06 $9e
	inc  bc                                          ; $7e20: $03
	inc  e                                           ; $7e21: $1c
	inc  b                                           ; $7e22: $04
	ld   bc, $1d01                                   ; $7e23: $01 $01 $1d
	ld   b, b                                        ; $7e26: $40
	inc  d                                           ; $7e27: $14
	inc  bc                                          ; $7e28: $03
	inc  d                                           ; $7e29: $14
	ld   bc, $2802                                   ; $7e2a: $01 $02 $28
	nop                                              ; $7e2d: $00
	ld   bc, $d9a9                                   ; $7e2e: $01 $a9 $d9
	reti                                             ; $7e31: $d9


	reti                                             ; $7e32: $d9


	sbc  a                                           ; $7e33: $9f
	dec  c                                           ; $7e34: $0d
	ld   bc, $f507                                   ; $7e35: $01 $07 $f5
	ld   bc, $5a08                                   ; $7e38: $01 $08 $5a
	ld   [hl], d                                     ; $7e3b: $72
	ld   d, d                                        ; $7e3c: $52
	ld   l, l                                        ; $7e3d: $6d
	ld   e, c                                        ; $7e3e: $59
	sub  a                                           ; $7e3f: $97
	dec  c                                           ; $7e40: $0d
	and  e                                           ; $7e41: $a3
	and  l                                           ; $7e42: $a5
	db   $ec                                         ; $7e43: $ec
	cp   d                                           ; $7e44: $ba
	ld   a, h                                        ; $7e45: $7c
	ld   e, c                                        ; $7e46: $59
	ld   l, a                                        ; $7e47: $6f
	ld   a, [$000d]                                  ; $7e48: $fa $0d $00
	ld   a, [bc]                                     ; $7e4b: $0a
	ld   b, $9e                                      ; $7e4c: $06 $9e
	inc  bc                                          ; $7e4e: $03
	rrca                                             ; $7e4f: $0f
	nop                                              ; $7e50: $00
	ld   bc, $0101                                   ; $7e51: $01 $01 $01
	rlca                                             ; $7e54: $07
	db   $e3                                         ; $7e55: $e3
	pop  bc                                          ; $7e56: $c1
	xor  h                                           ; $7e57: $ac
	ld   bc, $fa08                                   ; $7e58: $01 $08 $fa
	dec  c                                           ; $7e5b: $0d
	nop                                              ; $7e5c: $00
	ld   a, [bc]                                     ; $7e5d: $0a
	inc  e                                           ; $7e5e: $1c
	inc  b                                           ; $7e5f: $04
	nop                                              ; $7e60: $00
	nop                                              ; $7e61: $00
	ld   bc, $f9ac                                   ; $7e62: $01 $ac $f9
	db   $10                                         ; $7e65: $10
	rst  $38                                         ; $7e66: $ff
	rst  $38                                         ; $7e67: $ff
	ld   bc, $ac07                                   ; $7e68: $01 $07 $ac
	db   $e4                                         ; $7e6b: $e4
	db   $e3                                         ; $7e6c: $e3
	ld   bc, $fa08                                   ; $7e6d: $01 $08 $fa
	dec  c                                           ; $7e70: $0d
	nop                                              ; $7e71: $00
	ld   a, [bc]                                     ; $7e72: $0a
	add  hl, de                                      ; $7e73: $19
	dec  b                                           ; $7e74: $05
	inc  bc                                          ; $7e75: $03
	db   $e3                                         ; $7e76: $e3
	sub  $a4                                         ; $7e77: $d6 $a4
	cp   d                                           ; $7e79: $ba
	ret                                              ; $7e7a: $c9


	sub  $a8                                         ; $7e7b: $d6 $a8
	xor  $ba                                         ; $7e7d: $ee $ba
	nop                                              ; $7e7f: $00
	nop                                              ; $7e80: $00
	db   $e3                                         ; $7e81: $e3
	db   $ed                                         ; $7e82: $ed
	reti                                             ; $7e83: $d9


	push af                                          ; $7e84: $f5
	nop                                              ; $7e85: $00
	ld   bc, $efe3                                   ; $7e86: $01 $e3 $ef
	push af                                          ; $7e89: $f5
	nop                                              ; $7e8a: $00
	ld   [bc], a                                     ; $7e8b: $02
	rlca                                             ; $7e8c: $07
	inc  b                                           ; $7e8d: $04
	inc  bc                                          ; $7e8e: $03
	ld   [bc], a                                     ; $7e8f: $02
	inc  bc                                          ; $7e90: $03
	ld   bc, $2000                                   ; $7e91: $01 $00 $20
	nop                                              ; $7e94: $00
	rlca                                             ; $7e95: $07
	ld   a, e                                        ; $7e96: $7b
	ld   [bc], a                                     ; $7e97: $02
	ld   [bc], a                                     ; $7e98: $02
	inc  bc                                          ; $7e99: $03
	ld   bc, $2001                                   ; $7e9a: $01 $01 $20
	nop                                              ; $7e9d: $00
	rlca                                             ; $7e9e: $07
	ld   a, e                                        ; $7e9f: $7b
	ld   [bc], a                                     ; $7ea0: $02
	ld   [bc], a                                     ; $7ea1: $02
	inc  bc                                          ; $7ea2: $03
	ld   bc, $2002                                   ; $7ea3: $01 $02 $20
	nop                                              ; $7ea6: $00
	ld   b, $4c                                      ; $7ea7: $06 $4c
	ld   [bc], a                                     ; $7ea9: $02
	rrca                                             ; $7eaa: $0f
	nop                                              ; $7eab: $00
	ld   bc, $0101                                   ; $7eac: $01 $01 $01
	rlca                                             ; $7eaf: $07
	db   $e3                                         ; $7eb0: $e3
	sub  $a4                                         ; $7eb1: $d6 $a4
	cp   d                                           ; $7eb3: $ba
	ret                                              ; $7eb4: $c9


	sub  $a8                                         ; $7eb5: $d6 $a8
	xor  $ba                                         ; $7eb7: $ee $ba
	ld   bc, $fa08                                   ; $7eb9: $01 $08 $fa
	dec  c                                           ; $7ebc: $0d
	nop                                              ; $7ebd: $00
	ld   a, [bc]                                     ; $7ebe: $0a
	inc  e                                           ; $7ebf: $1c
	inc  b                                           ; $7ec0: $04
	inc  bc                                          ; $7ec1: $03
	inc  bc                                          ; $7ec2: $03
	ld   bc, $6d8c                                   ; $7ec3: $01 $8c $6d
	ld   bc, $ba07                                   ; $7ec6: $01 $07 $ba
	ld   bc, $5308                                   ; $7ec9: $01 $08 $53
	ld   sp, hl                                      ; $7ecc: $f9
	dec  c                                           ; $7ecd: $0d
	nop                                              ; $7ece: $00
	inc  e                                           ; $7ecf: $1c
	inc  b                                           ; $7ed0: $04
	nop                                              ; $7ed1: $00
	nop                                              ; $7ed2: $00
	ld   bc, $ff56                                   ; $7ed3: $01 $56 $ff
	rst  $38                                         ; $7ed6: $ff
	halt                                             ; $7ed7: $76
	ld   bc, $ba07                                   ; $7ed8: $01 $07 $ba
	and  a                                           ; $7edb: $a7
	xor  b                                           ; $7edc: $a8
	ei                                               ; $7edd: $fb
	ret  z                                           ; $7ede: $c8

	push af                                          ; $7edf: $f5
	ld   bc, $fa08                                   ; $7ee0: $01 $08 $fa
	dec  c                                           ; $7ee3: $0d
	nop                                              ; $7ee4: $00
	ld   a, [bc]                                     ; $7ee5: $0a
	inc  e                                           ; $7ee6: $1c
	inc  b                                           ; $7ee7: $04
	ld   b, $06                                      ; $7ee8: $06 $06
	ld   bc, $ff50                                   ; $7eea: $01 $50 $ff
	rst  $38                                         ; $7eed: $ff
	ld   bc, $f507                                   ; $7eee: $01 $07 $f5
	ld   bc, $5a08                                   ; $7ef1: $01 $08 $5a
	ld   [hl], d                                     ; $7ef4: $72
	ld   d, d                                        ; $7ef5: $52
	ld   l, a                                        ; $7ef6: $6f
	sub  c                                           ; $7ef7: $91
	ld   [hl], c                                     ; $7ef8: $71
	ld   l, l                                        ; $7ef9: $6d
	sbc  a                                           ; $7efa: $9f
	dec  c                                           ; $7efb: $0d
	nop                                              ; $7efc: $00
	ld   a, [bc]                                     ; $7efd: $0a
	inc  e                                           ; $7efe: $1c
	inc  b                                           ; $7eff: $04
	dec  b                                           ; $7f00: $05
	dec  b                                           ; $7f01: $05
	ld   bc, $d9a9                                   ; $7f02: $01 $a9 $d9
	reti                                             ; $7f05: $d9


	rst  $38                                         ; $7f06: $ff
	rst  $38                                         ; $7f07: $ff
	dec  c                                           ; $7f08: $0d
	and  e                                           ; $7f09: $a3
	and  l                                           ; $7f0a: $a5
	db   $ec                                         ; $7f0b: $ec
	cp   d                                           ; $7f0c: $ba
	sbc  [hl]                                        ; $7f0d: $9e
	adc  h                                           ; $7f0e: $8c
	ld   e, a                                        ; $7f0f: $5f
	ld   l, a                                        ; $7f10: $6f
	sub  c                                           ; $7f11: $91
	ld   [hl], c                                     ; $7f12: $71
	ld   l, l                                        ; $7f13: $6d
	rst  $38                                         ; $7f14: $ff
	rst  $38                                         ; $7f15: $ff
	dec  c                                           ; $7f16: $0d
	nop                                              ; $7f17: $00
	ld   a, [bc]                                     ; $7f18: $0a
	dec  e                                           ; $7f19: $1d
	ld   b, b                                        ; $7f1a: $40
	inc  d                                           ; $7f1b: $14
	inc  bc                                          ; $7f1c: $03
	inc  d                                           ; $7f1d: $14
	ld   bc, $2803                                   ; $7f1e: $01 $03 $28
	nop                                              ; $7f21: $00
	ld   bc, $9075                                   ; $7f22: $01 $75 $90
	sbc  [hl]                                        ; $7f25: $9e
	ld   h, a                                        ; $7f26: $67
	ld   h, d                                        ; $7f27: $62
	ld   e, l                                        ; $7f28: $5d
	ld   l, l                                        ; $7f29: $6d
	ld   a, h                                        ; $7f2a: $7c
	ld   h, l                                        ; $7f2b: $65
	ld   e, c                                        ; $7f2c: $59
	ld   [hl], c                                     ; $7f2d: $71
	ld   l, l                                        ; $7f2e: $6d
	sub  [hl]                                        ; $7f2f: $96
	sbc  a                                           ; $7f30: $9f
	dec  c                                           ; $7f31: $0d
	ld   d, b                                        ; $7f32: $50
	sbc  b                                           ; $7f33: $98
	ld   e, d                                        ; $7f34: $5a
	halt                                             ; $7f35: $76
	ld   d, h                                        ; $7f36: $54
	sbc  [hl]                                        ; $7f37: $9e
	ld   l, a                                        ; $7f38: $6f
	ld   d, d                                        ; $7f39: $52
	ld   [bc], a                                     ; $7f3a: $02
	inc  de                                          ; $7f3b: $13
	ld   l, a                                        ; $7f3c: $6f
	sub  c                                           ; $7f3d: $91
	and  c                                           ; $7f3e: $a1
	sbc  a                                           ; $7f3f: $9f
	dec  c                                           ; $7f40: $0d
	nop                                              ; $7f41: $00
	ld   a, [bc]                                     ; $7f42: $0a
	nop                                              ; $7f43: $00
	ld   bc, $fb50                                   ; $7f44: $01 $50 $fb
	sbc  [hl]                                        ; $7f47: $9e
	ld   l, l                                        ; $7f48: $6d
	ld   a, h                                        ; $7f49: $7c
	ld   h, l                                        ; $7f4a: $65
	ld   e, c                                        ; $7f4b: $59
	ld   [hl], c                                     ; $7f4c: $71
	ld   l, l                                        ; $7f4d: $6d
	sbc  a                                           ; $7f4e: $9f
	dec  c                                           ; $7f4f: $0d
	ld   d, b                                        ; $7f50: $50
	sbc  b                                           ; $7f51: $98
	ld   e, d                                        ; $7f52: $5a
	halt                                             ; $7f53: $76
	ld   d, h                                        ; $7f54: $54
	sbc  [hl]                                        ; $7f55: $9e
	ld   l, a                                        ; $7f56: $6f
	ld   d, d                                        ; $7f57: $52
	ld   [bc], a                                     ; $7f58: $02
	inc  de                                          ; $7f59: $13
	ld   l, a                                        ; $7f5a: $6f
	sub  c                                           ; $7f5b: $91
	and  c                                           ; $7f5c: $a1
	sbc  a                                           ; $7f5d: $9f
	dec  c                                           ; $7f5e: $0d
	nop                                              ; $7f5f: $00
	ld   a, [bc]                                     ; $7f60: $0a
	nop                                              ; $7f61: $00
	rrca                                             ; $7f62: $0f
	nop                                              ; $7f63: $00
	ld   bc, $6601                                   ; $7f64: $01 $01 $66
	sub  c                                           ; $7f67: $91
	ld   d, b                                        ; $7f68: $50
	sbc  [hl]                                        ; $7f69: $9e
	or   b                                           ; $7f6a: $b0
	and  l                                           ; $7f6b: $a5
	cp   e                                           ; $7f6c: $bb
	and  b                                           ; $7f6d: $a0
	sub  d                                           ; $7f6e: $92
	sbc  e                                           ; $7f6f: $9b
	ld   d, h                                        ; $7f70: $54
	sbc  a                                           ; $7f71: $9f
	dec  c                                           ; $7f72: $0d
	nop                                              ; $7f73: $00
	ld   a, [bc]                                     ; $7f74: $0a
	dec  b                                           ; $7f75: $05
	add  b                                           ; $7f76: $80
	ld   b, l                                        ; $7f77: $45
	ld   bc, $0001                                   ; $7f78: $01 $01 $00
	rrca                                             ; $7f7b: $0f
	inc  b                                           ; $7f7c: $04
	ld   bc, $5401                                   ; $7f7d: $01 $01 $54
	and  c                                           ; $7f80: $a1
	ld   a, [$660d]                                  ; $7f81: $fa $0d $66
	sub  c                                           ; $7f84: $91
	sbc  [hl]                                        ; $7f85: $9e
	and  e                                           ; $7f86: $a3
	and  l                                           ; $7f87: $a5
	db   $ec                                         ; $7f88: $ec
	cp   d                                           ; $7f89: $ba
	ld   e, d                                        ; $7f8a: $5a
	dec  c                                           ; $7f8b: $0d
	sub  b                                           ; $7f8c: $90
	and  c                                           ; $7f8d: $a1
	ld   l, [hl]                                     ; $7f8e: $6e
	ld   d, d                                        ; $7f8f: $52
	ld   l, [hl]                                     ; $7f90: $6e
	ld   h, a                                        ; $7f91: $67
	ld   a, [$000d]                                  ; $7f92: $fa $0d $00
	ld   a, [bc]                                     ; $7f95: $0a
	inc  e                                           ; $7f96: $1c
	inc  b                                           ; $7f97: $04
	nop                                              ; $7f98: $00
	nop                                              ; $7f99: $00
	ld   bc, $0701                                   ; $7f9a: $01 $01 $07
	ret  nc                                          ; $7f9d: $d0

	xor  c                                           ; $7f9e: $a9
	ld   bc, $7608                                   ; $7f9f: $01 $08 $76
	ld   bc, $ac07                                   ; $7fa2: $01 $07 $ac
	ld   bc, $5a08                                   ; $7fa5: $01 $08 $5a
	dec  c                                           ; $7fa8: $0d
	ld   e, e                                        ; $7fa9: $5b
	sub  l                                           ; $7faa: $95
	ld   d, h                                        ; $7fab: $54
	ld   l, e                                        ; $7fac: $6b
	ld   d, h                                        ; $7fad: $54
	ld   h, l                                        ; $7fae: $65
	adc  h                                           ; $7faf: $8c
	ld   h, l                                        ; $7fb0: $65
	ld   l, l                                        ; $7fb1: $6d
	sbc  a                                           ; $7fb2: $9f
	dec  c                                           ; $7fb3: $0d
	ld   e, c                                        ; $7fb4: $59
	ld   [hl], c                                     ; $7fb5: $71
	ld   l, l                                        ; $7fb6: $6d
	ld   a, h                                        ; $7fb7: $7c
	ld   a, l                                        ; $7fb8: $7d
	ld   [hl], a                                     ; $7fb9: $77
	ld   [hl], c                                     ; $7fba: $71
	ld   l, a                                        ; $7fbb: $6f
	ld   sp, hl                                      ; $7fbc: $f9
	dec  c                                           ; $7fbd: $0d
	nop                                              ; $7fbe: $00
	ld   a, [bc]                                     ; $7fbf: $0a
	add  hl, de                                      ; $7fc0: $19
	dec  b                                           ; $7fc1: $05
	inc  bc                                          ; $7fc2: $03
	ld   bc, $d007                                   ; $7fc3: $01 $07 $d0
	xor  c                                           ; $7fc6: $a9
	ld   bc, $5908                                   ; $7fc7: $01 $08 $59
	ld   a, b                                        ; $7fca: $78
	ld   sp, hl                                      ; $7fcb: $f9
	nop                                              ; $7fcc: $00
	nop                                              ; $7fcd: $00
	ld   bc, $ac07                                   ; $7fce: $01 $07 $ac
	ld   bc, $5908                                   ; $7fd1: $01 $08 $59
	ld   a, b                                        ; $7fd4: $78
	ld   sp, hl                                      ; $7fd5: $f9
	nop                                              ; $7fd6: $00
	ld   bc, $5b80                                   ; $7fd7: $01 $80 $5b
	sbc  l                                           ; $7fda: $9d
	ld   e, a                                        ; $7fdb: $5f
	ld   e, c                                        ; $7fdc: $59
	ld   a, b                                        ; $7fdd: $78
	ld   sp, hl                                      ; $7fde: $f9
	nop                                              ; $7fdf: $00
	ld   [bc], a                                     ; $7fe0: $02
	rlca                                             ; $7fe1: $07
	ld   e, c                                        ; $7fe2: $59
	inc  b                                           ; $7fe3: $04
	ld   [bc], a                                     ; $7fe4: $02
	inc  bc                                          ; $7fe5: $03
	ld   bc, $2000                                   ; $7fe6: $01 $00 $20
	nop                                              ; $7fe9: $00
	rlca                                             ; $7fea: $07
	add  a                                           ; $7feb: $87
	inc  b                                           ; $7fec: $04
	ld   [bc], a                                     ; $7fed: $02
	inc  bc                                          ; $7fee: $03
	ld   bc, $2001                                   ; $7fef: $01 $01 $20
	nop                                              ; $7ff2: $00
	rlca                                             ; $7ff3: $07
	add  a                                           ; $7ff4: $87
	inc  b                                           ; $7ff5: $04
	ld   [bc], a                                     ; $7ff6: $02
	inc  bc                                          ; $7ff7: $03
	ld   bc, $2002                                   ; $7ff8: $01 $02 $20
	nop                                              ; $7ffb: $00
	ld   b, $87                                      ; $7ffc: $06 $87
	inc  b                                           ; $7ffe: $04
	inc  e                                           ; $7fff: $1c
