; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $007", ROMX[$4000], BANK[$7]

	nop                                              ; $4000: $00
	nop                                              ; $4001: $00

jr_007_4002:
	jr   z, jr_007_4002                              ; $4002: $28 $fe

	xor  d                                           ; $4004: $aa
	xor  d                                           ; $4005: $aa
	cp   $aa                                         ; $4006: $fe $aa
	xor  d                                           ; $4008: $aa
	cp   $28                                         ; $4009: $fe $28
	inc  h                                           ; $400b: $24
	ld   b, h                                        ; $400c: $44
	nop                                              ; $400d: $00
	nop                                              ; $400e: $00
	nop                                              ; $400f: $00
	nop                                              ; $4010: $00
	nop                                              ; $4011: $00
	ld   a, h                                        ; $4012: $7c
	db   $10                                         ; $4013: $10
	db   $10                                         ; $4014: $10
	db   $10                                         ; $4015: $10
	db   $10                                         ; $4016: $10
	ld   a, h                                        ; $4017: $7c
	db   $10                                         ; $4018: $10
	inc  d                                           ; $4019: $14
	ld   [de], a                                     ; $401a: $12
	db   $10                                         ; $401b: $10
	cp   $00                                         ; $401c: $fe $00
	nop                                              ; $401e: $00
	nop                                              ; $401f: $00
	nop                                              ; $4020: $00
	add  b                                           ; $4021: $80
	ld   e, [hl]                                     ; $4022: $5e
	ld   d, d                                        ; $4023: $52
	ld   e, $f2                                      ; $4024: $1e $f2
	ld   a, $30                                      ; $4026: $3e $30
	ld   e, d                                        ; $4028: $5a
	ld   d, h                                        ; $4029: $54
	ld   e, d                                        ; $402a: $5a
	ldh  [$9e], a                                    ; $402b: $e0 $9e
	nop                                              ; $402d: $00
	nop                                              ; $402e: $00
	nop                                              ; $402f: $00
	nop                                              ; $4030: $00
	nop                                              ; $4031: $00
	ld   c, b                                        ; $4032: $48
	ld   c, b                                        ; $4033: $48
	db   $fc                                         ; $4034: $fc
	ld   c, b                                        ; $4035: $48
	ld   l, b                                        ; $4036: $68
	ld   e, b                                        ; $4037: $58
	cp   $48                                         ; $4038: $fe $48
	adc  b                                           ; $403a: $88
	adc  b                                           ; $403b: $88
	ld   [rRAMG], sp                                 ; $403c: $08 $00 $00
	nop                                              ; $403f: $00

Call_007_4040:
	nop                                              ; $4040: $00
	ld   [hl+], a                                    ; $4041: $22
	ld   [hl+], a                                    ; $4042: $22
	ld   a, [hl]                                     ; $4043: $7e
	sub  $6e                                         ; $4044: $d6 $6e
	ld   a, [hl]                                     ; $4046: $7e
	ld   d, [hl]                                     ; $4047: $56
	ld   a, [hl]                                     ; $4048: $7e
	ld   d, [hl]                                     ; $4049: $56
	ld   e, d                                        ; $404a: $5a
	ld   [hl], d                                     ; $404b: $72
	ld   b, [hl]                                     ; $404c: $46
	nop                                              ; $404d: $00
	nop                                              ; $404e: $00
	nop                                              ; $404f: $00
	nop                                              ; $4050: $00
	ld   b, d                                        ; $4051: $42
	ld   b, d                                        ; $4052: $42
	ldh  a, [c]                                      ; $4053: $f2
	ld   c, $22                                      ; $4054: $0e $22
	and  d                                           ; $4056: $a2
	xor  d                                           ; $4057: $aa
	ld   h, [hl]                                     ; $4058: $66
	ld   h, d                                        ; $4059: $62
	ld   h, d                                        ; $405a: $62
	ld   d, d                                        ; $405b: $52
	sub  [hl]                                        ; $405c: $96
	nop                                              ; $405d: $00

Jump_007_405e:
	nop                                              ; $405e: $00
	nop                                              ; $405f: $00
	nop                                              ; $4060: $00
	nop                                              ; $4061: $00
	ld   a, [hl]                                     ; $4062: $7e
	ld   b, d                                        ; $4063: $42
	ld   a, [hl]                                     ; $4064: $7e
	ld   c, b                                        ; $4065: $48
	ld   a, [hl]                                     ; $4066: $7e
	ld   l, d                                        ; $4067: $6a
	ld   l, d                                        ; $4068: $6a
	ld   a, [hl]                                     ; $4069: $7e
	xor  d                                           ; $406a: $aa
	xor  d                                           ; $406b: $aa
	ld   a, $00                                      ; $406c: $3e $00
	nop                                              ; $406e: $00
	nop                                              ; $406f: $00
	nop                                              ; $4070: $00
	jr   z, jr_007_40ef                              ; $4071: $28 $7c

	db   $10                                         ; $4073: $10
	ld   a, h                                        ; $4074: $7c
	db   $10                                         ; $4075: $10
	cp   $3c                                         ; $4076: $fe $3c
	ld   h, h                                        ; $4078: $64
	cp   h                                           ; $4079: $bc
	inc  a                                           ; $407a: $3c
	inc  h                                           ; $407b: $24
	inc  a                                           ; $407c: $3c
	nop                                              ; $407d: $00

Call_007_407e:
	nop                                              ; $407e: $00
	nop                                              ; $407f: $00
	nop                                              ; $4080: $00
	db   $10                                         ; $4081: $10
	ld   a, h                                        ; $4082: $7c
	jr   z, jr_007_40ad                              ; $4083: $28 $28

	cp   $92                                         ; $4085: $fe $92
	ld   a, h                                        ; $4087: $7c
	ld   d, h                                        ; $4088: $54
	ld   d, h                                        ; $4089: $54
	ld   e, h                                        ; $408a: $5c
	db   $10                                         ; $408b: $10
	stop                                             ; $408c: $10 $00
	nop                                              ; $408e: $00
	nop                                              ; $408f: $00
	nop                                              ; $4090: $00
	nop                                              ; $4091: $00
	cp   $82                                         ; $4092: $fe $82
	adc  d                                           ; $4094: $8a
	cp   $8a                                         ; $4095: $fe $8a
	jp   z, $8aaa                                    ; $4097: $ca $aa $8a

	sbc  d                                           ; $409a: $9a
	add  d                                           ; $409b: $82
	cp   $00                                         ; $409c: $fe $00
	nop                                              ; $409e: $00
	nop                                              ; $409f: $00
	nop                                              ; $40a0: $00
	ld   [de], a                                     ; $40a1: $12
	db   $ec                                         ; $40a2: $ec
	cp   [hl]                                        ; $40a3: $be
	xor  b                                           ; $40a4: $a8
	jp   z, $acb4                                    ; $40a5: $ca $b4 $ac

	or   [hl]                                        ; $40a8: $b6
	adc  $b4                                         ; $40a9: $ce $b4
	add  h                                           ; $40ab: $84
	sbc  b                                           ; $40ac: $98

jr_007_40ad:
	nop                                              ; $40ad: $00
	nop                                              ; $40ae: $00
	nop                                              ; $40af: $00
	nop                                              ; $40b0: $00
	db   $10                                         ; $40b1: $10
	db   $10                                         ; $40b2: $10
	cp   $92                                         ; $40b3: $fe $92
	sub  d                                           ; $40b5: $92
	sub  d                                           ; $40b6: $92
	cp   $10                                         ; $40b7: $fe $10
	db   $10                                         ; $40b9: $10
	db   $10                                         ; $40ba: $10
	db   $10                                         ; $40bb: $10
	stop                                             ; $40bc: $10 $00
	nop                                              ; $40be: $00
	nop                                              ; $40bf: $00
	nop                                              ; $40c0: $00
	nop                                              ; $40c1: $00
	db   $10                                         ; $40c2: $10
	jr   nz, jr_007_40e9                             ; $40c3: $20 $24

	ld   b, d                                        ; $40c5: $42
	cp   $02                                         ; $40c6: $fe $02
	ld   a, h                                        ; $40c8: $7c
	ld   b, h                                        ; $40c9: $44
	ld   b, h                                        ; $40ca: $44
	ld   b, h                                        ; $40cb: $44
	ld   a, h                                        ; $40cc: $7c
	nop                                              ; $40cd: $00
	nop                                              ; $40ce: $00
	nop                                              ; $40cf: $00
	nop                                              ; $40d0: $00
	jr   z, jr_007_40fb                              ; $40d1: $28 $28

	ld   c, b                                        ; $40d3: $48
	ld   a, [hl]                                     ; $40d4: $7e
	ret  z                                           ; $40d5: $c8

	ld   e, h                                        ; $40d6: $5c
	ld   e, h                                        ; $40d7: $5c
	ld   l, d                                        ; $40d8: $6a
	ld   c, b                                        ; $40d9: $48
	ld   e, h                                        ; $40da: $5c
	ld   c, b                                        ; $40db: $48
	ld   c, b                                        ; $40dc: $48
	nop                                              ; $40dd: $00
	nop                                              ; $40de: $00
	nop                                              ; $40df: $00
	nop                                              ; $40e0: $00
	nop                                              ; $40e1: $00
	db   $10                                         ; $40e2: $10
	db   $10                                         ; $40e3: $10
	cp   $10                                         ; $40e4: $fe $10
	db   $10                                         ; $40e6: $10
	jr   z, jr_007_4111                              ; $40e7: $28 $28

jr_007_40e9:
	jr   z, jr_007_412f                              ; $40e9: $28 $44

	ld   b, h                                        ; $40eb: $44
	add  d                                           ; $40ec: $82
	nop                                              ; $40ed: $00
	nop                                              ; $40ee: $00

jr_007_40ef:
	nop                                              ; $40ef: $00
	nop                                              ; $40f0: $00
	nop                                              ; $40f1: $00
	inc  a                                           ; $40f2: $3c
	inc  h                                           ; $40f3: $24
	ld   h, h                                        ; $40f4: $64
	sbc  b                                           ; $40f5: $98
	db   $10                                         ; $40f6: $10
	ld   l, [hl]                                     ; $40f7: $6e
	ld   [de], a                                     ; $40f8: $12
	ld   [hl-], a                                    ; $40f9: $32
	ld   c, h                                        ; $40fa: $4c

jr_007_40fb:
	inc  c                                           ; $40fb: $0c
	jr   nc, jr_007_40fe                             ; $40fc: $30 $00

jr_007_40fe:
	nop                                              ; $40fe: $00
	nop                                              ; $40ff: $00
	nop                                              ; $4100: $00
	db   $10                                         ; $4101: $10
	cp   $7c                                         ; $4102: $fe $7c
	ld   b, h                                        ; $4104: $44
	ld   a, h                                        ; $4105: $7c
	nop                                              ; $4106: $00
	cp   $82                                         ; $4107: $fe $82
	ld   a, h                                        ; $4109: $7c
	db   $10                                         ; $410a: $10
	db   $10                                         ; $410b: $10
	jr   nc, jr_007_410e                             ; $410c: $30 $00

jr_007_410e:
	nop                                              ; $410e: $00
	nop                                              ; $410f: $00
	nop                                              ; $4110: $00

jr_007_4111:
	ld   c, b                                        ; $4111: $48
	db   $fc                                         ; $4112: $fc
	ld   [$00fe], sp                                 ; $4113: $08 $fe $00
	cp   $12                                         ; $4116: $fe $12
	db   $ec                                         ; $4118: $ec
	xor  h                                           ; $4119: $ac
	xor  h                                           ; $411a: $ac
	or   h                                           ; $411b: $b4
	or   $00                                         ; $411c: $f6 $00
	nop                                              ; $411e: $00
	nop                                              ; $411f: $00
	nop                                              ; $4120: $00
	jr   nz, jr_007_4143                             ; $4121: $20 $20

	ld   e, h                                        ; $4123: $5c
	ret  nz                                          ; $4124: $c0

	ld   b, b                                        ; $4125: $40
	ld   a, [hl]                                     ; $4126: $7e
	ld   c, b                                        ; $4127: $48
	ld   d, b                                        ; $4128: $50
	ld   d, b                                        ; $4129: $50
	ld   h, h                                        ; $412a: $64
	ld   a, d                                        ; $412b: $7a
	ld   b, d                                        ; $412c: $42
	nop                                              ; $412d: $00
	nop                                              ; $412e: $00

jr_007_412f:
	nop                                              ; $412f: $00
	nop                                              ; $4130: $00
	nop                                              ; $4131: $00
	cp   $10                                         ; $4132: $fe $10
	db   $10                                         ; $4134: $10
	db   $10                                         ; $4135: $10
	cp   $10                                         ; $4136: $fe $10
	db   $10                                         ; $4138: $10
	jr   z, jr_007_4163                              ; $4139: $28 $28

	ld   b, h                                        ; $413b: $44
	add  d                                           ; $413c: $82
	nop                                              ; $413d: $00
	nop                                              ; $413e: $00
	nop                                              ; $413f: $00
	nop                                              ; $4140: $00
	ld   b, b                                        ; $4141: $40
	ld   a, [hl]                                     ; $4142: $7e

jr_007_4143:
	ld   h, d                                        ; $4143: $62
	call nc, Call_007_4876                           ; $4144: $d4 $76 $48
	ld   a, [hl]                                     ; $4147: $7e
	ret  z                                           ; $4148: $c8

	ld   e, h                                        ; $4149: $5c
	ld   e, h                                        ; $414a: $5c
	ld   l, d                                        ; $414b: $6a
	ret  z                                           ; $414c: $c8

	nop                                              ; $414d: $00
	nop                                              ; $414e: $00
	nop                                              ; $414f: $00
	nop                                              ; $4150: $00
	xor  $a4                                         ; $4151: $ee $a4
	xor  $aa                                         ; $4153: $ee $aa
	xor  $0a                                         ; $4155: $ee $0a
	xor  $4a                                         ; $4157: $ee $4a
	xor  $c4                                         ; $4159: $ee $c4
	ld   [$009e], a                                  ; $415b: $ea $9e $00
	nop                                              ; $415e: $00
	nop                                              ; $415f: $00
	nop                                              ; $4160: $00
	adc  d                                           ; $4161: $8a
	ld   e, [hl]                                     ; $4162: $5e

jr_007_4163:
	ld   b, h                                        ; $4163: $44
	ld   c, $ea                                      ; $4164: $0e $ea
	ld   l, $2a                                      ; $4166: $2e $2a
	ld   c, [hl]                                     ; $4168: $4e
	ld   c, d                                        ; $4169: $4a
	ld   c, [hl]                                     ; $416a: $4e
	ldh  [$9e], a                                    ; $416b: $e0 $9e
	nop                                              ; $416d: $00
	nop                                              ; $416e: $00
	nop                                              ; $416f: $00
	nop                                              ; $4170: $00
	jr   z, jr_007_41cf                              ; $4171: $28 $5c

	adc  b                                           ; $4173: $88
	ld   a, $44                                      ; $4174: $3e $44
	cp   $44                                         ; $4176: $fe $44
	ld   d, h                                        ; $4178: $54
	ld   c, h                                        ; $4179: $4c
	ld   b, h                                        ; $417a: $44

jr_007_417b:
	ld   b, h                                        ; $417b: $44
	ld   c, h                                        ; $417c: $4c
	nop                                              ; $417d: $00
	nop                                              ; $417e: $00
	nop                                              ; $417f: $00
	nop                                              ; $4180: $00
	db   $10                                         ; $4181: $10
	sub  d                                           ; $4182: $92
	ld   d, d                                        ; $4183: $52
	ld   d, h                                        ; $4184: $54
	db   $10                                         ; $4185: $10
	cp   $02                                         ; $4186: $fe $02
	ld   [bc], a                                     ; $4188: $02
	cp   $02                                         ; $4189: $fe $02
	ld   [bc], a                                     ; $418b: $02
	cp   $00                                         ; $418c: $fe $00
	nop                                              ; $418e: $00
	nop                                              ; $418f: $00
	nop                                              ; $4190: $00
	ld   [$fe10], sp                                 ; $4191: $08 $10 $fe
	ld   a, [hl+]                                    ; $4194: $2a
	ld   a, $ea                                      ; $4195: $3e $ea
	ld   a, [hl]                                     ; $4197: $7e
	ld   e, b                                        ; $4198: $58
	cp   d                                           ; $4199: $ba
	cp   $1a                                         ; $419a: $fe $1a
	ld   l, $00                                      ; $419c: $2e $00
	nop                                              ; $419e: $00
	nop                                              ; $419f: $00
	nop                                              ; $41a0: $00
	nop                                              ; $41a1: $00
	ld   hl, sp-$58                                  ; $41a2: $f8 $a8
	xor  [hl]                                        ; $41a4: $ae
	ld   a, [$aaaa]                                  ; $41a5: $fa $aa $aa
	ld   a, [$0202]                                  ; $41a8: $fa $02 $02
	ld   [bc], a                                     ; $41ab: $02
	ld   b, $00                                      ; $41ac: $06 $00
	nop                                              ; $41ae: $00
	nop                                              ; $41af: $00
	nop                                              ; $41b0: $00
	jr   nz, jr_007_417b                             ; $41b1: $20 $c8

	add  sp, $5e                                     ; $41b3: $e8 $5e
	ld   [$eaea], a                                  ; $41b5: $ea $ea $ea
	ld   [$f24a], a                                  ; $41b8: $ea $4a $f2
	ld   d, d                                        ; $41bb: $52
	and  $00                                         ; $41bc: $e6 $00
	nop                                              ; $41be: $00
	nop                                              ; $41bf: $00
	nop                                              ; $41c0: $00
	db   $10                                         ; $41c1: $10
	ld   a, h                                        ; $41c2: $7c
	db   $10                                         ; $41c3: $10
	ld   a, h                                        ; $41c4: $7c
	ld   a, h                                        ; $41c5: $7c
	db   $10                                         ; $41c6: $10
	ld   a, h                                        ; $41c7: $7c
	ld   d, h                                        ; $41c8: $54
	xor  $ee                                         ; $41c9: $ee $ee
	cp   $44                                         ; $41cb: $fe $44
	nop                                              ; $41cd: $00
	nop                                              ; $41ce: $00

jr_007_41cf:
	nop                                              ; $41cf: $00
	nop                                              ; $41d0: $00
	nop                                              ; $41d1: $00
	cp   $82                                         ; $41d2: $fe $82
	cp   d                                           ; $41d4: $ba
	add  d                                           ; $41d5: $82
	cp   d                                           ; $41d6: $ba
	xor  d                                           ; $41d7: $aa
	xor  d                                           ; $41d8: $aa
	cp   d                                           ; $41d9: $ba
	add  d                                           ; $41da: $82
	add  d                                           ; $41db: $82
	add  [hl]                                        ; $41dc: $86
	nop                                              ; $41dd: $00
	nop                                              ; $41de: $00
	nop                                              ; $41df: $00
	nop                                              ; $41e0: $00
	jr   nz, jr_007_4207                             ; $41e1: $20 $24

	ld   d, h                                        ; $41e3: $54
	call nc, Call_007_765e                           ; $41e4: $d4 $5e $76
	ld   d, [hl]                                     ; $41e7: $56
	ld   d, d                                        ; $41e8: $52
	ld   d, [hl]                                     ; $41e9: $56
	ld   d, b                                        ; $41ea: $50
	ld   d, d                                        ; $41eb: $52
	ld   e, [hl]                                     ; $41ec: $5e
	nop                                              ; $41ed: $00
	nop                                              ; $41ee: $00
	nop                                              ; $41ef: $00
	nop                                              ; $41f0: $00
	ld   [$407e], sp                                 ; $41f1: $08 $7e $40
	halt                                             ; $41f4: $76
	ld   e, h                                        ; $41f5: $5c
	ld   h, h                                        ; $41f6: $64
	ld   e, [hl]                                     ; $41f7: $5e
	ld   d, h                                        ; $41f8: $54
	ld   [hl], h                                     ; $41f9: $74
	cp   [hl]                                        ; $41fa: $be
	or   b                                           ; $41fb: $b0
	ld   c, [hl]                                     ; $41fc: $4e
	nop                                              ; $41fd: $00
	nop                                              ; $41fe: $00
	nop                                              ; $41ff: $00
	nop                                              ; $4200: $00
	ld   c, b                                        ; $4201: $48
	ld   c, b                                        ; $4202: $48
	adc  [hl]                                        ; $4203: $8e
	ldh  a, [c]                                      ; $4204: $f2
	and  d                                           ; $4205: $a2
	and  d                                           ; $4206: $a2

jr_007_4207:
	ld   [$a2a6], a                                  ; $4207: $ea $a6 $a2
	ldh  [c], a                                      ; $420a: $e2
	ld   [bc], a                                     ; $420b: $02
	inc  c                                           ; $420c: $0c
	nop                                              ; $420d: $00
	nop                                              ; $420e: $00
	nop                                              ; $420f: $00
	nop                                              ; $4210: $00
	nop                                              ; $4211: $00
	nop                                              ; $4212: $00
	cp   $92                                         ; $4213: $fe $92
	sub  d                                           ; $4215: $92
	sub  d                                           ; $4216: $92
	cp   $92                                         ; $4217: $fe $92
	sub  d                                           ; $4219: $92
	sub  d                                           ; $421a: $92
	cp   $00                                         ; $421b: $fe $00
	nop                                              ; $421d: $00
	nop                                              ; $421e: $00
	nop                                              ; $421f: $00
	nop                                              ; $4220: $00
	nop                                              ; $4221: $00
	inc  a                                           ; $4222: $3c
	inc  h                                           ; $4223: $24
	ld   l, b                                        ; $4224: $68
	sbc  b                                           ; $4225: $98
	jr   jr_007_424c                                 ; $4226: $18 $24

	jp   nz, $0418                                   ; $4228: $c2 $18 $04

	jr   nc, jr_007_4239                             ; $422b: $30 $0c

	nop                                              ; $422d: $00
	nop                                              ; $422e: $00
	nop                                              ; $422f: $00
	nop                                              ; $4230: $00
	nop                                              ; $4231: $00
	db   $10                                         ; $4232: $10
	db   $10                                         ; $4233: $10
	cp   $10                                         ; $4234: $fe $10
	db   $10                                         ; $4236: $10
	jr   z, jr_007_4261                              ; $4237: $28 $28

jr_007_4239:
	jr   z, jr_007_427f                              ; $4239: $28 $44

	ld   h, h                                        ; $423b: $64
	sub  d                                           ; $423c: $92
	nop                                              ; $423d: $00
	nop                                              ; $423e: $00
	nop                                              ; $423f: $00
	nop                                              ; $4240: $00
	ld   [bc], a                                     ; $4241: $02
	xor  h                                           ; $4242: $ac
	xor  b                                           ; $4243: $a8
	cp   $aa                                         ; $4244: $fe $aa
	ld   a, [$faaa]                                  ; $4246: $fa $aa $fa
	ld   a, [$faaa]                                  ; $4249: $fa $aa $fa

jr_007_424c:
	ld   [de], a                                     ; $424c: $12
	nop                                              ; $424d: $00
	nop                                              ; $424e: $00
	nop                                              ; $424f: $00
	nop                                              ; $4250: $00
	db   $e4                                         ; $4251: $e4
	and  h                                           ; $4252: $a4
	cp   [hl]                                        ; $4253: $be
	xor  h                                           ; $4254: $ac
	xor  $56                                         ; $4255: $ee $56
	ld   b, h                                        ; $4257: $44
	ld   a, [hl]                                     ; $4258: $7e
	jp   nc, $f2de                                   ; $4259: $d2 $de $f2

	sbc  [hl]                                        ; $425c: $9e
	nop                                              ; $425d: $00
	nop                                              ; $425e: $00
	nop                                              ; $425f: $00
	nop                                              ; $4260: $00

jr_007_4261:
	nop                                              ; $4261: $00
	cp   $30                                         ; $4262: $fe $30
	inc  a                                           ; $4264: $3c
	ldh  a, [$9c]                                    ; $4265: $f0 $9c
	sub  b                                           ; $4267: $90
	cp   $3a                                         ; $4268: $fe $3a
	inc  a                                           ; $426a: $3c
	or   h                                           ; $426b: $b4
	ld   e, d                                        ; $426c: $5a
	nop                                              ; $426d: $00
	nop                                              ; $426e: $00
	nop                                              ; $426f: $00
	nop                                              ; $4270: $00
	ld   b, h                                        ; $4271: $44
	ld   e, [hl]                                     ; $4272: $5e
	db   $f4                                         ; $4273: $f4
	cp   $56                                         ; $4274: $fe $56
	cp   $56                                         ; $4276: $fe $56
	ld   e, [hl]                                     ; $4278: $5e
	ldh  a, [$ee]                                    ; $4279: $f0 $ee
	ld   [$004e], a                                  ; $427b: $ea $4e $00
	nop                                              ; $427e: $00

jr_007_427f:
	nop                                              ; $427f: $00
	nop                                              ; $4280: $00
	cp   $aa                                         ; $4281: $fe $aa
	cp   $10                                         ; $4283: $fe $10
	cp   $10                                         ; $4285: $fe $10
	cp   h                                           ; $4287: $bc
	and  h                                           ; $4288: $a4
	cp   h                                           ; $4289: $bc
	cp   h                                           ; $428a: $bc
	and  h                                           ; $428b: $a4
	cp   $00                                         ; $428c: $fe $00
	nop                                              ; $428e: $00
	nop                                              ; $428f: $00
	nop                                              ; $4290: $00
	ld   [$547e], sp                                 ; $4291: $08 $7e $54
	ld   a, [hl]                                     ; $4294: $7e
	ld   d, h                                        ; $4295: $54
	ld   e, h                                        ; $4296: $5c
	ld   b, b                                        ; $4297: $40
	ld   a, h                                        ; $4298: $7c
	ld   d, h                                        ; $4299: $54
	sbc  h                                           ; $429a: $9c
	adc  b                                           ; $429b: $88
	ld   [hl], $00                                   ; $429c: $36 $00
	nop                                              ; $429e: $00
	nop                                              ; $429f: $00
	nop                                              ; $42a0: $00
	inc  e                                           ; $42a1: $1c
	db   $10                                         ; $42a2: $10
	ld   a, [hl]                                     ; $42a3: $7e
	ld   d, d                                        ; $42a4: $52
	ld   a, h                                        ; $42a5: $7c
	ld   d, b                                        ; $42a6: $50
	ld   e, h                                        ; $42a7: $5c
	ld   a, [hl]                                     ; $42a8: $7e
	ld   a, [hl]                                     ; $42a9: $7e
	sub  b                                           ; $42aa: $90
	cp   $16                                         ; $42ab: $fe $16
	nop                                              ; $42ad: $00
	nop                                              ; $42ae: $00
	nop                                              ; $42af: $00
	nop                                              ; $42b0: $00
	ld   b, b                                        ; $42b1: $40

jr_007_42b2:
	ld   b, b                                        ; $42b2: $40

jr_007_42b3:
	ld   a, [hl]                                     ; $42b3: $7e
	xor  d                                           ; $42b4: $aa
	xor  d                                           ; $42b5: $aa
	ld   a, [hl+]                                    ; $42b6: $2a
	ld   a, [$2a2a]                                  ; $42b7: $fa $2a $2a
	ld   e, d                                        ; $42ba: $5a
	ld   e, [hl]                                     ; $42bb: $5e
	sub  b                                           ; $42bc: $90
	nop                                              ; $42bd: $00
	nop                                              ; $42be: $00
	nop                                              ; $42bf: $00
	nop                                              ; $42c0: $00
	nop                                              ; $42c1: $00
	nop                                              ; $42c2: $00
	cp   $22                                         ; $42c3: $fe $22
	ld   [hl+], a                                    ; $42c5: $22
	ld   [hl+], a                                    ; $42c6: $22
	ld   [hl+], a                                    ; $42c7: $22
	ld   [hl+], a                                    ; $42c8: $22
	ld   b, d                                        ; $42c9: $42
	ld   b, d                                        ; $42ca: $42
	add  d                                           ; $42cb: $82
	inc  c                                           ; $42cc: $0c
	nop                                              ; $42cd: $00
	nop                                              ; $42ce: $00
	nop                                              ; $42cf: $00
	nop                                              ; $42d0: $00
	db   $10                                         ; $42d1: $10
	cp   $10                                         ; $42d2: $fe $10
	cp   $92                                         ; $42d4: $fe $92
	cp   $92                                         ; $42d6: $fe $92
	cp   $10                                         ; $42d8: $fe $10
	jr   c, jr_007_42b2                              ; $42da: $38 $d6

	stop                                             ; $42dc: $10 $00
	nop                                              ; $42de: $00
	nop                                              ; $42df: $00
	nop                                              ; $42e0: $00
	nop                                              ; $42e1: $00
	jr   z, jr_007_430c                              ; $42e2: $28 $28

	ld   b, h                                        ; $42e4: $44
	ld   b, h                                        ; $42e5: $44
	add  d                                           ; $42e6: $82
	jr   z, jr_007_4311                              ; $42e7: $28 $28

	db   $10                                         ; $42e9: $10
	db   $10                                         ; $42ea: $10
	jr   z, jr_007_42b3                              ; $42eb: $28 $c6

	nop                                              ; $42ed: $00
	nop                                              ; $42ee: $00
	nop                                              ; $42ef: $00
	nop                                              ; $42f0: $00
	jr   nz, jr_007_4371                             ; $42f1: $20 $7e

	ld   a, [hl+]                                    ; $42f3: $2a
	ld   a, [$4a2c]                                  ; $42f4: $fa $2c $4a
	ld   a, [$7c5a]                                  ; $42f7: $fa $5a $7c
	ld   e, b                                        ; $42fa: $58
	ld   a, b                                        ; $42fb: $78
	ld   [rRAMG], sp                                 ; $42fc: $08 $00 $00
	nop                                              ; $42ff: $00
	nop                                              ; $4300: $00
	nop                                              ; $4301: $00
	db   $10                                         ; $4302: $10
	db   $10                                         ; $4303: $10
	db   $10                                         ; $4304: $10
	db   $10                                         ; $4305: $10
	ld   a, h                                        ; $4306: $7c
	db   $10                                         ; $4307: $10
	db   $10                                         ; $4308: $10
	db   $10                                         ; $4309: $10
	db   $10                                         ; $430a: $10
	db   $10                                         ; $430b: $10

jr_007_430c:
	cp   $00                                         ; $430c: $fe $00
	nop                                              ; $430e: $00
	nop                                              ; $430f: $00
	nop                                              ; $4310: $00

jr_007_4311:
	ld   d, $7e                                      ; $4311: $16 $7e
	ld   d, [hl]                                     ; $4313: $56
	or   $d0                                         ; $4314: $f6 $d0
	cp   $44                                         ; $4316: $fe $44
	ld   e, [hl]                                     ; $4318: $5e
	ld   [hl], h                                     ; $4319: $74
	call c, $140e                                    ; $431a: $dc $0e $14
	nop                                              ; $431d: $00
	nop                                              ; $431e: $00
	nop                                              ; $431f: $00
	nop                                              ; $4320: $00
	adc  b                                           ; $4321: $88
	ld   d, h                                        ; $4322: $54
	ld   h, d                                        ; $4323: $62
	inc  e                                           ; $4324: $1c
	add  sp, $3e                                     ; $4325: $e8 $3e
	jr   z, @+$5e                                    ; $4327: $28 $5c

	ld   e, d                                        ; $4329: $5a
	ld   l, d                                        ; $432a: $6a
	ldh  [$9e], a                                    ; $432b: $e0 $9e
	nop                                              ; $432d: $00
	nop                                              ; $432e: $00
	nop                                              ; $432f: $00
	nop                                              ; $4330: $00
	nop                                              ; $4331: $00
	ld   b, b                                        ; $4332: $40
	db   $ec                                         ; $4333: $ec
	ld   b, b                                        ; $4334: $40
	ldh  [$fe], a                                    ; $4335: $e0 $fe
	add  sp, -$18                                    ; $4337: $e8 $e8
	ld   d, d                                        ; $4339: $52
	or   $5a                                         ; $433a: $f6 $5a
	ld   b, d                                        ; $433c: $42
	nop                                              ; $433d: $00
	nop                                              ; $433e: $00
	nop                                              ; $433f: $00
	nop                                              ; $4340: $00
	nop                                              ; $4341: $00
	xor  $aa                                         ; $4342: $ee $aa
	xor  d                                           ; $4344: $aa
	ld   [$aaae], a                                  ; $4345: $ea $ae $aa
	ld   [$aeaa], a                                  ; $4348: $ea $aa $ae
	and  b                                           ; $434b: $a0
	xor  [hl]                                        ; $434c: $ae
	nop                                              ; $434d: $00
	nop                                              ; $434e: $00
	nop                                              ; $434f: $00
	nop                                              ; $4350: $00
	ld   c, b                                        ; $4351: $48
	xor  [hl]                                        ; $4352: $ae
	add  sp, $16                                     ; $4353: $e8 $16
	add  sp, -$12                                    ; $4355: $e8 $ee
	add  sp, -$5a                                    ; $4357: $e8 $a6
	nop                                              ; $4359: $00
	ld   d, h                                        ; $435a: $54
	xor  d                                           ; $435b: $aa
	sbc  [hl]                                        ; $435c: $9e
	nop                                              ; $435d: $00
	nop                                              ; $435e: $00
	nop                                              ; $435f: $00
	nop                                              ; $4360: $00
	nop                                              ; $4361: $00
	cp   $9a                                         ; $4362: $fe $9a
	ld   a, [$d08a]                                  ; $4364: $fa $8a $d0
	cp   $d2                                         ; $4367: $fe $d2
	ld   a, [$d484]                                  ; $4369: $fa $84 $d4
	adc  d                                           ; $436c: $8a
	nop                                              ; $436d: $00
	nop                                              ; $436e: $00
	nop                                              ; $436f: $00
	nop                                              ; $4370: $00

jr_007_4371:
	ld   b, $f8                                      ; $4371: $06 $f8
	cp   d                                           ; $4373: $ba
	cp   h                                           ; $4374: $bc
	cp   [hl]                                        ; $4375: $be
	add  sp, -$42                                    ; $4376: $e8 $be
	xor  b                                           ; $4378: $a8
	xor  [hl]                                        ; $4379: $ae
	ld   a, [$2a14]                                  ; $437a: $fa $14 $2a
	nop                                              ; $437d: $00
	nop                                              ; $437e: $00
	nop                                              ; $437f: $00
	nop                                              ; $4380: $00
	nop                                              ; $4381: $00
	ld   b, h                                        ; $4382: $44
	xor  h                                           ; $4383: $ac
	ld   c, $f4                                      ; $4384: $0e $f4
	ld   b, h                                        ; $4386: $44
	cp   $44                                         ; $4387: $fe $44
	call nc, Call_007_6aea                           ; $4389: $d4 $ea $6a
	jp   nc, $0000                                  ; $438c: $d2 $00 $00

	nop                                              ; $438f: $00
	nop                                              ; $4390: $00
	db   $10                                         ; $4391: $10
	cp   $92                                         ; $4392: $fe $92
	cp   $92                                         ; $4394: $fe $92
	cp   $7c                                         ; $4396: $fe $7c
	ld   b, h                                        ; $4398: $44
	ld   a, h                                        ; $4399: $7c
	ld   a, h                                        ; $439a: $7c
	ld   b, h                                        ; $439b: $44
	ld   c, h                                        ; $439c: $4c
	nop                                              ; $439d: $00
	nop                                              ; $439e: $00
	nop                                              ; $439f: $00
	nop                                              ; $43a0: $00
	and  b                                           ; $43a1: $a0
	ld   a, [$feb4]                                  ; $43a2: $fa $b4 $fe
	call nc, $5ef4                                   ; $43a5: $d4 $f4 $5e
	db   $f4                                         ; $43a8: $f4
	ld   e, [hl]                                     ; $43a9: $5e
	db   $f4                                         ; $43aa: $f4
	ld   d, h                                        ; $43ab: $54
	cp   [hl]                                        ; $43ac: $be
	nop                                              ; $43ad: $00
	nop                                              ; $43ae: $00
	nop                                              ; $43af: $00
	nop                                              ; $43b0: $00
	ld   b, b                                        ; $43b1: $40
	cp   $0a                                         ; $43b2: $fe $0a
	ld   [$ea1a], a                                  ; $43b4: $ea $1a $ea
	ld   d, $e0                                      ; $43b7: $16 $e0
	xor  d                                           ; $43b9: $aa
	cp   d                                           ; $43ba: $ba
	or   b                                           ; $43bb: $b0
	xor  $00                                         ; $43bc: $ee $00
	nop                                              ; $43be: $00
	nop                                              ; $43bf: $00
	nop                                              ; $43c0: $00
	db   $10                                         ; $43c1: $10
	cp   $10                                         ; $43c2: $fe $10
	cp   $c6                                         ; $43c4: $fe $c6
	xor  d                                           ; $43c6: $aa
	cp   $92                                         ; $43c7: $fe $92
	cp   $92                                         ; $43c9: $fe $92
	sub  d                                           ; $43cb: $92
	sub  [hl]                                        ; $43cc: $96
	nop                                              ; $43cd: $00
	nop                                              ; $43ce: $00
	nop                                              ; $43cf: $00
	nop                                              ; $43d0: $00
	jr   nz, jr_007_441b                             ; $43d1: $20 $48

	adc  b                                           ; $43d3: $88
	cp   $5a                                         ; $43d4: $fe $5a
	cp   d                                           ; $43d6: $ba
	ld   a, [$f656]                                  ; $43d7: $fa $56 $f6
	ldh  a, [c]                                      ; $43da: $f2
	ldh  a, [c]                                      ; $43db: $f2
	ld   d, d                                        ; $43dc: $52
	nop                                              ; $43dd: $00
	nop                                              ; $43de: $00
	nop                                              ; $43df: $00
	nop                                              ; $43e0: $00
	ld   b, b                                        ; $43e1: $40
	cp   $04                                         ; $43e2: $fe $04
	db   $e4                                         ; $43e4: $e4
	inc  b                                           ; $43e5: $04
	db   $e4                                         ; $43e6: $e4
	ld   d, $f4                                      ; $43e7: $16 $f4
	or   h                                           ; $43e9: $b4
	or   h                                           ; $43ea: $b4
	or   h                                           ; $43eb: $b4
	cp   $00                                         ; $43ec: $fe $00
	nop                                              ; $43ee: $00
	nop                                              ; $43ef: $00
	nop                                              ; $43f0: $00
	db   $10                                         ; $43f1: $10
	db   $10                                         ; $43f2: $10
	cp   $92                                         ; $43f3: $fe $92
	xor  d                                           ; $43f5: $aa
	sub  $92                                         ; $43f6: $d6 $92
	xor  d                                           ; $43f8: $aa
	add  $82                                         ; $43f9: $c6 $82
	add  d                                           ; $43fb: $82
	add  [hl]                                        ; $43fc: $86
	nop                                              ; $43fd: $00
	nop                                              ; $43fe: $00
	nop                                              ; $43ff: $00
	nop                                              ; $4400: $00
	nop                                              ; $4401: $00
	ld   b, b                                        ; $4402: $40
	ld   l, d                                        ; $4403: $6a
	ld   l, d                                        ; $4404: $6a
	call nz, $e6e2                                   ; $4405: $c4 $e2 $e6
	ld   a, [$665a]                                  ; $4408: $fa $5a $66
	ld   b, d                                        ; $440b: $42
	ld   a, [hl]                                     ; $440c: $7e
	nop                                              ; $440d: $00
	nop                                              ; $440e: $00
	nop                                              ; $440f: $00
	nop                                              ; $4410: $00
	jr   nz, jr_007_443b                             ; $4411: $20 $28

	ld   c, b                                        ; $4413: $48
	cp   $6a                                         ; $4414: $fe $6a
	ld   l, d                                        ; $4416: $6a
	ld   l, d                                        ; $4417: $6a
	ld   a, [hl]                                     ; $4418: $7e
	ld   c, b                                        ; $4419: $48
	ld   c, b                                        ; $441a: $48

jr_007_441b:
	ld   c, b                                        ; $441b: $48
	ld   c, b                                        ; $441c: $48
	nop                                              ; $441d: $00
	nop                                              ; $441e: $00
	nop                                              ; $441f: $00
	nop                                              ; $4420: $00
	db   $10                                         ; $4421: $10
	cp   $82                                         ; $4422: $fe $82
	ld   e, h                                        ; $4424: $5c
	call nz, Call_007_44dc                           ; $4425: $c4 $dc $44
	cp   $c2                                         ; $4428: $fe $c2
	call nc, Call_007_7648                           ; $442a: $d4 $48 $76
	nop                                              ; $442d: $00
	nop                                              ; $442e: $00
	nop                                              ; $442f: $00
	nop                                              ; $4430: $00
	ld   b, b                                        ; $4431: $40
	ld   c, d                                        ; $4432: $4a
	xor  h                                           ; $4433: $ac
	add  sp, $2a                                     ; $4434: $e8 $2a
	xor  $a0                                         ; $4436: $ee $a0
	ld   [$e8ac], a                                  ; $4438: $ea $ac $e8

jr_007_443b:
	xor  d                                           ; $443b: $aa
	xor  [hl]                                        ; $443c: $ae
	nop                                              ; $443d: $00
	nop                                              ; $443e: $00
	nop                                              ; $443f: $00
	nop                                              ; $4440: $00
	nop                                              ; $4441: $00
	cp   $32                                         ; $4442: $fe $32

Call_007_4444:
	cp   $32                                         ; $4444: $fe $32
	cp   $b2                                         ; $4446: $fe $b2
	or   d                                           ; $4448: $b2
	cp   $2c                                         ; $4449: $fe $2c
	inc  l                                           ; $444b: $2c
	halt                                             ; $444c: $76
	nop                                              ; $444d: $00
	nop                                              ; $444e: $00
	nop                                              ; $444f: $00
	nop                                              ; $4450: $00
	nop                                              ; $4451: $00
	jr   nc, @+$12                                   ; $4452: $30 $10

	db   $10                                         ; $4454: $10
	db   $10                                         ; $4455: $10
	jr   nc, jr_007_4480                             ; $4456: $30 $28

	jr   z, jr_007_4482                              ; $4458: $28 $28

	ld   b, h                                        ; $445a: $44
	ld   b, h                                        ; $445b: $44
	add  d                                           ; $445c: $82
	nop                                              ; $445d: $00
	nop                                              ; $445e: $00
	nop                                              ; $445f: $00
	nop                                              ; $4460: $00
	ldh  a, [c]                                      ; $4461: $f2
	xor  d                                           ; $4462: $aa
	cp   $ae                                         ; $4463: $fe $ae
	cp   $ae                                         ; $4465: $fe $ae
	cp   $1e                                         ; $4467: $fe $1e
	ld   a, [$92fa]                                  ; $4469: $fa $fa $92
	ld   [hl+], a                                    ; $446c: $22
	nop                                              ; $446d: $00
	nop                                              ; $446e: $00
	nop                                              ; $446f: $00
	nop                                              ; $4470: $00
	db   $10                                         ; $4471: $10
	db   $10                                         ; $4472: $10
	cp   $92                                         ; $4473: $fe $92
	sub  d                                           ; $4475: $92
	sub  d                                           ; $4476: $92
	xor  d                                           ; $4477: $aa
	add  $82                                         ; $4478: $c6 $82
	add  d                                           ; $447a: $82
	add  d                                           ; $447b: $82
	add  [hl]                                        ; $447c: $86
	nop                                              ; $447d: $00
	nop                                              ; $447e: $00
	nop                                              ; $447f: $00

jr_007_4480:
	nop                                              ; $4480: $00
	db   $10                                         ; $4481: $10

jr_007_4482:
	jr   z, jr_007_44c8                              ; $4482: $28 $44

	cp   d                                           ; $4484: $ba
	nop                                              ; $4485: $00
	ld   a, h                                        ; $4486: $7c
	inc  b                                           ; $4487: $04
	jr   jr_007_44de                                 ; $4488: $18 $54

	ld   c, d                                        ; $448a: $4a
	and  d                                           ; $448b: $a2
	sbc  [hl]                                        ; $448c: $9e
	nop                                              ; $448d: $00
	nop                                              ; $448e: $00
	nop                                              ; $448f: $00
	nop                                              ; $4490: $00
	jr   nz, @+$22                                   ; $4491: $20 $20

	ld   e, [hl]                                     ; $4493: $5e
	jp   nz, Jump_007_7a42                           ; $4494: $c2 $42 $7a

	ld   l, d                                        ; $4497: $6a
	ld   l, d                                        ; $4498: $6a
	ld   a, d                                        ; $4499: $7a
	ld   b, d                                        ; $449a: $42
	ld   b, d                                        ; $449b: $42
	ld   b, [hl]                                     ; $449c: $46
	nop                                              ; $449d: $00
	nop                                              ; $449e: $00
	nop                                              ; $449f: $00
	nop                                              ; $44a0: $00
	ld   l, $5a                                      ; $44a1: $2e $5a
	add  h                                           ; $44a3: $84

jr_007_44a4:
	ld   [$be54], a                                  ; $44a4: $ea $54 $be
	db   $e4                                         ; $44a7: $e4
	ld   e, [hl]                                     ; $44a8: $5e
	db   $f4                                         ; $44a9: $f4
	cp   $f4                                         ; $44aa: $fe $f4
	ld   c, [hl]                                     ; $44ac: $4e
	nop                                              ; $44ad: $00
	nop                                              ; $44ae: $00
	nop                                              ; $44af: $00
	nop                                              ; $44b0: $00
	nop                                              ; $44b1: $00
	cp   $28                                         ; $44b2: $fe $28

jr_007_44b4:
	jr   z, jr_007_44b4                              ; $44b4: $28 $fe

	xor  d                                           ; $44b6: $aa
	xor  d                                           ; $44b7: $aa
	xor  d                                           ; $44b8: $aa
	adc  $82                                         ; $44b9: $ce $82
	add  d                                           ; $44bb: $82
	cp   $00                                         ; $44bc: $fe $00
	nop                                              ; $44be: $00
	nop                                              ; $44bf: $00
	nop                                              ; $44c0: $00
	ld   a, h                                        ; $44c1: $7c
	db   $10                                         ; $44c2: $10
	ld   a, h                                        ; $44c3: $7c
	ld   b, h                                        ; $44c4: $44
	ld   a, h                                        ; $44c5: $7c
	ld   b, h                                        ; $44c6: $44
	ld   a, h                                        ; $44c7: $7c

jr_007_44c8:
	ld   b, h                                        ; $44c8: $44
	ld   a, h                                        ; $44c9: $7c
	jr   z, jr_007_44a4                              ; $44ca: $28 $d8

	ld   h, [hl]                                     ; $44cc: $66
	nop                                              ; $44cd: $00
	nop                                              ; $44ce: $00
	nop                                              ; $44cf: $00
	nop                                              ; $44d0: $00
	jr   nz, jr_007_4507                             ; $44d1: $20 $34

	ld   d, h                                        ; $44d3: $54
	call c, $545c                                    ; $44d4: $dc $5c $54
	ld   d, h                                        ; $44d7: $54
	ld   e, h                                        ; $44d8: $5c
	ld   [hl], h                                     ; $44d9: $74
	ld   c, d                                        ; $44da: $4a
	ld   c, d                                        ; $44db: $4a

Call_007_44dc:
	ld   d, d                                        ; $44dc: $52
	nop                                              ; $44dd: $00

jr_007_44de:
	nop                                              ; $44de: $00
	nop                                              ; $44df: $00
	nop                                              ; $44e0: $00
	nop                                              ; $44e1: $00
	jr   nz, jr_007_4504                             ; $44e2: $20 $20

	jr   nz, jr_007_450c                             ; $44e4: $20 $26

	jr   c, jr_007_44c8                              ; $44e6: $38 $e0

	jr   nz, jr_007_450a                             ; $44e8: $20 $20

	ld   [hl+], a                                    ; $44ea: $22
	inc  e                                           ; $44eb: $1c

Call_007_44ec:
	nop                                              ; $44ec: $00
	nop                                              ; $44ed: $00
	nop                                              ; $44ee: $00
	nop                                              ; $44ef: $00
	nop                                              ; $44f0: $00
	jr   nz, jr_007_4519                             ; $44f1: $20 $26

	ld   e, b                                        ; $44f3: $58

Call_007_44f4:
	ld   c, b                                        ; $44f4: $48
	ret  z                                           ; $44f5: $c8

	ld   c, b                                        ; $44f6: $48
	ld   a, [hl]                                     ; $44f7: $7e
	ld   c, b                                        ; $44f8: $48
	ld   c, b                                        ; $44f9: $48
	ld   c, b                                        ; $44fa: $48
	ld   c, b                                        ; $44fb: $48
	ld   a, [hl]                                     ; $44fc: $7e
	nop                                              ; $44fd: $00
	nop                                              ; $44fe: $00
	nop                                              ; $44ff: $00
	nop                                              ; $4500: $00
	ld   b, b                                        ; $4501: $40
	ld   a, h                                        ; $4502: $7c
	sub  b                                           ; $4503: $90

jr_007_4504:
	sub  b                                           ; $4504: $90
	ld   a, h                                        ; $4505: $7c
	ld   d, b                                        ; $4506: $50

jr_007_4507:
	ld   d, b                                        ; $4507: $50
	cp   $10                                         ; $4508: $fe $10

jr_007_450a:
	db   $10                                         ; $450a: $10
	db   $10                                         ; $450b: $10

jr_007_450c:
	stop                                             ; $450c: $10 $00
	nop                                              ; $450e: $00
	nop                                              ; $450f: $00
	nop                                              ; $4510: $00
	nop                                              ; $4511: $00
	cp   $20                                         ; $4512: $fe $20
	jr   nz, jr_007_4536                             ; $4514: $20 $20

	ld   a, $22                                      ; $4516: $3e $22
	ld   [hl+], a                                    ; $4518: $22

jr_007_4519:
	ld   [hl+], a                                    ; $4519: $22
	ld   b, d                                        ; $451a: $42
	ld   b, d                                        ; $451b: $42
	adc  h                                           ; $451c: $8c
	nop                                              ; $451d: $00
	nop                                              ; $451e: $00
	nop                                              ; $451f: $00
	nop                                              ; $4520: $00
	inc  c                                           ; $4521: $0c
	ld   [$fe08], a                                  ; $4522: $ea $08 $fe
	ld   [$b828], sp                                 ; $4525: $08 $28 $b8
	and  h                                           ; $4528: $a4
	xor  h                                           ; $4529: $ac
	or   h                                           ; $452a: $b4
	jp   nz, $0002                                   ; $452b: $c2 $02 $00

	nop                                              ; $452e: $00
	nop                                              ; $452f: $00
	nop                                              ; $4530: $00
	inc  [hl]                                        ; $4531: $34
	ld   a, $54                                      ; $4532: $3e $54
	cp   $60                                         ; $4534: $fe $60

jr_007_4536:
	ld   a, [hl]                                     ; $4536: $7e
	ld   l, d                                        ; $4537: $6a
	ld   a, [hl]                                     ; $4538: $7e
	ld   l, d                                        ; $4539: $6a
	ld   a, [hl]                                     ; $453a: $7e
	ld   l, d                                        ; $453b: $6a
	ld   l, d                                        ; $453c: $6a
	nop                                              ; $453d: $00
	nop                                              ; $453e: $00
	nop                                              ; $453f: $00
	nop                                              ; $4540: $00
	nop                                              ; $4541: $00
	ldh  [c], a                                      ; $4542: $e2
	xor  d                                           ; $4543: $aa
	xor  d                                           ; $4544: $aa
	xor  d                                           ; $4545: $aa
	ld   [$7a4a], a                                  ; $4546: $ea $4a $7a
	ld   e, d                                        ; $4549: $5a
	ld   d, d                                        ; $454a: $52
	sub  d                                           ; $454b: $92
	or   [hl]                                        ; $454c: $b6
	nop                                              ; $454d: $00
	nop                                              ; $454e: $00
	nop                                              ; $454f: $00
	nop                                              ; $4550: $00
	nop                                              ; $4551: $00
	nop                                              ; $4552: $00
	nop                                              ; $4553: $00
	cp   $aa                                         ; $4554: $fe $aa
	xor  d                                           ; $4556: $aa
	xor  d                                           ; $4557: $aa
	xor  d                                           ; $4558: $aa
	xor  d                                           ; $4559: $aa
	xor  d                                           ; $455a: $aa
	cp   $00                                         ; $455b: $fe $00
	nop                                              ; $455d: $00
	nop                                              ; $455e: $00
	nop                                              ; $455f: $00
	nop                                              ; $4560: $00
	nop                                              ; $4561: $00
	ld   a, [hl]                                     ; $4562: $7e
	ld   d, b                                        ; $4563: $50
	ld   a, h                                        ; $4564: $7c
	ld   d, b                                        ; $4565: $50
	ld   a, h                                        ; $4566: $7c
	ld   d, b                                        ; $4567: $50
	ld   a, [hl]                                     ; $4568: $7e
	ld   [bc], a                                     ; $4569: $02
	ld   a, d                                        ; $456a: $7a
	cp   d                                           ; $456b: $ba
	adc  h                                           ; $456c: $8c
	nop                                              ; $456d: $00
	nop                                              ; $456e: $00
	nop                                              ; $456f: $00
	nop                                              ; $4570: $00
	ld   b, b                                        ; $4571: $40
	cp   $08                                         ; $4572: $fe $08
	ld   [$e81c], a                                  ; $4574: $ea $1c $e8
	ld   a, $e8                                      ; $4577: $3e $e8
	xor  b                                           ; $4579: $a8
	xor  b                                           ; $457a: $a8
	xor  b                                           ; $457b: $a8
	add  sp, $00                                     ; $457c: $e8 $00
	nop                                              ; $457e: $00
	nop                                              ; $457f: $00
	nop                                              ; $4580: $00
	ld   b, b                                        ; $4581: $40
	ld   d, h                                        ; $4582: $54
	ld   d, h                                        ; $4583: $54
	db   $f4                                         ; $4584: $f4
	ld   e, [hl]                                     ; $4585: $5e
	ld   d, h                                        ; $4586: $54
	ld   [hl], h                                     ; $4587: $74
	call nc, Call_007_5454                           ; $4588: $d4 $54 $54
	ld   e, h                                        ; $458b: $5c
	halt                                             ; $458c: $76
	nop                                              ; $458d: $00
	nop                                              ; $458e: $00
	nop                                              ; $458f: $00
	nop                                              ; $4590: $00
	ld   a, [hl]                                     ; $4591: $7e
	nop                                              ; $4592: $00
	ld   a, [hl]                                     ; $4593: $7e
	ld   b, d                                        ; $4594: $42
	ld   a, [hl]                                     ; $4595: $7e
	ld   c, b                                        ; $4596: $48
	ld   a, [hl]                                     ; $4597: $7e
	ld   d, b                                        ; $4598: $50
	ld   e, [hl]                                     ; $4599: $5e
	sub  d                                           ; $459a: $92
	sub  d                                           ; $459b: $92
	ld   h, $00                                      ; $459c: $26 $00
	nop                                              ; $459e: $00
	nop                                              ; $459f: $00
	nop                                              ; $45a0: $00
	inc  e                                           ; $45a1: $1c
	inc  h                                           ; $45a2: $24
	add  sp, -$42                                    ; $45a3: $e8 $be
	xor  d                                           ; $45a5: $aa
	ld   [$b4be], a                                  ; $45a6: $ea $be $b4
	db   $f4                                         ; $45a9: $f4
	inc  d                                           ; $45aa: $14
	inc  d                                           ; $45ab: $14
	ld   h, $00                                      ; $45ac: $26 $00
	nop                                              ; $45ae: $00
	nop                                              ; $45af: $00
	nop                                              ; $45b0: $00
	ld   b, b                                        ; $45b1: $40
	ld   c, d                                        ; $45b2: $4a
	ld   [$4aea], a                                  ; $45b3: $ea $ea $4a
	ldh  a, [$5e]                                    ; $45b6: $f0 $5e
	ld   [$daea], a                                  ; $45b8: $ea $ea $da
	ld   c, d                                        ; $45bb: $4a
	ld   d, [hl]                                     ; $45bc: $56
	nop                                              ; $45bd: $00
	nop                                              ; $45be: $00
	nop                                              ; $45bf: $00
	nop                                              ; $45c0: $00
	nop                                              ; $45c1: $00
	ld   a, [hl]                                     ; $45c2: $7e
	ld   b, b                                        ; $45c3: $40
	ld   b, b                                        ; $45c4: $40
	ld   a, [hl]                                     ; $45c5: $7e
	ld   h, d                                        ; $45c6: $62
	ld   h, d                                        ; $45c7: $62
	ld   d, h                                        ; $45c8: $54
	ld   d, h                                        ; $45c9: $54
	adc  b                                           ; $45ca: $88
	sub  h                                           ; $45cb: $94
	ld   [hl+], a                                    ; $45cc: $22
	nop                                              ; $45cd: $00
	nop                                              ; $45ce: $00
	nop                                              ; $45cf: $00
	nop                                              ; $45d0: $00
	ld   c, b                                        ; $45d1: $48
	ld   e, h                                        ; $45d2: $5c
	add  sp, $5c                                     ; $45d3: $e8 $5c
	ld   c, b                                        ; $45d5: $48
	cp   $d4                                         ; $45d6: $fe $d4
	ld   [$48dc], a                                  ; $45d8: $ea $dc $48
	ld   e, h                                        ; $45db: $5c
	ld   c, b                                        ; $45dc: $48
	nop                                              ; $45dd: $00
	nop                                              ; $45de: $00
	nop                                              ; $45df: $00
	nop                                              ; $45e0: $00
	nop                                              ; $45e1: $00
	ld   [$a82c], a                                  ; $45e2: $ea $2c $a8
	ld   b, [hl]                                     ; $45e5: $46
	ld   a, h                                        ; $45e6: $7c
	xor  d                                           ; $45e7: $aa
	jr   z, @+$7e                                    ; $45e8: $28 $7c

	jr   z, jr_007_4636                              ; $45ea: $28 $4a

	adc  [hl]                                        ; $45ec: $8e
	nop                                              ; $45ed: $00
	nop                                              ; $45ee: $00
	nop                                              ; $45ef: $00
	nop                                              ; $45f0: $00
	ld   l, b                                        ; $45f1: $68
	call nz, $ea40                                   ; $45f2: $c4 $40 $ea
	ld   c, d                                        ; $45f5: $4a
	ld   c, h                                        ; $45f6: $4c
	db   $ec                                         ; $45f7: $ec
	ld   [$58da], a                                  ; $45f8: $ea $da $58
	ld   l, d                                        ; $45fb: $6a
	ld   c, [hl]                                     ; $45fc: $4e
	nop                                              ; $45fd: $00
	nop                                              ; $45fe: $00
	nop                                              ; $45ff: $00
	nop                                              ; $4600: $00
	nop                                              ; $4601: $00
	inc  c                                           ; $4602: $0c
	ld   [hl], b                                     ; $4603: $70
	ld   b, b                                        ; $4604: $40
	ld   a, [hl]                                     ; $4605: $7e
	ld   b, h                                        ; $4606: $44
	ld   b, h                                        ; $4607: $44
	cp   $00                                         ; $4608: $fe $00
	jr   z, jr_007_4630                              ; $460a: $28 $24

	ld   b, h                                        ; $460c: $44
	nop                                              ; $460d: $00
	nop                                              ; $460e: $00
	nop                                              ; $460f: $00
	nop                                              ; $4610: $00
	nop                                              ; $4611: $00
	jr   c, jr_007_463c                              ; $4612: $38 $28

	jr   z, jr_007_463e                              ; $4614: $28 $28

	jr   c, jr_007_4618                              ; $4616: $38 $00

jr_007_4618:
	xor  $aa                                         ; $4618: $ee $aa
	xor  d                                           ; $461a: $aa
	xor  d                                           ; $461b: $aa
	xor  $00                                         ; $461c: $ee $00
	nop                                              ; $461e: $00
	nop                                              ; $461f: $00
	nop                                              ; $4620: $00
	ld   b, h                                        ; $4621: $44
	db   $e4                                         ; $4622: $e4
	ld   e, $e8                                      ; $4623: $1e $e8
	ld   [FarGetHLinHL], sp                                 ; $4625: $08 $ee $0a
	ld   [$aaaa], a                                  ; $4628: $ea $aa $aa
	or   d                                           ; $462b: $b2
	or   $00                                         ; $462c: $f6 $00
	nop                                              ; $462e: $00
	nop                                              ; $462f: $00

jr_007_4630:
	nop                                              ; $4630: $00
	ld   b, b                                        ; $4631: $40
	ld   b, d                                        ; $4632: $42
	jp   c, Jump_007_4aea                            ; $4633: $da $ea $4a

jr_007_4636:
	ld   a, [$4a4a]                                  ; $4636: $fa $4a $4a
	ldh  a, [c]                                      ; $4639: $f2
	ld   b, d                                        ; $463a: $42
	ld   b, d                                        ; $463b: $42

jr_007_463c:
	ld   b, [hl]                                     ; $463c: $46
	nop                                              ; $463d: $00

jr_007_463e:
	nop                                              ; $463e: $00
	nop                                              ; $463f: $00
	nop                                              ; $4640: $00
	nop                                              ; $4641: $00
	adc  b                                           ; $4642: $88
	ld   c, b                                        ; $4643: $48
	inc  e                                           ; $4644: $1c
	adc  b                                           ; $4645: $88
	ld   c, b                                        ; $4646: $48
	ld   a, $50                                      ; $4647: $3e $50
	ld   d, h                                        ; $4649: $54
	and  h                                           ; $464a: $a4
	cp   [hl]                                        ; $464b: $be
	add  d                                           ; $464c: $82
	nop                                              ; $464d: $00
	nop                                              ; $464e: $00
	nop                                              ; $464f: $00
	nop                                              ; $4650: $00
	ld   c, d                                        ; $4651: $4a
	ld   a, [hl]                                     ; $4652: $7e
	ld   c, b                                        ; $4653: $48
	ld   a, [hl]                                     ; $4654: $7e
	ld   [$6a7e], a                                  ; $4655: $ea $7e $6a
	ld   a, [hl]                                     ; $4658: $7e
	ld   b, h                                        ; $4659: $44
	ld   a, [hl]                                     ; $465a: $7e
	ld   d, h                                        ; $465b: $54
	ld   c, h                                        ; $465c: $4c
	nop                                              ; $465d: $00
	nop                                              ; $465e: $00
	nop                                              ; $465f: $00
	nop                                              ; $4660: $00
	db   $10                                         ; $4661: $10
	db   $10                                         ; $4662: $10
	cp   $20                                         ; $4663: $fe $20
	jr   z, @+$80                                    ; $4665: $28 $7e

	ld   l, d                                        ; $4667: $6a
	xor  d                                           ; $4668: $aa
	ld   a, [hl+]                                    ; $4669: $2a
	ld   l, $08                                      ; $466a: $2e $08
	ld   [rRAMG], sp                                 ; $466c: $08 $00 $00
	nop                                              ; $466f: $00
	nop                                              ; $4670: $00
	nop                                              ; $4671: $00
	db   $e4                                         ; $4672: $e4
	cp   [hl]                                        ; $4673: $be
	ld   [$e49e], a                                  ; $4674: $ea $9e $e4
	xor  [hl]                                        ; $4677: $ae
	db   $e4                                         ; $4678: $e4
	db   $10                                         ; $4679: $10
	ld   a, h                                        ; $467a: $7c
	db   $10                                         ; $467b: $10
	cp   $00                                         ; $467c: $fe $00
	nop                                              ; $467e: $00
	nop                                              ; $467f: $00
	nop                                              ; $4680: $00
	jr   nz, jr_007_46af                             ; $4681: $20 $2c

	ld   c, d                                        ; $4683: $4a
	ret  z                                           ; $4684: $c8

	ld   a, [hl]                                     ; $4685: $7e
	ld   c, b                                        ; $4686: $48
	ld   c, b                                        ; $4687: $48
	ld   c, h                                        ; $4688: $4c
	ld   d, h                                        ; $4689: $54
	ld   d, h                                        ; $468a: $54
	ld   d, h                                        ; $468b: $54
	ld   h, d                                        ; $468c: $62
	nop                                              ; $468d: $00
	nop                                              ; $468e: $00
	nop                                              ; $468f: $00
	nop                                              ; $4690: $00
	nop                                              ; $4691: $00
	nop                                              ; $4692: $00
	nop                                              ; $4693: $00
	cp   $a8                                         ; $4694: $fe $a8
	xor  b                                           ; $4696: $a8
	xor  b                                           ; $4697: $a8
	xor  b                                           ; $4698: $a8
	adc  $80                                         ; $4699: $ce $80
	cp   $00                                         ; $469b: $fe $00
	nop                                              ; $469d: $00
	nop                                              ; $469e: $00
	nop                                              ; $469f: $00
	nop                                              ; $46a0: $00
	ld   [hl], b                                     ; $46a1: $70
	ld   h, d                                        ; $46a2: $62
	ld   l, h                                        ; $46a3: $6c
	ldh  a, [c]                                      ; $46a4: $f2
	ld   e, h                                        ; $46a5: $5c
	ld   h, d                                        ; $46a6: $62
	ld   e, h                                        ; $46a7: $5c
	db   $10                                         ; $46a8: $10
	cp   $24                                         ; $46a9: $fe $24
	ld   e, b                                        ; $46ab: $58
	or   [hl]                                        ; $46ac: $b6
	nop                                              ; $46ad: $00
	nop                                              ; $46ae: $00

jr_007_46af:
	nop                                              ; $46af: $00
	nop                                              ; $46b0: $00

jr_007_46b1:
	jr   nz, jr_007_46d3                             ; $46b1: $20 $20

jr_007_46b3:
	ld   a, [hl]                                     ; $46b3: $7e
	ld   b, d                                        ; $46b4: $42

jr_007_46b5:
	cp   d                                           ; $46b5: $ba
	ld   a, [bc]                                     ; $46b6: $0a
	ld   a, [bc]                                     ; $46b7: $0a
	ld   a, d                                        ; $46b8: $7a
	ld   b, [hl]                                     ; $46b9: $46
	ld   b, b                                        ; $46ba: $40
	ld   b, d                                        ; $46bb: $42
	ld   a, [hl]                                     ; $46bc: $7e
	nop                                              ; $46bd: $00
	nop                                              ; $46be: $00
	nop                                              ; $46bf: $00
	nop                                              ; $46c0: $00
	jr   z, jr_007_46b1                              ; $46c1: $28 $ee

	jr   z, jr_007_46b3                              ; $46c3: $28 $ee

	jr   z, jr_007_46b5                              ; $46c5: $28 $ee

	ld   c, b                                        ; $46c7: $48
	nop                                              ; $46c8: $00
	ld   d, h                                        ; $46c9: $54
	ld   c, d                                        ; $46ca: $4a
	and  d                                           ; $46cb: $a2
	sbc  [hl]                                        ; $46cc: $9e
	nop                                              ; $46cd: $00
	nop                                              ; $46ce: $00
	nop                                              ; $46cf: $00
	nop                                              ; $46d0: $00
	jr   nz, jr_007_4709                             ; $46d1: $20 $36

jr_007_46d3:
	halt                                             ; $46d3: $76
	cp   $54                                         ; $46d4: $fe $54
	ld   a, [hl]                                     ; $46d6: $7e
	ld   c, b                                        ; $46d7: $48
	ld   a, [hl]                                     ; $46d8: $7e
	ld   c, b                                        ; $46d9: $48
	ld   a, [hl]                                     ; $46da: $7e
	ld   d, h                                        ; $46db: $54
	ld   h, d                                        ; $46dc: $62
	nop                                              ; $46dd: $00
	nop                                              ; $46de: $00
	nop                                              ; $46df: $00
	nop                                              ; $46e0: $00
	nop                                              ; $46e1: $00
	xor  $aa                                         ; $46e2: $ee $aa
	xor  $aa                                         ; $46e4: $ee $aa
	xor  $8a                                         ; $46e6: $ee $8a
	cp   $9a                                         ; $46e8: $fe $9a
	sbc  d                                           ; $46ea: $9a
	xor  d                                           ; $46eb: $aa
	jp   c, $0000                                   ; $46ec: $da $00 $00

	nop                                              ; $46ef: $00
	nop                                              ; $46f0: $00
	ld   b, b                                        ; $46f1: $40
	cp   $52                                         ; $46f2: $fe $52
	ldh  a, [c]                                      ; $46f4: $f2
	or   [hl]                                        ; $46f5: $b6
	ldh  a, [$5e]                                    ; $46f6: $f0 $5e
	ld   a, [$f45a]                                  ; $46f8: $fa $5a $f4
	ld   d, h                                        ; $46fb: $54
	ld   l, d                                        ; $46fc: $6a
	nop                                              ; $46fd: $00
	nop                                              ; $46fe: $00
	nop                                              ; $46ff: $00
	nop                                              ; $4700: $00
	nop                                              ; $4701: $00
	adc  b                                           ; $4702: $88
	cp   [hl]                                        ; $4703: $be
	xor  d                                           ; $4704: $aa
	cp   $aa                                         ; $4705: $fe $aa
	cp   [hl]                                        ; $4707: $be
	db   $f4                                         ; $4708: $f4

jr_007_4709:
	or   h                                           ; $4709: $b4
	cp   [hl]                                        ; $470a: $be
	and  h                                           ; $470b: $a4
	and  h                                           ; $470c: $a4
	nop                                              ; $470d: $00
	nop                                              ; $470e: $00
	nop                                              ; $470f: $00
	nop                                              ; $4710: $00
	jr   nz, jr_007_4737                             ; $4711: $20 $24

	ld   b, h                                        ; $4713: $44
	ld   e, [hl]                                     ; $4714: $5e
	call nz, Call_007_5444                           ; $4715: $c4 $44 $54
	ld   c, h                                        ; $4718: $4c
	ld   b, h                                        ; $4719: $44
	ld   b, h                                        ; $471a: $44
	ld   b, h                                        ; $471b: $44
	ld   c, h                                        ; $471c: $4c
	nop                                              ; $471d: $00
	nop                                              ; $471e: $00
	nop                                              ; $471f: $00
	nop                                              ; $4720: $00
	db   $10                                         ; $4721: $10
	sub  d                                           ; $4722: $92
	ld   d, d                                        ; $4723: $52
	ld   d, h                                        ; $4724: $54
	ld   a, h                                        ; $4725: $7c
	db   $10                                         ; $4726: $10
	db   $10                                         ; $4727: $10
	cp   $10                                         ; $4728: $fe $10
	db   $10                                         ; $472a: $10
	db   $10                                         ; $472b: $10
	stop                                             ; $472c: $10 $00
	nop                                              ; $472e: $00
	nop                                              ; $472f: $00
	nop                                              ; $4730: $00

jr_007_4731:
	jr   z, jr_007_4731                              ; $4731: $28 $fe

	ld   a, [hl+]                                    ; $4733: $2a
	cp   [hl]                                        ; $4734: $be
	ld   c, b                                        ; $4735: $48
	cp   [hl]                                        ; $4736: $be

jr_007_4737:
	ld   a, [hl]                                     ; $4737: $7e
	ld   a, $44                                      ; $4738: $3e $44
	ld   a, [hl]                                     ; $473a: $7e
	sub  h                                           ; $473b: $94
	adc  h                                           ; $473c: $8c
	nop                                              ; $473d: $00
	nop                                              ; $473e: $00
	nop                                              ; $473f: $00
	nop                                              ; $4740: $00
	ld   b, b                                        ; $4741: $40
	ld   e, [hl]                                     ; $4742: $5e
	ldh  a, [$50]                                    ; $4743: $f0 $50
	ld   e, [hl]                                     ; $4745: $5e
	ldh  a, [c]                                      ; $4746: $f2
	ld   a, [$54da]                                  ; $4747: $fa $da $54
	ld   d, h                                        ; $474a: $54
	ld   l, d                                        ; $474b: $6a
	ld   l, d                                        ; $474c: $6a
	nop                                              ; $474d: $00
	nop                                              ; $474e: $00
	nop                                              ; $474f: $00
	nop                                              ; $4750: $00
	ld   b, h                                        ; $4751: $44
	ld   b, h                                        ; $4752: $44
	ld   b, h                                        ; $4753: $44
	cp   $e8                                         ; $4754: $fe $e8
	add  sp, -$18                                    ; $4756: $e8 $e8
	ld   c, b                                        ; $4758: $48
	ld   c, b                                        ; $4759: $48
	ld   c, b                                        ; $475a: $48
	ld   c, b                                        ; $475b: $48
	ld   c, [hl]                                     ; $475c: $4e
	nop                                              ; $475d: $00
	nop                                              ; $475e: $00
	nop                                              ; $475f: $00
	nop                                              ; $4760: $00
	ld   a, $5e                                      ; $4761: $3e $5e
	sbc  d                                           ; $4763: $9a
	cp   $48                                         ; $4764: $fe $48
	cp   [hl]                                        ; $4766: $be
	ld   a, [$fa5e]                                  ; $4767: $fa $5e $fa
	cp   $e8                                         ; $476a: $fe $e8
	ld   c, [hl]                                     ; $476c: $4e
	nop                                              ; $476d: $00
	nop                                              ; $476e: $00
	nop                                              ; $476f: $00
	nop                                              ; $4770: $00
	nop                                              ; $4771: $00
	db   $fc                                         ; $4772: $fc
	or   h                                           ; $4773: $b4
	db   $e4                                         ; $4774: $e4
	and  h                                           ; $4775: $a4
	db   $fc                                         ; $4776: $fc
	xor  h                                           ; $4777: $ac
	db   $fc                                         ; $4778: $fc
	and  h                                           ; $4779: $a4
	xor  h                                           ; $477a: $ac
	ld   a, [$008a]                                  ; $477b: $fa $8a $00
	nop                                              ; $477e: $00
	nop                                              ; $477f: $00
	nop                                              ; $4780: $00
	nop                                              ; $4781: $00
	db   $10                                         ; $4782: $10
	db   $10                                         ; $4783: $10
	cp   $20                                         ; $4784: $fe $20
	jr   nz, jr_007_47c4                             ; $4786: $20 $3c

	inc  h                                           ; $4788: $24
	inc  h                                           ; $4789: $24
	ld   b, h                                        ; $478a: $44
	ld   b, h                                        ; $478b: $44
	sbc  b                                           ; $478c: $98
	nop                                              ; $478d: $00
	nop                                              ; $478e: $00
	nop                                              ; $478f: $00
	nop                                              ; $4790: $00
	inc  c                                           ; $4791: $0c
	ld   [hl], b                                     ; $4792: $70
	ld   d, h                                        ; $4793: $54
	cp   $38                                         ; $4794: $fe $38
	ld   d, h                                        ; $4796: $54
	sub  d                                           ; $4797: $92
	ld   a, h                                        ; $4798: $7c
	ld   d, h                                        ; $4799: $54
	ld   a, h                                        ; $479a: $7c
	ld   d, h                                        ; $479b: $54
	ld   a, h                                        ; $479c: $7c
	nop                                              ; $479d: $00
	nop                                              ; $479e: $00
	nop                                              ; $479f: $00
	nop                                              ; $47a0: $00
	ld   e, $52                                      ; $47a1: $1e $52
	ld   e, [hl]                                     ; $47a3: $5e
	ldh  a, [c]                                      ; $47a4: $f2
	ld   e, [hl]                                     ; $47a5: $5e
	ld   b, b                                        ; $47a6: $40
	ld   e, [hl]                                     ; $47a7: $5e
	ld   l, b                                        ; $47a8: $68
	sbc  $2a                                         ; $47a9: $de $2a
	ld   d, $2a                                      ; $47ab: $16 $2a
	nop                                              ; $47ad: $00
	nop                                              ; $47ae: $00
	nop                                              ; $47af: $00
	nop                                              ; $47b0: $00
	ld   [$487e], sp                                 ; $47b1: $08 $7e $48
	cp   $ea                                         ; $47b4: $fe $ea
	ld   l, b                                        ; $47b6: $68
	cp   $f2                                         ; $47b7: $fe $f2
	ld   [hl], d                                     ; $47b9: $72
	xor  h                                           ; $47ba: $ac
	xor  h                                           ; $47bb: $ac
	ld   d, d                                        ; $47bc: $52
	nop                                              ; $47bd: $00
	nop                                              ; $47be: $00
	nop                                              ; $47bf: $00
	nop                                              ; $47c0: $00
	jr   nc, jr_007_4821                             ; $47c1: $30 $5e

	and  b                                           ; $47c3: $a0

jr_007_47c4:
	ld   a, $52                                      ; $47c4: $3e $52
	sbc  $52                                         ; $47c6: $de $52
	ld   e, [hl]                                     ; $47c8: $5e
	ld   e, [hl]                                     ; $47c9: $5e
	ld   [hl], d                                     ; $47ca: $72
	ld   c, h                                        ; $47cb: $4c
	ld   [hl], d                                     ; $47cc: $72
	nop                                              ; $47cd: $00
	nop                                              ; $47ce: $00
	nop                                              ; $47cf: $00
	nop                                              ; $47d0: $00
	jr   c, @+$4a                                    ; $47d1: $38 $48

	sub  b                                           ; $47d3: $90
	ld   a, h                                        ; $47d4: $7c
	ld   b, h                                        ; $47d5: $44
	ld   a, h                                        ; $47d6: $7c
	ld   b, h                                        ; $47d7: $44
	ld   a, h                                        ; $47d8: $7c
	ld   b, h                                        ; $47d9: $44
	ld   a, h                                        ; $47da: $7c
	jr   z, jr_007_4821                              ; $47db: $28 $44

	nop                                              ; $47dd: $00
	nop                                              ; $47de: $00
	nop                                              ; $47df: $00
	nop                                              ; $47e0: $00
	nop                                              ; $47e1: $00
	ld   [$2828], sp                                 ; $47e2: $08 $28 $28
	jr   z, jr_007_480f                              ; $47e5: $28 $28

	inc  h                                           ; $47e7: $24
	ld   b, h                                        ; $47e8: $44
	ld   b, h                                        ; $47e9: $44
	ld   b, d                                        ; $47ea: $42
	add  d                                           ; $47eb: $82
	nop                                              ; $47ec: $00
	nop                                              ; $47ed: $00
	nop                                              ; $47ee: $00
	nop                                              ; $47ef: $00
	nop                                              ; $47f0: $00
	nop                                              ; $47f1: $00
	ld   a, h                                        ; $47f2: $7c
	ld   d, $74                                      ; $47f3: $16 $74
	sub  $52                                         ; $47f5: $d6 $52
	db   $fc                                         ; $47f7: $fc
	ld   d, [hl]                                     ; $47f8: $56
	ld   d, h                                        ; $47f9: $54
	ld   d, [hl]                                     ; $47fa: $56
	ld   d, [hl]                                     ; $47fb: $56
	sub  d                                           ; $47fc: $92
	nop                                              ; $47fd: $00
	nop                                              ; $47fe: $00
	nop                                              ; $47ff: $00
	nop                                              ; $4800: $00
	db   $10                                         ; $4801: $10
	cp   $34                                         ; $4802: $fe $34
	ld   e, h                                        ; $4804: $5c
	ret  z                                           ; $4805: $c8

	ld   a, [hl]                                     ; $4806: $7e
	ld   e, h                                        ; $4807: $5c
	ld   l, d                                        ; $4808: $6a
	ld   b, b                                        ; $4809: $40
	db   $ec                                         ; $480a: $ec
	ld   e, b                                        ; $480b: $58
	ld   h, [hl]                                     ; $480c: $66
	nop                                              ; $480d: $00
	nop                                              ; $480e: $00

jr_007_480f:
	nop                                              ; $480f: $00
	nop                                              ; $4810: $00
	nop                                              ; $4811: $00
	ld   a, $52                                      ; $4812: $3e $52
	ld   c, d                                        ; $4814: $4a
	ld   b, d                                        ; $4815: $42
	cp   $a2                                         ; $4816: $fe $a2
	sub  h                                           ; $4818: $94
	add  h                                           ; $4819: $84
	cp   $04                                         ; $481a: $fe $04
	jr   jr_007_481e                                 ; $481c: $18 $00

jr_007_481e:
	nop                                              ; $481e: $00
	nop                                              ; $481f: $00
	nop                                              ; $4820: $00

jr_007_4821:
	db   $10                                         ; $4821: $10
	ld   a, h                                        ; $4822: $7c
	ld   a, h                                        ; $4823: $7c
	ld   b, h                                        ; $4824: $44
	cp   $92                                         ; $4825: $fe $92
	cp   $92                                         ; $4827: $fe $92
	cp   $28                                         ; $4829: $fe $28
	cp   $48                                         ; $482b: $fe $48
	nop                                              ; $482d: $00
	nop                                              ; $482e: $00
	nop                                              ; $482f: $00
	nop                                              ; $4830: $00
	ld   b, h                                        ; $4831: $44
	ld   b, h                                        ; $4832: $44
	ld   c, b                                        ; $4833: $48
	cp   $52                                         ; $4834: $fe $52
	ld   d, d                                        ; $4836: $52
	ld   [hl], d                                     ; $4837: $72
	sbc  $52                                         ; $4838: $de $52
	ld   d, d                                        ; $483a: $52
	ld   d, d                                        ; $483b: $52
	sbc  $00                                         ; $483c: $de $00
	nop                                              ; $483e: $00
	nop                                              ; $483f: $00
	nop                                              ; $4840: $00
	nop                                              ; $4841: $00
	cp   $10                                         ; $4842: $fe $10
	jr   nz, jr_007_48c2                             ; $4844: $20 $7c

	ld   b, h                                        ; $4846: $44
	ld   b, h                                        ; $4847: $44
	ld   a, h                                        ; $4848: $7c
	ld   b, h                                        ; $4849: $44
	ld   b, h                                        ; $484a: $44
	ld   b, h                                        ; $484b: $44
	ld   a, h                                        ; $484c: $7c
	nop                                              ; $484d: $00
	nop                                              ; $484e: $00
	nop                                              ; $484f: $00
	nop                                              ; $4850: $00
	nop                                              ; $4851: $00
	sbc  [hl]                                        ; $4852: $9e
	sub  h                                           ; $4853: $94
	db   $f4                                         ; $4854: $f4
	or   h                                           ; $4855: $b4
	cp   [hl]                                        ; $4856: $be
	or   d                                           ; $4857: $b2
	cp   [hl]                                        ; $4858: $be
	or   h                                           ; $4859: $b4

Jump_007_485a:
	call nc, $be54                                   ; $485a: $d4 $54 $be
	nop                                              ; $485d: $00
	nop                                              ; $485e: $00
	nop                                              ; $485f: $00
	nop                                              ; $4860: $00
	ld   c, b                                        ; $4861: $48
	ld   c, b                                        ; $4862: $48
	ld   a, [hl]                                     ; $4863: $7e
	ld   d, b                                        ; $4864: $50
	ld   hl, sp-$02                                  ; $4865: $f8 $fe
	ld   [$6aea], a                                  ; $4867: $ea $ea $6a

Call_007_486a:
	ld   l, [hl]                                     ; $486a: $6e
	ld   c, b                                        ; $486b: $48
	ld   c, b                                        ; $486c: $48
	nop                                              ; $486d: $00
	nop                                              ; $486e: $00
	nop                                              ; $486f: $00
	nop                                              ; $4870: $00
	ld   c, b                                        ; $4871: $48
	ld   a, [hl]                                     ; $4872: $7e
	or   h                                           ; $4873: $b4
	inc  h                                           ; $4874: $24
	ld   b, b                                        ; $4875: $40

Call_007_4876:
	ld   e, [hl]                                     ; $4876: $5e
	ldh  a, [c]                                      ; $4877: $f2
	ld   e, [hl]                                     ; $4878: $5e
	ldh  a, [c]                                      ; $4879: $f2
	cp   $d2                                         ; $487a: $fe $d2
	ld   e, [hl]                                     ; $487c: $5e
	nop                                              ; $487d: $00

Call_007_487e:
	nop                                              ; $487e: $00
	nop                                              ; $487f: $00
	nop                                              ; $4880: $00
	db   $10                                         ; $4881: $10
	db   $10                                         ; $4882: $10
	inc  h                                           ; $4883: $24
	ld   e, [hl]                                     ; $4884: $5e
	ld   [hl], d                                     ; $4885: $72
	inc  b                                           ; $4886: $04
	inc  h                                           ; $4887: $24
	cp   $24                                         ; $4888: $fe $24
	inc  h                                           ; $488a: $24
	inc  h                                           ; $488b: $24
	ld   b, h                                        ; $488c: $44
	nop                                              ; $488d: $00
	nop                                              ; $488e: $00
	nop                                              ; $488f: $00
	nop                                              ; $4890: $00
	ld   [$b0ee], sp                                 ; $4891: $08 $ee $b0
	xor  [hl]                                        ; $4894: $ae
	ld   [$aaae], a                                  ; $4895: $ea $ae $aa
	xor  $aa                                         ; $4898: $ee $aa
	or   [hl]                                        ; $489a: $b6
	and  h                                           ; $489b: $a4
	xor  d                                           ; $489c: $aa
	nop                                              ; $489d: $00
	nop                                              ; $489e: $00
	nop                                              ; $489f: $00
	nop                                              ; $48a0: $00
	ld   h, b                                        ; $48a1: $60
	inc  d                                           ; $48a2: $14
	inc  b                                           ; $48a3: $04
	inc  h                                           ; $48a4: $24
	jr   z, jr_007_48cf                              ; $48a5: $28 $28

	ld   l, h                                        ; $48a7: $6c
	ld   [hl], d                                     ; $48a8: $72
	or   d                                           ; $48a9: $b2
	jr   nz, jr_007_490e                             ; $48aa: $20 $62

	sbc  [hl]                                        ; $48ac: $9e
	nop                                              ; $48ad: $00
	nop                                              ; $48ae: $00
	nop                                              ; $48af: $00
	nop                                              ; $48b0: $00
	nop                                              ; $48b1: $00
	ld   c, h                                        ; $48b2: $4c
	ld   c, d                                        ; $48b3: $4a
	cp   $28                                         ; $48b4: $fe $28
	ld   a, $6a                                      ; $48b6: $3e $6a
	cp   $6a                                         ; $48b8: $fe $6a
	ld   a, [hl]                                     ; $48ba: $7e
	ld   l, d                                        ; $48bb: $6a
	ld   l, d                                        ; $48bc: $6a
	nop                                              ; $48bd: $00
	nop                                              ; $48be: $00
	nop                                              ; $48bf: $00
	nop                                              ; $48c0: $00
	db   $10                                         ; $48c1: $10

jr_007_48c2:
	cp   $28                                         ; $48c2: $fe $28
	ld   l, h                                        ; $48c4: $6c
	xor  d                                           ; $48c5: $aa
	ld   e, b                                        ; $48c6: $58
	nop                                              ; $48c7: $00
	inc  a                                           ; $48c8: $3c
	ld   h, h                                        ; $48c9: $64
	sbc  b                                           ; $48ca: $98

jr_007_48cb:
	jr   c, @-$38                                    ; $48cb: $38 $c6

	nop                                              ; $48cd: $00
	nop                                              ; $48ce: $00

jr_007_48cf:
	nop                                              ; $48cf: $00
	nop                                              ; $48d0: $00
	nop                                              ; $48d1: $00
	cp   $aa                                         ; $48d2: $fe $aa
	cp   $44                                         ; $48d4: $fe $44
	ld   a, h                                        ; $48d6: $7c
	ld   b, h                                        ; $48d7: $44
	ld   a, h                                        ; $48d8: $7c
	ld   b, h                                        ; $48d9: $44
	ld   a, h                                        ; $48da: $7c
	jr   z, jr_007_4921                              ; $48db: $28 $44

	nop                                              ; $48dd: $00
	nop                                              ; $48de: $00
	nop                                              ; $48df: $00
	nop                                              ; $48e0: $00
	ld   b, b                                        ; $48e1: $40
	ld   a, [hl]                                     ; $48e2: $7e
	call c, Call_007_5c7e                            ; $48e3: $dc $7e $5c
	cp   $04                                         ; $48e6: $fe $04
	ld   a, [hl]                                     ; $48e8: $7e
	call nc, $c43e                                   ; $48e9: $d4 $3e $c4
	inc  b                                           ; $48ec: $04
	nop                                              ; $48ed: $00
	nop                                              ; $48ee: $00
	nop                                              ; $48ef: $00
	nop                                              ; $48f0: $00
	db   $10                                         ; $48f1: $10
	db   $10                                         ; $48f2: $10
	cp   $10                                         ; $48f3: $fe $10
	jr   c, jr_007_492f                              ; $48f5: $38 $38

	ld   d, h                                        ; $48f7: $54
	ld   d, h                                        ; $48f8: $54
	sub  d                                           ; $48f9: $92
	jr   c, jr_007_490c                              ; $48fa: $38 $10

	stop                                             ; $48fc: $10 $00
	nop                                              ; $48fe: $00
	nop                                              ; $48ff: $00
	nop                                              ; $4900: $00
	db   $10                                         ; $4901: $10
	db   $10                                         ; $4902: $10
	cp   $44                                         ; $4903: $fe $44
	ld   b, h                                        ; $4905: $44
	jr   z, jr_007_4930                              ; $4906: $28 $28

	db   $10                                         ; $4908: $10
	db   $10                                         ; $4909: $10
	jr   z, jr_007_4950                              ; $490a: $28 $44

jr_007_490c:
	add  d                                           ; $490c: $82
	nop                                              ; $490d: $00

jr_007_490e:
	nop                                              ; $490e: $00
	nop                                              ; $490f: $00
	nop                                              ; $4910: $00

jr_007_4911:
	jr   z, jr_007_4911                              ; $4911: $28 $fe

	jr   z, jr_007_4969                              ; $4913: $28 $54

	cp   $54                                         ; $4915: $fe $54
	ld   e, h                                        ; $4917: $5c
	ld   a, h                                        ; $4918: $7c
	db   $10                                         ; $4919: $10
	cp   $38                                         ; $491a: $fe $38
	sub  $00                                         ; $491c: $d6 $00
	nop                                              ; $491e: $00
	nop                                              ; $491f: $00
	nop                                              ; $4920: $00

jr_007_4921:
	jr   nz, jr_007_48cb                             ; $4921: $20 $a8

	cp   $aa                                         ; $4923: $fe $aa
	or   [hl]                                        ; $4925: $b6
	ld   h, $2a                                      ; $4926: $26 $2a
	halt                                             ; $4928: $76
	and  [hl]                                        ; $4929: $a6
	ld   a, [hl+]                                    ; $492a: $2a
	ld   [hl+], a                                    ; $492b: $22
	ld   h, $00                                      ; $492c: $26 $00
	nop                                              ; $492e: $00

jr_007_492f:
	nop                                              ; $492f: $00

jr_007_4930:
	nop                                              ; $4930: $00
	jr   nz, jr_007_4991                             ; $4931: $20 $5e

	add  b                                           ; $4933: $80
	cp   $52                                         ; $4934: $fe $52
	cp   [hl]                                        ; $4936: $be
	ldh  a, [$5e]                                    ; $4937: $f0 $5e
	cp   $fe                                         ; $4939: $fe $fe
	cp   $52                                         ; $493b: $fe $52
	nop                                              ; $493d: $00
	nop                                              ; $493e: $00
	nop                                              ; $493f: $00
	nop                                              ; $4940: $00
	ld   c, b                                        ; $4941: $48
	ld   c, b                                        ; $4942: $48
	cp   $48                                         ; $4943: $fe $48
	ld   c, b                                        ; $4945: $48
	ld   l, [hl]                                     ; $4946: $6e
	jp   c, $5a5a                                    ; $4947: $da $5a $5a

	ld   d, h                                        ; $494a: $54
	ld   h, h                                        ; $494b: $64
	ld   [rRAMG], a                                  ; $494c: $ea $00 $00
	nop                                              ; $494f: $00

jr_007_4950:
	nop                                              ; $4950: $00
	ld   b, b                                        ; $4951: $40
	cp   $aa                                         ; $4952: $fe $aa
	xor  d                                           ; $4954: $aa
	db   $fc                                         ; $4955: $fc
	ld   a, [bc]                                     ; $4956: $0a
	ld   [$acaa], a                                  ; $4957: $ea $aa $ac
	xor  b                                           ; $495a: $a8
	add  sp, $08                                     ; $495b: $e8 $08
	nop                                              ; $495d: $00
	nop                                              ; $495e: $00
	nop                                              ; $495f: $00
	nop                                              ; $4960: $00
	inc  b                                           ; $4961: $04
	inc  b                                           ; $4962: $04
	cp   $56                                         ; $4963: $fe $56
	sub  h                                           ; $4965: $94
	cp   $b2                                         ; $4966: $fe $b2
	cp   d                                           ; $4968: $ba

jr_007_4969:
	cp   d                                           ; $4969: $ba
	db   $f4                                         ; $496a: $f4
	inc  d                                           ; $496b: $14
	ld   a, [hl+]                                    ; $496c: $2a
	nop                                              ; $496d: $00
	nop                                              ; $496e: $00
	nop                                              ; $496f: $00
	nop                                              ; $4970: $00
	add  b                                           ; $4971: $80
	ld   e, [hl]                                     ; $4972: $5e
	ld   d, b                                        ; $4973: $50
	ld   e, $f2                                      ; $4974: $1e $f2
	ld   a, [hl-]                                    ; $4976: $3a
	ld   a, [hl-]                                    ; $4977: $3a
	ld   d, h                                        ; $4978: $54
	ld   d, h                                        ; $4979: $54
	ld   l, d                                        ; $497a: $6a
	ldh  [$9e], a                                    ; $497b: $e0 $9e
	nop                                              ; $497d: $00
	nop                                              ; $497e: $00
	nop                                              ; $497f: $00
	nop                                              ; $4980: $00
	ld   [$aee8], sp                                 ; $4981: $08 $e8 $ae
	xor  d                                           ; $4984: $aa
	ldh  a, [c]                                      ; $4985: $f2
	xor  d                                           ; $4986: $aa
	ld   [$a4aa], a                                  ; $4987: $ea $aa $a4
	db   $e4                                         ; $498a: $e4
	ld   c, d                                        ; $498b: $4a
	or   d                                           ; $498c: $b2
	nop                                              ; $498d: $00
	nop                                              ; $498e: $00
	nop                                              ; $498f: $00
	nop                                              ; $4990: $00

jr_007_4991:
	jr   z, @+$2a                                    ; $4991: $28 $28

	cp   $2a                                         ; $4993: $fe $2a
	ld   [hl-], a                                    ; $4995: $32
	ld   a, d                                        ; $4996: $7a
	ld   e, d                                        ; $4997: $5a
	ld   e, d                                        ; $4998: $5a
	ld   d, h                                        ; $4999: $54
	ld   d, h                                        ; $499a: $54
	sbc  d                                           ; $499b: $9a
	or   d                                           ; $499c: $b2
	nop                                              ; $499d: $00
	nop                                              ; $499e: $00
	nop                                              ; $499f: $00
	nop                                              ; $49a0: $00
	nop                                              ; $49a1: $00
	jr   z, @+$2a                                    ; $49a2: $28 $28

	ld   a, [hl+]                                    ; $49a4: $2a
	db   $ec                                         ; $49a5: $ec
	jr   z, jr_007_49d0                              ; $49a6: $28 $28

	jr   z, jr_007_49d2                              ; $49a8: $28 $28

	ld   l, d                                        ; $49aa: $6a
	xor  d                                           ; $49ab: $aa
	ld   l, $00                                      ; $49ac: $2e $00
	nop                                              ; $49ae: $00
	nop                                              ; $49af: $00
	nop                                              ; $49b0: $00
	ld   [$7e6a], sp                                 ; $49b1: $08 $6a $7e
	ldh  [$be], a                                    ; $49b4: $e0 $be
	xor  b                                           ; $49b6: $a8
	cp   [hl]                                        ; $49b7: $be
	cp   [hl]                                        ; $49b8: $be
	cp   [hl]                                        ; $49b9: $be
	cp   $1e                                         ; $49ba: $fe $1e
	ld   [de], a                                     ; $49bc: $12
	nop                                              ; $49bd: $00
	nop                                              ; $49be: $00
	nop                                              ; $49bf: $00
	nop                                              ; $49c0: $00
	ld   b, b                                        ; $49c1: $40
	cp   [hl]                                        ; $49c2: $be
	ld   d, b                                        ; $49c3: $50
	ldh  a, [$be]                                    ; $49c4: $f0 $be
	ld   a, [$faba]                                  ; $49c6: $fa $ba $fa
	sub  h                                           ; $49c9: $94
	or   h                                           ; $49ca: $b4
	ld   [$0032], a                                  ; $49cb: $ea $32 $00
	nop                                              ; $49ce: $00
	nop                                              ; $49cf: $00

jr_007_49d0:
	nop                                              ; $49d0: $00
	nop                                              ; $49d1: $00

jr_007_49d2:
	add  [hl]                                        ; $49d2: $86
	ld   e, b                                        ; $49d3: $58
	ld   h, $a8                                      ; $49d4: $26 $a8
	ld   l, d                                        ; $49d6: $6a
	inc  l                                           ; $49d7: $2c
	ld   l, h                                        ; $49d8: $6c
	ld   l, h                                        ; $49d9: $6c
	xor  h                                           ; $49da: $ac
	xor  d                                           ; $49db: $aa
	jp   z, $0000                                   ; $49dc: $ca $00 $00

	nop                                              ; $49df: $00
	nop                                              ; $49e0: $00
	nop                                              ; $49e1: $00
	jr   z, jr_007_4a0c                              ; $49e2: $28 $28

	jr   z, jr_007_4a0a                              ; $49e4: $28 $24

	ld   b, h                                        ; $49e6: $44
	ld   a, [hl]                                     ; $49e7: $7e
	and  [hl]                                        ; $49e8: $a6
	inc  h                                           ; $49e9: $24
	inc  h                                           ; $49ea: $24
	ld   b, h                                        ; $49eb: $44
	ld   c, h                                        ; $49ec: $4c
	nop                                              ; $49ed: $00
	nop                                              ; $49ee: $00
	nop                                              ; $49ef: $00
	nop                                              ; $49f0: $00
	nop                                              ; $49f1: $00
	db   $10                                         ; $49f2: $10
	db   $10                                         ; $49f3: $10
	ld   e, h                                        ; $49f4: $5c
	ld   d, b                                        ; $49f5: $50
	cp   $54                                         ; $49f6: $fe $54
	ld   d, d                                        ; $49f8: $52
	sub  [hl]                                        ; $49f9: $96
	inc  b                                           ; $49fa: $04
	ld   [$0030], sp                                 ; $49fb: $08 $30 $00
	nop                                              ; $49fe: $00
	nop                                              ; $49ff: $00
	nop                                              ; $4a00: $00
	nop                                              ; $4a01: $00
	cp   $10                                         ; $4a02: $fe $10
	db   $10                                         ; $4a04: $10
	jr   nc, jr_007_4a3b                             ; $4a05: $30 $34

	ld   d, d                                        ; $4a07: $52
	sub  d                                           ; $4a08: $92
	db   $10                                         ; $4a09: $10

jr_007_4a0a:
	db   $10                                         ; $4a0a: $10
	db   $10                                         ; $4a0b: $10

jr_007_4a0c:
	stop                                             ; $4a0c: $10 $00
	nop                                              ; $4a0e: $00
	nop                                              ; $4a0f: $00
	nop                                              ; $4a10: $00
	ld   b, h                                        ; $4a11: $44
	jr   z, jr_007_4a90                              ; $4a12: $28 $7c

	db   $10                                         ; $4a14: $10
	ld   a, h                                        ; $4a15: $7c
	db   $10                                         ; $4a16: $10
	ld   a, h                                        ; $4a17: $7c
	db   $10                                         ; $4a18: $10
	cp   $10                                         ; $4a19: $fe $10
	jr   z, @-$38                                    ; $4a1b: $28 $c6

	nop                                              ; $4a1d: $00
	nop                                              ; $4a1e: $00
	nop                                              ; $4a1f: $00
	nop                                              ; $4a20: $00
	nop                                              ; $4a21: $00
	cp   $aa                                         ; $4a22: $fe $aa
	cp   $40                                         ; $4a24: $fe $40
	ld   [$eaea], a                                  ; $4a26: $ea $ea $ea
	ld   a, [bc]                                     ; $4a29: $0a
	ld   [$e6a2], a                                  ; $4a2a: $ea $a2 $e6
	nop                                              ; $4a2d: $00
	nop                                              ; $4a2e: $00
	nop                                              ; $4a2f: $00
	nop                                              ; $4a30: $00
	db   $10                                         ; $4a31: $10
	db   $10                                         ; $4a32: $10
	cp   $40                                         ; $4a33: $fe $40
	ld   b, b                                        ; $4a35: $40
	inc  a                                           ; $4a36: $3c
	nop                                              ; $4a37: $00
	inc  d                                           ; $4a38: $14
	ld   c, d                                        ; $4a39: $4a
	ld   b, b                                        ; $4a3a: $40

jr_007_4a3b:
	and  d                                           ; $4a3b: $a2
	sbc  [hl]                                        ; $4a3c: $9e
	nop                                              ; $4a3d: $00
	nop                                              ; $4a3e: $00
	nop                                              ; $4a3f: $00
	nop                                              ; $4a40: $00
	ld   a, h                                        ; $4a41: $7c
	ld   a, h                                        ; $4a42: $7c
	ld   a, h                                        ; $4a43: $7c

Call_007_4a44:
	jr   z, jr_007_4ac2                              ; $4a44: $28 $7c

jr_007_4a46:
	jr   z, jr_007_4a46                              ; $4a46: $28 $fe

	jr   z, jr_007_4a9e                              ; $4a48: $28 $54

	cp   $38                                         ; $4a4a: $fe $38
	ld   d, h                                        ; $4a4c: $54
	nop                                              ; $4a4d: $00
	nop                                              ; $4a4e: $00
	nop                                              ; $4a4f: $00
	nop                                              ; $4a50: $00
	nop                                              ; $4a51: $00
	cp   $b2                                         ; $4a52: $fe $b2
	or   d                                           ; $4a54: $b2
	or   $b0                                         ; $4a55: $f6 $b0
	cp   [hl]                                        ; $4a57: $be
	ld   a, [$b4ba]                                  ; $4a58: $fa $ba $b4
	or   h                                           ; $4a5b: $b4
	xor  d                                           ; $4a5c: $aa
	nop                                              ; $4a5d: $00
	nop                                              ; $4a5e: $00
	nop                                              ; $4a5f: $00
	nop                                              ; $4a60: $00
	db   $10                                         ; $4a61: $10
	db   $10                                         ; $4a62: $10
	ld   a, h                                        ; $4a63: $7c
	db   $10                                         ; $4a64: $10
	db   $10                                         ; $4a65: $10
	cp   $10                                         ; $4a66: $fe $10
	db   $10                                         ; $4a68: $10
	jr   z, jr_007_4a93                              ; $4a69: $28 $28

	ld   b, h                                        ; $4a6b: $44
	add  d                                           ; $4a6c: $82
	nop                                              ; $4a6d: $00
	nop                                              ; $4a6e: $00
	nop                                              ; $4a6f: $00
	nop                                              ; $4a70: $00
	nop                                              ; $4a71: $00
	ld   a, [$f8ac]                                  ; $4a72: $fa $ac $f8
	xor  d                                           ; $4a75: $aa
	ld   a, [$f88c]                                  ; $4a76: $fa $8c $f8
	jp   c, $8cfa                                    ; $4a79: $da $fa $8c

	sbc  b                                           ; $4a7c: $98
	nop                                              ; $4a7d: $00

Jump_007_4a7e:
	nop                                              ; $4a7e: $00
	nop                                              ; $4a7f: $00
	nop                                              ; $4a80: $00
	nop                                              ; $4a81: $00
	ld   a, h                                        ; $4a82: $7c
	db   $10                                         ; $4a83: $10
	sub  d                                           ; $4a84: $92
	ld   d, d                                        ; $4a85: $52
	ld   d, h                                        ; $4a86: $54
	cp   $10                                         ; $4a87: $fe $10
	db   $10                                         ; $4a89: $10
	db   $10                                         ; $4a8a: $10
	db   $10                                         ; $4a8b: $10
	stop                                             ; $4a8c: $10 $00
	nop                                              ; $4a8e: $00
	nop                                              ; $4a8f: $00

jr_007_4a90:
	nop                                              ; $4a90: $00
	nop                                              ; $4a91: $00
	ld   a, h                                        ; $4a92: $7c

jr_007_4a93:
	ld   b, h                                        ; $4a93: $44
	ld   b, h                                        ; $4a94: $44
	ld   b, h                                        ; $4a95: $44
	ld   h, h                                        ; $4a96: $64
	ld   d, h                                        ; $4a97: $54
	ld   d, h                                        ; $4a98: $54
	ld   b, h                                        ; $4a99: $44
	ld   b, h                                        ; $4a9a: $44
	add  h                                           ; $4a9b: $84
	add  [hl]                                        ; $4a9c: $86
	nop                                              ; $4a9d: $00

jr_007_4a9e:
	nop                                              ; $4a9e: $00
	nop                                              ; $4a9f: $00
	nop                                              ; $4aa0: $00
	nop                                              ; $4aa1: $00
	cp   $82                                         ; $4aa2: $fe $82
	add  d                                           ; $4aa4: $82
	add  d                                           ; $4aa5: $82
	add  d                                           ; $4aa6: $82
	cp   $82                                         ; $4aa7: $fe $82
	add  d                                           ; $4aa9: $82
	add  d                                           ; $4aaa: $82
	add  d                                           ; $4aab: $82
	cp   $00                                         ; $4aac: $fe $00
	nop                                              ; $4aae: $00
	nop                                              ; $4aaf: $00
	nop                                              ; $4ab0: $00
	nop                                              ; $4ab1: $00
	cp   $52                                         ; $4ab2: $fe $52
	ld   d, d                                        ; $4ab4: $52
	ld   a, [$d8de]                                  ; $4ab5: $fa $de $d8
	ret  c                                           ; $4ab8: $d8

	adc  b                                           ; $4ab9: $88
	ld   hl, sp-$76                                  ; $4aba: $f8 $8a
	cp   $00                                         ; $4abc: $fe $00
	nop                                              ; $4abe: $00
	nop                                              ; $4abf: $00
	nop                                              ; $4ac0: $00
	db   $10                                         ; $4ac1: $10

jr_007_4ac2:
	db   $10                                         ; $4ac2: $10

jr_007_4ac3:
	jr   nz, jr_007_4ac3                             ; $4ac3: $20 $fe

	add  d                                           ; $4ac5: $82
	add  d                                           ; $4ac6: $82
	add  d                                           ; $4ac7: $82
	cp   $82                                         ; $4ac8: $fe $82
	add  d                                           ; $4aca: $82
	add  d                                           ; $4acb: $82
	cp   $00                                         ; $4acc: $fe $00
	nop                                              ; $4ace: $00
	nop                                              ; $4acf: $00
	nop                                              ; $4ad0: $00
	nop                                              ; $4ad1: $00
	ld   a, [hl]                                     ; $4ad2: $7e
	ld   b, d                                        ; $4ad3: $42
	ld   a, [hl]                                     ; $4ad4: $7e
	ld   b, h                                        ; $4ad5: $44
	ld   a, h                                        ; $4ad6: $7c
	xor  d                                           ; $4ad7: $aa
	cp   d                                           ; $4ad8: $ba
	xor  d                                           ; $4ad9: $aa
	jr   c, jr_007_4adc                              ; $4ada: $38 $00

jr_007_4adc:
	ld   a, h                                        ; $4adc: $7c
	nop                                              ; $4add: $00
	nop                                              ; $4ade: $00
	nop                                              ; $4adf: $00
	nop                                              ; $4ae0: $00
	nop                                              ; $4ae1: $00
	ld   [hl], b                                     ; $4ae2: $70
	sub  b                                           ; $4ae3: $90

jr_007_4ae4:
	jr   z, jr_007_4ae4                              ; $4ae4: $28 $fe

	xor  d                                           ; $4ae6: $aa
	ld   a, [$5a5a]                                  ; $4ae7: $fa $5a $5a

Jump_007_4aea:
	ld   d, [hl]                                     ; $4aea: $56
	ld   d, b                                        ; $4aeb: $50
	adc  [hl]                                        ; $4aec: $8e
	nop                                              ; $4aed: $00
	nop                                              ; $4aee: $00
	nop                                              ; $4aef: $00
	nop                                              ; $4af0: $00
	nop                                              ; $4af1: $00
	xor  $aa                                         ; $4af2: $ee $aa
	xor  $aa                                         ; $4af4: $ee $aa
	xor  $8a                                         ; $4af6: $ee $8a
	cp   [hl]                                        ; $4af8: $be
	ld   [$aaae], a                                  ; $4af9: $ea $ae $aa
	or   [hl]                                        ; $4afc: $b6
	nop                                              ; $4afd: $00
	nop                                              ; $4afe: $00
	nop                                              ; $4aff: $00
	nop                                              ; $4b00: $00

jr_007_4b01:
	jr   z, jr_007_4b01                              ; $4b01: $28 $fe

	ld   a, [hl+]                                    ; $4b03: $2a
	ld   a, [hl]                                     ; $4b04: $7e
	xor  b                                           ; $4b05: $a8
	cp   $4a                                         ; $4b06: $fe $4a
	cp   $7c                                         ; $4b08: $fe $7c
	ld   a, h                                        ; $4b0a: $7c
	jr   z, jr_007_4b51                              ; $4b0b: $28 $44

	nop                                              ; $4b0d: $00
	nop                                              ; $4b0e: $00
	nop                                              ; $4b0f: $00
	nop                                              ; $4b10: $00
	ld   b, $b8                                      ; $4b11: $06 $b8
	ld   b, d                                        ; $4b13: $42
	ld   a, [hl+]                                    ; $4b14: $2a
	xor  d                                           ; $4b15: $aa
	ld   e, [hl]                                     ; $4b16: $5e
	inc  b                                           ; $4b17: $04
	ld   c, b                                        ; $4b18: $48
	ld   e, [hl]                                     ; $4b19: $5e
	add  h                                           ; $4b1a: $84
	add  h                                           ; $4b1b: $84
	adc  b                                           ; $4b1c: $88
	nop                                              ; $4b1d: $00
	nop                                              ; $4b1e: $00
	nop                                              ; $4b1f: $00
	nop                                              ; $4b20: $00
	ld   b, b                                        ; $4b21: $40
	ld   c, [hl]                                     ; $4b22: $4e
	ld   a, [$8a8e]                                  ; $4b23: $fa $8e $8a
	ld   l, [hl]                                     ; $4b26: $6e
	ld   [de], a                                     ; $4b27: $12
	cp   $10                                         ; $4b28: $fe $10
	ld   a, h                                        ; $4b2a: $7c
	db   $10                                         ; $4b2b: $10
	cp   $00                                         ; $4b2c: $fe $00
	nop                                              ; $4b2e: $00
	nop                                              ; $4b2f: $00
	nop                                              ; $4b30: $00
	ld   c, b                                        ; $4b31: $48
	ld   e, h                                        ; $4b32: $5c
	ld   c, b                                        ; $4b33: $48
	db   $f4                                         ; $4b34: $f4
	cp   $f4                                         ; $4b35: $fe $f4
	db   $fc                                         ; $4b37: $fc
	ld   e, h                                        ; $4b38: $5c
	ld   d, h                                        ; $4b39: $54
	ld   e, h                                        ; $4b3a: $5c
	ld   d, h                                        ; $4b3b: $54
	ld   h, d                                        ; $4b3c: $62
	nop                                              ; $4b3d: $00
	nop                                              ; $4b3e: $00
	nop                                              ; $4b3f: $00
	nop                                              ; $4b40: $00
	jr   nz, jr_007_4b7f                             ; $4b41: $20 $3c

	ld   d, h                                        ; $4b43: $54
	ld   d, h                                        ; $4b44: $54
	call c, Call_007_7e48                            ; $4b45: $dc $48 $7e
	ld   c, b                                        ; $4b48: $48
	ld   e, h                                        ; $4b49: $5c
	ld   e, h                                        ; $4b4a: $5c
	ld   l, d                                        ; $4b4b: $6a
	ld   c, b                                        ; $4b4c: $48
	nop                                              ; $4b4d: $00
	nop                                              ; $4b4e: $00
	nop                                              ; $4b4f: $00
	nop                                              ; $4b50: $00

jr_007_4b51:
	inc  h                                           ; $4b51: $24
	ret  z                                           ; $4b52: $c8

	ld   e, [hl]                                     ; $4b53: $5e
	or   d                                           ; $4b54: $b2
	ld   a, [hl]                                     ; $4b55: $7e
	ld   [hl], d                                     ; $4b56: $72
	cp   [hl]                                        ; $4b57: $be
	ld   l, h                                        ; $4b58: $6c
	xor  h                                           ; $4b59: $ac
	ld   l, h                                        ; $4b5a: $6c
	xor  h                                           ; $4b5b: $ac
	ld   d, [hl]                                     ; $4b5c: $56
	nop                                              ; $4b5d: $00
	nop                                              ; $4b5e: $00
	nop                                              ; $4b5f: $00
	nop                                              ; $4b60: $00
	nop                                              ; $4b61: $00
	jr   z, jr_007_4b8c                              ; $4b62: $28 $28

	xor  $28                                         ; $4b64: $ee $28
	xor  $28                                         ; $4b66: $ee $28
	ld   l, [hl]                                     ; $4b68: $6e
	xor  b                                           ; $4b69: $a8
	jr   z, jr_007_4b94                              ; $4b6a: $28 $28

	ld   c, b                                        ; $4b6c: $48
	nop                                              ; $4b6d: $00
	nop                                              ; $4b6e: $00
	nop                                              ; $4b6f: $00
	nop                                              ; $4b70: $00
	sbc  h                                           ; $4b71: $9c
	add  h                                           ; $4b72: $84
	db   $fc                                         ; $4b73: $fc
	and  h                                           ; $4b74: $a4
	cp   h                                           ; $4b75: $bc
	cp   [hl]                                        ; $4b76: $be
	xor  d                                           ; $4b77: $aa
	cp   [hl]                                        ; $4b78: $be
	xor  d                                           ; $4b79: $aa
	ld   [$a848], a                                  ; $4b7a: $ea $48 $a8
	nop                                              ; $4b7d: $00
	nop                                              ; $4b7e: $00

jr_007_4b7f:
	nop                                              ; $4b7f: $00
	nop                                              ; $4b80: $00
	nop                                              ; $4b81: $00
	xor  [hl]                                        ; $4b82: $ae
	xor  b                                           ; $4b83: $a8
	xor  b                                           ; $4b84: $a8
	cp   $8a                                         ; $4b85: $fe $8a
	ld   [$acaa], a                                  ; $4b87: $ea $aa $ac
	or   h                                           ; $4b8a: $b4
	cp   d                                           ; $4b8b: $ba

jr_007_4b8c:
	xor  d                                           ; $4b8c: $aa
	nop                                              ; $4b8d: $00
	nop                                              ; $4b8e: $00
	nop                                              ; $4b8f: $00
	nop                                              ; $4b90: $00
	nop                                              ; $4b91: $00
	db   $10                                         ; $4b92: $10
	sub  d                                           ; $4b93: $92

jr_007_4b94:
	cp   $00                                         ; $4b94: $fe $00
	xor  $aa                                         ; $4b96: $ee $aa
	xor  $aa                                         ; $4b98: $ee $aa
	xor  $aa                                         ; $4b9a: $ee $aa
	xor  d                                           ; $4b9c: $aa
	nop                                              ; $4b9d: $00
	nop                                              ; $4b9e: $00
	nop                                              ; $4b9f: $00
	nop                                              ; $4ba0: $00
	nop                                              ; $4ba1: $00
	db   $fc                                         ; $4ba2: $fc
	or   h                                           ; $4ba3: $b4
	or   h                                           ; $4ba4: $b4
	db   $f4                                         ; $4ba5: $f4
	or   h                                           ; $4ba6: $b4
	or   h                                           ; $4ba7: $b4
	db   $f4                                         ; $4ba8: $f4
	or   h                                           ; $4ba9: $b4
	or   h                                           ; $4baa: $b4
	and  h                                           ; $4bab: $a4
	and  [hl]                                        ; $4bac: $a6
	nop                                              ; $4bad: $00
	nop                                              ; $4bae: $00
	nop                                              ; $4baf: $00
	nop                                              ; $4bb0: $00
	jr   z, @+$46                                    ; $4bb1: $28 $44

	cp   $24                                         ; $4bb3: $fe $24
	ld   c, h                                        ; $4bb5: $4c
	ld   a, h                                        ; $4bb6: $7c
	ld   b, h                                        ; $4bb7: $44
	ld   a, h                                        ; $4bb8: $7c
	ld   a, h                                        ; $4bb9: $7c
	ld   a, h                                        ; $4bba: $7c
	jr   z, jr_007_4c01                              ; $4bbb: $28 $44

	nop                                              ; $4bbd: $00
	nop                                              ; $4bbe: $00
	nop                                              ; $4bbf: $00
	nop                                              ; $4bc0: $00
	nop                                              ; $4bc1: $00
	ld   b, $18                                      ; $4bc2: $06 $18
	ldh  a, [rAUD1SWEEP]                             ; $4bc4: $f0 $10
	ld   a, [hl]                                     ; $4bc6: $7e
	ld   [bc], a                                     ; $4bc7: $02
	inc  b                                           ; $4bc8: $04
	ld   c, b                                        ; $4bc9: $48
	ld   d, b                                        ; $4bca: $50
	or   b                                           ; $4bcb: $b0
	adc  [hl]                                        ; $4bcc: $8e
	nop                                              ; $4bcd: $00
	nop                                              ; $4bce: $00
	nop                                              ; $4bcf: $00
	nop                                              ; $4bd0: $00
	adc  b                                           ; $4bd1: $88
	ld   l, d                                        ; $4bd2: $6a
	ld   e, d                                        ; $4bd3: $5a
	inc  e                                           ; $4bd4: $1c
	add  sp, $3e                                     ; $4bd5: $e8 $3e
	jr   z, jr_007_4c35                              ; $4bd7: $28 $5c

	ld   e, h                                        ; $4bd9: $5c
	ld   l, d                                        ; $4bda: $6a
	add  sp, -$62                                    ; $4bdb: $e8 $9e
	nop                                              ; $4bdd: $00
	nop                                              ; $4bde: $00
	nop                                              ; $4bdf: $00
	nop                                              ; $4be0: $00

jr_007_4be1:
	jr   z, jr_007_4be1                              ; $4be1: $28 $fe

jr_007_4be3:
	jr   z, jr_007_4be3                              ; $4be3: $28 $fe

	xor  d                                           ; $4be5: $aa
	cp   $00                                         ; $4be6: $fe $00
	cp   $aa                                         ; $4be8: $fe $aa
	jr   c, jr_007_4c34                              ; $4bea: $38 $48

	stop                                             ; $4bec: $10 $00
	nop                                              ; $4bee: $00
	nop                                              ; $4bef: $00
	nop                                              ; $4bf0: $00
	nop                                              ; $4bf1: $00
	xor  $aa                                         ; $4bf2: $ee $aa
	xor  $aa                                         ; $4bf4: $ee $aa
	xor  $82                                         ; $4bf6: $ee $82
	cp   d                                           ; $4bf8: $ba
	xor  d                                           ; $4bf9: $aa
	xor  d                                           ; $4bfa: $aa
	cp   d                                           ; $4bfb: $ba
	add  [hl]                                        ; $4bfc: $86
	nop                                              ; $4bfd: $00
	nop                                              ; $4bfe: $00
	nop                                              ; $4bff: $00
	nop                                              ; $4c00: $00

jr_007_4c01:
	inc  d                                           ; $4c01: $14
	cp   [hl]                                        ; $4c02: $be
	ld   d, h                                        ; $4c03: $54
	ld   a, $88                                      ; $4c04: $3e $88
	ld   a, [hl]                                     ; $4c06: $7e
	ld   a, [hl+]                                    ; $4c07: $2a
	ld   a, [hl]                                     ; $4c08: $7e
	ld   a, [hl]                                     ; $4c09: $7e
	cp   [hl]                                        ; $4c0a: $be
	and  d                                           ; $4c0b: $a2
	and  [hl]                                        ; $4c0c: $a6
	nop                                              ; $4c0d: $00
	nop                                              ; $4c0e: $00
	nop                                              ; $4c0f: $00
	nop                                              ; $4c10: $00
	db   $10                                         ; $4c11: $10
	cp   $a2                                         ; $4c12: $fe $a2
	db   $10                                         ; $4c14: $10
	ld   h, h                                        ; $4c15: $64
	xor  d                                           ; $4c16: $aa
	ld   [hl-], a                                    ; $4c17: $32
	adc  $10                                         ; $4c18: $ce $10
	ld   d, h                                        ; $4c1a: $54
	ld   d, h                                        ; $4c1b: $54
	ld   a, h                                        ; $4c1c: $7c
	nop                                              ; $4c1d: $00
	nop                                              ; $4c1e: $00
	nop                                              ; $4c1f: $00
	nop                                              ; $4c20: $00
	db   $10                                         ; $4c21: $10
	db   $10                                         ; $4c22: $10
	cp   $10                                         ; $4c23: $fe $10
	db   $10                                         ; $4c25: $10
	ld   a, [hl]                                     ; $4c26: $7e
	db   $10                                         ; $4c27: $10
	jr   c, @+$3a                                    ; $4c28: $38 $38

	ld   d, h                                        ; $4c2a: $54
	sub  d                                           ; $4c2b: $92
	stop                                             ; $4c2c: $10 $00
	nop                                              ; $4c2e: $00
	nop                                              ; $4c2f: $00
	nop                                              ; $4c30: $00
	nop                                              ; $4c31: $00
	ld   a, [hl]                                     ; $4c32: $7e
	nop                                              ; $4c33: $00

jr_007_4c34:
	ld   a, [hl]                                     ; $4c34: $7e

jr_007_4c35:
	ld   b, d                                        ; $4c35: $42
	ld   a, [hl]                                     ; $4c36: $7e
	ld   c, b                                        ; $4c37: $48
	ld   a, [hl]                                     ; $4c38: $7e
	ld   c, b                                        ; $4c39: $48
	sub  h                                           ; $4c3a: $94
	sub  h                                           ; $4c3b: $94
	ld   [hl+], a                                    ; $4c3c: $22
	nop                                              ; $4c3d: $00
	nop                                              ; $4c3e: $00
	nop                                              ; $4c3f: $00
	nop                                              ; $4c40: $00
	ld   c, b                                        ; $4c41: $48
	ld   c, b                                        ; $4c42: $48
	cp   $5a                                         ; $4c43: $fe $5a
	ld   e, d                                        ; $4c45: $5a
	add  sp, -$18                                    ; $4c46: $e8 $e8
	db   $ec                                         ; $4c48: $ec
	call nc, Call_007_6454                           ; $4c49: $d4 $54 $64
	ld   h, [hl]                                     ; $4c4c: $66
	nop                                              ; $4c4d: $00
	nop                                              ; $4c4e: $00
	nop                                              ; $4c4f: $00
	nop                                              ; $4c50: $00
	ld   c, b                                        ; $4c51: $48
	ld   c, b                                        ; $4c52: $48
	xor  $52                                         ; $4c53: $ee $52
	ld   c, d                                        ; $4c55: $4a
	ld   [$eaea], a                                  ; $4c56: $ea $ea $ea
	call nz, Call_007_4a44                           ; $4c59: $c4 $44 $4a
	ld   d, d                                        ; $4c5c: $52
	nop                                              ; $4c5d: $00
	nop                                              ; $4c5e: $00
	nop                                              ; $4c5f: $00
	nop                                              ; $4c60: $00
	ld   a, $a2                                      ; $4c61: $3e $a2
	ld   a, [hl]                                     ; $4c63: $7e
	jr   nz, @-$40                                   ; $4c64: $20 $be

	ld   l, b                                        ; $4c66: $68
	ld   a, $6a                                      ; $4c67: $3e $6a
	ld   a, [hl]                                     ; $4c69: $7e
	cp   [hl]                                        ; $4c6a: $be
	cp   [hl]                                        ; $4c6b: $be
	xor  d                                           ; $4c6c: $aa
	nop                                              ; $4c6d: $00
	nop                                              ; $4c6e: $00
	nop                                              ; $4c6f: $00
	nop                                              ; $4c70: $00
	nop                                              ; $4c71: $00
	jr   nz, jr_007_4cb0                             ; $4c72: $20 $3c

	inc  h                                           ; $4c74: $24
	ld   b, h                                        ; $4c75: $44
	xor  b                                           ; $4c76: $a8
	db   $10                                         ; $4c77: $10
	ld   a, $62                                      ; $4c78: $3e $62
	and  d                                           ; $4c7a: $a2
	ld   [hl+], a                                    ; $4c7b: $22
	ld   a, $00                                      ; $4c7c: $3e $00
	nop                                              ; $4c7e: $00
	nop                                              ; $4c7f: $00
	nop                                              ; $4c80: $00
	jr   nz, jr_007_4ca3                             ; $4c81: $20 $20

	ld   hl, sp+$28                                  ; $4c83: $f8 $28
	jr   z, jr_007_4caf                              ; $4c85: $28 $28

	xor  b                                           ; $4c87: $a8
	ld   l, b                                        ; $4c88: $68
	jr   c, jr_007_4cd5                              ; $4c89: $38 $4a

	ld   c, d                                        ; $4c8b: $4a
	add  [hl]                                        ; $4c8c: $86
	nop                                              ; $4c8d: $00
	nop                                              ; $4c8e: $00
	nop                                              ; $4c8f: $00
	nop                                              ; $4c90: $00
	db   $10                                         ; $4c91: $10
	cp   $82                                         ; $4c92: $fe $82
	ld   a, h                                        ; $4c94: $7c
	ld   b, h                                        ; $4c95: $44
	ld   a, h                                        ; $4c96: $7c
	db   $10                                         ; $4c97: $10
	jr   nz, jr_007_4d16                             ; $4c98: $20 $7c

	ld   b, h                                        ; $4c9a: $44
	ld   b, h                                        ; $4c9b: $44
	ld   a, h                                        ; $4c9c: $7c
	nop                                              ; $4c9d: $00
	nop                                              ; $4c9e: $00
	nop                                              ; $4c9f: $00
	nop                                              ; $4ca0: $00
	halt                                             ; $4ca1: $76
	ld   d, h                                        ; $4ca2: $54

jr_007_4ca3:
	ld   a, [hl]                                     ; $4ca3: $7e
	call nc, Call_007_487e                           ; $4ca4: $d4 $7e $48
	ld   a, [hl]                                     ; $4ca7: $7e
	ret  z                                           ; $4ca8: $c8

	ld   a, [hl]                                     ; $4ca9: $7e
	ld   c, b                                        ; $4caa: $48
	ld   d, h                                        ; $4cab: $54
	ldh  [c], a                                      ; $4cac: $e2
	nop                                              ; $4cad: $00
	nop                                              ; $4cae: $00

jr_007_4caf:
	nop                                              ; $4caf: $00

jr_007_4cb0:
	nop                                              ; $4cb0: $00
	jr   z, jr_007_4cdb                              ; $4cb1: $28 $28

	ld   a, h                                        ; $4cb3: $7c
	jr   z, jr_007_4cde                              ; $4cb4: $28 $28

	cp   $00                                         ; $4cb6: $fe $00
	ld   a, h                                        ; $4cb8: $7c
	ld   b, h                                        ; $4cb9: $44
	ld   a, h                                        ; $4cba: $7c
	ld   b, h                                        ; $4cbb: $44
	ld   a, h                                        ; $4cbc: $7c
	nop                                              ; $4cbd: $00
	nop                                              ; $4cbe: $00
	nop                                              ; $4cbf: $00
	nop                                              ; $4cc0: $00
	jr   nz, @+$46                                   ; $4cc1: $20 $44

	cp   $d4                                         ; $4cc3: $fe $d4
	cp   $d4                                         ; $4cc5: $fe $d4
	cp   $4e                                         ; $4cc7: $fe $4e
	ld   d, h                                        ; $4cc9: $54
	ld   a, [hl]                                     ; $4cca: $7e
	and  d                                           ; $4ccb: $a2
	sbc  [hl]                                        ; $4ccc: $9e
	nop                                              ; $4ccd: $00
	nop                                              ; $4cce: $00
	nop                                              ; $4ccf: $00
	nop                                              ; $4cd0: $00
	ld   [$547e], sp                                 ; $4cd1: $08 $7e $54
	ld   a, [hl]                                     ; $4cd4: $7e

jr_007_4cd5:
	ld   a, [hl]                                     ; $4cd5: $7e
	ld   d, h                                        ; $4cd6: $54
	ld   a, [hl]                                     ; $4cd7: $7e
	ld   a, [hl]                                     ; $4cd8: $7e
	ld   l, d                                        ; $4cd9: $6a
	cp   [hl]                                        ; $4cda: $be

jr_007_4cdb:
	sbc  d                                           ; $4cdb: $9a
	ld   l, $00                                      ; $4cdc: $2e $00

jr_007_4cde:
	nop                                              ; $4cde: $00
	nop                                              ; $4cdf: $00
	nop                                              ; $4ce0: $00
	nop                                              ; $4ce1: $00
	cp   $b2                                         ; $4ce2: $fe $b2

jr_007_4ce4:
	or   d                                           ; $4ce4: $b2
	cp   $b4                                         ; $4ce5: $fe $b4
	or   [hl]                                        ; $4ce7: $b6
	db   $fc                                         ; $4ce8: $fc
	or   h                                           ; $4ce9: $b4
	or   h                                           ; $4cea: $b4
	db   $f4                                         ; $4ceb: $f4
	ld   a, [de]                                     ; $4cec: $1a
	nop                                              ; $4ced: $00
	nop                                              ; $4cee: $00
	nop                                              ; $4cef: $00
	nop                                              ; $4cf0: $00
	nop                                              ; $4cf1: $00
	ld   c, $ea                                      ; $4cf2: $0e $ea
	xor  d                                           ; $4cf4: $aa
	xor  [hl]                                        ; $4cf5: $ae
	ld   [$aeaa], a                                  ; $4cf6: $ea $aa $ae
	ld   [$1212], a                                  ; $4cf9: $ea $12 $12
	ld   h, $00                                      ; $4cfc: $26 $00
	nop                                              ; $4cfe: $00
	nop                                              ; $4cff: $00
	nop                                              ; $4d00: $00
	inc  b                                           ; $4d01: $04
	jr   c, jr_007_4ce4                              ; $4d02: $38 $e0

	jr   nz, jr_007_4d42                             ; $4d04: $20 $3c

	ldh  [rAUD4LEN], a                               ; $4d06: $e0 $20
	ld   a, $e0                                      ; $4d08: $3e $e0
	ld   [hl+], a                                    ; $4d0a: $22
	ld   [hl+], a                                    ; $4d0b: $22
	ld   a, $00                                      ; $4d0c: $3e $00
	nop                                              ; $4d0e: $00
	nop                                              ; $4d0f: $00
	nop                                              ; $4d10: $00
	ld   [$7c10], sp                                 ; $4d11: $08 $10 $7c
	ld   b, h                                        ; $4d14: $44
	ld   a, h                                        ; $4d15: $7c

jr_007_4d16:
	ld   b, h                                        ; $4d16: $44
	ld   a, h                                        ; $4d17: $7c
	ld   b, [hl]                                     ; $4d18: $46
	db   $fc                                         ; $4d19: $fc
	inc  c                                           ; $4d1a: $0c
	inc  [hl]                                        ; $4d1b: $34
	call z, $0000                                   ; $4d1c: $cc $00 $00
	nop                                              ; $4d1f: $00
	nop                                              ; $4d20: $00
	ld   [$fc08], sp                                 ; $4d21: $08 $08 $fc
	xor  b                                           ; $4d24: $a8
	xor  b                                           ; $4d25: $a8
	cp   [hl]                                        ; $4d26: $be
	xor  b                                           ; $4d27: $a8
	cp   h                                           ; $4d28: $bc
	db   $fc                                         ; $4d29: $fc
	ld   a, [hl+]                                    ; $4d2a: $2a
	ld   c, d                                        ; $4d2b: $4a
	ld   [rRAMG], sp                                 ; $4d2c: $08 $00 $00
	nop                                              ; $4d2f: $00
	nop                                              ; $4d30: $00
	ld   [$1afe], sp                                 ; $4d31: $08 $fe $1a
	ld   l, d                                        ; $4d34: $6a
	inc  h                                           ; $4d35: $24
	ld   a, [$7e58]                                  ; $4d36: $fa $58 $7e
	xor  d                                           ; $4d39: $aa
	ld   a, [hl+]                                    ; $4d3a: $2a
	ld   a, [hl+]                                    ; $4d3b: $2a
	halt                                             ; $4d3c: $76
	nop                                              ; $4d3d: $00
	nop                                              ; $4d3e: $00
	nop                                              ; $4d3f: $00
	nop                                              ; $4d40: $00
	nop                                              ; $4d41: $00

jr_007_4d42:
	nop                                              ; $4d42: $00
	cp   $82                                         ; $4d43: $fe $82
	add  d                                           ; $4d45: $82
	cp   $82                                         ; $4d46: $fe $82
	add  d                                           ; $4d48: $82
	cp   $82                                         ; $4d49: $fe $82
	add  d                                           ; $4d4b: $82
	cp   $00                                         ; $4d4c: $fe $00
	nop                                              ; $4d4e: $00
	nop                                              ; $4d4f: $00
	nop                                              ; $4d50: $00
	db   $10                                         ; $4d51: $10
	db   $10                                         ; $4d52: $10
	cp   $10                                         ; $4d53: $fe $10
	jr   c, jr_007_4d8f                              ; $4d55: $38 $38

	jr   c, jr_007_4dad                              ; $4d57: $38 $54

	ld   d, h                                        ; $4d59: $54
	sub  d                                           ; $4d5a: $92
	db   $10                                         ; $4d5b: $10
	stop                                             ; $4d5c: $10 $00
	nop                                              ; $4d5e: $00
	nop                                              ; $4d5f: $00
	nop                                              ; $4d60: $00
	nop                                              ; $4d61: $00
	ld   b, b                                        ; $4d62: $40
	ld   a, [hl]                                     ; $4d63: $7e
	call c, $fe5c                                    ; $4d64: $dc $5c $fe
	ld   e, h                                        ; $4d67: $5c
	ld   e, h                                        ; $4d68: $5c
	cp   $00                                         ; $4d69: $fe $00
	xor  d                                           ; $4d6b: $aa
	xor  d                                           ; $4d6c: $aa
	nop                                              ; $4d6d: $00
	nop                                              ; $4d6e: $00
	nop                                              ; $4d6f: $00
	nop                                              ; $4d70: $00
	db   $10                                         ; $4d71: $10
	sub  d                                           ; $4d72: $92
	ld   d, d                                        ; $4d73: $52
	ld   d, h                                        ; $4d74: $54
	db   $10                                         ; $4d75: $10
	cp   $38                                         ; $4d76: $fe $38
	jr   c, jr_007_4dce                              ; $4d78: $38 $54

	ld   d, h                                        ; $4d7a: $54
	sub  d                                           ; $4d7b: $92
	stop                                             ; $4d7c: $10 $00
	nop                                              ; $4d7e: $00
	nop                                              ; $4d7f: $00
	nop                                              ; $4d80: $00
	nop                                              ; $4d81: $00
	cp   $10                                         ; $4d82: $fe $10

jr_007_4d84:
	jr   nz, jr_007_4d84                             ; $4d84: $20 $fe

	xor  d                                           ; $4d86: $aa
	cp   d                                           ; $4d87: $ba
	xor  d                                           ; $4d88: $aa
	cp   d                                           ; $4d89: $ba
	xor  d                                           ; $4d8a: $aa
	xor  d                                           ; $4d8b: $aa
	cp   $00                                         ; $4d8c: $fe $00
	nop                                              ; $4d8e: $00

jr_007_4d8f:
	nop                                              ; $4d8f: $00
	nop                                              ; $4d90: $00

jr_007_4d91:
	jr   z, jr_007_4d91                              ; $4d91: $28 $fe

	jr   z, jr_007_4e11                              ; $4d93: $28 $7c

	ld   a, h                                        ; $4d95: $7c
	ld   a, h                                        ; $4d96: $7c

jr_007_4d97:
	jr   z, jr_007_4d97                              ; $4d97: $28 $fe

	ld   d, h                                        ; $4d99: $54
	cp   $54                                         ; $4d9a: $fe $54
	stop                                             ; $4d9c: $10 $00
	nop                                              ; $4d9e: $00
	nop                                              ; $4d9f: $00
	nop                                              ; $4da0: $00
	inc  a                                           ; $4da1: $3c
	ld   h, h                                        ; $4da2: $64
	ld   a, h                                        ; $4da3: $7c
	db   $e4                                         ; $4da4: $e4
	cp   $fa                                         ; $4da5: $fe $fa
	cp   $40                                         ; $4da7: $fe $40
	ld   a, h                                        ; $4da9: $7c
	ld   d, h                                        ; $4daa: $54
	ld   c, b                                        ; $4dab: $48
	halt                                             ; $4dac: $76

jr_007_4dad:
	nop                                              ; $4dad: $00
	nop                                              ; $4dae: $00
	nop                                              ; $4daf: $00
	nop                                              ; $4db0: $00
	ld   [$fc10], sp                                 ; $4db1: $08 $10 $fc
	and  h                                           ; $4db4: $a4
	cp   h                                           ; $4db5: $bc
	and  h                                           ; $4db6: $a4
	cp   [hl]                                        ; $4db7: $be
	ldh  [$3e], a                                    ; $4db8: $e0 $3e
	ld   b, d                                        ; $4dba: $42
	ld   a, d                                        ; $4dbb: $7a
	add  h                                           ; $4dbc: $84
	nop                                              ; $4dbd: $00
	nop                                              ; $4dbe: $00
	nop                                              ; $4dbf: $00
	nop                                              ; $4dc0: $00
	nop                                              ; $4dc1: $00
	jr   c, jr_007_4e0c                              ; $4dc2: $38 $48

	sub  b                                           ; $4dc4: $90
	cp   $92                                         ; $4dc5: $fe $92
	sub  d                                           ; $4dc7: $92
	cp   $28                                         ; $4dc8: $fe $28
	jr   z, jr_007_4e16                              ; $4dca: $28 $4a

	adc  [hl]                                        ; $4dcc: $8e
	nop                                              ; $4dcd: $00

jr_007_4dce:
	nop                                              ; $4dce: $00
	nop                                              ; $4dcf: $00
	nop                                              ; $4dd0: $00
	nop                                              ; $4dd1: $00
	ld   c, [hl]                                     ; $4dd2: $4e
	xor  d                                           ; $4dd3: $aa
	ld   a, [de]                                     ; $4dd4: $1a
	db   $e4                                         ; $4dd5: $e4
	ld   c, b                                        ; $4dd6: $48
	cp   $4a                                         ; $4dd7: $fe $4a
	ld   [$6aca], a                                  ; $4dd9: $ea $ca $6a
	adc  $00                                         ; $4ddc: $ce $00
	nop                                              ; $4dde: $00
	nop                                              ; $4ddf: $00
	nop                                              ; $4de0: $00
	nop                                              ; $4de1: $00
	db   $fc                                         ; $4de2: $fc
	add  h                                           ; $4de3: $84
	add  h                                           ; $4de4: $84
	db   $fc                                         ; $4de5: $fc
	sub  b                                           ; $4de6: $90
	cp   $90                                         ; $4de7: $fe $90
	adc  b                                           ; $4de9: $88
	adc  d                                           ; $4dea: $8a
	and  [hl]                                        ; $4deb: $a6
	jp   nz, $0000                                  ; $4dec: $c2 $00 $00

	nop                                              ; $4def: $00
	nop                                              ; $4df0: $00
	nop                                              ; $4df1: $00
	cp   $28                                         ; $4df2: $fe $28
	cp   $aa                                         ; $4df4: $fe $aa
	cp   $20                                         ; $4df6: $fe $20
	cp   $24                                         ; $4df8: $fe $24
	ld   h, h                                        ; $4dfa: $64
	jr   jr_007_4e63                                 ; $4dfb: $18 $66

	nop                                              ; $4dfd: $00
	nop                                              ; $4dfe: $00
	nop                                              ; $4dff: $00
	nop                                              ; $4e00: $00
	jr   z, jr_007_4e4b                              ; $4e01: $28 $48

	sbc  [hl]                                        ; $4e03: $9e
	ldh  [c], a                                      ; $4e04: $e2
	ld   b, d                                        ; $4e05: $42
	and  d                                           ; $4e06: $a2
	ld   [$e246], a                                  ; $4e07: $ea $46 $e2
	ldh  [c], a                                      ; $4e0a: $e2
	ldh  [c], a                                      ; $4e0b: $e2

jr_007_4e0c:
	ld   c, h                                        ; $4e0c: $4c
	nop                                              ; $4e0d: $00
	nop                                              ; $4e0e: $00

jr_007_4e0f:
	nop                                              ; $4e0f: $00
	nop                                              ; $4e10: $00

jr_007_4e11:
	nop                                              ; $4e11: $00
	db   $10                                         ; $4e12: $10
	db   $10                                         ; $4e13: $10
	cp   $92                                         ; $4e14: $fe $92

jr_007_4e16:
	sub  d                                           ; $4e16: $92
	sub  d                                           ; $4e17: $92
	cp   $92                                         ; $4e18: $fe $92
	sub  d                                           ; $4e1a: $92
	sub  d                                           ; $4e1b: $92
	cp   $00                                         ; $4e1c: $fe $00
	nop                                              ; $4e1e: $00
	nop                                              ; $4e1f: $00
	nop                                              ; $4e20: $00
	db   $10                                         ; $4e21: $10
	db   $10                                         ; $4e22: $10
	cp   $20                                         ; $4e23: $fe $20
	ld   a, $62                                      ; $4e25: $3e $62
	ld   a, [hl]                                     ; $4e27: $7e
	and  d                                           ; $4e28: $a2
	ld   a, $22                                      ; $4e29: $3e $22
	ld   [hl+], a                                    ; $4e2b: $22
	ld   h, $00                                      ; $4e2c: $26 $00
	nop                                              ; $4e2e: $00
	nop                                              ; $4e2f: $00
	nop                                              ; $4e30: $00
	ld   [$aea8], sp                                 ; $4e31: $08 $a8 $ae
	ld   d, d                                        ; $4e34: $52
	ld   b, [hl]                                     ; $4e35: $46
	and  h                                           ; $4e36: $a4
	db   $f4                                         ; $4e37: $f4
	and  h                                           ; $4e38: $a4
	and  h                                           ; $4e39: $a4
	xor  h                                           ; $4e3a: $ac
	ld   [$0012], a                                  ; $4e3b: $ea $12 $00
	nop                                              ; $4e3e: $00
	nop                                              ; $4e3f: $00
	nop                                              ; $4e40: $00
	db   $10                                         ; $4e41: $10
	cp   $82                                         ; $4e42: $fe $82
	jr   z, jr_007_4e0c                              ; $4e44: $28 $c6

	db   $10                                         ; $4e46: $10
	jr   z, jr_007_4e0f                              ; $4e47: $28 $c6

	ld   a, h                                        ; $4e49: $7c
	ld   b, h                                        ; $4e4a: $44

jr_007_4e4b:
	ld   b, h                                        ; $4e4b: $44
	ld   a, h                                        ; $4e4c: $7c
	nop                                              ; $4e4d: $00
	nop                                              ; $4e4e: $00
	nop                                              ; $4e4f: $00
	nop                                              ; $4e50: $00
	nop                                              ; $4e51: $00
	cp   $28                                         ; $4e52: $fe $28
	cp   $52                                         ; $4e54: $fe $52
	cp   $32                                         ; $4e56: $fe $32
	ld   a, [hl]                                     ; $4e58: $7e
	ld   d, d                                        ; $4e59: $52
	ld   e, [hl]                                     ; $4e5a: $5e
	ld   c, h                                        ; $4e5b: $4c
	jp   nc, $0000                                  ; $4e5c: $d2 $00 $00

	nop                                              ; $4e5f: $00
	nop                                              ; $4e60: $00
	nop                                              ; $4e61: $00
	sub  h                                           ; $4e62: $94

jr_007_4e63:
	ld   d, h                                        ; $4e63: $54
	ld   a, [hl+]                                    ; $4e64: $2a
	adc  b                                           ; $4e65: $88
	ld   d, h                                        ; $4e66: $54
	ld   [hl+], a                                    ; $4e67: $22
	ld   e, h                                        ; $4e68: $5c
	ld   d, h                                        ; $4e69: $54
	sub  h                                           ; $4e6a: $94
	sub  h                                           ; $4e6b: $94
	sbc  h                                           ; $4e6c: $9c
	nop                                              ; $4e6d: $00
	nop                                              ; $4e6e: $00
	nop                                              ; $4e6f: $00
	nop                                              ; $4e70: $00
	nop                                              ; $4e71: $00
	cp   $d2                                         ; $4e72: $fe $d2
	cp   $d4                                         ; $4e74: $fe $d4
	cp   $42                                         ; $4e76: $fe $42
	or   $44                                         ; $4e78: $f6 $44
	ld   [hl], h                                     ; $4e7a: $74
	call nz, $000c                                   ; $4e7b: $c4 $0c $00
	nop                                              ; $4e7e: $00
	nop                                              ; $4e7f: $00
	nop                                              ; $4e80: $00
	and  h                                           ; $4e81: $a4
	ld   e, b                                        ; $4e82: $58
	cp   $28                                         ; $4e83: $fe $28
	ld   d, h                                        ; $4e85: $54
	cp   $82                                         ; $4e86: $fe $82
	jr   c, @+$3a                                    ; $4e88: $38 $38

	ld   a, h                                        ; $4e8a: $7c
	ld   b, h                                        ; $4e8b: $44
	ld   a, h                                        ; $4e8c: $7c
	nop                                              ; $4e8d: $00
	nop                                              ; $4e8e: $00
	nop                                              ; $4e8f: $00
	nop                                              ; $4e90: $00
	cp   $aa                                         ; $4e91: $fe $aa
	cp   [hl]                                        ; $4e93: $be
	xor  d                                           ; $4e94: $aa
	cp   $54                                         ; $4e95: $fe $54
	cp   $d4                                         ; $4e97: $fe $d4
	sbc  $fe                                         ; $4e99: $de $fe
	call nc, $001e                                   ; $4e9b: $d4 $1e $00
	nop                                              ; $4e9e: $00
	nop                                              ; $4e9f: $00
	nop                                              ; $4ea0: $00
	db   $10                                         ; $4ea1: $10
	db   $10                                         ; $4ea2: $10
	cp   $10                                         ; $4ea3: $fe $10
	jr   nz, @+$40                                   ; $4ea5: $20 $3e

	ld   [hl+], a                                    ; $4ea7: $22
	ld   d, h                                        ; $4ea8: $54
	ld   d, h                                        ; $4ea9: $54
	adc  b                                           ; $4eaa: $88
	inc  d                                           ; $4eab: $14
	ld   [hl+], a                                    ; $4eac: $22
	nop                                              ; $4ead: $00
	nop                                              ; $4eae: $00
	nop                                              ; $4eaf: $00
	nop                                              ; $4eb0: $00
	nop                                              ; $4eb1: $00
	and  d                                           ; $4eb2: $a2
	ld   d, d                                        ; $4eb3: $52
	inc  d                                           ; $4eb4: $14
	cp   [hl]                                        ; $4eb5: $be
	ld   c, b                                        ; $4eb6: $48
	ld   a, $48                                      ; $4eb7: $3e $48
	ld   a, [hl]                                     ; $4eb9: $7e
	adc  b                                           ; $4eba: $88
	adc  b                                           ; $4ebb: $88
	adc  b                                           ; $4ebc: $88
	nop                                              ; $4ebd: $00
	nop                                              ; $4ebe: $00
	nop                                              ; $4ebf: $00
	nop                                              ; $4ec0: $00
	jr   nz, jr_007_4f1f                             ; $4ec1: $20 $5c

	sub  h                                           ; $4ec3: $94
	inc  [hl]                                        ; $4ec4: $34
	ld   d, h                                        ; $4ec5: $54
	and  $5c                                         ; $4ec6: $e6 $5c
	ld   b, h                                        ; $4ec8: $44
	ld   d, h                                        ; $4ec9: $54
	ld   c, b                                        ; $4eca: $48
	ld   c, b                                        ; $4ecb: $48
	halt                                             ; $4ecc: $76
	nop                                              ; $4ecd: $00
	nop                                              ; $4ece: $00
	nop                                              ; $4ecf: $00
	nop                                              ; $4ed0: $00
	inc  e                                           ; $4ed1: $1c
	sub  h                                           ; $4ed2: $94
	ld   e, h                                        ; $4ed3: $5c
	inc  d                                           ; $4ed4: $14
	sbc  h                                           ; $4ed5: $9c
	ld   b, b                                        ; $4ed6: $40
	ld   a, $50                                      ; $4ed7: $3e $50
	ld   e, [hl]                                     ; $4ed9: $5e
	xor  d                                           ; $4eda: $aa
	sub  [hl]                                        ; $4edb: $96
	xor  d                                           ; $4edc: $aa
	nop                                              ; $4edd: $00
	nop                                              ; $4ede: $00
	nop                                              ; $4edf: $00
	nop                                              ; $4ee0: $00
	nop                                              ; $4ee1: $00
	adc  b                                           ; $4ee2: $88
	ld   c, b                                        ; $4ee3: $48
	ld   a, $aa                                      ; $4ee4: $3e $aa
	ld   l, d                                        ; $4ee6: $6a
	ld   a, [hl+]                                    ; $4ee7: $2a
	ld   a, [hl]                                     ; $4ee8: $7e
	ld   l, d                                        ; $4ee9: $6a
	xor  d                                           ; $4eea: $aa
	xor  d                                           ; $4eeb: $aa
	cp   [hl]                                        ; $4eec: $be
	nop                                              ; $4eed: $00
	nop                                              ; $4eee: $00
	nop                                              ; $4eef: $00
	nop                                              ; $4ef0: $00
	db   $10                                         ; $4ef1: $10
	cp   $20                                         ; $4ef2: $fe $20
	ld   l, $4a                                      ; $4ef4: $2e $4a
	jp   c, $5476                                    ; $4ef6: $da $76 $54

	ld   c, h                                        ; $4ef9: $4c
	ld   c, b                                        ; $4efa: $48
	ld   d, h                                        ; $4efb: $54
	ld   h, d                                        ; $4efc: $62
	nop                                              ; $4efd: $00
	nop                                              ; $4efe: $00
	nop                                              ; $4eff: $00
	nop                                              ; $4f00: $00
	jr   nz, jr_007_4f41                             ; $4f01: $20 $3e

	ld   [hl+], a                                    ; $4f03: $22
	ld   b, d                                        ; $4f04: $42
	ld   h, d                                        ; $4f05: $62
	sub  d                                           ; $4f06: $92
	ld   a, [bc]                                     ; $4f07: $0a
	inc  b                                           ; $4f08: $04
	inc  b                                           ; $4f09: $04
	ld   [$6010], sp                                 ; $4f0a: $08 $10 $60
	nop                                              ; $4f0d: $00
	nop                                              ; $4f0e: $00
	nop                                              ; $4f0f: $00
	nop                                              ; $4f10: $00
	db   $10                                         ; $4f11: $10
	jr   z, jr_007_4f58                              ; $4f12: $28 $44

	cp   $10                                         ; $4f14: $fe $10
	db   $10                                         ; $4f16: $10
	cp   $10                                         ; $4f17: $fe $10
	ld   d, h                                        ; $4f19: $54
	ld   d, d                                        ; $4f1a: $52
	sub  d                                           ; $4f1b: $92

jr_007_4f1c:
	jr   nc, jr_007_4f1e                             ; $4f1c: $30 $00

jr_007_4f1e:
	nop                                              ; $4f1e: $00

jr_007_4f1f:
	nop                                              ; $4f1f: $00
	nop                                              ; $4f20: $00
	sub  h                                           ; $4f21: $94
	ld   d, h                                        ; $4f22: $54
	ld   a, [hl]                                     ; $4f23: $7e
	jr   jr_007_4f1c                                 ; $4f24: $18 $f6

	ld   a, [hl-]                                    ; $4f26: $3a
	inc  a                                           ; $4f27: $3c
	ld   e, d                                        ; $4f28: $5a
	ld   e, [hl]                                     ; $4f29: $5e
	ld   l, d                                        ; $4f2a: $6a
	db   $ec                                         ; $4f2b: $ec
	sbc  [hl]                                        ; $4f2c: $9e
	nop                                              ; $4f2d: $00
	nop                                              ; $4f2e: $00
	nop                                              ; $4f2f: $00
	nop                                              ; $4f30: $00
	nop                                              ; $4f31: $00
	cp   $92                                         ; $4f32: $fe $92
	sub  d                                           ; $4f34: $92
	cp   $92                                         ; $4f35: $fe $92
	sub  d                                           ; $4f37: $92
	cp   $92                                         ; $4f38: $fe $92
	sub  d                                           ; $4f3a: $92
	sub  d                                           ; $4f3b: $92
	sub  [hl]                                        ; $4f3c: $96
	nop                                              ; $4f3d: $00
	nop                                              ; $4f3e: $00
	nop                                              ; $4f3f: $00
	nop                                              ; $4f40: $00

jr_007_4f41:
	ld   e, $ea                                      ; $4f41: $1e $ea
	cp   [hl]                                        ; $4f43: $be
	xor  d                                           ; $4f44: $aa
	cp   [hl]                                        ; $4f45: $be
	db   $f4                                         ; $4f46: $f4
	cp   [hl]                                        ; $4f47: $be
	or   h                                           ; $4f48: $b4
	cp   [hl]                                        ; $4f49: $be
	cp   $14                                         ; $4f4a: $fe $14
	ld   e, $00                                      ; $4f4c: $1e $00
	nop                                              ; $4f4e: $00
	nop                                              ; $4f4f: $00
	nop                                              ; $4f50: $00
	jr   z, jr_007_4fcf                              ; $4f51: $28 $7c

	db   $10                                         ; $4f53: $10
	ld   a, h                                        ; $4f54: $7c
	db   $10                                         ; $4f55: $10
	cp   $28                                         ; $4f56: $fe $28

jr_007_4f58:
	ld   d, h                                        ; $4f58: $54
	cp   d                                           ; $4f59: $ba
	inc  a                                           ; $4f5a: $3c
	jr   z, jr_007_4f91                              ; $4f5b: $28 $34

	nop                                              ; $4f5d: $00
	nop                                              ; $4f5e: $00
	nop                                              ; $4f5f: $00
	nop                                              ; $4f60: $00
	ld   e, $ec                                      ; $4f61: $1e $ec
	cp   [hl]                                        ; $4f63: $be
	cp   [hl]                                        ; $4f64: $be
	cp   $a8                                         ; $4f65: $fe $a8
	cp   [hl]                                        ; $4f67: $be
	ld   [$bcb2], a                                  ; $4f68: $ea $b2 $bc
	and  h                                           ; $4f6b: $a4
	cp   d                                           ; $4f6c: $ba
	nop                                              ; $4f6d: $00
	nop                                              ; $4f6e: $00
	nop                                              ; $4f6f: $00
	nop                                              ; $4f70: $00
	ld   a, $28                                      ; $4f71: $3e $28
	ld   e, h                                        ; $4f73: $5c
	call c, Call_007_627e                            ; $4f74: $dc $7e $62
	ld   e, h                                        ; $4f77: $5c
	ld   l, [hl]                                     ; $4f78: $6e
	ld   e, h                                        ; $4f79: $5c
	ld   [hl], h                                     ; $4f7a: $74
	ld   c, b                                        ; $4f7b: $48
	halt                                             ; $4f7c: $76
	nop                                              ; $4f7d: $00
	nop                                              ; $4f7e: $00
	nop                                              ; $4f7f: $00
	nop                                              ; $4f80: $00
	add  b                                           ; $4f81: $80
	add  [hl]                                        ; $4f82: $86
	db   $fc                                         ; $4f83: $fc
	and  h                                           ; $4f84: $a4
	and  h                                           ; $4f85: $a4
	cp   [hl]                                        ; $4f86: $be
	and  h                                           ; $4f87: $a4
	and  h                                           ; $4f88: $a4
	and  h                                           ; $4f89: $a4
	call z, $b24a                                    ; $4f8a: $cc $4a $b2
	nop                                              ; $4f8d: $00
	nop                                              ; $4f8e: $00
	nop                                              ; $4f8f: $00
	nop                                              ; $4f90: $00

jr_007_4f91:
	ld   b, [hl]                                     ; $4f91: $46
	ld   hl, sp+$3e                                  ; $4f92: $f8 $3e
	add  sp, $1c                                     ; $4f94: $e8 $1c
	ld   [$ec1c], a                                  ; $4f96: $ea $1c $ec
	xor  [hl]                                        ; $4f99: $ae
	xor  d                                           ; $4f9a: $aa
	or   d                                           ; $4f9b: $b2
	or   $00                                         ; $4f9c: $f6 $00
	nop                                              ; $4f9e: $00
	nop                                              ; $4f9f: $00
	nop                                              ; $4fa0: $00
	ld   a, [$7a4a]                                  ; $4fa1: $fa $4a $7a
	jp   c, $e632                                    ; $4fa4: $da $32 $e6

	db   $10                                         ; $4fa7: $10
	cp   $24                                         ; $4fa8: $fe $24
	ret  c                                           ; $4faa: $d8

	ld   c, b                                        ; $4fab: $48
	ld   h, [hl]                                     ; $4fac: $66
	nop                                              ; $4fad: $00
	nop                                              ; $4fae: $00
	nop                                              ; $4faf: $00
	nop                                              ; $4fb0: $00
	ld   c, b                                        ; $4fb1: $48
	db   $f4                                         ; $4fb2: $f4
	ld   [hl+], a                                    ; $4fb3: $22
	cp   $00                                         ; $4fb4: $fe $00
	cp   $3a                                         ; $4fb6: $fe $3a
	ld   a, [$babe]                                  ; $4fb8: $fa $be $ba
	cp   d                                           ; $4fbb: $ba
	and  $00                                         ; $4fbc: $e6 $00
	nop                                              ; $4fbe: $00
	nop                                              ; $4fbf: $00
	nop                                              ; $4fc0: $00
	ld   [$9408], sp                                 ; $4fc1: $08 $08 $94
	ld   d, h                                        ; $4fc4: $54
	ld   a, [hl]                                     ; $4fc5: $7e
	nop                                              ; $4fc6: $00
	ld   e, [hl]                                     ; $4fc7: $5e
	ld   c, d                                        ; $4fc8: $4a
	adc  d                                           ; $4fc9: $8a
	adc  [hl]                                        ; $4fca: $8e
	adc  b                                           ; $4fcb: $88
	ld   [rRAMG], sp                                 ; $4fcc: $08 $00 $00

jr_007_4fcf:
	nop                                              ; $4fcf: $00
	nop                                              ; $4fd0: $00
	adc  b                                           ; $4fd1: $88
	ld   a, [hl]                                     ; $4fd2: $7e
	ld   c, b                                        ; $4fd3: $48
	ld   a, $ea                                      ; $4fd4: $3e $ea
	ld   a, $2a                                      ; $4fd6: $3e $2a
	ld   a, [hl]                                     ; $4fd8: $7e
	ld   c, b                                        ; $4fd9: $48
	ld   a, [hl]                                     ; $4fda: $7e
	add  sp, -$62                                    ; $4fdb: $e8 $9e
	nop                                              ; $4fdd: $00
	nop                                              ; $4fde: $00
	nop                                              ; $4fdf: $00
	nop                                              ; $4fe0: $00
	jr   nz, jr_007_5021                             ; $4fe1: $20 $3e

	ld   d, d                                        ; $4fe3: $52
	sbc  $56                                         ; $4fe4: $de $56
	ld   d, [hl]                                     ; $4fe6: $56
	ld   a, [hl]                                     ; $4fe7: $7e
	ld   l, [hl]                                     ; $4fe8: $6e
	ld   c, d                                        ; $4fe9: $4a
	ld   d, d                                        ; $4fea: $52
	ld   h, d                                        ; $4feb: $62
	ld   b, [hl]                                     ; $4fec: $46
	nop                                              ; $4fed: $00
	nop                                              ; $4fee: $00
	nop                                              ; $4fef: $00
	nop                                              ; $4ff0: $00
	nop                                              ; $4ff1: $00
	ld   a, h                                        ; $4ff2: $7c
	ld   d, h                                        ; $4ff3: $54
	ld   d, h                                        ; $4ff4: $54
	ld   a, h                                        ; $4ff5: $7c
	ld   d, h                                        ; $4ff6: $54
	ld   d, h                                        ; $4ff7: $54
	ld   a, h                                        ; $4ff8: $7c
	db   $10                                         ; $4ff9: $10
	ld   a, h                                        ; $4ffa: $7c
	db   $10                                         ; $4ffb: $10
	cp   $00                                         ; $4ffc: $fe $00
	nop                                              ; $4ffe: $00
	nop                                              ; $4fff: $00
	nop                                              ; $5000: $00
	nop                                              ; $5001: $00
	cp   $02                                         ; $5002: $fe $02
	inc  b                                           ; $5004: $04
	jr   jr_007_5017                                 ; $5005: $18 $10

	db   $10                                         ; $5007: $10
	db   $10                                         ; $5008: $10
	db   $10                                         ; $5009: $10
	db   $10                                         ; $500a: $10
	db   $10                                         ; $500b: $10
	jr   nc, jr_007_500e                             ; $500c: $30 $00

jr_007_500e:
	nop                                              ; $500e: $00
	nop                                              ; $500f: $00
	nop                                              ; $5010: $00
	db   $10                                         ; $5011: $10
	jr   z, @+$46                                    ; $5012: $28 $44

	add  d                                           ; $5014: $82
	ld   a, h                                        ; $5015: $7c
	nop                                              ; $5016: $00

jr_007_5017:
	cp   $12                                         ; $5017: $fe $12
	ld   [de], a                                     ; $5019: $12
	ld   d, $10                                      ; $501a: $16 $10
	stop                                             ; $501c: $10 $00
	nop                                              ; $501e: $00
	nop                                              ; $501f: $00
	nop                                              ; $5020: $00

jr_007_5021:
	ld   b, h                                        ; $5021: $44
	call nc, Call_007_44ec                           ; $5022: $d4 $ec $44
	db   $f4                                         ; $5025: $f4
	ld   c, h                                        ; $5026: $4c
	db   $e4                                         ; $5027: $e4
	and  $ec                                         ; $5028: $e6 $ec
	call nc, Call_007_4444                           ; $502a: $d4 $44 $44
	nop                                              ; $502d: $00
	nop                                              ; $502e: $00
	nop                                              ; $502f: $00
	nop                                              ; $5030: $00
	ld   l, $24                                      ; $5031: $2e $24
	cp   $2a                                         ; $5033: $fe $2a
	cp   $aa                                         ; $5035: $fe $aa
	cp   $2a                                         ; $5037: $fe $2a
	ld   a, [hl]                                     ; $5039: $7e
	ld   [hl], h                                     ; $503a: $74
	xor  d                                           ; $503b: $aa
	ld   [hl-], a                                    ; $503c: $32
	nop                                              ; $503d: $00
	nop                                              ; $503e: $00
	nop                                              ; $503f: $00
	nop                                              ; $5040: $00
	db   $10                                         ; $5041: $10
	ld   h, b                                        ; $5042: $60
	adc  [hl]                                        ; $5043: $8e
	xor  d                                           ; $5044: $aa
	xor  d                                           ; $5045: $aa
	xor  $ee                                         ; $5046: $ee $ee
	xor  d                                           ; $5048: $aa
	ld   [$28ae], a                                  ; $5049: $ea $ae $28
	ld   c, b                                        ; $504c: $48
	nop                                              ; $504d: $00
	nop                                              ; $504e: $00
	nop                                              ; $504f: $00

Call_007_5050:
	nop                                              ; $5050: $00
	ld   [$a85e], sp                                 ; $5051: $08 $5e $a8
	ld   e, $fa                                      ; $5054: $1e $fa
	ld   e, [hl]                                     ; $5056: $5e
	ld   a, [$e85e]                                  ; $5057: $fa $5e $e8
	call c, $c86a                                    ; $505a: $dc $6a $c8
	nop                                              ; $505d: $00
	nop                                              ; $505e: $00
	nop                                              ; $505f: $00
	nop                                              ; $5060: $00

jr_007_5061:
	ld   h, d                                        ; $5061: $62
	jp   z, $ea4a                                    ; $5062: $ca $4a $ea

	ld   c, d                                        ; $5065: $4a
	ld   c, d                                        ; $5066: $4a
	ld   [$d2ea], a                                  ; $5067: $ea $ea $d2
	ld   b, d                                        ; $506a: $42
	ld   b, d                                        ; $506b: $42
	ld   b, [hl]                                     ; $506c: $46
	nop                                              ; $506d: $00
	nop                                              ; $506e: $00
	nop                                              ; $506f: $00
	nop                                              ; $5070: $00
	xor  $ee                                         ; $5071: $ee $ee
	xor  d                                           ; $5073: $aa
	db   $10                                         ; $5074: $10
	cp   $a8                                         ; $5075: $fe $a8
	cp   $aa                                         ; $5077: $fe $aa
	cp   $fe                                         ; $5079: $fe $fe
	ret  z                                           ; $507b: $c8

	or   [hl]                                        ; $507c: $b6
	nop                                              ; $507d: $00
	nop                                              ; $507e: $00
	nop                                              ; $507f: $00
	nop                                              ; $5080: $00
	jr   nz, jr_007_5061                             ; $5081: $20 $de

	adc  d                                           ; $5083: $8a
	xor  d                                           ; $5084: $aa
	ld   [$0096], a                                  ; $5085: $ea $96 $00
	ld   a, h                                        ; $5088: $7c
	ld   d, h                                        ; $5089: $54
	ld   a, h                                        ; $508a: $7c
	ld   d, h                                        ; $508b: $54
	ld   a, h                                        ; $508c: $7c
	nop                                              ; $508d: $00
	nop                                              ; $508e: $00
	nop                                              ; $508f: $00
	nop                                              ; $5090: $00
	ld   a, h                                        ; $5091: $7c
	db   $10                                         ; $5092: $10
	cp   $da                                         ; $5093: $fe $da
	or   [hl]                                        ; $5095: $b6
	jp   c, $007c                                    ; $5096: $da $7c $00

	ld   a, h                                        ; $5099: $7c
	xor  d                                           ; $509a: $aa
	ld   l, h                                        ; $509b: $6c
	cp   $00                                         ; $509c: $fe $00
	nop                                              ; $509e: $00
	nop                                              ; $509f: $00
	nop                                              ; $50a0: $00
	nop                                              ; $50a1: $00
	jr   nz, @+$22                                   ; $50a2: $20 $20

	cp   $22                                         ; $50a4: $fe $22
	ld   [hl+], a                                    ; $50a6: $22
	ld   [hl+], a                                    ; $50a7: $22
	ld   [hl+], a                                    ; $50a8: $22
	ld   [hl+], a                                    ; $50a9: $22
	ld   b, d                                        ; $50aa: $42
	ld   b, d                                        ; $50ab: $42
	adc  h                                           ; $50ac: $8c
	nop                                              ; $50ad: $00
	nop                                              ; $50ae: $00
	nop                                              ; $50af: $00
	nop                                              ; $50b0: $00
	db   $10                                         ; $50b1: $10
	cp   $28                                         ; $50b2: $fe $28
	ld   l, h                                        ; $50b4: $6c
	ld   l, d                                        ; $50b5: $6a
	xor  d                                           ; $50b6: $aa
	ld   e, b                                        ; $50b7: $58
	nop                                              ; $50b8: $00
	ld   d, h                                        ; $50b9: $54
	ld   c, d                                        ; $50ba: $4a
	and  d                                           ; $50bb: $a2
	sbc  [hl]                                        ; $50bc: $9e
	nop                                              ; $50bd: $00
	nop                                              ; $50be: $00
	nop                                              ; $50bf: $00
	nop                                              ; $50c0: $00

jr_007_50c1:
	ld   b, b                                        ; $50c1: $40
	ld   c, [hl]                                     ; $50c2: $4e
	ld   [$ecaa], a                                  ; $50c3: $ea $aa $ec
	xor  d                                           ; $50c6: $aa
	ld   [$aa8a], a                                  ; $50c7: $ea $8a $aa
	db   $ec                                         ; $50ca: $ec
	xor  b                                           ; $50cb: $a8
	ld   [rRAMG], sp                                 ; $50cc: $08 $00 $00
	nop                                              ; $50cf: $00
	nop                                              ; $50d0: $00
	ld   b, b                                        ; $50d1: $40
	ld   c, b                                        ; $50d2: $48
	add  sp, $28                                     ; $50d3: $e8 $28
	jr   z, jr_007_511f                              ; $50d5: $28 $48

	add  sp, $48                                     ; $50d7: $e8 $48
	ld   c, b                                        ; $50d9: $48
	ld   c, d                                        ; $50da: $4a
	ld   c, d                                        ; $50db: $4a
	ld   c, [hl]                                     ; $50dc: $4e
	nop                                              ; $50dd: $00
	nop                                              ; $50de: $00
	nop                                              ; $50df: $00
	nop                                              ; $50e0: $00

jr_007_50e1:
	db   $10                                         ; $50e1: $10
	ld   a, h                                        ; $50e2: $7c

jr_007_50e3:
	jr   z, jr_007_50e3                              ; $50e3: $28 $fe

	nop                                              ; $50e5: $00
	ld   a, h                                        ; $50e6: $7c
	ld   d, h                                        ; $50e7: $54
	ld   a, h                                        ; $50e8: $7c
	ld   d, h                                        ; $50e9: $54
	ld   a, h                                        ; $50ea: $7c
	ld   [de], a                                     ; $50eb: $12
	ld   e, $00                                      ; $50ec: $1e $00

jr_007_50ee:
	nop                                              ; $50ee: $00
	nop                                              ; $50ef: $00
	nop                                              ; $50f0: $00
	and  h                                           ; $50f1: $a4
	ld   d, h                                        ; $50f2: $54
	cp   $82                                         ; $50f3: $fe $82
	jr   nz, jr_007_5173                             ; $50f5: $20 $7c

	inc  h                                           ; $50f7: $24
	inc  h                                           ; $50f8: $24
	inc  h                                           ; $50f9: $24
	ld   b, h                                        ; $50fa: $44
	ld   b, h                                        ; $50fb: $44
	sbc  b                                           ; $50fc: $98
	nop                                              ; $50fd: $00
	nop                                              ; $50fe: $00
	nop                                              ; $50ff: $00
	nop                                              ; $5100: $00
	db   $10                                         ; $5101: $10
	db   $10                                         ; $5102: $10
	ld   a, h                                        ; $5103: $7c
	db   $10                                         ; $5104: $10
	ld   d, h                                        ; $5105: $54

jr_007_5106:
	jr   c, jr_007_5106                              ; $5106: $38 $fe

	db   $10                                         ; $5108: $10
	jr   c, jr_007_50e1                              ; $5109: $38 $d6

	db   $10                                         ; $510b: $10
	stop                                             ; $510c: $10 $00
	nop                                              ; $510e: $00
	nop                                              ; $510f: $00
	nop                                              ; $5110: $00
	nop                                              ; $5111: $00
	cp   $6a                                         ; $5112: $fe $6a
	ld   a, [hl]                                     ; $5114: $7e
	ld   l, d                                        ; $5115: $6a
	ld   [$487e], a                                  ; $5116: $ea $7e $48
	ld   a, [hl]                                     ; $5119: $7e
	ret  z                                           ; $511a: $c8

	ld   [$003e], sp                                 ; $511b: $08 $3e $00
	nop                                              ; $511e: $00

jr_007_511f:
	nop                                              ; $511f: $00
	nop                                              ; $5120: $00

jr_007_5121:
	jr   z, jr_007_5121                              ; $5121: $28 $fe

	jr   z, jr_007_50c1                              ; $5123: $28 $9c

	ld   d, h                                        ; $5125: $54
	or   h                                           ; $5126: $b4
	ld   c, b                                        ; $5127: $48
	ld   [hl], $5c                                   ; $5128: $36 $5c
	ld   d, h                                        ; $512a: $54
	sub  h                                           ; $512b: $94
	sbc  h                                           ; $512c: $9c
	nop                                              ; $512d: $00
	nop                                              ; $512e: $00
	nop                                              ; $512f: $00
	nop                                              ; $5130: $00
	db   $10                                         ; $5131: $10
	jr   nz, jr_007_50ee                             ; $5132: $20 $ba

	ld   l, h                                        ; $5134: $6c
	jr   c, jr_007_51a3                              ; $5135: $38 $6c

	cp   d                                           ; $5137: $ba
	db   $10                                         ; $5138: $10
	cp   $38                                         ; $5139: $fe $38
	sub  $10                                         ; $513b: $d6 $10
	nop                                              ; $513d: $00
	nop                                              ; $513e: $00
	nop                                              ; $513f: $00
	nop                                              ; $5140: $00
	ld   [$48be], sp                                 ; $5141: $08 $be $48
	inc  d                                           ; $5144: $14
	cp   [hl]                                        ; $5145: $be
	ld   b, d                                        ; $5146: $42
	inc  e                                           ; $5147: $1c
	ld   e, h                                        ; $5148: $5c
	ld   e, h                                        ; $5149: $5c
	sbc  h                                           ; $514a: $9c
	sub  h                                           ; $514b: $94
	and  [hl]                                        ; $514c: $a6
	nop                                              ; $514d: $00
	nop                                              ; $514e: $00
	nop                                              ; $514f: $00
	nop                                              ; $5150: $00
	db   $10                                         ; $5151: $10
	ld   a, h                                        ; $5152: $7c
	ld   b, h                                        ; $5153: $44
	ld   a, h                                        ; $5154: $7c
	ld   b, h                                        ; $5155: $44
	ld   a, h                                        ; $5156: $7c
	ld   b, b                                        ; $5157: $40
	ld   d, d                                        ; $5158: $52
	ld   d, h                                        ; $5159: $54
	ld   c, b                                        ; $515a: $48
	ld   e, b                                        ; $515b: $58
	ld   h, [hl]                                     ; $515c: $66
	nop                                              ; $515d: $00
	nop                                              ; $515e: $00
	nop                                              ; $515f: $00
	nop                                              ; $5160: $00
	db   $10                                         ; $5161: $10
	db   $10                                         ; $5162: $10
	cp   $04                                         ; $5163: $fe $04
	inc  b                                           ; $5165: $04
	ld   b, h                                        ; $5166: $44
	ld   b, h                                        ; $5167: $44
	inc  h                                           ; $5168: $24
	inc  h                                           ; $5169: $24
	jr   z, @+$0a                                    ; $516a: $28 $08

	cp   $00                                         ; $516c: $fe $00
	nop                                              ; $516e: $00
	nop                                              ; $516f: $00
	nop                                              ; $5170: $00
	ld   a, h                                        ; $5171: $7c
	db   $10                                         ; $5172: $10

jr_007_5173:
	cp   $da                                         ; $5173: $fe $da
	or   [hl]                                        ; $5175: $b6
	jp   c, Jump_007_7c34                            ; $5176: $da $34 $7c

	ld   d, h                                        ; $5179: $54
	ld   a, h                                        ; $517a: $7c
	ld   d, h                                        ; $517b: $54
	ld   a, h                                        ; $517c: $7c
	nop                                              ; $517d: $00
	nop                                              ; $517e: $00
	nop                                              ; $517f: $00
	nop                                              ; $5180: $00
	ld   [$487e], sp                                 ; $5181: $08 $7e $48
	cp   $ea                                         ; $5184: $fe $ea
	ld   d, h                                        ; $5186: $54
	ldh  [c], a                                      ; $5187: $e2
	call c, $9c5c                                    ; $5188: $dc $5c $9c
	xor  d                                           ; $518b: $aa
	ld   a, [hl+]                                    ; $518c: $2a
	nop                                              ; $518d: $00
	nop                                              ; $518e: $00
	nop                                              ; $518f: $00
	nop                                              ; $5190: $00
	inc  h                                           ; $5191: $24
	ld   e, [hl]                                     ; $5192: $5e

jr_007_5193:
	add  h                                           ; $5193: $84
	cp   $56                                         ; $5194: $fe $56
	cp   [hl]                                        ; $5196: $be
	or   $5e                                         ; $5197: $f6 $5e
	db   $e4                                         ; $5199: $e4
	xor  $ee                                         ; $519a: $ee $ee
	ld   d, h                                        ; $519c: $54
	nop                                              ; $519d: $00
	nop                                              ; $519e: $00
	nop                                              ; $519f: $00
	nop                                              ; $51a0: $00

jr_007_51a1:
	jr   z, jr_007_51a1                              ; $51a1: $28 $fe

jr_007_51a3:
	jr   z, jr_007_5193                              ; $51a3: $28 $ee

	xor  $92                                         ; $51a5: $ee $92
	cp   $ba                                         ; $51a7: $fe $ba
	cp   d                                           ; $51a9: $ba
	sub  d                                           ; $51aa: $92
	cp   d                                           ; $51ab: $ba
	sub  $00                                         ; $51ac: $d6 $00
	nop                                              ; $51ae: $00
	nop                                              ; $51af: $00
	nop                                              ; $51b0: $00
	nop                                              ; $51b1: $00
	ld   b, h                                        ; $51b2: $44
	ld   b, h                                        ; $51b3: $44
	cp   $44                                         ; $51b4: $fe $44
	xor  $ee                                         ; $51b6: $ee $ee
	xor  $ee                                         ; $51b8: $ee $ee
	ld   d, h                                        ; $51ba: $54
	ld   b, h                                        ; $51bb: $44
	ld   b, h                                        ; $51bc: $44
	nop                                              ; $51bd: $00
	nop                                              ; $51be: $00
	nop                                              ; $51bf: $00
	nop                                              ; $51c0: $00
	ld   b, b                                        ; $51c1: $40
	ld   c, h                                        ; $51c2: $4c
	ldh  a, [c]                                      ; $51c3: $f2
	ld   b, b                                        ; $51c4: $40
	cp   $e0                                         ; $51c5: $fe $e0
	cp   $fa                                         ; $51c7: $fe $fa
	ld   e, d                                        ; $51c9: $5a
	cp   $5a                                         ; $51ca: $fe $5a
	ld   e, d                                        ; $51cc: $5a
	nop                                              ; $51cd: $00
	nop                                              ; $51ce: $00
	nop                                              ; $51cf: $00
	nop                                              ; $51d0: $00
	nop                                              ; $51d1: $00
	ld   hl, sp-$78                                  ; $51d2: $f8 $88
	cp   $aa                                         ; $51d4: $fe $aa
	xor  d                                           ; $51d6: $aa
	cp   d                                           ; $51d7: $ba
	jp   c, $dada                                    ; $51d8: $da $da $da

	sub  d                                           ; $51db: $92
	or   [hl]                                        ; $51dc: $b6
	nop                                              ; $51dd: $00
	nop                                              ; $51de: $00
	nop                                              ; $51df: $00
	nop                                              ; $51e0: $00
	ld   [$a2fe], sp                                 ; $51e1: $08 $fe $a2
	cp   [hl]                                        ; $51e4: $be
	xor  $ae                                         ; $51e5: $ee $ae
	xor  [hl]                                        ; $51e7: $ae
	cp   $ae                                         ; $51e8: $fe $ae
	xor  h                                           ; $51ea: $ac
	or   h                                           ; $51eb: $b4
	or   [hl]                                        ; $51ec: $b6

jr_007_51ed:
	nop                                              ; $51ed: $00
	nop                                              ; $51ee: $00
	nop                                              ; $51ef: $00
	nop                                              ; $51f0: $00

jr_007_51f1:
	jr   z, jr_007_51f1                              ; $51f1: $28 $fe

jr_007_51f3:
	jr   z, @+$22                                    ; $51f3: $28 $20

	cp   $20                                         ; $51f5: $fe $20
	ld   b, b                                        ; $51f7: $40
	ld   a, h                                        ; $51f8: $7c
	and  h                                           ; $51f9: $a4
	inc  h                                           ; $51fa: $24
	inc  h                                           ; $51fb: $24
	inc  a                                           ; $51fc: $3c
	nop                                              ; $51fd: $00
	nop                                              ; $51fe: $00
	nop                                              ; $51ff: $00
	nop                                              ; $5200: $00
	ld   b, [hl]                                     ; $5201: $46
	db   $ec                                         ; $5202: $ec
	inc  b                                           ; $5203: $04
	db   $e4                                         ; $5204: $e4
	ld   c, $e4                                      ; $5205: $0e $e4
	inc  b                                           ; $5207: $04
	xor  $aa                                         ; $5208: $ee $aa
	xor  d                                           ; $520a: $aa
	xor  d                                           ; $520b: $aa
	xor  $00                                         ; $520c: $ee $00
	nop                                              ; $520e: $00
	nop                                              ; $520f: $00
	nop                                              ; $5210: $00
	ld   h, b                                        ; $5211: $60
	ret  nz                                          ; $5212: $c0

	ld   c, [hl]                                     ; $5213: $4e
	ld   [$4a4a], a                                  ; $5214: $ea $4a $4a
	ld   [$caea], a                                  ; $5217: $ea $ea $ca
	ld   c, d                                        ; $521a: $4a
	ld   c, [hl]                                     ; $521b: $4e
	ld   b, b                                        ; $521c: $40
	nop                                              ; $521d: $00
	nop                                              ; $521e: $00
	nop                                              ; $521f: $00
	nop                                              ; $5220: $00
	db   $10                                         ; $5221: $10
	ld   d, h                                        ; $5222: $54

jr_007_5223:
	ld   e, b                                        ; $5223: $58
	db   $10                                         ; $5224: $10
	jr   z, jr_007_51ed                              ; $5225: $28 $c6

	db   $10                                         ; $5227: $10
	ld   d, h                                        ; $5228: $54
	ld   e, b                                        ; $5229: $58
	db   $10                                         ; $522a: $10
	jr   z, jr_007_51f3                              ; $522b: $28 $c6

	nop                                              ; $522d: $00
	nop                                              ; $522e: $00
	nop                                              ; $522f: $00
	nop                                              ; $5230: $00
	ld   c, b                                        ; $5231: $48
	ld   a, [hl]                                     ; $5232: $7e
	ld   d, h                                        ; $5233: $54
	cp   $e2                                         ; $5234: $fe $e2
	cp   $e2                                         ; $5236: $fe $e2
	ld   a, [hl]                                     ; $5238: $7e
	ld   l, d                                        ; $5239: $6a
	ld   l, d                                        ; $523a: $6a
	ld   d, b                                        ; $523b: $50
	ld   c, [hl]                                     ; $523c: $4e
	nop                                              ; $523d: $00
	nop                                              ; $523e: $00
	nop                                              ; $523f: $00
	nop                                              ; $5240: $00
	ld   [$aaf4], sp                                 ; $5241: $08 $f4 $aa
	cp   h                                           ; $5244: $bc
	call nz, $bea8                                   ; $5245: $c4 $a8 $be
	and  b                                           ; $5248: $a0
	cp   $90                                         ; $5249: $fe $90
	and  h                                           ; $524b: $a4
	cp   [hl]                                        ; $524c: $be
	nop                                              ; $524d: $00
	nop                                              ; $524e: $00
	nop                                              ; $524f: $00
	nop                                              ; $5250: $00
	nop                                              ; $5251: $00
	cp   $92                                         ; $5252: $fe $92
	cp   $92                                         ; $5254: $fe $92
	cp   $28                                         ; $5256: $fe $28
	ld   a, h                                        ; $5258: $7c

jr_007_5259:
	jr   z, jr_007_5259                              ; $5259: $28 $fe

	jr   z, jr_007_5223                              ; $525b: $28 $c6

	nop                                              ; $525d: $00
	nop                                              ; $525e: $00
	nop                                              ; $525f: $00
	nop                                              ; $5260: $00
	nop                                              ; $5261: $00
	ldh  a, [c]                                      ; $5262: $f2
	sub  d                                           ; $5263: $92
	cp   $82                                         ; $5264: $fe $82
	ldh  a, [c]                                      ; $5266: $f2
	adc  d                                           ; $5267: $8a
	or   $a2                                         ; $5268: $f6 $a2
	ldh  a, [c]                                      ; $526a: $f2
	ldh  a, [c]                                      ; $526b: $f2
	and  [hl]                                        ; $526c: $a6
	nop                                              ; $526d: $00
	nop                                              ; $526e: $00
	nop                                              ; $526f: $00
	nop                                              ; $5270: $00
	jr   nz, jr_007_529b                             ; $5271: $20 $28

	ld   c, b                                        ; $5273: $48
	cp   $42                                         ; $5274: $fe $42
	ld   h, d                                        ; $5276: $62
	ld   h, d                                        ; $5277: $62
	ld   d, d                                        ; $5278: $52
	ld   d, h                                        ; $5279: $54
	ld   d, h                                        ; $527a: $54
	ld   b, h                                        ; $527b: $44
	ld   a, [hl]                                     ; $527c: $7e
	nop                                              ; $527d: $00
	nop                                              ; $527e: $00
	nop                                              ; $527f: $00
	nop                                              ; $5280: $00
	jr   c, @+$4a                                    ; $5281: $38 $48

	sub  b                                           ; $5283: $90
	ld   a, h                                        ; $5284: $7c
	inc  b                                           ; $5285: $04
	ld   a, h                                        ; $5286: $7c
	inc  b                                           ; $5287: $04
	ld   a, h                                        ; $5288: $7c
	inc  d                                           ; $5289: $14
	ld   c, d                                        ; $528a: $4a
	and  d                                           ; $528b: $a2
	sbc  [hl]                                        ; $528c: $9e
	nop                                              ; $528d: $00
	nop                                              ; $528e: $00
	nop                                              ; $528f: $00
	nop                                              ; $5290: $00
	jr   nz, jr_007_52d1                             ; $5291: $20 $3e

	ld   d, h                                        ; $5293: $54
	call nc, Call_007_7e54                           ; $5294: $d4 $54 $7e
	ld   d, [hl]                                     ; $5297: $56
	ld   d, [hl]                                     ; $5298: $56
	ld   d, [hl]                                     ; $5299: $56
	ld   d, [hl]                                     ; $529a: $56

jr_007_529b:
	ld   d, [hl]                                     ; $529b: $56
	ld   a, [hl]                                     ; $529c: $7e
	nop                                              ; $529d: $00
	nop                                              ; $529e: $00

jr_007_529f:
	nop                                              ; $529f: $00
	nop                                              ; $52a0: $00
	nop                                              ; $52a1: $00
	ld   a, h                                        ; $52a2: $7c
	db   $10                                         ; $52a3: $10
	db   $10                                         ; $52a4: $10
	db   $10                                         ; $52a5: $10
	ld   a, h                                        ; $52a6: $7c
	inc  h                                           ; $52a7: $24
	inc  h                                           ; $52a8: $24
	inc  h                                           ; $52a9: $24
	inc  h                                           ; $52aa: $24
	inc  h                                           ; $52ab: $24
	cp   $00                                         ; $52ac: $fe $00
	nop                                              ; $52ae: $00
	nop                                              ; $52af: $00
	nop                                              ; $52b0: $00
	jr   nc, jr_007_529f                             ; $52b1: $30 $ec

	ld   a, [hl+]                                    ; $52b3: $2a

jr_007_52b4:
	jr   z, jr_007_52b4                              ; $52b4: $28 $fe

	jr   z, jr_007_52e2                              ; $52b6: $28 $2a

	ld   [hl], $e4                                   ; $52b8: $36 $e4
	inc  l                                           ; $52ba: $2c
	ld   a, [hl+]                                    ; $52bb: $2a
	ld   [hl], d                                     ; $52bc: $72

jr_007_52bd:
	nop                                              ; $52bd: $00
	nop                                              ; $52be: $00
	nop                                              ; $52bf: $00
	nop                                              ; $52c0: $00
	inc  h                                           ; $52c1: $24
	ld   b, h                                        ; $52c2: $44
	adc  d                                           ; $52c3: $8a
	ldh  [$4e], a                                    ; $52c4: $e0 $4e
	and  b                                           ; $52c6: $a0
	xor  $4a                                         ; $52c7: $ee $4a
	ld   [$eaea], a                                  ; $52c9: $ea $ea $ea
	ld   c, [hl]                                     ; $52cc: $4e
	nop                                              ; $52cd: $00
	nop                                              ; $52ce: $00
	nop                                              ; $52cf: $00
	nop                                              ; $52d0: $00

jr_007_52d1:
	nop                                              ; $52d1: $00
	ld   l, h                                        ; $52d2: $6c
	jr   nc, jr_007_52bd                             ; $52d3: $30 $e8

jr_007_52d5:
	jr   nz, jr_007_52d5                             ; $52d5: $20 $fe

	ld   d, b                                        ; $52d7: $50
	db   $fc                                         ; $52d8: $fc
	ld   d, h                                        ; $52d9: $54
	ld   d, h                                        ; $52da: $54
	ld   e, h                                        ; $52db: $5c
	stop                                             ; $52dc: $10 $00
	nop                                              ; $52de: $00
	nop                                              ; $52df: $00
	nop                                              ; $52e0: $00
	nop                                              ; $52e1: $00

jr_007_52e2:
	ld   c, b                                        ; $52e2: $48
	ld   c, b                                        ; $52e3: $48
	cp   $52                                         ; $52e4: $fe $52
	ld   h, d                                        ; $52e6: $62
	ld   e, d                                        ; $52e7: $5a
	ld   h, [hl]                                     ; $52e8: $66
	jp   z, $0202                                    ; $52e9: $ca $02 $02

	inc  c                                           ; $52ec: $0c
	nop                                              ; $52ed: $00
	nop                                              ; $52ee: $00
	nop                                              ; $52ef: $00
	nop                                              ; $52f0: $00
	ld   e, h                                        ; $52f1: $5c
	ld   h, h                                        ; $52f2: $64
	ld   c, b                                        ; $52f3: $48
	cp   $6a                                         ; $52f4: $fe $6a
	halt                                             ; $52f6: $76
	ld   h, d                                        ; $52f7: $62
	ld   [$487e], a                                  ; $52f8: $ea $7e $48
	ld   d, h                                        ; $52fb: $54
	ldh  [c], a                                      ; $52fc: $e2
	nop                                              ; $52fd: $00
	nop                                              ; $52fe: $00
	nop                                              ; $52ff: $00
	nop                                              ; $5300: $00
	add  [hl]                                        ; $5301: $86
	sbc  h                                           ; $5302: $9c
	db   $f4                                         ; $5303: $f4
	cp   [hl]                                        ; $5304: $be
	or   h                                           ; $5305: $b4
	cp   d                                           ; $5306: $ba
	and  b                                           ; $5307: $a0
	cp   [hl]                                        ; $5308: $be
	or   d                                           ; $5309: $b2
	sbc  $52                                         ; $530a: $de $52
	cp   [hl]                                        ; $530c: $be
	nop                                              ; $530d: $00
	nop                                              ; $530e: $00
	nop                                              ; $530f: $00
	nop                                              ; $5310: $00
	ld   c, b                                        ; $5311: $48
	xor  $50                                         ; $5312: $ee $50
	xor  $a2                                         ; $5314: $ee $a2
	db   $e4                                         ; $5316: $e4
	and  h                                           ; $5317: $a4
	add  sp, $48                                     ; $5318: $e8 $48
	ldh  a, [rHDMA2]                                 ; $531a: $f0 $52
	ld   e, [hl]                                     ; $531c: $5e
	nop                                              ; $531d: $00
	nop                                              ; $531e: $00
	nop                                              ; $531f: $00
	nop                                              ; $5320: $00
	db   $10                                         ; $5321: $10
	db   $10                                         ; $5322: $10
	jr   z, jr_007_5369                              ; $5323: $28 $44

	add  d                                           ; $5325: $82
	jr   z, jr_007_5350                              ; $5326: $28 $28

	jr   z, jr_007_5372                              ; $5328: $28 $48

	ld   c, b                                        ; $532a: $48
	adc  b                                           ; $532b: $88
	ld   [rRAMG], sp                                 ; $532c: $08 $00 $00
	nop                                              ; $532f: $00
	nop                                              ; $5330: $00
	nop                                              ; $5331: $00
	db   $fc                                         ; $5332: $fc
	inc  b                                           ; $5333: $04
	inc  b                                           ; $5334: $04
	inc  b                                           ; $5335: $04
	db   $fc                                         ; $5336: $fc
	add  b                                           ; $5337: $80
	add  b                                           ; $5338: $80
	add  b                                           ; $5339: $80
	add  b                                           ; $533a: $80
	add  d                                           ; $533b: $82
	ld   a, [hl]                                     ; $533c: $7e
	nop                                              ; $533d: $00
	nop                                              ; $533e: $00
	nop                                              ; $533f: $00
	nop                                              ; $5340: $00
	jr   nz, jr_007_537f                             ; $5341: $20 $3c

	inc  h                                           ; $5343: $24
	ld   b, h                                        ; $5344: $44
	ld   c, b                                        ; $5345: $48
	adc  b                                           ; $5346: $88
	db   $10                                         ; $5347: $10
	db   $10                                         ; $5348: $10
	jr   z, @+$2a                                    ; $5349: $28 $28

	ld   b, h                                        ; $534b: $44
	add  d                                           ; $534c: $82
	nop                                              ; $534d: $00
	nop                                              ; $534e: $00
	nop                                              ; $534f: $00

jr_007_5350:
	nop                                              ; $5350: $00
	jr   nz, jr_007_538b                             ; $5351: $20 $38

	ld   c, b                                        ; $5353: $48
	sub  b                                           ; $5354: $90
	ld   a, h                                        ; $5355: $7c
	ld   d, h                                        ; $5356: $54
	ld   a, h                                        ; $5357: $7c
	ld   d, h                                        ; $5358: $54
	ld   a, h                                        ; $5359: $7c
	nop                                              ; $535a: $00
	xor  d                                           ; $535b: $aa
	xor  d                                           ; $535c: $aa
	nop                                              ; $535d: $00
	nop                                              ; $535e: $00
	nop                                              ; $535f: $00
	nop                                              ; $5360: $00
	ld   a, h                                        ; $5361: $7c
	ld   b, h                                        ; $5362: $44
	ld   e, h                                        ; $5363: $5c
	ld   d, h                                        ; $5364: $54
	cp   $82                                         ; $5365: $fe $82
	ld   a, h                                        ; $5367: $7c
	ld   b, h                                        ; $5368: $44

jr_007_5369:
	ld   a, h                                        ; $5369: $7c
	ld   a, h                                        ; $536a: $7c
	ld   b, h                                        ; $536b: $44
	ld   c, h                                        ; $536c: $4c
	nop                                              ; $536d: $00
	nop                                              ; $536e: $00
	nop                                              ; $536f: $00
	nop                                              ; $5370: $00
	ld   b, h                                        ; $5371: $44

jr_007_5372:
	xor  $44                                         ; $5372: $ee $44
	cp   $44                                         ; $5374: $fe $44
	xor  d                                           ; $5376: $aa
	nop                                              ; $5377: $00
	ld   a, h                                        ; $5378: $7c
	ld   b, h                                        ; $5379: $44
	ld   a, h                                        ; $537a: $7c
	ld   b, h                                        ; $537b: $44
	ld   a, h                                        ; $537c: $7c
	nop                                              ; $537d: $00
	nop                                              ; $537e: $00

jr_007_537f:
	nop                                              ; $537f: $00
	nop                                              ; $5380: $00
	db   $10                                         ; $5381: $10
	ld   a, h                                        ; $5382: $7c
	jr   z, jr_007_53ad                              ; $5383: $28 $28

	cp   $80                                         ; $5385: $fe $80
	xor  b                                           ; $5387: $a8
	cp   h                                           ; $5388: $bc
	ret  z                                           ; $5389: $c8

	sbc  h                                           ; $538a: $9c

jr_007_538b:
	adc  b                                           ; $538b: $88
	cp   [hl]                                        ; $538c: $be
	nop                                              ; $538d: $00
	nop                                              ; $538e: $00
	nop                                              ; $538f: $00
	nop                                              ; $5390: $00
	add  h                                           ; $5391: $84
	sbc  [hl]                                        ; $5392: $9e
	db   $ec                                         ; $5393: $ec
	or   d                                           ; $5394: $b2
	xor  h                                           ; $5395: $ac
	cp   [hl]                                        ; $5396: $be
	cp   [hl]                                        ; $5397: $be
	and  h                                           ; $5398: $a4
	cp   [hl]                                        ; $5399: $be
	jp   z, $aa5c                                    ; $539a: $ca $5c $aa

	nop                                              ; $539d: $00
	nop                                              ; $539e: $00
	nop                                              ; $539f: $00
	nop                                              ; $53a0: $00
	ld   b, h                                        ; $53a1: $44
	ld   b, h                                        ; $53a2: $44
	cp   $f0                                         ; $53a3: $fe $f0
	ld   d, h                                        ; $53a5: $54
	db   $f4                                         ; $53a6: $f4
	ld   e, [hl]                                     ; $53a7: $5e
	ld   d, h                                        ; $53a8: $54
	db   $f4                                         ; $53a9: $f4
	db   $e4                                         ; $53aa: $e4
	db   $e4                                         ; $53ab: $e4
	ld   c, [hl]                                     ; $53ac: $4e

jr_007_53ad:
	nop                                              ; $53ad: $00
	nop                                              ; $53ae: $00
	nop                                              ; $53af: $00
	nop                                              ; $53b0: $00
	ld   d, h                                        ; $53b1: $54
	jr   z, jr_007_5430                              ; $53b2: $28 $7c

	ld   d, h                                        ; $53b4: $54
	ld   a, h                                        ; $53b5: $7c
	ld   d, h                                        ; $53b6: $54
	ld   a, h                                        ; $53b7: $7c
	db   $10                                         ; $53b8: $10
	cp   $38                                         ; $53b9: $fe $38
	sub  $10                                         ; $53bb: $d6 $10
	nop                                              ; $53bd: $00
	nop                                              ; $53be: $00
	nop                                              ; $53bf: $00
	nop                                              ; $53c0: $00
	ld   b, h                                        ; $53c1: $44
	jr   z, jr_007_5440                              ; $53c2: $28 $7c

	db   $10                                         ; $53c4: $10
	ld   a, h                                        ; $53c5: $7c
	db   $10                                         ; $53c6: $10
	cp   $20                                         ; $53c7: $fe $20
	ld   a, h                                        ; $53c9: $7c
	sub  b                                           ; $53ca: $90
	db   $10                                         ; $53cb: $10
	cp   $00                                         ; $53cc: $fe $00
	nop                                              ; $53ce: $00
	nop                                              ; $53cf: $00
	nop                                              ; $53d0: $00
	jr   z, jr_007_540f                              ; $53d1: $28 $3c

	ld   c, b                                        ; $53d3: $48
	ret  z                                           ; $53d4: $c8

	ld   a, [hl]                                     ; $53d5: $7e
	ld   b, h                                        ; $53d6: $44
	ld   a, [hl]                                     ; $53d7: $7e
	ld   b, h                                        ; $53d8: $44
	ld   d, h                                        ; $53d9: $54
	ld   c, h                                        ; $53da: $4c
	ld   b, h                                        ; $53db: $44
	ld   c, h                                        ; $53dc: $4c
	nop                                              ; $53dd: $00
	nop                                              ; $53de: $00
	nop                                              ; $53df: $00
	nop                                              ; $53e0: $00
	ld   l, h                                        ; $53e1: $6c
	ret  c                                           ; $53e2: $d8

	ld   a, [hl]                                     ; $53e3: $7e
	add  sp, $7e                                     ; $53e4: $e8 $7e
	ld   l, d                                        ; $53e6: $6a
	cp   $ea                                         ; $53e7: $fe $ea
	cp   $5c                                         ; $53e9: $fe $5c
	ld   c, b                                        ; $53eb: $48
	ld   a, [hl]                                     ; $53ec: $7e
	nop                                              ; $53ed: $00
	nop                                              ; $53ee: $00
	nop                                              ; $53ef: $00
	nop                                              ; $53f0: $00
	jr   nz, jr_007_543b                             ; $53f1: $20 $48

	adc  [hl]                                        ; $53f3: $8e
	ld   hl, sp+$48                                  ; $53f4: $f8 $48
	cp   d                                           ; $53f6: $ba
	ld   a, [$e85e]                                  ; $53f7: $fa $5e $e8
	add  sp, -$16                                    ; $53fa: $e8 $ea
	ld   c, [hl]                                     ; $53fc: $4e
	nop                                              ; $53fd: $00
	nop                                              ; $53fe: $00
	nop                                              ; $53ff: $00
	nop                                              ; $5400: $00
	nop                                              ; $5401: $00
	ldh  a, [c]                                      ; $5402: $f2
	sbc  d                                           ; $5403: $9a
	ld   a, [$fa9a]                                  ; $5404: $fa $9a $fa
	sbc  d                                           ; $5407: $9a
	sbc  d                                           ; $5408: $9a
	ldh  a, [c]                                      ; $5409: $f2
	ld   [bc], a                                     ; $540a: $02
	ld   h, d                                        ; $540b: $62
	sub  [hl]                                        ; $540c: $96
	nop                                              ; $540d: $00
	nop                                              ; $540e: $00

jr_007_540f:
	nop                                              ; $540f: $00
	nop                                              ; $5410: $00
	nop                                              ; $5411: $00
	ld   e, [hl]                                     ; $5412: $5e
	ld   d, d                                        ; $5413: $52
	cp   $32                                         ; $5414: $fe $32
	ld   a, $52                                      ; $5416: $3e $52
	ldh  a, [c]                                      ; $5418: $f2
	ld   e, [hl]                                     ; $5419: $5e
	ld   c, h                                        ; $541a: $4c
	ld   c, h                                        ; $541b: $4c
	ld   d, [hl]                                     ; $541c: $56
	nop                                              ; $541d: $00
	nop                                              ; $541e: $00
	nop                                              ; $541f: $00
	nop                                              ; $5420: $00
	adc  b                                           ; $5421: $88
	adc  b                                           ; $5422: $88
	cp   $a8                                         ; $5423: $fe $a8
	cp   [hl]                                        ; $5425: $be
	cp   d                                           ; $5426: $ba
	cp   d                                           ; $5427: $ba
	cp   d                                           ; $5428: $ba
	cp   [hl]                                        ; $5429: $be
	ret  z                                           ; $542a: $c8

	ld   c, b                                        ; $542b: $48
	xor  b                                           ; $542c: $a8
	nop                                              ; $542d: $00
	nop                                              ; $542e: $00
	nop                                              ; $542f: $00

jr_007_5430:
	nop                                              ; $5430: $00
	nop                                              ; $5431: $00
	cp   $80                                         ; $5432: $fe $80
	cp   h                                           ; $5434: $bc
	and  b                                           ; $5435: $a0
	cp   [hl]                                        ; $5436: $be
	xor  b                                           ; $5437: $a8
	xor  b                                           ; $5438: $a8
	ret  z                                           ; $5439: $c8

	adc  b                                           ; $543a: $88

jr_007_543b:
	add  b                                           ; $543b: $80
	cp   $00                                         ; $543c: $fe $00
	nop                                              ; $543e: $00
	nop                                              ; $543f: $00

jr_007_5440:
	nop                                              ; $5440: $00
	ld   [$5aaa], sp                                 ; $5441: $08 $aa $5a

Call_007_5444:
	ld   [$62be], sp                                 ; $5444: $08 $be $62
	ld   a, $62                                      ; $5447: $3e $62
	ld   a, [hl]                                     ; $5449: $7e
	and  d                                           ; $544a: $a2
	and  d                                           ; $544b: $a2
	and  [hl]                                        ; $544c: $a6
	nop                                              ; $544d: $00
	nop                                              ; $544e: $00
	nop                                              ; $544f: $00
	nop                                              ; $5450: $00
	ld   [$f008], sp                                 ; $5451: $08 $08 $f0

Call_007_5454:
	cp   [hl]                                        ; $5454: $be
	xor  b                                           ; $5455: $a8
	xor  b                                           ; $5456: $a8
	xor  $a8                                         ; $5457: $ee $a8
	xor  [hl]                                        ; $5459: $ae
	xor  b                                           ; $545a: $a8
	add  sp, $08                                     ; $545b: $e8 $08
	nop                                              ; $545d: $00
	nop                                              ; $545e: $00
	nop                                              ; $545f: $00
	nop                                              ; $5460: $00
	db   $10                                         ; $5461: $10
	db   $10                                         ; $5462: $10
	cp   $92                                         ; $5463: $fe $92
	sub  d                                           ; $5465: $92
	cp   $92                                         ; $5466: $fe $92
	sub  d                                           ; $5468: $92
	cp   $10                                         ; $5469: $fe $10
	db   $10                                         ; $546b: $10
	db   $10                                         ; $546c: $10
	stop                                             ; $546d: $10 $00
	nop                                              ; $546f: $00
	nop                                              ; $5470: $00
	jr   nz, jr_007_54d1                             ; $5471: $20 $5e

	adc  d                                           ; $5473: $8a
	ld   [$b64a], a                                  ; $5474: $ea $4a $b6
	ldh  [$4e], a                                    ; $5477: $e0 $4e
	ld   [$eaea], a                                  ; $5479: $ea $ea $ea
	ld   c, [hl]                                     ; $547c: $4e
	nop                                              ; $547d: $00

Call_007_547e:
	nop                                              ; $547e: $00
	nop                                              ; $547f: $00
	nop                                              ; $5480: $00
	nop                                              ; $5481: $00
	cp   $aa                                         ; $5482: $fe $aa
	cp   d                                           ; $5484: $ba
	call nc, $beaa                                   ; $5485: $d4 $aa $be
	and  b                                           ; $5488: $a0
	cp   $88                                         ; $5489: $fe $88
	xor  d                                           ; $548b: $aa
	xor  d                                           ; $548c: $aa
	nop                                              ; $548d: $00
	nop                                              ; $548e: $00
	nop                                              ; $548f: $00
	nop                                              ; $5490: $00
	jr   nz, @+$3c                                   ; $5491: $20 $3a

	ld   l, d                                        ; $5493: $6a
	ld   a, [$7a6a]                                  ; $5494: $fa $6a $7a
	ld   l, d                                        ; $5497: $6a
	ld   l, d                                        ; $5498: $6a
	ld   a, d                                        ; $5499: $7a
	ld   d, d                                        ; $549a: $52
	ld   l, d                                        ; $549b: $6a
	ld   l, [hl]                                     ; $549c: $6e
	nop                                              ; $549d: $00
	nop                                              ; $549e: $00
	nop                                              ; $549f: $00
	nop                                              ; $54a0: $00
	ld   [de], a                                     ; $54a1: $12
	ld   [$beac], a                                  ; $54a2: $ea $ac $be
	ldh  a, [c]                                      ; $54a5: $f2
	or   d                                           ; $54a6: $b2
	cp   [hl]                                        ; $54a7: $be
	db   $ec                                         ; $54a8: $ec
	xor  h                                           ; $54a9: $ac
	xor  h                                           ; $54aa: $ac
	or   h                                           ; $54ab: $b4
	or   [hl]                                        ; $54ac: $b6
	nop                                              ; $54ad: $00
	nop                                              ; $54ae: $00
	nop                                              ; $54af: $00
	nop                                              ; $54b0: $00
	ld   c, h                                        ; $54b1: $4c
	ld   c, h                                        ; $54b2: $4c
	ld   e, [hl]                                     ; $54b3: $5e
	cp   $4c                                         ; $54b4: $fe $4c
	ld   e, [hl]                                     ; $54b6: $5e
	ld   a, [hl]                                     ; $54b7: $7e
	sbc  $4c                                         ; $54b8: $de $4c
	ld   c, h                                        ; $54ba: $4c
	ld   d, h                                        ; $54bb: $54
	and  $00                                         ; $54bc: $e6 $00
	nop                                              ; $54be: $00
	nop                                              ; $54bf: $00
	nop                                              ; $54c0: $00
	nop                                              ; $54c1: $00
	add  sp, -$5c                                    ; $54c2: $e8 $a4
	xor  b                                           ; $54c4: $a8
	add  sp, -$54                                    ; $54c5: $e8 $ac
	db   $fc                                         ; $54c7: $fc
	cp   d                                           ; $54c8: $ba
	cp   d                                           ; $54c9: $ba
	add  sp, -$56                                    ; $54ca: $e8 $aa
	ld   l, $00                                      ; $54cc: $2e $00
	nop                                              ; $54ce: $00
	nop                                              ; $54cf: $00
	nop                                              ; $54d0: $00

jr_007_54d1:
	ld   d, h                                        ; $54d1: $54
	jr   z, jr_007_5550                              ; $54d2: $28 $7c

	ld   d, h                                        ; $54d4: $54
	ld   a, h                                        ; $54d5: $7c
	ld   d, h                                        ; $54d6: $54
	ld   a, h                                        ; $54d7: $7c
	db   $10                                         ; $54d8: $10
	cp   $10                                         ; $54d9: $fe $10
	db   $10                                         ; $54db: $10
	stop                                             ; $54dc: $10 $00
	nop                                              ; $54de: $00
	nop                                              ; $54df: $00
	nop                                              ; $54e0: $00
	ld   h, b                                        ; $54e1: $60
	call c, $f454                                    ; $54e2: $dc $54 $f4
	ld   d, h                                        ; $54e5: $54
	ld   e, h                                        ; $54e6: $5c
	ldh  [$fe], a                                    ; $54e7: $e0 $fe
	ret  z                                           ; $54e9: $c8

	ld   e, h                                        ; $54ea: $5c
	ld   c, b                                        ; $54eb: $48
	ld   a, [hl]                                     ; $54ec: $7e
	nop                                              ; $54ed: $00
	nop                                              ; $54ee: $00
	nop                                              ; $54ef: $00
	nop                                              ; $54f0: $00
	ld   c, b                                        ; $54f1: $48
	ld   a, [hl]                                     ; $54f2: $7e
	or   h                                           ; $54f3: $b4
	db   $10                                         ; $54f4: $10
	ld   a, h                                        ; $54f5: $7c
	db   $10                                         ; $54f6: $10
	cp   $08                                         ; $54f7: $fe $08
	ld   a, h                                        ; $54f9: $7c
	jr   z, jr_007_5504                              ; $54fa: $28 $08

	jr   jr_007_54fe                                 ; $54fc: $18 $00

Call_007_54fe:
jr_007_54fe:
	nop                                              ; $54fe: $00
	nop                                              ; $54ff: $00
	nop                                              ; $5500: $00
	nop                                              ; $5501: $00
	cp   $22                                         ; $5502: $fe $22

jr_007_5504:
	ld   [hl+], a                                    ; $5504: $22
	and  d                                           ; $5505: $a2
	ld   h, d                                        ; $5506: $62
	ld   [hl-], a                                    ; $5507: $32
	ld   a, [hl+]                                    ; $5508: $2a
	ld   b, d                                        ; $5509: $42
	ld   b, d                                        ; $550a: $42
	add  d                                           ; $550b: $82
	inc  c                                           ; $550c: $0c
	nop                                              ; $550d: $00
	nop                                              ; $550e: $00
	nop                                              ; $550f: $00
	nop                                              ; $5510: $00
	inc  c                                           ; $5511: $0c
	cp   [hl]                                        ; $5512: $be
	ld   l, [hl]                                     ; $5513: $6e
	ld   a, $be                                      ; $5514: $3e $be
	ld   b, b                                        ; $5516: $40
	ld   a, $7c                                      ; $5517: $3e $7c
	ld   a, [hl]                                     ; $5519: $7e
	or   d                                           ; $551a: $b2
	or   h                                           ; $551b: $b4
	jp   c, $0000                                   ; $551c: $da $00 $00

	nop                                              ; $551f: $00
	nop                                              ; $5520: $00

jr_007_5521:
	ld   c, b                                        ; $5521: $48
	cp   $4a                                         ; $5522: $fe $4a
	ld   a, [$f4d6]                                  ; $5524: $fa $d6 $f4
	call nc, Call_007_44f4                           ; $5527: $d4 $f4 $44
	db   $fc                                         ; $552a: $fc
	ld   c, d                                        ; $552b: $4a
	ld   d, d                                        ; $552c: $52
	nop                                              ; $552d: $00
	nop                                              ; $552e: $00
	nop                                              ; $552f: $00
	nop                                              ; $5530: $00
	jr   z, jr_007_5521                              ; $5531: $28 $ee

	jr   z, @-$10                                    ; $5533: $28 $ee

	nop                                              ; $5535: $00
	ld   a, h                                        ; $5536: $7c
	ld   b, h                                        ; $5537: $44
	ld   a, h                                        ; $5538: $7c
	ld   b, h                                        ; $5539: $44
	ld   a, h                                        ; $553a: $7c
	ld   b, h                                        ; $553b: $44
	adc  h                                           ; $553c: $8c
	nop                                              ; $553d: $00
	nop                                              ; $553e: $00
	nop                                              ; $553f: $00
	nop                                              ; $5540: $00
	ld   b, b                                        ; $5541: $40
	ld   e, [hl]                                     ; $5542: $5e
	ld   b, h                                        ; $5543: $44
	xor  $44                                         ; $5544: $ee $44
	ld   c, [hl]                                     ; $5546: $4e
	ld   h, h                                        ; $5547: $64
	sbc  $44                                         ; $5548: $de $44
	ld   b, h                                        ; $554a: $44
	ld   b, h                                        ; $554b: $44
	call nz, $0000                                  ; $554c: $c4 $00 $00
	nop                                              ; $554f: $00

jr_007_5550:
	nop                                              ; $5550: $00
	ld   [$7e88], sp                                 ; $5551: $08 $88 $7e
	ld   a, [hl+]                                    ; $5554: $2a
	xor  b                                           ; $5555: $a8
	ld   a, [hl]                                     ; $5556: $7e
	ld   [hl-], a                                    ; $5557: $32
	ld   [hl], d                                     ; $5558: $72
	ld   l, h                                        ; $5559: $6c
	xor  h                                           ; $555a: $ac
	or   h                                           ; $555b: $b4
	and  d                                           ; $555c: $a2
	nop                                              ; $555d: $00
	nop                                              ; $555e: $00
	nop                                              ; $555f: $00
	nop                                              ; $5560: $00
	ld   b, b                                        ; $5561: $40
	ld   e, h                                        ; $5562: $5c
	add  sp, $48                                     ; $5563: $e8 $48
	ld   e, h                                        ; $5565: $5c
	ld   a, [$e8ea]                                  ; $5566: $fa $ea $e8
	ret  z                                           ; $5569: $c8

	ld   c, b                                        ; $556a: $48
	ld   c, b                                        ; $556b: $48
	ld   c, b                                        ; $556c: $48
	nop                                              ; $556d: $00
	nop                                              ; $556e: $00
	nop                                              ; $556f: $00
	nop                                              ; $5570: $00
	inc  b                                           ; $5571: $04
	ld   b, h                                        ; $5572: $44
	ld   e, [hl]                                     ; $5573: $5e
	add  sp, $48                                     ; $5574: $e8 $48
	ld   c, [hl]                                     ; $5576: $4e
	ld   c, d                                        ; $5577: $4a
	ld   l, d                                        ; $5578: $6a
	jp   z, $1212                                    ; $5579: $ca $12 $12

	ld   h, $00                                      ; $557c: $26 $00
	nop                                              ; $557e: $00
	nop                                              ; $557f: $00
	nop                                              ; $5580: $00
	db   $10                                         ; $5581: $10
	cp   $82                                         ; $5582: $fe $82
	ld   a, h                                        ; $5584: $7c
	db   $10                                         ; $5585: $10
	db   $10                                         ; $5586: $10
	db   $10                                         ; $5587: $10
	ld   a, h                                        ; $5588: $7c
	db   $10                                         ; $5589: $10
	inc  d                                           ; $558a: $14
	ld   [de], a                                     ; $558b: $12
	cp   $00                                         ; $558c: $fe $00
	nop                                              ; $558e: $00
	nop                                              ; $558f: $00
	nop                                              ; $5590: $00

jr_007_5591:
	jr   z, jr_007_5591                              ; $5591: $28 $fe

	jr   z, jr_007_55a5                              ; $5593: $28 $10

	ld   a, h                                        ; $5595: $7c
	db   $10                                         ; $5596: $10
	cp   $68                                         ; $5597: $fe $68
	cp   [hl]                                        ; $5599: $be
	ld   l, b                                        ; $559a: $68
	db   $10                                         ; $559b: $10
	ld   l, h                                        ; $559c: $6c
	nop                                              ; $559d: $00
	nop                                              ; $559e: $00
	nop                                              ; $559f: $00
	nop                                              ; $55a0: $00
	ld   a, [hl]                                     ; $55a1: $7e
	ld   b, d                                        ; $55a2: $42
	ld   a, [hl]                                     ; $55a3: $7e
	ld   c, h                                        ; $55a4: $4c

jr_007_55a5:
	ld   a, b                                        ; $55a5: $78
	ld   d, b                                        ; $55a6: $50
	ld   a, [hl]                                     ; $55a7: $7e
	ld   d, b                                        ; $55a8: $50
	ld   a, [hl]                                     ; $55a9: $7e
	sub  b                                           ; $55aa: $90
	sub  d                                           ; $55ab: $92
	ld   e, $00                                      ; $55ac: $1e $00
	nop                                              ; $55ae: $00
	nop                                              ; $55af: $00
	nop                                              ; $55b0: $00
	ld   b, h                                        ; $55b1: $44
	inc  h                                           ; $55b2: $24

jr_007_55b3:
	jr   z, jr_007_55b3                              ; $55b3: $28 $fe

	jr   z, jr_007_55df                              ; $55b5: $28 $28

	xor  d                                           ; $55b7: $aa
	ld   l, d                                        ; $55b8: $6a
	ld   l, d                                        ; $55b9: $6a
	ld   l, h                                        ; $55ba: $6c

jr_007_55bb:
	jr   z, jr_007_55bb                              ; $55bb: $28 $fe

	nop                                              ; $55bd: $00
	nop                                              ; $55be: $00
	nop                                              ; $55bf: $00
	nop                                              ; $55c0: $00
	jr   nz, jr_007_5601                             ; $55c1: $20 $3e

	ld   b, b                                        ; $55c3: $40
	ld   a, $2a                                      ; $55c4: $3e $2a
	ld   a, [hl+]                                    ; $55c6: $2a
	cp   $52                                         ; $55c7: $fe $52
	ld   d, h                                        ; $55c9: $54
	ld   a, [hl]                                     ; $55ca: $7e
	inc  b                                           ; $55cb: $04
	inc  c                                           ; $55cc: $0c
	nop                                              ; $55cd: $00
	nop                                              ; $55ce: $00
	nop                                              ; $55cf: $00
	nop                                              ; $55d0: $00
	db   $ec                                         ; $55d1: $ec
	ld   [$fee8], a                                  ; $55d2: $ea $e8 $fe
	add  sp, $48                                     ; $55d5: $e8 $48
	db   $f4                                         ; $55d7: $f4
	ld   d, h                                        ; $55d8: $54
	ldh  [c], a                                      ; $55d9: $e2
	nop                                              ; $55da: $00
	xor  d                                           ; $55db: $aa
	xor  d                                           ; $55dc: $aa
	nop                                              ; $55dd: $00
	nop                                              ; $55de: $00

jr_007_55df:
	nop                                              ; $55df: $00
	nop                                              ; $55e0: $00
	nop                                              ; $55e1: $00
	cp   $02                                         ; $55e2: $fe $02
	ld   b, d                                        ; $55e4: $42
	ld   b, d                                        ; $55e5: $42
	inc  h                                           ; $55e6: $24
	inc  h                                           ; $55e7: $24
	jr   jr_007_5602                                 ; $55e8: $18 $18

	jr   jr_007_5610                                 ; $55ea: $18 $24

	jp   nz, $0000                                  ; $55ec: $c2 $00 $00

	nop                                              ; $55ef: $00
	nop                                              ; $55f0: $00
	nop                                              ; $55f1: $00
	ld   a, h                                        ; $55f2: $7c
	inc  b                                           ; $55f3: $04
	jr   c, @+$12                                    ; $55f4: $38 $10

	cp   $12                                         ; $55f6: $fe $12
	inc  d                                           ; $55f8: $14
	db   $10                                         ; $55f9: $10
	db   $10                                         ; $55fa: $10
	db   $10                                         ; $55fb: $10
	jr   nc, jr_007_55fe                             ; $55fc: $30 $00

jr_007_55fe:
	nop                                              ; $55fe: $00
	nop                                              ; $55ff: $00
	nop                                              ; $5600: $00

jr_007_5601:
	nop                                              ; $5601: $00

jr_007_5602:
	ld   l, b                                        ; $5602: $68
	ret  z                                           ; $5603: $c8

	ld   c, b                                        ; $5604: $48
	add  sp, $48                                     ; $5605: $e8 $48
	ld   c, b                                        ; $5607: $48
	add  sp, -$58                                    ; $5608: $e8 $a8
	xor  d                                           ; $560a: $aa
	xor  d                                           ; $560b: $aa
	xor  $00                                         ; $560c: $ee $00
	nop                                              ; $560e: $00
	nop                                              ; $560f: $00

jr_007_5610:
	nop                                              ; $5610: $00
	jr   nz, jr_007_5661                             ; $5611: $20 $4e

	add  d                                           ; $5613: $82
	xor  $42                                         ; $5614: $ee $42
	cp   [hl]                                        ; $5616: $be
	db   $e4                                         ; $5617: $e4
	ld   e, [hl]                                     ; $5618: $5e
	db   $ec                                         ; $5619: $ec
	xor  $f6                                         ; $561a: $ee $f6
	ld   c, h                                        ; $561c: $4c
	nop                                              ; $561d: $00
	nop                                              ; $561e: $00
	nop                                              ; $561f: $00
	nop                                              ; $5620: $00
	ld   l, $a4                                      ; $5621: $2e $a4
	ld   a, [hl]                                     ; $5623: $7e
	ld   a, [$aa7e]                                  ; $5624: $fa $7e $aa
	ld   l, $fa                                      ; $5627: $2e $fa
	ld   l, $64                                      ; $5629: $2e $64
	ld   d, [hl]                                     ; $562b: $56
	sbc  d                                           ; $562c: $9a
	nop                                              ; $562d: $00
	nop                                              ; $562e: $00
	nop                                              ; $562f: $00
	nop                                              ; $5630: $00
	nop                                              ; $5631: $00
	sbc  [hl]                                        ; $5632: $9e
	ld   b, b                                        ; $5633: $40
	ld   e, $92                                      ; $5634: $1e $92
	ld   e, [hl]                                     ; $5636: $5e
	inc  d                                           ; $5637: $14
	ld   d, h                                        ; $5638: $54
	ld   e, [hl]                                     ; $5639: $5e
	and  h                                           ; $563a: $a4
	xor  d                                           ; $563b: $aa
	jp   nc, $0000                                  ; $563c: $d2 $00 $00

	nop                                              ; $563f: $00
	nop                                              ; $5640: $00
	ld   [$7e88], sp                                 ; $5641: $08 $88 $7e
	nop                                              ; $5644: $00
	cp   [hl]                                        ; $5645: $be
	ld   h, d                                        ; $5646: $62
	ld   a, $48                                      ; $5647: $3e $48
	ld   l, h                                        ; $5649: $6c
	xor  d                                           ; $564a: $aa
	jp   z, $0098                                    ; $564b: $ca $98 $00

	nop                                              ; $564e: $00
	nop                                              ; $564f: $00
	nop                                              ; $5650: $00
	db   $10                                         ; $5651: $10

Jump_007_5652:
	cp   $7c                                         ; $5652: $fe $7c

Call_007_5654:
	ld   a, h                                        ; $5654: $7c
	ld   a, h                                        ; $5655: $7c
	db   $10                                         ; $5656: $10
	ld   a, h                                        ; $5657: $7c
	db   $10                                         ; $5658: $10
	cp   $34                                         ; $5659: $fe $34
	ld   l, b                                        ; $565b: $68
	or   [hl]                                        ; $565c: $b6
	nop                                              ; $565d: $00
	nop                                              ; $565e: $00
	nop                                              ; $565f: $00
	nop                                              ; $5660: $00

jr_007_5661:
	ld   a, h                                        ; $5661: $7c
	ld   b, h                                        ; $5662: $44
	ld   a, h                                        ; $5663: $7c
	ld   b, h                                        ; $5664: $44
	cp   $44                                         ; $5665: $fe $44
	ld   a, h                                        ; $5667: $7c
	ld   a, h                                        ; $5668: $7c
	db   $10                                         ; $5669: $10
	ld   a, h                                        ; $566a: $7c
	db   $10                                         ; $566b: $10
	cp   $00                                         ; $566c: $fe $00
	nop                                              ; $566e: $00
	nop                                              ; $566f: $00
	nop                                              ; $5670: $00
	ld   [$aafe], sp                                 ; $5671: $08 $fe $aa
	xor  d                                           ; $5674: $aa
	or   $a0                                         ; $5675: $f6 $a0
	or   h                                           ; $5677: $b4
	cp   $aa                                         ; $5678: $fe $aa
	xor  d                                           ; $567a: $aa
	xor  d                                           ; $567b: $aa
	or   h                                           ; $567c: $b4
	nop                                              ; $567d: $00
	nop                                              ; $567e: $00
	nop                                              ; $567f: $00
	nop                                              ; $5680: $00
	ld   a, [bc]                                     ; $5681: $0a
	cp   $08                                         ; $5682: $fe $08
	ld   [$e4aa], a                                  ; $5684: $ea $aa $e4
	ld   a, [bc]                                     ; $5687: $0a
	ldh  [rAUD1HIGH], a                              ; $5688: $e0 $14
	ld   c, d                                        ; $568a: $4a
	and  d                                           ; $568b: $a2
	sbc  [hl]                                        ; $568c: $9e
	nop                                              ; $568d: $00
	nop                                              ; $568e: $00
	nop                                              ; $568f: $00
	nop                                              ; $5690: $00
	ld   [$fe30], sp                                 ; $5691: $08 $30 $fe
	sub  $ba                                         ; $5694: $d6 $ba
	cp   $92                                         ; $5696: $fe $92
	cp   d                                           ; $5698: $ba
	cp   $00                                         ; $5699: $fe $00
	jr   z, jr_007_56e1                              ; $569b: $28 $44

	nop                                              ; $569d: $00
	nop                                              ; $569e: $00
	nop                                              ; $569f: $00
	nop                                              ; $56a0: $00
	ld   l, b                                        ; $56a1: $68
	adc  $4a                                         ; $56a2: $ce $4a
	ld   c, [hl]                                     ; $56a4: $4e
	ldh  a, [c]                                      ; $56a5: $f2
	ld   b, h                                        ; $56a6: $44
	ld   e, [hl]                                     ; $56a7: $5e
	ld   [$d2ee], a                                  ; $56a8: $ea $ee $d2
	ld   b, h                                        ; $56ab: $44
	ld   e, b                                        ; $56ac: $58
	nop                                              ; $56ad: $00
	nop                                              ; $56ae: $00
	nop                                              ; $56af: $00
	nop                                              ; $56b0: $00

jr_007_56b1:
	jr   z, jr_007_56b1                              ; $56b1: $28 $fe

	jr   z, jr_007_56c5                              ; $56b3: $28 $10

	db   $10                                         ; $56b5: $10
	jr   z, @+$46                                    ; $56b6: $28 $44

	xor  d                                           ; $56b8: $aa
	jr   z, jr_007_56e3                              ; $56b9: $28 $28

	jr   z, jr_007_5705                              ; $56bb: $28 $48

	nop                                              ; $56bd: $00
	nop                                              ; $56be: $00
	nop                                              ; $56bf: $00
	nop                                              ; $56c0: $00
	ld   l, $42                                      ; $56c1: $2e $42

jr_007_56c3:
	adc  [hl]                                        ; $56c3: $8e
	ldh  [c], a                                      ; $56c4: $e2

jr_007_56c5:
	ld   e, [hl]                                     ; $56c5: $5e
	xor  b                                           ; $56c6: $a8
	or   $4c                                         ; $56c7: $f6 $4c
	db   $f4                                         ; $56c9: $f4
	xor  $f6                                         ; $56ca: $ee $f6
	ld   c, b                                        ; $56cc: $48
	nop                                              ; $56cd: $00
	nop                                              ; $56ce: $00
	nop                                              ; $56cf: $00
	nop                                              ; $56d0: $00
	nop                                              ; $56d1: $00
	cp   $92                                         ; $56d2: $fe $92
	sub  d                                           ; $56d4: $92
	sub  d                                           ; $56d5: $92
	sub  d                                           ; $56d6: $92
	cp   $82                                         ; $56d7: $fe $82
	add  d                                           ; $56d9: $82
	add  d                                           ; $56da: $82
	add  d                                           ; $56db: $82
	add  [hl]                                        ; $56dc: $86
	nop                                              ; $56dd: $00
	nop                                              ; $56de: $00
	nop                                              ; $56df: $00
	nop                                              ; $56e0: $00

jr_007_56e1:
	jr   nz, jr_007_56f3                             ; $56e1: $20 $10

jr_007_56e3:
	nop                                              ; $56e3: $00
	ld   [hl], b                                     ; $56e4: $70
	ld   [de], a                                     ; $56e5: $12
	db   $fc                                         ; $56e6: $fc
	jr   c, jr_007_5721                              ; $56e7: $38 $38

	ld   d, h                                        ; $56e9: $54
	sub  h                                           ; $56ea: $94
	ld   [de], a                                     ; $56eb: $12
	jr   nc, jr_007_56ee                             ; $56ec: $30 $00

jr_007_56ee:
	nop                                              ; $56ee: $00
	nop                                              ; $56ef: $00
	nop                                              ; $56f0: $00
	nop                                              ; $56f1: $00
	db   $10                                         ; $56f2: $10

jr_007_56f3:
	db   $10                                         ; $56f3: $10
	ld   a, h                                        ; $56f4: $7c
	ld   d, h                                        ; $56f5: $54
	ld   d, h                                        ; $56f6: $54
	ld   d, h                                        ; $56f7: $54
	cp   $10                                         ; $56f8: $fe $10
	db   $10                                         ; $56fa: $10
	jr   z, jr_007_56c3                              ; $56fb: $28 $c6

	nop                                              ; $56fd: $00
	nop                                              ; $56fe: $00
	nop                                              ; $56ff: $00
	nop                                              ; $5700: $00
	xor  $ee                                         ; $5701: $ee $ee
	xor  $92                                         ; $5703: $ee $92

jr_007_5705:
	cp   $aa                                         ; $5705: $fe $aa
	cp   $ba                                         ; $5707: $fe $ba
	xor  d                                           ; $5709: $aa
	cp   d                                           ; $570a: $ba
	xor  d                                           ; $570b: $aa
	cp   [hl]                                        ; $570c: $be
	nop                                              ; $570d: $00
	nop                                              ; $570e: $00
	nop                                              ; $570f: $00
	nop                                              ; $5710: $00
	inc  b                                           ; $5711: $04
	ld   c, $fa                                      ; $5712: $0e $fa
	xor  [hl]                                        ; $5714: $ae
	ld   hl, sp-$52                                  ; $5715: $f8 $ae
	ld   hl, sp+$2e                                  ; $5717: $f8 $2e
	ld   [hl+], a                                    ; $5719: $22
	ld   a, $22                                      ; $571a: $3e $22
	ld   h, $00                                      ; $571c: $26 $00
	nop                                              ; $571e: $00
	nop                                              ; $571f: $00
	nop                                              ; $5720: $00

jr_007_5721:
	ld   a, h                                        ; $5721: $7c
	db   $10                                         ; $5722: $10
	cp   $da                                         ; $5723: $fe $da
	or   [hl]                                        ; $5725: $b6
	jp   c, Jump_007_7c24                            ; $5726: $da $24 $7c

	nop                                              ; $5729: $00
	cp   $24                                         ; $572a: $fe $24
	ld   a, h                                        ; $572c: $7c
	nop                                              ; $572d: $00
	nop                                              ; $572e: $00
	nop                                              ; $572f: $00
	nop                                              ; $5730: $00
	jr   z, jr_007_5771                              ; $5731: $28 $3e

	ld   c, b                                        ; $5733: $48
	call nc, Call_007_6a7e                           ; $5734: $d4 $7e $6a
	ld   a, [hl]                                     ; $5737: $7e
	ld   l, d                                        ; $5738: $6a
	ld   a, [hl]                                     ; $5739: $7e
	ld   c, b                                        ; $573a: $48
	ld   c, d                                        ; $573b: $4a
	ld   c, [hl]                                     ; $573c: $4e
	nop                                              ; $573d: $00
	nop                                              ; $573e: $00
	nop                                              ; $573f: $00
	nop                                              ; $5740: $00
	ld   b, h                                        ; $5741: $44
	and  $44                                         ; $5742: $e6 $44
	ld   e, [hl]                                     ; $5744: $5e
	db   $f4                                         ; $5745: $f4
	ld   d, h                                        ; $5746: $54
	ld   d, [hl]                                     ; $5747: $56
	ld   [hl], h                                     ; $5748: $74
	jp   c, $a0d2                                    ; $5749: $da $d2 $a0

	sbc  [hl]                                        ; $574c: $9e
	nop                                              ; $574d: $00
	nop                                              ; $574e: $00
	nop                                              ; $574f: $00
	nop                                              ; $5750: $00
	inc  c                                           ; $5751: $0c
	ld   a, [bc]                                     ; $5752: $0a
	add  sp, $7e                                     ; $5753: $e8 $7e
	ld   c, b                                        ; $5755: $48
	ld   l, d                                        ; $5756: $6a
	db   $fc                                         ; $5757: $fc
	ld   c, h                                        ; $5758: $4c
	ld   e, h                                        ; $5759: $5c
	ld   l, d                                        ; $575a: $6a
	ret  z                                           ; $575b: $c8

	jr   jr_007_575e                                 ; $575c: $18 $00

jr_007_575e:
	nop                                              ; $575e: $00
	nop                                              ; $575f: $00
	nop                                              ; $5760: $00
	ld   d, h                                        ; $5761: $54
	cp   $08                                         ; $5762: $fe $08
	cp   $08                                         ; $5764: $fe $08
	cp   $16                                         ; $5766: $fe $16
	cp   $b4                                         ; $5768: $fe $b4
	cp   [hl]                                        ; $576a: $be
	or   h                                           ; $576b: $b4
	ld   a, [rRAMG]                                  ; $576c: $fa $00 $00
	nop                                              ; $576f: $00
	nop                                              ; $5770: $00

jr_007_5771:
	db   $10                                         ; $5771: $10
	ld   d, b                                        ; $5772: $50
	ld   d, b                                        ; $5773: $50
	ld   a, h                                        ; $5774: $7c
	sub  b                                           ; $5775: $90
	db   $10                                         ; $5776: $10
	db   $10                                         ; $5777: $10
	cp   $10                                         ; $5778: $fe $10
	db   $10                                         ; $577a: $10
	db   $10                                         ; $577b: $10
	stop                                             ; $577c: $10 $00
	nop                                              ; $577e: $00
	nop                                              ; $577f: $00
	nop                                              ; $5780: $00
	ld   [hl+], a                                    ; $5781: $22
	ld   a, [hl+]                                    ; $5782: $2a
	ld   a, [wGameResultsOfficeWeek3Yuri]                                  ; $5783: $fa $2a $ca
	sbc  d                                           ; $5786: $9a
	ld   l, d                                        ; $5787: $6a
	ld   c, d                                        ; $5788: $4a
	sub  d                                           ; $5789: $92
	ld   [hl+], a                                    ; $578a: $22
	ld   d, d                                        ; $578b: $52
	adc  [hl]                                        ; $578c: $8e
	nop                                              ; $578d: $00
	nop                                              ; $578e: $00
	nop                                              ; $578f: $00
	nop                                              ; $5790: $00
	inc  c                                           ; $5791: $0c
	ld   [hl], b                                     ; $5792: $70
	db   $10                                         ; $5793: $10
	cp   $38                                         ; $5794: $fe $38
	ld   d, h                                        ; $5796: $54
	sub  d                                           ; $5797: $92
	ld   a, h                                        ; $5798: $7c
	ld   b, h                                        ; $5799: $44
	ld   a, h                                        ; $579a: $7c
	ld   b, h                                        ; $579b: $44
	ld   a, h                                        ; $579c: $7c
	nop                                              ; $579d: $00
	nop                                              ; $579e: $00
	nop                                              ; $579f: $00
	nop                                              ; $57a0: $00
	cp   $92                                         ; $57a1: $fe $92
	ld   a, h                                        ; $57a3: $7c
	db   $10                                         ; $57a4: $10
	ld   a, h                                        ; $57a5: $7c
	ld   d, h                                        ; $57a6: $54
	ld   a, h                                        ; $57a7: $7c
	ld   d, h                                        ; $57a8: $54
	ld   a, h                                        ; $57a9: $7c
	db   $10                                         ; $57aa: $10
	cp   $10                                         ; $57ab: $fe $10
	nop                                              ; $57ad: $00
	nop                                              ; $57ae: $00
	nop                                              ; $57af: $00
	nop                                              ; $57b0: $00

jr_007_57b1:
	jr   z, jr_007_57b1                              ; $57b1: $28 $fe

	jr   z, jr_007_57ed                              ; $57b3: $28 $38

	db   $10                                         ; $57b5: $10
	ld   a, h                                        ; $57b6: $7c
	ld   d, h                                        ; $57b7: $54
	ld   a, h                                        ; $57b8: $7c
	db   $10                                         ; $57b9: $10
	cp   $10                                         ; $57ba: $fe $10
	stop                                             ; $57bc: $10 $00
	nop                                              ; $57be: $00
	nop                                              ; $57bf: $00
	nop                                              ; $57c0: $00
	ld   d, h                                        ; $57c1: $54
	cp   $52                                         ; $57c2: $fe $52
	ld   a, [$6ad4]                                  ; $57c4: $fa $d4 $6a
	cp   $38                                         ; $57c7: $fe $38
	jr   c, @+$7e                                    ; $57c9: $38 $7c

	ld   b, h                                        ; $57cb: $44
	ld   a, h                                        ; $57cc: $7c
	nop                                              ; $57cd: $00
	nop                                              ; $57ce: $00
	nop                                              ; $57cf: $00
	nop                                              ; $57d0: $00
	ld   b, b                                        ; $57d1: $40
	ld   l, [hl]                                     ; $57d2: $6e
	ld   a, d                                        ; $57d3: $7a
	ld   [$6a6a], a                                  ; $57d4: $ea $6a $6a
	ld   l, d                                        ; $57d7: $6a
	jp   c, Jump_007_485a                            ; $57d8: $da $5a $48

	ld   d, h                                        ; $57db: $54
	ldh  [c], a                                      ; $57dc: $e2
	nop                                              ; $57dd: $00
	nop                                              ; $57de: $00
	nop                                              ; $57df: $00
	nop                                              ; $57e0: $00
	xor  $aa                                         ; $57e1: $ee $aa
	xor  $aa                                         ; $57e3: $ee $aa
	xor  $ba                                         ; $57e5: $ee $ba
	xor  d                                           ; $57e7: $aa
	jp   nc, $feaa                                   ; $57e8: $d2 $aa $fe

	xor  d                                           ; $57eb: $aa
	cp   d                                           ; $57ec: $ba

jr_007_57ed:
	nop                                              ; $57ed: $00
	nop                                              ; $57ee: $00
	nop                                              ; $57ef: $00
	nop                                              ; $57f0: $00
	nop                                              ; $57f1: $00
	ld   c, $f4                                      ; $57f2: $0e $f4
	ld   c, $fa                                      ; $57f4: $0e $fa
	ld   l, [hl]                                     ; $57f6: $6e
	ld   l, d                                        ; $57f7: $6a
	ld   l, [hl]                                     ; $57f8: $6e
	ld   a, d                                        ; $57f9: $7a
	ld   c, [hl]                                     ; $57fa: $4e
	add  h                                           ; $57fb: $84
	ld   a, [bc]                                     ; $57fc: $0a
	nop                                              ; $57fd: $00
	nop                                              ; $57fe: $00
	nop                                              ; $57ff: $00
	nop                                              ; $5800: $00
	nop                                              ; $5801: $00
	ld   c, b                                        ; $5802: $48
	ld   c, b                                        ; $5803: $48
	ld   a, [hl]                                     ; $5804: $7e
	ldh  [$5c], a                                    ; $5805: $e0 $5c
	ld   d, h                                        ; $5807: $54
	ld   [hl], h                                     ; $5808: $74
	call nc, Call_007_5454                           ; $5809: $d4 $54 $54
	ld   h, [hl]                                     ; $580c: $66
	nop                                              ; $580d: $00
	nop                                              ; $580e: $00
	nop                                              ; $580f: $00
	nop                                              ; $5810: $00
	nop                                              ; $5811: $00
	db   $10                                         ; $5812: $10
	db   $10                                         ; $5813: $10
	ld   d, d                                        ; $5814: $52
	ld   d, d                                        ; $5815: $52
	ld   d, h                                        ; $5816: $54
	sub  h                                           ; $5817: $94
	db   $10                                         ; $5818: $10
	jr   z, @+$2a                                    ; $5819: $28 $28

	ld   b, h                                        ; $581b: $44
	add  d                                           ; $581c: $82
	nop                                              ; $581d: $00
	nop                                              ; $581e: $00
	nop                                              ; $581f: $00
	nop                                              ; $5820: $00
	nop                                              ; $5821: $00
	nop                                              ; $5822: $00
	add  d                                           ; $5823: $82
	adc  d                                           ; $5824: $8a
	jp   z, $92aa                                    ; $5825: $ca $aa $92

	sbc  d                                           ; $5828: $9a
	xor  d                                           ; $5829: $aa
	jp   z, $fe82                                    ; $582a: $ca $82 $fe

	nop                                              ; $582d: $00
	nop                                              ; $582e: $00
	nop                                              ; $582f: $00
	nop                                              ; $5830: $00
	nop                                              ; $5831: $00
	cp   [hl]                                        ; $5832: $be
	ld   h, d                                        ; $5833: $62
	ld   [hl+], a                                    ; $5834: $22
	and  d                                           ; $5835: $a2
	ld   a, [hl]                                     ; $5836: $7e
	inc  d                                           ; $5837: $14
	ld   d, h                                        ; $5838: $54
	ld   d, h                                        ; $5839: $54
	sub  h                                           ; $583a: $94
	and  h                                           ; $583b: $a4
	and  [hl]                                        ; $583c: $a6
	nop                                              ; $583d: $00
	nop                                              ; $583e: $00
	nop                                              ; $583f: $00
	nop                                              ; $5840: $00
	ld   b, h                                        ; $5841: $44
	xor  $aa                                         ; $5842: $ee $aa
	cp   $00                                         ; $5844: $fe $00
	cp   $92                                         ; $5846: $fe $92
	cp   $6c                                         ; $5848: $fe $6c
	ld   l, h                                        ; $584a: $6c
	ld   a, [hl]                                     ; $584b: $7e
	sub  b                                           ; $584c: $90
	nop                                              ; $584d: $00
	nop                                              ; $584e: $00
	nop                                              ; $584f: $00
	nop                                              ; $5850: $00
	ld   d, b                                        ; $5851: $50
	ld   e, [hl]                                     ; $5852: $5e
	add  sp, $5e                                     ; $5853: $e8 $5e
	ld   [hl], h                                     ; $5855: $74
	cp   $f4                                         ; $5856: $fe $f4
	sbc  $54                                         ; $5858: $de $54
	ld   e, [hl]                                     ; $585a: $5e
	ld   d, h                                        ; $585b: $54
	ld   e, [hl]                                     ; $585c: $5e
	nop                                              ; $585d: $00
	nop                                              ; $585e: $00
	nop                                              ; $585f: $00
	nop                                              ; $5860: $00
	db   $10                                         ; $5861: $10
	ld   a, h                                        ; $5862: $7c
	db   $10                                         ; $5863: $10
	jr   z, jr_007_58aa                              ; $5864: $28 $44

	cp   $04                                         ; $5866: $fe $04
	ld   [hl], h                                     ; $5868: $74
	ld   d, h                                        ; $5869: $54
	ld   [hl], h                                     ; $586a: $74
	inc  b                                           ; $586b: $04
	inc  c                                           ; $586c: $0c
	nop                                              ; $586d: $00
	nop                                              ; $586e: $00
	nop                                              ; $586f: $00
	nop                                              ; $5870: $00
	ld   b, h                                        ; $5871: $44
	cp   [hl]                                        ; $5872: $be
	ld   d, d                                        ; $5873: $52
	xor  $aa                                         ; $5874: $ee $aa
	ld   [$e8ae], a                                  ; $5876: $ea $ae $e8
	adc  [hl]                                        ; $5879: $8e
	xor  d                                           ; $587a: $aa
	ld   [$002e], a                                  ; $587b: $ea $2e $00
	nop                                              ; $587e: $00
	nop                                              ; $587f: $00
	nop                                              ; $5880: $00
	jr   z, jr_007_58bb                              ; $5881: $28 $38

	ld   l, $f2                                      ; $5883: $2e $f2
	ld   a, [hl+]                                    ; $5885: $2a
	cp   d                                           ; $5886: $ba
	ld   a, d                                        ; $5887: $7a
	ld   l, $74                                      ; $5888: $2e $74
	or   h                                           ; $588a: $b4
	inc  h                                           ; $588b: $24
	ld   l, d                                        ; $588c: $6a
	nop                                              ; $588d: $00
	nop                                              ; $588e: $00
	nop                                              ; $588f: $00
	nop                                              ; $5890: $00
	nop                                              ; $5891: $00
	cp   $82                                         ; $5892: $fe $82
	sub  d                                           ; $5894: $92
	cp   $92                                         ; $5895: $fe $92
	cp   d                                           ; $5897: $ba
	xor  d                                           ; $5898: $aa
	xor  d                                           ; $5899: $aa
	cp   d                                           ; $589a: $ba
	add  d                                           ; $589b: $82
	cp   $00                                         ; $589c: $fe $00
	nop                                              ; $589e: $00
	nop                                              ; $589f: $00
	nop                                              ; $58a0: $00
	ld   c, b                                        ; $58a1: $48
	ld   a, [hl]                                     ; $58a2: $7e
	or   h                                           ; $58a3: $b4
	xor  $aa                                         ; $58a4: $ee $aa
	xor  $aa                                         ; $58a6: $ee $aa
	cp   $aa                                         ; $58a8: $fe $aa

jr_007_58aa:
	cp   d                                           ; $58aa: $ba
	xor  d                                           ; $58ab: $aa
	cp   d                                           ; $58ac: $ba
	nop                                              ; $58ad: $00
	nop                                              ; $58ae: $00
	nop                                              ; $58af: $00
	nop                                              ; $58b0: $00
	nop                                              ; $58b1: $00
	ld   a, [hl]                                     ; $58b2: $7e
	ld   b, d                                        ; $58b3: $42
	ld   a, [hl]                                     ; $58b4: $7e
	ld   c, b                                        ; $58b5: $48
	ld   l, d                                        ; $58b6: $6a
	ld   l, d                                        ; $58b7: $6a
	ld   a, [hl]                                     ; $58b8: $7e
	ld   c, b                                        ; $58b9: $48
	xor  d                                           ; $58ba: $aa

jr_007_58bb:
	xor  d                                           ; $58bb: $aa
	ld   a, $00                                      ; $58bc: $3e $00
	nop                                              ; $58be: $00
	nop                                              ; $58bf: $00
	nop                                              ; $58c0: $00
	db   $10                                         ; $58c1: $10
	db   $10                                         ; $58c2: $10
	cp   $10                                         ; $58c3: $fe $10
	db   $10                                         ; $58c5: $10
	ld   a, h                                        ; $58c6: $7c
	nop                                              ; $58c7: $00
	ld   a, h                                        ; $58c8: $7c
	ld   b, h                                        ; $58c9: $44
	ld   b, h                                        ; $58ca: $44
	ld   b, h                                        ; $58cb: $44
	ld   a, h                                        ; $58cc: $7c
	nop                                              ; $58cd: $00
	nop                                              ; $58ce: $00
	nop                                              ; $58cf: $00
	nop                                              ; $58d0: $00
	db   $10                                         ; $58d1: $10
	cp   $10                                         ; $58d2: $fe $10
	cp   $92                                         ; $58d4: $fe $92
	cp   $92                                         ; $58d6: $fe $92
	cp   $54                                         ; $58d8: $fe $54
	ld   c, d                                        ; $58da: $4a
	and  d                                           ; $58db: $a2
	sbc  [hl]                                        ; $58dc: $9e
	nop                                              ; $58dd: $00
	nop                                              ; $58de: $00
	nop                                              ; $58df: $00
	nop                                              ; $58e0: $00
	db   $10                                         ; $58e1: $10
	sub  b                                           ; $58e2: $90
	ld   e, [hl]                                     ; $58e3: $5e
	jr   nz, @-$62                                   ; $58e4: $20 $9c

	ld   b, b                                        ; $58e6: $40
	inc  e                                           ; $58e7: $1c
	ld   b, h                                        ; $58e8: $44
	ld   b, h                                        ; $58e9: $44
	add  h                                           ; $58ea: $84
	add  d                                           ; $58eb: $82
	add  d                                           ; $58ec: $82
	nop                                              ; $58ed: $00
	nop                                              ; $58ee: $00
	nop                                              ; $58ef: $00
	nop                                              ; $58f0: $00
	ld   d, h                                        ; $58f1: $54
	ld   a, [hl]                                     ; $58f2: $7e
	db   $f4                                         ; $58f3: $f4
	ld   a, [hl]                                     ; $58f4: $7e
	ld   d, h                                        ; $58f5: $54
	cp   $e8                                         ; $58f6: $fe $e8
	db   $fc                                         ; $58f8: $fc
	call c, Call_007_547e                            ; $58f9: $dc $7e $54
	ld   d, h                                        ; $58fc: $54
	nop                                              ; $58fd: $00
	nop                                              ; $58fe: $00
	nop                                              ; $58ff: $00
	nop                                              ; $5900: $00
	ld   d, b                                        ; $5901: $50
	ld   e, [hl]                                     ; $5902: $5e
	ld   h, b                                        ; $5903: $60
	cp   $ea                                         ; $5904: $fe $ea
	ld   [$6afe], a                                  ; $5906: $ea $fe $6a
	ld   l, d                                        ; $5909: $6a
	ld   a, [hl]                                     ; $590a: $7e
	ld   b, d                                        ; $590b: $42
	ld   c, h                                        ; $590c: $4c
	nop                                              ; $590d: $00
	nop                                              ; $590e: $00
	nop                                              ; $590f: $00
	nop                                              ; $5910: $00
	ld   b, b                                        ; $5911: $40
	ld   b, d                                        ; $5912: $42
	db   $ec                                         ; $5913: $ec
	jr   nc, jr_007_5954                             ; $5914: $30 $3e

	ld   d, h                                        ; $5916: $54
	db   $f4                                         ; $5917: $f4
	ld   d, h                                        ; $5918: $54
	ld   d, h                                        ; $5919: $54
	ld   d, h                                        ; $591a: $54
	ld   h, h                                        ; $591b: $64
	ld   h, h                                        ; $591c: $64
	nop                                              ; $591d: $00
	nop                                              ; $591e: $00
	nop                                              ; $591f: $00
	nop                                              ; $5920: $00
	db   $10                                         ; $5921: $10
	ld   a, h                                        ; $5922: $7c
	ld   b, h                                        ; $5923: $44
	ld   a, h                                        ; $5924: $7c
	ld   b, h                                        ; $5925: $44
	ld   a, h                                        ; $5926: $7c
	nop                                              ; $5927: $00
	ld   a, h                                        ; $5928: $7c
	db   $10                                         ; $5929: $10
	ld   a, h                                        ; $592a: $7c
	db   $10                                         ; $592b: $10
	cp   $00                                         ; $592c: $fe $00
	nop                                              ; $592e: $00
	nop                                              ; $592f: $00
	nop                                              ; $5930: $00
	nop                                              ; $5931: $00
	ld   a, [hl]                                     ; $5932: $7e
	ld   [hl+], a                                    ; $5933: $22
	inc  h                                           ; $5934: $24
	jr   z, jr_007_5965                              ; $5935: $28 $2e

	ld   h, d                                        ; $5937: $62
	ld   d, h                                        ; $5938: $54
	ld   d, h                                        ; $5939: $54
	adc  b                                           ; $593a: $88
	sub  h                                           ; $593b: $94
	ld   [hl+], a                                    ; $593c: $22
	nop                                              ; $593d: $00
	nop                                              ; $593e: $00
	nop                                              ; $593f: $00
	nop                                              ; $5940: $00
	nop                                              ; $5941: $00
	db   $10                                         ; $5942: $10
	db   $10                                         ; $5943: $10
	cp   $82                                         ; $5944: $fe $82
	add  d                                           ; $5946: $82
	jr   z, jr_007_5971                              ; $5947: $28 $28

	jr   z, jr_007_598f                              ; $5949: $28 $44

	ld   b, h                                        ; $594b: $44
	add  d                                           ; $594c: $82
	nop                                              ; $594d: $00
	nop                                              ; $594e: $00
	nop                                              ; $594f: $00
	nop                                              ; $5950: $00
	adc  b                                           ; $5951: $88
	cp   [hl]                                        ; $5952: $be
	ldh  [c], a                                      ; $5953: $e2

jr_007_5954:
	cp   h                                           ; $5954: $bc
	xor  b                                           ; $5955: $a8
	cp   d                                           ; $5956: $ba
	xor  h                                           ; $5957: $ac
	or   h                                           ; $5958: $b4
	xor  [hl]                                        ; $5959: $ae
	or   $44                                         ; $595a: $f6 $44
	xor  b                                           ; $595c: $a8
	nop                                              ; $595d: $00
	nop                                              ; $595e: $00
	nop                                              ; $595f: $00
	nop                                              ; $5960: $00
	nop                                              ; $5961: $00
	cp   $82                                         ; $5962: $fe $82
	sub  d                                           ; $5964: $92

jr_007_5965:
	cp   $92                                         ; $5965: $fe $92
	cp   d                                           ; $5967: $ba
	cp   d                                           ; $5968: $ba
	sub  $92                                         ; $5969: $d6 $92
	add  d                                           ; $596b: $82
	cp   $00                                         ; $596c: $fe $00
	nop                                              ; $596e: $00
	nop                                              ; $596f: $00
	nop                                              ; $5970: $00

jr_007_5971:
	jr   z, jr_007_5971                              ; $5971: $28 $fe

	jr   z, jr_007_59f1                              ; $5973: $28 $7c

	ld   a, h                                        ; $5975: $7c
	ld   b, h                                        ; $5976: $44
	ld   a, h                                        ; $5977: $7c

jr_007_5978:
	jr   z, jr_007_5978                              ; $5978: $28 $fe

	ld   a, h                                        ; $597a: $7c
	xor  d                                           ; $597b: $aa
	jr   c, jr_007_597e                              ; $597c: $38 $00

jr_007_597e:
	nop                                              ; $597e: $00
	nop                                              ; $597f: $00
	nop                                              ; $5980: $00
	jr   nz, jr_007_59bf                             ; $5981: $20 $3c

	ld   b, h                                        ; $5983: $44
	adc  b                                           ; $5984: $88
	ld   a, [hl]                                     ; $5985: $7e
	ld   b, b                                        ; $5986: $40
	ld   e, [hl]                                     ; $5987: $5e
	ld   d, d                                        ; $5988: $52
	ld   d, [hl]                                     ; $5989: $56
	sub  b                                           ; $598a: $90
	sub  d                                           ; $598b: $92
	ld   e, $00                                      ; $598c: $1e $00
	nop                                              ; $598e: $00

jr_007_598f:
	nop                                              ; $598f: $00
	nop                                              ; $5990: $00
	ld   c, b                                        ; $5991: $48
	add  sp, $7e                                     ; $5992: $e8 $7e
	ldh  [$f4], a                                    ; $5994: $e0 $f4
	ldh  [c], a                                      ; $5996: $e2
	db   $f4                                         ; $5997: $f4
	ld   d, h                                        ; $5998: $54
	add  sp, $48                                     ; $5999: $e8 $48
	ld   d, h                                        ; $599b: $54
	ld   h, d                                        ; $599c: $62
	nop                                              ; $599d: $00
	nop                                              ; $599e: $00
	nop                                              ; $599f: $00
	nop                                              ; $59a0: $00
	ld   c, b                                        ; $59a1: $48
	ld   c, b                                        ; $59a2: $48
	ld   e, [hl]                                     ; $59a3: $5e
	ld   [$eaea], a                                  ; $59a4: $ea $ea $ea
	cp   $48                                         ; $59a7: $fe $48
	ld   c, b                                        ; $59a9: $48
	ld   d, h                                        ; $59aa: $54
	ld   d, h                                        ; $59ab: $54
	ld   h, d                                        ; $59ac: $62
	nop                                              ; $59ad: $00
	nop                                              ; $59ae: $00
	nop                                              ; $59af: $00
	nop                                              ; $59b0: $00
	ld   e, $fe                                      ; $59b1: $1e $fe
	ld   b, b                                        ; $59b3: $40
	ld   e, [hl]                                     ; $59b4: $5e
	ld   b, b                                        ; $59b5: $40
	cp   $52                                         ; $59b6: $fe $52
	ld   e, [hl]                                     ; $59b8: $5e
	ld   l, d                                        ; $59b9: $6a
	call c, $0a2c                                    ; $59ba: $dc $2c $0a
	nop                                              ; $59bd: $00
	nop                                              ; $59be: $00

jr_007_59bf:
	nop                                              ; $59bf: $00
	nop                                              ; $59c0: $00
	ld   [$547e], sp                                 ; $59c1: $08 $7e $54
	ld   a, [hl]                                     ; $59c4: $7e
	ldh  [$5e], a                                    ; $59c5: $e0 $5e
	ld   d, d                                        ; $59c7: $52
	ld   e, [hl]                                     ; $59c8: $5e
	ld   [hl], d                                     ; $59c9: $72
	sbc  $0c                                         ; $59ca: $de $0c
	ld   [hl], $00                                   ; $59cc: $36 $00
	nop                                              ; $59ce: $00
	nop                                              ; $59cf: $00
	nop                                              ; $59d0: $00

jr_007_59d1:
	jr   z, jr_007_59d1                              ; $59d1: $28 $fe

	jr   z, @+$12                                    ; $59d3: $28 $10

	cp   $40                                         ; $59d5: $fe $40
	ld   a, h                                        ; $59d7: $7c
	nop                                              ; $59d8: $00
	ld   d, h                                        ; $59d9: $54
	ld   d, h                                        ; $59da: $54
	ld   d, h                                        ; $59db: $54
	sub  [hl]                                        ; $59dc: $96
	nop                                              ; $59dd: $00
	nop                                              ; $59de: $00
	nop                                              ; $59df: $00
	nop                                              ; $59e0: $00
	add  sp, -$4c                                    ; $59e1: $e8 $b4
	and  d                                           ; $59e3: $a2
	sbc  $a8                                         ; $59e4: $de $a8
	cp   [hl]                                        ; $59e6: $be
	xor  d                                           ; $59e7: $aa
	cp   $88                                         ; $59e8: $fe $88
	sub  h                                           ; $59ea: $94
	sub  h                                           ; $59eb: $94
	and  d                                           ; $59ec: $a2
	nop                                              ; $59ed: $00
	nop                                              ; $59ee: $00
	nop                                              ; $59ef: $00
	nop                                              ; $59f0: $00

jr_007_59f1:
	inc  a                                           ; $59f1: $3c
	inc  h                                           ; $59f2: $24
	ld   c, b                                        ; $59f3: $48
	ld   a, $2a                                      ; $59f4: $3e $2a
	ld   a, $2a                                      ; $59f6: $3e $2a
	ld   a, [hl+]                                    ; $59f8: $2a
	ld   a, $42                                      ; $59f9: $3e $42
	ld   b, d                                        ; $59fb: $42
	add  [hl]                                        ; $59fc: $86
	nop                                              ; $59fd: $00
	nop                                              ; $59fe: $00
	nop                                              ; $59ff: $00
	nop                                              ; $5a00: $00
	db   $10                                         ; $5a01: $10
	cp   $82                                         ; $5a02: $fe $82
	add  d                                           ; $5a04: $82
	ld   a, h                                        ; $5a05: $7c
	nop                                              ; $5a06: $00
	cp   $28                                         ; $5a07: $fe $28
	jr   z, jr_007_5a53                              ; $5a09: $28 $48

	ld   c, d                                        ; $5a0b: $4a
	adc  [hl]                                        ; $5a0c: $8e
	nop                                              ; $5a0d: $00
	nop                                              ; $5a0e: $00
	nop                                              ; $5a0f: $00
	nop                                              ; $5a10: $00
	nop                                              ; $5a11: $00
	ld   b, h                                        ; $5a12: $44
	ld   b, h                                        ; $5a13: $44
	cp   $44                                         ; $5a14: $fe $44
	ld   b, h                                        ; $5a16: $44
	ld   b, h                                        ; $5a17: $44
	ld   a, h                                        ; $5a18: $7c
	ld   b, h                                        ; $5a19: $44
	ld   b, h                                        ; $5a1a: $44
	ld   b, h                                        ; $5a1b: $44
	ld   a, h                                        ; $5a1c: $7c
	nop                                              ; $5a1d: $00
	nop                                              ; $5a1e: $00
	nop                                              ; $5a1f: $00
	nop                                              ; $5a20: $00
	nop                                              ; $5a21: $00
	ld   e, [hl]                                     ; $5a22: $5e
	ld   d, d                                        ; $5a23: $52
	cp   $52                                         ; $5a24: $fe $52
	ld   e, [hl]                                     ; $5a26: $5e
	ldh  a, [c]                                      ; $5a27: $f2
	ld   d, d                                        ; $5a28: $52
	ld   e, [hl]                                     ; $5a29: $5e
	ld   l, h                                        ; $5a2a: $6c
	xor  h                                           ; $5a2b: $ac
	sub  [hl]                                        ; $5a2c: $96
	nop                                              ; $5a2d: $00
	nop                                              ; $5a2e: $00
	nop                                              ; $5a2f: $00
	nop                                              ; $5a30: $00
	db   $10                                         ; $5a31: $10
	cp   $44                                         ; $5a32: $fe $44
	cp   $82                                         ; $5a34: $fe $82
	ld   a, h                                        ; $5a36: $7c
	ld   a, [hl-]                                    ; $5a37: $3a
	call c, $162c                                    ; $5a38: $dc $2c $16
	ld   l, d                                        ; $5a3b: $6a
	jr   nc, jr_007_5a3e                             ; $5a3c: $30 $00

jr_007_5a3e:
	nop                                              ; $5a3e: $00
	nop                                              ; $5a3f: $00
	nop                                              ; $5a40: $00
	nop                                              ; $5a41: $00
	cp   [hl]                                        ; $5a42: $be
	ld   c, b                                        ; $5a43: $48
	ld   [$7e88], sp                                 ; $5a44: $08 $88 $7e
	ld   [$4848], sp                                 ; $5a47: $08 $48 $48
	adc  b                                           ; $5a4a: $88
	adc  b                                           ; $5a4b: $88
	adc  b                                           ; $5a4c: $88
	nop                                              ; $5a4d: $00
	nop                                              ; $5a4e: $00
	nop                                              ; $5a4f: $00
	nop                                              ; $5a50: $00
	jr   nz, jr_007_5a8f                             ; $5a51: $20 $3c

jr_007_5a53:
	ld   b, h                                        ; $5a53: $44
	ld   c, b                                        ; $5a54: $48
	xor  b                                           ; $5a55: $a8

Jump_007_5a56:
	db   $10                                         ; $5a56: $10
	jr   z, @+$46                                    ; $5a57: $28 $44

	cp   $44                                         ; $5a59: $fe $44
	ld   b, h                                        ; $5a5b: $44
	ld   a, h                                        ; $5a5c: $7c
	nop                                              ; $5a5d: $00
	nop                                              ; $5a5e: $00
	nop                                              ; $5a5f: $00
	nop                                              ; $5a60: $00
	ld   hl, sp-$52                                  ; $5a61: $f8 $ae
	ld   a, d                                        ; $5a63: $7a
	sub  h                                           ; $5a64: $94
	ld   a, [hl+]                                    ; $5a65: $2a
	ld   a, h                                        ; $5a66: $7c
	ld   a, b                                        ; $5a67: $78
	ld   d, b                                        ; $5a68: $50
	ld   a, [hl]                                     ; $5a69: $7e
	ld   [bc], a                                     ; $5a6a: $02
	cp   d                                           ; $5a6b: $ba
	inc  b                                           ; $5a6c: $04
	nop                                              ; $5a6d: $00
	nop                                              ; $5a6e: $00
	nop                                              ; $5a6f: $00
	nop                                              ; $5a70: $00
	ld   c, b                                        ; $5a71: $48
	ld   c, b                                        ; $5a72: $48
	db   $fc                                         ; $5a73: $fc
	ld   c, b                                        ; $5a74: $48
	ld   c, b                                        ; $5a75: $48
	cp   $e8                                         ; $5a76: $fe $e8
	add  sp, -$24                                    ; $5a78: $e8 $dc
	ld   c, b                                        ; $5a7a: $48
	ld   c, b                                        ; $5a7b: $48
	ld   a, [hl]                                     ; $5a7c: $7e
	nop                                              ; $5a7d: $00
	nop                                              ; $5a7e: $00
	nop                                              ; $5a7f: $00
	nop                                              ; $5a80: $00
	nop                                              ; $5a81: $00

jr_007_5a82:
	jr   nz, jr_007_5aa4                             ; $5a82: $20 $20

	jr   nz, jr_007_5a82                             ; $5a84: $20 $fc

	inc  h                                           ; $5a86: $24
	inc  h                                           ; $5a87: $24
	inc  h                                           ; $5a88: $24
	inc  h                                           ; $5a89: $24
	ld   b, h                                        ; $5a8a: $44
	ld   b, h                                        ; $5a8b: $44
	add  [hl]                                        ; $5a8c: $86
	nop                                              ; $5a8d: $00
	nop                                              ; $5a8e: $00

jr_007_5a8f:
	nop                                              ; $5a8f: $00
	nop                                              ; $5a90: $00
	jr   z, jr_007_5b0f                              ; $5a91: $28 $7c

	jr   z, jr_007_5acd                              ; $5a93: $28 $38

	jr   z, jr_007_5acf                              ; $5a95: $28 $38

jr_007_5a97:
	jr   z, jr_007_5a97                              ; $5a97: $28 $fe

	ld   d, h                                        ; $5a99: $54
	cp   d                                           ; $5a9a: $ba
	db   $10                                         ; $5a9b: $10
	cp   $00                                         ; $5a9c: $fe $00
	nop                                              ; $5a9e: $00
	nop                                              ; $5a9f: $00
	nop                                              ; $5aa0: $00
	db   $10                                         ; $5aa1: $10
	db   $fc                                         ; $5aa2: $fc
	sub  b                                           ; $5aa3: $90

jr_007_5aa4:
	db   $fc                                         ; $5aa4: $fc
	sub  h                                           ; $5aa5: $94
	cp   $94                                         ; $5aa6: $fe $94
	db   $fc                                         ; $5aa8: $fc
	sub  h                                           ; $5aa9: $94
	ld   hl, sp-$48                                  ; $5aaa: $f8 $b8
	sub  $00                                         ; $5aac: $d6 $00
	nop                                              ; $5aae: $00
	nop                                              ; $5aaf: $00
	nop                                              ; $5ab0: $00
	nop                                              ; $5ab1: $00
	ld   c, [hl]                                     ; $5ab2: $4e
	ld   a, [$fa2e]                                  ; $5ab3: $fa $2e $fa
	ld   a, [hl]                                     ; $5ab6: $7e
	xor  d                                           ; $5ab7: $aa
	ld   a, [$fcae]                                  ; $5ab8: $fa $ae $fc
	xor  h                                           ; $5abb: $ac
	or   $00                                         ; $5abc: $f6 $00
	nop                                              ; $5abe: $00
	nop                                              ; $5abf: $00
	nop                                              ; $5ac0: $00
	nop                                              ; $5ac1: $00
	db   $e4                                         ; $5ac2: $e4
	inc  h                                           ; $5ac3: $24
	inc  h                                           ; $5ac4: $24
	add  sp, -$78                                    ; $5ac5: $e8 $88
	add  sp, -$58                                    ; $5ac7: $e8 $a8
	jr   nc, jr_007_5afd                             ; $5ac9: $30 $32

	ld   a, $52                                      ; $5acb: $3e $52

jr_007_5acd:
	nop                                              ; $5acd: $00
	nop                                              ; $5ace: $00

jr_007_5acf:
	nop                                              ; $5acf: $00
	nop                                              ; $5ad0: $00
	nop                                              ; $5ad1: $00
	adc  b                                           ; $5ad2: $88
	ld   c, b                                        ; $5ad3: $48
	ld   a, $84                                      ; $5ad4: $3e $84
	ld   d, h                                        ; $5ad6: $54
	inc  d                                           ; $5ad7: $14
	ld   d, h                                        ; $5ad8: $54
	ld   d, h                                        ; $5ad9: $54
	sub  h                                           ; $5ada: $94
	sub  h                                           ; $5adb: $94
	cp   [hl]                                        ; $5adc: $be
	nop                                              ; $5add: $00
	nop                                              ; $5ade: $00
	nop                                              ; $5adf: $00
	nop                                              ; $5ae0: $00
	cp   $82                                         ; $5ae1: $fe $82
	jp   z, $aaaa                                    ; $5ae3: $ca $aa $aa

	cp   $92                                         ; $5ae6: $fe $92
	sub  $d6                                         ; $5ae8: $d6 $d6
	cp   $82                                         ; $5aea: $fe $82
	add  [hl]                                        ; $5aec: $86
	nop                                              ; $5aed: $00
	nop                                              ; $5aee: $00
	nop                                              ; $5aef: $00
	nop                                              ; $5af0: $00
	jr   nz, jr_007_5b49                             ; $5af1: $20 $56

	cp   b                                           ; $5af3: $b8
	ld   [hl], $52                                   ; $5af4: $36 $52
	ld   a, [$7a52]                                  ; $5af6: $fa $52 $7a
	ld   d, d                                        ; $5af9: $52
	ld   e, d                                        ; $5afa: $5a
	ld   [hl], d                                     ; $5afb: $72
	ld   b, [hl]                                     ; $5afc: $46

jr_007_5afd:
	nop                                              ; $5afd: $00
	nop                                              ; $5afe: $00
	nop                                              ; $5aff: $00
	nop                                              ; $5b00: $00
	ld   b, b                                        ; $5b01: $40
	ld   c, [hl]                                     ; $5b02: $4e
	cp   d                                           ; $5b03: $ba
	xor  d                                           ; $5b04: $aa
	ld   a, h                                        ; $5b05: $7c
	ld   l, d                                        ; $5b06: $6a
	cp   d                                           ; $5b07: $ba
	xor  d                                           ; $5b08: $aa
	db   $ec                                         ; $5b09: $ec
	ld   a, b                                        ; $5b0a: $78
	xor  b                                           ; $5b0b: $a8
	ld   [rRAMG], sp                                 ; $5b0c: $08 $00 $00

jr_007_5b0f:
	nop                                              ; $5b0f: $00
	nop                                              ; $5b10: $00
	jr   nz, jr_007_5b71                             ; $5b11: $20 $5e

	add  d                                           ; $5b13: $82
	ld   [$ac44], a                                  ; $5b14: $ea $44 $ac
	ldh  a, [c]                                      ; $5b17: $f2
	ld   b, h                                        ; $5b18: $44
	xor  $e4                                         ; $5b19: $ee $e4
	db   $e4                                         ; $5b1b: $e4
	ld   e, [hl]                                     ; $5b1c: $5e
	nop                                              ; $5b1d: $00
	nop                                              ; $5b1e: $00
	nop                                              ; $5b1f: $00
	nop                                              ; $5b20: $00
	nop                                              ; $5b21: $00
	inc  d                                           ; $5b22: $14
	inc  h                                           ; $5b23: $24
	db   $e4                                         ; $5b24: $e4
	inc  h                                           ; $5b25: $24
	inc  h                                           ; $5b26: $24
	cp   $24                                         ; $5b27: $fe $24
	inc  h                                           ; $5b29: $24
	ld   b, h                                        ; $5b2a: $44
	ld   b, h                                        ; $5b2b: $44
	add  h                                           ; $5b2c: $84
	nop                                              ; $5b2d: $00
	nop                                              ; $5b2e: $00
	nop                                              ; $5b2f: $00
	nop                                              ; $5b30: $00
	ld   [$6ef8], sp                                 ; $5b31: $08 $f8 $6e
	ld   a, [$f2fa]                                  ; $5b34: $fa $fa $f2
	db   $f4                                         ; $5b37: $f4
	sub  h                                           ; $5b38: $94
	sbc  [hl]                                        ; $5b39: $9e
	db   $f4                                         ; $5b3a: $f4
	sub  h                                           ; $5b3b: $94
	db   $f4                                         ; $5b3c: $f4
	nop                                              ; $5b3d: $00
	nop                                              ; $5b3e: $00
	nop                                              ; $5b3f: $00
	nop                                              ; $5b40: $00
	ld   c, b                                        ; $5b41: $48
	ld   c, d                                        ; $5b42: $4a
	db   $f4                                         ; $5b43: $f4
	ld   a, [hl]                                     ; $5b44: $7e
	ld   d, h                                        ; $5b45: $54
	ld   [hl], h                                     ; $5b46: $74
	sbc  $54                                         ; $5b47: $de $54

jr_007_5b49:
	ld   e, [hl]                                     ; $5b49: $5e
	ld   d, h                                        ; $5b4a: $54
	ld   d, h                                        ; $5b4b: $54
	sbc  $00                                         ; $5b4c: $de $00
	nop                                              ; $5b4e: $00
	nop                                              ; $5b4f: $00
	nop                                              ; $5b50: $00

jr_007_5b51:
	jr   z, jr_007_5b51                              ; $5b51: $28 $fe

	jr   z, jr_007_5b63                              ; $5b53: $28 $0e

	ldh  a, [c]                                      ; $5b55: $f2
	ld   d, d                                        ; $5b56: $52
	ld   d, h                                        ; $5b57: $54
	db   $10                                         ; $5b58: $10
	cp   $38                                         ; $5b59: $fe $38
	sub  $10                                         ; $5b5b: $d6 $10
	nop                                              ; $5b5d: $00
	nop                                              ; $5b5e: $00
	nop                                              ; $5b5f: $00
	nop                                              ; $5b60: $00
	nop                                              ; $5b61: $00
	ld   b, b                                        ; $5b62: $40

jr_007_5b63:
	ld   a, h                                        ; $5b63: $7c
	ld   d, h                                        ; $5b64: $54
	ld   d, h                                        ; $5b65: $54
	ld   d, h                                        ; $5b66: $54
	ld   d, h                                        ; $5b67: $54
	ld   d, h                                        ; $5b68: $54
	and  h                                           ; $5b69: $a4
	ld   h, $50                                      ; $5b6a: $26 $50
	adc  [hl]                                        ; $5b6c: $8e
	nop                                              ; $5b6d: $00
	nop                                              ; $5b6e: $00
	nop                                              ; $5b6f: $00
	nop                                              ; $5b70: $00

jr_007_5b71:
	ld   a, b                                        ; $5b71: $78
	jr   z, @+$12                                    ; $5b72: $28 $10

	cp   $32                                         ; $5b74: $fe $32
	call nc, $1030                                   ; $5b76: $d4 $30 $10
	cp   $38                                         ; $5b79: $fe $38
	sub  $10                                         ; $5b7b: $d6 $10
	nop                                              ; $5b7d: $00
	nop                                              ; $5b7e: $00
	nop                                              ; $5b7f: $00
	nop                                              ; $5b80: $00
	jr   nz, @+$22                                   ; $5b81: $20 $20

	cp   $20                                         ; $5b83: $fe $20
	jr   z, jr_007_5bcf                              ; $5b85: $28 $48

	ld   a, [hl]                                     ; $5b87: $7e
	ret  z                                           ; $5b88: $c8

	ld   c, b                                        ; $5b89: $48
	ld   c, b                                        ; $5b8a: $48
	ld   c, b                                        ; $5b8b: $48
	ld   a, [hl]                                     ; $5b8c: $7e
	nop                                              ; $5b8d: $00
	nop                                              ; $5b8e: $00
	nop                                              ; $5b8f: $00
	nop                                              ; $5b90: $00
	db   $10                                         ; $5b91: $10
	ld   a, h                                        ; $5b92: $7c
	db   $10                                         ; $5b93: $10
	db   $10                                         ; $5b94: $10
	cp   $10                                         ; $5b95: $fe $10
	db   $10                                         ; $5b97: $10
	ld   e, h                                        ; $5b98: $5c
	ld   d, b                                        ; $5b99: $50
	ld   d, b                                        ; $5b9a: $50
	ldh  a, [$8e]                                    ; $5b9b: $f0 $8e
	nop                                              ; $5b9d: $00
	nop                                              ; $5b9e: $00
	nop                                              ; $5b9f: $00
	nop                                              ; $5ba0: $00
	nop                                              ; $5ba1: $00
	cp   $10                                         ; $5ba2: $fe $10
	jr   nz, jr_007_5bea                             ; $5ba4: $20 $44

	ld   a, h                                        ; $5ba6: $7c
	ld   [de], a                                     ; $5ba7: $12
	db   $10                                         ; $5ba8: $10
	ld   a, h                                        ; $5ba9: $7c
	db   $10                                         ; $5baa: $10
	db   $10                                         ; $5bab: $10
	cp   $00                                         ; $5bac: $fe $00
	nop                                              ; $5bae: $00
	nop                                              ; $5baf: $00
	nop                                              ; $5bb0: $00
	ld   c, b                                        ; $5bb1: $48
	ld   c, b                                        ; $5bb2: $48
	db   $f4                                         ; $5bb3: $f4
	ld   d, h                                        ; $5bb4: $54
	ld   h, d                                        ; $5bb5: $62
	cp   $e8                                         ; $5bb6: $fe $e8
	add  sp, -$24                                    ; $5bb8: $e8 $dc
	ld   c, b                                        ; $5bba: $48
	ld   c, b                                        ; $5bbb: $48
	ld   a, [hl]                                     ; $5bbc: $7e
	nop                                              ; $5bbd: $00
	nop                                              ; $5bbe: $00
	nop                                              ; $5bbf: $00
	nop                                              ; $5bc0: $00
	nop                                              ; $5bc1: $00
	db   $10                                         ; $5bc2: $10
	db   $10                                         ; $5bc3: $10
	db   $10                                         ; $5bc4: $10
	db   $10                                         ; $5bc5: $10
	db   $10                                         ; $5bc6: $10
	cp   $10                                         ; $5bc7: $fe $10
	db   $10                                         ; $5bc9: $10
	db   $10                                         ; $5bca: $10
	db   $10                                         ; $5bcb: $10
	stop                                             ; $5bcc: $10 $00
	nop                                              ; $5bce: $00

jr_007_5bcf:
	nop                                              ; $5bcf: $00
	nop                                              ; $5bd0: $00
	inc  c                                           ; $5bd1: $0c
	ld   c, d                                        ; $5bd2: $4a
	xor  b                                           ; $5bd3: $a8
	ld   e, $e8                                      ; $5bd4: $1e $e8
	ld   e, [hl]                                     ; $5bd6: $5e
	add  sp, $5e                                     ; $5bd7: $e8 $5e
	and  $c4                                         ; $5bd9: $e6 $c4
	ld   l, d                                        ; $5bdb: $6a
	jp   nc, $0000                                  ; $5bdc: $d2 $00 $00

	nop                                              ; $5bdf: $00
	nop                                              ; $5be0: $00

jr_007_5be1:
	db   $10                                         ; $5be1: $10
	cp   $38                                         ; $5be2: $fe $38
	ld   d, h                                        ; $5be4: $54
	sub  d                                           ; $5be5: $92
	ld   a, h                                        ; $5be6: $7c
	ld   b, h                                        ; $5be7: $44
	ld   a, h                                        ; $5be8: $7c
	ld   b, h                                        ; $5be9: $44

jr_007_5bea:
	ld   a, h                                        ; $5bea: $7c
	ld   b, h                                        ; $5beb: $44
	cp   $00                                         ; $5bec: $fe $00
	nop                                              ; $5bee: $00
	nop                                              ; $5bef: $00
	nop                                              ; $5bf0: $00
	inc  d                                           ; $5bf1: $14
	add  sp, -$42                                    ; $5bf2: $e8 $be
	ld   [$aabe], a                                  ; $5bf4: $ea $be $aa
	cp   $a0                                         ; $5bf7: $fe $a0
	cp   [hl]                                        ; $5bf9: $be
	cp   $52                                         ; $5bfa: $fe $52
	cp   [hl]                                        ; $5bfc: $be
	nop                                              ; $5bfd: $00
	nop                                              ; $5bfe: $00
	nop                                              ; $5bff: $00
	nop                                              ; $5c00: $00
	jr   z, jr_007_5be1                              ; $5c01: $28 $de

	ld   c, b                                        ; $5c03: $48
	cp   $48                                         ; $5c04: $fe $48
	ld   a, [hl]                                     ; $5c06: $7e
	ldh  a, [c]                                      ; $5c07: $f2
	cp   $d2                                         ; $5c08: $fe $d2
	ld   e, [hl]                                     ; $5c0a: $5e
	ld   c, h                                        ; $5c0b: $4c
	ld   d, d                                        ; $5c0c: $52
	nop                                              ; $5c0d: $00
	nop                                              ; $5c0e: $00
	nop                                              ; $5c0f: $00
	nop                                              ; $5c10: $00
	jr   nc, jr_007_5c51                             ; $5c11: $30 $3e

	ld   [hl], h                                     ; $5c13: $74
	ld   e, h                                        ; $5c14: $5c
	call nc, Call_007_487e                           ; $5c15: $d4 $7e $48
	ld   e, [hl]                                     ; $5c18: $5e
	ld   l, [hl]                                     ; $5c19: $6e
	ld   d, [hl]                                     ; $5c1a: $56
	ld   c, d                                        ; $5c1b: $4a
	ld   d, h                                        ; $5c1c: $54
	nop                                              ; $5c1d: $00
	nop                                              ; $5c1e: $00
	nop                                              ; $5c1f: $00
	nop                                              ; $5c20: $00
	ld   c, h                                        ; $5c21: $4c
	ld   c, d                                        ; $5c22: $4a
	add  sp, $1e                                     ; $5c23: $e8 $1e
	add  sp, -$58                                    ; $5c25: $e8 $a8
	db   $ec                                         ; $5c27: $ec
	ld   c, h                                        ; $5c28: $4c
	db   $ec                                         ; $5c29: $ec
	db   $ec                                         ; $5c2a: $ec
	call nc, $0056                                   ; $5c2b: $d4 $56 $00
	nop                                              ; $5c2e: $00
	nop                                              ; $5c2f: $00
	nop                                              ; $5c30: $00
	ld   c, b                                        ; $5c31: $48
	ld   e, [hl]                                     ; $5c32: $5e
	db   $f4                                         ; $5c33: $f4
	ld   d, h                                        ; $5c34: $54
	ld   e, [hl]                                     ; $5c35: $5e
	ld   l, b                                        ; $5c36: $68
	cp   $54                                         ; $5c37: $fe $54
	ld   d, h                                        ; $5c39: $54
	ld   [hl], h                                     ; $5c3a: $74
	ld   c, b                                        ; $5c3b: $48
	db   $f4                                         ; $5c3c: $f4
	nop                                              ; $5c3d: $00
	nop                                              ; $5c3e: $00
	nop                                              ; $5c3f: $00
	nop                                              ; $5c40: $00
	ld   d, b                                        ; $5c41: $50
	ld   d, b                                        ; $5c42: $50
	ld   a, [hl]                                     ; $5c43: $7e
	ldh  a, [c]                                      ; $5c44: $f2
	ld   [$c8cc], a                                  ; $5c45: $ea $cc $c8
	ld   l, b                                        ; $5c48: $68
	ld   l, h                                        ; $5c49: $6c
	ld   [hl], h                                     ; $5c4a: $74
	or   h                                           ; $5c4b: $b4
	and  d                                           ; $5c4c: $a2
	nop                                              ; $5c4d: $00
	nop                                              ; $5c4e: $00
	nop                                              ; $5c4f: $00
	nop                                              ; $5c50: $00

jr_007_5c51:
	jr   nz, jr_007_5c93                             ; $5c51: $20 $40

	sbc  [hl]                                        ; $5c53: $9e
	ld   a, [$ba5a]                                  ; $5c54: $fa $5a $ba
	cp   $5a                                         ; $5c57: $fe $5a
	ld   a, [$fafa]                                  ; $5c59: $fa $fa $fa
	ld   e, [hl]                                     ; $5c5c: $5e
	nop                                              ; $5c5d: $00
	nop                                              ; $5c5e: $00
	nop                                              ; $5c5f: $00
	nop                                              ; $5c60: $00
	ld   e, h                                        ; $5c61: $5c
	db   $f4                                         ; $5c62: $f4
	inc  d                                           ; $5c63: $14
	call nc, $e036                                   ; $5c64: $d4 $36 $e0
	ld   e, $f2                                      ; $5c67: $1e $f2
	or   h                                           ; $5c69: $b4
	xor  h                                           ; $5c6a: $ac
	xor  h                                           ; $5c6b: $ac
	ldh  a, [c]                                      ; $5c6c: $f2
	nop                                              ; $5c6d: $00
	nop                                              ; $5c6e: $00
	nop                                              ; $5c6f: $00
	nop                                              ; $5c70: $00
	db   $10                                         ; $5c71: $10
	db   $10                                         ; $5c72: $10
	cp   $20                                         ; $5c73: $fe $20
	jr   z, jr_007_5cbb                              ; $5c75: $28 $44

	cp   $2a                                         ; $5c77: $fe $2a
	jr   z, jr_007_5cc3                              ; $5c79: $28 $48

	ld   c, d                                        ; $5c7b: $4a
	adc  [hl]                                        ; $5c7c: $8e
	nop                                              ; $5c7d: $00

Call_007_5c7e:
	nop                                              ; $5c7e: $00
	nop                                              ; $5c7f: $00
	nop                                              ; $5c80: $00
	ld   hl, sp+$6e                                  ; $5c81: $f8 $6e
	ld   l, d                                        ; $5c83: $6a
	ld   l, d                                        ; $5c84: $6a
	ld   [$002e], a                                  ; $5c85: $ea $2e $00
	ld   a, h                                        ; $5c88: $7c
	db   $10                                         ; $5c89: $10
	ld   a, h                                        ; $5c8a: $7c
	db   $10                                         ; $5c8b: $10
	cp   $00                                         ; $5c8c: $fe $00
	nop                                              ; $5c8e: $00
	nop                                              ; $5c8f: $00
	nop                                              ; $5c90: $00
	ld   c, b                                        ; $5c91: $48
	ld   d, h                                        ; $5c92: $54

jr_007_5c93:
	cp   $54                                         ; $5c93: $fe $54
	sub  h                                           ; $5c95: $94
	ld   e, [hl]                                     ; $5c96: $5e
	ld   d, h                                        ; $5c97: $54
	db   $f4                                         ; $5c98: $f4
	ld   e, [hl]                                     ; $5c99: $5e
	db   $f4                                         ; $5c9a: $f4
	call nc, $005e                                   ; $5c9b: $d4 $5e $00
	nop                                              ; $5c9e: $00
	nop                                              ; $5c9f: $00
	nop                                              ; $5ca0: $00
	db   $10                                         ; $5ca1: $10
	sbc  $2a                                         ; $5ca2: $de $2a
	ld   e, h                                        ; $5ca4: $5c
	and  d                                           ; $5ca5: $a2
	ld   a, h                                        ; $5ca6: $7c
	ld   b, h                                        ; $5ca7: $44
	ld   a, h                                        ; $5ca8: $7c
	ld   a, h                                        ; $5ca9: $7c
	ld   a, h                                        ; $5caa: $7c
	jr   z, jr_007_5cf1                              ; $5cab: $28 $44

	nop                                              ; $5cad: $00
	nop                                              ; $5cae: $00
	nop                                              ; $5caf: $00
	nop                                              ; $5cb0: $00
	nop                                              ; $5cb1: $00
	jr   nz, jr_007_5cf2                             ; $5cb2: $20 $3e

	and  d                                           ; $5cb4: $a2
	and  d                                           ; $5cb5: $a2
	xor  d                                           ; $5cb6: $aa
	xor  d                                           ; $5cb7: $aa
	xor  d                                           ; $5cb8: $aa
	db   $e4                                         ; $5cb9: $e4
	xor  h                                           ; $5cba: $ac

jr_007_5cbb:
	ld   a, [hl+]                                    ; $5cbb: $2a
	ld   [hl-], a                                    ; $5cbc: $32
	nop                                              ; $5cbd: $00
	nop                                              ; $5cbe: $00
	nop                                              ; $5cbf: $00
	nop                                              ; $5cc0: $00
	nop                                              ; $5cc1: $00
	xor  b                                           ; $5cc2: $a8

jr_007_5cc3:
	xor  [hl]                                        ; $5cc3: $ae
	ld   a, d                                        ; $5cc4: $7a
	and  d                                           ; $5cc5: $a2
	ld   a, [$7c6a]                                  ; $5cc6: $fa $6a $7c
	and  h                                           ; $5cc9: $a4
	db   $f4                                         ; $5cca: $f4
	ld   a, [$00aa]                                  ; $5ccb: $fa $aa $00
	nop                                              ; $5cce: $00
	nop                                              ; $5ccf: $00
	nop                                              ; $5cd0: $00
	nop                                              ; $5cd1: $00
	xor  [hl]                                        ; $5cd2: $ae
	ld   l, d                                        ; $5cd3: $6a
	ld   c, d                                        ; $5cd4: $4a
	xor  [hl]                                        ; $5cd5: $ae
	ld   a, [hl+]                                    ; $5cd6: $2a
	ld   l, d                                        ; $5cd7: $6a
	ld   l, [hl]                                     ; $5cd8: $6e
	xor  d                                           ; $5cd9: $aa
	ld   a, [hl+]                                    ; $5cda: $2a
	xor  d                                           ; $5cdb: $aa
	ld   e, [hl]                                     ; $5cdc: $5e
	nop                                              ; $5cdd: $00
	nop                                              ; $5cde: $00
	nop                                              ; $5cdf: $00
	nop                                              ; $5ce0: $00
	nop                                              ; $5ce1: $00
	cp   $10                                         ; $5ce2: $fe $10
	jr   nz, @-$48                                   ; $5ce4: $20 $b6

	jp   c, $bab2                                    ; $5ce6: $da $b2 $ba

	sub  $92                                         ; $5ce9: $d6 $92
	and  d                                           ; $5ceb: $a2
	cp   $00                                         ; $5cec: $fe $00
	nop                                              ; $5cee: $00
	nop                                              ; $5cef: $00
	nop                                              ; $5cf0: $00

jr_007_5cf1:
	add  b                                           ; $5cf1: $80

jr_007_5cf2:
	adc  b                                           ; $5cf2: $88
	add  sp, -$4e                                    ; $5cf3: $e8 $b2
	or   d                                           ; $5cf5: $b2
	cp   [hl]                                        ; $5cf6: $be
	and  b                                           ; $5cf7: $a0
	cp   [hl]                                        ; $5cf8: $be
	or   d                                           ; $5cf9: $b2
	jp   nc, $be52                                   ; $5cfa: $d2 $52 $be

	nop                                              ; $5cfd: $00
	nop                                              ; $5cfe: $00
	nop                                              ; $5cff: $00
	nop                                              ; $5d00: $00
	add  b                                           ; $5d01: $80
	add  b                                           ; $5d02: $80
	ldh  a, [$ae]                                    ; $5d03: $f0 $ae
	xor  d                                           ; $5d05: $aa
	xor  d                                           ; $5d06: $aa
	xor  d                                           ; $5d07: $aa
	xor  d                                           ; $5d08: $aa
	xor  d                                           ; $5d09: $aa
	jp   z, $b04e                                    ; $5d0a: $ca $4e $b0

	nop                                              ; $5d0d: $00
	nop                                              ; $5d0e: $00
	nop                                              ; $5d0f: $00
	nop                                              ; $5d10: $00
	nop                                              ; $5d11: $00
	cp   $92                                         ; $5d12: $fe $92
	cp   $92                                         ; $5d14: $fe $92
	cp   $00                                         ; $5d16: $fe $00
	ld   d, h                                        ; $5d18: $54
	ld   c, d                                        ; $5d19: $4a
	and  b                                           ; $5d1a: $a0
	and  d                                           ; $5d1b: $a2
	sbc  [hl]                                        ; $5d1c: $9e
	nop                                              ; $5d1d: $00
	nop                                              ; $5d1e: $00
	nop                                              ; $5d1f: $00
	nop                                              ; $5d20: $00
	ld   b, b                                        ; $5d21: $40
	ld   e, [hl]                                     ; $5d22: $5e
	ldh  a, [c]                                      ; $5d23: $f2
	ld   [hl-], a                                    ; $5d24: $32
	ld   a, $52                                      ; $5d25: $3e $52
	ldh  a, [c]                                      ; $5d27: $f2
	ld   e, [hl]                                     ; $5d28: $5e
	ld   d, d                                        ; $5d29: $52
	ld   d, d                                        ; $5d2a: $52
	ld   d, d                                        ; $5d2b: $52
	ld   a, [hl]                                     ; $5d2c: $7e
	nop                                              ; $5d2d: $00
	nop                                              ; $5d2e: $00
	nop                                              ; $5d2f: $00
	nop                                              ; $5d30: $00
	and  d                                           ; $5d31: $a2
	ld   a, [$fa7a]                                  ; $5d32: $fa $7a $fa
	xor  d                                           ; $5d35: $aa
	xor  [hl]                                        ; $5d36: $ae
	db   $10                                         ; $5d37: $10
	cp   $32                                         ; $5d38: $fe $32
	ld   l, h                                        ; $5d3a: $6c
	and  h                                           ; $5d3b: $a4
	ld   [hl-], a                                    ; $5d3c: $32
	nop                                              ; $5d3d: $00
	nop                                              ; $5d3e: $00
	nop                                              ; $5d3f: $00
	nop                                              ; $5d40: $00
	ld   [$e81e], sp                                 ; $5d41: $08 $1e $e8
	cp   [hl]                                        ; $5d44: $be
	xor  b                                           ; $5d45: $a8
	cp   $b2                                         ; $5d46: $fe $b2
	cp   [hl]                                        ; $5d48: $be
	ldh  a, [c]                                      ; $5d49: $f2
	ld   e, $12                                      ; $5d4a: $1e $12
	ld   d, $00                                      ; $5d4c: $16 $00
	nop                                              ; $5d4e: $00
	nop                                              ; $5d4f: $00
	nop                                              ; $5d50: $00
	ld   e, [hl]                                     ; $5d51: $5e
	ldh  [c], a                                      ; $5d52: $e2
	ld   e, $e2                                      ; $5d53: $1e $e2
	ld   e, $f6                                      ; $5d55: $1e $f6
	ld   d, $f6                                      ; $5d57: $16 $f6
	cp   [hl]                                        ; $5d59: $be
	and  d                                           ; $5d5a: $a2
	and  d                                           ; $5d5b: $a2
	and  $00                                         ; $5d5c: $e6 $00
	nop                                              ; $5d5e: $00
	nop                                              ; $5d5f: $00
	nop                                              ; $5d60: $00
	nop                                              ; $5d61: $00
	db   $10                                         ; $5d62: $10
	db   $10                                         ; $5d63: $10
	ld   e, $10                                      ; $5d64: $1e $10
	db   $10                                         ; $5d66: $10
	db   $10                                         ; $5d67: $10
	cp   $82                                         ; $5d68: $fe $82
	add  d                                           ; $5d6a: $82
	add  d                                           ; $5d6b: $82
	cp   $00                                         ; $5d6c: $fe $00
	nop                                              ; $5d6e: $00
	nop                                              ; $5d6f: $00
	nop                                              ; $5d70: $00
	db   $10                                         ; $5d71: $10
	db   $10                                         ; $5d72: $10
	cp   $10                                         ; $5d73: $fe $10
	db   $10                                         ; $5d75: $10
	ld   a, h                                        ; $5d76: $7c
	nop                                              ; $5d77: $00
	ld   d, h                                        ; $5d78: $54
	ld   c, d                                        ; $5d79: $4a
	and  b                                           ; $5d7a: $a0
	or   d                                           ; $5d7b: $b2
	adc  [hl]                                        ; $5d7c: $8e
	nop                                              ; $5d7d: $00
	nop                                              ; $5d7e: $00
	nop                                              ; $5d7f: $00
	nop                                              ; $5d80: $00
	db   $10                                         ; $5d81: $10
	ld   e, h                                        ; $5d82: $5c
	ld   d, b                                        ; $5d83: $50
	cp   $0a                                         ; $5d84: $fe $0a
	cp   $8a                                         ; $5d86: $fe $8a
	db   $fc                                         ; $5d88: $fc
	and  h                                           ; $5d89: $a4
	db   $f4                                         ; $5d8a: $f4
	ld   a, [$00aa]                                  ; $5d8b: $fa $aa $00
	nop                                              ; $5d8e: $00
	nop                                              ; $5d8f: $00
	nop                                              ; $5d90: $00
	ld   [hl+], a                                    ; $5d91: $22
	ld   e, d                                        ; $5d92: $5a
	ld   a, [$7a0a]                                  ; $5d93: $fa $0a $7a
	ld   e, d                                        ; $5d96: $5a
	ld   a, d                                        ; $5d97: $7a
	ld   [hl], d                                     ; $5d98: $72
	add  d                                           ; $5d99: $82
	ldh  a, [c]                                      ; $5d9a: $f2
	ld   d, d                                        ; $5d9b: $52
	halt                                             ; $5d9c: $76
	nop                                              ; $5d9d: $00
	nop                                              ; $5d9e: $00
	nop                                              ; $5d9f: $00
	nop                                              ; $5da0: $00
	jr   nz, jr_007_5ddb                             ; $5da1: $20 $38

	ld   c, b                                        ; $5da3: $48
	sub  b                                           ; $5da4: $90
	ld   a, h                                        ; $5da5: $7c
	inc  d                                           ; $5da6: $14
	cp   $14                                         ; $5da7: $fe $14
	ld   a, h                                        ; $5da9: $7c
	db   $10                                         ; $5daa: $10
	db   $10                                         ; $5dab: $10
	jr   nc, jr_007_5dae                             ; $5dac: $30 $00

jr_007_5dae:
	nop                                              ; $5dae: $00
	nop                                              ; $5daf: $00
	nop                                              ; $5db0: $00
	jr   nz, jr_007_5e11                             ; $5db1: $20 $5e

	add  h                                           ; $5db3: $84
	inc  h                                           ; $5db4: $24
	ld   b, h                                        ; $5db5: $44
	call nz, Call_007_5654                           ; $5db6: $c4 $54 $56
	ld   d, h                                        ; $5db9: $54
	ld   d, h                                        ; $5dba: $54
	ld   d, h                                        ; $5dbb: $54
	ld   a, [hl]                                     ; $5dbc: $7e
	nop                                              ; $5dbd: $00
	nop                                              ; $5dbe: $00
	nop                                              ; $5dbf: $00
	nop                                              ; $5dc0: $00
	cp   $82                                         ; $5dc1: $fe $82
	jr   nz, jr_007_5e01                             ; $5dc3: $20 $3c

	ld   b, b                                        ; $5dc5: $40
	ld   a, h                                        ; $5dc6: $7c
	inc  b                                           ; $5dc7: $04
	cp   $04                                         ; $5dc8: $fe $04
	ld   [$3008], sp                                 ; $5dca: $08 $08 $30
	nop                                              ; $5dcd: $00
	nop                                              ; $5dce: $00
	nop                                              ; $5dcf: $00
	nop                                              ; $5dd0: $00
	add  b                                           ; $5dd1: $80
	ld   d, h                                        ; $5dd2: $54
	ld   d, h                                        ; $5dd3: $54
	ld   a, $f4                                      ; $5dd4: $3e $f4
	ld   a, $34                                      ; $5dd6: $3e $34
	ld   e, [hl]                                     ; $5dd8: $5e
	ld   d, h                                        ; $5dd9: $54
	ld   e, [hl]                                     ; $5dda: $5e

jr_007_5ddb:
	ldh  [$9e], a                                    ; $5ddb: $e0 $9e
	nop                                              ; $5ddd: $00
	nop                                              ; $5dde: $00
	nop                                              ; $5ddf: $00
	nop                                              ; $5de0: $00
	ld   b, h                                        ; $5de1: $44
	ld   b, h                                        ; $5de2: $44
	db   $e4                                         ; $5de3: $e4
	ld   e, [hl]                                     ; $5de4: $5e
	ld   b, h                                        ; $5de5: $44
	db   $e4                                         ; $5de6: $e4
	db   $f4                                         ; $5de7: $f4
	db   $ec                                         ; $5de8: $ec
	call nz, Call_007_4444                           ; $5de9: $c4 $44 $44
	ld   c, h                                        ; $5dec: $4c
	nop                                              ; $5ded: $00
	nop                                              ; $5dee: $00
	nop                                              ; $5def: $00
	nop                                              ; $5df0: $00
	db   $10                                         ; $5df1: $10
	db   $10                                         ; $5df2: $10
	ld   e, $e2                                      ; $5df3: $1e $e2
	xor  d                                           ; $5df5: $aa
	xor  h                                           ; $5df6: $ac
	xor  b                                           ; $5df7: $a8
	xor  b                                           ; $5df8: $a8
	cp   b                                           ; $5df9: $b8
	db   $f4                                         ; $5dfa: $f4
	inc  d                                           ; $5dfb: $14
	ld   [hl+], a                                    ; $5dfc: $22
	nop                                              ; $5dfd: $00
	nop                                              ; $5dfe: $00
	nop                                              ; $5dff: $00
	nop                                              ; $5e00: $00

jr_007_5e01:
	ld   [$e85e], sp                                 ; $5e01: $08 $5e $e8
	cp   $e8                                         ; $5e04: $fe $e8
	ld   e, [hl]                                     ; $5e06: $5e
	cp   $52                                         ; $5e07: $fe $52
	cp   $f2                                         ; $5e09: $fe $f2
	sbc  $52                                         ; $5e0b: $de $52
	nop                                              ; $5e0d: $00
	nop                                              ; $5e0e: $00
	nop                                              ; $5e0f: $00
	nop                                              ; $5e10: $00

jr_007_5e11:
	nop                                              ; $5e11: $00
	inc  l                                           ; $5e12: $2c
	ld   a, [hl+]                                    ; $5e13: $2a
	xor  b                                           ; $5e14: $a8
	ld   a, [hl]                                     ; $5e15: $7e
	jr   z, jr_007_5e40                              ; $5e16: $28 $28

	ld   l, b                                        ; $5e18: $68
	ld   l, b                                        ; $5e19: $68
	or   h                                           ; $5e1a: $b4
	inc  [hl]                                        ; $5e1b: $34
	ld   [hl+], a                                    ; $5e1c: $22
	nop                                              ; $5e1d: $00
	nop                                              ; $5e1e: $00
	nop                                              ; $5e1f: $00
	nop                                              ; $5e20: $00
	nop                                              ; $5e21: $00
	ld   d, b                                        ; $5e22: $50
	ld   d, b                                        ; $5e23: $50
	ld   a, h                                        ; $5e24: $7c
	sub  b                                           ; $5e25: $90
	db   $10                                         ; $5e26: $10
	cp   $38                                         ; $5e27: $fe $38
	jr   c, jr_007_5e7f                              ; $5e29: $38 $54

	sub  d                                           ; $5e2b: $92
	stop                                             ; $5e2c: $10 $00
	nop                                              ; $5e2e: $00
	nop                                              ; $5e2f: $00
	nop                                              ; $5e30: $00
	jr   nz, jr_007_5e67                             ; $5e31: $20 $34

	ld   a, [hl]                                     ; $5e33: $7e
	ld   d, h                                        ; $5e34: $54
	call nc, Call_007_407e                           ; $5e35: $d4 $7e $40
	ld   e, h                                        ; $5e38: $5c
	ld   d, h                                        ; $5e39: $54
	ld   e, h                                        ; $5e3a: $5c
	ld   d, h                                        ; $5e3b: $54
	ld   e, h                                        ; $5e3c: $5c
	nop                                              ; $5e3d: $00
	nop                                              ; $5e3e: $00
	nop                                              ; $5e3f: $00

jr_007_5e40:
	nop                                              ; $5e40: $00
	ld   h, $5c                                      ; $5e41: $26 $5c
	sub  h                                           ; $5e43: $94
	db   $f4                                         ; $5e44: $f4
	ld   d, h                                        ; $5e45: $54
	cp   [hl]                                        ; $5e46: $be
	db   $f4                                         ; $5e47: $f4
	ld   d, h                                        ; $5e48: $54
	db   $f4                                         ; $5e49: $f4
	db   $f4                                         ; $5e4a: $f4
	ld   a, [$0052]                                  ; $5e4b: $fa $52 $00
	nop                                              ; $5e4e: $00
	nop                                              ; $5e4f: $00
	nop                                              ; $5e50: $00
	inc  c                                           ; $5e51: $0c
	ld   a, [bc]                                     ; $5e52: $0a
	ld   a, [hl]                                     ; $5e53: $7e
	ld   c, b                                        ; $5e54: $48
	ld   a, d                                        ; $5e55: $7a
	ld   d, h                                        ; $5e56: $54
	or   h                                           ; $5e57: $b4
	ld   a, [bc]                                     ; $5e58: $0a
	ld   a, h                                        ; $5e59: $7c
	ld   e, h                                        ; $5e5a: $5c
	ld   e, h                                        ; $5e5b: $5c
	cp   $00                                         ; $5e5c: $fe $00
	nop                                              ; $5e5e: $00
	nop                                              ; $5e5f: $00
	nop                                              ; $5e60: $00
	inc  h                                           ; $5e61: $24
	ld   b, h                                        ; $5e62: $44
	sbc  [hl]                                        ; $5e63: $9e
	or   $56                                         ; $5e64: $f6 $56
	cp   [hl]                                        ; $5e66: $be

jr_007_5e67:
	or   $56                                         ; $5e67: $f6 $56
	cp   $e4                                         ; $5e69: $fe $e4
	db   $e4                                         ; $5e6b: $e4
	ld   b, h                                        ; $5e6c: $44
	nop                                              ; $5e6d: $00
	nop                                              ; $5e6e: $00
	nop                                              ; $5e6f: $00
	nop                                              ; $5e70: $00
	nop                                              ; $5e71: $00
	db   $10                                         ; $5e72: $10
	db   $10                                         ; $5e73: $10
	db   $10                                         ; $5e74: $10
	db   $10                                         ; $5e75: $10
	cp   $10                                         ; $5e76: $fe $10
	db   $10                                         ; $5e78: $10
	db   $10                                         ; $5e79: $10
	db   $10                                         ; $5e7a: $10
	db   $10                                         ; $5e7b: $10
	ld   a, h                                        ; $5e7c: $7c
	nop                                              ; $5e7d: $00
	nop                                              ; $5e7e: $00

jr_007_5e7f:
	nop                                              ; $5e7f: $00
	nop                                              ; $5e80: $00
	ld   c, b                                        ; $5e81: $48
	ld   c, b                                        ; $5e82: $48
	cp   $48                                         ; $5e83: $fe $48
	ld   a, [hl]                                     ; $5e85: $7e
	ld   [$eaea], a                                  ; $5e86: $ea $ea $ea
	xor  $48                                         ; $5e89: $ee $48
	ld   c, b                                        ; $5e8b: $48
	ld   c, b                                        ; $5e8c: $48
	nop                                              ; $5e8d: $00
	nop                                              ; $5e8e: $00
	nop                                              ; $5e8f: $00
	nop                                              ; $5e90: $00
	ld   c, b                                        ; $5e91: $48
	ld   e, b                                        ; $5e92: $58
	cp   $68                                         ; $5e93: $fe $68
	ld   c, b                                        ; $5e95: $48
	cp   $e8                                         ; $5e96: $fe $e8
	db   $fc                                         ; $5e98: $fc
	call c, Call_007_486a                            ; $5e99: $dc $6a $48
	ld   c, b                                        ; $5e9c: $48
	nop                                              ; $5e9d: $00
	nop                                              ; $5e9e: $00
	nop                                              ; $5e9f: $00
	nop                                              ; $5ea0: $00
	ld   c, $78                                      ; $5ea1: $0e $78
	ld   c, b                                        ; $5ea3: $48
	ld   a, [hl]                                     ; $5ea4: $7e
	ld   c, b                                        ; $5ea5: $48
	ld   a, [hl]                                     ; $5ea6: $7e
	ld   h, d                                        ; $5ea7: $62
	ld   a, [hl]                                     ; $5ea8: $7e
	ld   h, d                                        ; $5ea9: $62
	cp   [hl]                                        ; $5eaa: $be
	and  d                                           ; $5eab: $a2
	ld   a, $00                                      ; $5eac: $3e $00
	nop                                              ; $5eae: $00
	nop                                              ; $5eaf: $00
	nop                                              ; $5eb0: $00
	ld   b, [hl]                                     ; $5eb1: $46
	ld   e, b                                        ; $5eb2: $58
	ld   d, b                                        ; $5eb3: $50
	ldh  a, [$5e]                                    ; $5eb4: $f0 $5e
	ld   d, h                                        ; $5eb6: $54
	ld   [hl], h                                     ; $5eb7: $74
	call nc, Call_007_6454                           ; $5eb8: $d4 $54 $64
	ld   h, h                                        ; $5ebb: $64
	call nz, $0000                                  ; $5ebc: $c4 $00 $00
	nop                                              ; $5ebf: $00
	nop                                              ; $5ec0: $00

jr_007_5ec1:
	jr   z, jr_007_5ec1                              ; $5ec1: $28 $fe

	ld   a, [hl+]                                    ; $5ec3: $2a
	cp   $f8                                         ; $5ec4: $fe $f8
	xor  d                                           ; $5ec6: $aa
	ld   a, [$f4d6]                                  ; $5ec7: $fa $d6 $f4
	and  h                                           ; $5eca: $a4
	ld   a, [$0092]                                  ; $5ecb: $fa $92 $00
	nop                                              ; $5ece: $00
	nop                                              ; $5ecf: $00
	nop                                              ; $5ed0: $00
	ld   d, b                                        ; $5ed1: $50
	ld   c, b                                        ; $5ed2: $48
	cp   $48                                         ; $5ed3: $fe $48
	ld   c, b                                        ; $5ed5: $48
	add  sp, -$02                                    ; $5ed6: $e8 $fe
	add  sp, -$38                                    ; $5ed8: $e8 $c8
	ld   c, b                                        ; $5eda: $48
	ld   c, b                                        ; $5edb: $48
	ld   a, [hl]                                     ; $5edc: $7e
	nop                                              ; $5edd: $00
	nop                                              ; $5ede: $00
	nop                                              ; $5edf: $00
	nop                                              ; $5ee0: $00
	nop                                              ; $5ee1: $00
	cp   $a2                                         ; $5ee2: $fe $a2
	cp   [hl]                                        ; $5ee4: $be
	ldh  [c], a                                      ; $5ee5: $e2
	cp   [hl]                                        ; $5ee6: $be
	or   [hl]                                        ; $5ee7: $b6
	or   $be                                         ; $5ee8: $f6 $be
	and  d                                           ; $5eea: $a2
	and  d                                           ; $5eeb: $a2
	and  [hl]                                        ; $5eec: $a6
	nop                                              ; $5eed: $00
	nop                                              ; $5eee: $00
	nop                                              ; $5eef: $00
	nop                                              ; $5ef0: $00
	ld   a, [hl+]                                    ; $5ef1: $2a
	ld   [$3e24], a                                  ; $5ef2: $ea $24 $3e
	ld   [$eabe], a                                  ; $5ef5: $ea $be $ea
	cp   [hl]                                        ; $5ef8: $be
	jr   z, @+$40                                    ; $5ef9: $28 $3e

	jr   z, @+$4a                                    ; $5efb: $28 $48

	nop                                              ; $5efd: $00
	nop                                              ; $5efe: $00
	nop                                              ; $5eff: $00
	nop                                              ; $5f00: $00
	ld   c, b                                        ; $5f01: $48
	ld   a, [$e81c]                                  ; $5f02: $fa $1c $e8
	inc  d                                           ; $5f05: $14
	ldh  [c], a                                      ; $5f06: $e2
	ld   [$bcfa], sp                                 ; $5f07: $08 $fa $bc
	xor  b                                           ; $5f0a: $a8
	or   h                                           ; $5f0b: $b4
	ldh  [c], a                                      ; $5f0c: $e2
	nop                                              ; $5f0d: $00
	nop                                              ; $5f0e: $00
	nop                                              ; $5f0f: $00
	nop                                              ; $5f10: $00
	ld   b, b                                        ; $5f11: $40
	ld   e, [hl]                                     ; $5f12: $5e
	ld   b, h                                        ; $5f13: $44
	db   $e4                                         ; $5f14: $e4
	ld   b, h                                        ; $5f15: $44
	ld   b, h                                        ; $5f16: $44
	ld   h, h                                        ; $5f17: $64
	call nz, Call_007_4444                           ; $5f18: $c4 $44 $44
	ld   b, h                                        ; $5f1b: $44
	call z, $0000                                   ; $5f1c: $cc $00 $00
	nop                                              ; $5f1f: $00
	nop                                              ; $5f20: $00
	ld   b, [hl]                                     ; $5f21: $46
	ld   e, h                                        ; $5f22: $5c
	ld   d, h                                        ; $5f23: $54
	db   $f4                                         ; $5f24: $f4
	ld   e, [hl]                                     ; $5f25: $5e
	ld   d, h                                        ; $5f26: $54
	ld   [hl], h                                     ; $5f27: $74
	call nc, $5a52                                   ; $5f28: $d4 $52 $5a
	ld   b, b                                        ; $5f2b: $40
	ld   e, [hl]                                     ; $5f2c: $5e
	nop                                              ; $5f2d: $00
	nop                                              ; $5f2e: $00
	nop                                              ; $5f2f: $00
	nop                                              ; $5f30: $00
	nop                                              ; $5f31: $00
	ldh  a, [c]                                      ; $5f32: $f2
	ld   b, d                                        ; $5f33: $42
	ldh  a, [c]                                      ; $5f34: $f2
	sbc  $d2                                         ; $5f35: $de $d2
	jp   c, $d2d6                                    ; $5f37: $da $d6 $d2

	jp   nc, $b6d2                                   ; $5f3a: $d2 $d2 $b6

	nop                                              ; $5f3d: $00
	nop                                              ; $5f3e: $00
	nop                                              ; $5f3f: $00
	nop                                              ; $5f40: $00
	nop                                              ; $5f41: $00
	ld   e, [hl]                                     ; $5f42: $5e
	or   d                                           ; $5f43: $b2
	ld   e, $f2                                      ; $5f44: $1e $f2
	ld   e, [hl]                                     ; $5f46: $5e
	or   $56                                         ; $5f47: $f6 $56
	cp   $d2                                         ; $5f49: $fe $d2
	ld   [hl], d                                     ; $5f4b: $72
	sub  $00                                         ; $5f4c: $d6 $00
	nop                                              ; $5f4e: $00
	nop                                              ; $5f4f: $00
	nop                                              ; $5f50: $00
	nop                                              ; $5f51: $00
	cp   $00                                         ; $5f52: $fe $00
	ld   a, h                                        ; $5f54: $7c
	ld   b, h                                        ; $5f55: $44
	ld   b, h                                        ; $5f56: $44
	ld   a, h                                        ; $5f57: $7c
	ld   b, b                                        ; $5f58: $40
	ld   b, b                                        ; $5f59: $40
	ld   b, b                                        ; $5f5a: $40
	add  b                                           ; $5f5b: $80
	add  b                                           ; $5f5c: $80
	nop                                              ; $5f5d: $00
	nop                                              ; $5f5e: $00
	nop                                              ; $5f5f: $00
	nop                                              ; $5f60: $00
	ld   b, b                                        ; $5f61: $40
	ld   e, [hl]                                     ; $5f62: $5e
	ldh  a, [c]                                      ; $5f63: $f2
	ld   e, [hl]                                     ; $5f64: $5e
	ld   d, d                                        ; $5f65: $52
	cp   $f6                                         ; $5f66: $fe $f6
	or   $de                                         ; $5f68: $f6 $de
	ld   d, d                                        ; $5f6a: $52
	ld   d, d                                        ; $5f6b: $52
	ld   d, [hl]                                     ; $5f6c: $56
	nop                                              ; $5f6d: $00
	nop                                              ; $5f6e: $00

jr_007_5f6f:
	nop                                              ; $5f6f: $00
	nop                                              ; $5f70: $00
	inc  h                                           ; $5f71: $24
	inc  h                                           ; $5f72: $24
	ld   c, b                                        ; $5f73: $48
	ld   a, [hl]                                     ; $5f74: $7e
	or   h                                           ; $5f75: $b4
	inc  h                                           ; $5f76: $24
	inc  h                                           ; $5f77: $24
	inc  h                                           ; $5f78: $24
	inc  h                                           ; $5f79: $24
	inc  h                                           ; $5f7a: $24
	inc  h                                           ; $5f7b: $24
	inc  l                                           ; $5f7c: $2c
	nop                                              ; $5f7d: $00
	nop                                              ; $5f7e: $00
	nop                                              ; $5f7f: $00
	nop                                              ; $5f80: $00

jr_007_5f81:
	jr   z, jr_007_5f81                              ; $5f81: $28 $fe

	jr   z, jr_007_5f6f                              ; $5f83: $28 $ea

	cp   [hl]                                        ; $5f85: $be
	db   $e4                                         ; $5f86: $e4
	cp   [hl]                                        ; $5f87: $be
	xor  [hl]                                        ; $5f88: $ae
	or   $ac                                         ; $5f89: $f6 $ac
	xor  [hl]                                        ; $5f8b: $ae
	or   h                                           ; $5f8c: $b4
	nop                                              ; $5f8d: $00
	nop                                              ; $5f8e: $00
	nop                                              ; $5f8f: $00
	nop                                              ; $5f90: $00
	db   $10                                         ; $5f91: $10
	ld   a, h                                        ; $5f92: $7c
	ld   b, h                                        ; $5f93: $44
	ld   a, h                                        ; $5f94: $7c
	ld   b, h                                        ; $5f95: $44
	ld   a, [hl]                                     ; $5f96: $7e
	ld   b, b                                        ; $5f97: $40
	ld   a, [hl]                                     ; $5f98: $7e
	ld   [bc], a                                     ; $5f99: $02
	xor  [hl]                                        ; $5f9a: $ae
	xor  d                                           ; $5f9b: $aa
	inc  b                                           ; $5f9c: $04
	nop                                              ; $5f9d: $00
	nop                                              ; $5f9e: $00
	nop                                              ; $5f9f: $00
	nop                                              ; $5fa0: $00
	ld   b, b                                        ; $5fa1: $40
	ld   c, [hl]                                     ; $5fa2: $4e
	ld   [hl], b                                     ; $5fa3: $70
	xor  [hl]                                        ; $5fa4: $ae
	ld   a, [hl+]                                    ; $5fa5: $2a
	ld   a, [$202e]                                  ; $5fa6: $fa $2e $20
	ld   a, d                                        ; $5fa9: $7a
	ld   e, d                                        ; $5faa: $5a
	adc  d                                           ; $5fab: $8a
	ld   e, $00                                      ; $5fac: $1e $00
	nop                                              ; $5fae: $00
	nop                                              ; $5faf: $00
	nop                                              ; $5fb0: $00
	ld   c, b                                        ; $5fb1: $48
	ld   a, [hl]                                     ; $5fb2: $7e
	or   h                                           ; $5fb3: $b4
	nop                                              ; $5fb4: $00
	xor  $4a                                         ; $5fb5: $ee $4a
	ldh  a, [c]                                      ; $5fb7: $f2
	db   $10                                         ; $5fb8: $10
	cp   $38                                         ; $5fb9: $fe $38
	ld   d, h                                        ; $5fbb: $54
	sub  d                                           ; $5fbc: $92
	nop                                              ; $5fbd: $00
	nop                                              ; $5fbe: $00
	nop                                              ; $5fbf: $00
	nop                                              ; $5fc0: $00
	nop                                              ; $5fc1: $00
	cp   [hl]                                        ; $5fc2: $be
	ld   c, d                                        ; $5fc3: $4a
	ld   a, $8a                                      ; $5fc4: $3e $8a
	ld   a, [hl]                                     ; $5fc6: $7e
	inc  d                                           ; $5fc7: $14
	ld   a, [hl]                                     ; $5fc8: $7e
	ld   e, [hl]                                     ; $5fc9: $5e
	sbc  [hl]                                        ; $5fca: $9e
	sub  h                                           ; $5fcb: $94
	sbc  [hl]                                        ; $5fcc: $9e
	nop                                              ; $5fcd: $00
	nop                                              ; $5fce: $00
	nop                                              ; $5fcf: $00
	nop                                              ; $5fd0: $00
	db   $10                                         ; $5fd1: $10
	ld   a, h                                        ; $5fd2: $7c
	db   $10                                         ; $5fd3: $10
	ld   a, h                                        ; $5fd4: $7c
	db   $10                                         ; $5fd5: $10
	cp   $7c                                         ; $5fd6: $fe $7c
	ld   d, h                                        ; $5fd8: $54
	cp   $54                                         ; $5fd9: $fe $54
	ld   a, [hl]                                     ; $5fdb: $7e
	inc  c                                           ; $5fdc: $0c
	nop                                              ; $5fdd: $00
	nop                                              ; $5fde: $00
	nop                                              ; $5fdf: $00
	nop                                              ; $5fe0: $00
	ld   [$7ea8], sp                                 ; $5fe1: $08 $a8 $7e
	ld   l, d                                        ; $5fe4: $6a
	xor  d                                           ; $5fe5: $aa
	ld   a, $68                                      ; $5fe6: $3e $68
	ld   l, b                                        ; $5fe8: $68
	xor  d                                           ; $5fe9: $aa
	ld   l, $ba                                      ; $5fea: $2e $ba
	ld   b, d                                        ; $5fec: $42
	nop                                              ; $5fed: $00
	nop                                              ; $5fee: $00
	nop                                              ; $5fef: $00
	nop                                              ; $5ff0: $00
	xor  $ee                                         ; $5ff1: $ee $ee
	xor  $82                                         ; $5ff3: $ee $82
	or   $8e                                         ; $5ff5: $f6 $8e
	or   $de                                         ; $5ff7: $f6 $de
	or   $d6                                         ; $5ff9: $f6 $d6
	cp   $82                                         ; $5ffb: $fe $82
	nop                                              ; $5ffd: $00
	nop                                              ; $5ffe: $00
	nop                                              ; $5fff: $00
	nop                                              ; $6000: $00
	ld   a, [hl+]                                    ; $6001: $2a
	ld   e, [hl]                                     ; $6002: $5e
	ret  z                                           ; $6003: $c8

	ld   b, [hl]                                     ; $6004: $46
	ld   a, h                                        ; $6005: $7c
	ld   b, h                                        ; $6006: $44
	ld   a, h                                        ; $6007: $7c
	ld   a, h                                        ; $6008: $7c
	ld   b, h                                        ; $6009: $44
	ld   a, h                                        ; $600a: $7c
	jr   z, jr_007_6051                              ; $600b: $28 $44

	nop                                              ; $600d: $00
	nop                                              ; $600e: $00
	nop                                              ; $600f: $00
	nop                                              ; $6010: $00
	ld   a, [hl+]                                    ; $6011: $2a
	ld   e, [hl]                                     ; $6012: $5e
	ret  z                                           ; $6013: $c8

	ld   c, d                                        ; $6014: $4a
	ld   b, [hl]                                     ; $6015: $46
	db   $10                                         ; $6016: $10
	cp   $20                                         ; $6017: $fe $20
	ld   l, d                                        ; $6019: $6a
	xor  h                                           ; $601a: $ac
	inc  [hl]                                        ; $601b: $34
	ld   h, d                                        ; $601c: $62
	nop                                              ; $601d: $00
	nop                                              ; $601e: $00
	nop                                              ; $601f: $00
	nop                                              ; $6020: $00
	ld   a, $52                                      ; $6021: $3e $52
	sbc  [hl]                                        ; $6023: $9e
	ld   [hl-], a                                    ; $6024: $32
	ld   e, [hl]                                     ; $6025: $5e
	ret  nz                                          ; $6026: $c0

	ld   e, [hl]                                     ; $6027: $5e
	ld   b, h                                        ; $6028: $44
	ld   e, [hl]                                     ; $6029: $5e
	ld   d, h                                        ; $602a: $54
	ld   b, h                                        ; $602b: $44
	ld   c, h                                        ; $602c: $4c
	nop                                              ; $602d: $00
	nop                                              ; $602e: $00
	nop                                              ; $602f: $00
	nop                                              ; $6030: $00
	ld   b, b                                        ; $6031: $40
	ld   c, h                                        ; $6032: $4c
	db   $ec                                         ; $6033: $ec
	ld   e, [hl]                                     ; $6034: $5e
	ld   c, [hl]                                     ; $6035: $4e
	db   $ec                                         ; $6036: $ec
	db   $fc                                         ; $6037: $fc
	cp   $ee                                         ; $6038: $fe $ee
	ld   d, h                                        ; $603a: $54
	ld   d, h                                        ; $603b: $54
	ld   h, [hl]                                     ; $603c: $66
	nop                                              ; $603d: $00
	nop                                              ; $603e: $00
	nop                                              ; $603f: $00
	nop                                              ; $6040: $00
	ld   c, b                                        ; $6041: $48
	add  sp, $5e                                     ; $6042: $e8 $5e
	ld   [$ba4a], a                                  ; $6044: $ea $4a $ba
	ld   c, [hl]                                     ; $6047: $4e
	ld   [$e252], a                                  ; $6048: $ea $52 $e2
	nop                                              ; $604b: $00
	xor  d                                           ; $604c: $aa
	nop                                              ; $604d: $00
	nop                                              ; $604e: $00
	nop                                              ; $604f: $00
	nop                                              ; $6050: $00

jr_007_6051:
	ld   b, h                                        ; $6051: $44
	ld   b, [hl]                                     ; $6052: $46
	ld   a, h                                        ; $6053: $7c
	xor  $d4                                         ; $6054: $ee $d4
	db   $ec                                         ; $6056: $ec
	call c, Call_007_724a                            ; $6057: $dc $4a $72
	ld   h, b                                        ; $605a: $60
	xor  d                                           ; $605b: $aa
	xor  d                                           ; $605c: $aa
	nop                                              ; $605d: $00
	nop                                              ; $605e: $00
	nop                                              ; $605f: $00
	nop                                              ; $6060: $00
	nop                                              ; $6061: $00
	cp   $12                                         ; $6062: $fe $12
	ld   h, d                                        ; $6064: $62
	ld   [hl+], a                                    ; $6065: $22
	ld   d, d                                        ; $6066: $52
	add  h                                           ; $6067: $84
	nop                                              ; $6068: $00
	ld   d, h                                        ; $6069: $54
	ld   c, d                                        ; $606a: $4a
	and  d                                           ; $606b: $a2
	sbc  [hl]                                        ; $606c: $9e
	nop                                              ; $606d: $00
	nop                                              ; $606e: $00
	nop                                              ; $606f: $00
	nop                                              ; $6070: $00
	nop                                              ; $6071: $00
	db   $10                                         ; $6072: $10
	db   $10                                         ; $6073: $10
	cp   $02                                         ; $6074: $fe $02
	inc  b                                           ; $6076: $04
	inc  b                                           ; $6077: $04
	ld   [$6050], sp                                 ; $6078: $08 $50 $60
	ld   h, b                                        ; $607b: $60
	sbc  [hl]                                        ; $607c: $9e
	nop                                              ; $607d: $00
	nop                                              ; $607e: $00
	nop                                              ; $607f: $00
	nop                                              ; $6080: $00
	ld   b, b                                        ; $6081: $40
	db   $e4                                         ; $6082: $e4
	ld   d, $fe                                      ; $6083: $16 $fe
	inc  c                                           ; $6085: $0c
	xor  $14                                         ; $6086: $ee $14
	cp   $be                                         ; $6088: $fe $be
	or   h                                           ; $608a: $b4
	or   b                                           ; $608b: $b0
	xor  $00                                         ; $608c: $ee $00
	nop                                              ; $608e: $00
	nop                                              ; $608f: $00
	nop                                              ; $6090: $00
	nop                                              ; $6091: $00
	nop                                              ; $6092: $00
	nop                                              ; $6093: $00
	ld   a, h                                        ; $6094: $7c
	nop                                              ; $6095: $00
	nop                                              ; $6096: $00
	nop                                              ; $6097: $00
	nop                                              ; $6098: $00
	nop                                              ; $6099: $00
	nop                                              ; $609a: $00
	cp   $00                                         ; $609b: $fe $00
	nop                                              ; $609d: $00
	nop                                              ; $609e: $00
	nop                                              ; $609f: $00
	nop                                              ; $60a0: $00
	add  b                                           ; $60a1: $80
	ld   e, [hl]                                     ; $60a2: $5e
	ld   c, d                                        ; $60a3: $4a
	ld   a, [bc]                                     ; $60a4: $0a
	ld   [$2a2a], a                                  ; $60a5: $ea $2a $2a
	ld   c, d                                        ; $60a8: $4a
	ld   d, d                                        ; $60a9: $52
	ld   b, [hl]                                     ; $60aa: $46
	ldh  a, [$9e]                                    ; $60ab: $f0 $9e
	nop                                              ; $60ad: $00
	nop                                              ; $60ae: $00
	nop                                              ; $60af: $00
	nop                                              ; $60b0: $00
	db   $e4                                         ; $60b1: $e4
	and  h                                           ; $60b2: $a4
	cp   [hl]                                        ; $60b3: $be
	ret  z                                           ; $60b4: $c8

	xor  [hl]                                        ; $60b5: $ae
	xor  d                                           ; $60b6: $aa
	xor  d                                           ; $60b7: $aa
	jp   z, $928a                                    ; $60b8: $ca $8a $92

	sub  d                                           ; $60bb: $92
	and  [hl]                                        ; $60bc: $a6
	nop                                              ; $60bd: $00
	nop                                              ; $60be: $00
	nop                                              ; $60bf: $00
	nop                                              ; $60c0: $00
	ld   c, [hl]                                     ; $60c1: $4e
	ld   [$e0aa], a                                  ; $60c2: $ea $aa $e0
	xor  $aa                                         ; $60c5: $ee $aa
	and  h                                           ; $60c7: $a4
	ld   a, [bc]                                     ; $60c8: $0a
	ld   a, h                                        ; $60c9: $7c
	ld   l, h                                        ; $60ca: $6c
	ld   l, h                                        ; $60cb: $6c
	cp   $00                                         ; $60cc: $fe $00
	nop                                              ; $60ce: $00
	nop                                              ; $60cf: $00
	nop                                              ; $60d0: $00
	ld   e, [hl]                                     ; $60d1: $5e
	ld   d, d                                        ; $60d2: $52
	ld   e, [hl]                                     ; $60d3: $5e
	cp   $f4                                         ; $60d4: $fe $f4
	cp   $d4                                         ; $60d6: $fe $d4
	ld   a, [hl]                                     ; $60d8: $7e
	ld   d, h                                        ; $60d9: $54
	ld   l, d                                        ; $60da: $6a
	cp   h                                           ; $60db: $bc
	xor  d                                           ; $60dc: $aa
	nop                                              ; $60dd: $00
	nop                                              ; $60de: $00
	nop                                              ; $60df: $00
	nop                                              ; $60e0: $00
	ld   d, h                                        ; $60e1: $54
	ld   d, h                                        ; $60e2: $54
	ld   a, [hl]                                     ; $60e3: $7e
	db   $f4                                         ; $60e4: $f4
	ld   b, b                                        ; $60e5: $40
	ld   a, [hl]                                     ; $60e6: $7e
	ld   l, d                                        ; $60e7: $6a
	ld   [$6a7e], a                                  ; $60e8: $ea $7e $6a
	ld   l, d                                        ; $60eb: $6a
	cp   $00                                         ; $60ec: $fe $00
	nop                                              ; $60ee: $00
	nop                                              ; $60ef: $00
	nop                                              ; $60f0: $00
	nop                                              ; $60f1: $00
	cp   $10                                         ; $60f2: $fe $10
	jr   nc, jr_007_614a                             ; $60f4: $30 $54

	sub  d                                           ; $60f6: $92
	nop                                              ; $60f7: $00
	ld   a, h                                        ; $60f8: $7c
	ld   b, h                                        ; $60f9: $44
	ld   b, h                                        ; $60fa: $44
	ld   b, h                                        ; $60fb: $44
	ld   a, h                                        ; $60fc: $7c
	nop                                              ; $60fd: $00
	nop                                              ; $60fe: $00
	nop                                              ; $60ff: $00
	nop                                              ; $6100: $00
	ld   [$407e], sp                                 ; $6101: $08 $7e $40
	cp   $c8                                         ; $6104: $fe $c8
	ld   a, [hl]                                     ; $6106: $7e
	ld   l, d                                        ; $6107: $6a
	ld   [$62f6], a                                  ; $6108: $ea $f6 $62
	ld   h, d                                        ; $610b: $62
	and  [hl]                                        ; $610c: $a6
	nop                                              ; $610d: $00
	nop                                              ; $610e: $00
	nop                                              ; $610f: $00
	nop                                              ; $6110: $00
	nop                                              ; $6111: $00
	xor  [hl]                                        ; $6112: $ae
	ld   l, d                                        ; $6113: $6a
	ld   e, d                                        ; $6114: $5a
	cp   d                                           ; $6115: $ba
	ld   a, [hl+]                                    ; $6116: $2a
	ld   l, d                                        ; $6117: $6a
	ld   l, b                                        ; $6118: $68
	xor  b                                           ; $6119: $a8
	jr   z, @-$54                                    ; $611a: $28 $aa

	ld   c, [hl]                                     ; $611c: $4e
	nop                                              ; $611d: $00
	nop                                              ; $611e: $00
	nop                                              ; $611f: $00
	nop                                              ; $6120: $00
	db   $10                                         ; $6121: $10
	sub  b                                           ; $6122: $90
	ld   e, [hl]                                     ; $6123: $5e
	ld   [hl+], a                                    ; $6124: $22
	cp   [hl]                                        ; $6125: $be
	ld   b, h                                        ; $6126: $44
	inc  b                                           ; $6127: $04
	ld   e, h                                        ; $6128: $5c
	ld   d, b                                        ; $6129: $50
	sub  b                                           ; $612a: $90
	sub  d                                           ; $612b: $92
	sbc  [hl]                                        ; $612c: $9e
	nop                                              ; $612d: $00
	nop                                              ; $612e: $00
	nop                                              ; $612f: $00
	nop                                              ; $6130: $00
	ld   b, h                                        ; $6131: $44
	ld   b, h                                        ; $6132: $44
	db   $e4                                         ; $6133: $e4
	ld   e, [hl]                                     ; $6134: $5e
	ld   b, h                                        ; $6135: $44
	db   $e4                                         ; $6136: $e4
	ld   d, h                                        ; $6137: $54
	ld   c, h                                        ; $6138: $4c
	db   $e4                                         ; $6139: $e4
	ld   b, h                                        ; $613a: $44
	ld   h, h                                        ; $613b: $64
	call z, $0000                                   ; $613c: $cc $00 $00
	nop                                              ; $613f: $00
	nop                                              ; $6140: $00
	jr   nz, jr_007_6181                             ; $6141: $20 $3e

	ld   c, b                                        ; $6143: $48
	ld   a, [hl]                                     ; $6144: $7e
	ld   [$6a7e], a                                  ; $6145: $ea $7e $6a
	ld   a, [hl]                                     ; $6148: $7e
	ld   e, b                                        ; $6149: $58

jr_007_614a:
	ld   c, b                                        ; $614a: $48
	ld   d, h                                        ; $614b: $54
	ld   h, d                                        ; $614c: $62
	nop                                              ; $614d: $00
	nop                                              ; $614e: $00
	nop                                              ; $614f: $00
	nop                                              ; $6150: $00
	db   $10                                         ; $6151: $10
	cp   $ba                                         ; $6152: $fe $ba
	nop                                              ; $6154: $00
	ld   a, h                                        ; $6155: $7c
	ld   b, h                                        ; $6156: $44
	ld   a, h                                        ; $6157: $7c
	cp   $92                                         ; $6158: $fe $92
	cp   $92                                         ; $615a: $fe $92
	cp   $00                                         ; $615c: $fe $00
	nop                                              ; $615e: $00
	nop                                              ; $615f: $00
	nop                                              ; $6160: $00
	nop                                              ; $6161: $00
	adc  b                                           ; $6162: $88
	ld   c, b                                        ; $6163: $48
	db   $10                                         ; $6164: $10
	sbc  [hl]                                        ; $6165: $9e
	ld   d, h                                        ; $6166: $54
	inc  d                                           ; $6167: $14
	ld   d, h                                        ; $6168: $54
	ld   a, [hl]                                     ; $6169: $7e
	add  b                                           ; $616a: $80
	sub  h                                           ; $616b: $94
	and  d                                           ; $616c: $a2
	nop                                              ; $616d: $00
	nop                                              ; $616e: $00
	nop                                              ; $616f: $00
	nop                                              ; $6170: $00
	ld   b, b                                        ; $6171: $40
	ld   b, h                                        ; $6172: $44
	ld   b, h                                        ; $6173: $44
	db   $e4                                         ; $6174: $e4
	ld   c, b                                        ; $6175: $48
	ld   c, b                                        ; $6176: $48
	ld   l, b                                        ; $6177: $68
	ret  z                                           ; $6178: $c8

	ld   d, d                                        ; $6179: $52
	ld   d, d                                        ; $617a: $52
	ld   a, [hl]                                     ; $617b: $7e
	ldh  [c], a                                      ; $617c: $e2
	nop                                              ; $617d: $00
	nop                                              ; $617e: $00
	nop                                              ; $617f: $00
	nop                                              ; $6180: $00

jr_007_6181:
	db   $10                                         ; $6181: $10
	ld   a, h                                        ; $6182: $7c
	db   $10                                         ; $6183: $10
	ld   a, h                                        ; $6184: $7c
	db   $10                                         ; $6185: $10
	cp   $20                                         ; $6186: $fe $20
	ld   l, b                                        ; $6188: $68
	xor  d                                           ; $6189: $aa
	inc  l                                           ; $618a: $2c
	inc  a                                           ; $618b: $3c
	ld   h, d                                        ; $618c: $62
	nop                                              ; $618d: $00
	nop                                              ; $618e: $00
	nop                                              ; $618f: $00
	nop                                              ; $6190: $00
	nop                                              ; $6191: $00
	ld   c, b                                        ; $6192: $48
	ld   c, b                                        ; $6193: $48
	ld   c, b                                        ; $6194: $48
	ld   a, [hl]                                     ; $6195: $7e
	ld   b, b                                        ; $6196: $40
	ld   b, b                                        ; $6197: $40
	ld   a, h                                        ; $6198: $7c
	ld   b, h                                        ; $6199: $44
	ld   b, h                                        ; $619a: $44
	add  h                                           ; $619b: $84
	add  h                                           ; $619c: $84
	nop                                              ; $619d: $00
	nop                                              ; $619e: $00
	nop                                              ; $619f: $00
	nop                                              ; $61a0: $00
	db   $10                                         ; $61a1: $10
	cp   $10                                         ; $61a2: $fe $10
	ld   a, h                                        ; $61a4: $7c
	nop                                              ; $61a5: $00
	cp   $82                                         ; $61a6: $fe $82
	xor  d                                           ; $61a8: $aa
	jr   z, jr_007_61d3                              ; $61a9: $28 $28

	ld   c, d                                        ; $61ab: $4a
	add  [hl]                                        ; $61ac: $86
	nop                                              ; $61ad: $00
	nop                                              ; $61ae: $00
	nop                                              ; $61af: $00
	nop                                              ; $61b0: $00
	inc  d                                           ; $61b1: $14
	or   h                                           ; $61b2: $b4
	ld   a, [hl]                                     ; $61b3: $7e
	ld   d, h                                        ; $61b4: $54
	and  b                                           ; $61b5: $a0
	ld   a, $6a                                      ; $61b6: $3e $6a
	ld   l, d                                        ; $61b8: $6a
	cp   [hl]                                        ; $61b9: $be
	ld   a, [hl+]                                    ; $61ba: $2a
	xor  d                                           ; $61bb: $aa
	ld   a, [hl]                                     ; $61bc: $7e
	nop                                              ; $61bd: $00
	nop                                              ; $61be: $00
	nop                                              ; $61bf: $00
	nop                                              ; $61c0: $00
	db   $10                                         ; $61c1: $10
	db   $10                                         ; $61c2: $10
	ld   a, [hl]                                     ; $61c3: $7e
	ld   d, d                                        ; $61c4: $52
	ld   d, b                                        ; $61c5: $50
	ld   a, h                                        ; $61c6: $7c
	ld   b, h                                        ; $61c7: $44
	ld   h, h                                        ; $61c8: $64
	ld   l, b                                        ; $61c9: $68
	ld   e, b                                        ; $61ca: $58
	sbc  b                                           ; $61cb: $98
	and  $00                                         ; $61cc: $e6 $00
	nop                                              ; $61ce: $00
	nop                                              ; $61cf: $00
	nop                                              ; $61d0: $00
	jr   z, jr_007_621b                              ; $61d1: $28 $48

jr_007_61d3:
	cp   [hl]                                        ; $61d3: $be
	ld   a, [hl+]                                    ; $61d4: $2a
	ld   l, b                                        ; $61d5: $68
	cp   $62                                         ; $61d6: $fe $62
	ld   [hl], d                                     ; $61d8: $72
	ld   [hl], h                                     ; $61d9: $74
	ld   l, h                                        ; $61da: $6c
	ld   c, h                                        ; $61db: $4c
	ld   d, d                                        ; $61dc: $52
	nop                                              ; $61dd: $00
	nop                                              ; $61de: $00
	nop                                              ; $61df: $00
	nop                                              ; $61e0: $00
	nop                                              ; $61e1: $00
	ld   c, b                                        ; $61e2: $48
	ld   c, b                                        ; $61e3: $48
	ld   c, b                                        ; $61e4: $48
	ld   a, d                                        ; $61e5: $7a
	ld   c, h                                        ; $61e6: $4c
	ld   c, b                                        ; $61e7: $48
	ld   c, b                                        ; $61e8: $48
	ld   c, b                                        ; $61e9: $48
	ld   e, b                                        ; $61ea: $58
	ld   l, d                                        ; $61eb: $6a
	adc  $00                                         ; $61ec: $ce $00
	nop                                              ; $61ee: $00
	nop                                              ; $61ef: $00
	nop                                              ; $61f0: $00
	ld   a, [hl]                                     ; $61f1: $7e
	ld   d, h                                        ; $61f2: $54
	cp   $76                                         ; $61f3: $fe $76
	ld   a, [hl]                                     ; $61f5: $7e
	ldh  [$fe], a                                    ; $61f6: $e0 $fe
	ldh  [$fe], a                                    ; $61f8: $e0 $fe
	ld   c, b                                        ; $61fa: $48
	ld   l, d                                        ; $61fb: $6a
	ld   l, d                                        ; $61fc: $6a
	nop                                              ; $61fd: $00
	nop                                              ; $61fe: $00
	nop                                              ; $61ff: $00
	nop                                              ; $6200: $00
	ld   d, b                                        ; $6201: $50
	ld   d, b                                        ; $6202: $50
	cp   $60                                         ; $6203: $fe $60
	ld   a, [hl]                                     ; $6205: $7e
	ld   [$eafe], a                                  ; $6206: $ea $fe $ea
	ld   [$427e], a                                  ; $6209: $ea $7e $42
	ld   c, h                                        ; $620c: $4c
	nop                                              ; $620d: $00
	nop                                              ; $620e: $00
	nop                                              ; $620f: $00
	nop                                              ; $6210: $00
	ld   d, b                                        ; $6211: $50
	ld   d, b                                        ; $6212: $50
	ld   e, [hl]                                     ; $6213: $5e
	ldh  [c], a                                      ; $6214: $e2
	ld   a, [hl]                                     ; $6215: $7e
	ld   b, h                                        ; $6216: $44
	ld   h, h                                        ; $6217: $64
	call c, Call_007_5050                            ; $6218: $dc $50 $50

jr_007_621b:
	ld   d, d                                        ; $621b: $52
	sbc  $00                                         ; $621c: $de $00
	nop                                              ; $621e: $00
	nop                                              ; $621f: $00
	nop                                              ; $6220: $00
	ld   c, $a2                                      ; $6221: $0e $a2
	ld   h, h                                        ; $6223: $64
	ld   d, d                                        ; $6224: $52
	cp   [hl]                                        ; $6225: $be
	ld   [hl+], a                                    ; $6226: $22
	ld   h, h                                        ; $6227: $64
	ld   h, b                                        ; $6228: $60
	xor  [hl]                                        ; $6229: $ae
	ld   l, $ae                                      ; $622a: $2e $ae
	ld   e, [hl]                                     ; $622c: $5e
	nop                                              ; $622d: $00
	nop                                              ; $622e: $00
	nop                                              ; $622f: $00
	nop                                              ; $6230: $00
	ld   a, h                                        ; $6231: $7c
	db   $10                                         ; $6232: $10
	cp   $92                                         ; $6233: $fe $92
	ld   a, h                                        ; $6235: $7c
	db   $10                                         ; $6236: $10
	xor  $4a                                         ; $6237: $ee $4a
	db   $e4                                         ; $6239: $e4
	ld   l, d                                        ; $623a: $6a
	sbc  $4a                                         ; $623b: $de $4a
	nop                                              ; $623d: $00
	nop                                              ; $623e: $00
	nop                                              ; $623f: $00
	nop                                              ; $6240: $00
	db   $10                                         ; $6241: $10
	db   $10                                         ; $6242: $10
	ld   a, h                                        ; $6243: $7c
	db   $10                                         ; $6244: $10
	db   $10                                         ; $6245: $10
	cp   $10                                         ; $6246: $fe $10
	jr   c, jr_007_6282                              ; $6248: $38 $38

	ld   d, h                                        ; $624a: $54
	sub  d                                           ; $624b: $92
	stop                                             ; $624c: $10 $00
	nop                                              ; $624e: $00
	nop                                              ; $624f: $00
	nop                                              ; $6250: $00
	db   $10                                         ; $6251: $10
	db   $10                                         ; $6252: $10
	jr   z, @+$46                                    ; $6253: $28 $44

	cp   $00                                         ; $6255: $fe $00
	xor  $aa                                         ; $6257: $ee $aa
	xor  d                                           ; $6259: $aa
	ld   [$0808], a                                  ; $625a: $ea $08 $08
	nop                                              ; $625d: $00
	nop                                              ; $625e: $00
	nop                                              ; $625f: $00
	nop                                              ; $6260: $00
	adc  b                                           ; $6261: $88
	adc  b                                           ; $6262: $88
	cp   $a8                                         ; $6263: $fe $a8
	xor  b                                           ; $6265: $a8
	cp   [hl]                                        ; $6266: $be
	xor  b                                           ; $6267: $a8
	xor  b                                           ; $6268: $a8
	cp   h                                           ; $6269: $bc
	call c, $aa5c                                    ; $626a: $dc $5c $aa
	nop                                              ; $626d: $00
	nop                                              ; $626e: $00
	nop                                              ; $626f: $00
	nop                                              ; $6270: $00
	ld   b, b                                        ; $6271: $40
	cp   $12                                         ; $6272: $fe $12
	ldh  a, [c]                                      ; $6274: $f2
	ld   [de], a                                     ; $6275: $12
	cp   $14                                         ; $6276: $fe $14
	db   $f4                                         ; $6278: $f4
	or   h                                           ; $6279: $b4
	or   h                                           ; $627a: $b4
	and  h                                           ; $627b: $a4
	ldh  [c], a                                      ; $627c: $e2
	nop                                              ; $627d: $00

Call_007_627e:
	nop                                              ; $627e: $00
	nop                                              ; $627f: $00
	nop                                              ; $6280: $00
	ld   d, h                                        ; $6281: $54

jr_007_6282:
	ld   d, h                                        ; $6282: $54
	ldh  [c], a                                      ; $6283: $e2
	jr   z, jr_007_62ae                              ; $6284: $28 $28

	ld   d, h                                        ; $6286: $54
	ldh  [c], a                                      ; $6287: $e2
	ld   e, h                                        ; $6288: $5c
	ld   d, h                                        ; $6289: $54
	ld   d, h                                        ; $628a: $54
	ld   d, h                                        ; $628b: $54
	ld   e, h                                        ; $628c: $5c
	nop                                              ; $628d: $00
	nop                                              ; $628e: $00
	nop                                              ; $628f: $00
	nop                                              ; $6290: $00
	ld   a, h                                        ; $6291: $7c
	inc  h                                           ; $6292: $24

jr_007_6293:
	jr   jr_007_6293                                 ; $6293: $18 $fe

	sub  d                                           ; $6295: $92
	cp   $92                                         ; $6296: $fe $92
	cp   $20                                         ; $6298: $fe $20
	cp   $22                                         ; $629a: $fe $22
	adc  $00                                         ; $629c: $ce $00
	nop                                              ; $629e: $00
	nop                                              ; $629f: $00
	nop                                              ; $62a0: $00
	ld   b, b                                        ; $62a1: $40
	ld   b, b                                        ; $62a2: $40
	ld   a, h                                        ; $62a3: $7c
	ld   d, b                                        ; $62a4: $50
	sub  b                                           ; $62a5: $90
	db   $10                                         ; $62a6: $10
	cp   $10                                         ; $62a7: $fe $10
	jr   z, jr_007_62d3                              ; $62a9: $28 $28

	ld   b, h                                        ; $62ab: $44
	add  d                                           ; $62ac: $82
	nop                                              ; $62ad: $00

jr_007_62ae:
	nop                                              ; $62ae: $00
	nop                                              ; $62af: $00
	nop                                              ; $62b0: $00
	cp   $b2                                         ; $62b1: $fe $b2
	cp   [hl]                                        ; $62b3: $be
	jp   nc, $a0be                                   ; $62b4: $d2 $be $a0

	cp   [hl]                                        ; $62b7: $be
	ret  nc                                          ; $62b8: $d0

	cp   [hl]                                        ; $62b9: $be
	sub  $aa                                         ; $62ba: $d6 $aa
	sub  h                                           ; $62bc: $94
	nop                                              ; $62bd: $00
	nop                                              ; $62be: $00
	nop                                              ; $62bf: $00
	nop                                              ; $62c0: $00
	ld   c, b                                        ; $62c1: $48
	ld   d, h                                        ; $62c2: $54
	ldh  [c], a                                      ; $62c3: $e2
	ld   e, h                                        ; $62c4: $5c
	ldh  [$fa], a                                    ; $62c5: $e0 $fa
	ld   [$6afa], a                                  ; $62c7: $ea $fa $6a
	ld   a, [$6a6a]                                  ; $62ca: $fa $6a $6a
	nop                                              ; $62cd: $00
	nop                                              ; $62ce: $00
	nop                                              ; $62cf: $00
	nop                                              ; $62d0: $00
	ld   c, h                                        ; $62d1: $4c
	ld   d, h                                        ; $62d2: $54

jr_007_62d3:
	cp   $54                                         ; $62d3: $fe $54
	ld   d, h                                        ; $62d5: $54
	sbc  $d4                                         ; $62d6: $de $d4
	ld   d, h                                        ; $62d8: $54
	cp   [hl]                                        ; $62d9: $be
	db   $f4                                         ; $62da: $f4
	inc  d                                           ; $62db: $14
	ld   e, $00                                      ; $62dc: $1e $00
	nop                                              ; $62de: $00
	nop                                              ; $62df: $00
	nop                                              ; $62e0: $00
	db   $10                                         ; $62e1: $10
	ld   [de], a                                     ; $62e2: $12
	ld   a, [hl]                                     ; $62e3: $7e
	inc  d                                           ; $62e4: $14

jr_007_62e5:
	jr   jr_007_62e5                                 ; $62e5: $18 $fe

	jr   nz, jr_007_634d                             ; $62e7: $20 $64

	cp   b                                           ; $62e9: $b8
	jr   nz, jr_007_630e                             ; $62ea: $20 $22

	ld   e, $00                                      ; $62ec: $1e $00
	nop                                              ; $62ee: $00
	nop                                              ; $62ef: $00
	nop                                              ; $62f0: $00
	db   $10                                         ; $62f1: $10
	cp   $a0                                         ; $62f2: $fe $a0
	cp   $da                                         ; $62f4: $fe $da
	ld   a, [$fadc]                                  ; $62f6: $fa $dc $fa
	jp   z, $fcda                                    ; $62f9: $ca $da $fc

	adc  b                                           ; $62fc: $88
	nop                                              ; $62fd: $00
	nop                                              ; $62fe: $00
	nop                                              ; $62ff: $00
	nop                                              ; $6300: $00
	add  sp, -$42                                    ; $6301: $e8 $be
	xor  b                                           ; $6303: $a8
	ret  z                                           ; $6304: $c8

	cp   [hl]                                        ; $6305: $be
	or   h                                           ; $6306: $b4
	and  [hl]                                        ; $6307: $a6
	ret  z                                           ; $6308: $c8

	sbc  h                                           ; $6309: $9c
	adc  b                                           ; $630a: $88
	adc  b                                           ; $630b: $88
	cp   [hl]                                        ; $630c: $be
	nop                                              ; $630d: $00

jr_007_630e:
	nop                                              ; $630e: $00
	nop                                              ; $630f: $00
	nop                                              ; $6310: $00
	ld   c, [hl]                                     ; $6311: $4e
	ld   hl, sp-$52                                  ; $6312: $f8 $ae
	ldh  a, [c]                                      ; $6314: $f2
	ld   c, $e8                                      ; $6315: $0e $e8
	xor  [hl]                                        ; $6317: $ae
	xor  $ae                                         ; $6318: $ee $ae
	add  sp, -$56                                    ; $631a: $e8 $aa
	xor  [hl]                                        ; $631c: $ae
	nop                                              ; $631d: $00
	nop                                              ; $631e: $00
	nop                                              ; $631f: $00
	nop                                              ; $6320: $00
	ld   [$72be], sp                                 ; $6321: $08 $be $72
	ld   e, [hl]                                     ; $6324: $5e
	or   d                                           ; $6325: $b2
	ld   a, $70                                      ; $6326: $3e $70
	ld   a, d                                        ; $6328: $7a
	cp   d                                           ; $6329: $ba
	inc  [hl]                                        ; $632a: $34
	or   h                                           ; $632b: $b4
	ld   e, d                                        ; $632c: $5a
	nop                                              ; $632d: $00
	nop                                              ; $632e: $00
	nop                                              ; $632f: $00
	nop                                              ; $6330: $00
	nop                                              ; $6331: $00
	ld   a, h                                        ; $6332: $7c
	ld   b, h                                        ; $6333: $44
	ld   b, h                                        ; $6334: $44
	ld   a, h                                        ; $6335: $7c
	db   $10                                         ; $6336: $10

jr_007_6337:
	jr   nz, jr_007_6337                             ; $6337: $20 $fe

	add  d                                           ; $6339: $82
	add  d                                           ; $633a: $82
	add  d                                           ; $633b: $82
	cp   $00                                         ; $633c: $fe $00
	nop                                              ; $633e: $00
	nop                                              ; $633f: $00
	nop                                              ; $6340: $00
	ld   l, $4a                                      ; $6341: $2e $4a
	sbc  d                                           ; $6343: $9a
	db   $e4                                         ; $6344: $e4
	ld   b, h                                        ; $6345: $44
	xor  d                                           ; $6346: $aa
	ldh  a, [c]                                      ; $6347: $f2
	ld   c, [hl]                                     ; $6348: $4e
	ld   [$eaea], a                                  ; $6349: $ea $ea $ea
	ld   c, [hl]                                     ; $634c: $4e

jr_007_634d:
	nop                                              ; $634d: $00
	nop                                              ; $634e: $00
	nop                                              ; $634f: $00
	nop                                              ; $6350: $00
	ld   l, [hl]                                     ; $6351: $6e
	ld   h, h                                        ; $6352: $64
	sbc  [hl]                                        ; $6353: $9e
	ld   a, [$fa0e]                                  ; $6354: $fa $0e $fa
	ld   e, [hl]                                     ; $6357: $5e
	ld   e, d                                        ; $6358: $5a
	ld   e, [hl]                                     ; $6359: $5e
	ld   [hl], b                                     ; $635a: $70
	ld   b, h                                        ; $635b: $44
	ld   c, d                                        ; $635c: $4a
	nop                                              ; $635d: $00
	nop                                              ; $635e: $00
	nop                                              ; $635f: $00
	nop                                              ; $6360: $00
	inc  e                                           ; $6361: $1c
	db   $10                                         ; $6362: $10
	ld   a, [hl]                                     ; $6363: $7e
	ld   d, d                                        ; $6364: $52
	ld   a, h                                        ; $6365: $7c
	ld   d, b                                        ; $6366: $50
	ld   a, h                                        ; $6367: $7c
	ld   a, h                                        ; $6368: $7c
	ld   a, h                                        ; $6369: $7c
	adc  d                                           ; $636a: $8a
	and  h                                           ; $636b: $a4
	ld   e, h                                        ; $636c: $5c
	nop                                              ; $636d: $00
	nop                                              ; $636e: $00
	nop                                              ; $636f: $00
	nop                                              ; $6370: $00
	ld   [$62be], sp                                 ; $6371: $08 $be $62
	ld   a, $a2                                      ; $6374: $3e $a2
	ld   a, [hl]                                     ; $6376: $7e
	jr   nz, jr_007_63e1                             ; $6377: $20 $68

	ld   l, d                                        ; $6379: $6a
	and  h                                           ; $637a: $a4
	xor  h                                           ; $637b: $ac
	or   d                                           ; $637c: $b2
	nop                                              ; $637d: $00
	nop                                              ; $637e: $00
	nop                                              ; $637f: $00
	nop                                              ; $6380: $00
	ld   c, b                                        ; $6381: $48
	ld   e, [hl]                                     ; $6382: $5e
	ld   c, b                                        ; $6383: $48
	cp   $fa                                         ; $6384: $fe $fa
	cp   $da                                         ; $6386: $fe $da
	ld   e, [hl]                                     ; $6388: $5e
	ld   c, b                                        ; $6389: $48
	ld   a, h                                        ; $638a: $7c
	cp   h                                           ; $638b: $bc
	xor  d                                           ; $638c: $aa
	nop                                              ; $638d: $00
	nop                                              ; $638e: $00
	nop                                              ; $638f: $00
	nop                                              ; $6390: $00
	nop                                              ; $6391: $00
	ldh  a, [c]                                      ; $6392: $f2
	ld   c, d                                        ; $6393: $4a
	ld   c, d                                        ; $6394: $4a
	ld   a, d                                        ; $6395: $7a
	ld   e, d                                        ; $6396: $5a
	jp   c, $12b2                                    ; $6397: $da $b2 $12

	ld   [hl+], a                                    ; $639a: $22
	ld   [hl+], a                                    ; $639b: $22
	ld   b, [hl]                                     ; $639c: $46
	nop                                              ; $639d: $00
	nop                                              ; $639e: $00
	nop                                              ; $639f: $00
	nop                                              ; $63a0: $00
	nop                                              ; $63a1: $00
	cp   $10                                         ; $63a2: $fe $10
	db   $10                                         ; $63a4: $10
	cp   $92                                         ; $63a5: $fe $92
	sub  $d6                                         ; $63a7: $d6 $d6
	sub  $fe                                         ; $63a9: $d6 $fe
	add  d                                           ; $63ab: $82
	add  [hl]                                        ; $63ac: $86
	nop                                              ; $63ad: $00
	nop                                              ; $63ae: $00
	nop                                              ; $63af: $00
	nop                                              ; $63b0: $00
	jr   z, jr_007_63f1                              ; $63b1: $28 $3e

	ld   c, d                                        ; $63b3: $4a
	cp   $5e                                         ; $63b4: $fe $5e
	ld   d, d                                        ; $63b6: $52
	ld   e, [hl]                                     ; $63b7: $5e
	ld   b, h                                        ; $63b8: $44
	ld   e, [hl]                                     ; $63b9: $5e
	ld   d, h                                        ; $63ba: $54
	ld   a, [hl]                                     ; $63bb: $7e
	ld   b, h                                        ; $63bc: $44
	nop                                              ; $63bd: $00
	nop                                              ; $63be: $00
	nop                                              ; $63bf: $00
	nop                                              ; $63c0: $00
	db   $10                                         ; $63c1: $10
	cp   $82                                         ; $63c2: $fe $82
	ld   a, h                                        ; $63c4: $7c
	ld   b, h                                        ; $63c5: $44
	ld   a, h                                        ; $63c6: $7c
	ld   a, h                                        ; $63c7: $7c

jr_007_63c8:
	jr   nz, jr_007_63c8                             ; $63c8: $20 $fe

	ld   b, h                                        ; $63ca: $44
	jr   c, jr_007_6431                              ; $63cb: $38 $64

	nop                                              ; $63cd: $00
	nop                                              ; $63ce: $00
	nop                                              ; $63cf: $00
	nop                                              ; $63d0: $00
	ld   a, [$fc8a]                                  ; $63d1: $fa $8a $fc
	adc  b                                           ; $63d4: $88
	ld   a, [$fc22]                                  ; $63d5: $fa $22 $fc
	ld   [hl], b                                     ; $63d8: $70
	ld   d, d                                        ; $63d9: $52
	ld   [hl], d                                     ; $63da: $72
	xor  h                                           ; $63db: $ac
	xor  b                                           ; $63dc: $a8
	nop                                              ; $63dd: $00
	nop                                              ; $63de: $00
	nop                                              ; $63df: $00
	nop                                              ; $63e0: $00

jr_007_63e1:
	nop                                              ; $63e1: $00
	cp   $92                                         ; $63e2: $fe $92
	cp   $92                                         ; $63e4: $fe $92
	xor  d                                           ; $63e6: $aa
	cp   $00                                         ; $63e7: $fe $00
	ld   d, h                                        ; $63e9: $54
	ld   c, d                                        ; $63ea: $4a
	and  d                                           ; $63eb: $a2
	sbc  [hl]                                        ; $63ec: $9e
	nop                                              ; $63ed: $00
	nop                                              ; $63ee: $00
	nop                                              ; $63ef: $00
	nop                                              ; $63f0: $00

jr_007_63f1:
	ld   a, h                                        ; $63f1: $7c
	ld   b, h                                        ; $63f2: $44
	ld   a, h                                        ; $63f3: $7c
	ld   b, h                                        ; $63f4: $44
	cp   $92                                         ; $63f5: $fe $92
	ld   a, h                                        ; $63f7: $7c
	ld   a, h                                        ; $63f8: $7c
	nop                                              ; $63f9: $00
	cp   $24                                         ; $63fa: $fe $24
	ld   a, h                                        ; $63fc: $7c
	nop                                              ; $63fd: $00
	nop                                              ; $63fe: $00
	nop                                              ; $63ff: $00
	nop                                              ; $6400: $00
	ld   [$2ee8], sp                                 ; $6401: $08 $e8 $2e
	ld   [hl-], a                                    ; $6404: $32
	ld   [hl-], a                                    ; $6405: $32
	ld   [$8c8a], a                                  ; $6406: $ea $8a $8c
	and  h                                           ; $6409: $a4
	xor  h                                           ; $640a: $ac
	ld   l, d                                        ; $640b: $6a
	ld   [de], a                                     ; $640c: $12
	nop                                              ; $640d: $00
	nop                                              ; $640e: $00
	nop                                              ; $640f: $00
	nop                                              ; $6410: $00
	nop                                              ; $6411: $00
	cp   [hl]                                        ; $6412: $be
	ld   h, d                                        ; $6413: $62
	ld   a, $a2                                      ; $6414: $3e $a2
	ld   a, [hl]                                     ; $6416: $7e
	jr   z, @+$6c                                    ; $6417: $28 $6a

	ld   a, h                                        ; $6419: $7c
	xor  b                                           ; $641a: $a8
	cp   d                                           ; $641b: $ba
	and  $00                                         ; $641c: $e6 $00
	nop                                              ; $641e: $00
	nop                                              ; $641f: $00
	nop                                              ; $6420: $00
	and  $38                                         ; $6421: $e6 $38
	ld   a, [hl-]                                    ; $6423: $3a
	ld   e, d                                        ; $6424: $5a
	ld   e, d                                        ; $6425: $5a
	ld   a, d                                        ; $6426: $7a
	jp   c, $5a5a                                    ; $6427: $da $5a $5a

	ld   l, [hl]                                     ; $642a: $6e
	ld   l, d                                        ; $642b: $6a
	jp   nz, $0000                                  ; $642c: $c2 $00 $00

	nop                                              ; $642f: $00
	nop                                              ; $6430: $00

jr_007_6431:
	db   $10                                         ; $6431: $10
	or   [hl]                                        ; $6432: $b6
	ld   h, d                                        ; $6433: $62
	ld   [hl], $a2                                   ; $6434: $36 $a2
	ld   a, [hl]                                     ; $6436: $7e
	ld   [$625e], sp                                 ; $6437: $08 $5e $62
	sbc  [hl]                                        ; $643a: $9e
	and  d                                           ; $643b: $a2
	add  h                                           ; $643c: $84
	nop                                              ; $643d: $00
	nop                                              ; $643e: $00
	nop                                              ; $643f: $00
	nop                                              ; $6440: $00
	db   $10                                         ; $6441: $10
	cp   $aa                                         ; $6442: $fe $aa
	jr   z, jr_007_648e                              ; $6444: $28 $48

	add  [hl]                                        ; $6446: $86
	jr   nz, jr_007_64c1                             ; $6447: $20 $78

	jr   z, jr_007_6473                              ; $6449: $28 $28

	ld   c, d                                        ; $644b: $4a
	add  [hl]                                        ; $644c: $86
	nop                                              ; $644d: $00
	nop                                              ; $644e: $00
	nop                                              ; $644f: $00
	nop                                              ; $6450: $00
	ld   [$e808], sp                                 ; $6451: $08 $08 $e8

Call_007_6454:
	xor  b                                           ; $6454: $a8
	xor  b                                           ; $6455: $a8
	cp   [hl]                                        ; $6456: $be
	xor  b                                           ; $6457: $a8
	xor  b                                           ; $6458: $a8
	add  sp, $08                                     ; $6459: $e8 $08
	ld   [$0008], sp                                 ; $645b: $08 $08 $00
	nop                                              ; $645e: $00
	nop                                              ; $645f: $00
	nop                                              ; $6460: $00
	jr   z, jr_007_64c1                              ; $6461: $28 $5e

	sub  d                                           ; $6463: $92
	cp   $52                                         ; $6464: $fe $52
	cp   [hl]                                        ; $6466: $be
	add  sp, $4a                                     ; $6467: $e8 $4a
	db   $fc                                         ; $6469: $fc
	db   $ec                                         ; $646a: $ec
	db   $fc                                         ; $646b: $fc
	ld   l, d                                        ; $646c: $6a
	nop                                              ; $646d: $00
	nop                                              ; $646e: $00
	nop                                              ; $646f: $00
	nop                                              ; $6470: $00
	nop                                              ; $6471: $00
	ld   [hl+], a                                    ; $6472: $22

jr_007_6473:
	ld   a, [hl+]                                    ; $6473: $2a
	ld   a, [hl+]                                    ; $6474: $2a
	ld   l, d                                        ; $6475: $6a
	ld   a, [hl]                                     ; $6476: $7e
	cp   [hl]                                        ; $6477: $be
	xor  d                                           ; $6478: $aa
	ld   a, [hl+]                                    ; $6479: $2a
	ld   c, d                                        ; $647a: $4a
	ld   c, d                                        ; $647b: $4a
	add  d                                           ; $647c: $82
	nop                                              ; $647d: $00
	nop                                              ; $647e: $00
	nop                                              ; $647f: $00
	nop                                              ; $6480: $00
	ld   c, b                                        ; $6481: $48
	cp   $a8                                         ; $6482: $fe $a8
	cp   $ee                                         ; $6484: $fe $ee
	db   $ec                                         ; $6486: $ec
	xor  [hl]                                        ; $6487: $ae
	db   $10                                         ; $6488: $10
	cp   $54                                         ; $6489: $fe $54
	ret  z                                           ; $648b: $c8

	ld   b, [hl]                                     ; $648c: $46
	nop                                              ; $648d: $00

jr_007_648e:
	nop                                              ; $648e: $00
	nop                                              ; $648f: $00
	nop                                              ; $6490: $00
	ld   l, [hl]                                     ; $6491: $6e
	jp   z, $da4a                                    ; $6492: $ca $4a $da

	xor  $48                                         ; $6495: $ee $48
	db   $fc                                         ; $6497: $fc
	ld   c, h                                        ; $6498: $4c
	db   $ec                                         ; $6499: $ec
	db   $ec                                         ; $649a: $ec
	jp   c, $0052                                    ; $649b: $da $52 $00

	nop                                              ; $649e: $00
	nop                                              ; $649f: $00
	nop                                              ; $64a0: $00
	jr   @-$1c                                       ; $64a1: $18 $e2

	inc  b                                           ; $64a3: $04
	xor  b                                           ; $64a4: $a8
	xor  b                                           ; $64a5: $a8
	ld   [bc], a                                     ; $64a6: $02
	inc  h                                           ; $64a7: $24
	ld   hl, sp+$20                                  ; $64a8: $f8 $20
	ld   [hl], d                                     ; $64aa: $72
	xor  h                                           ; $64ab: $ac
	jr   nz, jr_007_64ae                             ; $64ac: $20 $00

jr_007_64ae:
	nop                                              ; $64ae: $00
	nop                                              ; $64af: $00
	nop                                              ; $64b0: $00
	inc  a                                           ; $64b1: $3c
	inc  [hl]                                        ; $64b2: $34
	ld   l, b                                        ; $64b3: $68
	cp   $6a                                         ; $64b4: $fe $6a
	ld   a, [hl]                                     ; $64b6: $7e
	ld   c, b                                        ; $64b7: $48
	ld   a, d                                        ; $64b8: $7a
	ld   d, h                                        ; $64b9: $54
	ld   l, h                                        ; $64ba: $6c

jr_007_64bb:
	ld   d, [hl]                                     ; $64bb: $56
	ld   e, d                                        ; $64bc: $5a
	nop                                              ; $64bd: $00
	nop                                              ; $64be: $00
	nop                                              ; $64bf: $00
	nop                                              ; $64c0: $00

jr_007_64c1:
	db   $10                                         ; $64c1: $10
	ld   e, h                                        ; $64c2: $5c
	ld   d, b                                        ; $64c3: $50
	cp   $92                                         ; $64c4: $fe $92
	sub  $ba                                         ; $64c6: $d6 $ba
	cp   $ba                                         ; $64c8: $fe $ba
	sub  $92                                         ; $64ca: $d6 $92
	cp   $00                                         ; $64cc: $fe $00
	nop                                              ; $64ce: $00
	nop                                              ; $64cf: $00
	nop                                              ; $64d0: $00
	inc  d                                           ; $64d1: $14
	cp   [hl]                                        ; $64d2: $be
	ld   d, h                                        ; $64d3: $54
	ld   a, $94                                      ; $64d4: $3e $94
	ld   l, d                                        ; $64d6: $6a
	nop                                              ; $64d7: $00
	ld   e, h                                        ; $64d8: $5c
	ld   d, h                                        ; $64d9: $54
	sbc  h                                           ; $64da: $9c
	sub  h                                           ; $64db: $94
	sbc  h                                           ; $64dc: $9c
	nop                                              ; $64dd: $00
	nop                                              ; $64de: $00
	nop                                              ; $64df: $00
	nop                                              ; $64e0: $00
	ld   [$5cf8], sp                                 ; $64e1: $08 $f8 $5c
	ld   l, b                                        ; $64e4: $68
	add  sp, -$42                                    ; $64e5: $e8 $be
	xor  b                                           ; $64e7: $a8
	db   $fc                                         ; $64e8: $fc
	cp   h                                           ; $64e9: $bc
	ld   a, [hl+]                                    ; $64ea: $2a
	ld   c, b                                        ; $64eb: $48
	adc  b                                           ; $64ec: $88
	nop                                              ; $64ed: $00
	nop                                              ; $64ee: $00
	nop                                              ; $64ef: $00
	nop                                              ; $64f0: $00
	nop                                              ; $64f1: $00
	db   $ec                                         ; $64f2: $ec
	jr   z, jr_007_64bb                              ; $64f3: $28 $c6

	ld   a, h                                        ; $64f5: $7c
	add  d                                           ; $64f6: $82
	ld   a, h                                        ; $64f7: $7c
	ld   b, h                                        ; $64f8: $44
	ld   a, h                                        ; $64f9: $7c
	ld   b, h                                        ; $64fa: $44

jr_007_64fb:
	jr   z, jr_007_64fb                              ; $64fb: $28 $fe

	nop                                              ; $64fd: $00
	nop                                              ; $64fe: $00
	nop                                              ; $64ff: $00
	nop                                              ; $6500: $00
	ld   c, b                                        ; $6501: $48
	ld   a, [hl]                                     ; $6502: $7e
	and  h                                           ; $6503: $a4
	cp   $82                                         ; $6504: $fe $82
	cp   d                                           ; $6506: $ba
	add  d                                           ; $6507: $82
	cp   d                                           ; $6508: $ba
	xor  d                                           ; $6509: $aa
	xor  d                                           ; $650a: $aa
	cp   d                                           ; $650b: $ba
	add  [hl]                                        ; $650c: $86
	nop                                              ; $650d: $00
	nop                                              ; $650e: $00
	nop                                              ; $650f: $00
	nop                                              ; $6510: $00

jr_007_6511:
	jr   z, jr_007_6511                              ; $6511: $28 $fe

	jr   z, jr_007_6591                              ; $6513: $28 $7c

	db   $10                                         ; $6515: $10
	ld   l, b                                        ; $6516: $68
	inc  [hl]                                        ; $6517: $34
	cp   $54                                         ; $6518: $fe $54
	ld   a, h                                        ; $651a: $7c
	ld   d, h                                        ; $651b: $54
	ld   a, h                                        ; $651c: $7c
	nop                                              ; $651d: $00
	nop                                              ; $651e: $00
	nop                                              ; $651f: $00
	nop                                              ; $6520: $00
	db   $10                                         ; $6521: $10
	cp   $8c                                         ; $6522: $fe $8c
	cp   b                                           ; $6524: $b8
	xor  b                                           ; $6525: $a8
	xor  b                                           ; $6526: $a8
	cp   [hl]                                        ; $6527: $be
	and  h                                           ; $6528: $a4
	xor  h                                           ; $6529: $ac
	or   h                                           ; $652a: $b4
	add  d                                           ; $652b: $82
	cp   d                                           ; $652c: $ba
	nop                                              ; $652d: $00
	nop                                              ; $652e: $00
	nop                                              ; $652f: $00
	nop                                              ; $6530: $00
	ld   a, [hl+]                                    ; $6531: $2a
	ld   [$a4b2], a                                  ; $6532: $ea $b2 $a4
	ldh  [c], a                                      ; $6535: $e2
	and  [hl]                                        ; $6536: $a6
	or   [hl]                                        ; $6537: $b6
	ld   [$b6ae], a                                  ; $6538: $ea $ae $b6
	and  d                                           ; $653b: $a2
	cp   [hl]                                        ; $653c: $be
	nop                                              ; $653d: $00
	nop                                              ; $653e: $00
	nop                                              ; $653f: $00
	nop                                              ; $6540: $00
	ld   [$504e], sp                                 ; $6541: $08 $4e $50
	xor  $2a                                         ; $6544: $ee $2a
	ld   l, $5a                                      ; $6546: $2e $5a
	ld   l, [hl]                                     ; $6548: $6e
	ld   [$445a], a                                  ; $6549: $ea $5a $44
	ld   e, d                                        ; $654c: $5a
	nop                                              ; $654d: $00
	nop                                              ; $654e: $00
	nop                                              ; $654f: $00
	nop                                              ; $6550: $00
	jr   nz, jr_007_65a1                             ; $6551: $20 $4e

	ld   [$eaaa], a                                  ; $6553: $ea $aa $ea
	or   b                                           ; $6556: $b0
	xor  $a2                                         ; $6557: $ee $a2
	ld   [$a4e4], a                                  ; $6559: $ea $e4 $a4
	xor  d                                           ; $655c: $aa
	nop                                              ; $655d: $00
	nop                                              ; $655e: $00
	nop                                              ; $655f: $00
	nop                                              ; $6560: $00
	xor  $aa                                         ; $6561: $ee $aa
	xor  $aa                                         ; $6563: $ee $aa
	xor  $82                                         ; $6565: $ee $82
	add  d                                           ; $6567: $82
	add  d                                           ; $6568: $82
	add  d                                           ; $6569: $82
	add  d                                           ; $656a: $82
	add  d                                           ; $656b: $82
	add  [hl]                                        ; $656c: $86
	nop                                              ; $656d: $00
	nop                                              ; $656e: $00
	nop                                              ; $656f: $00
	nop                                              ; $6570: $00
	xor  $aa                                         ; $6571: $ee $aa
	ld   h, [hl]                                     ; $6573: $66
	cp   $54                                         ; $6574: $fe $54
	ld   a, h                                        ; $6576: $7c
	ld   a, h                                        ; $6577: $7c
	jr   z, jr_007_65f6                              ; $6578: $28 $7c

jr_007_657a:
	jr   z, jr_007_657a                              ; $657a: $28 $fe

	ld   l, h                                        ; $657c: $6c
	nop                                              ; $657d: $00
	nop                                              ; $657e: $00
	nop                                              ; $657f: $00
	nop                                              ; $6580: $00

jr_007_6581:
	jr   z, jr_007_6581                              ; $6581: $28 $fe

	jr   z, jr_007_6595                              ; $6583: $28 $10

	cp   d                                           ; $6585: $ba
	ld   l, h                                        ; $6586: $6c
	cp   d                                           ; $6587: $ba
	db   $10                                         ; $6588: $10
	cp   $38                                         ; $6589: $fe $38
	sub  $10                                         ; $658b: $d6 $10
	nop                                              ; $658d: $00
	nop                                              ; $658e: $00
	nop                                              ; $658f: $00
	nop                                              ; $6590: $00

jr_007_6591:
	db   $10                                         ; $6591: $10
	cp   $92                                         ; $6592: $fe $92
	ld   a, h                                        ; $6594: $7c

jr_007_6595:
	jr   z, @+$46                                    ; $6595: $28 $44

	cp   $04                                         ; $6597: $fe $04
	ld   [hl], h                                     ; $6599: $74
	ld   d, h                                        ; $659a: $54
	ld   [hl], h                                     ; $659b: $74
	inc  c                                           ; $659c: $0c
	nop                                              ; $659d: $00
	nop                                              ; $659e: $00
	nop                                              ; $659f: $00
	nop                                              ; $65a0: $00

jr_007_65a1:
	ld   e, h                                        ; $65a1: $5c
	ld   d, h                                        ; $65a2: $54
	ld   e, h                                        ; $65a3: $5c
	ldh  [$7e], a                                    ; $65a4: $e0 $7e
	ld   l, d                                        ; $65a6: $6a
	ld   a, [hl]                                     ; $65a7: $7e
	ret  z                                           ; $65a8: $c8

	ld   a, [hl]                                     ; $65a9: $7e
	ld   e, h                                        ; $65aa: $5c
	ld   l, d                                        ; $65ab: $6a
	ret  z                                           ; $65ac: $c8

	nop                                              ; $65ad: $00
	nop                                              ; $65ae: $00
	nop                                              ; $65af: $00
	nop                                              ; $65b0: $00
	ld   c, b                                        ; $65b1: $48
	ld   e, h                                        ; $65b2: $5c
	add  sp, $5c                                     ; $65b3: $e8 $5c
	ld   c, b                                        ; $65b5: $48
	cp   $f4                                         ; $65b6: $fe $f4
	cp   $d4                                         ; $65b8: $fe $d4
	ld   e, h                                        ; $65ba: $5c
	ld   d, h                                        ; $65bb: $54
	ld   e, h                                        ; $65bc: $5c
	nop                                              ; $65bd: $00
	nop                                              ; $65be: $00
	nop                                              ; $65bf: $00
	nop                                              ; $65c0: $00

jr_007_65c1:
	jr   nz, jr_007_65c1                             ; $65c1: $20 $fe

	xor  d                                           ; $65c3: $aa
	ld   a, d                                        ; $65c4: $7a
	xor  d                                           ; $65c5: $aa
	ldh  a, [c]                                      ; $65c6: $f2
	ld   [$4a54], sp                                 ; $65c7: $08 $54 $4a
	cp   [hl]                                        ; $65ca: $be
	sbc  h                                           ; $65cb: $9c
	xor  d                                           ; $65cc: $aa
	nop                                              ; $65cd: $00
	nop                                              ; $65ce: $00
	nop                                              ; $65cf: $00
	nop                                              ; $65d0: $00
	nop                                              ; $65d1: $00
	ld   e, $e8                                      ; $65d2: $1e $e8
	ld   e, [hl]                                     ; $65d4: $5e
	ld   d, d                                        ; $65d5: $52
	ld   e, [hl]                                     ; $65d6: $5e
	ld   d, d                                        ; $65d7: $52
	ld   a, [hl]                                     ; $65d8: $7e
	jp   nc, $0c1e                                   ; $65d9: $d2 $1e $0c

	ld   [de], a                                     ; $65dc: $12
	nop                                              ; $65dd: $00
	nop                                              ; $65de: $00
	nop                                              ; $65df: $00
	nop                                              ; $65e0: $00
	ld   a, $08                                      ; $65e1: $3e $08
	cp   $6a                                         ; $65e3: $fe $6a
	cp   [hl]                                        ; $65e5: $be
	ld   [$a8be], a                                  ; $65e6: $ea $be $a8
	xor  b                                           ; $65e9: $a8
	db   $fc                                         ; $65ea: $fc
	inc  d                                           ; $65eb: $14
	ld   [hl+], a                                    ; $65ec: $22
	nop                                              ; $65ed: $00
	nop                                              ; $65ee: $00
	nop                                              ; $65ef: $00
	nop                                              ; $65f0: $00
	adc  b                                           ; $65f1: $88
	cp   [hl]                                        ; $65f2: $be
	add  sp, -$42                                    ; $65f3: $e8 $be
	and  d                                           ; $65f5: $a2

jr_007_65f6:
	cp   [hl]                                        ; $65f6: $be
	or   h                                           ; $65f7: $b4
	cp   [hl]                                        ; $65f8: $be
	and  b                                           ; $65f9: $a0
	cp   $52                                         ; $65fa: $fe $52
	cp   [hl]                                        ; $65fc: $be
	nop                                              ; $65fd: $00
	nop                                              ; $65fe: $00
	nop                                              ; $65ff: $00
	nop                                              ; $6600: $00
	db   $10                                         ; $6601: $10
	db   $10                                         ; $6602: $10
	ld   a, h                                        ; $6603: $7c
	db   $10                                         ; $6604: $10
	cp   $08                                         ; $6605: $fe $08
	cp   $08                                         ; $6607: $fe $08
	ld   c, b                                        ; $6609: $48
	jr   z, jr_007_6614                              ; $660a: $28 $08

	jr   jr_007_660e                                 ; $660c: $18 $00

jr_007_660e:
	nop                                              ; $660e: $00
	nop                                              ; $660f: $00
	nop                                              ; $6610: $00
	add  h                                           ; $6611: $84
	ld   e, b                                        ; $6612: $58
	ld   e, [hl]                                     ; $6613: $5e

jr_007_6614:
	ld   [de], a                                     ; $6614: $12
	cp   $30                                         ; $6615: $fe $30
	ld   a, $52                                      ; $6617: $3e $52
	ld   d, d                                        ; $6619: $52
	ld   e, [hl]                                     ; $661a: $5e
	ldh  [$9e], a                                    ; $661b: $e0 $9e
	nop                                              ; $661d: $00
	nop                                              ; $661e: $00
	nop                                              ; $661f: $00
	nop                                              ; $6620: $00
	nop                                              ; $6621: $00
	add  h                                           ; $6622: $84
	ld   e, b                                        ; $6623: $58
	ld   a, $a2                                      ; $6624: $3e $a2
	ld   h, d                                        ; $6626: $62
	ld   [hl+], a                                    ; $6627: $22
	ld   a, [hl]                                     ; $6628: $7e
	ld   h, d                                        ; $6629: $62
	and  d                                           ; $662a: $a2
	and  d                                           ; $662b: $a2
	cp   [hl]                                        ; $662c: $be
	nop                                              ; $662d: $00
	nop                                              ; $662e: $00
	nop                                              ; $662f: $00
	nop                                              ; $6630: $00

jr_007_6631:
	jr   z, jr_007_6631                              ; $6631: $28 $fe

	xor  d                                           ; $6633: $aa
	cp   $fe                                         ; $6634: $fe $fe
	nop                                              ; $6636: $00
	cp   $7c                                         ; $6637: $fe $7c
	ld   b, h                                        ; $6639: $44
	ld   a, h                                        ; $663a: $7c

jr_007_663b:
	jr   z, jr_007_663b                              ; $663b: $28 $fe

	nop                                              ; $663d: $00
	nop                                              ; $663e: $00
	nop                                              ; $663f: $00
	nop                                              ; $6640: $00
	db   $10                                         ; $6641: $10
	ld   a, h                                        ; $6642: $7c
	db   $10                                         ; $6643: $10
	jr   c, @-$28                                    ; $6644: $38 $d6

	jr   c, jr_007_6650                              ; $6646: $38 $08

	db   $10                                         ; $6648: $10
	ld   a, h                                        ; $6649: $7c
	ld   [$1028], sp                                 ; $664a: $08 $28 $10
	nop                                              ; $664d: $00
	nop                                              ; $664e: $00
	nop                                              ; $664f: $00

jr_007_6650:
	nop                                              ; $6650: $00
	jr   nz, jr_007_6691                             ; $6651: $20 $3e

	ld   c, d                                        ; $6653: $4a
	jp   z, Jump_007_4a7e                            ; $6654: $ca $7e $4a

	ld   c, d                                        ; $6657: $4a
	ld   e, [hl]                                     ; $6658: $5e
	ld   c, b                                        ; $6659: $48
	ld   c, b                                        ; $665a: $48
	ld   d, b                                        ; $665b: $50
	ld   d, b                                        ; $665c: $50
	nop                                              ; $665d: $00
	nop                                              ; $665e: $00
	nop                                              ; $665f: $00
	nop                                              ; $6660: $00
	nop                                              ; $6661: $00
	cp   $28                                         ; $6662: $fe $28

jr_007_6664:
	jr   z, jr_007_6664                              ; $6664: $28 $fe

	xor  d                                           ; $6666: $aa
	xor  d                                           ; $6667: $aa
	xor  d                                           ; $6668: $aa
	cp   $28                                         ; $6669: $fe $28

jr_007_666b:
	jr   z, jr_007_666b                              ; $666b: $28 $fe

	nop                                              ; $666d: $00
	nop                                              ; $666e: $00
	nop                                              ; $666f: $00
	nop                                              ; $6670: $00
	inc  d                                           ; $6671: $14
	sub  h                                           ; $6672: $94
	ld   e, [hl]                                     ; $6673: $5e
	inc  h                                           ; $6674: $24
	add  h                                           ; $6675: $84
	ld   e, [hl]                                     ; $6676: $5e
	nop                                              ; $6677: $00
	ld   e, [hl]                                     ; $6678: $5e
	ld   d, d                                        ; $6679: $52
	sub  d                                           ; $667a: $92
	sub  d                                           ; $667b: $92
	sbc  [hl]                                        ; $667c: $9e
	nop                                              ; $667d: $00
	nop                                              ; $667e: $00
	nop                                              ; $667f: $00
	nop                                              ; $6680: $00
	ld   e, [hl]                                     ; $6681: $5e
	ld   d, d                                        ; $6682: $52
	cp   $e4                                         ; $6683: $fe $e4
	cp   $56                                         ; $6685: $fe $56
	cp   $5e                                         ; $6687: $fe $5e
	ld   h, h                                        ; $6689: $64
	ld   a, [hl]                                     ; $668a: $7e
	and  h                                           ; $668b: $a4
	or   h                                           ; $668c: $b4
	nop                                              ; $668d: $00
	nop                                              ; $668e: $00
	nop                                              ; $668f: $00
	nop                                              ; $6690: $00

jr_007_6691:
	ld   a, h                                        ; $6691: $7c
	ld   b, h                                        ; $6692: $44
	ld   a, h                                        ; $6693: $7c
	ld   b, h                                        ; $6694: $44
	ld   a, h                                        ; $6695: $7c
	sub  d                                           ; $6696: $92
	ld   d, h                                        ; $6697: $54
	cp   $28                                         ; $6698: $fe $28
	jr   z, @+$4c                                    ; $669a: $28 $4a

	adc  [hl]                                        ; $669c: $8e
	nop                                              ; $669d: $00
	nop                                              ; $669e: $00
	nop                                              ; $669f: $00
	nop                                              ; $66a0: $00
	ld   d, d                                        ; $66a1: $52
	ld   a, d                                        ; $66a2: $7a
	sub  $7a                                         ; $66a3: $d6 $7a
	ld   b, d                                        ; $66a5: $42
	cp   $ee                                         ; $66a6: $fe $ee
	ld   a, [$52ea]                                  ; $66a8: $fa $ea $52
	ld   a, d                                        ; $66ab: $7a
	ld   b, [hl]                                     ; $66ac: $46
	nop                                              ; $66ad: $00
	nop                                              ; $66ae: $00
	nop                                              ; $66af: $00
	nop                                              ; $66b0: $00
	add  sp, $0e                                     ; $66b1: $e8 $0e
	ldh  a, [c]                                      ; $66b3: $f2
	xor  d                                           ; $66b4: $aa
	db   $ec                                         ; $66b5: $ec
	adc  h                                           ; $66b6: $8c
	sub  d                                           ; $66b7: $92
	nop                                              ; $66b8: $00
	ld   a, h                                        ; $66b9: $7c
	ld   b, h                                        ; $66ba: $44
	ld   b, h                                        ; $66bb: $44
	ld   a, h                                        ; $66bc: $7c
	nop                                              ; $66bd: $00
	nop                                              ; $66be: $00
	nop                                              ; $66bf: $00
	nop                                              ; $66c0: $00
	jr   z, jr_007_66f1                              ; $66c1: $28 $2e

	ldh  a, [$5e]                                    ; $66c3: $f0 $5e
	ld   c, d                                        ; $66c5: $4a
	ld   a, [hl]                                     ; $66c6: $7e
	ld   e, d                                        ; $66c7: $5a
	ld   e, [hl]                                     ; $66c8: $5e
	ld   e, d                                        ; $66c9: $5a
	ld   e, [hl]                                     ; $66ca: $5e
	sub  h                                           ; $66cb: $94
	cp   d                                           ; $66cc: $ba
	nop                                              ; $66cd: $00
	nop                                              ; $66ce: $00
	nop                                              ; $66cf: $00
	nop                                              ; $66d0: $00

jr_007_66d1:
	jr   z, jr_007_66d1                              ; $66d1: $28 $fe

jr_007_66d3:
	jr   z, jr_007_66d3                              ; $66d3: $28 $fe

	add  d                                           ; $66d5: $82
	cp   $44                                         ; $66d6: $fe $44
	ld   a, h                                        ; $66d8: $7c
	ld   b, b                                        ; $66d9: $40
	ld   a, h                                        ; $66da: $7c
	ld   b, h                                        ; $66db: $44
	ld   a, h                                        ; $66dc: $7c
	nop                                              ; $66dd: $00
	nop                                              ; $66de: $00
	nop                                              ; $66df: $00
	nop                                              ; $66e0: $00
	ld   a, $b6                                      ; $66e1: $3e $b6
	ld   a, [hl]                                     ; $66e3: $7e
	ld   [$48be], sp                                 ; $66e4: $08 $be $48
	ld   a, $54                                      ; $66e7: $3e $54
	ld   a, [hl]                                     ; $66e9: $7e
	adc  b                                           ; $66ea: $88
	cp   [hl]                                        ; $66eb: $be
	adc  b                                           ; $66ec: $88
	nop                                              ; $66ed: $00
	nop                                              ; $66ee: $00
	nop                                              ; $66ef: $00
	nop                                              ; $66f0: $00

jr_007_66f1:
	nop                                              ; $66f1: $00
	sbc  [hl]                                        ; $66f2: $9e
	ld   d, d                                        ; $66f3: $52
	ld   [de], a                                     ; $66f4: $12
	sub  d                                           ; $66f5: $92
	ld   e, [hl]                                     ; $66f6: $5e
	inc  d                                           ; $66f7: $14
	ld   d, h                                        ; $66f8: $54
	ld   d, h                                        ; $66f9: $54
	sub  h                                           ; $66fa: $94
	and  d                                           ; $66fb: $a2
	and  d                                           ; $66fc: $a2
	nop                                              ; $66fd: $00
	nop                                              ; $66fe: $00
	nop                                              ; $66ff: $00
	nop                                              ; $6700: $00
	nop                                              ; $6701: $00
	or   [hl]                                        ; $6702: $b6
	halt                                             ; $6703: $76
	ld   [hl], $b6                                   ; $6704: $36 $b6
	ld   h, d                                        ; $6706: $62
	ld   a, $6a                                      ; $6707: $3e $6a
	ld   a, [hl]                                     ; $6709: $7e
	xor  d                                           ; $670a: $aa
	cp   [hl]                                        ; $670b: $be
	and  d                                           ; $670c: $a2
	nop                                              ; $670d: $00
	nop                                              ; $670e: $00
	nop                                              ; $670f: $00
	nop                                              ; $6710: $00
	ld   [$2ef8], sp                                 ; $6711: $08 $f8 $2e

jr_007_6714:
	ld   [hl-], a                                    ; $6714: $32
	and  d                                           ; $6715: $a2
	cp   d                                           ; $6716: $ba
	xor  d                                           ; $6717: $aa
	xor  d                                           ; $6718: $aa
	and  h                                           ; $6719: $a4
	or   h                                           ; $671a: $b4
	jp   z, $0012                                    ; $671b: $ca $12 $00

	nop                                              ; $671e: $00
	nop                                              ; $671f: $00
	nop                                              ; $6720: $00
	jr   nz, jr_007_676d                             ; $6721: $20 $4a

	ld   [$f2aa], a                                  ; $6723: $ea $aa $f2
	and  b                                           ; $6726: $a0
	cp   $aa                                         ; $6727: $fe $aa
	ld   [$aaea], a                                  ; $6729: $ea $ea $aa
	xor  [hl]                                        ; $672c: $ae
	nop                                              ; $672d: $00
	nop                                              ; $672e: $00
	nop                                              ; $672f: $00
	nop                                              ; $6730: $00
	db   $10                                         ; $6731: $10
	db   $10                                         ; $6732: $10
	cp   $10                                         ; $6733: $fe $10
	db   $10                                         ; $6735: $10
	cp   $92                                         ; $6736: $fe $92
	sub  d                                           ; $6738: $92
	sub  d                                           ; $6739: $92
	sub  [hl]                                        ; $673a: $96
	db   $10                                         ; $673b: $10
	stop                                             ; $673c: $10 $00
	nop                                              ; $673e: $00
	nop                                              ; $673f: $00
	nop                                              ; $6740: $00
	ld   c, d                                        ; $6741: $4a
	cp   $48                                         ; $6742: $fe $48
	cp   $da                                         ; $6744: $fe $da
	ld   a, [$fade]                                  ; $6746: $fa $de $fa
	ld   e, [hl]                                     ; $6749: $5e
	ld   a, [$5a5a]                                  ; $674a: $fa $5a $5a
	nop                                              ; $674d: $00
	nop                                              ; $674e: $00
	nop                                              ; $674f: $00
	nop                                              ; $6750: $00
	ld   [$6e88], sp                                 ; $6751: $08 $88 $6e
	jr   z, jr_007_6714                              ; $6754: $28 $be

	ld   b, b                                        ; $6756: $40
	inc  d                                           ; $6757: $14
	ld   e, [hl]                                     ; $6758: $5e
	ld   d, h                                        ; $6759: $54
	cp   h                                           ; $675a: $bc
	cp   h                                           ; $675b: $bc
	xor  $00                                         ; $675c: $ee $00
	nop                                              ; $675e: $00
	nop                                              ; $675f: $00
	nop                                              ; $6760: $00
	nop                                              ; $6761: $00
	jr   z, jr_007_678c                              ; $6762: $28 $28

	ld   b, h                                        ; $6764: $44
	sub  d                                           ; $6765: $92
	jr   z, jr_007_67ac                              ; $6766: $28 $44

	cp   $44                                         ; $6768: $fe $44
	ld   b, h                                        ; $676a: $44
	ld   b, h                                        ; $676b: $44
	ld   a, h                                        ; $676c: $7c

jr_007_676d:
	nop                                              ; $676d: $00
	nop                                              ; $676e: $00
	nop                                              ; $676f: $00
	nop                                              ; $6770: $00
	ld   [$4a9e], sp                                 ; $6771: $08 $9e $4a
	ld   a, $8a                                      ; $6774: $3e $8a
	ld   e, [hl]                                     ; $6776: $5e
	ld   [$485c], sp                                 ; $6777: $08 $5c $48
	cp   [hl]                                        ; $677a: $be
	adc  b                                           ; $677b: $88
	adc  b                                           ; $677c: $88
	nop                                              ; $677d: $00
	nop                                              ; $677e: $00
	nop                                              ; $677f: $00
	nop                                              ; $6780: $00
	db   $10                                         ; $6781: $10
	cp   $82                                         ; $6782: $fe $82
	db   $10                                         ; $6784: $10
	db   $10                                         ; $6785: $10
	cp   $92                                         ; $6786: $fe $92
	sub  d                                           ; $6788: $92
	cp   $92                                         ; $6789: $fe $92
	sub  d                                           ; $678b: $92

jr_007_678c:
	cp   $00                                         ; $678c: $fe $00
	nop                                              ; $678e: $00
	nop                                              ; $678f: $00
	nop                                              ; $6790: $00
	db   $10                                         ; $6791: $10
	db   $10                                         ; $6792: $10

jr_007_6793:
	cp   $28                                         ; $6793: $fe $28
	ld   b, h                                        ; $6795: $44
	cp   d                                           ; $6796: $ba
	nop                                              ; $6797: $00
	cp   $10                                         ; $6798: $fe $10
	ld   d, h                                        ; $679a: $54
	ld   d, d                                        ; $679b: $52
	or   d                                           ; $679c: $b2
	nop                                              ; $679d: $00
	nop                                              ; $679e: $00
	nop                                              ; $679f: $00
	nop                                              ; $67a0: $00
	nop                                              ; $67a1: $00
	db   $fc                                         ; $67a2: $fc
	inc  h                                           ; $67a3: $24
	inc  h                                           ; $67a4: $24
	jr   z, jr_007_67cf                              ; $67a5: $28 $28

	ld   l, $42                                      ; $67a7: $2e $42
	ld   b, d                                        ; $67a9: $42
	ld   b, d                                        ; $67aa: $42
	add  d                                           ; $67ab: $82

jr_007_67ac:
	adc  h                                           ; $67ac: $8c
	nop                                              ; $67ad: $00
	nop                                              ; $67ae: $00
	nop                                              ; $67af: $00
	nop                                              ; $67b0: $00
	xor  $aa                                         ; $67b1: $ee $aa
	cp   d                                           ; $67b3: $ba
	call nz, $a0ba                                   ; $67b4: $c4 $ba $a0
	or   h                                           ; $67b7: $b4
	sbc  $94                                         ; $67b8: $de $94
	adc  [hl]                                        ; $67ba: $8e
	add  h                                           ; $67bb: $84
	sbc  [hl]                                        ; $67bc: $9e
	nop                                              ; $67bd: $00
	nop                                              ; $67be: $00
	nop                                              ; $67bf: $00
	nop                                              ; $67c0: $00
	db   $10                                         ; $67c1: $10
	cp   $10                                         ; $67c2: $fe $10
	cp   $92                                         ; $67c4: $fe $92
	sub  d                                           ; $67c6: $92
	cp   $50                                         ; $67c7: $fe $50
	jr   nc, jr_007_67db                             ; $67c9: $30 $10

	jr   z, jr_007_6793                              ; $67cb: $28 $c6

	nop                                              ; $67cd: $00
	nop                                              ; $67ce: $00

jr_007_67cf:
	nop                                              ; $67cf: $00
	nop                                              ; $67d0: $00
	db   $10                                         ; $67d1: $10
	jr   z, @+$2a                                    ; $67d2: $28 $28

	ld   b, h                                        ; $67d4: $44
	ld   d, h                                        ; $67d5: $54
	sub  d                                           ; $67d6: $92
	db   $10                                         ; $67d7: $10
	ld   e, h                                        ; $67d8: $5c
	ld   d, b                                        ; $67d9: $50
	ld   d, b                                        ; $67da: $50

jr_007_67db:
	ld   d, b                                        ; $67db: $50
	cp   $00                                         ; $67dc: $fe $00
	nop                                              ; $67de: $00
	nop                                              ; $67df: $00
	nop                                              ; $67e0: $00
	db   $f4                                         ; $67e1: $f4
	and  h                                           ; $67e2: $a4
	or   $98                                         ; $67e3: $f6 $98
	ldh  a, [$a6]                                    ; $67e5: $f0 $a6
	ldh  a, [rP1]                                    ; $67e7: $f0 $00
	ld   a, h                                        ; $67e9: $7c
	ld   l, h                                        ; $67ea: $6c
	ld   l, h                                        ; $67eb: $6c
	cp   $00                                         ; $67ec: $fe $00
	nop                                              ; $67ee: $00
	nop                                              ; $67ef: $00
	nop                                              ; $67f0: $00
	inc  h                                           ; $67f1: $24
	ld   d, h                                        ; $67f2: $54
	sub  d                                           ; $67f3: $92
	add  sp, $54                                     ; $67f4: $e8 $54
	cp   [hl]                                        ; $67f6: $be
	ldh  [c], a                                      ; $67f7: $e2
	ld   d, [hl]                                     ; $67f8: $56
	or   $e8                                         ; $67f9: $f6 $e8
	ld   a, [$0056]                                  ; $67fb: $fa $56 $00
	nop                                              ; $67fe: $00
	nop                                              ; $67ff: $00
	nop                                              ; $6800: $00
	db   $10                                         ; $6801: $10
	cp   $10                                         ; $6802: $fe $10
	and  d                                           ; $6804: $a2
	ld   a, h                                        ; $6805: $7c
	ld   d, h                                        ; $6806: $54
	and  d                                           ; $6807: $a2
	cp   d                                           ; $6808: $ba
	db   $10                                         ; $6809: $10
	cp   $10                                         ; $680a: $fe $10
	stop                                             ; $680c: $10 $00
	nop                                              ; $680e: $00
	nop                                              ; $680f: $00
	nop                                              ; $6810: $00
	ld   [$e83e], sp                                 ; $6811: $08 $3e $e8
	ld   d, h                                        ; $6814: $54
	ld   a, [hl]                                     ; $6815: $7e
	ld   b, d                                        ; $6816: $42
	db   $f4                                         ; $6817: $f4
	ld   e, h                                        ; $6818: $5c
	ld   e, h                                        ; $6819: $5c
	ld   a, h                                        ; $681a: $7c
	call nc, $0026                                   ; $681b: $d4 $26 $00
	nop                                              ; $681e: $00
	nop                                              ; $681f: $00
	nop                                              ; $6820: $00
	nop                                              ; $6821: $00
	inc  d                                           ; $6822: $14
	cp   $54                                         ; $6823: $fe $54
	cp   [hl]                                        ; $6825: $be
	db   $f4                                         ; $6826: $f4
	cp   [hl]                                        ; $6827: $be
	xor  d                                           ; $6828: $aa
	xor  [hl]                                        ; $6829: $ae
	ld   hl, sp+$28                                  ; $682a: $f8 $28
	ld   h, $00                                      ; $682c: $26 $00
	nop                                              ; $682e: $00
	nop                                              ; $682f: $00
	nop                                              ; $6830: $00
	nop                                              ; $6831: $00
	cp   d                                           ; $6832: $ba
	ld   l, d                                        ; $6833: $6a
	ld   l, $be                                      ; $6834: $2e $be
	ld   l, [hl]                                     ; $6836: $6e
	ld   a, $6e                                      ; $6837: $3e $6e
	ld   l, d                                        ; $6839: $6a
	cp   d                                           ; $683a: $ba
	sub  d                                           ; $683b: $92
	xor  d                                           ; $683c: $aa
	nop                                              ; $683d: $00
	nop                                              ; $683e: $00
	nop                                              ; $683f: $00
	nop                                              ; $6840: $00
	ld   d, h                                        ; $6841: $54
	ld   d, h                                        ; $6842: $54
	cp   $4e                                         ; $6843: $fe $4e
	ld   c, [hl]                                     ; $6845: $4e
	cp   $fe                                         ; $6846: $fe $fe
	cp   $d4                                         ; $6848: $fe $d4
	ld   d, h                                        ; $684a: $54
	ld   d, h                                        ; $684b: $54
	ld   d, h                                        ; $684c: $54
	nop                                              ; $684d: $00
	nop                                              ; $684e: $00
	nop                                              ; $684f: $00
	nop                                              ; $6850: $00
	inc  d                                           ; $6851: $14
	ld   [de], a                                     ; $6852: $12
	cp   $10                                         ; $6853: $fe $10
	sub  d                                           ; $6855: $92
	ld   d, h                                        ; $6856: $54
	jr   jr_007_6891                                 ; $6857: $18 $38

	ld   d, h                                        ; $6859: $54
	sub  d                                           ; $685a: $92
	db   $10                                         ; $685b: $10
	jr   nc, jr_007_685e                             ; $685c: $30 $00

jr_007_685e:
	nop                                              ; $685e: $00
	nop                                              ; $685f: $00
	nop                                              ; $6860: $00
	ld   b, h                                        ; $6861: $44
	ld   b, h                                        ; $6862: $44
	xor  $44                                         ; $6863: $ee $44
	ld   b, h                                        ; $6865: $44
	xor  $e2                                         ; $6866: $ee $e2
	ld   [$44ca], a                                  ; $6868: $ea $ca $44
	ld   b, h                                        ; $686b: $44
	ld   c, d                                        ; $686c: $4a
	nop                                              ; $686d: $00
	nop                                              ; $686e: $00
	nop                                              ; $686f: $00
	nop                                              ; $6870: $00
	nop                                              ; $6871: $00
	ld   e, [hl]                                     ; $6872: $5e
	ld   b, b                                        ; $6873: $40
	cp   $32                                         ; $6874: $fe $32
	ld   a, $40                                      ; $6876: $3e $40
	ld   a, [hl]                                     ; $6878: $7e
	ld   [$6a7e], a                                  ; $6879: $ea $7e $6a
	ld   a, [hl]                                     ; $687c: $7e
	nop                                              ; $687d: $00
	nop                                              ; $687e: $00
	nop                                              ; $687f: $00
	nop                                              ; $6880: $00
	nop                                              ; $6881: $00
	add  b                                           ; $6882: $80
	ld   a, [hl]                                     ; $6883: $7e
	ld   [$4888], sp                                 ; $6884: $08 $88 $48
	ld   [$4848], sp                                 ; $6887: $08 $48 $48
	adc  b                                           ; $688a: $88
	adc  b                                           ; $688b: $88
	cp   [hl]                                        ; $688c: $be
	nop                                              ; $688d: $00
	nop                                              ; $688e: $00
	nop                                              ; $688f: $00
	nop                                              ; $6890: $00

jr_007_6891:
	inc  h                                           ; $6891: $24
	ld   b, h                                        ; $6892: $44
	sbc  [hl]                                        ; $6893: $9e
	add  sp, $52                                     ; $6894: $e8 $52
	cp   [hl]                                        ; $6896: $be
	ldh  [c], a                                      ; $6897: $e2
	ld   c, h                                        ; $6898: $4c
	db   $ec                                         ; $6899: $ec
	db   $ec                                         ; $689a: $ec
	db   $fc                                         ; $689b: $fc
	ld   d, [hl]                                     ; $689c: $56
	nop                                              ; $689d: $00
	nop                                              ; $689e: $00
	nop                                              ; $689f: $00
	nop                                              ; $68a0: $00
	xor  d                                           ; $68a1: $aa
	ld   l, h                                        ; $68a2: $6c
	cp   $28                                         ; $68a3: $fe $28
	cp   $10                                         ; $68a5: $fe $10
	ld   a, h                                        ; $68a7: $7c
	db   $10                                         ; $68a8: $10
	cp   $38                                         ; $68a9: $fe $38
	sub  $10                                         ; $68ab: $d6 $10
	nop                                              ; $68ad: $00
	nop                                              ; $68ae: $00
	nop                                              ; $68af: $00
	nop                                              ; $68b0: $00
	ld   d, h                                        ; $68b1: $54
	ld   a, [hl]                                     ; $68b2: $7e
	db   $f4                                         ; $68b3: $f4
	ld   a, [hl]                                     ; $68b4: $7e
	ld   c, b                                        ; $68b5: $48
	cp   $ea                                         ; $68b6: $fe $ea
	cp   $ea                                         ; $68b8: $fe $ea
	ld   a, [hl]                                     ; $68ba: $7e
	ld   d, h                                        ; $68bb: $54
	ld   h, d                                        ; $68bc: $62
	nop                                              ; $68bd: $00
	nop                                              ; $68be: $00
	nop                                              ; $68bf: $00
	nop                                              ; $68c0: $00
	ld   a, h                                        ; $68c1: $7c
	db   $10                                         ; $68c2: $10
	cp   $da                                         ; $68c3: $fe $da
	or   [hl]                                        ; $68c5: $b6
	jp   c, $2824                                    ; $68c6: $da $24 $28

	ld   b, h                                        ; $68c9: $44
	cp   $24                                         ; $68ca: $fe $24
	ld   c, h                                        ; $68cc: $4c
	nop                                              ; $68cd: $00
	nop                                              ; $68ce: $00
	nop                                              ; $68cf: $00
	nop                                              ; $68d0: $00
	ld   d, b                                        ; $68d1: $50
	ld   d, b                                        ; $68d2: $50
	ld   e, [hl]                                     ; $68d3: $5e
	add  sp, -$18                                    ; $68d4: $e8 $e8
	xor  $c8                                         ; $68d6: $ee $c8
	ld   c, b                                        ; $68d8: $48
	ld   c, [hl]                                     ; $68d9: $4e
	ld   l, b                                        ; $68da: $68
	xor  b                                           ; $68db: $a8
	xor  b                                           ; $68dc: $a8
	nop                                              ; $68dd: $00
	nop                                              ; $68de: $00
	nop                                              ; $68df: $00
	nop                                              ; $68e0: $00
	inc  b                                           ; $68e1: $04
	ld   h, h                                        ; $68e2: $64
	sbc  $4a                                         ; $68e3: $de $4a
	ld   [$445e], a                                  ; $68e5: $ea $5e $44
	db   $e4                                         ; $68e8: $e4
	cp   [hl]                                        ; $68e9: $be
	and  h                                           ; $68ea: $a4
	and  h                                           ; $68eb: $a4
	db   $e4                                         ; $68ec: $e4
	nop                                              ; $68ed: $00
	nop                                              ; $68ee: $00
	nop                                              ; $68ef: $00
	nop                                              ; $68f0: $00
	nop                                              ; $68f1: $00
	cp   $98                                         ; $68f2: $fe $98
	sbc  b                                           ; $68f4: $98
	sbc  [hl]                                        ; $68f5: $9e
	ld   a, [$3a2a]                                  ; $68f6: $fa $2a $3a
	xor  [hl]                                        ; $68f9: $ae
	xor  b                                           ; $68fa: $a8
	cp   b                                           ; $68fb: $b8
	adc  $00                                         ; $68fc: $ce $00
	nop                                              ; $68fe: $00
	nop                                              ; $68ff: $00
	nop                                              ; $6900: $00
	ld   c, d                                        ; $6901: $4a
	ld   d, h                                        ; $6902: $54
	cp   $b4                                         ; $6903: $fe $b4
	call nc, Call_007_54fe                           ; $6905: $d4 $fe $54
	db   $f4                                         ; $6908: $f4
	sbc  $f4                                         ; $6909: $de $f4
	db   $f4                                         ; $690b: $f4
	sbc  [hl]                                        ; $690c: $9e
	nop                                              ; $690d: $00
	nop                                              ; $690e: $00
	nop                                              ; $690f: $00
	nop                                              ; $6910: $00
	ld   e, h                                        ; $6911: $5c
	ld   d, b                                        ; $6912: $50
	ld   e, h                                        ; $6913: $5c
	ldh  a, [$dc]                                    ; $6914: $f0 $dc
	ret  nc                                          ; $6916: $d0

	sbc  $f8                                         ; $6917: $de $f8
	ld   e, d                                        ; $6919: $5a
	ld   d, h                                        ; $691a: $54
	ld   d, h                                        ; $691b: $54
	ld   e, d                                        ; $691c: $5a
	nop                                              ; $691d: $00
	nop                                              ; $691e: $00
	nop                                              ; $691f: $00
	nop                                              ; $6920: $00
	jr   z, jr_007_694b                              ; $6921: $28 $28

	cp   $5a                                         ; $6923: $fe $5a
	adc  d                                           ; $6925: $8a
	ld   e, d                                        ; $6926: $5a
	ld   e, d                                        ; $6927: $5a
	ld   a, [hl+]                                    ; $6928: $2a
	ld   a, [hl+]                                    ; $6929: $2a
	ld   [hl], d                                     ; $692a: $72
	ld   d, d                                        ; $692b: $52
	add  [hl]                                        ; $692c: $86
	nop                                              ; $692d: $00
	nop                                              ; $692e: $00
	nop                                              ; $692f: $00
	nop                                              ; $6930: $00

jr_007_6931:
	jr   z, jr_007_6931                              ; $6931: $28 $fe

	jr   z, jr_007_69b1                              ; $6933: $28 $7c

	ld   d, h                                        ; $6935: $54
	ld   a, h                                        ; $6936: $7c
	ld   d, h                                        ; $6937: $54
	ld   a, h                                        ; $6938: $7c
	db   $10                                         ; $6939: $10
	cp   $38                                         ; $693a: $fe $38
	sub  $00                                         ; $693c: $d6 $00
	nop                                              ; $693e: $00
	nop                                              ; $693f: $00
	nop                                              ; $6940: $00

jr_007_6941:
	jr   z, jr_007_6941                              ; $6941: $28 $fe

jr_007_6943:
	jr   z, jr_007_6943                              ; $6943: $28 $fe

	ld   b, h                                        ; $6945: $44
	ld   b, h                                        ; $6946: $44
	cp   $0c                                         ; $6947: $fe $0c
	inc  d                                           ; $6949: $14
	inc  h                                           ; $694a: $24

jr_007_694b:
	call nz, $000c                                   ; $694b: $c4 $0c $00
	nop                                              ; $694e: $00
	nop                                              ; $694f: $00
	nop                                              ; $6950: $00
	ld   b, h                                        ; $6951: $44
	ld   e, [hl]                                     ; $6952: $5e
	db   $e4                                         ; $6953: $e4
	ld   c, [hl]                                     ; $6954: $4e
	ld   e, d                                        ; $6955: $5a
	cp   $fa                                         ; $6956: $fe $fa
	cp   $da                                         ; $6958: $fe $da
	ld   e, [hl]                                     ; $695a: $5e
	ld   d, b                                        ; $695b: $50
	ld   e, [hl]                                     ; $695c: $5e
	nop                                              ; $695d: $00
	nop                                              ; $695e: $00
	nop                                              ; $695f: $00
	nop                                              ; $6960: $00
	ld   l, d                                        ; $6961: $6a
	sbc  $4a                                         ; $6962: $de $4a
	xor  $5e                                         ; $6964: $ee $5e
	xor  $ee                                         ; $6966: $ee $ee
	ldh  [$de], a                                    ; $6968: $e0 $de
	ld   c, d                                        ; $696a: $4a
	ld   b, h                                        ; $696b: $44
	ld   e, d                                        ; $696c: $5a
	nop                                              ; $696d: $00
	nop                                              ; $696e: $00
	nop                                              ; $696f: $00
	nop                                              ; $6970: $00
	ld   c, h                                        ; $6971: $4c
	ld   [$fe48], a                                  ; $6972: $ea $48 $fe
	ld   c, b                                        ; $6975: $48
	ld   [$ea4a], a                                  ; $6976: $ea $4a $ea
	db   $ec                                         ; $6979: $ec
	ld   c, h                                        ; $697a: $4c
	db   $ec                                         ; $697b: $ec
	ld   d, d                                        ; $697c: $52
	nop                                              ; $697d: $00
	nop                                              ; $697e: $00
	nop                                              ; $697f: $00
	nop                                              ; $6980: $00
	db   $10                                         ; $6981: $10
	ld   a, h                                        ; $6982: $7c
	db   $10                                         ; $6983: $10
	ld   a, h                                        ; $6984: $7c

jr_007_6985:
	jr   z, jr_007_6985                              ; $6985: $28 $fe

	ld   d, h                                        ; $6987: $54
	cp   d                                           ; $6988: $ba
	db   $10                                         ; $6989: $10
	ld   a, h                                        ; $698a: $7c
	db   $10                                         ; $698b: $10
	stop                                             ; $698c: $10 $00
	nop                                              ; $698e: $00
	nop                                              ; $698f: $00
	nop                                              ; $6990: $00
	ld   c, b                                        ; $6991: $48
	xor  b                                           ; $6992: $a8
	ld   e, [hl]                                     ; $6993: $5e
	db   $f4                                         ; $6994: $f4
	and  h                                           ; $6995: $a4
	cp   $b6                                         ; $6996: $fe $b6
	or   $96                                         ; $6998: $f6 $96
	and  h                                           ; $699a: $a4
	call nc, $0004                                   ; $699b: $d4 $04 $00
	nop                                              ; $699e: $00
	nop                                              ; $699f: $00
	nop                                              ; $69a0: $00
	ld   [$5cbe], sp                                 ; $69a1: $08 $be $5c
	ld   [$54be], sp                                 ; $69a4: $08 $be $54
	inc  e                                           ; $69a7: $1c
	ld   e, h                                        ; $69a8: $5c
	ld   d, h                                        ; $69a9: $54
	sbc  h                                           ; $69aa: $9c
	sub  h                                           ; $69ab: $94
	and  d                                           ; $69ac: $a2
	nop                                              ; $69ad: $00
	nop                                              ; $69ae: $00
	nop                                              ; $69af: $00
	nop                                              ; $69b0: $00

jr_007_69b1:
	cp   $28                                         ; $69b1: $fe $28
	cp   $aa                                         ; $69b3: $fe $aa
	cp   $00                                         ; $69b5: $fe $00
	ld   a, h                                        ; $69b7: $7c
	nop                                              ; $69b8: $00
	cp   $10                                         ; $69b9: $fe $10
	ld   d, h                                        ; $69bb: $54
	or   d                                           ; $69bc: $b2
	nop                                              ; $69bd: $00
	nop                                              ; $69be: $00
	nop                                              ; $69bf: $00
	nop                                              ; $69c0: $00
	inc  h                                           ; $69c1: $24
	ld   l, $44                                      ; $69c2: $2e $44
	adc  $5a                                         ; $69c4: $ce $5a
	ld   e, [hl]                                     ; $69c6: $5e
	ld   e, d                                        ; $69c7: $5a
	ld   e, [hl]                                     ; $69c8: $5e
	ld   e, d                                        ; $69c9: $5a
	ld   e, [hl]                                     ; $69ca: $5e
	ld   d, b                                        ; $69cb: $50
	ld   e, [hl]                                     ; $69cc: $5e
	nop                                              ; $69cd: $00
	nop                                              ; $69ce: $00
	nop                                              ; $69cf: $00
	nop                                              ; $69d0: $00
	nop                                              ; $69d1: $00
	cp   $82                                         ; $69d2: $fe $82
	add  d                                           ; $69d4: $82
	jr   c, jr_007_69ff                              ; $69d5: $38 $28

	jr   z, jr_007_6a01                              ; $69d7: $28 $28

	jr   z, jr_007_6a25                              ; $69d9: $28 $4a

	ld   c, d                                        ; $69db: $4a
	adc  [hl]                                        ; $69dc: $8e
	nop                                              ; $69dd: $00
	nop                                              ; $69de: $00
	nop                                              ; $69df: $00
	nop                                              ; $69e0: $00
	nop                                              ; $69e1: $00
	ldh  a, [c]                                      ; $69e2: $f2
	ld   a, [bc]                                     ; $69e3: $0a
	ld   a, [$fa9a]                                  ; $69e4: $fa $9a $fa
	ld   [bc], a                                     ; $69e7: $02
	ld   a, [$faaa]                                  ; $69e8: $fa $aa $fa
	xor  d                                           ; $69eb: $aa
	cp   $00                                         ; $69ec: $fe $00
	nop                                              ; $69ee: $00
	nop                                              ; $69ef: $00
	nop                                              ; $69f0: $00
	nop                                              ; $69f1: $00
	ld   a, $12                                      ; $69f2: $3e $12
	db   $f4                                         ; $69f4: $f4
	or   h                                           ; $69f5: $b4
	or   [hl]                                        ; $69f6: $b6
	cp   d                                           ; $69f7: $ba
	ld   a, [$241a]                                  ; $69f8: $fa $1a $24
	inc  h                                           ; $69fb: $24
	ld   c, d                                        ; $69fc: $4a
	nop                                              ; $69fd: $00
	nop                                              ; $69fe: $00

jr_007_69ff:
	nop                                              ; $69ff: $00
	nop                                              ; $6a00: $00

jr_007_6a01:
	ld   d, h                                        ; $6a01: $54
	ld   a, h                                        ; $6a02: $7c
	xor  $7a                                         ; $6a03: $ee $7a
	ld   l, d                                        ; $6a05: $6a
	ld   a, [$fcd2]                                  ; $6a06: $fa $d2 $fc
	call nc, Call_007_6a7c                           ; $6a09: $d4 $7c $6a
	ld   e, d                                        ; $6a0c: $5a
	nop                                              ; $6a0d: $00
	nop                                              ; $6a0e: $00
	nop                                              ; $6a0f: $00
	nop                                              ; $6a10: $00
	jr   nz, jr_007_6a41                             ; $6a11: $20 $2e

	ld   a, [$2a2a]                                  ; $6a13: $fa $2a $2a
	ld   a, [$4a2a]                                  ; $6a16: $fa $2a $4a
	ld   e, d                                        ; $6a19: $5a
	cp   b                                           ; $6a1a: $b8
	ret  c                                           ; $6a1b: $d8

	ld   [rRAMG], sp                                 ; $6a1c: $08 $00 $00
	nop                                              ; $6a1f: $00
	nop                                              ; $6a20: $00
	db   $10                                         ; $6a21: $10
	cp   $00                                         ; $6a22: $fe $00
	ld   a, h                                        ; $6a24: $7c

jr_007_6a25:
	ld   b, h                                        ; $6a25: $44
	ld   a, h                                        ; $6a26: $7c
	jr   nc, @+$74                                   ; $6a27: $30 $72

	xor  h                                           ; $6a29: $ac
	jr   z, jr_007_6a60                              ; $6a2a: $28 $34

	ld   h, d                                        ; $6a2c: $62
	nop                                              ; $6a2d: $00
	nop                                              ; $6a2e: $00
	nop                                              ; $6a2f: $00
	nop                                              ; $6a30: $00
	ld   h, h                                        ; $6a31: $64
	sub  $56                                         ; $6a32: $d6 $56
	db   $e4                                         ; $6a34: $e4
	ld   b, h                                        ; $6a35: $44
	ld   [$00da], a                                  ; $6a36: $ea $da $00
	ld   d, h                                        ; $6a39: $54
	ld   c, d                                        ; $6a3a: $4a
	and  d                                           ; $6a3b: $a2
	sbc  [hl]                                        ; $6a3c: $9e

jr_007_6a3d:
	nop                                              ; $6a3d: $00
	nop                                              ; $6a3e: $00
	nop                                              ; $6a3f: $00
	nop                                              ; $6a40: $00

jr_007_6a41:
	ld   [$7e88], sp                                 ; $6a41: $08 $88 $7e
	ld   a, [hl+]                                    ; $6a44: $2a
	adc  b                                           ; $6a45: $88
	ld   c, b                                        ; $6a46: $48
	inc  c                                           ; $6a47: $0c
	ld   c, h                                        ; $6a48: $4c
	ld   d, h                                        ; $6a49: $54
	sub  h                                           ; $6a4a: $94
	sub  h                                           ; $6a4b: $94
	and  [hl]                                        ; $6a4c: $a6
	nop                                              ; $6a4d: $00
	nop                                              ; $6a4e: $00
	nop                                              ; $6a4f: $00
	nop                                              ; $6a50: $00
	ld   d, h                                        ; $6a51: $54

jr_007_6a52:
	ld   a, [hl]                                     ; $6a52: $7e
	call nc, Call_007_627e                           ; $6a53: $d4 $7e $62
	cp   $e2                                         ; $6a56: $fe $e2
	cp   $c8                                         ; $6a58: $fe $c8
	ld   a, [hl]                                     ; $6a5a: $7e
	ld   d, h                                        ; $6a5b: $54
	ld   h, d                                        ; $6a5c: $62
	nop                                              ; $6a5d: $00
	nop                                              ; $6a5e: $00
	nop                                              ; $6a5f: $00

jr_007_6a60:
	nop                                              ; $6a60: $00
	ld   b, b                                        ; $6a61: $40
	ld   l, [hl]                                     ; $6a62: $6e
	ld   [hl], d                                     ; $6a63: $72
	db   $e4                                         ; $6a64: $e4
	ld   [hl], d                                     ; $6a65: $72
	ld   c, [hl]                                     ; $6a66: $4e
	ld   h, [hl]                                     ; $6a67: $66
	db   $fc                                         ; $6a68: $fc
	ld   d, [hl]                                     ; $6a69: $56
	ld   a, h                                        ; $6a6a: $7c
	ld   d, h                                        ; $6a6b: $54
	ld   [rRAMG], a                                  ; $6a6c: $ea $00 $00
	nop                                              ; $6a6f: $00
	nop                                              ; $6a70: $00
	inc  a                                           ; $6a71: $3c
	inc  h                                           ; $6a72: $24
	ld   l, b                                        ; $6a73: $68
	sub  b                                           ; $6a74: $90

jr_007_6a75:
	jr   z, jr_007_6a3d                              ; $6a75: $28 $c6

	db   $10                                         ; $6a77: $10
	ld   a, h                                        ; $6a78: $7c
	db   $10                                         ; $6a79: $10
	jr   c, jr_007_6a52                              ; $6a7a: $38 $d6

Call_007_6a7c:
	stop                                             ; $6a7c: $10 $00

Call_007_6a7e:
	nop                                              ; $6a7e: $00
	nop                                              ; $6a7f: $00
	nop                                              ; $6a80: $00
	inc  e                                           ; $6a81: $1c
	sub  h                                           ; $6a82: $94
	ld   e, h                                        ; $6a83: $5c
	inc  d                                           ; $6a84: $14
	cp   [hl]                                        ; $6a85: $be
	halt                                             ; $6a86: $76
	ld   a, $40                                      ; $6a87: $3e $40
	ld   a, h                                        ; $6a89: $7c
	sub  h                                           ; $6a8a: $94
	adc  b                                           ; $6a8b: $88
	or   [hl]                                        ; $6a8c: $b6
	nop                                              ; $6a8d: $00
	nop                                              ; $6a8e: $00
	nop                                              ; $6a8f: $00
	nop                                              ; $6a90: $00
	sub  h                                           ; $6a91: $94
	ld   a, [hl]                                     ; $6a92: $7e
	ld   [$54dc], sp                                 ; $6a93: $08 $dc $54
	ld   e, h                                        ; $6a96: $5c
	call c, $04be                                    ; $6a97: $dc $be $04
	cp   $24                                         ; $6a9a: $fe $24
	inc  e                                           ; $6a9c: $1c
	nop                                              ; $6a9d: $00
	nop                                              ; $6a9e: $00
	nop                                              ; $6a9f: $00
	nop                                              ; $6aa0: $00
	ld   c, h                                        ; $6aa1: $4c
	ld   b, h                                        ; $6aa2: $44
	db   $f4                                         ; $6aa3: $f4
	ld   d, h                                        ; $6aa4: $54
	ld   h, d                                        ; $6aa5: $62
	ld   [$e8e8], a                                  ; $6aa6: $ea $e8 $e8
	jp   nc, Jump_007_5a56                           ; $6aa9: $d2 $56 $5a

	ld   b, d                                        ; $6aac: $42
	nop                                              ; $6aad: $00
	nop                                              ; $6aae: $00
	nop                                              ; $6aaf: $00
	nop                                              ; $6ab0: $00
	nop                                              ; $6ab1: $00
	cp   $aa                                         ; $6ab2: $fe $aa
	xor  d                                           ; $6ab4: $aa
	xor  d                                           ; $6ab5: $aa
	or   $a0                                         ; $6ab6: $f6 $a0
	cp   [hl]                                        ; $6ab8: $be
	or   d                                           ; $6ab9: $b2
	ldh  a, [c]                                      ; $6aba: $f2
	ld   [de], a                                     ; $6abb: $12
	ld   e, $00                                      ; $6abc: $1e $00
	nop                                              ; $6abe: $00
	nop                                              ; $6abf: $00
	nop                                              ; $6ac0: $00
	ld   b, [hl]                                     ; $6ac1: $46
	ld   hl, sp+$50                                  ; $6ac2: $f8 $50
	ld   a, [hl]                                     ; $6ac4: $7e
	call nc, $e454                                   ; $6ac5: $d4 $54 $e4
	nop                                              ; $6ac8: $00
	ld   a, h                                        ; $6ac9: $7c
	ld   b, h                                        ; $6aca: $44
	ld   b, h                                        ; $6acb: $44
	ld   a, h                                        ; $6acc: $7c
	nop                                              ; $6acd: $00
	nop                                              ; $6ace: $00
	nop                                              ; $6acf: $00
	nop                                              ; $6ad0: $00

jr_007_6ad1:
	jr   z, jr_007_6ad1                              ; $6ad1: $28 $fe

	jr   z, jr_007_6a75                              ; $6ad3: $28 $a0

	ld   c, b                                        ; $6ad5: $48
	ld   e, d                                        ; $6ad6: $5a
	cp   d                                           ; $6ad7: $ba
	inc  a                                           ; $6ad8: $3c
	ld   l, b                                        ; $6ad9: $68
	xor  b                                           ; $6ada: $a8
	inc  [hl]                                        ; $6adb: $34
	ld   b, d                                        ; $6adc: $42
	nop                                              ; $6add: $00
	nop                                              ; $6ade: $00
	nop                                              ; $6adf: $00
	nop                                              ; $6ae0: $00
	add  b                                           ; $6ae1: $80
	ld   a, [hl]                                     ; $6ae2: $7e
	inc  b                                           ; $6ae3: $04
	add  h                                           ; $6ae4: $84
	ld   a, h                                        ; $6ae5: $7c
	inc  l                                           ; $6ae6: $2c
	inc  l                                           ; $6ae7: $2c
	ld   a, h                                        ; $6ae8: $7c
	ld   b, h                                        ; $6ae9: $44

Call_007_6aea:
	add  h                                           ; $6aea: $84
	add  h                                           ; $6aeb: $84
	adc  h                                           ; $6aec: $8c
	nop                                              ; $6aed: $00
	nop                                              ; $6aee: $00
	nop                                              ; $6aef: $00
	nop                                              ; $6af0: $00
	inc  [hl]                                        ; $6af1: $34
	ld   a, h                                        ; $6af2: $7c
	xor  [hl]                                        ; $6af3: $ae
	ld   a, [hl-]                                    ; $6af4: $3a
	ld   c, d                                        ; $6af5: $4a
	ld   a, [$7c6a]                                  ; $6af6: $fa $6a $7c
	ld   l, h                                        ; $6af9: $6c
	ld   a, h                                        ; $6afa: $7c
	ld   l, d                                        ; $6afb: $6a
	ld   l, d                                        ; $6afc: $6a
	nop                                              ; $6afd: $00
	nop                                              ; $6afe: $00
	nop                                              ; $6aff: $00
	nop                                              ; $6b00: $00

jr_007_6b01:
	jr   z, jr_007_6b01                              ; $6b01: $28 $fe

	jr   z, jr_007_6b65                              ; $6b03: $28 $60

	ret  z                                           ; $6b05: $c8

	ld   e, d                                        ; $6b06: $5a
	ld   a, [$e85c]                                  ; $6b07: $fa $5c $e8
	db   $fc                                         ; $6b0a: $fc
	call nc, $0062                                   ; $6b0b: $d4 $62 $00
	nop                                              ; $6b0e: $00
	nop                                              ; $6b0f: $00
	nop                                              ; $6b10: $00
	nop                                              ; $6b11: $00
	ld   a, [$de8a]                                  ; $6b12: $fa $8a $de
	xor  [hl]                                        ; $6b15: $ae
	cp   $ae                                         ; $6b16: $fe $ae
	xor  [hl]                                        ; $6b18: $ae
	ld   a, [$fafa]                                  ; $6b19: $fa $fa $fa
	adc  [hl]                                        ; $6b1c: $8e
	nop                                              ; $6b1d: $00
	nop                                              ; $6b1e: $00
	nop                                              ; $6b1f: $00
	nop                                              ; $6b20: $00
	nop                                              ; $6b21: $00
	sub  d                                           ; $6b22: $92
	ld   d, d                                        ; $6b23: $52
	ld   d, h                                        ; $6b24: $54
	cp   $82                                         ; $6b25: $fe $82
	cp   d                                           ; $6b27: $ba
	xor  d                                           ; $6b28: $aa
	xor  d                                           ; $6b29: $aa
	cp   d                                           ; $6b2a: $ba
	add  d                                           ; $6b2b: $82
	add  [hl]                                        ; $6b2c: $86
	nop                                              ; $6b2d: $00
	nop                                              ; $6b2e: $00
	nop                                              ; $6b2f: $00
	nop                                              ; $6b30: $00
	nop                                              ; $6b31: $00
	db   $10                                         ; $6b32: $10
	ld   d, [hl]                                     ; $6b33: $56
	ld   e, d                                        ; $6b34: $5a
	ld   [hl], d                                     ; $6b35: $72
	jp   nc, Jump_007_5652                           ; $6b36: $d2 $52 $56

	ld   d, b                                        ; $6b39: $50
	ld   b, b                                        ; $6b3a: $40
	ld   b, d                                        ; $6b3b: $42
	ld   a, [hl]                                     ; $6b3c: $7e
	nop                                              ; $6b3d: $00
	nop                                              ; $6b3e: $00
	nop                                              ; $6b3f: $00
	nop                                              ; $6b40: $00
	adc  b                                           ; $6b41: $88
	ld   e, h                                        ; $6b42: $5c
	inc  d                                           ; $6b43: $14
	sbc  h                                           ; $6b44: $9c
	ld   a, [hl]                                     ; $6b45: $7e
	ld   a, [hl+]                                    ; $6b46: $2a
	sub  $48                                         ; $6b47: $d6 $48
	ld   a, [hl]                                     ; $6b49: $7e
	ld   c, h                                        ; $6b4a: $4c
	db   $f4                                         ; $6b4b: $f4
	sbc  [hl]                                        ; $6b4c: $9e
	nop                                              ; $6b4d: $00
	nop                                              ; $6b4e: $00
	nop                                              ; $6b4f: $00
	nop                                              ; $6b50: $00
	ld   a, [hl]                                     ; $6b51: $7e
	ld   b, b                                        ; $6b52: $40

jr_007_6b53:
	ld   a, [hl]                                     ; $6b53: $7e
	ld   h, d                                        ; $6b54: $62
	ld   a, [hl]                                     ; $6b55: $7e
	ld   a, [hl]                                     ; $6b56: $7e
	ld   e, h                                        ; $6b57: $5c
	ld   b, h                                        ; $6b58: $44
	ld   c, b                                        ; $6b59: $48
	cp   [hl]                                        ; $6b5a: $be
	add  h                                           ; $6b5b: $84
	jr   jr_007_6b5e                                 ; $6b5c: $18 $00

jr_007_6b5e:
	nop                                              ; $6b5e: $00
	nop                                              ; $6b5f: $00
	nop                                              ; $6b60: $00
	nop                                              ; $6b61: $00
	jr   nz, jr_007_6b84                             ; $6b62: $20 $20

	ld   b, b                                        ; $6b64: $40

jr_007_6b65:
	call c, Call_007_4040                            ; $6b65: $dc $40 $40
	ld   b, b                                        ; $6b68: $40
	ld   b, b                                        ; $6b69: $40
	ld   b, b                                        ; $6b6a: $40
	ld   a, [hl]                                     ; $6b6b: $7e
	ld   b, b                                        ; $6b6c: $40
	nop                                              ; $6b6d: $00
	nop                                              ; $6b6e: $00
	nop                                              ; $6b6f: $00
	nop                                              ; $6b70: $00
	ld   [$40be], sp                                 ; $6b71: $08 $be $40
	ld   a, $a2                                      ; $6b74: $3e $a2
	ld   a, [hl]                                     ; $6b76: $7e
	inc  e                                           ; $6b77: $1c
	ld   b, h                                        ; $6b78: $44
	ld   c, b                                        ; $6b79: $48
	cp   [hl]                                        ; $6b7a: $be
	add  h                                           ; $6b7b: $84
	sbc  b                                           ; $6b7c: $98
	nop                                              ; $6b7d: $00
	nop                                              ; $6b7e: $00
	nop                                              ; $6b7f: $00
	nop                                              ; $6b80: $00
	nop                                              ; $6b81: $00

jr_007_6b82:
	jr   z, jr_007_6b82                              ; $6b82: $28 $fe

jr_007_6b84:
	jr   z, jr_007_6b96                              ; $6b84: $28 $10

	ld   a, h                                        ; $6b86: $7c
	ld   d, h                                        ; $6b87: $54
	ld   d, h                                        ; $6b88: $54
	cp   $10                                         ; $6b89: $fe $10
	jr   z, jr_007_6b53                              ; $6b8b: $28 $c6

	nop                                              ; $6b8d: $00
	nop                                              ; $6b8e: $00
	nop                                              ; $6b8f: $00
	nop                                              ; $6b90: $00
	nop                                              ; $6b91: $00
	db   $10                                         ; $6b92: $10
	cp   $80                                         ; $6b93: $fe $80
	and  h                                           ; $6b95: $a4

jr_007_6b96:
	cp   $a4                                         ; $6b96: $fe $a4
	cp   $fe                                         ; $6b98: $fe $fe
	db   $ec                                         ; $6b9a: $ec
	and  h                                           ; $6b9b: $a4
	inc  h                                           ; $6b9c: $24
	nop                                              ; $6b9d: $00
	nop                                              ; $6b9e: $00
	nop                                              ; $6b9f: $00
	nop                                              ; $6ba0: $00
	db   $10                                         ; $6ba1: $10
	sub  d                                           ; $6ba2: $92
	sub  d                                           ; $6ba3: $92
	cp   $00                                         ; $6ba4: $fe $00
	cp   $20                                         ; $6ba6: $fe $20
	ld   b, b                                        ; $6ba8: $40
	cp   $42                                         ; $6ba9: $fe $42
	ld   b, d                                        ; $6bab: $42
	ld   a, [hl]                                     ; $6bac: $7e
	nop                                              ; $6bad: $00
	nop                                              ; $6bae: $00
	nop                                              ; $6baf: $00
	nop                                              ; $6bb0: $00
	nop                                              ; $6bb1: $00
	cp   $96                                         ; $6bb2: $fe $96
	cp   $92                                         ; $6bb4: $fe $92
	ldh  a, [c]                                      ; $6bb6: $f2
	sub  $f6                                         ; $6bb7: $d6 $f6
	adc  d                                           ; $6bb9: $8a
	ld   a, [$fe96]                                  ; $6bba: $fa $96 $fe
	nop                                              ; $6bbd: $00
	nop                                              ; $6bbe: $00
	nop                                              ; $6bbf: $00
	nop                                              ; $6bc0: $00
	nop                                              ; $6bc1: $00
	db   $10                                         ; $6bc2: $10
	cp   $82                                         ; $6bc3: $fe $82

jr_007_6bc5:
	jr   nz, jr_007_6bc5                             ; $6bc5: $20 $fe

	jr   nz, jr_007_6c11                             ; $6bc7: $20 $48

	ld   d, b                                        ; $6bc9: $50
	and  h                                           ; $6bca: $a4
	ld   a, $02                                      ; $6bcb: $3e $02
	nop                                              ; $6bcd: $00
	nop                                              ; $6bce: $00
	nop                                              ; $6bcf: $00
	nop                                              ; $6bd0: $00
	jr   z, jr_007_6c07                              ; $6bd1: $28 $34

	ld   d, h                                        ; $6bd3: $54
	ldh  [c], a                                      ; $6bd4: $e2
	ld   a, [hl]                                     ; $6bd5: $7e
	ld   b, b                                        ; $6bd6: $40
	ld   a, [hl]                                     ; $6bd7: $7e
	ld   a, d                                        ; $6bd8: $7a
	ld   a, [hl]                                     ; $6bd9: $7e
	ld   a, d                                        ; $6bda: $7a
	ld   a, d                                        ; $6bdb: $7a
	ld   a, d                                        ; $6bdc: $7a
	nop                                              ; $6bdd: $00
	nop                                              ; $6bde: $00
	nop                                              ; $6bdf: $00
	nop                                              ; $6be0: $00
	ld   a, $22                                      ; $6be1: $3e $22
	ld   h, d                                        ; $6be3: $62
	ld   e, h                                        ; $6be4: $5c
	ld   [$544a], a                                  ; $6be5: $ea $4a $54
	ld   l, [hl]                                     ; $6be8: $6e
	sub  $0e                                         ; $6be9: $d6 $0e
	inc  [hl]                                        ; $6beb: $34
	ld   [rRAMG], sp                                 ; $6bec: $08 $00 $00
	nop                                              ; $6bef: $00
	nop                                              ; $6bf0: $00
	ld   d, b                                        ; $6bf1: $50
	ld   hl, sp+$5e                                  ; $6bf2: $f8 $5e
	ld   e, d                                        ; $6bf4: $5a
	ld   [hl], d                                     ; $6bf5: $72
	sbc  d                                           ; $6bf6: $9a
	ld   a, d                                        ; $6bf7: $7a
	ld   e, d                                        ; $6bf8: $5a
	ld   d, h                                        ; $6bf9: $54
	ld   [hl], h                                     ; $6bfa: $74
	ld   a, [de]                                     ; $6bfb: $1a
	ld   [hl-], a                                    ; $6bfc: $32
	nop                                              ; $6bfd: $00
	nop                                              ; $6bfe: $00
	nop                                              ; $6bff: $00
	nop                                              ; $6c00: $00
	nop                                              ; $6c01: $00
	ld   a, h                                        ; $6c02: $7c
	ld   b, h                                        ; $6c03: $44
	ld   a, h                                        ; $6c04: $7c
	ld   b, h                                        ; $6c05: $44
	ld   a, h                                        ; $6c06: $7c

jr_007_6c07:
	nop                                              ; $6c07: $00
	cp   $82                                         ; $6c08: $fe $82
	cp   $82                                         ; $6c0a: $fe $82
	cp   $00                                         ; $6c0c: $fe $00
	nop                                              ; $6c0e: $00
	nop                                              ; $6c0f: $00
	nop                                              ; $6c10: $00

jr_007_6c11:
	db   $10                                         ; $6c11: $10
	ld   a, h                                        ; $6c12: $7c
	ld   b, h                                        ; $6c13: $44
	ld   a, h                                        ; $6c14: $7c
	ld   b, h                                        ; $6c15: $44
	ld   a, h                                        ; $6c16: $7c
	db   $10                                         ; $6c17: $10
	ld   a, [$383c]                                  ; $6c18: $fa $3c $38
	sub  $10                                         ; $6c1b: $d6 $10
	nop                                              ; $6c1d: $00
	nop                                              ; $6c1e: $00
	nop                                              ; $6c1f: $00
	nop                                              ; $6c20: $00
	nop                                              ; $6c21: $00
	ld   a, h                                        ; $6c22: $7c
	ld   b, h                                        ; $6c23: $44
	ld   b, h                                        ; $6c24: $44
	ld   a, h                                        ; $6c25: $7c
	nop                                              ; $6c26: $00
	cp   $10                                         ; $6c27: $fe $10
	ld   a, h                                        ; $6c29: $7c
	db   $10                                         ; $6c2a: $10
	db   $10                                         ; $6c2b: $10
	cp   $00                                         ; $6c2c: $fe $00
	nop                                              ; $6c2e: $00
	nop                                              ; $6c2f: $00
	nop                                              ; $6c30: $00
	db   $10                                         ; $6c31: $10
	cp   $00                                         ; $6c32: $fe $00
	ld   b, h                                        ; $6c34: $44
	call z, $00aa                                    ; $6c35: $cc $aa $00
	db   $10                                         ; $6c38: $10
	cp   $10                                         ; $6c39: $fe $10
	db   $10                                         ; $6c3b: $10
	stop                                             ; $6c3c: $10 $00
	nop                                              ; $6c3e: $00
	nop                                              ; $6c3f: $00
	nop                                              ; $6c40: $00
	db   $10                                         ; $6c41: $10
	ld   d, h                                        ; $6c42: $54
	ld   d, d                                        ; $6c43: $52

jr_007_6c44:
	sub  d                                           ; $6c44: $92
	inc  [hl]                                        ; $6c45: $34
	jr   jr_007_6c44                                 ; $6c46: $18 $fc

	ld   b, h                                        ; $6c48: $44
	ld   a, h                                        ; $6c49: $7c
	ld   a, h                                        ; $6c4a: $7c
	ld   b, h                                        ; $6c4b: $44
	ld   a, h                                        ; $6c4c: $7c
	nop                                              ; $6c4d: $00
	nop                                              ; $6c4e: $00
	nop                                              ; $6c4f: $00
	nop                                              ; $6c50: $00
	nop                                              ; $6c51: $00
	ld   b, b                                        ; $6c52: $40
	ld   e, [hl]                                     ; $6c53: $5e
	ldh  a, [c]                                      ; $6c54: $f2
	ld   d, d                                        ; $6c55: $52
	ld   e, [hl]                                     ; $6c56: $5e
	ld   [hl], d                                     ; $6c57: $72
	jp   nc, Jump_007_405e                           ; $6c58: $d2 $5e $40

	ld   b, b                                        ; $6c5b: $40
	sbc  $00                                         ; $6c5c: $de $00
	nop                                              ; $6c5e: $00
	nop                                              ; $6c5f: $00
	nop                                              ; $6c60: $00
	jr   z, jr_007_6ce1                              ; $6c61: $28 $7e

	adc  b                                           ; $6c63: $88
	ld   a, $6e                                      ; $6c64: $3e $6e
	cp   $40                                         ; $6c66: $fe $40
	ld   l, d                                        ; $6c68: $6a
	ld   l, d                                        ; $6c69: $6a
	ld   [hl], b                                     ; $6c6a: $70
	ld   [hl], d                                     ; $6c6b: $72
	ld   l, [hl]                                     ; $6c6c: $6e
	nop                                              ; $6c6d: $00
	nop                                              ; $6c6e: $00
	nop                                              ; $6c6f: $00
	nop                                              ; $6c70: $00
	nop                                              ; $6c71: $00
	inc  h                                           ; $6c72: $24
	ld   b, l                                        ; $6c73: $45
	ld   b, l                                        ; $6c74: $45
	sbc  a                                           ; $6c75: $9f
	add  h                                           ; $6c76: $84
	adc  l                                           ; $6c77: $8d
	adc  [hl]                                        ; $6c78: $8e
	adc  [hl]                                        ; $6c79: $8e
	sub  h                                           ; $6c7a: $94
	ld   d, l                                        ; $6c7b: $55
	ld   d, l                                        ; $6c7c: $55
	dec  h                                           ; $6c7d: $25
	nop                                              ; $6c7e: $00
	nop                                              ; $6c7f: $00
	nop                                              ; $6c80: $00
	nop                                              ; $6c81: $00
	ld   c, b                                        ; $6c82: $48
	ld   b, h                                        ; $6c83: $44
	db   $f4                                         ; $6c84: $f4
	ld   b, d                                        ; $6c85: $42
	ld   b, d                                        ; $6c86: $42
	ldh  a, [c]                                      ; $6c87: $f2
	ld   b, d                                        ; $6c88: $42
	ldh  [c], a                                      ; $6c89: $e2
	ldh  [c], a                                      ; $6c8a: $e2
	ld   d, h                                        ; $6c8b: $54
	ld   d, h                                        ; $6c8c: $54
	ld   c, b                                        ; $6c8d: $48
	nop                                              ; $6c8e: $00
	nop                                              ; $6c8f: $00
	nop                                              ; $6c90: $00
	nop                                              ; $6c91: $00
	inc  h                                           ; $6c92: $24
	ld   b, h                                        ; $6c93: $44
	ld   e, a                                        ; $6c94: $5f
	add  h                                           ; $6c95: $84
	add  a                                           ; $6c96: $87
	add  [hl]                                        ; $6c97: $86
	add  a                                           ; $6c98: $87
	add  [hl]                                        ; $6c99: $86
	adc  e                                           ; $6c9a: $8b
	ld   c, d                                        ; $6c9b: $4a
	ld   d, d                                        ; $6c9c: $52
	ld   [hl+], a                                    ; $6c9d: $22
	nop                                              ; $6c9e: $00
	nop                                              ; $6c9f: $00
	nop                                              ; $6ca0: $00
	nop                                              ; $6ca1: $00
	ld   [$e404], sp                                 ; $6ca2: $08 $04 $e4
	ld   [bc], a                                     ; $6ca5: $02
	ldh  [c], a                                      ; $6ca6: $e2
	ld   [hl+], a                                    ; $6ca7: $22
	ldh  [c], a                                      ; $6ca8: $e2
	ld   [hl+], a                                    ; $6ca9: $22
	ldh  [c], a                                      ; $6caa: $e2
	inc  h                                           ; $6cab: $24
	inc  h                                           ; $6cac: $24
	ld   l, b                                        ; $6cad: $68
	nop                                              ; $6cae: $00
	nop                                              ; $6caf: $00
	nop                                              ; $6cb0: $00
	nop                                              ; $6cb1: $00
	nop                                              ; $6cb2: $00
	nop                                              ; $6cb3: $00
	ld   a, b                                        ; $6cb4: $78
	nop                                              ; $6cb5: $00
	db   $fc                                         ; $6cb6: $fc
	db   $10                                         ; $6cb7: $10
	inc  de                                          ; $6cb8: $13
	db   $10                                         ; $6cb9: $10
	jr   nz, jr_007_6cdc                             ; $6cba: $20 $20

	ld   b, b                                        ; $6cbc: $40
	nop                                              ; $6cbd: $00
	nop                                              ; $6cbe: $00
	nop                                              ; $6cbf: $00
	nop                                              ; $6cc0: $00
	nop                                              ; $6cc1: $00
	nop                                              ; $6cc2: $00
	nop                                              ; $6cc3: $00
	ld   bc, $4020                                   ; $6cc4: $01 $20 $40
	add  b                                           ; $6cc7: $80
	sbc  [hl]                                        ; $6cc8: $9e
	add  b                                           ; $6cc9: $80
	add  b                                           ; $6cca: $80
	add  c                                           ; $6ccb: $81
	add  d                                           ; $6ccc: $82
	nop                                              ; $6ccd: $00
	nop                                              ; $6cce: $00
	nop                                              ; $6ccf: $00
	nop                                              ; $6cd0: $00
	nop                                              ; $6cd1: $00
	jr   z, @+$2a                                    ; $6cd2: $28 $28

	ld   sp, hl                                      ; $6cd4: $f9
	ld   [$1110], sp                                 ; $6cd5: $08 $10 $11
	jr   nz, jr_007_6d3a                             ; $6cd8: $20 $60

	sub  b                                           ; $6cda: $90
	add  hl, bc                                      ; $6cdb: $09

jr_007_6cdc:
	ld   [rRAMG], sp                                 ; $6cdc: $08 $00 $00
	nop                                              ; $6cdf: $00
	nop                                              ; $6ce0: $00

jr_007_6ce1:
	nop                                              ; $6ce1: $00
	nop                                              ; $6ce2: $00
	nop                                              ; $6ce3: $00
	ret  nz                                          ; $6ce4: $c0

	jr   nc, jr_007_6cee                             ; $6ce5: $30 $07

	pop  bc                                          ; $6ce7: $c1
	ld   sp, $0101                                   ; $6ce8: $31 $01 $01
	pop  bc                                          ; $6ceb: $c1
	scf                                              ; $6cec: $37
	nop                                              ; $6ced: $00

jr_007_6cee:
	nop                                              ; $6cee: $00
	nop                                              ; $6cef: $00
	nop                                              ; $6cf0: $00
	ld   bc, $0c01                                   ; $6cf1: $01 $01 $0c
	ld   [bc], a                                     ; $6cf4: $02
	nop                                              ; $6cf5: $00
	inc  c                                           ; $6cf6: $0c
	ld   [bc], a                                     ; $6cf7: $02
	ld   a, b                                        ; $6cf8: $78
	nop                                              ; $6cf9: $00
	nop                                              ; $6cfa: $00
	ld   bc, $0086                                   ; $6cfb: $01 $86 $00
	nop                                              ; $6cfe: $00
	nop                                              ; $6cff: $00
	nop                                              ; $6d00: $00
	ld   b, b                                        ; $6d01: $40
	ld   b, b                                        ; $6d02: $40
	nop                                              ; $6d03: $00
	ld   b, b                                        ; $6d04: $40
	ld   b, b                                        ; $6d05: $40
	ld   d, l                                        ; $6d06: $55
	ld   d, l                                        ; $6d07: $55
	ld   b, c                                        ; $6d08: $41
	add  d                                           ; $6d09: $82
	add  d                                           ; $6d0a: $82
	inc  b                                           ; $6d0b: $04
	ld   [rRAMG], sp                                 ; $6d0c: $08 $00 $00
	nop                                              ; $6d0f: $00
	nop                                              ; $6d10: $00
	nop                                              ; $6d11: $00
	nop                                              ; $6d12: $00
	nop                                              ; $6d13: $00
	ld   a, $22                                      ; $6d14: $3e $22
	ld   [hl+], a                                    ; $6d16: $22
	ld   b, d                                        ; $6d17: $42
	ld   [bc], a                                     ; $6d18: $02
	inc  b                                           ; $6d19: $04
	inc  b                                           ; $6d1a: $04
	ld   [$0010], sp                                 ; $6d1b: $08 $10 $00
	nop                                              ; $6d1e: $00
	nop                                              ; $6d1f: $00
	nop                                              ; $6d20: $00
	db   $10                                         ; $6d21: $10
	db   $10                                         ; $6d22: $10
	cp   $92                                         ; $6d23: $fe $92
	sub  d                                           ; $6d25: $92
	cp   $10                                         ; $6d26: $fe $10
	ld   d, b                                        ; $6d28: $50
	jr   nz, jr_007_6d5b                             ; $6d29: $20 $30

	ld   c, b                                        ; $6d2b: $48
	add  [hl]                                        ; $6d2c: $86
	nop                                              ; $6d2d: $00
	nop                                              ; $6d2e: $00
	nop                                              ; $6d2f: $00
	nop                                              ; $6d30: $00
	ld   b, b                                        ; $6d31: $40
	ld   a, [hl]                                     ; $6d32: $7e
	xor  d                                           ; $6d33: $aa
	ld   a, d                                        ; $6d34: $7a
	ld   a, [hl+]                                    ; $6d35: $2a
	ld   e, [hl]                                     ; $6d36: $5e
	nop                                              ; $6d37: $00
	ld   a, h                                        ; $6d38: $7c
	ld   b, h                                        ; $6d39: $44

jr_007_6d3a:
	ld   a, h                                        ; $6d3a: $7c
	ld   b, h                                        ; $6d3b: $44
	ld   a, h                                        ; $6d3c: $7c
	nop                                              ; $6d3d: $00
	nop                                              ; $6d3e: $00
	nop                                              ; $6d3f: $00
	nop                                              ; $6d40: $00
	ld   a, [hl+]                                    ; $6d41: $2a
	xor  d                                           ; $6d42: $aa
	ld   a, [hl]                                     ; $6d43: $7e
	ld   d, $96                                      ; $6d44: $16 $96
	ld   a, [hl]                                     ; $6d46: $7e
	ld   d, $56                                      ; $6d47: $16 $56
	ld   d, d                                        ; $6d49: $52
	xor  d                                           ; $6d4a: $aa
	xor  d                                           ; $6d4b: $aa
	adc  $00                                         ; $6d4c: $ce $00
	nop                                              ; $6d4e: $00
	nop                                              ; $6d4f: $00
	nop                                              ; $6d50: $00
	nop                                              ; $6d51: $00
	ld   a, [hl]                                     ; $6d52: $7e
	ld   [bc], a                                     ; $6d53: $02
	ld   a, $20                                      ; $6d54: $3e $20
	ld   b, b                                        ; $6d56: $40
	ld   a, [hl]                                     ; $6d57: $7e
	ld   [bc], a                                     ; $6d58: $02
	ld   [bc], a                                     ; $6d59: $02
	ld   [bc], a                                     ; $6d5a: $02

jr_007_6d5b:
	inc  b                                           ; $6d5b: $04
	jr   jr_007_6d5e                                 ; $6d5c: $18 $00

jr_007_6d5e:
	nop                                              ; $6d5e: $00
	nop                                              ; $6d5f: $00
	nop                                              ; $6d60: $00
	ld   [$48be], sp                                 ; $6d61: $08 $be $48
	ld   a, $88                                      ; $6d64: $3e $88
	ld   a, [hl]                                     ; $6d66: $7e
	ld   [hl+], a                                    ; $6d67: $22
	ld   a, [hl]                                     ; $6d68: $7e
	ld   h, d                                        ; $6d69: $62
	cp   [hl]                                        ; $6d6a: $be
	and  d                                           ; $6d6b: $a2
	and  [hl]                                        ; $6d6c: $a6
	nop                                              ; $6d6d: $00
	nop                                              ; $6d6e: $00
	nop                                              ; $6d6f: $00
	nop                                              ; $6d70: $00
	ld   [$247e], sp                                 ; $6d71: $08 $7e $24
	inc  h                                           ; $6d74: $24
	ld   a, [hl]                                     ; $6d75: $7e
	ld   b, b                                        ; $6d76: $40
	ld   c, h                                        ; $6d77: $4c
	ld   [hl], b                                     ; $6d78: $70
	ld   c, h                                        ; $6d79: $4c
	or   d                                           ; $6d7a: $b2
	adc  h                                           ; $6d7b: $8c
	jr   nc, jr_007_6d7e                             ; $6d7c: $30 $00

jr_007_6d7e:
	nop                                              ; $6d7e: $00
	nop                                              ; $6d7f: $00
	nop                                              ; $6d80: $00
	ld   [$407e], sp                                 ; $6d81: $08 $7e $40
	ld   b, b                                        ; $6d84: $40
	ld   a, [hl]                                     ; $6d85: $7e
	ld   c, b                                        ; $6d86: $48
	ld   c, b                                        ; $6d87: $48
	ld   c, b                                        ; $6d88: $48
	ld   c, b                                        ; $6d89: $48
	adc  b                                           ; $6d8a: $88
	adc  b                                           ; $6d8b: $88
	jr   jr_007_6d8e                                 ; $6d8c: $18 $00

jr_007_6d8e:
	nop                                              ; $6d8e: $00
	nop                                              ; $6d8f: $00
	nop                                              ; $6d90: $00
	ld   d, d                                        ; $6d91: $52
	ld   d, h                                        ; $6d92: $54
	cp   $82                                         ; $6d93: $fe $82
	ld   a, h                                        ; $6d95: $7c
	ld   b, h                                        ; $6d96: $44
	ld   a, h                                        ; $6d97: $7c
	db   $10                                         ; $6d98: $10
	ld   a, h                                        ; $6d99: $7c
	ld   b, h                                        ; $6d9a: $44
	ld   b, h                                        ; $6d9b: $44
	ld   a, h                                        ; $6d9c: $7c
	nop                                              ; $6d9d: $00
	nop                                              ; $6d9e: $00
	nop                                              ; $6d9f: $00
	nop                                              ; $6da0: $00
	nop                                              ; $6da1: $00
	cp   $b0                                         ; $6da2: $fe $b0
	ldh  a, [$be]                                    ; $6da4: $f0 $be
	ldh  a, [c]                                      ; $6da6: $f2
	cp   d                                           ; $6da7: $ba
	cp   d                                           ; $6da8: $ba
	ld   a, [$5414]                                  ; $6da9: $fa $14 $54
	xor  d                                           ; $6dac: $aa
	nop                                              ; $6dad: $00
	nop                                              ; $6dae: $00
	nop                                              ; $6daf: $00
	nop                                              ; $6db0: $00
	ld   a, $6a                                      ; $6db1: $3e $6a
	ld   a, [hl]                                     ; $6db3: $7e
	add  sp, $7e                                     ; $6db4: $e8 $7e
	ld   l, d                                        ; $6db6: $6a
	ld   a, [hl]                                     ; $6db7: $7e
	ld   [$487e], a                                  ; $6db8: $ea $7e $48
	ld   a, [hl]                                     ; $6dbb: $7e
	ret  z                                           ; $6dbc: $c8

	nop                                              ; $6dbd: $00
	nop                                              ; $6dbe: $00
	nop                                              ; $6dbf: $00
	nop                                              ; $6dc0: $00
	jr   z, jr_007_6deb                              ; $6dc1: $28 $28

	ld   a, [hl]                                     ; $6dc3: $7e
	ld   c, b                                        ; $6dc4: $48
	ret  z                                           ; $6dc5: $c8

	ld   c, b                                        ; $6dc6: $48
	ld   e, h                                        ; $6dc7: $5c
	ld   c, b                                        ; $6dc8: $48
	ld   c, b                                        ; $6dc9: $48
	ld   c, b                                        ; $6dca: $48
	ld   c, b                                        ; $6dcb: $48
	ld   a, [hl]                                     ; $6dcc: $7e
	nop                                              ; $6dcd: $00
	nop                                              ; $6dce: $00
	nop                                              ; $6dcf: $00
	nop                                              ; $6dd0: $00
	ld   c, b                                        ; $6dd1: $48
	ld   e, [hl]                                     ; $6dd2: $5e
	ld   c, d                                        ; $6dd3: $4a
	ld   c, d                                        ; $6dd4: $4a
	or   $40                                         ; $6dd5: $f6 $40
	ld   l, b                                        ; $6dd7: $68
	ld   a, [hl]                                     ; $6dd8: $7e
	ld   l, d                                        ; $6dd9: $6a
	ld   l, d                                        ; $6dda: $6a
	ld   l, d                                        ; $6ddb: $6a
	ld   d, [hl]                                     ; $6ddc: $56
	nop                                              ; $6ddd: $00
	nop                                              ; $6dde: $00
	nop                                              ; $6ddf: $00

jr_007_6de0:
	nop                                              ; $6de0: $00
	nop                                              ; $6de1: $00
	nop                                              ; $6de2: $00
	add  b                                           ; $6de3: $80
	add  a                                           ; $6de4: $87
	add  b                                           ; $6de5: $80
	add  c                                           ; $6de6: $81
	pop  hl                                          ; $6de7: $e1
	sbc  c                                           ; $6de8: $99
	add  c                                           ; $6de9: $81
	add  c                                           ; $6dea: $81

jr_007_6deb:
	add  c                                           ; $6deb: $81
	add  d                                           ; $6dec: $82
	nop                                              ; $6ded: $00
	nop                                              ; $6dee: $00
	nop                                              ; $6def: $00
	nop                                              ; $6df0: $00
	nop                                              ; $6df1: $00
	nop                                              ; $6df2: $00
	nop                                              ; $6df3: $00
	ldh  [rAUD4LEN], a                               ; $6df4: $e0 $20
	ld   a, [hl+]                                    ; $6df6: $2a
	ld   c, d                                        ; $6df7: $4a
	adc  d                                           ; $6df8: $8a
	nop                                              ; $6df9: $00
	nop                                              ; $6dfa: $00
	ld   bc, $0006                                   ; $6dfb: $01 $06 $00
	nop                                              ; $6dfe: $00
	nop                                              ; $6dff: $00
	nop                                              ; $6e00: $00
	inc  b                                           ; $6e01: $04
	ld   a, [bc]                                     ; $6e02: $0a
	inc  b                                           ; $6e03: $04
	ld   a, h                                        ; $6e04: $7c
	inc  b                                           ; $6e05: $04
	add  h                                           ; $6e06: $84
	add  h                                           ; $6e07: $84
	add  h                                           ; $6e08: $84
	add  h                                           ; $6e09: $84
	adc  b                                           ; $6e0a: $88
	ld   [$0010], sp                                 ; $6e0b: $08 $10 $00
	nop                                              ; $6e0e: $00
	nop                                              ; $6e0f: $00
	nop                                              ; $6e10: $00
	db   $10                                         ; $6e11: $10
	inc  e                                           ; $6e12: $1c
	db   $10                                         ; $6e13: $10
	ld   a, [hl]                                     ; $6e14: $7e
	ld   d, d                                        ; $6e15: $52
	ld   a, h                                        ; $6e16: $7c
	ld   d, d                                        ; $6e17: $52
	ld   e, [hl]                                     ; $6e18: $5e
	ld   b, b                                        ; $6e19: $40
	xor  b                                           ; $6e1a: $a8
	xor  d                                           ; $6e1b: $aa
	ld   c, [hl]                                     ; $6e1c: $4e
	nop                                              ; $6e1d: $00
	nop                                              ; $6e1e: $00
	nop                                              ; $6e1f: $00
	nop                                              ; $6e20: $00
	inc  c                                           ; $6e21: $0c
	adc  d                                           ; $6e22: $8a
	ld   a, [hl]                                     ; $6e23: $7e
	jr   z, jr_007_6de0                              ; $6e24: $28 $ba

	ld   l, d                                        ; $6e26: $6a
	ld   a, $7e                                      ; $6e27: $3e $7e
	ld   a, h                                        ; $6e29: $7c
	xor  h                                           ; $6e2a: $ac
	xor  d                                           ; $6e2b: $aa
	or   $00                                         ; $6e2c: $f6 $00
	nop                                              ; $6e2e: $00
	nop                                              ; $6e2f: $00
	nop                                              ; $6e30: $00
	jr   nz, jr_007_6e53                             ; $6e31: $20 $20

	ld   a, [hl]                                     ; $6e33: $7e
	ld   b, d                                        ; $6e34: $42
	add  d                                           ; $6e35: $82
	ld   [hl+], a                                    ; $6e36: $22
	ld   a, [hl+]                                    ; $6e37: $2a
	ld   c, d                                        ; $6e38: $4a
	ld   a, d                                        ; $6e39: $7a
	ld   a, [bc]                                     ; $6e3a: $0a
	ld   [bc], a                                     ; $6e3b: $02
	inc  c                                           ; $6e3c: $0c
	nop                                              ; $6e3d: $00
	nop                                              ; $6e3e: $00
	nop                                              ; $6e3f: $00
	nop                                              ; $6e40: $00
	db   $10                                         ; $6e41: $10
	cp   $2a                                         ; $6e42: $fe $2a
	sub  $d6                                         ; $6e44: $d6 $d6
	nop                                              ; $6e46: $00
	cp   d                                           ; $6e47: $ba
	add  d                                           ; $6e48: $82
	cp   $92                                         ; $6e49: $fe $92
	cp   d                                           ; $6e4b: $ba
	sub  $00                                         ; $6e4c: $d6 $00
	nop                                              ; $6e4e: $00
	nop                                              ; $6e4f: $00
	nop                                              ; $6e50: $00
	ld   c, b                                        ; $6e51: $48
	ld   c, b                                        ; $6e52: $48

jr_007_6e53:
	cp   $28                                         ; $6e53: $fe $28
	jr   z, jr_007_6e9f                              ; $6e55: $28 $48

	cp   $5a                                         ; $6e57: $fe $5a
	ld   l, d                                        ; $6e59: $6a
	ld   c, d                                        ; $6e5a: $4a
	ld   c, d                                        ; $6e5b: $4a
	ld   c, [hl]                                     ; $6e5c: $4e
	nop                                              ; $6e5d: $00
	nop                                              ; $6e5e: $00
	nop                                              ; $6e5f: $00
	nop                                              ; $6e60: $00
	sub  d                                           ; $6e61: $92
	ld   d, h                                        ; $6e62: $54
	cp   $82                                         ; $6e63: $fe $82
	ld   a, h                                        ; $6e65: $7c
	ld   b, h                                        ; $6e66: $44
	ld   a, h                                        ; $6e67: $7c
	cp   $92                                         ; $6e68: $fe $92
	cp   $92                                         ; $6e6a: $fe $92
	cp   $00                                         ; $6e6c: $fe $00
	nop                                              ; $6e6e: $00
	nop                                              ; $6e6f: $00
	nop                                              ; $6e70: $00
	db   $10                                         ; $6e71: $10
	ld   a, [hl]                                     ; $6e72: $7e
	ld   [de], a                                     ; $6e73: $12
	inc  d                                           ; $6e74: $14
	cp   $08                                         ; $6e75: $fe $08
	inc  a                                           ; $6e77: $3c
	call nz, Call_007_7e08                           ; $6e78: $c4 $08 $7e
	ld   [$0018], sp                                 ; $6e7b: $08 $18 $00
	nop                                              ; $6e7e: $00
	nop                                              ; $6e7f: $00
	nop                                              ; $6e80: $00
	db   $10                                         ; $6e81: $10
	db   $10                                         ; $6e82: $10
	ld   a, h                                        ; $6e83: $7c
	db   $10                                         ; $6e84: $10
	db   $10                                         ; $6e85: $10
	cp   $00                                         ; $6e86: $fe $00
	db   $10                                         ; $6e88: $10
	ld   a, h                                        ; $6e89: $7c
	db   $10                                         ; $6e8a: $10
	db   $10                                         ; $6e8b: $10
	cp   $00                                         ; $6e8c: $fe $00
	nop                                              ; $6e8e: $00
	nop                                              ; $6e8f: $00
	nop                                              ; $6e90: $00
	db   $10                                         ; $6e91: $10
	cp   $7c                                         ; $6e92: $fe $7c
	ld   b, h                                        ; $6e94: $44
	ld   a, h                                        ; $6e95: $7c
	nop                                              ; $6e96: $00
	ld   a, h                                        ; $6e97: $7c
	inc  b                                           ; $6e98: $04
	jr   @+$12                                       ; $6e99: $18 $10

	db   $10                                         ; $6e9b: $10
	jr   nc, jr_007_6e9e                             ; $6e9c: $30 $00

jr_007_6e9e:
	nop                                              ; $6e9e: $00

jr_007_6e9f:
	nop                                              ; $6e9f: $00
	nop                                              ; $6ea0: $00
	jr   nz, jr_007_6eeb                             ; $6ea1: $20 $48

	xor  b                                           ; $6ea3: $a8
	call c, $aa5a                                    ; $6ea4: $dc $5a $aa
	add  sp, $5a                                     ; $6ea7: $e8 $5a
	ld   [$e8e4], a                                  ; $6ea9: $ea $e4 $e8
	ld   d, b                                        ; $6eac: $50
	nop                                              ; $6ead: $00
	nop                                              ; $6eae: $00
	nop                                              ; $6eaf: $00
	nop                                              ; $6eb0: $00
	nop                                              ; $6eb1: $00
	nop                                              ; $6eb2: $00
	nop                                              ; $6eb3: $00
	nop                                              ; $6eb4: $00
	nop                                              ; $6eb5: $00
	nop                                              ; $6eb6: $00
	nop                                              ; $6eb7: $00
	nop                                              ; $6eb8: $00
	nop                                              ; $6eb9: $00
	nop                                              ; $6eba: $00
	nop                                              ; $6ebb: $00
	nop                                              ; $6ebc: $00
	nop                                              ; $6ebd: $00
	nop                                              ; $6ebe: $00
	nop                                              ; $6ebf: $00
	nop                                              ; $6ec0: $00
	nop                                              ; $6ec1: $00
	nop                                              ; $6ec2: $00
	nop                                              ; $6ec3: $00
	nop                                              ; $6ec4: $00
	nop                                              ; $6ec5: $00
	nop                                              ; $6ec6: $00
	nop                                              ; $6ec7: $00
	nop                                              ; $6ec8: $00
	nop                                              ; $6ec9: $00
	nop                                              ; $6eca: $00
	nop                                              ; $6ecb: $00
	nop                                              ; $6ecc: $00
	nop                                              ; $6ecd: $00
	nop                                              ; $6ece: $00
	nop                                              ; $6ecf: $00
	nop                                              ; $6ed0: $00
	nop                                              ; $6ed1: $00
	nop                                              ; $6ed2: $00
	nop                                              ; $6ed3: $00
	nop                                              ; $6ed4: $00
	nop                                              ; $6ed5: $00
	nop                                              ; $6ed6: $00
	nop                                              ; $6ed7: $00
	nop                                              ; $6ed8: $00
	nop                                              ; $6ed9: $00
	nop                                              ; $6eda: $00
	nop                                              ; $6edb: $00
	nop                                              ; $6edc: $00
	nop                                              ; $6edd: $00
	nop                                              ; $6ede: $00
	nop                                              ; $6edf: $00
	nop                                              ; $6ee0: $00
	nop                                              ; $6ee1: $00
	nop                                              ; $6ee2: $00
	nop                                              ; $6ee3: $00
	nop                                              ; $6ee4: $00
	nop                                              ; $6ee5: $00
	nop                                              ; $6ee6: $00
	nop                                              ; $6ee7: $00
	nop                                              ; $6ee8: $00
	nop                                              ; $6ee9: $00
	nop                                              ; $6eea: $00

jr_007_6eeb:
	nop                                              ; $6eeb: $00
	nop                                              ; $6eec: $00
	nop                                              ; $6eed: $00
	nop                                              ; $6eee: $00
	nop                                              ; $6eef: $00
	nop                                              ; $6ef0: $00
	nop                                              ; $6ef1: $00
	nop                                              ; $6ef2: $00
	nop                                              ; $6ef3: $00
	nop                                              ; $6ef4: $00
	nop                                              ; $6ef5: $00
	nop                                              ; $6ef6: $00
	nop                                              ; $6ef7: $00
	nop                                              ; $6ef8: $00
	nop                                              ; $6ef9: $00
	nop                                              ; $6efa: $00
	nop                                              ; $6efb: $00
	nop                                              ; $6efc: $00
	nop                                              ; $6efd: $00
	nop                                              ; $6efe: $00
	nop                                              ; $6eff: $00
	nop                                              ; $6f00: $00
	nop                                              ; $6f01: $00
	nop                                              ; $6f02: $00
	nop                                              ; $6f03: $00
	nop                                              ; $6f04: $00
	nop                                              ; $6f05: $00
	nop                                              ; $6f06: $00
	nop                                              ; $6f07: $00
	nop                                              ; $6f08: $00
	nop                                              ; $6f09: $00
	nop                                              ; $6f0a: $00
	nop                                              ; $6f0b: $00
	nop                                              ; $6f0c: $00
	nop                                              ; $6f0d: $00
	nop                                              ; $6f0e: $00
	nop                                              ; $6f0f: $00
	nop                                              ; $6f10: $00
	nop                                              ; $6f11: $00
	nop                                              ; $6f12: $00
	nop                                              ; $6f13: $00
	nop                                              ; $6f14: $00
	nop                                              ; $6f15: $00
	nop                                              ; $6f16: $00
	nop                                              ; $6f17: $00
	nop                                              ; $6f18: $00
	nop                                              ; $6f19: $00
	nop                                              ; $6f1a: $00
	nop                                              ; $6f1b: $00
	nop                                              ; $6f1c: $00
	nop                                              ; $6f1d: $00
	nop                                              ; $6f1e: $00
	nop                                              ; $6f1f: $00
	nop                                              ; $6f20: $00
	nop                                              ; $6f21: $00
	nop                                              ; $6f22: $00
	nop                                              ; $6f23: $00
	nop                                              ; $6f24: $00
	nop                                              ; $6f25: $00
	nop                                              ; $6f26: $00
	nop                                              ; $6f27: $00
	nop                                              ; $6f28: $00
	nop                                              ; $6f29: $00
	nop                                              ; $6f2a: $00
	nop                                              ; $6f2b: $00
	nop                                              ; $6f2c: $00
	nop                                              ; $6f2d: $00
	nop                                              ; $6f2e: $00
	nop                                              ; $6f2f: $00
	nop                                              ; $6f30: $00
	nop                                              ; $6f31: $00
	nop                                              ; $6f32: $00
	nop                                              ; $6f33: $00
	nop                                              ; $6f34: $00
	nop                                              ; $6f35: $00
	nop                                              ; $6f36: $00
	nop                                              ; $6f37: $00
	nop                                              ; $6f38: $00
	nop                                              ; $6f39: $00
	nop                                              ; $6f3a: $00
	nop                                              ; $6f3b: $00
	nop                                              ; $6f3c: $00
	nop                                              ; $6f3d: $00
	nop                                              ; $6f3e: $00
	nop                                              ; $6f3f: $00
	nop                                              ; $6f40: $00
	nop                                              ; $6f41: $00
	nop                                              ; $6f42: $00
	nop                                              ; $6f43: $00
	nop                                              ; $6f44: $00
	nop                                              ; $6f45: $00
	nop                                              ; $6f46: $00
	nop                                              ; $6f47: $00
	nop                                              ; $6f48: $00
	nop                                              ; $6f49: $00
	nop                                              ; $6f4a: $00
	nop                                              ; $6f4b: $00
	nop                                              ; $6f4c: $00
	nop                                              ; $6f4d: $00
	nop                                              ; $6f4e: $00
	nop                                              ; $6f4f: $00
	nop                                              ; $6f50: $00
	nop                                              ; $6f51: $00
	nop                                              ; $6f52: $00
	nop                                              ; $6f53: $00
	nop                                              ; $6f54: $00
	nop                                              ; $6f55: $00
	nop                                              ; $6f56: $00
	nop                                              ; $6f57: $00
	nop                                              ; $6f58: $00
	nop                                              ; $6f59: $00
	nop                                              ; $6f5a: $00
	nop                                              ; $6f5b: $00
	nop                                              ; $6f5c: $00
	nop                                              ; $6f5d: $00
	nop                                              ; $6f5e: $00
	nop                                              ; $6f5f: $00
	nop                                              ; $6f60: $00
	nop                                              ; $6f61: $00
	nop                                              ; $6f62: $00
	nop                                              ; $6f63: $00
	nop                                              ; $6f64: $00
	nop                                              ; $6f65: $00
	nop                                              ; $6f66: $00
	nop                                              ; $6f67: $00
	nop                                              ; $6f68: $00
	nop                                              ; $6f69: $00
	nop                                              ; $6f6a: $00
	nop                                              ; $6f6b: $00
	nop                                              ; $6f6c: $00
	nop                                              ; $6f6d: $00
	nop                                              ; $6f6e: $00
	nop                                              ; $6f6f: $00
	nop                                              ; $6f70: $00
	nop                                              ; $6f71: $00
	nop                                              ; $6f72: $00
	nop                                              ; $6f73: $00
	nop                                              ; $6f74: $00
	nop                                              ; $6f75: $00
	nop                                              ; $6f76: $00
	nop                                              ; $6f77: $00
	nop                                              ; $6f78: $00
	nop                                              ; $6f79: $00
	nop                                              ; $6f7a: $00
	nop                                              ; $6f7b: $00
	nop                                              ; $6f7c: $00
	nop                                              ; $6f7d: $00
	nop                                              ; $6f7e: $00
	nop                                              ; $6f7f: $00
	nop                                              ; $6f80: $00
	nop                                              ; $6f81: $00
	nop                                              ; $6f82: $00
	nop                                              ; $6f83: $00
	nop                                              ; $6f84: $00
	nop                                              ; $6f85: $00
	nop                                              ; $6f86: $00
	nop                                              ; $6f87: $00
	nop                                              ; $6f88: $00
	nop                                              ; $6f89: $00
	nop                                              ; $6f8a: $00
	nop                                              ; $6f8b: $00
	nop                                              ; $6f8c: $00
	nop                                              ; $6f8d: $00
	nop                                              ; $6f8e: $00
	nop                                              ; $6f8f: $00
	nop                                              ; $6f90: $00
	nop                                              ; $6f91: $00
	nop                                              ; $6f92: $00
	nop                                              ; $6f93: $00
	nop                                              ; $6f94: $00
	nop                                              ; $6f95: $00
	nop                                              ; $6f96: $00
	nop                                              ; $6f97: $00
	nop                                              ; $6f98: $00
	nop                                              ; $6f99: $00
	nop                                              ; $6f9a: $00
	nop                                              ; $6f9b: $00
	nop                                              ; $6f9c: $00
	nop                                              ; $6f9d: $00
	nop                                              ; $6f9e: $00
	nop                                              ; $6f9f: $00
	nop                                              ; $6fa0: $00
	nop                                              ; $6fa1: $00
	nop                                              ; $6fa2: $00
	nop                                              ; $6fa3: $00
	nop                                              ; $6fa4: $00
	nop                                              ; $6fa5: $00
	nop                                              ; $6fa6: $00
	nop                                              ; $6fa7: $00
	nop                                              ; $6fa8: $00
	nop                                              ; $6fa9: $00
	nop                                              ; $6faa: $00
	nop                                              ; $6fab: $00
	nop                                              ; $6fac: $00
	nop                                              ; $6fad: $00
	nop                                              ; $6fae: $00
	nop                                              ; $6faf: $00
	nop                                              ; $6fb0: $00
	nop                                              ; $6fb1: $00
	nop                                              ; $6fb2: $00
	nop                                              ; $6fb3: $00
	nop                                              ; $6fb4: $00
	nop                                              ; $6fb5: $00
	nop                                              ; $6fb6: $00
	nop                                              ; $6fb7: $00
	nop                                              ; $6fb8: $00
	nop                                              ; $6fb9: $00
	nop                                              ; $6fba: $00
	nop                                              ; $6fbb: $00
	nop                                              ; $6fbc: $00
	nop                                              ; $6fbd: $00
	nop                                              ; $6fbe: $00
	nop                                              ; $6fbf: $00
	nop                                              ; $6fc0: $00
	nop                                              ; $6fc1: $00
	nop                                              ; $6fc2: $00
	nop                                              ; $6fc3: $00
	nop                                              ; $6fc4: $00
	nop                                              ; $6fc5: $00
	nop                                              ; $6fc6: $00
	nop                                              ; $6fc7: $00
	nop                                              ; $6fc8: $00
	nop                                              ; $6fc9: $00
	nop                                              ; $6fca: $00
	nop                                              ; $6fcb: $00
	nop                                              ; $6fcc: $00
	nop                                              ; $6fcd: $00
	nop                                              ; $6fce: $00
	nop                                              ; $6fcf: $00
	nop                                              ; $6fd0: $00
	nop                                              ; $6fd1: $00
	nop                                              ; $6fd2: $00
	nop                                              ; $6fd3: $00
	nop                                              ; $6fd4: $00
	nop                                              ; $6fd5: $00
	nop                                              ; $6fd6: $00
	nop                                              ; $6fd7: $00
	nop                                              ; $6fd8: $00
	nop                                              ; $6fd9: $00
	nop                                              ; $6fda: $00
	nop                                              ; $6fdb: $00
	nop                                              ; $6fdc: $00
	nop                                              ; $6fdd: $00
	nop                                              ; $6fde: $00
	nop                                              ; $6fdf: $00
	nop                                              ; $6fe0: $00
	nop                                              ; $6fe1: $00
	nop                                              ; $6fe2: $00
	nop                                              ; $6fe3: $00
	nop                                              ; $6fe4: $00
	nop                                              ; $6fe5: $00
	nop                                              ; $6fe6: $00
	nop                                              ; $6fe7: $00
	nop                                              ; $6fe8: $00
	nop                                              ; $6fe9: $00
	nop                                              ; $6fea: $00
	nop                                              ; $6feb: $00
	nop                                              ; $6fec: $00
	nop                                              ; $6fed: $00
	nop                                              ; $6fee: $00
	nop                                              ; $6fef: $00
	nop                                              ; $6ff0: $00
	nop                                              ; $6ff1: $00
	nop                                              ; $6ff2: $00
	nop                                              ; $6ff3: $00
	nop                                              ; $6ff4: $00
	nop                                              ; $6ff5: $00
	nop                                              ; $6ff6: $00
	nop                                              ; $6ff7: $00
	nop                                              ; $6ff8: $00
	nop                                              ; $6ff9: $00
	nop                                              ; $6ffa: $00
	nop                                              ; $6ffb: $00
	nop                                              ; $6ffc: $00
	nop                                              ; $6ffd: $00
	nop                                              ; $6ffe: $00
	nop                                              ; $6fff: $00
	nop                                              ; $7000: $00
	nop                                              ; $7001: $00
	nop                                              ; $7002: $00
	nop                                              ; $7003: $00
	nop                                              ; $7004: $00
	nop                                              ; $7005: $00
	nop                                              ; $7006: $00
	nop                                              ; $7007: $00
	nop                                              ; $7008: $00
	nop                                              ; $7009: $00
	nop                                              ; $700a: $00
	nop                                              ; $700b: $00
	nop                                              ; $700c: $00
	nop                                              ; $700d: $00
	nop                                              ; $700e: $00
	nop                                              ; $700f: $00
	nop                                              ; $7010: $00
	nop                                              ; $7011: $00
	nop                                              ; $7012: $00
	nop                                              ; $7013: $00
	nop                                              ; $7014: $00
	nop                                              ; $7015: $00
	nop                                              ; $7016: $00
	nop                                              ; $7017: $00
	nop                                              ; $7018: $00
	nop                                              ; $7019: $00
	nop                                              ; $701a: $00
	nop                                              ; $701b: $00
	nop                                              ; $701c: $00
	nop                                              ; $701d: $00
	nop                                              ; $701e: $00
	nop                                              ; $701f: $00
	nop                                              ; $7020: $00
	nop                                              ; $7021: $00
	nop                                              ; $7022: $00
	nop                                              ; $7023: $00
	nop                                              ; $7024: $00
	nop                                              ; $7025: $00
	nop                                              ; $7026: $00
	nop                                              ; $7027: $00
	nop                                              ; $7028: $00
	nop                                              ; $7029: $00
	nop                                              ; $702a: $00
	nop                                              ; $702b: $00
	nop                                              ; $702c: $00
	nop                                              ; $702d: $00
	nop                                              ; $702e: $00
	nop                                              ; $702f: $00
	nop                                              ; $7030: $00
	nop                                              ; $7031: $00
	nop                                              ; $7032: $00
	nop                                              ; $7033: $00
	nop                                              ; $7034: $00
	nop                                              ; $7035: $00
	nop                                              ; $7036: $00
	nop                                              ; $7037: $00
	nop                                              ; $7038: $00
	nop                                              ; $7039: $00
	nop                                              ; $703a: $00
	nop                                              ; $703b: $00
	nop                                              ; $703c: $00
	nop                                              ; $703d: $00
	nop                                              ; $703e: $00
	nop                                              ; $703f: $00
	nop                                              ; $7040: $00
	nop                                              ; $7041: $00
	nop                                              ; $7042: $00
	nop                                              ; $7043: $00
	nop                                              ; $7044: $00
	nop                                              ; $7045: $00
	nop                                              ; $7046: $00
	nop                                              ; $7047: $00
	nop                                              ; $7048: $00
	nop                                              ; $7049: $00
	nop                                              ; $704a: $00
	nop                                              ; $704b: $00
	nop                                              ; $704c: $00
	nop                                              ; $704d: $00
	nop                                              ; $704e: $00
	nop                                              ; $704f: $00
	nop                                              ; $7050: $00
	nop                                              ; $7051: $00
	nop                                              ; $7052: $00
	nop                                              ; $7053: $00
	nop                                              ; $7054: $00
	nop                                              ; $7055: $00
	nop                                              ; $7056: $00
	nop                                              ; $7057: $00
	nop                                              ; $7058: $00
	nop                                              ; $7059: $00
	nop                                              ; $705a: $00
	nop                                              ; $705b: $00
	nop                                              ; $705c: $00
	nop                                              ; $705d: $00
	nop                                              ; $705e: $00
	nop                                              ; $705f: $00
	nop                                              ; $7060: $00
	nop                                              ; $7061: $00
	nop                                              ; $7062: $00
	nop                                              ; $7063: $00
	nop                                              ; $7064: $00
	nop                                              ; $7065: $00
	nop                                              ; $7066: $00
	nop                                              ; $7067: $00
	nop                                              ; $7068: $00
	nop                                              ; $7069: $00
	nop                                              ; $706a: $00
	nop                                              ; $706b: $00
	nop                                              ; $706c: $00
	nop                                              ; $706d: $00
	nop                                              ; $706e: $00
	nop                                              ; $706f: $00
	nop                                              ; $7070: $00
	nop                                              ; $7071: $00
	nop                                              ; $7072: $00
	nop                                              ; $7073: $00
	nop                                              ; $7074: $00
	nop                                              ; $7075: $00
	nop                                              ; $7076: $00
	nop                                              ; $7077: $00
	nop                                              ; $7078: $00
	nop                                              ; $7079: $00
	nop                                              ; $707a: $00
	nop                                              ; $707b: $00
	nop                                              ; $707c: $00
	nop                                              ; $707d: $00
	nop                                              ; $707e: $00
	nop                                              ; $707f: $00
	nop                                              ; $7080: $00
	nop                                              ; $7081: $00
	nop                                              ; $7082: $00
	nop                                              ; $7083: $00
	nop                                              ; $7084: $00
	nop                                              ; $7085: $00
	nop                                              ; $7086: $00
	nop                                              ; $7087: $00
	nop                                              ; $7088: $00
	nop                                              ; $7089: $00
	nop                                              ; $708a: $00
	nop                                              ; $708b: $00
	nop                                              ; $708c: $00
	nop                                              ; $708d: $00
	nop                                              ; $708e: $00
	nop                                              ; $708f: $00
	nop                                              ; $7090: $00
	nop                                              ; $7091: $00
	nop                                              ; $7092: $00
	nop                                              ; $7093: $00
	nop                                              ; $7094: $00
	nop                                              ; $7095: $00
	nop                                              ; $7096: $00
	nop                                              ; $7097: $00
	nop                                              ; $7098: $00
	nop                                              ; $7099: $00
	nop                                              ; $709a: $00
	nop                                              ; $709b: $00
	nop                                              ; $709c: $00
	nop                                              ; $709d: $00
	nop                                              ; $709e: $00
	nop                                              ; $709f: $00
	nop                                              ; $70a0: $00
	nop                                              ; $70a1: $00
	nop                                              ; $70a2: $00
	nop                                              ; $70a3: $00
	nop                                              ; $70a4: $00
	nop                                              ; $70a5: $00
	nop                                              ; $70a6: $00
	nop                                              ; $70a7: $00
	nop                                              ; $70a8: $00
	nop                                              ; $70a9: $00
	nop                                              ; $70aa: $00
	nop                                              ; $70ab: $00
	nop                                              ; $70ac: $00
	nop                                              ; $70ad: $00
	nop                                              ; $70ae: $00
	nop                                              ; $70af: $00
	nop                                              ; $70b0: $00
	nop                                              ; $70b1: $00
	nop                                              ; $70b2: $00
	nop                                              ; $70b3: $00
	nop                                              ; $70b4: $00
	nop                                              ; $70b5: $00
	nop                                              ; $70b6: $00
	nop                                              ; $70b7: $00
	nop                                              ; $70b8: $00
	nop                                              ; $70b9: $00
	nop                                              ; $70ba: $00
	nop                                              ; $70bb: $00
	nop                                              ; $70bc: $00
	nop                                              ; $70bd: $00
	nop                                              ; $70be: $00
	nop                                              ; $70bf: $00
	nop                                              ; $70c0: $00
	nop                                              ; $70c1: $00
	nop                                              ; $70c2: $00
	nop                                              ; $70c3: $00
	nop                                              ; $70c4: $00
	nop                                              ; $70c5: $00
	nop                                              ; $70c6: $00
	nop                                              ; $70c7: $00
	nop                                              ; $70c8: $00
	nop                                              ; $70c9: $00
	nop                                              ; $70ca: $00
	nop                                              ; $70cb: $00
	nop                                              ; $70cc: $00
	nop                                              ; $70cd: $00
	nop                                              ; $70ce: $00
	nop                                              ; $70cf: $00
	nop                                              ; $70d0: $00
	nop                                              ; $70d1: $00
	nop                                              ; $70d2: $00
	nop                                              ; $70d3: $00
	nop                                              ; $70d4: $00
	nop                                              ; $70d5: $00
	nop                                              ; $70d6: $00
	nop                                              ; $70d7: $00
	nop                                              ; $70d8: $00
	nop                                              ; $70d9: $00
	nop                                              ; $70da: $00
	nop                                              ; $70db: $00
	nop                                              ; $70dc: $00
	nop                                              ; $70dd: $00
	nop                                              ; $70de: $00
	nop                                              ; $70df: $00
	nop                                              ; $70e0: $00
	nop                                              ; $70e1: $00
	nop                                              ; $70e2: $00
	nop                                              ; $70e3: $00
	nop                                              ; $70e4: $00
	nop                                              ; $70e5: $00
	nop                                              ; $70e6: $00
	nop                                              ; $70e7: $00
	nop                                              ; $70e8: $00
	nop                                              ; $70e9: $00
	nop                                              ; $70ea: $00
	nop                                              ; $70eb: $00
	nop                                              ; $70ec: $00
	nop                                              ; $70ed: $00
	nop                                              ; $70ee: $00
	nop                                              ; $70ef: $00
	nop                                              ; $70f0: $00
	nop                                              ; $70f1: $00
	nop                                              ; $70f2: $00
	nop                                              ; $70f3: $00
	nop                                              ; $70f4: $00
	nop                                              ; $70f5: $00
	nop                                              ; $70f6: $00
	nop                                              ; $70f7: $00
	nop                                              ; $70f8: $00
	nop                                              ; $70f9: $00
	nop                                              ; $70fa: $00
	nop                                              ; $70fb: $00
	nop                                              ; $70fc: $00
	nop                                              ; $70fd: $00
	nop                                              ; $70fe: $00
	nop                                              ; $70ff: $00
	nop                                              ; $7100: $00
	nop                                              ; $7101: $00
	nop                                              ; $7102: $00
	nop                                              ; $7103: $00
	nop                                              ; $7104: $00
	nop                                              ; $7105: $00
	nop                                              ; $7106: $00
	nop                                              ; $7107: $00
	nop                                              ; $7108: $00
	nop                                              ; $7109: $00
	nop                                              ; $710a: $00
	nop                                              ; $710b: $00
	nop                                              ; $710c: $00
	nop                                              ; $710d: $00
	nop                                              ; $710e: $00
	nop                                              ; $710f: $00
	nop                                              ; $7110: $00
	nop                                              ; $7111: $00
	nop                                              ; $7112: $00
	nop                                              ; $7113: $00
	nop                                              ; $7114: $00
	nop                                              ; $7115: $00
	nop                                              ; $7116: $00
	nop                                              ; $7117: $00
	nop                                              ; $7118: $00
	nop                                              ; $7119: $00
	nop                                              ; $711a: $00
	nop                                              ; $711b: $00
	nop                                              ; $711c: $00
	nop                                              ; $711d: $00
	nop                                              ; $711e: $00
	nop                                              ; $711f: $00
	nop                                              ; $7120: $00
	nop                                              ; $7121: $00
	nop                                              ; $7122: $00
	nop                                              ; $7123: $00
	nop                                              ; $7124: $00
	nop                                              ; $7125: $00
	nop                                              ; $7126: $00
	nop                                              ; $7127: $00
	nop                                              ; $7128: $00
	nop                                              ; $7129: $00
	nop                                              ; $712a: $00
	nop                                              ; $712b: $00
	nop                                              ; $712c: $00
	nop                                              ; $712d: $00
	nop                                              ; $712e: $00
	nop                                              ; $712f: $00
	nop                                              ; $7130: $00
	nop                                              ; $7131: $00
	nop                                              ; $7132: $00
	nop                                              ; $7133: $00
	nop                                              ; $7134: $00
	nop                                              ; $7135: $00
	nop                                              ; $7136: $00
	nop                                              ; $7137: $00
	nop                                              ; $7138: $00
	nop                                              ; $7139: $00
	nop                                              ; $713a: $00
	nop                                              ; $713b: $00
	nop                                              ; $713c: $00
	nop                                              ; $713d: $00
	nop                                              ; $713e: $00
	nop                                              ; $713f: $00
	nop                                              ; $7140: $00
	nop                                              ; $7141: $00
	nop                                              ; $7142: $00
	nop                                              ; $7143: $00
	nop                                              ; $7144: $00
	nop                                              ; $7145: $00
	nop                                              ; $7146: $00
	nop                                              ; $7147: $00
	nop                                              ; $7148: $00
	nop                                              ; $7149: $00
	nop                                              ; $714a: $00
	nop                                              ; $714b: $00
	nop                                              ; $714c: $00
	nop                                              ; $714d: $00
	nop                                              ; $714e: $00
	nop                                              ; $714f: $00
	nop                                              ; $7150: $00
	nop                                              ; $7151: $00
	nop                                              ; $7152: $00
	nop                                              ; $7153: $00
	nop                                              ; $7154: $00
	nop                                              ; $7155: $00
	nop                                              ; $7156: $00
	nop                                              ; $7157: $00
	nop                                              ; $7158: $00
	nop                                              ; $7159: $00
	nop                                              ; $715a: $00
	nop                                              ; $715b: $00
	nop                                              ; $715c: $00
	nop                                              ; $715d: $00
	nop                                              ; $715e: $00
	nop                                              ; $715f: $00
	nop                                              ; $7160: $00
	nop                                              ; $7161: $00
	nop                                              ; $7162: $00
	nop                                              ; $7163: $00
	nop                                              ; $7164: $00
	nop                                              ; $7165: $00
	nop                                              ; $7166: $00
	nop                                              ; $7167: $00
	nop                                              ; $7168: $00
	nop                                              ; $7169: $00
	nop                                              ; $716a: $00
	nop                                              ; $716b: $00
	nop                                              ; $716c: $00
	nop                                              ; $716d: $00
	nop                                              ; $716e: $00
	nop                                              ; $716f: $00
	nop                                              ; $7170: $00
	nop                                              ; $7171: $00
	nop                                              ; $7172: $00
	nop                                              ; $7173: $00
	nop                                              ; $7174: $00
	nop                                              ; $7175: $00
	nop                                              ; $7176: $00
	nop                                              ; $7177: $00
	nop                                              ; $7178: $00
	nop                                              ; $7179: $00
	nop                                              ; $717a: $00
	nop                                              ; $717b: $00
	nop                                              ; $717c: $00
	nop                                              ; $717d: $00
	nop                                              ; $717e: $00
	nop                                              ; $717f: $00
	nop                                              ; $7180: $00
	nop                                              ; $7181: $00
	nop                                              ; $7182: $00
	nop                                              ; $7183: $00
	nop                                              ; $7184: $00
	nop                                              ; $7185: $00
	nop                                              ; $7186: $00
	nop                                              ; $7187: $00
	nop                                              ; $7188: $00
	nop                                              ; $7189: $00
	nop                                              ; $718a: $00
	nop                                              ; $718b: $00
	nop                                              ; $718c: $00
	nop                                              ; $718d: $00
	nop                                              ; $718e: $00
	nop                                              ; $718f: $00
	nop                                              ; $7190: $00
	nop                                              ; $7191: $00
	nop                                              ; $7192: $00
	nop                                              ; $7193: $00
	nop                                              ; $7194: $00
	nop                                              ; $7195: $00
	nop                                              ; $7196: $00
	nop                                              ; $7197: $00
	nop                                              ; $7198: $00
	nop                                              ; $7199: $00
	nop                                              ; $719a: $00
	nop                                              ; $719b: $00
	nop                                              ; $719c: $00
	nop                                              ; $719d: $00
	nop                                              ; $719e: $00
	nop                                              ; $719f: $00
	nop                                              ; $71a0: $00
	nop                                              ; $71a1: $00
	nop                                              ; $71a2: $00
	nop                                              ; $71a3: $00
	nop                                              ; $71a4: $00
	nop                                              ; $71a5: $00
	nop                                              ; $71a6: $00
	nop                                              ; $71a7: $00
	nop                                              ; $71a8: $00
	nop                                              ; $71a9: $00
	nop                                              ; $71aa: $00
	nop                                              ; $71ab: $00
	nop                                              ; $71ac: $00
	nop                                              ; $71ad: $00
	nop                                              ; $71ae: $00
	nop                                              ; $71af: $00
	nop                                              ; $71b0: $00
	nop                                              ; $71b1: $00
	nop                                              ; $71b2: $00
	nop                                              ; $71b3: $00
	nop                                              ; $71b4: $00
	nop                                              ; $71b5: $00
	nop                                              ; $71b6: $00
	nop                                              ; $71b7: $00
	nop                                              ; $71b8: $00
	nop                                              ; $71b9: $00
	nop                                              ; $71ba: $00
	nop                                              ; $71bb: $00
	nop                                              ; $71bc: $00
	nop                                              ; $71bd: $00
	nop                                              ; $71be: $00
	nop                                              ; $71bf: $00
	nop                                              ; $71c0: $00
	nop                                              ; $71c1: $00
	nop                                              ; $71c2: $00
	nop                                              ; $71c3: $00
	nop                                              ; $71c4: $00
	nop                                              ; $71c5: $00
	nop                                              ; $71c6: $00
	nop                                              ; $71c7: $00
	nop                                              ; $71c8: $00
	nop                                              ; $71c9: $00
	nop                                              ; $71ca: $00
	nop                                              ; $71cb: $00
	nop                                              ; $71cc: $00
	nop                                              ; $71cd: $00
	nop                                              ; $71ce: $00
	nop                                              ; $71cf: $00
	nop                                              ; $71d0: $00
	nop                                              ; $71d1: $00
	nop                                              ; $71d2: $00
	nop                                              ; $71d3: $00
	nop                                              ; $71d4: $00
	nop                                              ; $71d5: $00
	nop                                              ; $71d6: $00
	nop                                              ; $71d7: $00
	nop                                              ; $71d8: $00
	nop                                              ; $71d9: $00
	nop                                              ; $71da: $00
	nop                                              ; $71db: $00
	nop                                              ; $71dc: $00
	nop                                              ; $71dd: $00
	nop                                              ; $71de: $00
	nop                                              ; $71df: $00
	nop                                              ; $71e0: $00
	nop                                              ; $71e1: $00
	nop                                              ; $71e2: $00
	nop                                              ; $71e3: $00
	nop                                              ; $71e4: $00
	nop                                              ; $71e5: $00
	nop                                              ; $71e6: $00
	nop                                              ; $71e7: $00
	nop                                              ; $71e8: $00
	nop                                              ; $71e9: $00
	nop                                              ; $71ea: $00
	nop                                              ; $71eb: $00
	nop                                              ; $71ec: $00
	nop                                              ; $71ed: $00
	nop                                              ; $71ee: $00
	nop                                              ; $71ef: $00
	nop                                              ; $71f0: $00
	nop                                              ; $71f1: $00
	nop                                              ; $71f2: $00
	nop                                              ; $71f3: $00
	nop                                              ; $71f4: $00
	nop                                              ; $71f5: $00
	nop                                              ; $71f6: $00
	nop                                              ; $71f7: $00
	nop                                              ; $71f8: $00
	nop                                              ; $71f9: $00
	nop                                              ; $71fa: $00
	nop                                              ; $71fb: $00
	nop                                              ; $71fc: $00
	nop                                              ; $71fd: $00
	nop                                              ; $71fe: $00
	nop                                              ; $71ff: $00
	nop                                              ; $7200: $00
	nop                                              ; $7201: $00
	nop                                              ; $7202: $00
	nop                                              ; $7203: $00
	nop                                              ; $7204: $00
	nop                                              ; $7205: $00
	nop                                              ; $7206: $00
	nop                                              ; $7207: $00
	nop                                              ; $7208: $00
	nop                                              ; $7209: $00
	nop                                              ; $720a: $00
	nop                                              ; $720b: $00
	nop                                              ; $720c: $00
	nop                                              ; $720d: $00
	nop                                              ; $720e: $00
	nop                                              ; $720f: $00
	nop                                              ; $7210: $00
	nop                                              ; $7211: $00
	nop                                              ; $7212: $00
	nop                                              ; $7213: $00
	nop                                              ; $7214: $00
	nop                                              ; $7215: $00
	nop                                              ; $7216: $00
	nop                                              ; $7217: $00
	nop                                              ; $7218: $00
	nop                                              ; $7219: $00
	nop                                              ; $721a: $00
	nop                                              ; $721b: $00
	nop                                              ; $721c: $00
	nop                                              ; $721d: $00
	nop                                              ; $721e: $00
	nop                                              ; $721f: $00
	nop                                              ; $7220: $00
	nop                                              ; $7221: $00
	nop                                              ; $7222: $00
	nop                                              ; $7223: $00
	nop                                              ; $7224: $00
	nop                                              ; $7225: $00
	nop                                              ; $7226: $00
	nop                                              ; $7227: $00
	nop                                              ; $7228: $00
	nop                                              ; $7229: $00
	nop                                              ; $722a: $00
	nop                                              ; $722b: $00
	nop                                              ; $722c: $00
	nop                                              ; $722d: $00
	nop                                              ; $722e: $00
	nop                                              ; $722f: $00
	nop                                              ; $7230: $00
	nop                                              ; $7231: $00
	nop                                              ; $7232: $00
	nop                                              ; $7233: $00
	nop                                              ; $7234: $00
	nop                                              ; $7235: $00
	nop                                              ; $7236: $00
	nop                                              ; $7237: $00
	nop                                              ; $7238: $00
	nop                                              ; $7239: $00
	nop                                              ; $723a: $00
	nop                                              ; $723b: $00
	nop                                              ; $723c: $00
	nop                                              ; $723d: $00
	nop                                              ; $723e: $00
	nop                                              ; $723f: $00
	nop                                              ; $7240: $00
	nop                                              ; $7241: $00
	nop                                              ; $7242: $00
	nop                                              ; $7243: $00
	nop                                              ; $7244: $00
	nop                                              ; $7245: $00
	nop                                              ; $7246: $00
	nop                                              ; $7247: $00
	nop                                              ; $7248: $00
	nop                                              ; $7249: $00

Call_007_724a:
	nop                                              ; $724a: $00
	nop                                              ; $724b: $00
	nop                                              ; $724c: $00
	nop                                              ; $724d: $00
	nop                                              ; $724e: $00
	nop                                              ; $724f: $00
	nop                                              ; $7250: $00
	nop                                              ; $7251: $00
	nop                                              ; $7252: $00
	nop                                              ; $7253: $00
	nop                                              ; $7254: $00
	nop                                              ; $7255: $00
	nop                                              ; $7256: $00
	nop                                              ; $7257: $00
	nop                                              ; $7258: $00
	nop                                              ; $7259: $00
	nop                                              ; $725a: $00
	nop                                              ; $725b: $00
	nop                                              ; $725c: $00
	nop                                              ; $725d: $00
	nop                                              ; $725e: $00
	nop                                              ; $725f: $00
	nop                                              ; $7260: $00
	nop                                              ; $7261: $00
	nop                                              ; $7262: $00
	nop                                              ; $7263: $00
	nop                                              ; $7264: $00
	nop                                              ; $7265: $00
	nop                                              ; $7266: $00
	nop                                              ; $7267: $00
	nop                                              ; $7268: $00
	nop                                              ; $7269: $00
	nop                                              ; $726a: $00
	nop                                              ; $726b: $00
	nop                                              ; $726c: $00
	nop                                              ; $726d: $00
	nop                                              ; $726e: $00
	nop                                              ; $726f: $00
	nop                                              ; $7270: $00
	nop                                              ; $7271: $00
	nop                                              ; $7272: $00
	nop                                              ; $7273: $00
	nop                                              ; $7274: $00
	nop                                              ; $7275: $00
	nop                                              ; $7276: $00
	nop                                              ; $7277: $00
	nop                                              ; $7278: $00
	nop                                              ; $7279: $00
	nop                                              ; $727a: $00
	nop                                              ; $727b: $00
	nop                                              ; $727c: $00
	nop                                              ; $727d: $00
	nop                                              ; $727e: $00
	nop                                              ; $727f: $00
	nop                                              ; $7280: $00
	nop                                              ; $7281: $00
	nop                                              ; $7282: $00
	nop                                              ; $7283: $00
	nop                                              ; $7284: $00
	nop                                              ; $7285: $00
	nop                                              ; $7286: $00
	nop                                              ; $7287: $00
	nop                                              ; $7288: $00
	nop                                              ; $7289: $00
	nop                                              ; $728a: $00
	nop                                              ; $728b: $00
	nop                                              ; $728c: $00
	nop                                              ; $728d: $00
	nop                                              ; $728e: $00
	nop                                              ; $728f: $00
	nop                                              ; $7290: $00
	nop                                              ; $7291: $00
	nop                                              ; $7292: $00
	nop                                              ; $7293: $00
	nop                                              ; $7294: $00
	nop                                              ; $7295: $00
	nop                                              ; $7296: $00
	nop                                              ; $7297: $00
	nop                                              ; $7298: $00
	nop                                              ; $7299: $00
	nop                                              ; $729a: $00
	nop                                              ; $729b: $00
	nop                                              ; $729c: $00
	nop                                              ; $729d: $00
	nop                                              ; $729e: $00
	nop                                              ; $729f: $00
	nop                                              ; $72a0: $00
	nop                                              ; $72a1: $00
	nop                                              ; $72a2: $00
	nop                                              ; $72a3: $00
	nop                                              ; $72a4: $00
	nop                                              ; $72a5: $00
	nop                                              ; $72a6: $00
	nop                                              ; $72a7: $00
	nop                                              ; $72a8: $00
	nop                                              ; $72a9: $00
	nop                                              ; $72aa: $00
	nop                                              ; $72ab: $00
	nop                                              ; $72ac: $00
	nop                                              ; $72ad: $00
	nop                                              ; $72ae: $00
	nop                                              ; $72af: $00
	nop                                              ; $72b0: $00
	nop                                              ; $72b1: $00
	nop                                              ; $72b2: $00
	nop                                              ; $72b3: $00
	nop                                              ; $72b4: $00
	nop                                              ; $72b5: $00
	nop                                              ; $72b6: $00
	nop                                              ; $72b7: $00
	nop                                              ; $72b8: $00
	nop                                              ; $72b9: $00
	nop                                              ; $72ba: $00
	nop                                              ; $72bb: $00
	nop                                              ; $72bc: $00
	nop                                              ; $72bd: $00
	nop                                              ; $72be: $00
	nop                                              ; $72bf: $00
	nop                                              ; $72c0: $00
	nop                                              ; $72c1: $00
	nop                                              ; $72c2: $00
	nop                                              ; $72c3: $00
	nop                                              ; $72c4: $00
	nop                                              ; $72c5: $00
	nop                                              ; $72c6: $00
	nop                                              ; $72c7: $00
	nop                                              ; $72c8: $00
	nop                                              ; $72c9: $00
	nop                                              ; $72ca: $00
	nop                                              ; $72cb: $00
	nop                                              ; $72cc: $00
	nop                                              ; $72cd: $00
	nop                                              ; $72ce: $00
	nop                                              ; $72cf: $00
	nop                                              ; $72d0: $00
	nop                                              ; $72d1: $00
	nop                                              ; $72d2: $00
	nop                                              ; $72d3: $00
	nop                                              ; $72d4: $00
	nop                                              ; $72d5: $00
	nop                                              ; $72d6: $00
	nop                                              ; $72d7: $00
	nop                                              ; $72d8: $00
	nop                                              ; $72d9: $00
	nop                                              ; $72da: $00
	nop                                              ; $72db: $00
	nop                                              ; $72dc: $00
	nop                                              ; $72dd: $00
	nop                                              ; $72de: $00
	nop                                              ; $72df: $00
	nop                                              ; $72e0: $00
	nop                                              ; $72e1: $00
	nop                                              ; $72e2: $00
	nop                                              ; $72e3: $00
	nop                                              ; $72e4: $00
	nop                                              ; $72e5: $00
	nop                                              ; $72e6: $00
	nop                                              ; $72e7: $00
	nop                                              ; $72e8: $00
	nop                                              ; $72e9: $00
	nop                                              ; $72ea: $00
	nop                                              ; $72eb: $00
	nop                                              ; $72ec: $00
	nop                                              ; $72ed: $00
	nop                                              ; $72ee: $00
	nop                                              ; $72ef: $00
	nop                                              ; $72f0: $00
	nop                                              ; $72f1: $00
	nop                                              ; $72f2: $00
	nop                                              ; $72f3: $00
	nop                                              ; $72f4: $00
	nop                                              ; $72f5: $00
	nop                                              ; $72f6: $00
	nop                                              ; $72f7: $00
	nop                                              ; $72f8: $00
	nop                                              ; $72f9: $00
	nop                                              ; $72fa: $00
	nop                                              ; $72fb: $00
	nop                                              ; $72fc: $00
	nop                                              ; $72fd: $00
	nop                                              ; $72fe: $00
	nop                                              ; $72ff: $00
	nop                                              ; $7300: $00
	nop                                              ; $7301: $00
	nop                                              ; $7302: $00
	nop                                              ; $7303: $00
	nop                                              ; $7304: $00
	nop                                              ; $7305: $00
	nop                                              ; $7306: $00
	nop                                              ; $7307: $00
	nop                                              ; $7308: $00
	nop                                              ; $7309: $00
	nop                                              ; $730a: $00
	nop                                              ; $730b: $00
	nop                                              ; $730c: $00
	nop                                              ; $730d: $00
	nop                                              ; $730e: $00
	nop                                              ; $730f: $00
	nop                                              ; $7310: $00
	nop                                              ; $7311: $00
	nop                                              ; $7312: $00
	nop                                              ; $7313: $00
	nop                                              ; $7314: $00
	nop                                              ; $7315: $00
	nop                                              ; $7316: $00
	nop                                              ; $7317: $00
	nop                                              ; $7318: $00
	nop                                              ; $7319: $00
	nop                                              ; $731a: $00
	nop                                              ; $731b: $00
	nop                                              ; $731c: $00
	nop                                              ; $731d: $00
	nop                                              ; $731e: $00
	nop                                              ; $731f: $00
	nop                                              ; $7320: $00
	nop                                              ; $7321: $00
	nop                                              ; $7322: $00
	nop                                              ; $7323: $00
	nop                                              ; $7324: $00
	nop                                              ; $7325: $00
	nop                                              ; $7326: $00
	nop                                              ; $7327: $00
	nop                                              ; $7328: $00
	nop                                              ; $7329: $00
	nop                                              ; $732a: $00
	nop                                              ; $732b: $00
	nop                                              ; $732c: $00
	nop                                              ; $732d: $00
	nop                                              ; $732e: $00
	nop                                              ; $732f: $00
	nop                                              ; $7330: $00
	nop                                              ; $7331: $00
	nop                                              ; $7332: $00
	nop                                              ; $7333: $00
	nop                                              ; $7334: $00
	nop                                              ; $7335: $00
	nop                                              ; $7336: $00
	nop                                              ; $7337: $00
	nop                                              ; $7338: $00
	nop                                              ; $7339: $00
	nop                                              ; $733a: $00
	nop                                              ; $733b: $00
	nop                                              ; $733c: $00
	nop                                              ; $733d: $00
	nop                                              ; $733e: $00
	nop                                              ; $733f: $00
	nop                                              ; $7340: $00
	nop                                              ; $7341: $00
	nop                                              ; $7342: $00
	nop                                              ; $7343: $00
	nop                                              ; $7344: $00
	nop                                              ; $7345: $00
	nop                                              ; $7346: $00
	nop                                              ; $7347: $00
	nop                                              ; $7348: $00
	nop                                              ; $7349: $00
	nop                                              ; $734a: $00
	nop                                              ; $734b: $00
	nop                                              ; $734c: $00
	nop                                              ; $734d: $00
	nop                                              ; $734e: $00
	nop                                              ; $734f: $00
	nop                                              ; $7350: $00
	nop                                              ; $7351: $00
	nop                                              ; $7352: $00
	nop                                              ; $7353: $00
	nop                                              ; $7354: $00
	nop                                              ; $7355: $00
	nop                                              ; $7356: $00
	nop                                              ; $7357: $00
	nop                                              ; $7358: $00
	nop                                              ; $7359: $00
	nop                                              ; $735a: $00
	nop                                              ; $735b: $00
	nop                                              ; $735c: $00
	nop                                              ; $735d: $00
	nop                                              ; $735e: $00
	nop                                              ; $735f: $00
	nop                                              ; $7360: $00
	nop                                              ; $7361: $00
	nop                                              ; $7362: $00
	nop                                              ; $7363: $00
	nop                                              ; $7364: $00
	nop                                              ; $7365: $00
	nop                                              ; $7366: $00
	nop                                              ; $7367: $00
	nop                                              ; $7368: $00
	nop                                              ; $7369: $00
	nop                                              ; $736a: $00
	nop                                              ; $736b: $00
	nop                                              ; $736c: $00
	nop                                              ; $736d: $00
	nop                                              ; $736e: $00
	nop                                              ; $736f: $00
	nop                                              ; $7370: $00
	nop                                              ; $7371: $00
	nop                                              ; $7372: $00
	nop                                              ; $7373: $00
	nop                                              ; $7374: $00
	nop                                              ; $7375: $00
	nop                                              ; $7376: $00
	nop                                              ; $7377: $00
	nop                                              ; $7378: $00
	nop                                              ; $7379: $00
	nop                                              ; $737a: $00
	nop                                              ; $737b: $00
	nop                                              ; $737c: $00
	nop                                              ; $737d: $00
	nop                                              ; $737e: $00
	nop                                              ; $737f: $00
	nop                                              ; $7380: $00
	nop                                              ; $7381: $00
	nop                                              ; $7382: $00
	nop                                              ; $7383: $00
	nop                                              ; $7384: $00
	nop                                              ; $7385: $00
	nop                                              ; $7386: $00
	nop                                              ; $7387: $00
	nop                                              ; $7388: $00
	nop                                              ; $7389: $00
	nop                                              ; $738a: $00
	nop                                              ; $738b: $00
	nop                                              ; $738c: $00
	nop                                              ; $738d: $00
	nop                                              ; $738e: $00
	nop                                              ; $738f: $00
	nop                                              ; $7390: $00
	nop                                              ; $7391: $00
	nop                                              ; $7392: $00
	nop                                              ; $7393: $00
	nop                                              ; $7394: $00
	nop                                              ; $7395: $00
	nop                                              ; $7396: $00
	nop                                              ; $7397: $00
	nop                                              ; $7398: $00
	nop                                              ; $7399: $00
	nop                                              ; $739a: $00
	nop                                              ; $739b: $00
	nop                                              ; $739c: $00
	nop                                              ; $739d: $00
	nop                                              ; $739e: $00
	nop                                              ; $739f: $00
	nop                                              ; $73a0: $00
	nop                                              ; $73a1: $00
	nop                                              ; $73a2: $00
	nop                                              ; $73a3: $00
	nop                                              ; $73a4: $00
	nop                                              ; $73a5: $00
	nop                                              ; $73a6: $00
	nop                                              ; $73a7: $00
	nop                                              ; $73a8: $00
	nop                                              ; $73a9: $00
	nop                                              ; $73aa: $00
	nop                                              ; $73ab: $00
	nop                                              ; $73ac: $00
	nop                                              ; $73ad: $00
	nop                                              ; $73ae: $00
	nop                                              ; $73af: $00
	nop                                              ; $73b0: $00
	nop                                              ; $73b1: $00
	nop                                              ; $73b2: $00
	nop                                              ; $73b3: $00
	nop                                              ; $73b4: $00
	nop                                              ; $73b5: $00
	nop                                              ; $73b6: $00
	nop                                              ; $73b7: $00
	nop                                              ; $73b8: $00
	nop                                              ; $73b9: $00
	nop                                              ; $73ba: $00
	nop                                              ; $73bb: $00
	nop                                              ; $73bc: $00
	nop                                              ; $73bd: $00
	nop                                              ; $73be: $00
	nop                                              ; $73bf: $00
	nop                                              ; $73c0: $00
	nop                                              ; $73c1: $00
	nop                                              ; $73c2: $00
	nop                                              ; $73c3: $00
	nop                                              ; $73c4: $00
	nop                                              ; $73c5: $00
	nop                                              ; $73c6: $00
	nop                                              ; $73c7: $00
	nop                                              ; $73c8: $00
	nop                                              ; $73c9: $00
	nop                                              ; $73ca: $00
	nop                                              ; $73cb: $00
	nop                                              ; $73cc: $00
	nop                                              ; $73cd: $00
	nop                                              ; $73ce: $00
	nop                                              ; $73cf: $00
	nop                                              ; $73d0: $00
	nop                                              ; $73d1: $00
	nop                                              ; $73d2: $00
	nop                                              ; $73d3: $00
	nop                                              ; $73d4: $00
	nop                                              ; $73d5: $00
	nop                                              ; $73d6: $00
	nop                                              ; $73d7: $00
	nop                                              ; $73d8: $00
	nop                                              ; $73d9: $00
	nop                                              ; $73da: $00
	nop                                              ; $73db: $00
	nop                                              ; $73dc: $00
	nop                                              ; $73dd: $00
	nop                                              ; $73de: $00
	nop                                              ; $73df: $00
	nop                                              ; $73e0: $00
	nop                                              ; $73e1: $00
	nop                                              ; $73e2: $00
	nop                                              ; $73e3: $00
	nop                                              ; $73e4: $00
	nop                                              ; $73e5: $00
	nop                                              ; $73e6: $00
	nop                                              ; $73e7: $00
	nop                                              ; $73e8: $00
	nop                                              ; $73e9: $00
	nop                                              ; $73ea: $00
	nop                                              ; $73eb: $00
	nop                                              ; $73ec: $00
	nop                                              ; $73ed: $00
	nop                                              ; $73ee: $00
	nop                                              ; $73ef: $00
	nop                                              ; $73f0: $00
	nop                                              ; $73f1: $00
	nop                                              ; $73f2: $00
	nop                                              ; $73f3: $00
	nop                                              ; $73f4: $00
	nop                                              ; $73f5: $00
	nop                                              ; $73f6: $00
	nop                                              ; $73f7: $00
	nop                                              ; $73f8: $00
	nop                                              ; $73f9: $00
	nop                                              ; $73fa: $00
	nop                                              ; $73fb: $00
	nop                                              ; $73fc: $00
	nop                                              ; $73fd: $00
	nop                                              ; $73fe: $00
	nop                                              ; $73ff: $00
	nop                                              ; $7400: $00
	nop                                              ; $7401: $00
	nop                                              ; $7402: $00
	nop                                              ; $7403: $00
	nop                                              ; $7404: $00
	nop                                              ; $7405: $00
	nop                                              ; $7406: $00
	nop                                              ; $7407: $00
	nop                                              ; $7408: $00
	nop                                              ; $7409: $00
	nop                                              ; $740a: $00
	nop                                              ; $740b: $00
	nop                                              ; $740c: $00
	nop                                              ; $740d: $00
	nop                                              ; $740e: $00
	nop                                              ; $740f: $00
	nop                                              ; $7410: $00
	nop                                              ; $7411: $00
	nop                                              ; $7412: $00
	nop                                              ; $7413: $00
	nop                                              ; $7414: $00
	nop                                              ; $7415: $00
	nop                                              ; $7416: $00
	nop                                              ; $7417: $00
	nop                                              ; $7418: $00
	nop                                              ; $7419: $00
	nop                                              ; $741a: $00
	nop                                              ; $741b: $00
	nop                                              ; $741c: $00
	nop                                              ; $741d: $00
	nop                                              ; $741e: $00
	nop                                              ; $741f: $00
	nop                                              ; $7420: $00
	nop                                              ; $7421: $00
	nop                                              ; $7422: $00
	nop                                              ; $7423: $00
	nop                                              ; $7424: $00
	nop                                              ; $7425: $00
	nop                                              ; $7426: $00
	nop                                              ; $7427: $00
	nop                                              ; $7428: $00
	nop                                              ; $7429: $00
	nop                                              ; $742a: $00
	nop                                              ; $742b: $00
	nop                                              ; $742c: $00
	nop                                              ; $742d: $00
	nop                                              ; $742e: $00
	nop                                              ; $742f: $00
	nop                                              ; $7430: $00
	nop                                              ; $7431: $00
	nop                                              ; $7432: $00
	nop                                              ; $7433: $00
	nop                                              ; $7434: $00
	nop                                              ; $7435: $00
	nop                                              ; $7436: $00
	nop                                              ; $7437: $00
	nop                                              ; $7438: $00
	nop                                              ; $7439: $00
	nop                                              ; $743a: $00
	nop                                              ; $743b: $00
	nop                                              ; $743c: $00
	nop                                              ; $743d: $00
	nop                                              ; $743e: $00
	nop                                              ; $743f: $00
	nop                                              ; $7440: $00
	nop                                              ; $7441: $00
	nop                                              ; $7442: $00
	nop                                              ; $7443: $00
	nop                                              ; $7444: $00
	nop                                              ; $7445: $00
	nop                                              ; $7446: $00
	nop                                              ; $7447: $00
	nop                                              ; $7448: $00
	nop                                              ; $7449: $00
	nop                                              ; $744a: $00
	nop                                              ; $744b: $00
	nop                                              ; $744c: $00
	nop                                              ; $744d: $00
	nop                                              ; $744e: $00
	nop                                              ; $744f: $00
	nop                                              ; $7450: $00
	nop                                              ; $7451: $00
	nop                                              ; $7452: $00
	nop                                              ; $7453: $00
	nop                                              ; $7454: $00
	nop                                              ; $7455: $00
	nop                                              ; $7456: $00
	nop                                              ; $7457: $00
	nop                                              ; $7458: $00
	nop                                              ; $7459: $00
	nop                                              ; $745a: $00
	nop                                              ; $745b: $00
	nop                                              ; $745c: $00
	nop                                              ; $745d: $00
	nop                                              ; $745e: $00
	nop                                              ; $745f: $00
	nop                                              ; $7460: $00
	nop                                              ; $7461: $00
	nop                                              ; $7462: $00
	nop                                              ; $7463: $00
	nop                                              ; $7464: $00
	nop                                              ; $7465: $00
	nop                                              ; $7466: $00
	nop                                              ; $7467: $00
	nop                                              ; $7468: $00
	nop                                              ; $7469: $00
	nop                                              ; $746a: $00
	nop                                              ; $746b: $00
	nop                                              ; $746c: $00
	nop                                              ; $746d: $00
	nop                                              ; $746e: $00
	nop                                              ; $746f: $00
	nop                                              ; $7470: $00
	nop                                              ; $7471: $00
	nop                                              ; $7472: $00
	nop                                              ; $7473: $00
	nop                                              ; $7474: $00
	nop                                              ; $7475: $00
	nop                                              ; $7476: $00
	nop                                              ; $7477: $00
	nop                                              ; $7478: $00
	nop                                              ; $7479: $00
	nop                                              ; $747a: $00
	nop                                              ; $747b: $00
	nop                                              ; $747c: $00
	nop                                              ; $747d: $00
	nop                                              ; $747e: $00
	nop                                              ; $747f: $00
	nop                                              ; $7480: $00
	nop                                              ; $7481: $00
	nop                                              ; $7482: $00
	nop                                              ; $7483: $00
	nop                                              ; $7484: $00
	nop                                              ; $7485: $00
	nop                                              ; $7486: $00
	nop                                              ; $7487: $00
	nop                                              ; $7488: $00
	nop                                              ; $7489: $00
	nop                                              ; $748a: $00
	nop                                              ; $748b: $00
	nop                                              ; $748c: $00
	nop                                              ; $748d: $00
	nop                                              ; $748e: $00
	nop                                              ; $748f: $00
	nop                                              ; $7490: $00
	nop                                              ; $7491: $00
	nop                                              ; $7492: $00
	nop                                              ; $7493: $00
	nop                                              ; $7494: $00
	nop                                              ; $7495: $00
	nop                                              ; $7496: $00
	nop                                              ; $7497: $00
	nop                                              ; $7498: $00
	nop                                              ; $7499: $00
	nop                                              ; $749a: $00
	nop                                              ; $749b: $00
	nop                                              ; $749c: $00
	nop                                              ; $749d: $00
	nop                                              ; $749e: $00
	nop                                              ; $749f: $00
	nop                                              ; $74a0: $00
	nop                                              ; $74a1: $00
	nop                                              ; $74a2: $00
	nop                                              ; $74a3: $00
	nop                                              ; $74a4: $00
	nop                                              ; $74a5: $00
	nop                                              ; $74a6: $00
	nop                                              ; $74a7: $00
	nop                                              ; $74a8: $00
	nop                                              ; $74a9: $00
	nop                                              ; $74aa: $00
	nop                                              ; $74ab: $00
	nop                                              ; $74ac: $00
	nop                                              ; $74ad: $00
	nop                                              ; $74ae: $00
	nop                                              ; $74af: $00
	nop                                              ; $74b0: $00
	nop                                              ; $74b1: $00
	nop                                              ; $74b2: $00
	nop                                              ; $74b3: $00
	nop                                              ; $74b4: $00
	nop                                              ; $74b5: $00
	nop                                              ; $74b6: $00
	nop                                              ; $74b7: $00
	nop                                              ; $74b8: $00
	nop                                              ; $74b9: $00
	nop                                              ; $74ba: $00
	nop                                              ; $74bb: $00
	nop                                              ; $74bc: $00
	nop                                              ; $74bd: $00
	nop                                              ; $74be: $00
	nop                                              ; $74bf: $00
	nop                                              ; $74c0: $00
	nop                                              ; $74c1: $00
	nop                                              ; $74c2: $00
	nop                                              ; $74c3: $00
	nop                                              ; $74c4: $00
	nop                                              ; $74c5: $00
	nop                                              ; $74c6: $00
	nop                                              ; $74c7: $00
	nop                                              ; $74c8: $00
	nop                                              ; $74c9: $00
	nop                                              ; $74ca: $00
	nop                                              ; $74cb: $00
	nop                                              ; $74cc: $00
	nop                                              ; $74cd: $00
	nop                                              ; $74ce: $00
	nop                                              ; $74cf: $00
	nop                                              ; $74d0: $00
	nop                                              ; $74d1: $00
	nop                                              ; $74d2: $00
	nop                                              ; $74d3: $00
	nop                                              ; $74d4: $00
	nop                                              ; $74d5: $00
	nop                                              ; $74d6: $00
	nop                                              ; $74d7: $00
	nop                                              ; $74d8: $00
	nop                                              ; $74d9: $00
	nop                                              ; $74da: $00
	nop                                              ; $74db: $00
	nop                                              ; $74dc: $00
	nop                                              ; $74dd: $00
	nop                                              ; $74de: $00
	nop                                              ; $74df: $00
	nop                                              ; $74e0: $00
	nop                                              ; $74e1: $00
	nop                                              ; $74e2: $00
	nop                                              ; $74e3: $00
	nop                                              ; $74e4: $00
	nop                                              ; $74e5: $00
	nop                                              ; $74e6: $00
	nop                                              ; $74e7: $00
	nop                                              ; $74e8: $00
	nop                                              ; $74e9: $00
	nop                                              ; $74ea: $00
	nop                                              ; $74eb: $00
	nop                                              ; $74ec: $00
	nop                                              ; $74ed: $00
	nop                                              ; $74ee: $00
	nop                                              ; $74ef: $00
	nop                                              ; $74f0: $00
	nop                                              ; $74f1: $00
	nop                                              ; $74f2: $00
	nop                                              ; $74f3: $00
	nop                                              ; $74f4: $00
	nop                                              ; $74f5: $00
	nop                                              ; $74f6: $00
	nop                                              ; $74f7: $00
	nop                                              ; $74f8: $00
	nop                                              ; $74f9: $00
	nop                                              ; $74fa: $00
	nop                                              ; $74fb: $00
	nop                                              ; $74fc: $00
	nop                                              ; $74fd: $00
	nop                                              ; $74fe: $00
	nop                                              ; $74ff: $00
	nop                                              ; $7500: $00
	nop                                              ; $7501: $00
	nop                                              ; $7502: $00
	nop                                              ; $7503: $00
	nop                                              ; $7504: $00
	nop                                              ; $7505: $00
	nop                                              ; $7506: $00
	nop                                              ; $7507: $00
	nop                                              ; $7508: $00
	nop                                              ; $7509: $00
	nop                                              ; $750a: $00
	nop                                              ; $750b: $00
	nop                                              ; $750c: $00
	nop                                              ; $750d: $00
	nop                                              ; $750e: $00
	nop                                              ; $750f: $00
	nop                                              ; $7510: $00
	nop                                              ; $7511: $00
	nop                                              ; $7512: $00
	nop                                              ; $7513: $00
	nop                                              ; $7514: $00
	nop                                              ; $7515: $00
	nop                                              ; $7516: $00
	nop                                              ; $7517: $00
	nop                                              ; $7518: $00
	nop                                              ; $7519: $00
	nop                                              ; $751a: $00
	nop                                              ; $751b: $00
	nop                                              ; $751c: $00
	nop                                              ; $751d: $00
	nop                                              ; $751e: $00
	nop                                              ; $751f: $00
	nop                                              ; $7520: $00
	nop                                              ; $7521: $00
	nop                                              ; $7522: $00
	nop                                              ; $7523: $00
	nop                                              ; $7524: $00
	nop                                              ; $7525: $00
	nop                                              ; $7526: $00
	nop                                              ; $7527: $00
	nop                                              ; $7528: $00
	nop                                              ; $7529: $00
	nop                                              ; $752a: $00
	nop                                              ; $752b: $00
	nop                                              ; $752c: $00
	nop                                              ; $752d: $00
	nop                                              ; $752e: $00
	nop                                              ; $752f: $00
	nop                                              ; $7530: $00
	nop                                              ; $7531: $00
	nop                                              ; $7532: $00
	nop                                              ; $7533: $00
	nop                                              ; $7534: $00
	nop                                              ; $7535: $00
	nop                                              ; $7536: $00
	nop                                              ; $7537: $00
	nop                                              ; $7538: $00
	nop                                              ; $7539: $00
	nop                                              ; $753a: $00
	nop                                              ; $753b: $00
	nop                                              ; $753c: $00
	nop                                              ; $753d: $00
	nop                                              ; $753e: $00
	nop                                              ; $753f: $00
	nop                                              ; $7540: $00
	nop                                              ; $7541: $00
	nop                                              ; $7542: $00
	nop                                              ; $7543: $00
	nop                                              ; $7544: $00
	nop                                              ; $7545: $00
	nop                                              ; $7546: $00
	nop                                              ; $7547: $00
	nop                                              ; $7548: $00
	nop                                              ; $7549: $00
	nop                                              ; $754a: $00
	nop                                              ; $754b: $00
	nop                                              ; $754c: $00
	nop                                              ; $754d: $00
	nop                                              ; $754e: $00
	nop                                              ; $754f: $00
	nop                                              ; $7550: $00
	nop                                              ; $7551: $00
	nop                                              ; $7552: $00
	nop                                              ; $7553: $00
	nop                                              ; $7554: $00
	nop                                              ; $7555: $00
	nop                                              ; $7556: $00
	nop                                              ; $7557: $00
	nop                                              ; $7558: $00
	nop                                              ; $7559: $00
	nop                                              ; $755a: $00
	nop                                              ; $755b: $00
	nop                                              ; $755c: $00
	nop                                              ; $755d: $00
	nop                                              ; $755e: $00
	nop                                              ; $755f: $00
	nop                                              ; $7560: $00
	nop                                              ; $7561: $00
	nop                                              ; $7562: $00
	nop                                              ; $7563: $00
	nop                                              ; $7564: $00
	nop                                              ; $7565: $00
	nop                                              ; $7566: $00
	nop                                              ; $7567: $00
	nop                                              ; $7568: $00
	nop                                              ; $7569: $00
	nop                                              ; $756a: $00
	nop                                              ; $756b: $00
	nop                                              ; $756c: $00
	nop                                              ; $756d: $00
	nop                                              ; $756e: $00
	nop                                              ; $756f: $00
	nop                                              ; $7570: $00
	nop                                              ; $7571: $00
	nop                                              ; $7572: $00
	nop                                              ; $7573: $00
	nop                                              ; $7574: $00
	nop                                              ; $7575: $00
	nop                                              ; $7576: $00
	nop                                              ; $7577: $00
	nop                                              ; $7578: $00
	nop                                              ; $7579: $00
	nop                                              ; $757a: $00
	nop                                              ; $757b: $00
	nop                                              ; $757c: $00
	nop                                              ; $757d: $00
	nop                                              ; $757e: $00
	nop                                              ; $757f: $00
	nop                                              ; $7580: $00
	nop                                              ; $7581: $00
	nop                                              ; $7582: $00
	nop                                              ; $7583: $00
	nop                                              ; $7584: $00
	nop                                              ; $7585: $00
	nop                                              ; $7586: $00
	nop                                              ; $7587: $00
	nop                                              ; $7588: $00
	nop                                              ; $7589: $00
	nop                                              ; $758a: $00
	nop                                              ; $758b: $00
	nop                                              ; $758c: $00
	nop                                              ; $758d: $00
	nop                                              ; $758e: $00
	nop                                              ; $758f: $00
	nop                                              ; $7590: $00
	nop                                              ; $7591: $00
	nop                                              ; $7592: $00
	nop                                              ; $7593: $00
	nop                                              ; $7594: $00
	nop                                              ; $7595: $00
	nop                                              ; $7596: $00
	nop                                              ; $7597: $00
	nop                                              ; $7598: $00
	nop                                              ; $7599: $00
	nop                                              ; $759a: $00
	nop                                              ; $759b: $00
	nop                                              ; $759c: $00
	nop                                              ; $759d: $00
	nop                                              ; $759e: $00
	nop                                              ; $759f: $00
	nop                                              ; $75a0: $00
	nop                                              ; $75a1: $00
	nop                                              ; $75a2: $00
	nop                                              ; $75a3: $00
	nop                                              ; $75a4: $00
	nop                                              ; $75a5: $00
	nop                                              ; $75a6: $00
	nop                                              ; $75a7: $00
	nop                                              ; $75a8: $00
	nop                                              ; $75a9: $00
	nop                                              ; $75aa: $00
	nop                                              ; $75ab: $00
	nop                                              ; $75ac: $00
	nop                                              ; $75ad: $00
	nop                                              ; $75ae: $00
	nop                                              ; $75af: $00
	nop                                              ; $75b0: $00
	nop                                              ; $75b1: $00
	nop                                              ; $75b2: $00
	nop                                              ; $75b3: $00
	nop                                              ; $75b4: $00
	nop                                              ; $75b5: $00
	nop                                              ; $75b6: $00
	nop                                              ; $75b7: $00
	nop                                              ; $75b8: $00
	nop                                              ; $75b9: $00
	nop                                              ; $75ba: $00
	nop                                              ; $75bb: $00
	nop                                              ; $75bc: $00
	nop                                              ; $75bd: $00
	nop                                              ; $75be: $00
	nop                                              ; $75bf: $00
	nop                                              ; $75c0: $00
	nop                                              ; $75c1: $00
	nop                                              ; $75c2: $00
	nop                                              ; $75c3: $00
	nop                                              ; $75c4: $00
	nop                                              ; $75c5: $00
	nop                                              ; $75c6: $00
	nop                                              ; $75c7: $00
	nop                                              ; $75c8: $00
	nop                                              ; $75c9: $00
	nop                                              ; $75ca: $00
	nop                                              ; $75cb: $00
	nop                                              ; $75cc: $00
	nop                                              ; $75cd: $00
	nop                                              ; $75ce: $00
	nop                                              ; $75cf: $00
	nop                                              ; $75d0: $00
	nop                                              ; $75d1: $00
	nop                                              ; $75d2: $00
	nop                                              ; $75d3: $00
	nop                                              ; $75d4: $00
	nop                                              ; $75d5: $00
	nop                                              ; $75d6: $00
	nop                                              ; $75d7: $00
	nop                                              ; $75d8: $00
	nop                                              ; $75d9: $00
	nop                                              ; $75da: $00
	nop                                              ; $75db: $00
	nop                                              ; $75dc: $00
	nop                                              ; $75dd: $00
	nop                                              ; $75de: $00
	nop                                              ; $75df: $00
	nop                                              ; $75e0: $00
	nop                                              ; $75e1: $00
	nop                                              ; $75e2: $00
	nop                                              ; $75e3: $00
	nop                                              ; $75e4: $00
	nop                                              ; $75e5: $00
	nop                                              ; $75e6: $00
	nop                                              ; $75e7: $00
	nop                                              ; $75e8: $00
	nop                                              ; $75e9: $00
	nop                                              ; $75ea: $00
	nop                                              ; $75eb: $00
	nop                                              ; $75ec: $00
	nop                                              ; $75ed: $00
	nop                                              ; $75ee: $00
	nop                                              ; $75ef: $00
	nop                                              ; $75f0: $00
	nop                                              ; $75f1: $00
	nop                                              ; $75f2: $00
	nop                                              ; $75f3: $00
	nop                                              ; $75f4: $00
	nop                                              ; $75f5: $00
	nop                                              ; $75f6: $00
	nop                                              ; $75f7: $00
	nop                                              ; $75f8: $00
	nop                                              ; $75f9: $00
	nop                                              ; $75fa: $00
	nop                                              ; $75fb: $00
	nop                                              ; $75fc: $00
	nop                                              ; $75fd: $00
	nop                                              ; $75fe: $00
	nop                                              ; $75ff: $00
	nop                                              ; $7600: $00
	nop                                              ; $7601: $00
	nop                                              ; $7602: $00
	nop                                              ; $7603: $00
	nop                                              ; $7604: $00
	nop                                              ; $7605: $00
	nop                                              ; $7606: $00
	nop                                              ; $7607: $00
	nop                                              ; $7608: $00
	nop                                              ; $7609: $00
	nop                                              ; $760a: $00
	nop                                              ; $760b: $00
	nop                                              ; $760c: $00
	nop                                              ; $760d: $00
	nop                                              ; $760e: $00
	nop                                              ; $760f: $00
	nop                                              ; $7610: $00
	nop                                              ; $7611: $00
	nop                                              ; $7612: $00
	nop                                              ; $7613: $00
	nop                                              ; $7614: $00
	nop                                              ; $7615: $00
	nop                                              ; $7616: $00
	nop                                              ; $7617: $00
	nop                                              ; $7618: $00
	nop                                              ; $7619: $00
	nop                                              ; $761a: $00
	nop                                              ; $761b: $00
	nop                                              ; $761c: $00
	nop                                              ; $761d: $00
	nop                                              ; $761e: $00
	nop                                              ; $761f: $00
	nop                                              ; $7620: $00
	nop                                              ; $7621: $00
	nop                                              ; $7622: $00
	nop                                              ; $7623: $00
	nop                                              ; $7624: $00
	nop                                              ; $7625: $00
	nop                                              ; $7626: $00
	nop                                              ; $7627: $00
	nop                                              ; $7628: $00
	nop                                              ; $7629: $00
	nop                                              ; $762a: $00
	nop                                              ; $762b: $00
	nop                                              ; $762c: $00
	nop                                              ; $762d: $00
	nop                                              ; $762e: $00
	nop                                              ; $762f: $00
	nop                                              ; $7630: $00
	nop                                              ; $7631: $00
	nop                                              ; $7632: $00
	nop                                              ; $7633: $00
	nop                                              ; $7634: $00
	nop                                              ; $7635: $00
	nop                                              ; $7636: $00
	nop                                              ; $7637: $00
	nop                                              ; $7638: $00
	nop                                              ; $7639: $00
	nop                                              ; $763a: $00
	nop                                              ; $763b: $00
	nop                                              ; $763c: $00
	nop                                              ; $763d: $00
	nop                                              ; $763e: $00
	nop                                              ; $763f: $00
	nop                                              ; $7640: $00
	nop                                              ; $7641: $00
	nop                                              ; $7642: $00
	nop                                              ; $7643: $00
	nop                                              ; $7644: $00
	nop                                              ; $7645: $00
	nop                                              ; $7646: $00
	nop                                              ; $7647: $00

Call_007_7648:
	nop                                              ; $7648: $00
	nop                                              ; $7649: $00
	nop                                              ; $764a: $00
	nop                                              ; $764b: $00
	nop                                              ; $764c: $00
	nop                                              ; $764d: $00
	nop                                              ; $764e: $00
	nop                                              ; $764f: $00
	nop                                              ; $7650: $00
	nop                                              ; $7651: $00
	nop                                              ; $7652: $00
	nop                                              ; $7653: $00
	nop                                              ; $7654: $00
	nop                                              ; $7655: $00
	nop                                              ; $7656: $00
	nop                                              ; $7657: $00
	nop                                              ; $7658: $00
	nop                                              ; $7659: $00
	nop                                              ; $765a: $00
	nop                                              ; $765b: $00
	nop                                              ; $765c: $00
	nop                                              ; $765d: $00

Call_007_765e:
	nop                                              ; $765e: $00
	nop                                              ; $765f: $00
	nop                                              ; $7660: $00
	nop                                              ; $7661: $00
	nop                                              ; $7662: $00
	nop                                              ; $7663: $00
	nop                                              ; $7664: $00
	nop                                              ; $7665: $00
	nop                                              ; $7666: $00
	nop                                              ; $7667: $00
	nop                                              ; $7668: $00
	nop                                              ; $7669: $00
	nop                                              ; $766a: $00
	nop                                              ; $766b: $00
	nop                                              ; $766c: $00
	nop                                              ; $766d: $00
	nop                                              ; $766e: $00
	nop                                              ; $766f: $00
	nop                                              ; $7670: $00
	nop                                              ; $7671: $00
	nop                                              ; $7672: $00
	nop                                              ; $7673: $00
	nop                                              ; $7674: $00
	nop                                              ; $7675: $00
	nop                                              ; $7676: $00
	nop                                              ; $7677: $00
	nop                                              ; $7678: $00
	nop                                              ; $7679: $00
	nop                                              ; $767a: $00
	nop                                              ; $767b: $00
	nop                                              ; $767c: $00
	nop                                              ; $767d: $00
	nop                                              ; $767e: $00
	nop                                              ; $767f: $00
	nop                                              ; $7680: $00
	nop                                              ; $7681: $00
	nop                                              ; $7682: $00
	nop                                              ; $7683: $00
	nop                                              ; $7684: $00
	nop                                              ; $7685: $00
	nop                                              ; $7686: $00
	nop                                              ; $7687: $00
	nop                                              ; $7688: $00
	nop                                              ; $7689: $00
	nop                                              ; $768a: $00
	nop                                              ; $768b: $00
	nop                                              ; $768c: $00
	nop                                              ; $768d: $00
	nop                                              ; $768e: $00
	nop                                              ; $768f: $00
	nop                                              ; $7690: $00
	nop                                              ; $7691: $00
	nop                                              ; $7692: $00
	nop                                              ; $7693: $00
	nop                                              ; $7694: $00
	nop                                              ; $7695: $00
	nop                                              ; $7696: $00
	nop                                              ; $7697: $00
	nop                                              ; $7698: $00
	nop                                              ; $7699: $00
	nop                                              ; $769a: $00
	nop                                              ; $769b: $00
	nop                                              ; $769c: $00
	nop                                              ; $769d: $00
	nop                                              ; $769e: $00
	nop                                              ; $769f: $00
	nop                                              ; $76a0: $00
	nop                                              ; $76a1: $00
	nop                                              ; $76a2: $00
	nop                                              ; $76a3: $00
	nop                                              ; $76a4: $00
	nop                                              ; $76a5: $00
	nop                                              ; $76a6: $00
	nop                                              ; $76a7: $00
	nop                                              ; $76a8: $00
	nop                                              ; $76a9: $00
	nop                                              ; $76aa: $00
	nop                                              ; $76ab: $00
	nop                                              ; $76ac: $00
	nop                                              ; $76ad: $00
	nop                                              ; $76ae: $00
	nop                                              ; $76af: $00
	nop                                              ; $76b0: $00
	nop                                              ; $76b1: $00
	nop                                              ; $76b2: $00
	nop                                              ; $76b3: $00
	nop                                              ; $76b4: $00
	nop                                              ; $76b5: $00
	nop                                              ; $76b6: $00
	nop                                              ; $76b7: $00
	nop                                              ; $76b8: $00
	nop                                              ; $76b9: $00
	nop                                              ; $76ba: $00
	nop                                              ; $76bb: $00
	nop                                              ; $76bc: $00
	nop                                              ; $76bd: $00
	nop                                              ; $76be: $00
	nop                                              ; $76bf: $00
	nop                                              ; $76c0: $00
	nop                                              ; $76c1: $00
	nop                                              ; $76c2: $00
	nop                                              ; $76c3: $00
	nop                                              ; $76c4: $00
	nop                                              ; $76c5: $00
	nop                                              ; $76c6: $00
	nop                                              ; $76c7: $00
	nop                                              ; $76c8: $00
	nop                                              ; $76c9: $00
	nop                                              ; $76ca: $00
	nop                                              ; $76cb: $00
	nop                                              ; $76cc: $00
	nop                                              ; $76cd: $00
	nop                                              ; $76ce: $00
	nop                                              ; $76cf: $00
	nop                                              ; $76d0: $00
	nop                                              ; $76d1: $00
	nop                                              ; $76d2: $00
	nop                                              ; $76d3: $00
	nop                                              ; $76d4: $00
	nop                                              ; $76d5: $00
	nop                                              ; $76d6: $00
	nop                                              ; $76d7: $00
	nop                                              ; $76d8: $00
	nop                                              ; $76d9: $00
	nop                                              ; $76da: $00
	nop                                              ; $76db: $00
	nop                                              ; $76dc: $00
	nop                                              ; $76dd: $00
	nop                                              ; $76de: $00
	nop                                              ; $76df: $00
	nop                                              ; $76e0: $00
	nop                                              ; $76e1: $00
	nop                                              ; $76e2: $00
	nop                                              ; $76e3: $00
	nop                                              ; $76e4: $00
	nop                                              ; $76e5: $00
	nop                                              ; $76e6: $00
	nop                                              ; $76e7: $00
	nop                                              ; $76e8: $00
	nop                                              ; $76e9: $00
	nop                                              ; $76ea: $00
	nop                                              ; $76eb: $00
	nop                                              ; $76ec: $00
	nop                                              ; $76ed: $00
	nop                                              ; $76ee: $00
	nop                                              ; $76ef: $00
	nop                                              ; $76f0: $00
	nop                                              ; $76f1: $00
	nop                                              ; $76f2: $00
	nop                                              ; $76f3: $00
	nop                                              ; $76f4: $00
	nop                                              ; $76f5: $00
	nop                                              ; $76f6: $00
	nop                                              ; $76f7: $00
	nop                                              ; $76f8: $00
	nop                                              ; $76f9: $00
	nop                                              ; $76fa: $00
	nop                                              ; $76fb: $00
	nop                                              ; $76fc: $00
	nop                                              ; $76fd: $00
	nop                                              ; $76fe: $00
	nop                                              ; $76ff: $00
	nop                                              ; $7700: $00
	nop                                              ; $7701: $00
	nop                                              ; $7702: $00
	nop                                              ; $7703: $00
	nop                                              ; $7704: $00
	nop                                              ; $7705: $00
	nop                                              ; $7706: $00
	nop                                              ; $7707: $00
	nop                                              ; $7708: $00
	nop                                              ; $7709: $00
	nop                                              ; $770a: $00
	nop                                              ; $770b: $00
	nop                                              ; $770c: $00
	nop                                              ; $770d: $00
	nop                                              ; $770e: $00
	nop                                              ; $770f: $00
	nop                                              ; $7710: $00
	nop                                              ; $7711: $00
	nop                                              ; $7712: $00
	nop                                              ; $7713: $00
	nop                                              ; $7714: $00
	nop                                              ; $7715: $00
	nop                                              ; $7716: $00
	nop                                              ; $7717: $00
	nop                                              ; $7718: $00
	nop                                              ; $7719: $00
	nop                                              ; $771a: $00
	nop                                              ; $771b: $00
	nop                                              ; $771c: $00
	nop                                              ; $771d: $00
	nop                                              ; $771e: $00
	nop                                              ; $771f: $00
	nop                                              ; $7720: $00
	nop                                              ; $7721: $00
	nop                                              ; $7722: $00
	nop                                              ; $7723: $00
	nop                                              ; $7724: $00
	nop                                              ; $7725: $00
	nop                                              ; $7726: $00
	nop                                              ; $7727: $00
	nop                                              ; $7728: $00
	nop                                              ; $7729: $00
	nop                                              ; $772a: $00
	nop                                              ; $772b: $00
	nop                                              ; $772c: $00
	nop                                              ; $772d: $00
	nop                                              ; $772e: $00
	nop                                              ; $772f: $00
	nop                                              ; $7730: $00
	nop                                              ; $7731: $00
	nop                                              ; $7732: $00
	nop                                              ; $7733: $00
	nop                                              ; $7734: $00
	nop                                              ; $7735: $00
	nop                                              ; $7736: $00
	nop                                              ; $7737: $00
	nop                                              ; $7738: $00
	nop                                              ; $7739: $00
	nop                                              ; $773a: $00
	nop                                              ; $773b: $00
	nop                                              ; $773c: $00
	nop                                              ; $773d: $00
	nop                                              ; $773e: $00
	nop                                              ; $773f: $00
	nop                                              ; $7740: $00
	nop                                              ; $7741: $00
	nop                                              ; $7742: $00
	nop                                              ; $7743: $00
	nop                                              ; $7744: $00
	nop                                              ; $7745: $00
	nop                                              ; $7746: $00
	nop                                              ; $7747: $00
	nop                                              ; $7748: $00
	nop                                              ; $7749: $00
	nop                                              ; $774a: $00
	nop                                              ; $774b: $00
	nop                                              ; $774c: $00
	nop                                              ; $774d: $00
	nop                                              ; $774e: $00
	nop                                              ; $774f: $00
	nop                                              ; $7750: $00
	nop                                              ; $7751: $00
	nop                                              ; $7752: $00
	nop                                              ; $7753: $00
	nop                                              ; $7754: $00
	nop                                              ; $7755: $00
	nop                                              ; $7756: $00
	nop                                              ; $7757: $00
	nop                                              ; $7758: $00
	nop                                              ; $7759: $00
	nop                                              ; $775a: $00
	nop                                              ; $775b: $00
	nop                                              ; $775c: $00
	nop                                              ; $775d: $00
	nop                                              ; $775e: $00
	nop                                              ; $775f: $00
	nop                                              ; $7760: $00
	nop                                              ; $7761: $00
	nop                                              ; $7762: $00
	nop                                              ; $7763: $00
	nop                                              ; $7764: $00
	nop                                              ; $7765: $00
	nop                                              ; $7766: $00
	nop                                              ; $7767: $00
	nop                                              ; $7768: $00
	nop                                              ; $7769: $00
	nop                                              ; $776a: $00
	nop                                              ; $776b: $00
	nop                                              ; $776c: $00
	nop                                              ; $776d: $00
	nop                                              ; $776e: $00
	nop                                              ; $776f: $00
	nop                                              ; $7770: $00
	nop                                              ; $7771: $00
	nop                                              ; $7772: $00
	nop                                              ; $7773: $00
	nop                                              ; $7774: $00
	nop                                              ; $7775: $00
	nop                                              ; $7776: $00
	nop                                              ; $7777: $00
	nop                                              ; $7778: $00
	nop                                              ; $7779: $00
	nop                                              ; $777a: $00
	nop                                              ; $777b: $00
	nop                                              ; $777c: $00
	nop                                              ; $777d: $00
	nop                                              ; $777e: $00
	nop                                              ; $777f: $00
	nop                                              ; $7780: $00
	nop                                              ; $7781: $00
	nop                                              ; $7782: $00
	nop                                              ; $7783: $00
	nop                                              ; $7784: $00
	nop                                              ; $7785: $00
	nop                                              ; $7786: $00
	nop                                              ; $7787: $00
	nop                                              ; $7788: $00
	nop                                              ; $7789: $00
	nop                                              ; $778a: $00
	nop                                              ; $778b: $00
	nop                                              ; $778c: $00
	nop                                              ; $778d: $00
	nop                                              ; $778e: $00
	nop                                              ; $778f: $00
	nop                                              ; $7790: $00
	nop                                              ; $7791: $00
	nop                                              ; $7792: $00
	nop                                              ; $7793: $00
	nop                                              ; $7794: $00
	nop                                              ; $7795: $00
	nop                                              ; $7796: $00
	nop                                              ; $7797: $00
	nop                                              ; $7798: $00
	nop                                              ; $7799: $00
	nop                                              ; $779a: $00
	nop                                              ; $779b: $00
	nop                                              ; $779c: $00
	nop                                              ; $779d: $00
	nop                                              ; $779e: $00
	nop                                              ; $779f: $00
	nop                                              ; $77a0: $00
	nop                                              ; $77a1: $00
	nop                                              ; $77a2: $00
	nop                                              ; $77a3: $00
	nop                                              ; $77a4: $00
	nop                                              ; $77a5: $00
	nop                                              ; $77a6: $00
	nop                                              ; $77a7: $00
	nop                                              ; $77a8: $00
	nop                                              ; $77a9: $00
	nop                                              ; $77aa: $00
	nop                                              ; $77ab: $00
	nop                                              ; $77ac: $00
	nop                                              ; $77ad: $00
	nop                                              ; $77ae: $00
	nop                                              ; $77af: $00
	nop                                              ; $77b0: $00
	nop                                              ; $77b1: $00
	nop                                              ; $77b2: $00
	nop                                              ; $77b3: $00
	nop                                              ; $77b4: $00
	nop                                              ; $77b5: $00
	nop                                              ; $77b6: $00
	nop                                              ; $77b7: $00
	nop                                              ; $77b8: $00
	nop                                              ; $77b9: $00
	nop                                              ; $77ba: $00
	nop                                              ; $77bb: $00
	nop                                              ; $77bc: $00
	nop                                              ; $77bd: $00
	nop                                              ; $77be: $00
	nop                                              ; $77bf: $00
	nop                                              ; $77c0: $00
	nop                                              ; $77c1: $00
	nop                                              ; $77c2: $00
	nop                                              ; $77c3: $00
	nop                                              ; $77c4: $00
	nop                                              ; $77c5: $00
	nop                                              ; $77c6: $00
	nop                                              ; $77c7: $00
	nop                                              ; $77c8: $00
	nop                                              ; $77c9: $00
	nop                                              ; $77ca: $00
	nop                                              ; $77cb: $00
	nop                                              ; $77cc: $00
	nop                                              ; $77cd: $00
	nop                                              ; $77ce: $00
	nop                                              ; $77cf: $00
	nop                                              ; $77d0: $00
	nop                                              ; $77d1: $00
	nop                                              ; $77d2: $00
	nop                                              ; $77d3: $00
	nop                                              ; $77d4: $00
	nop                                              ; $77d5: $00
	nop                                              ; $77d6: $00
	nop                                              ; $77d7: $00
	nop                                              ; $77d8: $00
	nop                                              ; $77d9: $00
	nop                                              ; $77da: $00
	nop                                              ; $77db: $00
	nop                                              ; $77dc: $00
	nop                                              ; $77dd: $00
	nop                                              ; $77de: $00
	nop                                              ; $77df: $00
	nop                                              ; $77e0: $00
	nop                                              ; $77e1: $00
	nop                                              ; $77e2: $00
	nop                                              ; $77e3: $00
	nop                                              ; $77e4: $00
	nop                                              ; $77e5: $00
	nop                                              ; $77e6: $00
	nop                                              ; $77e7: $00
	nop                                              ; $77e8: $00
	nop                                              ; $77e9: $00
	nop                                              ; $77ea: $00
	nop                                              ; $77eb: $00
	nop                                              ; $77ec: $00
	nop                                              ; $77ed: $00
	nop                                              ; $77ee: $00
	nop                                              ; $77ef: $00
	nop                                              ; $77f0: $00
	nop                                              ; $77f1: $00
	nop                                              ; $77f2: $00
	nop                                              ; $77f3: $00
	nop                                              ; $77f4: $00
	nop                                              ; $77f5: $00
	nop                                              ; $77f6: $00
	nop                                              ; $77f7: $00
	nop                                              ; $77f8: $00
	nop                                              ; $77f9: $00
	nop                                              ; $77fa: $00
	nop                                              ; $77fb: $00
	nop                                              ; $77fc: $00
	nop                                              ; $77fd: $00
	nop                                              ; $77fe: $00
	nop                                              ; $77ff: $00
	nop                                              ; $7800: $00
	nop                                              ; $7801: $00
	nop                                              ; $7802: $00
	nop                                              ; $7803: $00
	nop                                              ; $7804: $00
	nop                                              ; $7805: $00
	nop                                              ; $7806: $00
	nop                                              ; $7807: $00
	nop                                              ; $7808: $00
	nop                                              ; $7809: $00
	nop                                              ; $780a: $00
	nop                                              ; $780b: $00
	nop                                              ; $780c: $00
	nop                                              ; $780d: $00
	nop                                              ; $780e: $00
	nop                                              ; $780f: $00
	nop                                              ; $7810: $00
	nop                                              ; $7811: $00
	nop                                              ; $7812: $00
	nop                                              ; $7813: $00
	nop                                              ; $7814: $00
	nop                                              ; $7815: $00
	nop                                              ; $7816: $00
	nop                                              ; $7817: $00
	nop                                              ; $7818: $00
	nop                                              ; $7819: $00
	nop                                              ; $781a: $00
	nop                                              ; $781b: $00
	nop                                              ; $781c: $00
	nop                                              ; $781d: $00
	nop                                              ; $781e: $00
	nop                                              ; $781f: $00
	nop                                              ; $7820: $00
	nop                                              ; $7821: $00
	nop                                              ; $7822: $00
	nop                                              ; $7823: $00
	nop                                              ; $7824: $00
	nop                                              ; $7825: $00
	nop                                              ; $7826: $00
	nop                                              ; $7827: $00
	nop                                              ; $7828: $00
	nop                                              ; $7829: $00
	nop                                              ; $782a: $00
	nop                                              ; $782b: $00
	nop                                              ; $782c: $00
	nop                                              ; $782d: $00
	nop                                              ; $782e: $00
	nop                                              ; $782f: $00
	nop                                              ; $7830: $00
	nop                                              ; $7831: $00
	nop                                              ; $7832: $00
	nop                                              ; $7833: $00
	nop                                              ; $7834: $00
	nop                                              ; $7835: $00
	nop                                              ; $7836: $00
	nop                                              ; $7837: $00
	nop                                              ; $7838: $00
	nop                                              ; $7839: $00
	nop                                              ; $783a: $00
	nop                                              ; $783b: $00
	nop                                              ; $783c: $00
	nop                                              ; $783d: $00
	nop                                              ; $783e: $00
	nop                                              ; $783f: $00
	nop                                              ; $7840: $00
	nop                                              ; $7841: $00
	nop                                              ; $7842: $00
	nop                                              ; $7843: $00
	nop                                              ; $7844: $00
	nop                                              ; $7845: $00
	nop                                              ; $7846: $00
	nop                                              ; $7847: $00
	nop                                              ; $7848: $00
	nop                                              ; $7849: $00
	nop                                              ; $784a: $00
	nop                                              ; $784b: $00
	nop                                              ; $784c: $00
	nop                                              ; $784d: $00
	nop                                              ; $784e: $00
	nop                                              ; $784f: $00
	nop                                              ; $7850: $00
	nop                                              ; $7851: $00
	nop                                              ; $7852: $00
	nop                                              ; $7853: $00
	nop                                              ; $7854: $00
	nop                                              ; $7855: $00
	nop                                              ; $7856: $00
	nop                                              ; $7857: $00
	nop                                              ; $7858: $00
	nop                                              ; $7859: $00
	nop                                              ; $785a: $00
	nop                                              ; $785b: $00
	nop                                              ; $785c: $00
	nop                                              ; $785d: $00
	nop                                              ; $785e: $00
	nop                                              ; $785f: $00
	nop                                              ; $7860: $00
	nop                                              ; $7861: $00
	nop                                              ; $7862: $00
	nop                                              ; $7863: $00
	nop                                              ; $7864: $00
	nop                                              ; $7865: $00
	nop                                              ; $7866: $00
	nop                                              ; $7867: $00
	nop                                              ; $7868: $00
	nop                                              ; $7869: $00
	nop                                              ; $786a: $00
	nop                                              ; $786b: $00
	nop                                              ; $786c: $00
	nop                                              ; $786d: $00
	nop                                              ; $786e: $00
	nop                                              ; $786f: $00
	nop                                              ; $7870: $00
	nop                                              ; $7871: $00
	nop                                              ; $7872: $00
	nop                                              ; $7873: $00
	nop                                              ; $7874: $00
	nop                                              ; $7875: $00
	nop                                              ; $7876: $00
	nop                                              ; $7877: $00
	nop                                              ; $7878: $00
	nop                                              ; $7879: $00
	nop                                              ; $787a: $00
	nop                                              ; $787b: $00
	nop                                              ; $787c: $00
	nop                                              ; $787d: $00
	nop                                              ; $787e: $00
	nop                                              ; $787f: $00
	nop                                              ; $7880: $00
	nop                                              ; $7881: $00
	nop                                              ; $7882: $00
	nop                                              ; $7883: $00
	nop                                              ; $7884: $00
	nop                                              ; $7885: $00
	nop                                              ; $7886: $00
	nop                                              ; $7887: $00
	nop                                              ; $7888: $00
	nop                                              ; $7889: $00
	nop                                              ; $788a: $00
	nop                                              ; $788b: $00
	nop                                              ; $788c: $00
	nop                                              ; $788d: $00
	nop                                              ; $788e: $00
	nop                                              ; $788f: $00
	nop                                              ; $7890: $00
	nop                                              ; $7891: $00
	nop                                              ; $7892: $00
	nop                                              ; $7893: $00
	nop                                              ; $7894: $00
	nop                                              ; $7895: $00
	nop                                              ; $7896: $00
	nop                                              ; $7897: $00
	nop                                              ; $7898: $00
	nop                                              ; $7899: $00
	nop                                              ; $789a: $00
	nop                                              ; $789b: $00
	nop                                              ; $789c: $00
	nop                                              ; $789d: $00
	nop                                              ; $789e: $00
	nop                                              ; $789f: $00
	nop                                              ; $78a0: $00
	nop                                              ; $78a1: $00
	nop                                              ; $78a2: $00
	nop                                              ; $78a3: $00
	nop                                              ; $78a4: $00
	nop                                              ; $78a5: $00
	nop                                              ; $78a6: $00
	nop                                              ; $78a7: $00
	nop                                              ; $78a8: $00
	nop                                              ; $78a9: $00
	nop                                              ; $78aa: $00
	nop                                              ; $78ab: $00
	nop                                              ; $78ac: $00
	nop                                              ; $78ad: $00
	nop                                              ; $78ae: $00
	nop                                              ; $78af: $00
	nop                                              ; $78b0: $00
	nop                                              ; $78b1: $00
	nop                                              ; $78b2: $00
	nop                                              ; $78b3: $00
	nop                                              ; $78b4: $00
	nop                                              ; $78b5: $00
	nop                                              ; $78b6: $00
	nop                                              ; $78b7: $00
	nop                                              ; $78b8: $00
	nop                                              ; $78b9: $00
	nop                                              ; $78ba: $00
	nop                                              ; $78bb: $00
	nop                                              ; $78bc: $00
	nop                                              ; $78bd: $00
	nop                                              ; $78be: $00
	nop                                              ; $78bf: $00
	nop                                              ; $78c0: $00
	nop                                              ; $78c1: $00
	nop                                              ; $78c2: $00
	nop                                              ; $78c3: $00
	nop                                              ; $78c4: $00
	nop                                              ; $78c5: $00
	nop                                              ; $78c6: $00
	nop                                              ; $78c7: $00
	nop                                              ; $78c8: $00
	nop                                              ; $78c9: $00
	nop                                              ; $78ca: $00
	nop                                              ; $78cb: $00
	nop                                              ; $78cc: $00
	nop                                              ; $78cd: $00
	nop                                              ; $78ce: $00
	nop                                              ; $78cf: $00
	nop                                              ; $78d0: $00
	nop                                              ; $78d1: $00
	nop                                              ; $78d2: $00
	nop                                              ; $78d3: $00
	nop                                              ; $78d4: $00
	nop                                              ; $78d5: $00
	nop                                              ; $78d6: $00
	nop                                              ; $78d7: $00
	nop                                              ; $78d8: $00
	nop                                              ; $78d9: $00
	nop                                              ; $78da: $00
	nop                                              ; $78db: $00
	nop                                              ; $78dc: $00
	nop                                              ; $78dd: $00
	nop                                              ; $78de: $00
	nop                                              ; $78df: $00
	nop                                              ; $78e0: $00
	nop                                              ; $78e1: $00
	nop                                              ; $78e2: $00
	nop                                              ; $78e3: $00
	nop                                              ; $78e4: $00
	nop                                              ; $78e5: $00
	nop                                              ; $78e6: $00
	nop                                              ; $78e7: $00
	nop                                              ; $78e8: $00
	nop                                              ; $78e9: $00
	nop                                              ; $78ea: $00
	nop                                              ; $78eb: $00
	nop                                              ; $78ec: $00
	nop                                              ; $78ed: $00
	nop                                              ; $78ee: $00
	nop                                              ; $78ef: $00
	nop                                              ; $78f0: $00
	nop                                              ; $78f1: $00
	nop                                              ; $78f2: $00
	nop                                              ; $78f3: $00
	nop                                              ; $78f4: $00
	nop                                              ; $78f5: $00
	nop                                              ; $78f6: $00
	nop                                              ; $78f7: $00
	nop                                              ; $78f8: $00
	nop                                              ; $78f9: $00
	nop                                              ; $78fa: $00
	nop                                              ; $78fb: $00
	nop                                              ; $78fc: $00
	nop                                              ; $78fd: $00
	nop                                              ; $78fe: $00
	nop                                              ; $78ff: $00
	nop                                              ; $7900: $00
	nop                                              ; $7901: $00
	nop                                              ; $7902: $00
	nop                                              ; $7903: $00
	nop                                              ; $7904: $00
	nop                                              ; $7905: $00
	nop                                              ; $7906: $00
	nop                                              ; $7907: $00
	nop                                              ; $7908: $00
	nop                                              ; $7909: $00
	nop                                              ; $790a: $00
	nop                                              ; $790b: $00
	nop                                              ; $790c: $00
	nop                                              ; $790d: $00
	nop                                              ; $790e: $00
	nop                                              ; $790f: $00
	nop                                              ; $7910: $00
	nop                                              ; $7911: $00
	nop                                              ; $7912: $00
	nop                                              ; $7913: $00
	nop                                              ; $7914: $00
	nop                                              ; $7915: $00
	nop                                              ; $7916: $00
	nop                                              ; $7917: $00
	nop                                              ; $7918: $00
	nop                                              ; $7919: $00
	nop                                              ; $791a: $00
	nop                                              ; $791b: $00
	nop                                              ; $791c: $00
	nop                                              ; $791d: $00
	nop                                              ; $791e: $00
	nop                                              ; $791f: $00
	nop                                              ; $7920: $00
	nop                                              ; $7921: $00
	nop                                              ; $7922: $00
	nop                                              ; $7923: $00
	nop                                              ; $7924: $00
	nop                                              ; $7925: $00
	nop                                              ; $7926: $00
	nop                                              ; $7927: $00
	nop                                              ; $7928: $00
	nop                                              ; $7929: $00
	nop                                              ; $792a: $00
	nop                                              ; $792b: $00
	nop                                              ; $792c: $00
	nop                                              ; $792d: $00
	nop                                              ; $792e: $00
	nop                                              ; $792f: $00
	nop                                              ; $7930: $00
	nop                                              ; $7931: $00
	nop                                              ; $7932: $00
	nop                                              ; $7933: $00
	nop                                              ; $7934: $00
	nop                                              ; $7935: $00
	nop                                              ; $7936: $00
	nop                                              ; $7937: $00
	nop                                              ; $7938: $00
	nop                                              ; $7939: $00
	nop                                              ; $793a: $00
	nop                                              ; $793b: $00
	nop                                              ; $793c: $00
	nop                                              ; $793d: $00
	nop                                              ; $793e: $00
	nop                                              ; $793f: $00
	nop                                              ; $7940: $00
	nop                                              ; $7941: $00
	nop                                              ; $7942: $00
	nop                                              ; $7943: $00
	nop                                              ; $7944: $00
	nop                                              ; $7945: $00
	nop                                              ; $7946: $00
	nop                                              ; $7947: $00
	nop                                              ; $7948: $00
	nop                                              ; $7949: $00
	nop                                              ; $794a: $00
	nop                                              ; $794b: $00
	nop                                              ; $794c: $00
	nop                                              ; $794d: $00
	nop                                              ; $794e: $00
	nop                                              ; $794f: $00
	nop                                              ; $7950: $00
	nop                                              ; $7951: $00
	nop                                              ; $7952: $00
	nop                                              ; $7953: $00
	nop                                              ; $7954: $00
	nop                                              ; $7955: $00
	nop                                              ; $7956: $00
	nop                                              ; $7957: $00
	nop                                              ; $7958: $00
	nop                                              ; $7959: $00
	nop                                              ; $795a: $00
	nop                                              ; $795b: $00
	nop                                              ; $795c: $00
	nop                                              ; $795d: $00
	nop                                              ; $795e: $00
	nop                                              ; $795f: $00
	nop                                              ; $7960: $00
	nop                                              ; $7961: $00
	nop                                              ; $7962: $00
	nop                                              ; $7963: $00
	nop                                              ; $7964: $00
	nop                                              ; $7965: $00
	nop                                              ; $7966: $00
	nop                                              ; $7967: $00
	nop                                              ; $7968: $00
	nop                                              ; $7969: $00
	nop                                              ; $796a: $00
	nop                                              ; $796b: $00
	nop                                              ; $796c: $00
	nop                                              ; $796d: $00
	nop                                              ; $796e: $00
	nop                                              ; $796f: $00
	nop                                              ; $7970: $00
	nop                                              ; $7971: $00
	nop                                              ; $7972: $00
	nop                                              ; $7973: $00
	nop                                              ; $7974: $00
	nop                                              ; $7975: $00
	nop                                              ; $7976: $00
	nop                                              ; $7977: $00
	nop                                              ; $7978: $00
	nop                                              ; $7979: $00
	nop                                              ; $797a: $00
	nop                                              ; $797b: $00
	nop                                              ; $797c: $00
	nop                                              ; $797d: $00
	nop                                              ; $797e: $00
	nop                                              ; $797f: $00
	nop                                              ; $7980: $00
	nop                                              ; $7981: $00
	nop                                              ; $7982: $00
	nop                                              ; $7983: $00
	nop                                              ; $7984: $00
	nop                                              ; $7985: $00
	nop                                              ; $7986: $00
	nop                                              ; $7987: $00
	nop                                              ; $7988: $00
	nop                                              ; $7989: $00
	nop                                              ; $798a: $00
	nop                                              ; $798b: $00
	nop                                              ; $798c: $00
	nop                                              ; $798d: $00
	nop                                              ; $798e: $00
	nop                                              ; $798f: $00
	nop                                              ; $7990: $00
	nop                                              ; $7991: $00
	nop                                              ; $7992: $00
	nop                                              ; $7993: $00
	nop                                              ; $7994: $00
	nop                                              ; $7995: $00
	nop                                              ; $7996: $00
	nop                                              ; $7997: $00
	nop                                              ; $7998: $00
	nop                                              ; $7999: $00
	nop                                              ; $799a: $00
	nop                                              ; $799b: $00
	nop                                              ; $799c: $00
	nop                                              ; $799d: $00
	nop                                              ; $799e: $00
	nop                                              ; $799f: $00
	nop                                              ; $79a0: $00
	nop                                              ; $79a1: $00
	nop                                              ; $79a2: $00
	nop                                              ; $79a3: $00
	nop                                              ; $79a4: $00
	nop                                              ; $79a5: $00
	nop                                              ; $79a6: $00
	nop                                              ; $79a7: $00
	nop                                              ; $79a8: $00
	nop                                              ; $79a9: $00
	nop                                              ; $79aa: $00
	nop                                              ; $79ab: $00
	nop                                              ; $79ac: $00
	nop                                              ; $79ad: $00
	nop                                              ; $79ae: $00
	nop                                              ; $79af: $00
	nop                                              ; $79b0: $00
	nop                                              ; $79b1: $00
	nop                                              ; $79b2: $00
	nop                                              ; $79b3: $00
	nop                                              ; $79b4: $00
	nop                                              ; $79b5: $00
	nop                                              ; $79b6: $00
	nop                                              ; $79b7: $00
	nop                                              ; $79b8: $00
	nop                                              ; $79b9: $00
	nop                                              ; $79ba: $00
	nop                                              ; $79bb: $00
	nop                                              ; $79bc: $00
	nop                                              ; $79bd: $00
	nop                                              ; $79be: $00
	nop                                              ; $79bf: $00
	nop                                              ; $79c0: $00
	nop                                              ; $79c1: $00
	nop                                              ; $79c2: $00
	nop                                              ; $79c3: $00
	nop                                              ; $79c4: $00
	nop                                              ; $79c5: $00
	nop                                              ; $79c6: $00
	nop                                              ; $79c7: $00
	nop                                              ; $79c8: $00
	nop                                              ; $79c9: $00
	nop                                              ; $79ca: $00
	nop                                              ; $79cb: $00
	nop                                              ; $79cc: $00
	nop                                              ; $79cd: $00
	nop                                              ; $79ce: $00
	nop                                              ; $79cf: $00
	nop                                              ; $79d0: $00
	nop                                              ; $79d1: $00
	nop                                              ; $79d2: $00
	nop                                              ; $79d3: $00
	nop                                              ; $79d4: $00
	nop                                              ; $79d5: $00
	nop                                              ; $79d6: $00
	nop                                              ; $79d7: $00
	nop                                              ; $79d8: $00
	nop                                              ; $79d9: $00
	nop                                              ; $79da: $00
	nop                                              ; $79db: $00
	nop                                              ; $79dc: $00
	nop                                              ; $79dd: $00
	nop                                              ; $79de: $00
	nop                                              ; $79df: $00
	nop                                              ; $79e0: $00
	nop                                              ; $79e1: $00
	nop                                              ; $79e2: $00
	nop                                              ; $79e3: $00
	nop                                              ; $79e4: $00
	nop                                              ; $79e5: $00
	nop                                              ; $79e6: $00
	nop                                              ; $79e7: $00
	nop                                              ; $79e8: $00
	nop                                              ; $79e9: $00
	nop                                              ; $79ea: $00
	nop                                              ; $79eb: $00
	nop                                              ; $79ec: $00
	nop                                              ; $79ed: $00
	nop                                              ; $79ee: $00
	nop                                              ; $79ef: $00
	nop                                              ; $79f0: $00
	nop                                              ; $79f1: $00
	nop                                              ; $79f2: $00
	nop                                              ; $79f3: $00
	nop                                              ; $79f4: $00
	nop                                              ; $79f5: $00
	nop                                              ; $79f6: $00
	nop                                              ; $79f7: $00
	nop                                              ; $79f8: $00
	nop                                              ; $79f9: $00
	nop                                              ; $79fa: $00
	nop                                              ; $79fb: $00
	nop                                              ; $79fc: $00
	nop                                              ; $79fd: $00
	nop                                              ; $79fe: $00
	nop                                              ; $79ff: $00
	nop                                              ; $7a00: $00
	nop                                              ; $7a01: $00
	nop                                              ; $7a02: $00
	nop                                              ; $7a03: $00
	nop                                              ; $7a04: $00
	nop                                              ; $7a05: $00
	nop                                              ; $7a06: $00
	nop                                              ; $7a07: $00
	nop                                              ; $7a08: $00
	nop                                              ; $7a09: $00
	nop                                              ; $7a0a: $00
	nop                                              ; $7a0b: $00
	nop                                              ; $7a0c: $00
	nop                                              ; $7a0d: $00
	nop                                              ; $7a0e: $00
	nop                                              ; $7a0f: $00
	nop                                              ; $7a10: $00
	nop                                              ; $7a11: $00
	nop                                              ; $7a12: $00
	nop                                              ; $7a13: $00
	nop                                              ; $7a14: $00
	nop                                              ; $7a15: $00
	nop                                              ; $7a16: $00
	nop                                              ; $7a17: $00
	nop                                              ; $7a18: $00
	nop                                              ; $7a19: $00
	nop                                              ; $7a1a: $00
	nop                                              ; $7a1b: $00
	nop                                              ; $7a1c: $00
	nop                                              ; $7a1d: $00
	nop                                              ; $7a1e: $00
	nop                                              ; $7a1f: $00
	nop                                              ; $7a20: $00
	nop                                              ; $7a21: $00
	nop                                              ; $7a22: $00
	nop                                              ; $7a23: $00
	nop                                              ; $7a24: $00
	nop                                              ; $7a25: $00
	nop                                              ; $7a26: $00
	nop                                              ; $7a27: $00
	nop                                              ; $7a28: $00
	nop                                              ; $7a29: $00
	nop                                              ; $7a2a: $00
	nop                                              ; $7a2b: $00
	nop                                              ; $7a2c: $00
	nop                                              ; $7a2d: $00
	nop                                              ; $7a2e: $00
	nop                                              ; $7a2f: $00
	nop                                              ; $7a30: $00
	nop                                              ; $7a31: $00
	nop                                              ; $7a32: $00
	nop                                              ; $7a33: $00
	nop                                              ; $7a34: $00
	nop                                              ; $7a35: $00
	nop                                              ; $7a36: $00
	nop                                              ; $7a37: $00
	nop                                              ; $7a38: $00
	nop                                              ; $7a39: $00
	nop                                              ; $7a3a: $00
	nop                                              ; $7a3b: $00
	nop                                              ; $7a3c: $00
	nop                                              ; $7a3d: $00
	nop                                              ; $7a3e: $00
	nop                                              ; $7a3f: $00
	nop                                              ; $7a40: $00
	nop                                              ; $7a41: $00

Jump_007_7a42:
	nop                                              ; $7a42: $00
	nop                                              ; $7a43: $00
	nop                                              ; $7a44: $00
	nop                                              ; $7a45: $00
	nop                                              ; $7a46: $00
	nop                                              ; $7a47: $00
	nop                                              ; $7a48: $00
	nop                                              ; $7a49: $00
	nop                                              ; $7a4a: $00
	nop                                              ; $7a4b: $00
	nop                                              ; $7a4c: $00
	nop                                              ; $7a4d: $00
	nop                                              ; $7a4e: $00
	nop                                              ; $7a4f: $00
	nop                                              ; $7a50: $00
	nop                                              ; $7a51: $00
	nop                                              ; $7a52: $00
	nop                                              ; $7a53: $00
	nop                                              ; $7a54: $00
	nop                                              ; $7a55: $00
	nop                                              ; $7a56: $00
	nop                                              ; $7a57: $00
	nop                                              ; $7a58: $00
	nop                                              ; $7a59: $00
	nop                                              ; $7a5a: $00
	nop                                              ; $7a5b: $00
	nop                                              ; $7a5c: $00
	nop                                              ; $7a5d: $00
	nop                                              ; $7a5e: $00
	nop                                              ; $7a5f: $00
	nop                                              ; $7a60: $00
	nop                                              ; $7a61: $00
	nop                                              ; $7a62: $00
	nop                                              ; $7a63: $00
	nop                                              ; $7a64: $00
	nop                                              ; $7a65: $00
	nop                                              ; $7a66: $00
	nop                                              ; $7a67: $00
	nop                                              ; $7a68: $00
	nop                                              ; $7a69: $00
	nop                                              ; $7a6a: $00
	nop                                              ; $7a6b: $00
	nop                                              ; $7a6c: $00
	nop                                              ; $7a6d: $00
	nop                                              ; $7a6e: $00
	nop                                              ; $7a6f: $00
	nop                                              ; $7a70: $00
	nop                                              ; $7a71: $00
	nop                                              ; $7a72: $00
	nop                                              ; $7a73: $00
	nop                                              ; $7a74: $00
	nop                                              ; $7a75: $00
	nop                                              ; $7a76: $00
	nop                                              ; $7a77: $00
	nop                                              ; $7a78: $00
	nop                                              ; $7a79: $00
	nop                                              ; $7a7a: $00
	nop                                              ; $7a7b: $00
	nop                                              ; $7a7c: $00
	nop                                              ; $7a7d: $00
	nop                                              ; $7a7e: $00
	nop                                              ; $7a7f: $00
	nop                                              ; $7a80: $00
	nop                                              ; $7a81: $00
	nop                                              ; $7a82: $00
	nop                                              ; $7a83: $00
	nop                                              ; $7a84: $00
	nop                                              ; $7a85: $00
	nop                                              ; $7a86: $00
	nop                                              ; $7a87: $00
	nop                                              ; $7a88: $00
	nop                                              ; $7a89: $00
	nop                                              ; $7a8a: $00
	nop                                              ; $7a8b: $00
	nop                                              ; $7a8c: $00
	nop                                              ; $7a8d: $00
	nop                                              ; $7a8e: $00
	nop                                              ; $7a8f: $00
	nop                                              ; $7a90: $00
	nop                                              ; $7a91: $00
	nop                                              ; $7a92: $00
	nop                                              ; $7a93: $00
	nop                                              ; $7a94: $00
	nop                                              ; $7a95: $00
	nop                                              ; $7a96: $00
	nop                                              ; $7a97: $00
	nop                                              ; $7a98: $00
	nop                                              ; $7a99: $00
	nop                                              ; $7a9a: $00
	nop                                              ; $7a9b: $00
	nop                                              ; $7a9c: $00
	nop                                              ; $7a9d: $00
	nop                                              ; $7a9e: $00
	nop                                              ; $7a9f: $00
	nop                                              ; $7aa0: $00
	nop                                              ; $7aa1: $00
	nop                                              ; $7aa2: $00
	nop                                              ; $7aa3: $00
	nop                                              ; $7aa4: $00
	nop                                              ; $7aa5: $00
	nop                                              ; $7aa6: $00
	nop                                              ; $7aa7: $00
	nop                                              ; $7aa8: $00
	nop                                              ; $7aa9: $00
	nop                                              ; $7aaa: $00
	nop                                              ; $7aab: $00
	nop                                              ; $7aac: $00
	nop                                              ; $7aad: $00
	nop                                              ; $7aae: $00
	nop                                              ; $7aaf: $00
	nop                                              ; $7ab0: $00
	nop                                              ; $7ab1: $00
	nop                                              ; $7ab2: $00
	nop                                              ; $7ab3: $00
	nop                                              ; $7ab4: $00
	nop                                              ; $7ab5: $00
	nop                                              ; $7ab6: $00
	nop                                              ; $7ab7: $00
	nop                                              ; $7ab8: $00
	nop                                              ; $7ab9: $00
	nop                                              ; $7aba: $00
	nop                                              ; $7abb: $00
	nop                                              ; $7abc: $00
	nop                                              ; $7abd: $00
	nop                                              ; $7abe: $00
	nop                                              ; $7abf: $00
	nop                                              ; $7ac0: $00
	nop                                              ; $7ac1: $00
	nop                                              ; $7ac2: $00
	nop                                              ; $7ac3: $00
	nop                                              ; $7ac4: $00
	nop                                              ; $7ac5: $00
	nop                                              ; $7ac6: $00
	nop                                              ; $7ac7: $00
	nop                                              ; $7ac8: $00
	nop                                              ; $7ac9: $00
	nop                                              ; $7aca: $00
	nop                                              ; $7acb: $00
	nop                                              ; $7acc: $00
	nop                                              ; $7acd: $00
	nop                                              ; $7ace: $00
	nop                                              ; $7acf: $00
	nop                                              ; $7ad0: $00
	nop                                              ; $7ad1: $00
	nop                                              ; $7ad2: $00
	nop                                              ; $7ad3: $00
	nop                                              ; $7ad4: $00
	nop                                              ; $7ad5: $00
	nop                                              ; $7ad6: $00
	nop                                              ; $7ad7: $00
	nop                                              ; $7ad8: $00
	nop                                              ; $7ad9: $00
	nop                                              ; $7ada: $00
	nop                                              ; $7adb: $00
	nop                                              ; $7adc: $00
	nop                                              ; $7add: $00
	nop                                              ; $7ade: $00
	nop                                              ; $7adf: $00
	nop                                              ; $7ae0: $00
	nop                                              ; $7ae1: $00
	nop                                              ; $7ae2: $00
	nop                                              ; $7ae3: $00
	nop                                              ; $7ae4: $00
	nop                                              ; $7ae5: $00
	nop                                              ; $7ae6: $00
	nop                                              ; $7ae7: $00
	nop                                              ; $7ae8: $00
	nop                                              ; $7ae9: $00
	nop                                              ; $7aea: $00
	nop                                              ; $7aeb: $00
	nop                                              ; $7aec: $00
	nop                                              ; $7aed: $00
	nop                                              ; $7aee: $00
	nop                                              ; $7aef: $00
	nop                                              ; $7af0: $00
	nop                                              ; $7af1: $00
	nop                                              ; $7af2: $00
	nop                                              ; $7af3: $00
	nop                                              ; $7af4: $00
	nop                                              ; $7af5: $00
	nop                                              ; $7af6: $00
	nop                                              ; $7af7: $00
	nop                                              ; $7af8: $00
	nop                                              ; $7af9: $00
	nop                                              ; $7afa: $00
	nop                                              ; $7afb: $00
	nop                                              ; $7afc: $00
	nop                                              ; $7afd: $00
	nop                                              ; $7afe: $00
	nop                                              ; $7aff: $00
	nop                                              ; $7b00: $00
	nop                                              ; $7b01: $00
	nop                                              ; $7b02: $00
	nop                                              ; $7b03: $00
	nop                                              ; $7b04: $00
	nop                                              ; $7b05: $00
	nop                                              ; $7b06: $00
	nop                                              ; $7b07: $00
	nop                                              ; $7b08: $00
	nop                                              ; $7b09: $00
	nop                                              ; $7b0a: $00
	nop                                              ; $7b0b: $00
	nop                                              ; $7b0c: $00
	nop                                              ; $7b0d: $00
	nop                                              ; $7b0e: $00
	nop                                              ; $7b0f: $00
	nop                                              ; $7b10: $00
	nop                                              ; $7b11: $00
	nop                                              ; $7b12: $00
	nop                                              ; $7b13: $00
	nop                                              ; $7b14: $00
	nop                                              ; $7b15: $00
	nop                                              ; $7b16: $00
	nop                                              ; $7b17: $00
	nop                                              ; $7b18: $00
	nop                                              ; $7b19: $00
	nop                                              ; $7b1a: $00
	nop                                              ; $7b1b: $00
	nop                                              ; $7b1c: $00
	nop                                              ; $7b1d: $00
	nop                                              ; $7b1e: $00
	nop                                              ; $7b1f: $00
	nop                                              ; $7b20: $00
	nop                                              ; $7b21: $00
	nop                                              ; $7b22: $00
	nop                                              ; $7b23: $00
	nop                                              ; $7b24: $00
	nop                                              ; $7b25: $00
	nop                                              ; $7b26: $00
	nop                                              ; $7b27: $00
	nop                                              ; $7b28: $00
	nop                                              ; $7b29: $00
	nop                                              ; $7b2a: $00
	nop                                              ; $7b2b: $00
	nop                                              ; $7b2c: $00
	nop                                              ; $7b2d: $00
	nop                                              ; $7b2e: $00
	nop                                              ; $7b2f: $00
	nop                                              ; $7b30: $00
	nop                                              ; $7b31: $00
	nop                                              ; $7b32: $00
	nop                                              ; $7b33: $00
	nop                                              ; $7b34: $00
	nop                                              ; $7b35: $00
	nop                                              ; $7b36: $00
	nop                                              ; $7b37: $00
	nop                                              ; $7b38: $00
	nop                                              ; $7b39: $00
	nop                                              ; $7b3a: $00
	nop                                              ; $7b3b: $00
	nop                                              ; $7b3c: $00
	nop                                              ; $7b3d: $00
	nop                                              ; $7b3e: $00
	nop                                              ; $7b3f: $00
	nop                                              ; $7b40: $00
	nop                                              ; $7b41: $00
	nop                                              ; $7b42: $00
	nop                                              ; $7b43: $00
	nop                                              ; $7b44: $00
	nop                                              ; $7b45: $00
	nop                                              ; $7b46: $00
	nop                                              ; $7b47: $00
	nop                                              ; $7b48: $00
	nop                                              ; $7b49: $00
	nop                                              ; $7b4a: $00
	nop                                              ; $7b4b: $00
	nop                                              ; $7b4c: $00
	nop                                              ; $7b4d: $00
	nop                                              ; $7b4e: $00
	nop                                              ; $7b4f: $00
	nop                                              ; $7b50: $00
	nop                                              ; $7b51: $00
	nop                                              ; $7b52: $00
	nop                                              ; $7b53: $00
	nop                                              ; $7b54: $00
	nop                                              ; $7b55: $00
	nop                                              ; $7b56: $00
	nop                                              ; $7b57: $00
	nop                                              ; $7b58: $00
	nop                                              ; $7b59: $00
	nop                                              ; $7b5a: $00
	nop                                              ; $7b5b: $00
	nop                                              ; $7b5c: $00
	nop                                              ; $7b5d: $00
	nop                                              ; $7b5e: $00
	nop                                              ; $7b5f: $00
	nop                                              ; $7b60: $00
	nop                                              ; $7b61: $00
	nop                                              ; $7b62: $00
	nop                                              ; $7b63: $00
	nop                                              ; $7b64: $00
	nop                                              ; $7b65: $00
	nop                                              ; $7b66: $00
	nop                                              ; $7b67: $00
	nop                                              ; $7b68: $00
	nop                                              ; $7b69: $00
	nop                                              ; $7b6a: $00
	nop                                              ; $7b6b: $00
	nop                                              ; $7b6c: $00
	nop                                              ; $7b6d: $00
	nop                                              ; $7b6e: $00
	nop                                              ; $7b6f: $00
	nop                                              ; $7b70: $00
	nop                                              ; $7b71: $00
	nop                                              ; $7b72: $00
	nop                                              ; $7b73: $00
	nop                                              ; $7b74: $00
	nop                                              ; $7b75: $00
	nop                                              ; $7b76: $00
	nop                                              ; $7b77: $00
	nop                                              ; $7b78: $00
	nop                                              ; $7b79: $00
	nop                                              ; $7b7a: $00
	nop                                              ; $7b7b: $00
	nop                                              ; $7b7c: $00
	nop                                              ; $7b7d: $00
	nop                                              ; $7b7e: $00
	nop                                              ; $7b7f: $00
	nop                                              ; $7b80: $00
	nop                                              ; $7b81: $00
	nop                                              ; $7b82: $00
	nop                                              ; $7b83: $00
	nop                                              ; $7b84: $00
	nop                                              ; $7b85: $00
	nop                                              ; $7b86: $00
	nop                                              ; $7b87: $00
	nop                                              ; $7b88: $00
	nop                                              ; $7b89: $00
	nop                                              ; $7b8a: $00
	nop                                              ; $7b8b: $00
	nop                                              ; $7b8c: $00
	nop                                              ; $7b8d: $00
	nop                                              ; $7b8e: $00
	nop                                              ; $7b8f: $00
	nop                                              ; $7b90: $00
	nop                                              ; $7b91: $00
	nop                                              ; $7b92: $00
	nop                                              ; $7b93: $00
	nop                                              ; $7b94: $00
	nop                                              ; $7b95: $00
	nop                                              ; $7b96: $00
	nop                                              ; $7b97: $00
	nop                                              ; $7b98: $00
	nop                                              ; $7b99: $00
	nop                                              ; $7b9a: $00
	nop                                              ; $7b9b: $00
	nop                                              ; $7b9c: $00
	nop                                              ; $7b9d: $00
	nop                                              ; $7b9e: $00
	nop                                              ; $7b9f: $00
	nop                                              ; $7ba0: $00
	nop                                              ; $7ba1: $00
	nop                                              ; $7ba2: $00
	nop                                              ; $7ba3: $00
	nop                                              ; $7ba4: $00
	nop                                              ; $7ba5: $00
	nop                                              ; $7ba6: $00
	nop                                              ; $7ba7: $00
	nop                                              ; $7ba8: $00
	nop                                              ; $7ba9: $00
	nop                                              ; $7baa: $00
	nop                                              ; $7bab: $00
	nop                                              ; $7bac: $00
	nop                                              ; $7bad: $00
	nop                                              ; $7bae: $00
	nop                                              ; $7baf: $00
	nop                                              ; $7bb0: $00
	nop                                              ; $7bb1: $00
	nop                                              ; $7bb2: $00
	nop                                              ; $7bb3: $00
	nop                                              ; $7bb4: $00
	nop                                              ; $7bb5: $00
	nop                                              ; $7bb6: $00
	nop                                              ; $7bb7: $00
	nop                                              ; $7bb8: $00
	nop                                              ; $7bb9: $00
	nop                                              ; $7bba: $00
	nop                                              ; $7bbb: $00
	nop                                              ; $7bbc: $00
	nop                                              ; $7bbd: $00
	nop                                              ; $7bbe: $00
	nop                                              ; $7bbf: $00
	nop                                              ; $7bc0: $00
	nop                                              ; $7bc1: $00
	nop                                              ; $7bc2: $00
	nop                                              ; $7bc3: $00
	nop                                              ; $7bc4: $00
	nop                                              ; $7bc5: $00
	nop                                              ; $7bc6: $00
	nop                                              ; $7bc7: $00
	nop                                              ; $7bc8: $00
	nop                                              ; $7bc9: $00
	nop                                              ; $7bca: $00
	nop                                              ; $7bcb: $00
	nop                                              ; $7bcc: $00
	nop                                              ; $7bcd: $00
	nop                                              ; $7bce: $00
	nop                                              ; $7bcf: $00
	nop                                              ; $7bd0: $00
	nop                                              ; $7bd1: $00
	nop                                              ; $7bd2: $00
	nop                                              ; $7bd3: $00
	nop                                              ; $7bd4: $00
	nop                                              ; $7bd5: $00
	nop                                              ; $7bd6: $00
	nop                                              ; $7bd7: $00
	nop                                              ; $7bd8: $00
	nop                                              ; $7bd9: $00
	nop                                              ; $7bda: $00
	nop                                              ; $7bdb: $00
	nop                                              ; $7bdc: $00
	nop                                              ; $7bdd: $00
	nop                                              ; $7bde: $00
	nop                                              ; $7bdf: $00
	nop                                              ; $7be0: $00
	nop                                              ; $7be1: $00
	nop                                              ; $7be2: $00
	nop                                              ; $7be3: $00
	nop                                              ; $7be4: $00
	nop                                              ; $7be5: $00
	nop                                              ; $7be6: $00
	nop                                              ; $7be7: $00
	nop                                              ; $7be8: $00
	nop                                              ; $7be9: $00
	nop                                              ; $7bea: $00
	nop                                              ; $7beb: $00
	nop                                              ; $7bec: $00
	nop                                              ; $7bed: $00
	nop                                              ; $7bee: $00
	nop                                              ; $7bef: $00
	nop                                              ; $7bf0: $00
	nop                                              ; $7bf1: $00
	nop                                              ; $7bf2: $00
	nop                                              ; $7bf3: $00
	nop                                              ; $7bf4: $00
	nop                                              ; $7bf5: $00
	nop                                              ; $7bf6: $00
	nop                                              ; $7bf7: $00
	nop                                              ; $7bf8: $00
	nop                                              ; $7bf9: $00
	nop                                              ; $7bfa: $00
	nop                                              ; $7bfb: $00
	nop                                              ; $7bfc: $00
	nop                                              ; $7bfd: $00
	nop                                              ; $7bfe: $00
	nop                                              ; $7bff: $00
	nop                                              ; $7c00: $00
	nop                                              ; $7c01: $00
	nop                                              ; $7c02: $00
	nop                                              ; $7c03: $00
	nop                                              ; $7c04: $00
	nop                                              ; $7c05: $00
	nop                                              ; $7c06: $00
	nop                                              ; $7c07: $00
	nop                                              ; $7c08: $00
	nop                                              ; $7c09: $00
	nop                                              ; $7c0a: $00
	nop                                              ; $7c0b: $00
	nop                                              ; $7c0c: $00
	nop                                              ; $7c0d: $00
	nop                                              ; $7c0e: $00
	nop                                              ; $7c0f: $00
	nop                                              ; $7c10: $00
	nop                                              ; $7c11: $00
	nop                                              ; $7c12: $00
	nop                                              ; $7c13: $00
	nop                                              ; $7c14: $00
	nop                                              ; $7c15: $00
	nop                                              ; $7c16: $00
	nop                                              ; $7c17: $00
	nop                                              ; $7c18: $00
	nop                                              ; $7c19: $00
	nop                                              ; $7c1a: $00
	nop                                              ; $7c1b: $00
	nop                                              ; $7c1c: $00
	nop                                              ; $7c1d: $00
	nop                                              ; $7c1e: $00
	nop                                              ; $7c1f: $00
	nop                                              ; $7c20: $00
	nop                                              ; $7c21: $00
	nop                                              ; $7c22: $00
	nop                                              ; $7c23: $00

Jump_007_7c24:
	nop                                              ; $7c24: $00
	nop                                              ; $7c25: $00
	nop                                              ; $7c26: $00
	nop                                              ; $7c27: $00
	nop                                              ; $7c28: $00
	nop                                              ; $7c29: $00
	nop                                              ; $7c2a: $00
	nop                                              ; $7c2b: $00
	nop                                              ; $7c2c: $00
	nop                                              ; $7c2d: $00
	nop                                              ; $7c2e: $00
	nop                                              ; $7c2f: $00
	nop                                              ; $7c30: $00
	nop                                              ; $7c31: $00
	nop                                              ; $7c32: $00
	nop                                              ; $7c33: $00

Jump_007_7c34:
	nop                                              ; $7c34: $00
	nop                                              ; $7c35: $00
	nop                                              ; $7c36: $00
	nop                                              ; $7c37: $00
	nop                                              ; $7c38: $00
	nop                                              ; $7c39: $00
	nop                                              ; $7c3a: $00
	nop                                              ; $7c3b: $00
	nop                                              ; $7c3c: $00
	nop                                              ; $7c3d: $00
	nop                                              ; $7c3e: $00
	nop                                              ; $7c3f: $00
	nop                                              ; $7c40: $00
	nop                                              ; $7c41: $00
	nop                                              ; $7c42: $00
	nop                                              ; $7c43: $00
	nop                                              ; $7c44: $00
	nop                                              ; $7c45: $00
	nop                                              ; $7c46: $00
	nop                                              ; $7c47: $00
	nop                                              ; $7c48: $00
	nop                                              ; $7c49: $00
	nop                                              ; $7c4a: $00
	nop                                              ; $7c4b: $00
	nop                                              ; $7c4c: $00
	nop                                              ; $7c4d: $00
	nop                                              ; $7c4e: $00
	nop                                              ; $7c4f: $00
	nop                                              ; $7c50: $00
	nop                                              ; $7c51: $00
	nop                                              ; $7c52: $00
	nop                                              ; $7c53: $00
	nop                                              ; $7c54: $00
	nop                                              ; $7c55: $00
	nop                                              ; $7c56: $00
	nop                                              ; $7c57: $00
	nop                                              ; $7c58: $00
	nop                                              ; $7c59: $00
	nop                                              ; $7c5a: $00
	nop                                              ; $7c5b: $00
	nop                                              ; $7c5c: $00
	nop                                              ; $7c5d: $00
	nop                                              ; $7c5e: $00
	nop                                              ; $7c5f: $00
	nop                                              ; $7c60: $00
	nop                                              ; $7c61: $00
	nop                                              ; $7c62: $00
	nop                                              ; $7c63: $00
	nop                                              ; $7c64: $00
	nop                                              ; $7c65: $00
	nop                                              ; $7c66: $00
	nop                                              ; $7c67: $00
	nop                                              ; $7c68: $00
	nop                                              ; $7c69: $00
	nop                                              ; $7c6a: $00
	nop                                              ; $7c6b: $00
	nop                                              ; $7c6c: $00
	nop                                              ; $7c6d: $00
	nop                                              ; $7c6e: $00
	nop                                              ; $7c6f: $00
	nop                                              ; $7c70: $00
	nop                                              ; $7c71: $00
	nop                                              ; $7c72: $00
	nop                                              ; $7c73: $00
	nop                                              ; $7c74: $00
	nop                                              ; $7c75: $00
	nop                                              ; $7c76: $00
	nop                                              ; $7c77: $00
	nop                                              ; $7c78: $00
	nop                                              ; $7c79: $00
	nop                                              ; $7c7a: $00
	nop                                              ; $7c7b: $00
	nop                                              ; $7c7c: $00
	nop                                              ; $7c7d: $00
	nop                                              ; $7c7e: $00
	nop                                              ; $7c7f: $00
	nop                                              ; $7c80: $00
	nop                                              ; $7c81: $00
	nop                                              ; $7c82: $00
	nop                                              ; $7c83: $00
	nop                                              ; $7c84: $00
	nop                                              ; $7c85: $00
	nop                                              ; $7c86: $00
	nop                                              ; $7c87: $00
	nop                                              ; $7c88: $00
	nop                                              ; $7c89: $00
	nop                                              ; $7c8a: $00
	nop                                              ; $7c8b: $00
	nop                                              ; $7c8c: $00
	nop                                              ; $7c8d: $00
	nop                                              ; $7c8e: $00
	nop                                              ; $7c8f: $00
	nop                                              ; $7c90: $00
	nop                                              ; $7c91: $00
	nop                                              ; $7c92: $00
	nop                                              ; $7c93: $00
	nop                                              ; $7c94: $00
	nop                                              ; $7c95: $00
	nop                                              ; $7c96: $00
	nop                                              ; $7c97: $00
	nop                                              ; $7c98: $00
	nop                                              ; $7c99: $00
	nop                                              ; $7c9a: $00
	nop                                              ; $7c9b: $00
	nop                                              ; $7c9c: $00
	nop                                              ; $7c9d: $00
	nop                                              ; $7c9e: $00
	nop                                              ; $7c9f: $00
	nop                                              ; $7ca0: $00
	nop                                              ; $7ca1: $00
	nop                                              ; $7ca2: $00
	nop                                              ; $7ca3: $00
	nop                                              ; $7ca4: $00
	nop                                              ; $7ca5: $00
	nop                                              ; $7ca6: $00
	nop                                              ; $7ca7: $00
	nop                                              ; $7ca8: $00
	nop                                              ; $7ca9: $00
	nop                                              ; $7caa: $00
	nop                                              ; $7cab: $00
	nop                                              ; $7cac: $00
	nop                                              ; $7cad: $00
	nop                                              ; $7cae: $00
	nop                                              ; $7caf: $00
	nop                                              ; $7cb0: $00
	nop                                              ; $7cb1: $00
	nop                                              ; $7cb2: $00
	nop                                              ; $7cb3: $00
	nop                                              ; $7cb4: $00
	nop                                              ; $7cb5: $00
	nop                                              ; $7cb6: $00
	nop                                              ; $7cb7: $00
	nop                                              ; $7cb8: $00
	nop                                              ; $7cb9: $00
	nop                                              ; $7cba: $00
	nop                                              ; $7cbb: $00
	nop                                              ; $7cbc: $00
	nop                                              ; $7cbd: $00
	nop                                              ; $7cbe: $00
	nop                                              ; $7cbf: $00
	nop                                              ; $7cc0: $00
	nop                                              ; $7cc1: $00
	nop                                              ; $7cc2: $00
	nop                                              ; $7cc3: $00
	nop                                              ; $7cc4: $00
	nop                                              ; $7cc5: $00
	nop                                              ; $7cc6: $00
	nop                                              ; $7cc7: $00
	nop                                              ; $7cc8: $00
	nop                                              ; $7cc9: $00
	nop                                              ; $7cca: $00
	nop                                              ; $7ccb: $00
	nop                                              ; $7ccc: $00
	nop                                              ; $7ccd: $00
	nop                                              ; $7cce: $00
	nop                                              ; $7ccf: $00
	nop                                              ; $7cd0: $00
	nop                                              ; $7cd1: $00
	nop                                              ; $7cd2: $00
	nop                                              ; $7cd3: $00
	nop                                              ; $7cd4: $00
	nop                                              ; $7cd5: $00
	nop                                              ; $7cd6: $00
	nop                                              ; $7cd7: $00
	nop                                              ; $7cd8: $00
	nop                                              ; $7cd9: $00
	nop                                              ; $7cda: $00
	nop                                              ; $7cdb: $00
	nop                                              ; $7cdc: $00
	nop                                              ; $7cdd: $00
	nop                                              ; $7cde: $00
	nop                                              ; $7cdf: $00
	nop                                              ; $7ce0: $00
	nop                                              ; $7ce1: $00
	nop                                              ; $7ce2: $00
	nop                                              ; $7ce3: $00
	nop                                              ; $7ce4: $00
	nop                                              ; $7ce5: $00
	nop                                              ; $7ce6: $00
	nop                                              ; $7ce7: $00
	nop                                              ; $7ce8: $00
	nop                                              ; $7ce9: $00
	nop                                              ; $7cea: $00
	nop                                              ; $7ceb: $00
	nop                                              ; $7cec: $00
	nop                                              ; $7ced: $00
	nop                                              ; $7cee: $00
	nop                                              ; $7cef: $00
	nop                                              ; $7cf0: $00
	nop                                              ; $7cf1: $00
	nop                                              ; $7cf2: $00
	nop                                              ; $7cf3: $00
	nop                                              ; $7cf4: $00
	nop                                              ; $7cf5: $00
	nop                                              ; $7cf6: $00
	nop                                              ; $7cf7: $00
	nop                                              ; $7cf8: $00
	nop                                              ; $7cf9: $00
	nop                                              ; $7cfa: $00
	nop                                              ; $7cfb: $00
	nop                                              ; $7cfc: $00
	nop                                              ; $7cfd: $00
	nop                                              ; $7cfe: $00
	nop                                              ; $7cff: $00
	nop                                              ; $7d00: $00
	nop                                              ; $7d01: $00
	nop                                              ; $7d02: $00
	nop                                              ; $7d03: $00
	nop                                              ; $7d04: $00
	nop                                              ; $7d05: $00
	nop                                              ; $7d06: $00
	nop                                              ; $7d07: $00
	nop                                              ; $7d08: $00
	nop                                              ; $7d09: $00
	nop                                              ; $7d0a: $00
	nop                                              ; $7d0b: $00
	nop                                              ; $7d0c: $00
	nop                                              ; $7d0d: $00
	nop                                              ; $7d0e: $00
	nop                                              ; $7d0f: $00
	nop                                              ; $7d10: $00
	nop                                              ; $7d11: $00
	nop                                              ; $7d12: $00
	nop                                              ; $7d13: $00
	nop                                              ; $7d14: $00
	nop                                              ; $7d15: $00
	nop                                              ; $7d16: $00
	nop                                              ; $7d17: $00
	nop                                              ; $7d18: $00
	nop                                              ; $7d19: $00
	nop                                              ; $7d1a: $00
	nop                                              ; $7d1b: $00
	nop                                              ; $7d1c: $00
	nop                                              ; $7d1d: $00
	nop                                              ; $7d1e: $00
	nop                                              ; $7d1f: $00
	nop                                              ; $7d20: $00
	nop                                              ; $7d21: $00
	nop                                              ; $7d22: $00
	nop                                              ; $7d23: $00
	nop                                              ; $7d24: $00
	nop                                              ; $7d25: $00
	nop                                              ; $7d26: $00
	nop                                              ; $7d27: $00
	nop                                              ; $7d28: $00
	nop                                              ; $7d29: $00
	nop                                              ; $7d2a: $00
	nop                                              ; $7d2b: $00
	nop                                              ; $7d2c: $00
	nop                                              ; $7d2d: $00
	nop                                              ; $7d2e: $00
	nop                                              ; $7d2f: $00
	nop                                              ; $7d30: $00
	nop                                              ; $7d31: $00
	nop                                              ; $7d32: $00
	nop                                              ; $7d33: $00
	nop                                              ; $7d34: $00
	nop                                              ; $7d35: $00
	nop                                              ; $7d36: $00
	nop                                              ; $7d37: $00
	nop                                              ; $7d38: $00
	nop                                              ; $7d39: $00
	nop                                              ; $7d3a: $00
	nop                                              ; $7d3b: $00
	nop                                              ; $7d3c: $00
	nop                                              ; $7d3d: $00
	nop                                              ; $7d3e: $00
	nop                                              ; $7d3f: $00
	nop                                              ; $7d40: $00
	nop                                              ; $7d41: $00
	nop                                              ; $7d42: $00
	nop                                              ; $7d43: $00
	nop                                              ; $7d44: $00
	nop                                              ; $7d45: $00
	nop                                              ; $7d46: $00
	nop                                              ; $7d47: $00
	nop                                              ; $7d48: $00
	nop                                              ; $7d49: $00
	nop                                              ; $7d4a: $00
	nop                                              ; $7d4b: $00
	nop                                              ; $7d4c: $00
	nop                                              ; $7d4d: $00
	nop                                              ; $7d4e: $00
	nop                                              ; $7d4f: $00
	nop                                              ; $7d50: $00
	nop                                              ; $7d51: $00
	nop                                              ; $7d52: $00
	nop                                              ; $7d53: $00
	nop                                              ; $7d54: $00
	nop                                              ; $7d55: $00
	nop                                              ; $7d56: $00
	nop                                              ; $7d57: $00
	nop                                              ; $7d58: $00
	nop                                              ; $7d59: $00
	nop                                              ; $7d5a: $00
	nop                                              ; $7d5b: $00
	nop                                              ; $7d5c: $00
	nop                                              ; $7d5d: $00
	nop                                              ; $7d5e: $00
	nop                                              ; $7d5f: $00
	nop                                              ; $7d60: $00
	nop                                              ; $7d61: $00
	nop                                              ; $7d62: $00
	nop                                              ; $7d63: $00
	nop                                              ; $7d64: $00
	nop                                              ; $7d65: $00
	nop                                              ; $7d66: $00
	nop                                              ; $7d67: $00
	nop                                              ; $7d68: $00
	nop                                              ; $7d69: $00
	nop                                              ; $7d6a: $00
	nop                                              ; $7d6b: $00
	nop                                              ; $7d6c: $00
	nop                                              ; $7d6d: $00
	nop                                              ; $7d6e: $00
	nop                                              ; $7d6f: $00
	nop                                              ; $7d70: $00
	nop                                              ; $7d71: $00
	nop                                              ; $7d72: $00
	nop                                              ; $7d73: $00
	nop                                              ; $7d74: $00
	nop                                              ; $7d75: $00
	nop                                              ; $7d76: $00
	nop                                              ; $7d77: $00
	nop                                              ; $7d78: $00
	nop                                              ; $7d79: $00
	nop                                              ; $7d7a: $00
	nop                                              ; $7d7b: $00
	nop                                              ; $7d7c: $00
	nop                                              ; $7d7d: $00
	nop                                              ; $7d7e: $00
	nop                                              ; $7d7f: $00
	nop                                              ; $7d80: $00
	nop                                              ; $7d81: $00
	nop                                              ; $7d82: $00
	nop                                              ; $7d83: $00
	nop                                              ; $7d84: $00
	nop                                              ; $7d85: $00
	nop                                              ; $7d86: $00
	nop                                              ; $7d87: $00
	nop                                              ; $7d88: $00
	nop                                              ; $7d89: $00
	nop                                              ; $7d8a: $00
	nop                                              ; $7d8b: $00
	nop                                              ; $7d8c: $00
	nop                                              ; $7d8d: $00
	nop                                              ; $7d8e: $00
	nop                                              ; $7d8f: $00
	nop                                              ; $7d90: $00
	nop                                              ; $7d91: $00
	nop                                              ; $7d92: $00
	nop                                              ; $7d93: $00
	nop                                              ; $7d94: $00
	nop                                              ; $7d95: $00
	nop                                              ; $7d96: $00
	nop                                              ; $7d97: $00
	nop                                              ; $7d98: $00
	nop                                              ; $7d99: $00
	nop                                              ; $7d9a: $00
	nop                                              ; $7d9b: $00
	nop                                              ; $7d9c: $00
	nop                                              ; $7d9d: $00
	nop                                              ; $7d9e: $00
	nop                                              ; $7d9f: $00
	nop                                              ; $7da0: $00
	nop                                              ; $7da1: $00
	nop                                              ; $7da2: $00
	nop                                              ; $7da3: $00
	nop                                              ; $7da4: $00
	nop                                              ; $7da5: $00
	nop                                              ; $7da6: $00
	nop                                              ; $7da7: $00
	nop                                              ; $7da8: $00
	nop                                              ; $7da9: $00
	nop                                              ; $7daa: $00
	nop                                              ; $7dab: $00
	nop                                              ; $7dac: $00
	nop                                              ; $7dad: $00
	nop                                              ; $7dae: $00
	nop                                              ; $7daf: $00
	nop                                              ; $7db0: $00
	nop                                              ; $7db1: $00
	nop                                              ; $7db2: $00
	nop                                              ; $7db3: $00
	nop                                              ; $7db4: $00
	nop                                              ; $7db5: $00
	nop                                              ; $7db6: $00
	nop                                              ; $7db7: $00
	nop                                              ; $7db8: $00
	nop                                              ; $7db9: $00
	nop                                              ; $7dba: $00
	nop                                              ; $7dbb: $00
	nop                                              ; $7dbc: $00
	nop                                              ; $7dbd: $00
	nop                                              ; $7dbe: $00
	nop                                              ; $7dbf: $00
	nop                                              ; $7dc0: $00
	nop                                              ; $7dc1: $00
	nop                                              ; $7dc2: $00
	nop                                              ; $7dc3: $00
	nop                                              ; $7dc4: $00
	nop                                              ; $7dc5: $00
	nop                                              ; $7dc6: $00
	nop                                              ; $7dc7: $00
	nop                                              ; $7dc8: $00
	nop                                              ; $7dc9: $00
	nop                                              ; $7dca: $00
	nop                                              ; $7dcb: $00
	nop                                              ; $7dcc: $00
	nop                                              ; $7dcd: $00
	nop                                              ; $7dce: $00
	nop                                              ; $7dcf: $00
	nop                                              ; $7dd0: $00
	nop                                              ; $7dd1: $00
	nop                                              ; $7dd2: $00
	nop                                              ; $7dd3: $00
	nop                                              ; $7dd4: $00
	nop                                              ; $7dd5: $00
	nop                                              ; $7dd6: $00
	nop                                              ; $7dd7: $00
	nop                                              ; $7dd8: $00
	nop                                              ; $7dd9: $00
	nop                                              ; $7dda: $00
	nop                                              ; $7ddb: $00
	nop                                              ; $7ddc: $00
	nop                                              ; $7ddd: $00
	nop                                              ; $7dde: $00
	nop                                              ; $7ddf: $00
	nop                                              ; $7de0: $00
	nop                                              ; $7de1: $00
	nop                                              ; $7de2: $00
	nop                                              ; $7de3: $00
	nop                                              ; $7de4: $00
	nop                                              ; $7de5: $00
	nop                                              ; $7de6: $00
	nop                                              ; $7de7: $00
	nop                                              ; $7de8: $00
	nop                                              ; $7de9: $00
	nop                                              ; $7dea: $00
	nop                                              ; $7deb: $00
	nop                                              ; $7dec: $00
	nop                                              ; $7ded: $00
	nop                                              ; $7dee: $00
	nop                                              ; $7def: $00
	nop                                              ; $7df0: $00
	nop                                              ; $7df1: $00
	nop                                              ; $7df2: $00
	nop                                              ; $7df3: $00
	nop                                              ; $7df4: $00
	nop                                              ; $7df5: $00
	nop                                              ; $7df6: $00
	nop                                              ; $7df7: $00
	nop                                              ; $7df8: $00
	nop                                              ; $7df9: $00
	nop                                              ; $7dfa: $00
	nop                                              ; $7dfb: $00
	nop                                              ; $7dfc: $00
	nop                                              ; $7dfd: $00
	nop                                              ; $7dfe: $00
	nop                                              ; $7dff: $00
	nop                                              ; $7e00: $00
	nop                                              ; $7e01: $00
	nop                                              ; $7e02: $00
	nop                                              ; $7e03: $00
	nop                                              ; $7e04: $00
	nop                                              ; $7e05: $00
	nop                                              ; $7e06: $00
	nop                                              ; $7e07: $00

Call_007_7e08:
	nop                                              ; $7e08: $00
	nop                                              ; $7e09: $00
	nop                                              ; $7e0a: $00
	nop                                              ; $7e0b: $00
	nop                                              ; $7e0c: $00
	nop                                              ; $7e0d: $00
	nop                                              ; $7e0e: $00
	nop                                              ; $7e0f: $00
	nop                                              ; $7e10: $00
	nop                                              ; $7e11: $00
	nop                                              ; $7e12: $00
	nop                                              ; $7e13: $00
	nop                                              ; $7e14: $00
	nop                                              ; $7e15: $00
	nop                                              ; $7e16: $00
	nop                                              ; $7e17: $00
	nop                                              ; $7e18: $00
	nop                                              ; $7e19: $00
	nop                                              ; $7e1a: $00
	nop                                              ; $7e1b: $00
	nop                                              ; $7e1c: $00
	nop                                              ; $7e1d: $00
	nop                                              ; $7e1e: $00
	nop                                              ; $7e1f: $00
	nop                                              ; $7e20: $00
	nop                                              ; $7e21: $00
	nop                                              ; $7e22: $00
	nop                                              ; $7e23: $00
	nop                                              ; $7e24: $00
	nop                                              ; $7e25: $00
	nop                                              ; $7e26: $00
	nop                                              ; $7e27: $00
	nop                                              ; $7e28: $00
	nop                                              ; $7e29: $00
	nop                                              ; $7e2a: $00
	nop                                              ; $7e2b: $00
	nop                                              ; $7e2c: $00
	nop                                              ; $7e2d: $00
	nop                                              ; $7e2e: $00
	nop                                              ; $7e2f: $00
	nop                                              ; $7e30: $00
	nop                                              ; $7e31: $00
	nop                                              ; $7e32: $00
	nop                                              ; $7e33: $00
	nop                                              ; $7e34: $00
	nop                                              ; $7e35: $00
	nop                                              ; $7e36: $00
	nop                                              ; $7e37: $00
	nop                                              ; $7e38: $00
	nop                                              ; $7e39: $00
	nop                                              ; $7e3a: $00
	nop                                              ; $7e3b: $00
	nop                                              ; $7e3c: $00
	nop                                              ; $7e3d: $00
	nop                                              ; $7e3e: $00
	nop                                              ; $7e3f: $00
	nop                                              ; $7e40: $00
	nop                                              ; $7e41: $00
	nop                                              ; $7e42: $00
	nop                                              ; $7e43: $00
	nop                                              ; $7e44: $00
	nop                                              ; $7e45: $00
	nop                                              ; $7e46: $00
	nop                                              ; $7e47: $00

Call_007_7e48:
	nop                                              ; $7e48: $00
	nop                                              ; $7e49: $00
	nop                                              ; $7e4a: $00
	nop                                              ; $7e4b: $00
	nop                                              ; $7e4c: $00
	nop                                              ; $7e4d: $00
	nop                                              ; $7e4e: $00
	nop                                              ; $7e4f: $00
	nop                                              ; $7e50: $00
	nop                                              ; $7e51: $00
	nop                                              ; $7e52: $00
	nop                                              ; $7e53: $00

Call_007_7e54:
	nop                                              ; $7e54: $00
	nop                                              ; $7e55: $00
	nop                                              ; $7e56: $00
	nop                                              ; $7e57: $00
	nop                                              ; $7e58: $00
	nop                                              ; $7e59: $00
	nop                                              ; $7e5a: $00
	nop                                              ; $7e5b: $00
	nop                                              ; $7e5c: $00
	nop                                              ; $7e5d: $00
	nop                                              ; $7e5e: $00
	nop                                              ; $7e5f: $00
	nop                                              ; $7e60: $00
	nop                                              ; $7e61: $00
	nop                                              ; $7e62: $00
	nop                                              ; $7e63: $00
	nop                                              ; $7e64: $00
	nop                                              ; $7e65: $00
	nop                                              ; $7e66: $00
	nop                                              ; $7e67: $00
	nop                                              ; $7e68: $00
	nop                                              ; $7e69: $00
	nop                                              ; $7e6a: $00
	nop                                              ; $7e6b: $00
	nop                                              ; $7e6c: $00
	nop                                              ; $7e6d: $00
	nop                                              ; $7e6e: $00
	nop                                              ; $7e6f: $00
	nop                                              ; $7e70: $00
	nop                                              ; $7e71: $00
	nop                                              ; $7e72: $00
	nop                                              ; $7e73: $00
	nop                                              ; $7e74: $00
	nop                                              ; $7e75: $00
	nop                                              ; $7e76: $00
	nop                                              ; $7e77: $00
	nop                                              ; $7e78: $00
	nop                                              ; $7e79: $00
	nop                                              ; $7e7a: $00
	nop                                              ; $7e7b: $00
	nop                                              ; $7e7c: $00
	nop                                              ; $7e7d: $00
	nop                                              ; $7e7e: $00
	nop                                              ; $7e7f: $00
	nop                                              ; $7e80: $00
	nop                                              ; $7e81: $00
	nop                                              ; $7e82: $00
	nop                                              ; $7e83: $00
	nop                                              ; $7e84: $00
	nop                                              ; $7e85: $00
	nop                                              ; $7e86: $00
	nop                                              ; $7e87: $00
	nop                                              ; $7e88: $00
	nop                                              ; $7e89: $00
	nop                                              ; $7e8a: $00
	nop                                              ; $7e8b: $00
	nop                                              ; $7e8c: $00
	nop                                              ; $7e8d: $00
	nop                                              ; $7e8e: $00
	nop                                              ; $7e8f: $00
	nop                                              ; $7e90: $00
	nop                                              ; $7e91: $00
	nop                                              ; $7e92: $00
	nop                                              ; $7e93: $00
	nop                                              ; $7e94: $00
	nop                                              ; $7e95: $00
	nop                                              ; $7e96: $00
	nop                                              ; $7e97: $00
	nop                                              ; $7e98: $00
	nop                                              ; $7e99: $00
	nop                                              ; $7e9a: $00
	nop                                              ; $7e9b: $00
	nop                                              ; $7e9c: $00
	nop                                              ; $7e9d: $00
	nop                                              ; $7e9e: $00
	nop                                              ; $7e9f: $00
	nop                                              ; $7ea0: $00
	nop                                              ; $7ea1: $00
	nop                                              ; $7ea2: $00
	nop                                              ; $7ea3: $00
	nop                                              ; $7ea4: $00
	nop                                              ; $7ea5: $00
	nop                                              ; $7ea6: $00
	nop                                              ; $7ea7: $00
	nop                                              ; $7ea8: $00
	nop                                              ; $7ea9: $00
	nop                                              ; $7eaa: $00
	nop                                              ; $7eab: $00
	nop                                              ; $7eac: $00
	nop                                              ; $7ead: $00
	nop                                              ; $7eae: $00
	nop                                              ; $7eaf: $00
	nop                                              ; $7eb0: $00
	nop                                              ; $7eb1: $00
	nop                                              ; $7eb2: $00
	nop                                              ; $7eb3: $00
	nop                                              ; $7eb4: $00
	nop                                              ; $7eb5: $00
	nop                                              ; $7eb6: $00
	nop                                              ; $7eb7: $00
	nop                                              ; $7eb8: $00
	nop                                              ; $7eb9: $00
	nop                                              ; $7eba: $00
	nop                                              ; $7ebb: $00
	nop                                              ; $7ebc: $00
	nop                                              ; $7ebd: $00
	nop                                              ; $7ebe: $00
	nop                                              ; $7ebf: $00
	nop                                              ; $7ec0: $00
	nop                                              ; $7ec1: $00
	nop                                              ; $7ec2: $00
	nop                                              ; $7ec3: $00
	nop                                              ; $7ec4: $00
	nop                                              ; $7ec5: $00
	nop                                              ; $7ec6: $00
	nop                                              ; $7ec7: $00
	nop                                              ; $7ec8: $00
	nop                                              ; $7ec9: $00
	nop                                              ; $7eca: $00
	nop                                              ; $7ecb: $00
	nop                                              ; $7ecc: $00
	nop                                              ; $7ecd: $00
	nop                                              ; $7ece: $00
	nop                                              ; $7ecf: $00
	nop                                              ; $7ed0: $00
	nop                                              ; $7ed1: $00
	nop                                              ; $7ed2: $00
	nop                                              ; $7ed3: $00
	nop                                              ; $7ed4: $00
	nop                                              ; $7ed5: $00
	nop                                              ; $7ed6: $00
	nop                                              ; $7ed7: $00
	nop                                              ; $7ed8: $00
	nop                                              ; $7ed9: $00
	nop                                              ; $7eda: $00
	nop                                              ; $7edb: $00
	nop                                              ; $7edc: $00
	nop                                              ; $7edd: $00
	nop                                              ; $7ede: $00
	nop                                              ; $7edf: $00
	nop                                              ; $7ee0: $00
	nop                                              ; $7ee1: $00
	nop                                              ; $7ee2: $00
	nop                                              ; $7ee3: $00
	nop                                              ; $7ee4: $00
	nop                                              ; $7ee5: $00
	nop                                              ; $7ee6: $00
	nop                                              ; $7ee7: $00
	nop                                              ; $7ee8: $00
	nop                                              ; $7ee9: $00
	nop                                              ; $7eea: $00
	nop                                              ; $7eeb: $00
	nop                                              ; $7eec: $00
	nop                                              ; $7eed: $00
	nop                                              ; $7eee: $00
	nop                                              ; $7eef: $00
	nop                                              ; $7ef0: $00
	nop                                              ; $7ef1: $00
	nop                                              ; $7ef2: $00
	nop                                              ; $7ef3: $00
	nop                                              ; $7ef4: $00
	nop                                              ; $7ef5: $00
	nop                                              ; $7ef6: $00
	nop                                              ; $7ef7: $00
	nop                                              ; $7ef8: $00
	nop                                              ; $7ef9: $00
	nop                                              ; $7efa: $00
	nop                                              ; $7efb: $00
	nop                                              ; $7efc: $00
	nop                                              ; $7efd: $00
	nop                                              ; $7efe: $00
	nop                                              ; $7eff: $00
	nop                                              ; $7f00: $00
	nop                                              ; $7f01: $00
	nop                                              ; $7f02: $00
	nop                                              ; $7f03: $00
	nop                                              ; $7f04: $00
	nop                                              ; $7f05: $00
	nop                                              ; $7f06: $00
	nop                                              ; $7f07: $00
	nop                                              ; $7f08: $00
	nop                                              ; $7f09: $00
	nop                                              ; $7f0a: $00
	nop                                              ; $7f0b: $00
	nop                                              ; $7f0c: $00
	nop                                              ; $7f0d: $00
	nop                                              ; $7f0e: $00
	nop                                              ; $7f0f: $00
	nop                                              ; $7f10: $00
	nop                                              ; $7f11: $00
	nop                                              ; $7f12: $00
	nop                                              ; $7f13: $00
	nop                                              ; $7f14: $00
	nop                                              ; $7f15: $00
	nop                                              ; $7f16: $00
	nop                                              ; $7f17: $00
	nop                                              ; $7f18: $00
	nop                                              ; $7f19: $00
	nop                                              ; $7f1a: $00
	nop                                              ; $7f1b: $00
	nop                                              ; $7f1c: $00
	nop                                              ; $7f1d: $00
	nop                                              ; $7f1e: $00
	nop                                              ; $7f1f: $00
	nop                                              ; $7f20: $00
	nop                                              ; $7f21: $00
	nop                                              ; $7f22: $00
	nop                                              ; $7f23: $00
	nop                                              ; $7f24: $00
	nop                                              ; $7f25: $00
	nop                                              ; $7f26: $00
	nop                                              ; $7f27: $00
	nop                                              ; $7f28: $00
	nop                                              ; $7f29: $00
	nop                                              ; $7f2a: $00
	nop                                              ; $7f2b: $00
	nop                                              ; $7f2c: $00
	nop                                              ; $7f2d: $00
	nop                                              ; $7f2e: $00
	nop                                              ; $7f2f: $00
	nop                                              ; $7f30: $00
	nop                                              ; $7f31: $00
	nop                                              ; $7f32: $00
	nop                                              ; $7f33: $00
	nop                                              ; $7f34: $00
	nop                                              ; $7f35: $00
	nop                                              ; $7f36: $00
	nop                                              ; $7f37: $00
	nop                                              ; $7f38: $00
	nop                                              ; $7f39: $00
	nop                                              ; $7f3a: $00
	nop                                              ; $7f3b: $00
	nop                                              ; $7f3c: $00
	nop                                              ; $7f3d: $00
	nop                                              ; $7f3e: $00
	nop                                              ; $7f3f: $00
	nop                                              ; $7f40: $00
	nop                                              ; $7f41: $00
	nop                                              ; $7f42: $00
	nop                                              ; $7f43: $00
	nop                                              ; $7f44: $00
	nop                                              ; $7f45: $00
	nop                                              ; $7f46: $00
	nop                                              ; $7f47: $00
	nop                                              ; $7f48: $00
	nop                                              ; $7f49: $00
	nop                                              ; $7f4a: $00
	nop                                              ; $7f4b: $00
	nop                                              ; $7f4c: $00
	nop                                              ; $7f4d: $00
	nop                                              ; $7f4e: $00
	nop                                              ; $7f4f: $00
	nop                                              ; $7f50: $00
	nop                                              ; $7f51: $00
	nop                                              ; $7f52: $00
	nop                                              ; $7f53: $00
	nop                                              ; $7f54: $00
	nop                                              ; $7f55: $00
	nop                                              ; $7f56: $00
	nop                                              ; $7f57: $00
	nop                                              ; $7f58: $00
	nop                                              ; $7f59: $00
	nop                                              ; $7f5a: $00
	nop                                              ; $7f5b: $00
	nop                                              ; $7f5c: $00
	nop                                              ; $7f5d: $00
	nop                                              ; $7f5e: $00
	nop                                              ; $7f5f: $00
	nop                                              ; $7f60: $00
	nop                                              ; $7f61: $00
	nop                                              ; $7f62: $00
	nop                                              ; $7f63: $00
	nop                                              ; $7f64: $00
	nop                                              ; $7f65: $00
	nop                                              ; $7f66: $00
	nop                                              ; $7f67: $00
	nop                                              ; $7f68: $00
	nop                                              ; $7f69: $00
	nop                                              ; $7f6a: $00
	nop                                              ; $7f6b: $00
	nop                                              ; $7f6c: $00
	nop                                              ; $7f6d: $00
	nop                                              ; $7f6e: $00
	nop                                              ; $7f6f: $00
	nop                                              ; $7f70: $00
	nop                                              ; $7f71: $00
	nop                                              ; $7f72: $00
	nop                                              ; $7f73: $00
	nop                                              ; $7f74: $00
	nop                                              ; $7f75: $00
	nop                                              ; $7f76: $00
	nop                                              ; $7f77: $00
	nop                                              ; $7f78: $00
	nop                                              ; $7f79: $00
	nop                                              ; $7f7a: $00
	nop                                              ; $7f7b: $00
	nop                                              ; $7f7c: $00
	nop                                              ; $7f7d: $00
	nop                                              ; $7f7e: $00
	nop                                              ; $7f7f: $00
	nop                                              ; $7f80: $00
	nop                                              ; $7f81: $00
	nop                                              ; $7f82: $00
	nop                                              ; $7f83: $00
	nop                                              ; $7f84: $00
	nop                                              ; $7f85: $00
	nop                                              ; $7f86: $00
	nop                                              ; $7f87: $00
	nop                                              ; $7f88: $00
	nop                                              ; $7f89: $00
	nop                                              ; $7f8a: $00
	nop                                              ; $7f8b: $00
	nop                                              ; $7f8c: $00
	nop                                              ; $7f8d: $00
	nop                                              ; $7f8e: $00
	nop                                              ; $7f8f: $00
	nop                                              ; $7f90: $00
	nop                                              ; $7f91: $00
	nop                                              ; $7f92: $00
	nop                                              ; $7f93: $00
	nop                                              ; $7f94: $00
	nop                                              ; $7f95: $00
	nop                                              ; $7f96: $00
	nop                                              ; $7f97: $00
	nop                                              ; $7f98: $00
	nop                                              ; $7f99: $00
	nop                                              ; $7f9a: $00
	nop                                              ; $7f9b: $00
	nop                                              ; $7f9c: $00
	nop                                              ; $7f9d: $00
	nop                                              ; $7f9e: $00
	nop                                              ; $7f9f: $00
	nop                                              ; $7fa0: $00
	nop                                              ; $7fa1: $00
	nop                                              ; $7fa2: $00
	nop                                              ; $7fa3: $00
	nop                                              ; $7fa4: $00
	nop                                              ; $7fa5: $00
	nop                                              ; $7fa6: $00
	nop                                              ; $7fa7: $00
	nop                                              ; $7fa8: $00
	nop                                              ; $7fa9: $00
	nop                                              ; $7faa: $00
	nop                                              ; $7fab: $00
	nop                                              ; $7fac: $00
	nop                                              ; $7fad: $00
	nop                                              ; $7fae: $00
	nop                                              ; $7faf: $00
	nop                                              ; $7fb0: $00
	nop                                              ; $7fb1: $00
	nop                                              ; $7fb2: $00
	nop                                              ; $7fb3: $00
	nop                                              ; $7fb4: $00
	nop                                              ; $7fb5: $00
	nop                                              ; $7fb6: $00
	nop                                              ; $7fb7: $00
	nop                                              ; $7fb8: $00
	nop                                              ; $7fb9: $00
	nop                                              ; $7fba: $00
	nop                                              ; $7fbb: $00
	nop                                              ; $7fbc: $00
	nop                                              ; $7fbd: $00
	nop                                              ; $7fbe: $00
	nop                                              ; $7fbf: $00
	nop                                              ; $7fc0: $00
	nop                                              ; $7fc1: $00
	nop                                              ; $7fc2: $00
	nop                                              ; $7fc3: $00
	nop                                              ; $7fc4: $00
	nop                                              ; $7fc5: $00
	nop                                              ; $7fc6: $00
	nop                                              ; $7fc7: $00
	nop                                              ; $7fc8: $00
	nop                                              ; $7fc9: $00
	nop                                              ; $7fca: $00
	nop                                              ; $7fcb: $00
	nop                                              ; $7fcc: $00
	nop                                              ; $7fcd: $00
	nop                                              ; $7fce: $00
	nop                                              ; $7fcf: $00
	nop                                              ; $7fd0: $00
	nop                                              ; $7fd1: $00
	nop                                              ; $7fd2: $00
	nop                                              ; $7fd3: $00
	nop                                              ; $7fd4: $00
	nop                                              ; $7fd5: $00
	nop                                              ; $7fd6: $00
	nop                                              ; $7fd7: $00
	nop                                              ; $7fd8: $00
	nop                                              ; $7fd9: $00
	nop                                              ; $7fda: $00
	nop                                              ; $7fdb: $00
	nop                                              ; $7fdc: $00
	nop                                              ; $7fdd: $00
	nop                                              ; $7fde: $00
	nop                                              ; $7fdf: $00
	nop                                              ; $7fe0: $00
	nop                                              ; $7fe1: $00
	nop                                              ; $7fe2: $00
	nop                                              ; $7fe3: $00
	nop                                              ; $7fe4: $00
	nop                                              ; $7fe5: $00
	nop                                              ; $7fe6: $00
	nop                                              ; $7fe7: $00
	nop                                              ; $7fe8: $00
	nop                                              ; $7fe9: $00
	nop                                              ; $7fea: $00
	nop                                              ; $7feb: $00
	nop                                              ; $7fec: $00
	nop                                              ; $7fed: $00
	nop                                              ; $7fee: $00
	nop                                              ; $7fef: $00
	nop                                              ; $7ff0: $00
	nop                                              ; $7ff1: $00
	nop                                              ; $7ff2: $00
	nop                                              ; $7ff3: $00
	nop                                              ; $7ff4: $00
	nop                                              ; $7ff5: $00
	nop                                              ; $7ff6: $00
	nop                                              ; $7ff7: $00
	nop                                              ; $7ff8: $00
	nop                                              ; $7ff9: $00
	nop                                              ; $7ffa: $00
	nop                                              ; $7ffb: $00
	nop                                              ; $7ffc: $00
	nop                                              ; $7ffd: $00
	nop                                              ; $7ffe: $00
	nop                                              ; $7fff: $00
