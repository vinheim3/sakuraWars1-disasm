; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0fe", ROMX[$4000], BANK[$fe]

	ld   b, b                                        ; $4000: $40
	nop                                              ; $4001: $00
	db   $f4                                         ; $4002: $f4
	ld   b, b                                        ; $4003: $40
	ld   h, b                                        ; $4004: $60
	ld   bc, $437e                                   ; $4005: $01 $7e $43
	add  b                                           ; $4008: $80
	ld   [bc], a                                     ; $4009: $02
	or   d                                           ; $400a: $b2
	ld   b, h                                        ; $400b: $44
	and  b                                           ; $400c: $a0
	inc  bc                                          ; $400d: $03
	ret  c                                           ; $400e: $d8

	ld   b, a                                        ; $400f: $47
	ld   b, b                                        ; $4010: $40
	nop                                              ; $4011: $00
	jp   z, $6048                                    ; $4012: $ca $48 $60

	ld   bc, $4ba6                                   ; $4015: $01 $a6 $4b
	add  b                                           ; $4018: $80
	ld   [bc], a                                     ; $4019: $02
	ld   a, h                                        ; $401a: $7c
	ld   c, [hl]                                     ; $401b: $4e
	and  b                                           ; $401c: $a0
	inc  bc                                          ; $401d: $03
	db   $e4                                         ; $401e: $e4
	ld   d, c                                        ; $401f: $51
	ld   b, b                                        ; $4020: $40
	nop                                              ; $4021: $00
	inc  c                                           ; $4022: $0c
	ld   d, l                                        ; $4023: $55
	ld   h, b                                        ; $4024: $60
	ld   bc, $565a                                   ; $4025: $01 $5a $56
	add  b                                           ; $4028: $80
	ld   [bc], a                                     ; $4029: $02
	ld   c, $58                                      ; $402a: $0e $58
	and  b                                           ; $402c: $a0
	inc  bc                                          ; $402d: $03
	add  sp, $58                                     ; $402e: $e8 $58
	ld   b, b                                        ; $4030: $40
	nop                                              ; $4031: $00
	inc  h                                           ; $4032: $24
	ld   e, d                                        ; $4033: $5a
	ld   h, b                                        ; $4034: $60
	ld   bc, $5c36                                   ; $4035: $01 $36 $5c
	add  b                                           ; $4038: $80
	ld   [bc], a                                     ; $4039: $02
	inc  d                                           ; $403a: $14
	ld   e, a                                        ; $403b: $5f
	and  b                                           ; $403c: $a0
	inc  bc                                          ; $403d: $03
	ld   h, b                                        ; $403e: $60
	ld   h, b                                        ; $403f: $60
	ld   b, b                                        ; $4040: $40
	nop                                              ; $4041: $00
	cp   [hl]                                        ; $4042: $be
	ld   h, c                                        ; $4043: $61
	ld   h, b                                        ; $4044: $60
	ld   bc, $65ce                                   ; $4045: $01 $ce $65
	add  b                                           ; $4048: $80
	ld   [bc], a                                     ; $4049: $02
	ld   b, $68                                      ; $404a: $06 $68
	and  b                                           ; $404c: $a0
	inc  bc                                          ; $404d: $03
	and  b                                           ; $404e: $a0
	ld   l, d                                        ; $404f: $6a
	ld   b, b                                        ; $4050: $40
	nop                                              ; $4051: $00
	ld   a, b                                        ; $4052: $78
	ld   l, e                                        ; $4053: $6b
	ld   h, b                                        ; $4054: $60
	ld   bc, $6b92                                   ; $4055: $01 $92 $6b
	add  b                                           ; $4058: $80
	ld   [bc], a                                     ; $4059: $02
	or   b                                           ; $405a: $b0
	ld   l, e                                        ; $405b: $6b
	and  b                                           ; $405c: $a0
	inc  bc                                          ; $405d: $03
	ret  z                                           ; $405e: $c8

	ld   l, e                                        ; $405f: $6b
	ld   b, b                                        ; $4060: $40
	nop                                              ; $4061: $00
	adc  $6b                                         ; $4062: $ce $6b
	ld   h, b                                        ; $4064: $60
	ld   bc, $6bea                                   ; $4065: $01 $ea $6b
	add  b                                           ; $4068: $80
	ld   [bc], a                                     ; $4069: $02
	ld   [$a06c], sp                                 ; $406a: $08 $6c $a0
	inc  bc                                          ; $406d: $03
	ld   [hl+], a                                    ; $406e: $22
	ld   l, h                                        ; $406f: $6c
	ld   b, b                                        ; $4070: $40
	nop                                              ; $4071: $00
	jr   z, jr_0fe_40e0                              ; $4072: $28 $6c

	ld   h, b                                        ; $4074: $60
	ld   bc, $6cba                                   ; $4075: $01 $ba $6c
	add  b                                           ; $4078: $80
	ld   [bc], a                                     ; $4079: $02
	ld   e, [hl]                                     ; $407a: $5e
	ld   l, l                                        ; $407b: $6d
	and  b                                           ; $407c: $a0
	inc  bc                                          ; $407d: $03
	sbc  [hl]                                        ; $407e: $9e
	ld   l, l                                        ; $407f: $6d
	ld   b, b                                        ; $4080: $40
	nop                                              ; $4081: $00
	ld   [hl], d                                     ; $4082: $72
	ld   l, a                                        ; $4083: $6f
	ld   h, b                                        ; $4084: $60
	ld   bc, $6fde                                   ; $4085: $01 $de $6f
	add  b                                           ; $4088: $80
	ld   [bc], a                                     ; $4089: $02
	ld   b, d                                        ; $408a: $42
	ld   [hl], b                                     ; $408b: $70
	and  b                                           ; $408c: $a0
	inc  bc                                          ; $408d: $03
	xor  [hl]                                        ; $408e: $ae
	ld   [hl], b                                     ; $408f: $70
	ld   b, b                                        ; $4090: $40
	nop                                              ; $4091: $00
	or   h                                           ; $4092: $b4
	ld   [hl], b                                     ; $4093: $70
	ld   h, b                                        ; $4094: $60
	ld   bc, $754c                                   ; $4095: $01 $4c $75
	add  b                                           ; $4098: $80
	ld   [bc], a                                     ; $4099: $02
	ld   e, $79                                      ; $409a: $1e $79
	and  b                                           ; $409c: $a0
	inc  bc                                          ; $409d: $03
	ld   [$007c], sp                                 ; $409e: $08 $7c $00
	inc  bc                                          ; $40a1: $03
	ld   h, h                                        ; $40a2: $64
	ld   a, h                                        ; $40a3: $7c
	nop                                              ; $40a4: $00
	inc  bc                                          ; $40a5: $03
	sub  b                                           ; $40a6: $90
	ld   a, h                                        ; $40a7: $7c
	nop                                              ; $40a8: $00
	inc  bc                                          ; $40a9: $03
	or   d                                           ; $40aa: $b2
	ld   a, h                                        ; $40ab: $7c
	nop                                              ; $40ac: $00
	inc  bc                                          ; $40ad: $03
	ret  c                                           ; $40ae: $d8

	ld   a, h                                        ; $40af: $7c
	nop                                              ; $40b0: $00
	inc  bc                                          ; $40b1: $03
	cp   $7c                                         ; $40b2: $fe $7c
	nop                                              ; $40b4: $00
	inc  bc                                          ; $40b5: $03
	inc  h                                           ; $40b6: $24
	ld   a, l                                        ; $40b7: $7d
	nop                                              ; $40b8: $00
	inc  bc                                          ; $40b9: $03
	sub  [hl]                                        ; $40ba: $96
	ld   a, l                                        ; $40bb: $7d
	nop                                              ; $40bc: $00
	nop                                              ; $40bd: $00
	ret  nz                                          ; $40be: $c0

	ld   a, l                                        ; $40bf: $7d
	nop                                              ; $40c0: $00
	inc  bc                                          ; $40c1: $03
	sbc  $7d                                         ; $40c2: $de $7d
	nop                                              ; $40c4: $00
	nop                                              ; $40c5: $00
	ld   a, [$007d]                                  ; $40c6: $fa $7d $00
	nop                                              ; $40c9: $00
	jr   nc, jr_0fe_414a                             ; $40ca: $30 $7e

	nop                                              ; $40cc: $00
	nop                                              ; $40cd: $00
	ld   e, h                                        ; $40ce: $5c
	ld   a, [hl]                                     ; $40cf: $7e
	nop                                              ; $40d0: $00
	inc  bc                                          ; $40d1: $03
	sbc  b                                           ; $40d2: $98
	ld   a, [hl]                                     ; $40d3: $7e
	nop                                              ; $40d4: $00
	inc  bc                                          ; $40d5: $03
	cp   d                                           ; $40d6: $ba
	ld   a, [hl]                                     ; $40d7: $7e
	nop                                              ; $40d8: $00
	nop                                              ; $40d9: $00
	ret  nc                                          ; $40da: $d0

	ld   a, [hl]                                     ; $40db: $7e
	nop                                              ; $40dc: $00
	nop                                              ; $40dd: $00
	xor  $7e                                         ; $40de: $ee $7e

jr_0fe_40e0:
	nop                                              ; $40e0: $00
	nop                                              ; $40e1: $00
	inc  c                                           ; $40e2: $0c
	ld   a, a                                        ; $40e3: $7f
	nop                                              ; $40e4: $00
	nop                                              ; $40e5: $00
	ld   l, $7f                                      ; $40e6: $2e $7f
	nop                                              ; $40e8: $00
	nop                                              ; $40e9: $00
	ld   [hl], b                                     ; $40ea: $70
	ld   a, a                                        ; $40eb: $7f
	nop                                              ; $40ec: $00
	nop                                              ; $40ed: $00
	or   d                                           ; $40ee: $b2
	ld   a, a                                        ; $40ef: $7f
	jr   nz, jr_0fe_40f4                             ; $40f0: $20 $02

	ret  nc                                          ; $40f2: $d0

	ld   a, a                                        ; $40f3: $7f

jr_0fe_40f4:
	ld   [$0900], sp                                 ; $40f4: $08 $00 $09
	nop                                              ; $40f7: $00
	and  d                                           ; $40f8: $a2
	ld   bc, $30c7                                   ; $40f9: $01 $c7 $30
	and  e                                           ; $40fc: $a3
	ld   d, $1f                                      ; $40fd: $16 $1f
	jr   c, @-$01                                    ; $40ff: $38 $fd

	di                                               ; $4101: $f3
	db   $fd                                         ; $4102: $fd
	ldh  a, [$1f]                                    ; $4103: $f0 $1f
	ld   [$09a0], sp                                 ; $4105: $08 $a0 $09
	dec  h                                           ; $4108: $25
	db   $10                                         ; $4109: $10
	dec  h                                           ; $410a: $25
	inc  b                                           ; $410b: $04
	and  b                                           ; $410c: $a0
	inc  bc                                          ; $410d: $03
	dec  h                                           ; $410e: $25
	inc  b                                           ; $410f: $04
	rra                                              ; $4110: $1f
	ld   [$09a0], sp                                 ; $4111: $08 $a0 $09
	dec  h                                           ; $4114: $25
	inc  b                                           ; $4115: $04
	and  b                                           ; $4116: $a0
	inc  bc                                          ; $4117: $03
	dec  h                                           ; $4118: $25
	inc  b                                           ; $4119: $04
	rra                                              ; $411a: $1f
	ld   [$09a0], sp                                 ; $411b: $08 $a0 $09
	dec  h                                           ; $411e: $25
	inc  b                                           ; $411f: $04
	and  b                                           ; $4120: $a0
	inc  bc                                          ; $4121: $03
	dec  h                                           ; $4122: $25
	inc  b                                           ; $4123: $04
	rra                                              ; $4124: $1f
	ld   [$09a0], sp                                 ; $4125: $08 $a0 $09
	inc  hl                                          ; $4128: $23
	db   $10                                         ; $4129: $10
	inc  hl                                          ; $412a: $23
	inc  b                                           ; $412b: $04
	and  b                                           ; $412c: $a0
	inc  bc                                          ; $412d: $03
	inc  hl                                          ; $412e: $23
	inc  b                                           ; $412f: $04
	rra                                              ; $4130: $1f
	ld   [$09a0], sp                                 ; $4131: $08 $a0 $09
	ld   hl, $a004                                   ; $4134: $21 $04 $a0
	inc  bc                                          ; $4137: $03
	ld   hl, $1f04                                   ; $4138: $21 $04 $1f
	ld   [$09a0], sp                                 ; $413b: $08 $a0 $09
	ld   hl, $a004                                   ; $413e: $21 $04 $a0
	inc  bc                                          ; $4141: $03
	ld   hl, $1f04                                   ; $4142: $21 $04 $1f
	ld   [$09a0], sp                                 ; $4145: $08 $a0 $09
	jr   nz, jr_0fe_415a                             ; $4148: $20 $10

jr_0fe_414a:
	jr   nz, jr_0fe_4150                             ; $414a: $20 $04

	and  b                                           ; $414c: $a0
	inc  bc                                          ; $414d: $03
	jr   nz, jr_0fe_4154                             ; $414e: $20 $04

jr_0fe_4150:
	rra                                              ; $4150: $1f
	ld   [$09a0], sp                                 ; $4151: $08 $a0 $09

jr_0fe_4154:
	jr   nz, jr_0fe_415a                             ; $4154: $20 $04

	and  b                                           ; $4156: $a0
	inc  bc                                          ; $4157: $03
	jr   nz, jr_0fe_415e                             ; $4158: $20 $04

jr_0fe_415a:
	rra                                              ; $415a: $1f
	ld   [$09a0], sp                                 ; $415b: $08 $a0 $09

jr_0fe_415e:
	jr   nz, jr_0fe_4164                             ; $415e: $20 $04

	and  b                                           ; $4160: $a0
	inc  bc                                          ; $4161: $03
	jr   nz, jr_0fe_4168                             ; $4162: $20 $04

jr_0fe_4164:
	rra                                              ; $4164: $1f
	ld   [$09a0], sp                                 ; $4165: $08 $a0 $09

jr_0fe_4168:
	jr   nz, jr_0fe_417a                             ; $4168: $20 $10

	jr   nz, jr_0fe_4170                             ; $416a: $20 $04

	and  b                                           ; $416c: $a0
	inc  bc                                          ; $416d: $03
	jr   nz, jr_0fe_4174                             ; $416e: $20 $04

jr_0fe_4170:
	rra                                              ; $4170: $1f
	ld   [$09a0], sp                                 ; $4171: $08 $a0 $09

jr_0fe_4174:
	jr   nz, jr_0fe_417a                             ; $4174: $20 $04

	and  b                                           ; $4176: $a0
	inc  bc                                          ; $4177: $03
	jr   nz, jr_0fe_417e                             ; $4178: $20 $04

jr_0fe_417a:
	rra                                              ; $417a: $1f
	ld   [$09a0], sp                                 ; $417b: $08 $a0 $09

jr_0fe_417e:
	jr   nz, jr_0fe_4184                             ; $417e: $20 $04

	and  b                                           ; $4180: $a0
	inc  bc                                          ; $4181: $03
	jr   nz, @+$06                                   ; $4182: $20 $04

jr_0fe_4184:
	or   e                                           ; $4184: $b3
	ldh  a, [$1f]                                    ; $4185: $f0 $1f
	ld   [$09a0], sp                                 ; $4187: $08 $a0 $09
	jr   nz, jr_0fe_419c                             ; $418a: $20 $10

	jr   nz, jr_0fe_4192                             ; $418c: $20 $04

	and  b                                           ; $418e: $a0
	inc  bc                                          ; $418f: $03
	jr   nz, jr_0fe_4196                             ; $4190: $20 $04

jr_0fe_4192:
	rra                                              ; $4192: $1f
	ld   [$09a0], sp                                 ; $4193: $08 $a0 $09

jr_0fe_4196:
	jr   nz, jr_0fe_419c                             ; $4196: $20 $04

	and  b                                           ; $4198: $a0
	inc  bc                                          ; $4199: $03
	jr   nz, jr_0fe_41a0                             ; $419a: $20 $04

jr_0fe_419c:
	rra                                              ; $419c: $1f
	ld   [$09a0], sp                                 ; $419d: $08 $a0 $09

jr_0fe_41a0:
	jr   nz, jr_0fe_41a6                             ; $41a0: $20 $04

	and  b                                           ; $41a2: $a0
	inc  bc                                          ; $41a3: $03
	jr   nz, jr_0fe_41aa                             ; $41a4: $20 $04

jr_0fe_41a6:
	rra                                              ; $41a6: $1f
	ld   [$09a0], sp                                 ; $41a7: $08 $a0 $09

jr_0fe_41aa:
	ld   hl, $2110                                   ; $41aa: $21 $10 $21
	inc  b                                           ; $41ad: $04
	and  b                                           ; $41ae: $a0
	inc  bc                                          ; $41af: $03
	ld   hl, $1f04                                   ; $41b0: $21 $04 $1f
	ld   [$09a0], sp                                 ; $41b3: $08 $a0 $09
	ld   hl, $a004                                   ; $41b6: $21 $04 $a0
	inc  bc                                          ; $41b9: $03
	ld   hl, $1f04                                   ; $41ba: $21 $04 $1f
	ld   [$09a0], sp                                 ; $41bd: $08 $a0 $09
	ld   hl, $a004                                   ; $41c0: $21 $04 $a0
	inc  bc                                          ; $41c3: $03
	ld   hl, $1f04                                   ; $41c4: $21 $04 $1f
	ld   [$09a0], sp                                 ; $41c7: $08 $a0 $09
	inc  hl                                          ; $41ca: $23
	db   $10                                         ; $41cb: $10
	inc  hl                                          ; $41cc: $23
	inc  b                                           ; $41cd: $04
	and  b                                           ; $41ce: $a0
	inc  bc                                          ; $41cf: $03
	inc  hl                                          ; $41d0: $23
	inc  b                                           ; $41d1: $04
	rra                                              ; $41d2: $1f
	ld   [$09a0], sp                                 ; $41d3: $08 $a0 $09
	ld   hl, $a004                                   ; $41d6: $21 $04 $a0
	inc  bc                                          ; $41d9: $03
	ld   hl, $1f04                                   ; $41da: $21 $04 $1f
	ld   [$09a0], sp                                 ; $41dd: $08 $a0 $09
	ld   hl, $a004                                   ; $41e0: $21 $04 $a0
	inc  bc                                          ; $41e3: $03
	ld   hl, $1f04                                   ; $41e4: $21 $04 $1f
	ld   [$09a0], sp                                 ; $41e7: $08 $a0 $09
	jr   nz, jr_0fe_41fc                             ; $41ea: $20 $10

	jr   nz, jr_0fe_41f2                             ; $41ec: $20 $04

	and  b                                           ; $41ee: $a0
	inc  bc                                          ; $41ef: $03
	jr   nz, jr_0fe_41f6                             ; $41f0: $20 $04

jr_0fe_41f2:
	rra                                              ; $41f2: $1f
	ld   [$09a0], sp                                 ; $41f3: $08 $a0 $09

jr_0fe_41f6:
	jr   nz, jr_0fe_41fc                             ; $41f6: $20 $04

	and  b                                           ; $41f8: $a0
	inc  bc                                          ; $41f9: $03
	jr   nz, jr_0fe_4200                             ; $41fa: $20 $04

jr_0fe_41fc:
	rra                                              ; $41fc: $1f
	ld   [$09a0], sp                                 ; $41fd: $08 $a0 $09

jr_0fe_4200:
	jr   nz, jr_0fe_4206                             ; $4200: $20 $04

	and  b                                           ; $4202: $a0
	inc  bc                                          ; $4203: $03
	jr   nz, jr_0fe_420a                             ; $4204: $20 $04

jr_0fe_4206:
	rra                                              ; $4206: $1f
	ld   [$09a0], sp                                 ; $4207: $08 $a0 $09

jr_0fe_420a:
	jr   nz, jr_0fe_421c                             ; $420a: $20 $10

	jr   nz, jr_0fe_4212                             ; $420c: $20 $04

	and  b                                           ; $420e: $a0
	inc  bc                                          ; $420f: $03
	jr   nz, jr_0fe_4216                             ; $4210: $20 $04

jr_0fe_4212:
	rra                                              ; $4212: $1f
	ld   [$09a0], sp                                 ; $4213: $08 $a0 $09

jr_0fe_4216:
	jr   nz, jr_0fe_421c                             ; $4216: $20 $04

	and  b                                           ; $4218: $a0
	inc  bc                                          ; $4219: $03
	jr   nz, jr_0fe_4220                             ; $421a: $20 $04

jr_0fe_421c:
	rra                                              ; $421c: $1f
	ld   [$09a0], sp                                 ; $421d: $08 $a0 $09

jr_0fe_4220:
	jr   nz, jr_0fe_4226                             ; $4220: $20 $04

	and  b                                           ; $4222: $a0
	inc  bc                                          ; $4223: $03
	jr   nz, jr_0fe_422a                             ; $4224: $20 $04

jr_0fe_4226:
	rra                                              ; $4226: $1f
	ld   [$09a0], sp                                 ; $4227: $08 $a0 $09

jr_0fe_422a:
	ld   a, [de]                                     ; $422a: $1a
	db   $10                                         ; $422b: $10
	ld   a, [de]                                     ; $422c: $1a
	inc  b                                           ; $422d: $04
	and  b                                           ; $422e: $a0
	inc  bc                                          ; $422f: $03
	ld   a, [de]                                     ; $4230: $1a
	inc  b                                           ; $4231: $04
	rra                                              ; $4232: $1f
	ld   [$09a0], sp                                 ; $4233: $08 $a0 $09
	ld   a, [de]                                     ; $4236: $1a
	inc  b                                           ; $4237: $04
	and  b                                           ; $4238: $a0
	inc  bc                                          ; $4239: $03
	ld   a, [de]                                     ; $423a: $1a
	inc  b                                           ; $423b: $04
	rra                                              ; $423c: $1f
	ld   [$09a0], sp                                 ; $423d: $08 $a0 $09
	ld   a, [de]                                     ; $4240: $1a
	inc  b                                           ; $4241: $04
	and  b                                           ; $4242: $a0
	inc  bc                                          ; $4243: $03
	ld   a, [de]                                     ; $4244: $1a
	inc  b                                           ; $4245: $04
	rra                                              ; $4246: $1f
	ld   [$09a0], sp                                 ; $4247: $08 $a0 $09
	ld   [hl+], a                                    ; $424a: $22
	db   $10                                         ; $424b: $10
	ld   [hl+], a                                    ; $424c: $22
	inc  b                                           ; $424d: $04
	and  b                                           ; $424e: $a0
	inc  bc                                          ; $424f: $03
	ld   [hl+], a                                    ; $4250: $22
	inc  b                                           ; $4251: $04
	rra                                              ; $4252: $1f
	ld   [$09a0], sp                                 ; $4253: $08 $a0 $09
	ld   [hl+], a                                    ; $4256: $22
	inc  b                                           ; $4257: $04
	and  b                                           ; $4258: $a0
	inc  bc                                          ; $4259: $03
	ld   [hl+], a                                    ; $425a: $22
	inc  b                                           ; $425b: $04
	rra                                              ; $425c: $1f
	ld   [$09a0], sp                                 ; $425d: $08 $a0 $09
	ld   [hl+], a                                    ; $4260: $22
	inc  b                                           ; $4261: $04
	and  b                                           ; $4262: $a0
	inc  bc                                          ; $4263: $03
	ld   [hl+], a                                    ; $4264: $22
	inc  b                                           ; $4265: $04
	rra                                              ; $4266: $1f
	ld   [$09a0], sp                                 ; $4267: $08 $a0 $09
	ld   [hl+], a                                    ; $426a: $22
	db   $10                                         ; $426b: $10
	ld   [hl+], a                                    ; $426c: $22
	inc  b                                           ; $426d: $04
	and  b                                           ; $426e: $a0
	inc  bc                                          ; $426f: $03
	ld   [hl+], a                                    ; $4270: $22
	inc  b                                           ; $4271: $04
	rra                                              ; $4272: $1f
	ld   [$09a0], sp                                 ; $4273: $08 $a0 $09
	ld   [hl+], a                                    ; $4276: $22
	inc  b                                           ; $4277: $04
	and  b                                           ; $4278: $a0
	inc  bc                                          ; $4279: $03
	ld   [hl+], a                                    ; $427a: $22
	inc  b                                           ; $427b: $04
	rra                                              ; $427c: $1f
	ld   [$09a0], sp                                 ; $427d: $08 $a0 $09
	ld   [hl+], a                                    ; $4280: $22
	inc  b                                           ; $4281: $04
	and  b                                           ; $4282: $a0
	inc  bc                                          ; $4283: $03
	ld   [hl+], a                                    ; $4284: $22
	inc  b                                           ; $4285: $04
	rra                                              ; $4286: $1f
	ld   [$09a0], sp                                 ; $4287: $08 $a0 $09
	ld   hl, $2110                                   ; $428a: $21 $10 $21
	inc  b                                           ; $428d: $04
	and  b                                           ; $428e: $a0
	inc  bc                                          ; $428f: $03
	ld   hl, $1f04                                   ; $4290: $21 $04 $1f
	ld   [$09a0], sp                                 ; $4293: $08 $a0 $09
	ld   hl, $a004                                   ; $4296: $21 $04 $a0
	inc  bc                                          ; $4299: $03
	ld   hl, $1f04                                   ; $429a: $21 $04 $1f
	ld   [$09a0], sp                                 ; $429d: $08 $a0 $09
	ld   hl, $a004                                   ; $42a0: $21 $04 $a0
	inc  bc                                          ; $42a3: $03
	ld   hl, $a004                                   ; $42a4: $21 $04 $a0
	add  hl, bc                                      ; $42a7: $09
	ld   a, [de]                                     ; $42a8: $1a
	ld   b, b                                        ; $42a9: $40
	rra                                              ; $42aa: $1f
	ld   [$1020], sp                                 ; $42ab: $08 $20 $10
	jr   nz, jr_0fe_42b4                             ; $42ae: $20 $04

	and  b                                           ; $42b0: $a0
	inc  bc                                          ; $42b1: $03
	jr   nz, jr_0fe_42b8                             ; $42b2: $20 $04

jr_0fe_42b4:
	rra                                              ; $42b4: $1f
	ld   [$09a0], sp                                 ; $42b5: $08 $a0 $09

jr_0fe_42b8:
	jr   nz, jr_0fe_42be                             ; $42b8: $20 $04

	and  b                                           ; $42ba: $a0
	inc  bc                                          ; $42bb: $03
	jr   nz, jr_0fe_42c2                             ; $42bc: $20 $04

jr_0fe_42be:
	rra                                              ; $42be: $1f
	ld   [$09a0], sp                                 ; $42bf: $08 $a0 $09

jr_0fe_42c2:
	jr   nz, jr_0fe_42c8                             ; $42c2: $20 $04

	and  b                                           ; $42c4: $a0
	inc  bc                                          ; $42c5: $03
	jr   nz, jr_0fe_42cc                             ; $42c6: $20 $04

jr_0fe_42c8:
	rra                                              ; $42c8: $1f
	ld   [$09a0], sp                                 ; $42c9: $08 $a0 $09

jr_0fe_42cc:
	jr   nz, jr_0fe_42de                             ; $42cc: $20 $10

	jr   nz, jr_0fe_42d4                             ; $42ce: $20 $04

	and  b                                           ; $42d0: $a0
	inc  bc                                          ; $42d1: $03
	jr   nz, jr_0fe_42d8                             ; $42d2: $20 $04

jr_0fe_42d4:
	rra                                              ; $42d4: $1f
	ld   [$09a0], sp                                 ; $42d5: $08 $a0 $09

jr_0fe_42d8:
	jr   nz, jr_0fe_42de                             ; $42d8: $20 $04

	and  b                                           ; $42da: $a0
	inc  bc                                          ; $42db: $03
	jr   nz, jr_0fe_42e2                             ; $42dc: $20 $04

jr_0fe_42de:
	rra                                              ; $42de: $1f
	ld   [$09a0], sp                                 ; $42df: $08 $a0 $09

jr_0fe_42e2:
	jr   nz, jr_0fe_42e8                             ; $42e2: $20 $04

	and  b                                           ; $42e4: $a0
	inc  bc                                          ; $42e5: $03
	jr   nz, jr_0fe_42ec                             ; $42e6: $20 $04

jr_0fe_42e8:
	rra                                              ; $42e8: $1f
	ld   [$09a0], sp                                 ; $42e9: $08 $a0 $09

jr_0fe_42ec:
	dec  h                                           ; $42ec: $25
	db   $10                                         ; $42ed: $10
	dec  h                                           ; $42ee: $25
	inc  b                                           ; $42ef: $04
	and  b                                           ; $42f0: $a0
	inc  bc                                          ; $42f1: $03
	dec  h                                           ; $42f2: $25
	inc  b                                           ; $42f3: $04
	rra                                              ; $42f4: $1f
	ld   [$09a0], sp                                 ; $42f5: $08 $a0 $09
	dec  h                                           ; $42f8: $25
	inc  b                                           ; $42f9: $04
	and  b                                           ; $42fa: $a0
	inc  bc                                          ; $42fb: $03
	dec  h                                           ; $42fc: $25
	inc  b                                           ; $42fd: $04
	rra                                              ; $42fe: $1f
	ld   [$09a0], sp                                 ; $42ff: $08 $a0 $09
	dec  h                                           ; $4302: $25
	inc  b                                           ; $4303: $04
	and  b                                           ; $4304: $a0
	inc  bc                                          ; $4305: $03
	dec  h                                           ; $4306: $25
	inc  b                                           ; $4307: $04
	rra                                              ; $4308: $1f
	ld   [$09a0], sp                                 ; $4309: $08 $a0 $09
	inc  h                                           ; $430c: $24
	db   $10                                         ; $430d: $10
	inc  h                                           ; $430e: $24
	inc  b                                           ; $430f: $04
	and  b                                           ; $4310: $a0
	inc  bc                                          ; $4311: $03
	inc  h                                           ; $4312: $24
	inc  b                                           ; $4313: $04
	rra                                              ; $4314: $1f
	ld   [$09a0], sp                                 ; $4315: $08 $a0 $09
	inc  h                                           ; $4318: $24
	inc  b                                           ; $4319: $04
	and  b                                           ; $431a: $a0
	inc  bc                                          ; $431b: $03
	inc  h                                           ; $431c: $24
	inc  b                                           ; $431d: $04
	rra                                              ; $431e: $1f
	ld   [$09a0], sp                                 ; $431f: $08 $a0 $09
	inc  h                                           ; $4322: $24
	inc  b                                           ; $4323: $04
	and  b                                           ; $4324: $a0
	inc  bc                                          ; $4325: $03
	inc  h                                           ; $4326: $24
	inc  b                                           ; $4327: $04
	and  b                                           ; $4328: $a0
	add  hl, bc                                      ; $4329: $09
	inc  hl                                          ; $432a: $23

jr_0fe_432b:
	db   $10                                         ; $432b: $10
	ld   a, [de]                                     ; $432c: $1a
	db   $10                                         ; $432d: $10
	jr   nz, jr_0fe_4340                             ; $432e: $20 $10

	inc  hl                                          ; $4330: $23
	db   $10                                         ; $4331: $10
	rra                                              ; $4332: $1f
	ld   [$1022], sp                                 ; $4333: $08 $22 $10
	ld   [hl+], a                                    ; $4336: $22
	inc  b                                           ; $4337: $04
	and  b                                           ; $4338: $a0
	inc  bc                                          ; $4339: $03
	ld   [hl+], a                                    ; $433a: $22
	inc  b                                           ; $433b: $04
	rra                                              ; $433c: $1f
	ld   [$09a0], sp                                 ; $433d: $08 $a0 $09

jr_0fe_4340:
	ld   hl, $a004                                   ; $4340: $21 $04 $a0
	inc  bc                                          ; $4343: $03
	ld   hl, $1f04                                   ; $4344: $21 $04 $1f
	ld   [$09a0], sp                                 ; $4347: $08 $a0 $09
	ld   hl, $a004                                   ; $434a: $21 $04 $a0
	inc  bc                                          ; $434d: $03
	ld   hl, $1f04                                   ; $434e: $21 $04 $1f
	ld   [$09a0], sp                                 ; $4351: $08 $a0 $09
	jr   nz, jr_0fe_4366                             ; $4354: $20 $10

	jr   nz, jr_0fe_435c                             ; $4356: $20 $04

	and  b                                           ; $4358: $a0
	inc  bc                                          ; $4359: $03
	jr   nz, jr_0fe_4360                             ; $435a: $20 $04

jr_0fe_435c:
	rra                                              ; $435c: $1f
	ld   [$09a0], sp                                 ; $435d: $08 $a0 $09

jr_0fe_4360:
	jr   nz, jr_0fe_4366                             ; $4360: $20 $04

	and  b                                           ; $4362: $a0
	inc  bc                                          ; $4363: $03
	jr   nz, jr_0fe_436a                             ; $4364: $20 $04

jr_0fe_4366:
	rra                                              ; $4366: $1f
	ld   [$09a0], sp                                 ; $4367: $08 $a0 $09

jr_0fe_436a:
	jr   nz, jr_0fe_4370                             ; $436a: $20 $04

	and  b                                           ; $436c: $a0
	inc  bc                                          ; $436d: $03
	jr   nz, jr_0fe_4374                             ; $436e: $20 $04

jr_0fe_4370:
	and  b                                           ; $4370: $a0
	add  hl, bc                                      ; $4371: $09
	jr   nz, jr_0fe_4378                             ; $4372: $20 $04

jr_0fe_4374:
	and  b                                           ; $4374: $a0
	inc  bc                                          ; $4375: $03
	jr   nz, jr_0fe_437c                             ; $4376: $20 $04

jr_0fe_4378:
	rra                                              ; $4378: $1f
	jr   c, jr_0fe_432b                              ; $4379: $38 $b0

	di                                               ; $437b: $f3

jr_0fe_437c:
	rst  $38                                         ; $437c: $ff
	rst  $38                                         ; $437d: $ff
	ld   [$0900], sp                                 ; $437e: $08 $00 $09
	nop                                              ; $4381: $00
	and  d                                           ; $4382: $a2
	ld   bc, $30c7                                   ; $4383: $01 $c7 $30
	and  e                                           ; $4386: $a3
	ld   h, $a0                                      ; $4387: $26 $a0
	ld   c, $23                                      ; $4389: $0e $23
	ld   [$0825], sp                                 ; $438b: $08 $25 $08
	jr   z, @+$0a                                    ; $438e: $28 $08

	inc  hl                                          ; $4390: $23
	ld   [$0825], sp                                 ; $4391: $08 $25 $08
	jr   z, jr_0fe_439e                              ; $4394: $28 $08

	dec  h                                           ; $4396: $25
	ld   [$f3fd], sp                                 ; $4397: $08 $fd $f3
	xor  h                                           ; $439a: $ac
	ld   bc, $0106                                   ; $439b: $01 $06 $01

jr_0fe_439e:
	rra                                              ; $439e: $1f
	jr   jr_0fe_43c1                                 ; $439f: $18 $20

	ld   [$081a], sp                                 ; $43a1: $08 $1a $08
	jr   @+$12                                       ; $43a4: $18 $10

	ld   a, [de]                                     ; $43a6: $1a
	ld   [$1020], sp                                 ; $43a7: $08 $20 $10
	inc  hl                                          ; $43aa: $23
	jr   nc, @+$21                                   ; $43ab: $30 $1f

	ld   [$0823], sp                                 ; $43ad: $08 $23 $08
	dec  h                                           ; $43b0: $25
	ld   [$0828], sp                                 ; $43b1: $08 $28 $08
	inc  hl                                          ; $43b4: $23
	ld   [$0825], sp                                 ; $43b5: $08 $25 $08
	jr   z, @+$0a                                    ; $43b8: $28 $08

	dec  h                                           ; $43ba: $25
	ld   [$01ac], sp                                 ; $43bb: $08 $ac $01
	ld   b, $01                                      ; $43be: $06 $01
	rra                                              ; $43c0: $1f

jr_0fe_43c1:
	jr   jr_0fe_43e6                                 ; $43c1: $18 $23

	ld   [$0420], sp                                 ; $43c3: $08 $20 $04
	ld   a, [de]                                     ; $43c6: $1a
	inc  b                                           ; $43c7: $04
	jr   jr_0fe_43d2                                 ; $43c8: $18 $08

	ld   a, [de]                                     ; $43ca: $1a
	ld   [$0820], sp                                 ; $43cb: $08 $20 $08
	ld   a, [de]                                     ; $43ce: $1a
	ld   [$0818], sp                                 ; $43cf: $08 $18 $08

jr_0fe_43d2:
	jr   jr_0fe_4404                                 ; $43d2: $18 $30

	rra                                              ; $43d4: $1f
	jr   nz, jr_0fe_43ff                             ; $43d5: $20 $28

	db   $10                                         ; $43d7: $10
	ld   a, [hl+]                                    ; $43d8: $2a
	db   $10                                         ; $43d9: $10
	inc  hl                                          ; $43da: $23
	jr   jr_0fe_43fc                                 ; $43db: $18 $1f

	ld   [$0828], sp                                 ; $43dd: $08 $28 $08
	jr   z, jr_0fe_43f2                              ; $43e0: $28 $10

	ld   a, [hl+]                                    ; $43e2: $2a
	ld   [$1825], sp                                 ; $43e3: $08 $25 $18

jr_0fe_43e6:
	rra                                              ; $43e6: $1f
	ld   [$1028], sp                                 ; $43e7: $08 $28 $10
	ld   a, [hl+]                                    ; $43ea: $2a
	db   $10                                         ; $43eb: $10
	daa                                              ; $43ec: $27
	db   $10                                         ; $43ed: $10
	inc  hl                                          ; $43ee: $23
	db   $10                                         ; $43ef: $10
	dec  h                                           ; $43f0: $25
	db   $10                                         ; $43f1: $10

jr_0fe_43f2:
	jr   nz, jr_0fe_4404                             ; $43f2: $20 $10

	inc  hl                                          ; $43f4: $23
	jr   jr_0fe_4416                                 ; $43f5: $18 $1f

	ld   [$1020], sp                                 ; $43f7: $08 $20 $10
	inc  hl                                          ; $43fa: $23
	db   $10                                         ; $43fb: $10

jr_0fe_43fc:
	dec  h                                           ; $43fc: $25
	db   $10                                         ; $43fd: $10
	rra                                              ; $43fe: $1f

jr_0fe_43ff:
	ld   [$0825], sp                                 ; $43ff: $08 $25 $08
	jr   z, jr_0fe_440c                              ; $4402: $28 $08

jr_0fe_4404:
	dec  h                                           ; $4404: $25
	db   $10                                         ; $4405: $10
	inc  hl                                          ; $4406: $23
	jr   z, @+$21                                    ; $4407: $28 $1f

	db   $10                                         ; $4409: $10
	jr   nz, @+$0a                                   ; $440a: $20 $08

jr_0fe_440c:
	inc  hl                                          ; $440c: $23
	ld   [$1825], sp                                 ; $440d: $08 $25 $18
	jr   z, @+$22                                    ; $4410: $28 $20

	rra                                              ; $4412: $1f
	ld   [$0628], sp                                 ; $4413: $08 $28 $06

jr_0fe_4416:
	ld   a, [hl+]                                    ; $4416: $2a
	dec  b                                           ; $4417: $05
	jr   z, jr_0fe_441f                              ; $4418: $28 $05

	ld   a, [hl+]                                    ; $441a: $2a
	ld   [$0828], sp                                 ; $441b: $08 $28 $08
	ld   a, [hl+]                                    ; $441e: $2a

jr_0fe_441f:
	ld   [$0828], sp                                 ; $441f: $08 $28 $08
	dec  h                                           ; $4422: $25
	ld   [$1030], sp                                 ; $4423: $08 $30 $10
	ld   a, [hl+]                                    ; $4426: $2a
	jr   c, jr_0fe_4448                              ; $4427: $38 $1f

	ld   [$1030], sp                                 ; $4429: $08 $30 $10
	ld   a, [hl+]                                    ; $442c: $2a
	ld   [$0828], sp                                 ; $442d: $08 $28 $08
	inc  hl                                          ; $4430: $23
	ld   [$0825], sp                                 ; $4431: $08 $25 $08
	jr   z, @+$0a                                    ; $4434: $28 $08

	dec  h                                           ; $4436: $25
	ld   [$3023], sp                                 ; $4437: $08 $23 $30
	rra                                              ; $443a: $1f
	jr   jr_0fe_445d                                 ; $443b: $18 $20

	ld   [$0823], sp                                 ; $443d: $08 $23 $08
	dec  h                                           ; $4440: $25
	ld   [$0823], sp                                 ; $4441: $08 $23 $08
	dec  h                                           ; $4444: $25
	ld   [$0820], sp                                 ; $4445: $08 $20 $08

jr_0fe_4448:
	ld   a, [de]                                     ; $4448: $1a
	db   $10                                         ; $4449: $10
	ld   a, [de]                                     ; $444a: $1a
	ld   [$0820], sp                                 ; $444b: $08 $20 $08
	ld   a, [de]                                     ; $444e: $1a
	jr   jr_0fe_4470                                 ; $444f: $18 $1f

	jr   nz, jr_0fe_4473                             ; $4451: $20 $20

	ld   [$081a], sp                                 ; $4453: $08 $1a $08
	jr   jr_0fe_4468                                 ; $4456: $18 $10

	ld   a, [de]                                     ; $4458: $1a
	ld   [$1020], sp                                 ; $4459: $08 $20 $10
	inc  hl                                          ; $445c: $23

jr_0fe_445d:
	db   $10                                         ; $445d: $10
	dec  h                                           ; $445e: $25
	db   $10                                         ; $445f: $10
	jr   z, jr_0fe_4472                              ; $4460: $28 $10

	jr   nc, jr_0fe_447c                             ; $4462: $30 $18

	rra                                              ; $4464: $1f
	ld   [$0a30], sp                                 ; $4465: $08 $30 $0a

jr_0fe_4468:
	jr   z, jr_0fe_4476                              ; $4468: $28 $0c

	ld   a, [hl+]                                    ; $446a: $2a
	ld   a, [bc]                                     ; $446b: $0a
	ld   a, [hl+]                                    ; $446c: $2a
	db   $10                                         ; $446d: $10
	jr   z, jr_0fe_4498                              ; $446e: $28 $28

jr_0fe_4470:
	rra                                              ; $4470: $1f
	db   $10                                         ; $4471: $10

jr_0fe_4472:
	inc  hl                                          ; $4472: $23

jr_0fe_4473:
	ld   [$0825], sp                                 ; $4473: $08 $25 $08

jr_0fe_4476:
	jr   z, @+$0a                                    ; $4476: $28 $08

	inc  hl                                          ; $4478: $23
	ld   [$0825], sp                                 ; $4479: $08 $25 $08

jr_0fe_447c:
	jr   z, @+$0a                                    ; $447c: $28 $08

	dec  h                                           ; $447e: $25
	ld   [$f3b0], sp                                 ; $447f: $08 $b0 $f3
	rst  $38                                         ; $4482: $ff
	rst  $38                                         ; $4483: $ff
	ld   a, [hl+]                                    ; $4484: $2a
	jr   jr_0fe_44b7                                 ; $4485: $18 $30

	ld   [$202a], sp                                 ; $4487: $08 $2a $20
	rra                                              ; $448a: $1f
	ld   [$1030], sp                                 ; $448b: $08 $30 $10
	ld   a, [hl+]                                    ; $448e: $2a
	ld   [$0828], sp                                 ; $448f: $08 $28 $08
	inc  hl                                          ; $4492: $23
	ld   [$0825], sp                                 ; $4493: $08 $25 $08
	jr   z, jr_0fe_44a0                              ; $4496: $28 $08

jr_0fe_4498:
	dec  h                                           ; $4498: $25
	ld   [$3823], sp                                 ; $4499: $08 $23 $38
	rra                                              ; $449c: $1f
	db   $10                                         ; $449d: $10
	jr   nz, jr_0fe_44a8                             ; $449e: $20 $08

jr_0fe_44a0:
	inc  hl                                          ; $44a0: $23
	ld   [$0825], sp                                 ; $44a1: $08 $25 $08
	inc  hl                                          ; $44a4: $23
	ld   [$0825], sp                                 ; $44a5: $08 $25 $08

jr_0fe_44a8:
	jr   nz, jr_0fe_44b2                             ; $44a8: $20 $08

	ld   a, [de]                                     ; $44aa: $1a
	jr   @+$22                                       ; $44ab: $18 $20

	ld   [$201a], sp                                 ; $44ad: $08 $1a $20
	xor  l                                           ; $44b0: $ad
	nop                                              ; $44b1: $00

jr_0fe_44b2:
	ld   [$0240], sp                                 ; $44b2: $08 $40 $02
	ld   [bc], a                                     ; $44b5: $02
	and  b                                           ; $44b6: $a0

jr_0fe_44b7:
	ld   [bc], a                                     ; $44b7: $02
	and  e                                           ; $44b8: $a3
	inc  h                                           ; $44b9: $24
	and  d                                           ; $44ba: $a2
	jr   nc, @+$21                                   ; $44bb: $30 $1f

	jr   c, @-$01                                    ; $44bd: $38 $fd

	di                                               ; $44bf: $f3
	db   $fd                                         ; $44c0: $fd
	ldh  a, [$ac]                                    ; $44c1: $f0 $ac
	ld   bc, $02b2                                   ; $44c3: $01 $b2 $02
	rra                                              ; $44c6: $1f
	ld   [$02a0], sp                                 ; $44c7: $08 $a0 $02
	jr   z, @+$12                                    ; $44ca: $28 $10

	jr   z, jr_0fe_44d2                              ; $44cc: $28 $04

	and  b                                           ; $44ce: $a0
	ld   b, $28                                      ; $44cf: $06 $28
	ld   [bc], a                                     ; $44d1: $02

jr_0fe_44d2:
	rra                                              ; $44d2: $1f
	ld   [bc], a                                     ; $44d3: $02
	and  b                                           ; $44d4: $a0
	ld   [bc], a                                     ; $44d5: $02
	inc  hl                                          ; $44d6: $23
	ld   [$0428], sp                                 ; $44d7: $08 $28 $04
	and  b                                           ; $44da: $a0
	ld   b, $28                                      ; $44db: $06 $28
	ld   [bc], a                                     ; $44dd: $02
	rra                                              ; $44de: $1f
	ld   [bc], a                                     ; $44df: $02
	and  b                                           ; $44e0: $a0
	ld   [bc], a                                     ; $44e1: $02
	jr   nz, jr_0fe_44ec                             ; $44e2: $20 $08

	jr   z, jr_0fe_44ea                              ; $44e4: $28 $04

	and  b                                           ; $44e6: $a0
	ld   b, $28                                      ; $44e7: $06 $28
	ld   [bc], a                                     ; $44e9: $02

jr_0fe_44ea:
	rra                                              ; $44ea: $1f
	ld   [bc], a                                     ; $44eb: $02

jr_0fe_44ec:
	or   d                                           ; $44ec: $b2
	ldh  a, [$ac]                                    ; $44ed: $f0 $ac
	ld   bc, $02b2                                   ; $44ef: $01 $b2 $02
	rra                                              ; $44f2: $1f
	ld   [$02a0], sp                                 ; $44f3: $08 $a0 $02
	jr   z, @+$12                                    ; $44f6: $28 $10

	jr   z, jr_0fe_44fe                              ; $44f8: $28 $04

	and  b                                           ; $44fa: $a0
	ld   b, $28                                      ; $44fb: $06 $28
	ld   [bc], a                                     ; $44fd: $02

jr_0fe_44fe:
	rra                                              ; $44fe: $1f
	ld   [bc], a                                     ; $44ff: $02
	and  b                                           ; $4500: $a0
	ld   [bc], a                                     ; $4501: $02
	inc  hl                                          ; $4502: $23
	ld   [$0428], sp                                 ; $4503: $08 $28 $04
	and  b                                           ; $4506: $a0
	ld   b, $28                                      ; $4507: $06 $28
	ld   [bc], a                                     ; $4509: $02
	rra                                              ; $450a: $1f
	ld   [bc], a                                     ; $450b: $02
	and  b                                           ; $450c: $a0
	ld   [bc], a                                     ; $450d: $02
	inc  de                                          ; $450e: $13
	ld   [$0428], sp                                 ; $450f: $08 $28 $04
	and  b                                           ; $4512: $a0
	ld   b, $28                                      ; $4513: $06 $28
	ld   [bc], a                                     ; $4515: $02
	rra                                              ; $4516: $1f
	ld   [bc], a                                     ; $4517: $02
	and  b                                           ; $4518: $a0
	ld   [bc], a                                     ; $4519: $02
	jr   jr_0fe_4524                                 ; $451a: $18 $08

	jr   z, @+$12                                    ; $451c: $28 $10

	jr   z, jr_0fe_4524                              ; $451e: $28 $04

	and  b                                           ; $4520: $a0
	ld   b, $28                                      ; $4521: $06 $28
	ld   [bc], a                                     ; $4523: $02

jr_0fe_4524:
	rra                                              ; $4524: $1f
	ld   [bc], a                                     ; $4525: $02
	and  b                                           ; $4526: $a0
	ld   [bc], a                                     ; $4527: $02
	inc  hl                                          ; $4528: $23
	ld   [$0428], sp                                 ; $4529: $08 $28 $04
	and  b                                           ; $452c: $a0
	ld   b, $28                                      ; $452d: $06 $28
	ld   [bc], a                                     ; $452f: $02
	rra                                              ; $4530: $1f
	ld   [bc], a                                     ; $4531: $02
	and  b                                           ; $4532: $a0
	ld   [bc], a                                     ; $4533: $02
	jr   nz, jr_0fe_453e                             ; $4534: $20 $08

	jr   z, jr_0fe_453c                              ; $4536: $28 $04

	and  b                                           ; $4538: $a0
	ld   b, $28                                      ; $4539: $06 $28
	ld   [bc], a                                     ; $453b: $02

jr_0fe_453c:
	rra                                              ; $453c: $1f
	ld   [bc], a                                     ; $453d: $02

jr_0fe_453e:
	and  b                                           ; $453e: $a0
	ld   [bc], a                                     ; $453f: $02
	ld   hl, $2808                                   ; $4540: $21 $08 $28
	db   $10                                         ; $4543: $10
	jr   z, jr_0fe_454a                              ; $4544: $28 $04

	and  b                                           ; $4546: $a0
	ld   b, $28                                      ; $4547: $06 $28
	ld   [bc], a                                     ; $4549: $02

jr_0fe_454a:
	rra                                              ; $454a: $1f
	ld   [bc], a                                     ; $454b: $02
	and  b                                           ; $454c: $a0
	ld   [bc], a                                     ; $454d: $02
	jr   jr_0fe_4558                                 ; $454e: $18 $08

	jr   z, jr_0fe_4556                              ; $4550: $28 $04

	and  b                                           ; $4552: $a0
	ld   b, $28                                      ; $4553: $06 $28
	ld   [bc], a                                     ; $4555: $02

jr_0fe_4556:
	rra                                              ; $4556: $1f
	ld   [bc], a                                     ; $4557: $02

jr_0fe_4558:
	and  b                                           ; $4558: $a0
	ld   [bc], a                                     ; $4559: $02
	ld   hl, $2808                                   ; $455a: $21 $08 $28
	inc  b                                           ; $455d: $04
	and  b                                           ; $455e: $a0
	ld   b, $28                                      ; $455f: $06 $28
	ld   [bc], a                                     ; $4561: $02
	rra                                              ; $4562: $1f
	ld   [bc], a                                     ; $4563: $02
	and  b                                           ; $4564: $a0
	ld   [bc], a                                     ; $4565: $02
	inc  hl                                          ; $4566: $23
	ld   [$102a], sp                                 ; $4567: $08 $2a $10
	ld   a, [hl+]                                    ; $456a: $2a
	inc  b                                           ; $456b: $04
	and  b                                           ; $456c: $a0
	ld   b, $2a                                      ; $456d: $06 $2a
	ld   [bc], a                                     ; $456f: $02
	rra                                              ; $4570: $1f
	ld   [bc], a                                     ; $4571: $02
	and  b                                           ; $4572: $a0
	ld   [bc], a                                     ; $4573: $02
	ld   a, [de]                                     ; $4574: $1a
	ld   [$042a], sp                                 ; $4575: $08 $2a $04
	and  b                                           ; $4578: $a0
	ld   b, $2a                                      ; $4579: $06 $2a
	ld   [bc], a                                     ; $457b: $02
	rra                                              ; $457c: $1f
	ld   [bc], a                                     ; $457d: $02
	and  b                                           ; $457e: $a0
	ld   [bc], a                                     ; $457f: $02
	inc  hl                                          ; $4580: $23
	ld   [$042a], sp                                 ; $4581: $08 $2a $04
	and  b                                           ; $4584: $a0
	ld   b, $2a                                      ; $4585: $06 $2a
	ld   [bc], a                                     ; $4587: $02
	rra                                              ; $4588: $1f
	ld   [bc], a                                     ; $4589: $02
	and  b                                           ; $458a: $a0
	ld   [bc], a                                     ; $458b: $02
	jr   jr_0fe_4596                                 ; $458c: $18 $08

	jr   z, @+$12                                    ; $458e: $28 $10

	jr   z, jr_0fe_4596                              ; $4590: $28 $04

	and  b                                           ; $4592: $a0
	ld   b, $28                                      ; $4593: $06 $28
	ld   [bc], a                                     ; $4595: $02

jr_0fe_4596:
	rra                                              ; $4596: $1f
	ld   [bc], a                                     ; $4597: $02
	and  b                                           ; $4598: $a0
	ld   [bc], a                                     ; $4599: $02
	inc  hl                                          ; $459a: $23
	ld   [$0428], sp                                 ; $459b: $08 $28 $04
	and  b                                           ; $459e: $a0
	ld   b, $28                                      ; $459f: $06 $28
	ld   [bc], a                                     ; $45a1: $02
	rra                                              ; $45a2: $1f
	ld   [bc], a                                     ; $45a3: $02
	and  b                                           ; $45a4: $a0
	ld   [bc], a                                     ; $45a5: $02
	jr   nz, jr_0fe_45b0                             ; $45a6: $20 $08

	jr   z, jr_0fe_45ae                              ; $45a8: $28 $04

	and  b                                           ; $45aa: $a0
	ld   b, $28                                      ; $45ab: $06 $28
	ld   [bc], a                                     ; $45ad: $02

jr_0fe_45ae:
	rra                                              ; $45ae: $1f
	ld   [bc], a                                     ; $45af: $02

jr_0fe_45b0:
	and  b                                           ; $45b0: $a0
	ld   [bc], a                                     ; $45b1: $02
	dec  h                                           ; $45b2: $25
	ld   [$1028], sp                                 ; $45b3: $08 $28 $10
	jr   z, jr_0fe_45bc                              ; $45b6: $28 $04

	and  b                                           ; $45b8: $a0
	ld   b, $28                                      ; $45b9: $06 $28
	ld   [bc], a                                     ; $45bb: $02

jr_0fe_45bc:
	rra                                              ; $45bc: $1f
	ld   [bc], a                                     ; $45bd: $02
	and  b                                           ; $45be: $a0
	ld   [bc], a                                     ; $45bf: $02
	jr   nz, jr_0fe_45ca                             ; $45c0: $20 $08

	jr   z, jr_0fe_45c8                              ; $45c2: $28 $04

	and  b                                           ; $45c4: $a0
	ld   b, $28                                      ; $45c5: $06 $28
	ld   [bc], a                                     ; $45c7: $02

jr_0fe_45c8:
	rra                                              ; $45c8: $1f
	ld   [bc], a                                     ; $45c9: $02

jr_0fe_45ca:
	and  b                                           ; $45ca: $a0
	ld   [bc], a                                     ; $45cb: $02
	dec  d                                           ; $45cc: $15
	ld   [$0428], sp                                 ; $45cd: $08 $28 $04
	and  b                                           ; $45d0: $a0
	ld   b, $28                                      ; $45d1: $06 $28
	ld   [bc], a                                     ; $45d3: $02
	rra                                              ; $45d4: $1f
	ld   [bc], a                                     ; $45d5: $02
	and  b                                           ; $45d6: $a0
	ld   [bc], a                                     ; $45d7: $02
	jr   nz, jr_0fe_45e2                             ; $45d8: $20 $08

	daa                                              ; $45da: $27
	db   $10                                         ; $45db: $10
	daa                                              ; $45dc: $27
	inc  b                                           ; $45dd: $04
	and  b                                           ; $45de: $a0
	ld   b, $27                                      ; $45df: $06 $27
	ld   [bc], a                                     ; $45e1: $02

jr_0fe_45e2:
	rra                                              ; $45e2: $1f
	ld   [bc], a                                     ; $45e3: $02
	and  b                                           ; $45e4: $a0
	ld   [bc], a                                     ; $45e5: $02
	rla                                              ; $45e6: $17
	ld   [$0427], sp                                 ; $45e7: $08 $27 $04
	and  b                                           ; $45ea: $a0
	ld   b, $27                                      ; $45eb: $06 $27
	ld   [bc], a                                     ; $45ed: $02
	rra                                              ; $45ee: $1f
	ld   [bc], a                                     ; $45ef: $02
	and  b                                           ; $45f0: $a0
	ld   [bc], a                                     ; $45f1: $02
	jr   nz, jr_0fe_45fc                             ; $45f2: $20 $08

	daa                                              ; $45f4: $27
	inc  b                                           ; $45f5: $04
	and  b                                           ; $45f6: $a0
	ld   b, $27                                      ; $45f7: $06 $27
	ld   [bc], a                                     ; $45f9: $02
	rra                                              ; $45fa: $1f
	ld   [bc], a                                     ; $45fb: $02

jr_0fe_45fc:
	and  b                                           ; $45fc: $a0
	ld   [bc], a                                     ; $45fd: $02
	ld   a, [de]                                     ; $45fe: $1a
	ld   [$102a], sp                                 ; $45ff: $08 $2a $10
	ld   a, [hl+]                                    ; $4602: $2a
	inc  b                                           ; $4603: $04
	and  b                                           ; $4604: $a0
	ld   b, $2a                                      ; $4605: $06 $2a
	ld   [bc], a                                     ; $4607: $02
	rra                                              ; $4608: $1f
	ld   [bc], a                                     ; $4609: $02
	and  b                                           ; $460a: $a0
	ld   [bc], a                                     ; $460b: $02
	dec  h                                           ; $460c: $25
	ld   [$042a], sp                                 ; $460d: $08 $2a $04
	and  b                                           ; $4610: $a0
	ld   b, $2a                                      ; $4611: $06 $2a
	ld   [bc], a                                     ; $4613: $02
	rra                                              ; $4614: $1f
	ld   [bc], a                                     ; $4615: $02
	and  b                                           ; $4616: $a0
	ld   [bc], a                                     ; $4617: $02
	ld   a, [de]                                     ; $4618: $1a
	ld   [$042a], sp                                 ; $4619: $08 $2a $04
	and  b                                           ; $461c: $a0
	ld   b, $2a                                      ; $461d: $06 $2a
	ld   [bc], a                                     ; $461f: $02
	rra                                              ; $4620: $1f
	ld   [bc], a                                     ; $4621: $02
	and  b                                           ; $4622: $a0
	ld   [bc], a                                     ; $4623: $02
	ld   [hl+], a                                    ; $4624: $22
	ld   [$102a], sp                                 ; $4625: $08 $2a $10
	ld   a, [hl+]                                    ; $4628: $2a
	inc  b                                           ; $4629: $04
	and  b                                           ; $462a: $a0
	ld   b, $2a                                      ; $462b: $06 $2a
	ld   [bc], a                                     ; $462d: $02
	rra                                              ; $462e: $1f
	ld   [bc], a                                     ; $462f: $02
	and  b                                           ; $4630: $a0
	ld   [bc], a                                     ; $4631: $02
	dec  h                                           ; $4632: $25
	ld   [$042a], sp                                 ; $4633: $08 $2a $04
	and  b                                           ; $4636: $a0
	ld   b, $2a                                      ; $4637: $06 $2a
	ld   [bc], a                                     ; $4639: $02
	rra                                              ; $463a: $1f
	ld   [bc], a                                     ; $463b: $02
	and  b                                           ; $463c: $a0
	ld   [bc], a                                     ; $463d: $02
	ld   a, [de]                                     ; $463e: $1a
	ld   [$042a], sp                                 ; $463f: $08 $2a $04
	and  b                                           ; $4642: $a0
	ld   b, $2a                                      ; $4643: $06 $2a
	ld   [bc], a                                     ; $4645: $02
	rra                                              ; $4646: $1f
	ld   [bc], a                                     ; $4647: $02
	and  b                                           ; $4648: $a0
	ld   [bc], a                                     ; $4649: $02
	inc  hl                                          ; $464a: $23
	ld   [$102a], sp                                 ; $464b: $08 $2a $10
	ld   a, [hl+]                                    ; $464e: $2a
	inc  b                                           ; $464f: $04
	and  b                                           ; $4650: $a0
	ld   b, $2a                                      ; $4651: $06 $2a
	ld   [bc], a                                     ; $4653: $02
	rra                                              ; $4654: $1f
	ld   [bc], a                                     ; $4655: $02
	and  b                                           ; $4656: $a0
	ld   [bc], a                                     ; $4657: $02
	ld   a, [de]                                     ; $4658: $1a
	ld   [$042a], sp                                 ; $4659: $08 $2a $04
	and  b                                           ; $465c: $a0
	ld   b, $2a                                      ; $465d: $06 $2a
	ld   [bc], a                                     ; $465f: $02
	rra                                              ; $4660: $1f
	ld   [bc], a                                     ; $4661: $02
	and  b                                           ; $4662: $a0
	ld   [bc], a                                     ; $4663: $02
	inc  hl                                          ; $4664: $23
	ld   [$042a], sp                                 ; $4665: $08 $2a $04
	and  b                                           ; $4668: $a0
	ld   b, $2a                                      ; $4669: $06 $2a
	ld   [bc], a                                     ; $466b: $02
	rra                                              ; $466c: $1f
	ld   [bc], a                                     ; $466d: $02
	and  b                                           ; $466e: $a0
	ld   [bc], a                                     ; $466f: $02
	inc  de                                          ; $4670: $13
	ld   b, b                                        ; $4671: $40
	jr   jr_0fe_467c                                 ; $4672: $18 $08

	jr   z, @+$12                                    ; $4674: $28 $10

	jr   z, jr_0fe_467c                              ; $4676: $28 $04

	and  b                                           ; $4678: $a0
	ld   b, $28                                      ; $4679: $06 $28
	ld   [bc], a                                     ; $467b: $02

jr_0fe_467c:
	rra                                              ; $467c: $1f
	ld   [bc], a                                     ; $467d: $02
	and  b                                           ; $467e: $a0
	ld   [bc], a                                     ; $467f: $02
	inc  hl                                          ; $4680: $23
	ld   [$0428], sp                                 ; $4681: $08 $28 $04
	and  b                                           ; $4684: $a0
	ld   b, $28                                      ; $4685: $06 $28
	ld   [bc], a                                     ; $4687: $02
	rra                                              ; $4688: $1f
	ld   [bc], a                                     ; $4689: $02
	and  b                                           ; $468a: $a0
	ld   [bc], a                                     ; $468b: $02
	inc  hl                                          ; $468c: $23
	ld   [$0428], sp                                 ; $468d: $08 $28 $04
	and  b                                           ; $4690: $a0
	ld   b, $28                                      ; $4691: $06 $28
	ld   [bc], a                                     ; $4693: $02
	rra                                              ; $4694: $1f
	ld   a, [bc]                                     ; $4695: $0a
	and  b                                           ; $4696: $a0
	ld   [bc], a                                     ; $4697: $02
	jr   z, @+$12                                    ; $4698: $28 $10

	jr   z, jr_0fe_46a0                              ; $469a: $28 $04

	and  b                                           ; $469c: $a0
	ld   b, $28                                      ; $469d: $06 $28
	ld   [bc], a                                     ; $469f: $02

jr_0fe_46a0:
	rra                                              ; $46a0: $1f
	ld   [bc], a                                     ; $46a1: $02
	and  b                                           ; $46a2: $a0
	ld   [bc], a                                     ; $46a3: $02
	inc  hl                                          ; $46a4: $23
	ld   [$0428], sp                                 ; $46a5: $08 $28 $04
	and  b                                           ; $46a8: $a0
	ld   b, $28                                      ; $46a9: $06 $28
	ld   [bc], a                                     ; $46ab: $02
	rra                                              ; $46ac: $1f
	ld   [bc], a                                     ; $46ad: $02
	and  b                                           ; $46ae: $a0
	ld   [bc], a                                     ; $46af: $02
	jr   jr_0fe_46ba                                 ; $46b0: $18 $08

	jr   z, jr_0fe_46b8                              ; $46b2: $28 $04

	and  b                                           ; $46b4: $a0
	ld   b, $28                                      ; $46b5: $06 $28
	ld   [bc], a                                     ; $46b7: $02

jr_0fe_46b8:
	rra                                              ; $46b8: $1f
	ld   [bc], a                                     ; $46b9: $02

jr_0fe_46ba:
	and  b                                           ; $46ba: $a0
	ld   [bc], a                                     ; $46bb: $02
	ld   hl, $3108                                   ; $46bc: $21 $08 $31
	db   $10                                         ; $46bf: $10
	ld   sp, $a004                                   ; $46c0: $31 $04 $a0
	ld   b, $31                                      ; $46c3: $06 $31
	ld   [bc], a                                     ; $46c5: $02
	rra                                              ; $46c6: $1f
	ld   [bc], a                                     ; $46c7: $02
	and  b                                           ; $46c8: $a0
	ld   [bc], a                                     ; $46c9: $02
	jr   z, jr_0fe_46d4                              ; $46ca: $28 $08

	ld   sp, $a004                                   ; $46cc: $31 $04 $a0
	ld   b, $31                                      ; $46cf: $06 $31
	ld   [bc], a                                     ; $46d1: $02
	rra                                              ; $46d2: $1f
	ld   [bc], a                                     ; $46d3: $02

jr_0fe_46d4:
	and  b                                           ; $46d4: $a0
	ld   [bc], a                                     ; $46d5: $02
	jr   jr_0fe_46e0                                 ; $46d6: $18 $08

	ld   sp, $a004                                   ; $46d8: $31 $04 $a0
	ld   b, $31                                      ; $46db: $06 $31
	ld   [bc], a                                     ; $46dd: $02
	rra                                              ; $46de: $1f
	ld   [bc], a                                     ; $46df: $02

jr_0fe_46e0:
	and  b                                           ; $46e0: $a0
	ld   [bc], a                                     ; $46e1: $02
	ld   hl, $3108                                   ; $46e2: $21 $08 $31
	db   $10                                         ; $46e5: $10
	ld   sp, $a004                                   ; $46e6: $31 $04 $a0
	ld   b, $31                                      ; $46e9: $06 $31
	ld   [bc], a                                     ; $46eb: $02
	rra                                              ; $46ec: $1f
	ld   [bc], a                                     ; $46ed: $02
	and  b                                           ; $46ee: $a0
	ld   [bc], a                                     ; $46ef: $02
	jr   jr_0fe_46fa                                 ; $46f0: $18 $08

	ld   sp, $a004                                   ; $46f2: $31 $04 $a0
	ld   b, $31                                      ; $46f5: $06 $31
	ld   [bc], a                                     ; $46f7: $02
	rra                                              ; $46f8: $1f
	ld   [bc], a                                     ; $46f9: $02

jr_0fe_46fa:
	and  b                                           ; $46fa: $a0
	ld   [bc], a                                     ; $46fb: $02
	ld   hl, $3108                                   ; $46fc: $21 $08 $31
	inc  b                                           ; $46ff: $04
	and  b                                           ; $4700: $a0
	ld   b, $31                                      ; $4701: $06 $31
	ld   [bc], a                                     ; $4703: $02
	rra                                              ; $4704: $1f
	ld   [bc], a                                     ; $4705: $02
	and  b                                           ; $4706: $a0
	ld   [bc], a                                     ; $4707: $02
	jr   jr_0fe_471a                                 ; $4708: $18 $10

	rla                                              ; $470a: $17
	db   $10                                         ; $470b: $10
	dec  d                                           ; $470c: $15
	db   $10                                         ; $470d: $10
	jr   nz, @+$12                                   ; $470e: $20 $10

	ld   a, [de]                                     ; $4710: $1a

jr_0fe_4711:
	ld   [$102a], sp                                 ; $4711: $08 $2a $10
	ld   a, [hl+]                                    ; $4714: $2a
	inc  b                                           ; $4715: $04
	and  b                                           ; $4716: $a0
	ld   b, $2a                                      ; $4717: $06 $2a
	ld   [bc], a                                     ; $4719: $02

jr_0fe_471a:
	rra                                              ; $471a: $1f
	ld   [bc], a                                     ; $471b: $02
	and  b                                           ; $471c: $a0
	ld   [bc], a                                     ; $471d: $02
	inc  hl                                          ; $471e: $23
	ld   [$042a], sp                                 ; $471f: $08 $2a $04
	and  b                                           ; $4722: $a0
	ld   b, $2a                                      ; $4723: $06 $2a
	ld   [bc], a                                     ; $4725: $02
	rra                                              ; $4726: $1f
	ld   [bc], a                                     ; $4727: $02
	and  b                                           ; $4728: $a0
	ld   [bc], a                                     ; $4729: $02
	ld   a, [de]                                     ; $472a: $1a
	ld   [$042a], sp                                 ; $472b: $08 $2a $04
	and  b                                           ; $472e: $a0
	ld   b, $2a                                      ; $472f: $06 $2a
	ld   [bc], a                                     ; $4731: $02
	rra                                              ; $4732: $1f
	ld   [bc], a                                     ; $4733: $02
	and  b                                           ; $4734: $a0
	ld   [bc], a                                     ; $4735: $02
	jr   jr_0fe_4740                                 ; $4736: $18 $08

	jr   z, @+$12                                    ; $4738: $28 $10

	jr   z, jr_0fe_4740                              ; $473a: $28 $04

	and  b                                           ; $473c: $a0
	ld   b, $28                                      ; $473d: $06 $28
	ld   [bc], a                                     ; $473f: $02

jr_0fe_4740:
	rra                                              ; $4740: $1f
	ld   [bc], a                                     ; $4741: $02
	and  b                                           ; $4742: $a0
	ld   [bc], a                                     ; $4743: $02
	inc  hl                                          ; $4744: $23
	ld   [$0428], sp                                 ; $4745: $08 $28 $04
	and  b                                           ; $4748: $a0
	ld   b, $28                                      ; $4749: $06 $28
	ld   [bc], a                                     ; $474b: $02
	rra                                              ; $474c: $1f
	ld   [bc], a                                     ; $474d: $02
	and  b                                           ; $474e: $a0
	ld   [bc], a                                     ; $474f: $02
	inc  hl                                          ; $4750: $23
	ld   [$0428], sp                                 ; $4751: $08 $28 $04
	and  b                                           ; $4754: $a0
	ld   b, $28                                      ; $4755: $06 $28
	ld   [bc], a                                     ; $4757: $02
	rra                                              ; $4758: $1f
	ld   [bc], a                                     ; $4759: $02
	and  b                                           ; $475a: $a0
	ld   [bc], a                                     ; $475b: $02
	jr   jr_0fe_4766                                 ; $475c: $18 $08

	rra                                              ; $475e: $1f
	jr   c, jr_0fe_4711                              ; $475f: $38 $b0

	di                                               ; $4761: $f3
	rst  $38                                         ; $4762: $ff
	rst  $38                                         ; $4763: $ff
	and  b                                           ; $4764: $a0
	ld   [bc], a                                     ; $4765: $02

jr_0fe_4766:
	ld   hl, $3108                                   ; $4766: $21 $08 $31
	db   $10                                         ; $4769: $10
	ld   sp, $a004                                   ; $476a: $31 $04 $a0
	ld   b, $31                                      ; $476d: $06 $31
	ld   [bc], a                                     ; $476f: $02
	rra                                              ; $4770: $1f
	ld   [bc], a                                     ; $4771: $02
	and  b                                           ; $4772: $a0
	ld   [bc], a                                     ; $4773: $02
	jr   z, jr_0fe_477e                              ; $4774: $28 $08

	ld   sp, $a004                                   ; $4776: $31 $04 $a0
	ld   b, $31                                      ; $4779: $06 $31
	ld   [bc], a                                     ; $477b: $02
	rra                                              ; $477c: $1f
	ld   [bc], a                                     ; $477d: $02

jr_0fe_477e:
	and  b                                           ; $477e: $a0
	ld   [bc], a                                     ; $477f: $02
	jr   jr_0fe_478a                                 ; $4780: $18 $08

	ld   sp, $a004                                   ; $4782: $31 $04 $a0
	ld   b, $31                                      ; $4785: $06 $31
	ld   [bc], a                                     ; $4787: $02
	rra                                              ; $4788: $1f
	ld   [bc], a                                     ; $4789: $02

jr_0fe_478a:
	and  b                                           ; $478a: $a0
	ld   [bc], a                                     ; $478b: $02
	inc  hl                                          ; $478c: $23
	ld   [$1030], sp                                 ; $478d: $08 $30 $10
	jr   nc, jr_0fe_4796                             ; $4790: $30 $04

	and  b                                           ; $4792: $a0
	ld   b, $30                                      ; $4793: $06 $30
	ld   [bc], a                                     ; $4795: $02

jr_0fe_4796:
	rra                                              ; $4796: $1f
	ld   [bc], a                                     ; $4797: $02
	and  b                                           ; $4798: $a0
	ld   [bc], a                                     ; $4799: $02
	ld   a, [de]                                     ; $479a: $1a
	ld   [$042a], sp                                 ; $479b: $08 $2a $04
	and  b                                           ; $479e: $a0
	ld   b, $2a                                      ; $479f: $06 $2a
	ld   [bc], a                                     ; $47a1: $02
	rra                                              ; $47a2: $1f
	ld   [bc], a                                     ; $47a3: $02
	and  b                                           ; $47a4: $a0
	ld   [bc], a                                     ; $47a5: $02
	inc  hl                                          ; $47a6: $23
	ld   [$042a], sp                                 ; $47a7: $08 $2a $04
	and  b                                           ; $47aa: $a0
	ld   b, $2a                                      ; $47ab: $06 $2a
	ld   [bc], a                                     ; $47ad: $02
	rra                                              ; $47ae: $1f
	ld   [bc], a                                     ; $47af: $02
	and  b                                           ; $47b0: $a0
	ld   [bc], a                                     ; $47b1: $02
	jr   jr_0fe_47bc                                 ; $47b2: $18 $08

	jr   z, @+$12                                    ; $47b4: $28 $10

	jr   z, jr_0fe_47bc                              ; $47b6: $28 $04

	and  b                                           ; $47b8: $a0
	ld   b, $28                                      ; $47b9: $06 $28
	ld   [bc], a                                     ; $47bb: $02

jr_0fe_47bc:
	rra                                              ; $47bc: $1f
	ld   [bc], a                                     ; $47bd: $02
	and  b                                           ; $47be: $a0
	ld   [bc], a                                     ; $47bf: $02
	inc  hl                                          ; $47c0: $23
	ld   [$0428], sp                                 ; $47c1: $08 $28 $04
	and  b                                           ; $47c4: $a0
	ld   b, $28                                      ; $47c5: $06 $28
	ld   [bc], a                                     ; $47c7: $02
	rra                                              ; $47c8: $1f
	ld   [bc], a                                     ; $47c9: $02
	and  b                                           ; $47ca: $a0
	ld   [bc], a                                     ; $47cb: $02
	inc  hl                                          ; $47cc: $23
	ld   [$0428], sp                                 ; $47cd: $08 $28 $04
	and  b                                           ; $47d0: $a0
	ld   b, $28                                      ; $47d1: $06 $28
	ld   [bc], a                                     ; $47d3: $02
	rra                                              ; $47d4: $1f
	ld   [bc], a                                     ; $47d5: $02
	xor  l                                           ; $47d6: $ad
	nop                                              ; $47d7: $00
	ld   [$0900], sp                                 ; $47d8: $08 $00 $09
	nop                                              ; $47db: $00

jr_0fe_47dc:
	rra                                              ; $47dc: $1f
	jr   c, jr_0fe_47dc                              ; $47dd: $38 $fd

	di                                               ; $47df: $f3
	db   $fd                                         ; $47e0: $fd
	pop  af                                          ; $47e1: $f1
	xor  h                                           ; $47e2: $ac
	ld   bc, $0050                                   ; $47e3: $01 $50 $00
	cp   a                                           ; $47e6: $bf
	pop  af                                          ; $47e7: $f1
	db   $fd                                         ; $47e8: $fd
	pop  af                                          ; $47e9: $f1
	xor  h                                           ; $47ea: $ac
	ld   bc, $0098                                   ; $47eb: $01 $98 $00
	xor  h                                           ; $47ee: $ac
	ld   bc, $0050                                   ; $47ef: $01 $50 $00
	or   a                                           ; $47f2: $b7
	pop  af                                          ; $47f3: $f1
	xor  h                                           ; $47f4: $ac
	ld   bc, $0098                                   ; $47f5: $01 $98 $00
	pop  bc                                          ; $47f8: $c1
	inc  b                                           ; $47f9: $04
	and  b                                           ; $47fa: $a0
	add  hl, bc                                      ; $47fb: $09
	ld   l, b                                        ; $47fc: $68
	ld   bc, $06a0                                   ; $47fd: $01 $a0 $06
	sbc  c                                           ; $4800: $99
	ld   bc, $01a0                                   ; $4801: $01 $a0 $01
	sbc  c                                           ; $4804: $99
	ld   c, $fd                                      ; $4805: $0e $fd
	pop  af                                          ; $4807: $f1
	pop  bc                                          ; $4808: $c1
	inc  b                                           ; $4809: $04
	and  b                                           ; $480a: $a0
	add  hl, bc                                      ; $480b: $09
	ld   l, b                                        ; $480c: $68
	ld   bc, $06a0                                   ; $480d: $01 $a0 $06
	sbc  c                                           ; $4810: $99
	ld   bc, $01a0                                   ; $4811: $01 $a0 $01
	sbc  c                                           ; $4814: $99
	ld   [bc], a                                     ; $4815: $02
	or   e                                           ; $4816: $b3
	pop  af                                          ; $4817: $f1
	and  b                                           ; $4818: $a0
	dec  c                                           ; $4819: $0d
	rla                                              ; $481a: $17
	ld   bc, $0aa0                                   ; $481b: $01 $a0 $0a
	db   $10                                         ; $481e: $10
	ld   bc, $01a0                                   ; $481f: $01 $a0 $01
	nop                                              ; $4822: $00
	ld   c, $b0                                      ; $4823: $0e $b0
	di                                               ; $4825: $f3
	rst  $38                                         ; $4826: $ff
	rst  $38                                         ; $4827: $ff
	pop  bc                                          ; $4828: $c1
	inc  b                                           ; $4829: $04
	and  b                                           ; $482a: $a0
	add  hl, bc                                      ; $482b: $09
	ld   l, b                                        ; $482c: $68
	ld   bc, $06a0                                   ; $482d: $01 $a0 $06
	sbc  c                                           ; $4830: $99
	ld   bc, $01a0                                   ; $4831: $01 $a0 $01
	sbc  c                                           ; $4834: $99
	ld   b, $fd                                      ; $4835: $06 $fd
	ldh  a, [$c1]                                    ; $4837: $f0 $c1
	inc  bc                                          ; $4839: $03
	and  b                                           ; $483a: $a0
	rlca                                             ; $483b: $07
	ld   [bc], a                                     ; $483c: $02
	ld   bc, $01a0                                   ; $483d: $01 $a0 $01
	nop                                              ; $4840: $00
	ld   bc, $f0b3                                   ; $4841: $01 $b3 $f0
	db   $fd                                         ; $4844: $fd
	ldh  a, [$c1]                                    ; $4845: $f0 $c1
	inc  bc                                          ; $4847: $03
	and  b                                           ; $4848: $a0
	rlca                                             ; $4849: $07
	ld   [bc], a                                     ; $484a: $02
	ld   bc, $01a0                                   ; $484b: $01 $a0 $01
	nop                                              ; $484e: $00
	rlca                                             ; $484f: $07
	or   c                                           ; $4850: $b1
	ldh  a, [$fd]                                    ; $4851: $f0 $fd
	ldh  a, [$c1]                                    ; $4853: $f0 $c1
	inc  b                                           ; $4855: $04
	and  b                                           ; $4856: $a0
	add  hl, bc                                      ; $4857: $09
	ld   l, b                                        ; $4858: $68
	ld   bc, $06a0                                   ; $4859: $01 $a0 $06
	sbc  c                                           ; $485c: $99
	ld   bc, $01a0                                   ; $485d: $01 $a0 $01
	sbc  c                                           ; $4860: $99
	ld   b, $c1                                      ; $4861: $06 $c1
	inc  bc                                          ; $4863: $03
	and  b                                           ; $4864: $a0
	rlca                                             ; $4865: $07
	ld   [bc], a                                     ; $4866: $02
	ld   bc, $01a0                                   ; $4867: $01 $a0 $01
	nop                                              ; $486a: $00
	rlca                                             ; $486b: $07
	or   c                                           ; $486c: $b1
	ldh  a, [$ad]                                    ; $486d: $f0 $ad
	nop                                              ; $486f: $00
	pop  bc                                          ; $4870: $c1
	inc  b                                           ; $4871: $04
	and  b                                           ; $4872: $a0

jr_0fe_4873:
	add  hl, bc                                      ; $4873: $09
	ld   l, b                                        ; $4874: $68
	ld   bc, $06a0                                   ; $4875: $01 $a0 $06
	sbc  c                                           ; $4878: $99
	ld   bc, $01a0                                   ; $4879: $01 $a0 $01
	sbc  c                                           ; $487c: $99
	ld   b, $fd                                      ; $487d: $06 $fd
	ldh  a, [$c1]                                    ; $487f: $f0 $c1
	inc  bc                                          ; $4881: $03
	and  b                                           ; $4882: $a0
	rlca                                             ; $4883: $07
	ld   [bc], a                                     ; $4884: $02
	ld   bc, $01a0                                   ; $4885: $01 $a0 $01
	nop                                              ; $4888: $00
	ld   bc, $f0b3                                   ; $4889: $01 $b3 $f0
	db   $fd                                         ; $488c: $fd
	ldh  a, [$c1]                                    ; $488d: $f0 $c1
	inc  bc                                          ; $488f: $03
	and  b                                           ; $4890: $a0
	rlca                                             ; $4891: $07
	ld   [bc], a                                     ; $4892: $02
	ld   bc, $01a0                                   ; $4893: $01 $a0 $01
	nop                                              ; $4896: $00
	rlca                                             ; $4897: $07
	or   c                                           ; $4898: $b1
	ldh  a, [$c1]                                    ; $4899: $f0 $c1
	inc  b                                           ; $489b: $04
	and  b                                           ; $489c: $a0
	add  hl, bc                                      ; $489d: $09
	ld   l, b                                        ; $489e: $68
	ld   bc, $06a0                                   ; $489f: $01 $a0 $06
	sbc  c                                           ; $48a2: $99
	ld   bc, $01a0                                   ; $48a3: $01 $a0 $01
	sbc  c                                           ; $48a6: $99
	ld   b, $c1                                      ; $48a7: $06 $c1
	inc  bc                                          ; $48a9: $03
	and  b                                           ; $48aa: $a0
	rlca                                             ; $48ab: $07
	ld   [bc], a                                     ; $48ac: $02
	ld   bc, $01a0                                   ; $48ad: $01 $a0 $01
	nop                                              ; $48b0: $00
	rlca                                             ; $48b1: $07
	and  b                                           ; $48b2: $a0
	dec  c                                           ; $48b3: $0d
	rla                                              ; $48b4: $17
	ld   bc, $0aa0                                   ; $48b5: $01 $a0 $0a
	db   $10                                         ; $48b8: $10
	ld   bc, $01a0                                   ; $48b9: $01 $a0 $01
	nop                                              ; $48bc: $00
	ld   b, $c1                                      ; $48bd: $06 $c1
	inc  bc                                          ; $48bf: $03
	and  b                                           ; $48c0: $a0
	rlca                                             ; $48c1: $07
	ld   [bc], a                                     ; $48c2: $02
	ld   bc, $01a0                                   ; $48c3: $01 $a0 $01
	nop                                              ; $48c6: $00
	rlca                                             ; $48c7: $07
	xor  l                                           ; $48c8: $ad
	nop                                              ; $48c9: $00
	inc  b                                           ; $48ca: $04
	nop                                              ; $48cb: $00
	add  hl, bc                                      ; $48cc: $09
	nop                                              ; $48cd: $00
	rra                                              ; $48ce: $1f
	jr   nz, jr_0fe_4873                             ; $48cf: $20 $a2

	nop                                              ; $48d1: $00
	rst  ToBoot                                         ; $48d2: $c7
	ld   b, b                                        ; $48d3: $40
	and  e                                           ; $48d4: $a3
	ld   h, $a0                                      ; $48d5: $26 $a0
	ld   a, [bc]                                     ; $48d7: $0a
	ld   d, $10                                      ; $48d8: $16 $10
	dec  hl                                          ; $48da: $2b
	ld   c, $a0                                      ; $48db: $0e $a0
	dec  b                                           ; $48dd: $05
	dec  hl                                          ; $48de: $2b
	ld   [bc], a                                     ; $48df: $02
	and  b                                           ; $48e0: $a0
	ld   a, [bc]                                     ; $48e1: $0a
	dec  hl                                          ; $48e2: $2b
	db   $10                                         ; $48e3: $10
	ld   d, $08                                      ; $48e4: $16 $08
	add  hl, hl                                      ; $48e6: $29
	ld   c, $a0                                      ; $48e7: $0e $a0
	dec  b                                           ; $48e9: $05
	add  hl, hl                                      ; $48ea: $29
	ld   [bc], a                                     ; $48eb: $02
	and  b                                           ; $48ec: $a0
	ld   a, [bc]                                     ; $48ed: $0a
	daa                                              ; $48ee: $27
	db   $10                                         ; $48ef: $10
	add  hl, hl                                      ; $48f0: $29
	inc  b                                           ; $48f1: $04
	and  b                                           ; $48f2: $a0
	dec  b                                           ; $48f3: $05
	add  hl, hl                                      ; $48f4: $29
	inc  b                                           ; $48f5: $04
	and  b                                           ; $48f6: $a0
	ld   a, [bc]                                     ; $48f7: $0a
	dec  hl                                          ; $48f8: $2b
	inc  e                                           ; $48f9: $1c
	and  b                                           ; $48fa: $a0
	dec  b                                           ; $48fb: $05
	dec  hl                                          ; $48fc: $2b
	inc  b                                           ; $48fd: $04
	and  b                                           ; $48fe: $a0
	ld   a, [bc]                                     ; $48ff: $0a
	ld   d, $04                                      ; $4900: $16 $04
	and  b                                           ; $4902: $a0
	dec  b                                           ; $4903: $05
	ld   d, $04                                      ; $4904: $16 $04
	and  b                                           ; $4906: $a0
	ld   a, [bc]                                     ; $4907: $0a
	ld   hl, $a004                                   ; $4908: $21 $04 $a0
	dec  b                                           ; $490b: $05
	ld   hl, $a004                                   ; $490c: $21 $04 $a0
	ld   a, [bc]                                     ; $490f: $0a
	ld   d, $04                                      ; $4910: $16 $04
	and  b                                           ; $4912: $a0
	dec  b                                           ; $4913: $05
	ld   d, $04                                      ; $4914: $16 $04
	and  b                                           ; $4916: $a0
	ld   a, [bc]                                     ; $4917: $0a
	ld   hl, $a004                                   ; $4918: $21 $04 $a0
	dec  b                                           ; $491b: $05
	ld   hl, $a004                                   ; $491c: $21 $04 $a0
	ld   a, [bc]                                     ; $491f: $0a
	add  hl, de                                      ; $4920: $19
	ld   [$0418], sp                                 ; $4921: $08 $18 $04
	and  b                                           ; $4924: $a0
	dec  b                                           ; $4925: $05
	jr   jr_0fe_492c                                 ; $4926: $18 $04

	and  b                                           ; $4928: $a0
	ld   a, [bc]                                     ; $4929: $0a
	jr   jr_0fe_4934                                 ; $492a: $18 $08

jr_0fe_492c:
	rla                                              ; $492c: $17
	ld   [$1016], sp                                 ; $492d: $08 $16 $10
	dec  hl                                          ; $4930: $2b
	ld   c, $a0                                      ; $4931: $0e $a0
	dec  b                                           ; $4933: $05

jr_0fe_4934:
	dec  hl                                          ; $4934: $2b
	ld   [bc], a                                     ; $4935: $02
	and  b                                           ; $4936: $a0
	ld   a, [bc]                                     ; $4937: $0a
	dec  hl                                          ; $4938: $2b
	db   $10                                         ; $4939: $10
	ld   d, $08                                      ; $493a: $16 $08
	ld   sp, $a00e                                   ; $493c: $31 $0e $a0
	dec  b                                           ; $493f: $05
	ld   sp, $a002                                   ; $4940: $31 $02 $a0
	ld   a, [bc]                                     ; $4943: $0a
	dec  hl                                          ; $4944: $2b
	db   $10                                         ; $4945: $10
	add  hl, hl                                      ; $4946: $29
	inc  b                                           ; $4947: $04
	and  b                                           ; $4948: $a0
	dec  b                                           ; $4949: $05
	add  hl, hl                                      ; $494a: $29
	inc  b                                           ; $494b: $04
	and  b                                           ; $494c: $a0
	ld   a, [bc]                                     ; $494d: $0a
	dec  hl                                          ; $494e: $2b
	inc  e                                           ; $494f: $1c
	and  b                                           ; $4950: $a0
	dec  b                                           ; $4951: $05
	dec  hl                                          ; $4952: $2b
	inc  b                                           ; $4953: $04
	and  b                                           ; $4954: $a0
	ld   a, [bc]                                     ; $4955: $0a
	add  hl, de                                      ; $4956: $19
	db   $10                                         ; $4957: $10
	ld   [hl-], a                                    ; $4958: $32
	ld   c, $a0                                      ; $4959: $0e $a0
	dec  b                                           ; $495b: $05
	ld   [hl-], a                                    ; $495c: $32
	ld   [bc], a                                     ; $495d: $02
	and  b                                           ; $495e: $a0
	ld   a, [bc]                                     ; $495f: $0a
	ld   [hl-], a                                    ; $4960: $32
	db   $10                                         ; $4961: $10
	add  hl, de                                      ; $4962: $19
	ld   [$0e30], sp                                 ; $4963: $08 $30 $0e
	and  b                                           ; $4966: $a0
	dec  b                                           ; $4967: $05
	jr   nc, jr_0fe_496c                             ; $4968: $30 $02

	and  b                                           ; $496a: $a0
	ld   a, [bc]                                     ; $496b: $0a

jr_0fe_496c:
	ld   a, [hl+]                                    ; $496c: $2a
	db   $10                                         ; $496d: $10
	jr   nc, jr_0fe_4974                             ; $496e: $30 $04

	and  b                                           ; $4970: $a0
	dec  b                                           ; $4971: $05
	jr   nc, jr_0fe_4978                             ; $4972: $30 $04

jr_0fe_4974:
	and  b                                           ; $4974: $a0
	ld   a, [bc]                                     ; $4975: $0a
	ld   [hl-], a                                    ; $4976: $32
	inc  e                                           ; $4977: $1c

jr_0fe_4978:
	and  b                                           ; $4978: $a0
	dec  b                                           ; $4979: $05
	ld   [hl-], a                                    ; $497a: $32
	inc  b                                           ; $497b: $04
	and  b                                           ; $497c: $a0
	ld   a, [bc]                                     ; $497d: $0a
	add  hl, de                                      ; $497e: $19
	db   $10                                         ; $497f: $10
	ld   [hl-], a                                    ; $4980: $32
	ld   c, $a0                                      ; $4981: $0e $a0
	dec  b                                           ; $4983: $05
	ld   [hl-], a                                    ; $4984: $32
	ld   [bc], a                                     ; $4985: $02
	and  b                                           ; $4986: $a0
	ld   a, [bc]                                     ; $4987: $0a
	ld   [hl-], a                                    ; $4988: $32
	db   $10                                         ; $4989: $10
	add  hl, de                                      ; $498a: $19
	ld   [$0e34], sp                                 ; $498b: $08 $34 $0e
	and  b                                           ; $498e: $a0
	dec  b                                           ; $498f: $05
	inc  [hl]                                        ; $4990: $34
	ld   [bc], a                                     ; $4991: $02
	and  b                                           ; $4992: $a0
	ld   a, [bc]                                     ; $4993: $0a
	ld   [hl-], a                                    ; $4994: $32
	db   $10                                         ; $4995: $10
	jr   nc, jr_0fe_499c                             ; $4996: $30 $04

	and  b                                           ; $4998: $a0
	dec  b                                           ; $4999: $05
	jr   nc, jr_0fe_49a0                             ; $499a: $30 $04

jr_0fe_499c:
	and  b                                           ; $499c: $a0
	ld   a, [bc]                                     ; $499d: $0a
	ld   [hl-], a                                    ; $499e: $32
	ld   e, d                                        ; $499f: $5a

jr_0fe_49a0:
	and  b                                           ; $49a0: $a0
	dec  b                                           ; $49a1: $05
	ld   [hl-], a                                    ; $49a2: $32
	ld   b, $fd                                      ; $49a3: $06 $fd
	di                                               ; $49a5: $f3
	rra                                              ; $49a6: $1f
	ld   a, b                                        ; $49a7: $78
	and  b                                           ; $49a8: $a0
	ld   a, [bc]                                     ; $49a9: $0a
	inc  [hl]                                        ; $49aa: $34
	inc  b                                           ; $49ab: $04
	ld   [hl], $04                                   ; $49ac: $36 $04
	scf                                              ; $49ae: $37
	ld   [$0839], sp                                 ; $49af: $08 $39 $08
	dec  sp                                          ; $49b2: $3b
	ld   [$1046], sp                                 ; $49b3: $08 $46 $10
	ld   b, d                                        ; $49b6: $42
	ld   [$3044], sp                                 ; $49b7: $08 $44 $30
	ld   b, h                                        ; $49ba: $44
	inc  b                                           ; $49bb: $04
	ld   b, d                                        ; $49bc: $42
	inc  b                                           ; $49bd: $04
	ld   b, c                                        ; $49be: $41
	inc  b                                           ; $49bf: $04
	dec  sp                                          ; $49c0: $3b
	inc  b                                           ; $49c1: $04
	add  hl, sp                                      ; $49c2: $39
	inc  b                                           ; $49c3: $04
	scf                                              ; $49c4: $37
	inc  b                                           ; $49c5: $04
	ld   [hl], $04                                   ; $49c6: $36 $04
	inc  [hl]                                        ; $49c8: $34
	inc  b                                           ; $49c9: $04
	jr   nz, jr_0fe_49ec                             ; $49ca: $20 $20

	jr   nz, jr_0fe_49d2                             ; $49cc: $20 $04

	and  b                                           ; $49ce: $a0
	dec  b                                           ; $49cf: $05
	jr   nz, jr_0fe_49d6                             ; $49d0: $20 $04

jr_0fe_49d2:
	and  b                                           ; $49d2: $a0
	ld   a, [bc]                                     ; $49d3: $0a
	ld   [hl+], a                                    ; $49d4: $22
	inc  b                                           ; $49d5: $04

jr_0fe_49d6:
	and  b                                           ; $49d6: $a0
	dec  b                                           ; $49d7: $05
	ld   [hl+], a                                    ; $49d8: $22
	inc  b                                           ; $49d9: $04
	and  b                                           ; $49da: $a0
	ld   a, [bc]                                     ; $49db: $0a
	inc  h                                           ; $49dc: $24
	inc  b                                           ; $49dd: $04
	and  b                                           ; $49de: $a0
	dec  b                                           ; $49df: $05
	inc  h                                           ; $49e0: $24
	inc  b                                           ; $49e1: $04
	and  b                                           ; $49e2: $a0
	ld   a, [bc]                                     ; $49e3: $0a
	add  hl, de                                      ; $49e4: $19
	db   $10                                         ; $49e5: $10
	rla                                              ; $49e6: $17
	inc  b                                           ; $49e7: $04
	and  b                                           ; $49e8: $a0
	dec  b                                           ; $49e9: $05
	rla                                              ; $49ea: $17
	inc  b                                           ; $49eb: $04

jr_0fe_49ec:
	and  b                                           ; $49ec: $a0
	ld   a, [bc]                                     ; $49ed: $0a
	rla                                              ; $49ee: $17
	jr   z, @+$3b                                    ; $49ef: $28 $39

	inc  b                                           ; $49f1: $04
	dec  sp                                          ; $49f2: $3b
	inc  b                                           ; $49f3: $04
	ld   b, b                                        ; $49f4: $40
	ld   [$083b], sp                                 ; $49f5: $08 $3b $08
	add  hl, sp                                      ; $49f8: $39
	ld   [$103b], sp                                 ; $49f9: $08 $3b $10
	ld   [hl], $08                                   ; $49fc: $36 $08
	inc  [hl]                                        ; $49fe: $34
	jr   nc, jr_0fe_4a18                             ; $49ff: $30 $17

	db   $10                                         ; $4a01: $10
	add  hl, de                                      ; $4a02: $19
	db   $10                                         ; $4a03: $10
	dec  de                                          ; $4a04: $1b
	jr   nz, jr_0fe_4a20                             ; $4a05: $20 $19

	inc  b                                           ; $4a07: $04
	and  b                                           ; $4a08: $a0
	dec  b                                           ; $4a09: $05
	add  hl, de                                      ; $4a0a: $19
	inc  b                                           ; $4a0b: $04
	and  b                                           ; $4a0c: $a0
	ld   a, [bc]                                     ; $4a0d: $0a
	dec  de                                          ; $4a0e: $1b
	inc  b                                           ; $4a0f: $04
	and  b                                           ; $4a10: $a0
	dec  b                                           ; $4a11: $05
	dec  de                                          ; $4a12: $1b
	inc  b                                           ; $4a13: $04
	and  b                                           ; $4a14: $a0
	ld   a, [bc]                                     ; $4a15: $0a
	ld   h, $04                                      ; $4a16: $26 $04

jr_0fe_4a18:
	and  b                                           ; $4a18: $a0
	dec  b                                           ; $4a19: $05
	ld   h, $04                                      ; $4a1a: $26 $04
	and  b                                           ; $4a1c: $a0
	ld   a, [bc]                                     ; $4a1d: $0a
	ld   [hl+], a                                    ; $4a1e: $22
	db   $10                                         ; $4a1f: $10

jr_0fe_4a20:
	ld   hl, $a004                                   ; $4a20: $21 $04 $a0
	dec  b                                           ; $4a23: $05
	ld   hl, $a004                                   ; $4a24: $21 $04 $a0
	ld   a, [bc]                                     ; $4a27: $0a
	ld   hl, $3428                                   ; $4a28: $21 $28 $34
	inc  b                                           ; $4a2b: $04
	ld   [hl], $04                                   ; $4a2c: $36 $04
	scf                                              ; $4a2e: $37
	ld   [$0839], sp                                 ; $4a2f: $08 $39 $08
	dec  sp                                          ; $4a32: $3b
	ld   [$1046], sp                                 ; $4a33: $08 $46 $10
	ld   b, d                                        ; $4a36: $42
	ld   [$2c44], sp                                 ; $4a37: $08 $44 $2c
	rra                                              ; $4a3a: $1f
	inc  b                                           ; $4a3b: $04
	inc  [hl]                                        ; $4a3c: $34
	ld   c, $a0                                      ; $4a3d: $0e $a0
	dec  b                                           ; $4a3f: $05
	inc  [hl]                                        ; $4a40: $34
	ld   [bc], a                                     ; $4a41: $02
	and  b                                           ; $4a42: $a0
	ld   a, [bc]                                     ; $4a43: $0a
	ld   b, e                                        ; $4a44: $43
	ld   [bc], a                                     ; $4a45: $02
	ld   b, h                                        ; $4a46: $44
	inc  c                                           ; $4a47: $0c
	and  b                                           ; $4a48: $a0
	dec  b                                           ; $4a49: $05
	ld   b, h                                        ; $4a4a: $44
	ld   [bc], a                                     ; $4a4b: $02
	and  b                                           ; $4a4c: $a0
	ld   a, [bc]                                     ; $4a4d: $0a
	ld   b, h                                        ; $4a4e: $44
	jr   nz, jr_0fe_4a9a                             ; $4a4f: $20 $49

	ld   [$0847], sp                                 ; $4a51: $08 $47 $08
	ld   b, [hl]                                     ; $4a54: $46
	ld   [$1847], sp                                 ; $4a55: $08 $47 $18
	ld   b, d                                        ; $4a58: $42
	db   $10                                         ; $4a59: $10
	ld   b, b                                        ; $4a5a: $40
	db   $10                                         ; $4a5b: $10
	dec  sp                                          ; $4a5c: $3b
	db   $10                                         ; $4a5d: $10
	add  hl, sp                                      ; $4a5e: $39
	ld   [$083b], sp                                 ; $4a5f: $08 $3b $08
	ld   b, b                                        ; $4a62: $40
	ld   [$0442], sp                                 ; $4a63: $08 $42 $04
	and  b                                           ; $4a66: $a0
	dec  b                                           ; $4a67: $05
	ld   b, d                                        ; $4a68: $42
	inc  b                                           ; $4a69: $04
	rra                                              ; $4a6a: $1f
	ld   [$0aa0], sp                                 ; $4a6b: $08 $a0 $0a
	ld   [hl], $08                                   ; $4a6e: $36 $08
	scf                                              ; $4a70: $37
	ld   [$4434], sp                                 ; $4a71: $08 $34 $44
	rra                                              ; $4a74: $1f
	inc  b                                           ; $4a75: $04
	inc  [hl]                                        ; $4a76: $34
	ld   b, $a0                                      ; $4a77: $06 $a0
	dec  b                                           ; $4a79: $05
	inc  [hl]                                        ; $4a7a: $34
	ld   [bc], a                                     ; $4a7b: $02
	and  b                                           ; $4a7c: $a0
	ld   a, [bc]                                     ; $4a7d: $0a
	ld   [hl-], a                                    ; $4a7e: $32
	ld   [bc], a                                     ; $4a7f: $02
	and  b                                           ; $4a80: $a0
	dec  b                                           ; $4a81: $05
	ld   [hl-], a                                    ; $4a82: $32
	inc  b                                           ; $4a83: $04
	rra                                              ; $4a84: $1f
	ld   [bc], a                                     ; $4a85: $02
	and  b                                           ; $4a86: $a0
	ld   a, [bc]                                     ; $4a87: $0a
	inc  d                                           ; $4a88: $14
	inc  b                                           ; $4a89: $04
	inc  d                                           ; $4a8a: $14
	inc  b                                           ; $4a8b: $04
	dec  de                                          ; $4a8c: $1b
	inc  b                                           ; $4a8d: $04
	and  b                                           ; $4a8e: $a0
	dec  b                                           ; $4a8f: $05
	dec  de                                          ; $4a90: $1b
	inc  b                                           ; $4a91: $04
	and  b                                           ; $4a92: $a0
	ld   a, [bc]                                     ; $4a93: $0a
	inc  d                                           ; $4a94: $14
	inc  b                                           ; $4a95: $04
	and  b                                           ; $4a96: $a0
	dec  b                                           ; $4a97: $05
	inc  d                                           ; $4a98: $14
	inc  b                                           ; $4a99: $04

jr_0fe_4a9a:
	and  b                                           ; $4a9a: $a0
	ld   a, [bc]                                     ; $4a9b: $0a
	ld   sp, $a006                                   ; $4a9c: $31 $06 $a0
	dec  b                                           ; $4a9f: $05
	ld   sp, $a002                                   ; $4aa0: $31 $02 $a0
	ld   a, [bc]                                     ; $4aa3: $0a
	dec  hl                                          ; $4aa4: $2b
	ld   [bc], a                                     ; $4aa5: $02
	and  b                                           ; $4aa6: $a0
	dec  b                                           ; $4aa7: $05
	dec  hl                                          ; $4aa8: $2b
	inc  b                                           ; $4aa9: $04
	rra                                              ; $4aaa: $1f
	ld   [bc], a                                     ; $4aab: $02
	and  b                                           ; $4aac: $a0
	ld   a, [bc]                                     ; $4aad: $0a
	inc  d                                           ; $4aae: $14
	inc  b                                           ; $4aaf: $04
	and  b                                           ; $4ab0: $a0
	dec  b                                           ; $4ab1: $05
	inc  d                                           ; $4ab2: $14
	inc  b                                           ; $4ab3: $04
	rra                                              ; $4ab4: $1f
	ld   [$0aa0], sp                                 ; $4ab5: $08 $a0 $0a
	inc  d                                           ; $4ab8: $14
	inc  b                                           ; $4ab9: $04
	ld   d, $04                                      ; $4aba: $16 $04
	rla                                              ; $4abc: $17
	inc  b                                           ; $4abd: $04
	add  hl, de                                      ; $4abe: $19
	inc  b                                           ; $4abf: $04
	rla                                              ; $4ac0: $17
	inc  b                                           ; $4ac1: $04
	ld   d, $04                                      ; $4ac2: $16 $04
	rla                                              ; $4ac4: $17
	ld   [$05a0], sp                                 ; $4ac5: $08 $a0 $05
	rla                                              ; $4ac8: $17
	inc  b                                           ; $4ac9: $04
	rra                                              ; $4aca: $1f
	inc  d                                           ; $4acb: $14
	and  b                                           ; $4acc: $a0
	ld   a, [bc]                                     ; $4acd: $0a
	add  hl, hl                                      ; $4ace: $29
	ld   b, $a0                                      ; $4acf: $06 $a0
	dec  b                                           ; $4ad1: $05
	add  hl, hl                                      ; $4ad2: $29
	ld   [bc], a                                     ; $4ad3: $02
	and  b                                           ; $4ad4: $a0
	ld   a, [bc]                                     ; $4ad5: $0a
	daa                                              ; $4ad6: $27
	ld   [bc], a                                     ; $4ad7: $02
	and  b                                           ; $4ad8: $a0
	dec  b                                           ; $4ad9: $05
	daa                                              ; $4ada: $27
	inc  b                                           ; $4adb: $04
	rra                                              ; $4adc: $1f
	ld   [bc], a                                     ; $4add: $02
	and  b                                           ; $4ade: $a0
	ld   a, [bc]                                     ; $4adf: $0a
	inc  d                                           ; $4ae0: $14
	inc  b                                           ; $4ae1: $04
	inc  d                                           ; $4ae2: $14
	inc  b                                           ; $4ae3: $04
	dec  de                                          ; $4ae4: $1b
	inc  b                                           ; $4ae5: $04
	and  b                                           ; $4ae6: $a0
	dec  b                                           ; $4ae7: $05
	dec  de                                          ; $4ae8: $1b
	inc  b                                           ; $4ae9: $04
	and  b                                           ; $4aea: $a0
	ld   a, [bc]                                     ; $4aeb: $0a
	inc  d                                           ; $4aec: $14
	inc  b                                           ; $4aed: $04
	and  b                                           ; $4aee: $a0
	dec  b                                           ; $4aef: $05
	inc  d                                           ; $4af0: $14
	inc  b                                           ; $4af1: $04
	and  b                                           ; $4af2: $a0
	ld   a, [bc]                                     ; $4af3: $0a
	daa                                              ; $4af4: $27
	ld   b, $a0                                      ; $4af5: $06 $a0
	dec  b                                           ; $4af7: $05
	daa                                              ; $4af8: $27
	ld   [bc], a                                     ; $4af9: $02
	and  b                                           ; $4afa: $a0
	ld   a, [bc]                                     ; $4afb: $0a
	dec  h                                           ; $4afc: $25
	ld   [bc], a                                     ; $4afd: $02
	and  b                                           ; $4afe: $a0
	dec  b                                           ; $4aff: $05
	dec  h                                           ; $4b00: $25
	inc  b                                           ; $4b01: $04
	rra                                              ; $4b02: $1f
	ld   [bc], a                                     ; $4b03: $02
	and  b                                           ; $4b04: $a0
	ld   a, [bc]                                     ; $4b05: $0a
	inc  d                                           ; $4b06: $14
	inc  b                                           ; $4b07: $04
	and  b                                           ; $4b08: $a0
	dec  b                                           ; $4b09: $05
	inc  d                                           ; $4b0a: $14
	inc  b                                           ; $4b0b: $04
	rra                                              ; $4b0c: $1f
	ld   [$0aa0], sp                                 ; $4b0d: $08 $a0 $0a
	inc  d                                           ; $4b10: $14
	inc  b                                           ; $4b11: $04
	ld   d, $04                                      ; $4b12: $16 $04
	rla                                              ; $4b14: $17
	inc  b                                           ; $4b15: $04
	ld   d, $04                                      ; $4b16: $16 $04
	rla                                              ; $4b18: $17
	inc  b                                           ; $4b19: $04
	add  hl, de                                      ; $4b1a: $19
	inc  b                                           ; $4b1b: $04
	ld   a, [de]                                     ; $4b1c: $1a
	ld   [$05a0], sp                                 ; $4b1d: $08 $a0 $05
	ld   a, [de]                                     ; $4b20: $1a
	inc  b                                           ; $4b21: $04
	rra                                              ; $4b22: $1f
	inc  d                                           ; $4b23: $14
	and  b                                           ; $4b24: $a0
	ld   a, [bc]                                     ; $4b25: $0a
	inc  [hl]                                        ; $4b26: $34
	ld   b, $a0                                      ; $4b27: $06 $a0
	dec  b                                           ; $4b29: $05
	inc  [hl]                                        ; $4b2a: $34
	ld   [bc], a                                     ; $4b2b: $02
	and  b                                           ; $4b2c: $a0
	ld   a, [bc]                                     ; $4b2d: $0a
	ld   [hl-], a                                    ; $4b2e: $32
	ld   [bc], a                                     ; $4b2f: $02
	and  b                                           ; $4b30: $a0
	dec  b                                           ; $4b31: $05
	ld   [hl-], a                                    ; $4b32: $32
	inc  b                                           ; $4b33: $04
	rra                                              ; $4b34: $1f
	ld   [bc], a                                     ; $4b35: $02
	and  b                                           ; $4b36: $a0
	ld   a, [bc]                                     ; $4b37: $0a
	inc  d                                           ; $4b38: $14
	inc  b                                           ; $4b39: $04
	inc  d                                           ; $4b3a: $14
	inc  b                                           ; $4b3b: $04
	dec  de                                          ; $4b3c: $1b
	inc  b                                           ; $4b3d: $04
	and  b                                           ; $4b3e: $a0
	dec  b                                           ; $4b3f: $05
	dec  de                                          ; $4b40: $1b
	inc  b                                           ; $4b41: $04
	and  b                                           ; $4b42: $a0
	ld   a, [bc]                                     ; $4b43: $0a
	inc  d                                           ; $4b44: $14
	inc  b                                           ; $4b45: $04
	and  b                                           ; $4b46: $a0
	dec  b                                           ; $4b47: $05
	inc  d                                           ; $4b48: $14
	inc  b                                           ; $4b49: $04
	and  b                                           ; $4b4a: $a0
	ld   a, [bc]                                     ; $4b4b: $0a
	ld   sp, $a006                                   ; $4b4c: $31 $06 $a0
	dec  b                                           ; $4b4f: $05
	ld   sp, $a002                                   ; $4b50: $31 $02 $a0
	ld   a, [bc]                                     ; $4b53: $0a
	dec  hl                                          ; $4b54: $2b
	ld   [bc], a                                     ; $4b55: $02
	and  b                                           ; $4b56: $a0
	dec  b                                           ; $4b57: $05
	dec  hl                                          ; $4b58: $2b
	inc  b                                           ; $4b59: $04
	rra                                              ; $4b5a: $1f
	ld   [bc], a                                     ; $4b5b: $02
	and  b                                           ; $4b5c: $a0
	ld   a, [bc]                                     ; $4b5d: $0a
	inc  d                                           ; $4b5e: $14
	inc  b                                           ; $4b5f: $04
	and  b                                           ; $4b60: $a0
	dec  b                                           ; $4b61: $05
	inc  d                                           ; $4b62: $14
	inc  b                                           ; $4b63: $04
	rra                                              ; $4b64: $1f
	dec  bc                                          ; $4b65: $0b
	and  b                                           ; $4b66: $a0
	ld   a, [bc]                                     ; $4b67: $0a
	add  hl, hl                                      ; $4b68: $29
	dec  bc                                          ; $4b69: $0b
	daa                                              ; $4b6a: $27
	ld   a, [bc]                                     ; $4b6b: $0a
	inc  h                                           ; $4b6c: $24
	inc  d                                           ; $4b6d: $14
	and  b                                           ; $4b6e: $a0
	dec  b                                           ; $4b6f: $05
	inc  h                                           ; $4b70: $24
	inc  b                                           ; $4b71: $04
	and  b                                           ; $4b72: $a0
	ld   a, [bc]                                     ; $4b73: $0a
	inc  h                                           ; $4b74: $24
	inc  d                                           ; $4b75: $14
	and  b                                           ; $4b76: $a0
	dec  b                                           ; $4b77: $05
	inc  h                                           ; $4b78: $24
	inc  b                                           ; $4b79: $04
	and  b                                           ; $4b7a: $a0
	ld   a, [bc]                                     ; $4b7b: $0a
	ld   h, $2c                                      ; $4b7c: $26 $2c
	and  b                                           ; $4b7e: $a0
	dec  b                                           ; $4b7f: $05
	ld   h, $04                                      ; $4b80: $26 $04
	and  b                                           ; $4b82: $a0
	ld   a, [bc]                                     ; $4b83: $0a
	inc  d                                           ; $4b84: $14
	inc  b                                           ; $4b85: $04
	and  b                                           ; $4b86: $a0
	dec  b                                           ; $4b87: $05
	inc  d                                           ; $4b88: $14
	inc  b                                           ; $4b89: $04
	and  b                                           ; $4b8a: $a0
	ld   a, [bc]                                     ; $4b8b: $0a
	dec  bc                                          ; $4b8c: $0b
	inc  b                                           ; $4b8d: $04
	and  b                                           ; $4b8e: $a0
	dec  b                                           ; $4b8f: $05
	dec  bc                                          ; $4b90: $0b
	inc  b                                           ; $4b91: $04
	and  b                                           ; $4b92: $a0
	ld   a, [bc]                                     ; $4b93: $0a
	inc  d                                           ; $4b94: $14
	inc  b                                           ; $4b95: $04
	and  b                                           ; $4b96: $a0
	dec  b                                           ; $4b97: $05
	inc  d                                           ; $4b98: $14
	inc  b                                           ; $4b99: $04
	and  b                                           ; $4b9a: $a0
	ld   a, [bc]                                     ; $4b9b: $0a
	dec  bc                                          ; $4b9c: $0b
	inc  b                                           ; $4b9d: $04
	and  b                                           ; $4b9e: $a0
	dec  b                                           ; $4b9f: $05
	dec  bc                                          ; $4ba0: $0b
	inc  b                                           ; $4ba1: $04
	or   b                                           ; $4ba2: $b0
	di                                               ; $4ba3: $f3
	rst  $38                                         ; $4ba4: $ff
	rst  $38                                         ; $4ba5: $ff
	inc  b                                           ; $4ba6: $04
	nop                                              ; $4ba7: $00
	add  hl, bc                                      ; $4ba8: $09
	nop                                              ; $4ba9: $00
	and  d                                           ; $4baa: $a2
	nop                                              ; $4bab: $00
	rst  ToBoot                                         ; $4bac: $c7
	ld   c, b                                        ; $4bad: $48
	and  e                                           ; $4bae: $a3
	inc  h                                           ; $4baf: $24
	and  b                                           ; $4bb0: $a0
	dec  c                                           ; $4bb1: $0d
	jr   nz, jr_0fe_4bb8                             ; $4bb2: $20 $04

	ld   hl, $2204                                   ; $4bb4: $21 $04 $22
	inc  b                                           ; $4bb7: $04

jr_0fe_4bb8:
	inc  hl                                          ; $4bb8: $23
	inc  b                                           ; $4bb9: $04
	ld   [hl+], a                                    ; $4bba: $22
	inc  b                                           ; $4bbb: $04
	inc  hl                                          ; $4bbc: $23
	inc  b                                           ; $4bbd: $04
	inc  h                                           ; $4bbe: $24
	inc  b                                           ; $4bbf: $04
	dec  h                                           ; $4bc0: $25
	inc  b                                           ; $4bc1: $04
	ld   h, $10                                      ; $4bc2: $26 $10
	inc  [hl]                                        ; $4bc4: $34
	ld   c, $a0                                      ; $4bc5: $0e $a0
	dec  b                                           ; $4bc7: $05
	inc  [hl]                                        ; $4bc8: $34
	ld   [bc], a                                     ; $4bc9: $02
	and  b                                           ; $4bca: $a0
	dec  c                                           ; $4bcb: $0d
	inc  [hl]                                        ; $4bcc: $34
	db   $10                                         ; $4bcd: $10
	and  b                                           ; $4bce: $a0
	dec  b                                           ; $4bcf: $05
	inc  [hl]                                        ; $4bd0: $34
	inc  b                                           ; $4bd1: $04
	rra                                              ; $4bd2: $1f
	inc  b                                           ; $4bd3: $04
	and  b                                           ; $4bd4: $a0
	dec  c                                           ; $4bd5: $0d
	ld   [hl-], a                                    ; $4bd6: $32
	ld   c, $a0                                      ; $4bd7: $0e $a0
	dec  b                                           ; $4bd9: $05
	ld   [hl-], a                                    ; $4bda: $32
	ld   [bc], a                                     ; $4bdb: $02
	and  b                                           ; $4bdc: $a0
	ld   a, [bc]                                     ; $4bdd: $0a
	jr   nc, jr_0fe_4bf0                             ; $4bde: $30 $10

	ld   [hl-], a                                    ; $4be0: $32
	inc  b                                           ; $4be1: $04
	and  b                                           ; $4be2: $a0
	dec  b                                           ; $4be3: $05
	ld   [hl-], a                                    ; $4be4: $32
	inc  b                                           ; $4be5: $04
	and  b                                           ; $4be6: $a0
	dec  c                                           ; $4be7: $0d
	inc  [hl]                                        ; $4be8: $34
	ld   e, $a0                                      ; $4be9: $1e $a0
	dec  b                                           ; $4beb: $05
	inc  [hl]                                        ; $4bec: $34
	inc  b                                           ; $4bed: $04
	rra                                              ; $4bee: $1f
	ld   c, [hl]                                     ; $4bef: $4e

jr_0fe_4bf0:
	and  b                                           ; $4bf0: $a0
	dec  c                                           ; $4bf1: $0d
	inc  [hl]                                        ; $4bf2: $34
	ld   c, $a0                                      ; $4bf3: $0e $a0
	dec  b                                           ; $4bf5: $05
	inc  [hl]                                        ; $4bf6: $34
	ld   [bc], a                                     ; $4bf7: $02
	and  b                                           ; $4bf8: $a0
	dec  c                                           ; $4bf9: $0d
	inc  [hl]                                        ; $4bfa: $34
	db   $10                                         ; $4bfb: $10
	and  b                                           ; $4bfc: $a0
	dec  b                                           ; $4bfd: $05
	inc  [hl]                                        ; $4bfe: $34
	inc  b                                           ; $4bff: $04
	rra                                              ; $4c00: $1f
	inc  b                                           ; $4c01: $04
	and  b                                           ; $4c02: $a0
	dec  c                                           ; $4c03: $0d
	ld   [hl], $0e                                   ; $4c04: $36 $0e
	and  b                                           ; $4c06: $a0
	dec  b                                           ; $4c07: $05
	ld   [hl], $02                                   ; $4c08: $36 $02
	and  b                                           ; $4c0a: $a0
	dec  c                                           ; $4c0b: $0d
	inc  [hl]                                        ; $4c0c: $34
	db   $10                                         ; $4c0d: $10
	ld   [hl-], a                                    ; $4c0e: $32
	inc  b                                           ; $4c0f: $04
	and  b                                           ; $4c10: $a0
	dec  b                                           ; $4c11: $05
	ld   [hl-], a                                    ; $4c12: $32
	inc  b                                           ; $4c13: $04
	and  b                                           ; $4c14: $a0
	dec  c                                           ; $4c15: $0d
	inc  [hl]                                        ; $4c16: $34
	ld   e, $a0                                      ; $4c17: $1e $a0
	dec  b                                           ; $4c19: $05
	inc  [hl]                                        ; $4c1a: $34
	inc  b                                           ; $4c1b: $04
	rra                                              ; $4c1c: $1f
	ld   c, $a0                                      ; $4c1d: $0e $a0
	dec  c                                           ; $4c1f: $0d
	scf                                              ; $4c20: $37
	ld   c, $a0                                      ; $4c21: $0e $a0
	dec  b                                           ; $4c23: $05
	scf                                              ; $4c24: $37
	ld   [bc], a                                     ; $4c25: $02
	and  b                                           ; $4c26: $a0
	dec  c                                           ; $4c27: $0d
	scf                                              ; $4c28: $37
	db   $10                                         ; $4c29: $10
	and  b                                           ; $4c2a: $a0
	dec  b                                           ; $4c2b: $05
	scf                                              ; $4c2c: $37
	inc  b                                           ; $4c2d: $04
	rra                                              ; $4c2e: $1f
	inc  b                                           ; $4c2f: $04
	and  b                                           ; $4c30: $a0
	dec  c                                           ; $4c31: $0d
	dec  [hl]                                        ; $4c32: $35
	ld   c, $a0                                      ; $4c33: $0e $a0
	dec  b                                           ; $4c35: $05
	dec  [hl]                                        ; $4c36: $35
	ld   [bc], a                                     ; $4c37: $02
	and  b                                           ; $4c38: $a0
	dec  c                                           ; $4c39: $0d
	inc  sp                                          ; $4c3a: $33
	db   $10                                         ; $4c3b: $10
	dec  [hl]                                        ; $4c3c: $35
	inc  b                                           ; $4c3d: $04
	and  b                                           ; $4c3e: $a0
	dec  b                                           ; $4c3f: $05
	dec  [hl]                                        ; $4c40: $35
	inc  b                                           ; $4c41: $04
	and  b                                           ; $4c42: $a0
	dec  c                                           ; $4c43: $0d
	scf                                              ; $4c44: $37
	ld   e, $a0                                      ; $4c45: $1e $a0
	dec  b                                           ; $4c47: $05
	scf                                              ; $4c48: $37
	inc  b                                           ; $4c49: $04
	rra                                              ; $4c4a: $1f
	ld   c, $a0                                      ; $4c4b: $0e $a0
	dec  c                                           ; $4c4d: $0d
	scf                                              ; $4c4e: $37
	ld   c, $a0                                      ; $4c4f: $0e $a0
	dec  b                                           ; $4c51: $05
	scf                                              ; $4c52: $37
	ld   [bc], a                                     ; $4c53: $02
	and  b                                           ; $4c54: $a0
	dec  c                                           ; $4c55: $0d
	scf                                              ; $4c56: $37
	db   $10                                         ; $4c57: $10
	and  b                                           ; $4c58: $a0
	dec  b                                           ; $4c59: $05
	scf                                              ; $4c5a: $37
	inc  b                                           ; $4c5b: $04
	rra                                              ; $4c5c: $1f
	inc  b                                           ; $4c5d: $04
	and  b                                           ; $4c5e: $a0
	dec  c                                           ; $4c5f: $0d
	add  hl, sp                                      ; $4c60: $39
	ld   c, $a0                                      ; $4c61: $0e $a0
	dec  b                                           ; $4c63: $05
	add  hl, sp                                      ; $4c64: $39
	ld   [bc], a                                     ; $4c65: $02
	and  b                                           ; $4c66: $a0
	dec  c                                           ; $4c67: $0d
	scf                                              ; $4c68: $37
	db   $10                                         ; $4c69: $10
	dec  [hl]                                        ; $4c6a: $35
	inc  b                                           ; $4c6b: $04
	and  b                                           ; $4c6c: $a0
	dec  b                                           ; $4c6d: $05
	dec  [hl]                                        ; $4c6e: $35
	inc  b                                           ; $4c6f: $04
	and  b                                           ; $4c70: $a0
	dec  c                                           ; $4c71: $0d
	scf                                              ; $4c72: $37
	ld   e, d                                        ; $4c73: $5a
	and  b                                           ; $4c74: $a0
	dec  b                                           ; $4c75: $05
	scf                                              ; $4c76: $37
	ld   b, $fd                                      ; $4c77: $06 $fd
	di                                               ; $4c79: $f3
	and  b                                           ; $4c7a: $a0
	dec  c                                           ; $4c7b: $0d
	daa                                              ; $4c7c: $27
	jr   nz, jr_0fe_4ca5                             ; $4c7d: $20 $26

	inc  b                                           ; $4c7f: $04
	and  b                                           ; $4c80: $a0
	dec  b                                           ; $4c81: $05
	ld   h, $04                                      ; $4c82: $26 $04
	and  b                                           ; $4c84: $a0
	dec  c                                           ; $4c85: $0d
	daa                                              ; $4c86: $27
	inc  b                                           ; $4c87: $04
	and  b                                           ; $4c88: $a0
	dec  b                                           ; $4c89: $05
	daa                                              ; $4c8a: $27
	inc  b                                           ; $4c8b: $04
	and  b                                           ; $4c8c: $a0
	dec  c                                           ; $4c8d: $0d
	ld   [hl-], a                                    ; $4c8e: $32
	inc  b                                           ; $4c8f: $04
	and  b                                           ; $4c90: $a0
	dec  b                                           ; $4c91: $05
	ld   [hl-], a                                    ; $4c92: $32
	inc  b                                           ; $4c93: $04
	and  b                                           ; $4c94: $a0
	dec  c                                           ; $4c95: $0d
	ld   h, $10                                      ; $4c96: $26 $10
	inc  h                                           ; $4c98: $24
	inc  b                                           ; $4c99: $04
	and  b                                           ; $4c9a: $a0
	dec  b                                           ; $4c9b: $05
	inc  h                                           ; $4c9c: $24
	inc  b                                           ; $4c9d: $04
	and  b                                           ; $4c9e: $a0

jr_0fe_4c9f:
	dec  c                                           ; $4c9f: $0d
	inc  h                                           ; $4ca0: $24
	inc  l                                           ; $4ca1: $2c
	and  b                                           ; $4ca2: $a0
	dec  b                                           ; $4ca3: $05
	inc  h                                           ; $4ca4: $24

jr_0fe_4ca5:
	inc  b                                           ; $4ca5: $04
	inc  [hl]                                        ; $4ca6: $34
	inc  b                                           ; $4ca7: $04
	ld   [hl], $04                                   ; $4ca8: $36 $04
	scf                                              ; $4caa: $37
	ld   [$0839], sp                                 ; $4cab: $08 $39 $08
	dec  sp                                          ; $4cae: $3b
	ld   [$1046], sp                                 ; $4caf: $08 $46 $10
	ld   b, d                                        ; $4cb2: $42
	ld   [$3044], sp                                 ; $4cb3: $08 $44 $30
	ld   b, h                                        ; $4cb6: $44
	inc  b                                           ; $4cb7: $04
	ld   b, d                                        ; $4cb8: $42
	inc  b                                           ; $4cb9: $04
	ld   b, c                                        ; $4cba: $41
	inc  b                                           ; $4cbb: $04
	dec  sp                                          ; $4cbc: $3b
	inc  b                                           ; $4cbd: $04
	add  hl, sp                                      ; $4cbe: $39
	inc  b                                           ; $4cbf: $04
	scf                                              ; $4cc0: $37
	inc  b                                           ; $4cc1: $04
	and  b                                           ; $4cc2: $a0
	dec  c                                           ; $4cc3: $0d
	inc  h                                           ; $4cc4: $24
	jr   nz, jr_0fe_4ceb                             ; $4cc5: $20 $24

	inc  b                                           ; $4cc7: $04
	and  b                                           ; $4cc8: $a0
	dec  b                                           ; $4cc9: $05
	inc  h                                           ; $4cca: $24
	inc  b                                           ; $4ccb: $04
	and  b                                           ; $4ccc: $a0
	dec  c                                           ; $4ccd: $0d
	ld   h, $04                                      ; $4cce: $26 $04
	and  b                                           ; $4cd0: $a0
	dec  b                                           ; $4cd1: $05
	ld   h, $04                                      ; $4cd2: $26 $04
	and  b                                           ; $4cd4: $a0
	dec  c                                           ; $4cd5: $0d
	daa                                              ; $4cd6: $27
	inc  b                                           ; $4cd7: $04
	and  b                                           ; $4cd8: $a0
	dec  b                                           ; $4cd9: $05
	daa                                              ; $4cda: $27
	inc  b                                           ; $4cdb: $04
	and  b                                           ; $4cdc: $a0
	dec  c                                           ; $4cdd: $0d
	jr   nz, jr_0fe_4cf0                             ; $4cde: $20 $10

	dec  de                                          ; $4ce0: $1b
	inc  b                                           ; $4ce1: $04
	and  b                                           ; $4ce2: $a0
	dec  b                                           ; $4ce3: $05
	dec  de                                          ; $4ce4: $1b
	inc  b                                           ; $4ce5: $04
	and  b                                           ; $4ce6: $a0
	dec  c                                           ; $4ce7: $0d
	dec  de                                          ; $4ce8: $1b
	inc  l                                           ; $4ce9: $2c
	and  b                                           ; $4cea: $a0

jr_0fe_4ceb:
	dec  b                                           ; $4ceb: $05
	dec  de                                          ; $4cec: $1b
	inc  b                                           ; $4ced: $04
	add  hl, sp                                      ; $4cee: $39
	inc  b                                           ; $4cef: $04

jr_0fe_4cf0:
	dec  sp                                          ; $4cf0: $3b
	inc  b                                           ; $4cf1: $04
	ld   b, b                                        ; $4cf2: $40
	ld   [$083b], sp                                 ; $4cf3: $08 $3b $08
	add  hl, sp                                      ; $4cf6: $39
	ld   [$103b], sp                                 ; $4cf7: $08 $3b $10
	ld   [hl], $08                                   ; $4cfa: $36 $08
	inc  [hl]                                        ; $4cfc: $34
	jr   z, jr_0fe_4c9f                              ; $4cfd: $28 $a0

	dec  c                                           ; $4cff: $0d
	inc  h                                           ; $4d00: $24
	db   $10                                         ; $4d01: $10
	ld   h, $10                                      ; $4d02: $26 $10
	daa                                              ; $4d04: $27
	jr   nz, jr_0fe_4d2d                             ; $4d05: $20 $26

	inc  b                                           ; $4d07: $04
	and  b                                           ; $4d08: $a0
	dec  b                                           ; $4d09: $05
	ld   h, $04                                      ; $4d0a: $26 $04
	and  b                                           ; $4d0c: $a0
	dec  c                                           ; $4d0d: $0d
	daa                                              ; $4d0e: $27
	inc  b                                           ; $4d0f: $04
	and  b                                           ; $4d10: $a0
	dec  b                                           ; $4d11: $05
	daa                                              ; $4d12: $27
	inc  b                                           ; $4d13: $04
	and  b                                           ; $4d14: $a0
	dec  c                                           ; $4d15: $0d
	ld   [hl-], a                                    ; $4d16: $32
	inc  b                                           ; $4d17: $04
	and  b                                           ; $4d18: $a0
	dec  b                                           ; $4d19: $05
	ld   [hl-], a                                    ; $4d1a: $32
	inc  b                                           ; $4d1b: $04
	and  b                                           ; $4d1c: $a0
	dec  c                                           ; $4d1d: $0d
	ld   h, $10                                      ; $4d1e: $26 $10
	inc  h                                           ; $4d20: $24
	inc  b                                           ; $4d21: $04
	and  b                                           ; $4d22: $a0
	dec  b                                           ; $4d23: $05
	inc  h                                           ; $4d24: $24
	inc  b                                           ; $4d25: $04
	and  b                                           ; $4d26: $a0
	dec  c                                           ; $4d27: $0d
	inc  h                                           ; $4d28: $24
	inc  l                                           ; $4d29: $2c
	and  b                                           ; $4d2a: $a0
	dec  b                                           ; $4d2b: $05
	inc  h                                           ; $4d2c: $24

jr_0fe_4d2d:
	inc  b                                           ; $4d2d: $04
	inc  [hl]                                        ; $4d2e: $34
	inc  b                                           ; $4d2f: $04
	ld   [hl], $04                                   ; $4d30: $36 $04
	scf                                              ; $4d32: $37
	ld   [$0839], sp                                 ; $4d33: $08 $39 $08
	dec  sp                                          ; $4d36: $3b
	ld   [$1046], sp                                 ; $4d37: $08 $46 $10
	ld   b, d                                        ; $4d3a: $42
	ld   [$1044], sp                                 ; $4d3b: $08 $44 $10
	and  b                                           ; $4d3e: $a0
	dec  c                                           ; $4d3f: $0d
	dec  de                                          ; $4d40: $1b
	ld   [bc], a                                     ; $4d41: $02
	and  b                                           ; $4d42: $a0
	dec  b                                           ; $4d43: $05
	dec  de                                          ; $4d44: $1b
	ld   b, $a0                                      ; $4d45: $06 $a0
	dec  c                                           ; $4d47: $0d
	inc  h                                           ; $4d48: $24
	ld   [bc], a                                     ; $4d49: $02
	and  b                                           ; $4d4a: $a0
	dec  b                                           ; $4d4b: $05
	inc  h                                           ; $4d4c: $24
	ld   b, $a0                                      ; $4d4d: $06 $a0
	dec  c                                           ; $4d4f: $0d
	add  hl, hl                                      ; $4d50: $29
	ld   [bc], a                                     ; $4d51: $02
	and  b                                           ; $4d52: $a0
	dec  b                                           ; $4d53: $05
	add  hl, hl                                      ; $4d54: $29
	ld   b, $a0                                      ; $4d55: $06 $a0
	dec  c                                           ; $4d57: $0d
	inc  h                                           ; $4d58: $24
	ld   [bc], a                                     ; $4d59: $02
	and  b                                           ; $4d5a: $a0
	dec  b                                           ; $4d5b: $05
	inc  h                                           ; $4d5c: $24
	ld   b, $a0                                      ; $4d5d: $06 $a0
	dec  c                                           ; $4d5f: $0d
	add  hl, hl                                      ; $4d60: $29
	ld   [bc], a                                     ; $4d61: $02
	and  b                                           ; $4d62: $a0
	dec  b                                           ; $4d63: $05
	add  hl, hl                                      ; $4d64: $29
	ld   b, $a0                                      ; $4d65: $06 $a0
	dec  c                                           ; $4d67: $0d
	dec  hl                                          ; $4d68: $2b
	ld   [bc], a                                     ; $4d69: $02
	and  b                                           ; $4d6a: $a0
	dec  b                                           ; $4d6b: $05
	dec  hl                                          ; $4d6c: $2b
	ld   b, $a0                                      ; $4d6d: $06 $a0
	dec  c                                           ; $4d6f: $0d
	inc  [hl]                                        ; $4d70: $34
	ld   [bc], a                                     ; $4d71: $02
	and  b                                           ; $4d72: $a0
	dec  b                                           ; $4d73: $05
	inc  [hl]                                        ; $4d74: $34
	ld   b, $a0                                      ; $4d75: $06 $a0
	dec  c                                           ; $4d77: $0d
	inc  [hl]                                        ; $4d78: $34
	inc  b                                           ; $4d79: $04
	and  b                                           ; $4d7a: $a0
	dec  b                                           ; $4d7b: $05
	inc  [hl]                                        ; $4d7c: $34
	inc  b                                           ; $4d7d: $04
	and  b                                           ; $4d7e: $a0
	dec  c                                           ; $4d7f: $0d
	inc  [hl]                                        ; $4d80: $34
	inc  b                                           ; $4d81: $04
	and  b                                           ; $4d82: $a0
	dec  b                                           ; $4d83: $05
	inc  [hl]                                        ; $4d84: $34
	ld   b, $1f                                      ; $4d85: $06 $1f
	ld   c, $a0                                      ; $4d87: $0e $a0
	dec  c                                           ; $4d89: $0d
	inc  [hl]                                        ; $4d8a: $34
	inc  b                                           ; $4d8b: $04
	and  b                                           ; $4d8c: $a0
	dec  b                                           ; $4d8d: $05
	inc  [hl]                                        ; $4d8e: $34
	inc  b                                           ; $4d8f: $04
	and  b                                           ; $4d90: $a0
	dec  c                                           ; $4d91: $0d
	inc  [hl]                                        ; $4d92: $34
	inc  b                                           ; $4d93: $04
	and  b                                           ; $4d94: $a0
	dec  b                                           ; $4d95: $05
	inc  [hl]                                        ; $4d96: $34
	ld   b, $1f                                      ; $4d97: $06 $1f
	ld   e, $a0                                      ; $4d99: $1e $a0
	dec  c                                           ; $4d9b: $0d
	dec  hl                                          ; $4d9c: $2b
	db   $10                                         ; $4d9d: $10
	jr   nc, jr_0fe_4db0                             ; $4d9e: $30 $10

	ld   [hl-], a                                    ; $4da0: $32
	db   $10                                         ; $4da1: $10
	inc  [hl]                                        ; $4da2: $34
	ld   [bc], a                                     ; $4da3: $02
	and  b                                           ; $4da4: $a0
	dec  b                                           ; $4da5: $05
	inc  [hl]                                        ; $4da6: $34
	ld   [bc], a                                     ; $4da7: $02
	and  b                                           ; $4da8: $a0
	dec  c                                           ; $4da9: $0d
	ld   [hl-], a                                    ; $4daa: $32
	ld   [bc], a                                     ; $4dab: $02
	and  b                                           ; $4dac: $a0
	dec  b                                           ; $4dad: $05
	ld   [hl-], a                                    ; $4dae: $32
	ld   [bc], a                                     ; $4daf: $02

jr_0fe_4db0:
	and  b                                           ; $4db0: $a0
	dec  c                                           ; $4db1: $0d
	inc  [hl]                                        ; $4db2: $34
	ld   [bc], a                                     ; $4db3: $02
	and  b                                           ; $4db4: $a0
	dec  b                                           ; $4db5: $05
	inc  [hl]                                        ; $4db6: $34
	ld   b, $1f                                      ; $4db7: $06 $1f
	ld   [$0da0], sp                                 ; $4db9: $08 $a0 $0d
	ld   [hl], $04                                   ; $4dbc: $36 $04
	and  b                                           ; $4dbe: $a0
	dec  b                                           ; $4dbf: $05
	ld   [hl], $04                                   ; $4dc0: $36 $04
	rra                                              ; $4dc2: $1f
	jr   nz, jr_0fe_4de4                             ; $4dc3: $20 $1f

	ld   b, b                                        ; $4dc5: $40
	and  b                                           ; $4dc6: $a0
	dec  c                                           ; $4dc7: $0d
	add  hl, sp                                      ; $4dc8: $39
	ld   b, $a0                                      ; $4dc9: $06 $a0
	dec  b                                           ; $4dcb: $05
	add  hl, sp                                      ; $4dcc: $39
	ld   [bc], a                                     ; $4dcd: $02
	and  b                                           ; $4dce: $a0
	dec  c                                           ; $4dcf: $0d
	scf                                              ; $4dd0: $37
	ld   [bc], a                                     ; $4dd1: $02
	and  b                                           ; $4dd2: $a0
	dec  b                                           ; $4dd3: $05
	scf                                              ; $4dd4: $37
	inc  b                                           ; $4dd5: $04
	rra                                              ; $4dd6: $1f
	ld   a, [de]                                     ; $4dd7: $1a
	and  b                                           ; $4dd8: $a0
	dec  c                                           ; $4dd9: $0d
	ld   [hl], $06                                   ; $4dda: $36 $06
	and  b                                           ; $4ddc: $a0
	dec  b                                           ; $4ddd: $05
	ld   [hl], $02                                   ; $4dde: $36 $02
	and  b                                           ; $4de0: $a0
	dec  c                                           ; $4de1: $0d
	inc  [hl]                                        ; $4de2: $34
	ld   [bc], a                                     ; $4de3: $02

jr_0fe_4de4:
	and  b                                           ; $4de4: $a0
	dec  b                                           ; $4de5: $05
	inc  [hl]                                        ; $4de6: $34
	inc  b                                           ; $4de7: $04
	rra                                              ; $4de8: $1f
	ld   [hl+], a                                    ; $4de9: $22
	and  b                                           ; $4dea: $a0
	add  hl, bc                                      ; $4deb: $09
	dec  de                                          ; $4dec: $1b
	inc  b                                           ; $4ded: $04
	inc  h                                           ; $4dee: $24
	inc  b                                           ; $4def: $04
	inc  h                                           ; $4df0: $24
	inc  b                                           ; $4df1: $04
	dec  hl                                          ; $4df2: $2b
	inc  b                                           ; $4df3: $04
	dec  hl                                          ; $4df4: $2b
	inc  b                                           ; $4df5: $04
	inc  [hl]                                        ; $4df6: $34
	inc  b                                           ; $4df7: $04
	inc  [hl]                                        ; $4df8: $34
	inc  b                                           ; $4df9: $04
	dec  sp                                          ; $4dfa: $3b
	inc  b                                           ; $4dfb: $04
	dec  sp                                          ; $4dfc: $3b
	inc  b                                           ; $4dfd: $04
	ld   b, h                                        ; $4dfe: $44
	inc  b                                           ; $4dff: $04
	ld   [hl-], a                                    ; $4e00: $32
	ld   b, $a0                                      ; $4e01: $06 $a0
	dec  b                                           ; $4e03: $05
	ld   [hl-], a                                    ; $4e04: $32
	ld   [bc], a                                     ; $4e05: $02
	and  b                                           ; $4e06: $a0
	dec  c                                           ; $4e07: $0d
	jr   nc, jr_0fe_4e0c                             ; $4e08: $30 $02

	and  b                                           ; $4e0a: $a0
	dec  b                                           ; $4e0b: $05

jr_0fe_4e0c:
	jr   nc, jr_0fe_4e12                             ; $4e0c: $30 $04

	rra                                              ; $4e0e: $1f
	ld   a, [de]                                     ; $4e0f: $1a
	and  b                                           ; $4e10: $a0
	dec  c                                           ; $4e11: $0d

jr_0fe_4e12:
	jr   nc, jr_0fe_4e1a                             ; $4e12: $30 $06

	and  b                                           ; $4e14: $a0
	dec  b                                           ; $4e15: $05
	jr   nc, jr_0fe_4e1a                             ; $4e16: $30 $02

	and  b                                           ; $4e18: $a0
	dec  c                                           ; $4e19: $0d

jr_0fe_4e1a:
	ld   a, [hl+]                                    ; $4e1a: $2a
	ld   [bc], a                                     ; $4e1b: $02
	and  b                                           ; $4e1c: $a0
	dec  b                                           ; $4e1d: $05
	ld   a, [hl+]                                    ; $4e1e: $2a
	inc  b                                           ; $4e1f: $04
	rra                                              ; $4e20: $1f
	ld   [hl+], a                                    ; $4e21: $22
	and  b                                           ; $4e22: $a0
	add  hl, bc                                      ; $4e23: $09
	ld   a, [de]                                     ; $4e24: $1a
	inc  b                                           ; $4e25: $04
	inc  h                                           ; $4e26: $24

jr_0fe_4e27:
	inc  b                                           ; $4e27: $04

jr_0fe_4e28:
	inc  h                                           ; $4e28: $24

jr_0fe_4e29:
	inc  b                                           ; $4e29: $04
	ld   a, [hl+]                                    ; $4e2a: $2a
	inc  b                                           ; $4e2b: $04
	ld   a, [hl+]                                    ; $4e2c: $2a
	inc  b                                           ; $4e2d: $04
	inc  [hl]                                        ; $4e2e: $34
	inc  b                                           ; $4e2f: $04
	inc  [hl]                                        ; $4e30: $34
	inc  b                                           ; $4e31: $04
	ld   a, [hl-]                                    ; $4e32: $3a
	inc  b                                           ; $4e33: $04
	ld   a, [hl-]                                    ; $4e34: $3a
	inc  b                                           ; $4e35: $04
	ld   b, h                                        ; $4e36: $44
	inc  b                                           ; $4e37: $04
	add  hl, sp                                      ; $4e38: $39
	ld   b, $a0                                      ; $4e39: $06 $a0
	dec  b                                           ; $4e3b: $05
	add  hl, sp                                      ; $4e3c: $39
	ld   [bc], a                                     ; $4e3d: $02
	and  b                                           ; $4e3e: $a0
	dec  c                                           ; $4e3f: $0d
	scf                                              ; $4e40: $37
	ld   [bc], a                                     ; $4e41: $02
	and  b                                           ; $4e42: $a0
	dec  b                                           ; $4e43: $05
	scf                                              ; $4e44: $37
	inc  b                                           ; $4e45: $04
	rra                                              ; $4e46: $1f
	ld   a, [de]                                     ; $4e47: $1a
	and  b                                           ; $4e48: $a0
	dec  c                                           ; $4e49: $0d
	ld   [hl], $06                                   ; $4e4a: $36 $06
	and  b                                           ; $4e4c: $a0
	dec  b                                           ; $4e4d: $05
	ld   [hl], $02                                   ; $4e4e: $36 $02
	and  b                                           ; $4e50: $a0
	dec  c                                           ; $4e51: $0d
	inc  [hl]                                        ; $4e52: $34
	ld   [bc], a                                     ; $4e53: $02
	and  b                                           ; $4e54: $a0
	dec  b                                           ; $4e55: $05
	inc  [hl]                                        ; $4e56: $34
	inc  b                                           ; $4e57: $04
	rra                                              ; $4e58: $1f
	dec  d                                           ; $4e59: $15
	and  b                                           ; $4e5a: $a0
	dec  c                                           ; $4e5b: $0d
	ld   [hl-], a                                    ; $4e5c: $32
	dec  bc                                          ; $4e5d: $0b
	jr   nc, jr_0fe_4e6a                             ; $4e5e: $30 $0a

	dec  hl                                          ; $4e60: $2b
	inc  d                                           ; $4e61: $14
	and  b                                           ; $4e62: $a0
	dec  b                                           ; $4e63: $05
	dec  hl                                          ; $4e64: $2b
	inc  b                                           ; $4e65: $04
	and  b                                           ; $4e66: $a0
	dec  c                                           ; $4e67: $0d
	add  hl, hl                                      ; $4e68: $29
	inc  d                                           ; $4e69: $14

jr_0fe_4e6a:
	and  b                                           ; $4e6a: $a0
	dec  b                                           ; $4e6b: $05
	add  hl, hl                                      ; $4e6c: $29
	inc  b                                           ; $4e6d: $04
	and  b                                           ; $4e6e: $a0
	dec  c                                           ; $4e6f: $0d
	dec  hl                                          ; $4e70: $2b
	inc  l                                           ; $4e71: $2c
	and  b                                           ; $4e72: $a0
	dec  b                                           ; $4e73: $05
	dec  hl                                          ; $4e74: $2b
	inc  b                                           ; $4e75: $04
	rra                                              ; $4e76: $1f
	jr   nz, jr_0fe_4e29                             ; $4e77: $20 $b0

	di                                               ; $4e79: $f3
	rst  $38                                         ; $4e7a: $ff
	rst  $38                                         ; $4e7b: $ff
	inc  b                                           ; $4e7c: $04
	ld   b, b                                        ; $4e7d: $40
	ld   [bc], a                                     ; $4e7e: $02
	ld   [bc], a                                     ; $4e7f: $02
	and  d                                           ; $4e80: $a2
	nop                                              ; $4e81: $00
	and  d                                           ; $4e82: $a2
	jr   z, jr_0fe_4e28                              ; $4e83: $28 $a3

	jr   nz, jr_0fe_4e27                             ; $4e85: $20 $a0

	ld   [bc], a                                     ; $4e87: $02
	db   $10                                         ; $4e88: $10
	inc  b                                           ; $4e89: $04
	ld   de, $1204                                   ; $4e8a: $11 $04 $12
	inc  b                                           ; $4e8d: $04
	inc  de                                          ; $4e8e: $13
	inc  b                                           ; $4e8f: $04
	ld   [de], a                                     ; $4e90: $12
	inc  b                                           ; $4e91: $04
	inc  de                                          ; $4e92: $13
	inc  b                                           ; $4e93: $04
	inc  d                                           ; $4e94: $14
	inc  b                                           ; $4e95: $04
	dec  d                                           ; $4e96: $15
	inc  b                                           ; $4e97: $04
	ld   d, $10                                      ; $4e98: $16 $10
	ld   sp, $a00e                                   ; $4e9a: $31 $0e $a0
	ld   b, $31                                      ; $4e9d: $06 $31
	ld   [bc], a                                     ; $4e9f: $02
	and  b                                           ; $4ea0: $a0
	ld   [bc], a                                     ; $4ea1: $02
	ld   sp, $1610                                   ; $4ea2: $31 $10 $16
	ld   [$0e2b], sp                                 ; $4ea5: $08 $2b $0e
	and  b                                           ; $4ea8: $a0
	ld   b, $2b                                      ; $4ea9: $06 $2b
	ld   [bc], a                                     ; $4eab: $02
	and  b                                           ; $4eac: $a0
	ld   [bc], a                                     ; $4ead: $02
	add  hl, hl                                      ; $4eae: $29
	db   $10                                         ; $4eaf: $10
	dec  hl                                          ; $4eb0: $2b
	inc  b                                           ; $4eb1: $04
	and  b                                           ; $4eb2: $a0
	ld   b, $2b                                      ; $4eb3: $06 $2b
	inc  b                                           ; $4eb5: $04
	and  b                                           ; $4eb6: $a0
	ld   [bc], a                                     ; $4eb7: $02
	ld   sp, $a01e                                   ; $4eb8: $31 $1e $a0
	ld   b, $31                                      ; $4ebb: $06 $31
	ld   [bc], a                                     ; $4ebd: $02
	and  b                                           ; $4ebe: $a0
	ld   [bc], a                                     ; $4ebf: $02
	ld   d, $04                                      ; $4ec0: $16 $04
	and  b                                           ; $4ec2: $a0
	ld   b, $16                                      ; $4ec3: $06 $16
	inc  b                                           ; $4ec5: $04
	and  b                                           ; $4ec6: $a0
	ld   [bc], a                                     ; $4ec7: $02
	ld   hl, $a004                                   ; $4ec8: $21 $04 $a0
	ld   b, $21                                      ; $4ecb: $06 $21
	inc  b                                           ; $4ecd: $04
	and  b                                           ; $4ece: $a0
	ld   [bc], a                                     ; $4ecf: $02
	ld   d, $04                                      ; $4ed0: $16 $04
	and  b                                           ; $4ed2: $a0
	ld   b, $16                                      ; $4ed3: $06 $16
	inc  b                                           ; $4ed5: $04
	and  b                                           ; $4ed6: $a0
	ld   [bc], a                                     ; $4ed7: $02
	ld   hl, $a004                                   ; $4ed8: $21 $04 $a0
	ld   b, $21                                      ; $4edb: $06 $21
	inc  b                                           ; $4edd: $04
	and  b                                           ; $4ede: $a0
	ld   [bc], a                                     ; $4edf: $02
	add  hl, de                                      ; $4ee0: $19
	ld   [$0418], sp                                 ; $4ee1: $08 $18 $04
	and  b                                           ; $4ee4: $a0
	ld   b, $18                                      ; $4ee5: $06 $18
	ld   [bc], a                                     ; $4ee7: $02
	rra                                              ; $4ee8: $1f
	ld   [bc], a                                     ; $4ee9: $02
	and  b                                           ; $4eea: $a0
	ld   [bc], a                                     ; $4eeb: $02
	jr   @+$0a                                       ; $4eec: $18 $08

	rla                                              ; $4eee: $17
	ld   [$1016], sp                                 ; $4eef: $08 $16 $10
	ld   sp, $a00e                                   ; $4ef2: $31 $0e $a0
	ld   b, $31                                      ; $4ef5: $06 $31
	ld   [bc], a                                     ; $4ef7: $02
	and  b                                           ; $4ef8: $a0
	ld   [bc], a                                     ; $4ef9: $02
	ld   sp, $1610                                   ; $4efa: $31 $10 $16
	ld   [$0e33], sp                                 ; $4efd: $08 $33 $0e
	and  b                                           ; $4f00: $a0
	ld   b, $33                                      ; $4f01: $06 $33
	ld   [bc], a                                     ; $4f03: $02
	and  b                                           ; $4f04: $a0
	ld   [bc], a                                     ; $4f05: $02
	ld   sp, $2b10                                   ; $4f06: $31 $10 $2b
	inc  b                                           ; $4f09: $04
	and  b                                           ; $4f0a: $a0
	ld   b, $2b                                      ; $4f0b: $06 $2b
	inc  b                                           ; $4f0d: $04
	and  b                                           ; $4f0e: $a0
	ld   [bc], a                                     ; $4f0f: $02
	ld   d, $04                                      ; $4f10: $16 $04
	and  b                                           ; $4f12: $a0
	ld   b, $16                                      ; $4f13: $06 $16
	inc  b                                           ; $4f15: $04
	and  b                                           ; $4f16: $a0
	ld   [bc], a                                     ; $4f17: $02
	rla                                              ; $4f18: $17
	inc  b                                           ; $4f19: $04
	and  b                                           ; $4f1a: $a0
	ld   b, $17                                      ; $4f1b: $06 $17
	inc  b                                           ; $4f1d: $04
	and  b                                           ; $4f1e: $a0
	ld   [bc], a                                     ; $4f1f: $02
	rla                                              ; $4f20: $17
	inc  b                                           ; $4f21: $04
	and  b                                           ; $4f22: $a0
	ld   b, $17                                      ; $4f23: $06 $17
	inc  b                                           ; $4f25: $04
	and  b                                           ; $4f26: $a0
	ld   [bc], a                                     ; $4f27: $02
	jr   jr_0fe_4f2e                                 ; $4f28: $18 $04

	and  b                                           ; $4f2a: $a0
	ld   b, $18                                      ; $4f2b: $06 $18
	inc  b                                           ; $4f2d: $04

jr_0fe_4f2e:
	and  b                                           ; $4f2e: $a0
	ld   [bc], a                                     ; $4f2f: $02
	add  hl, de                                      ; $4f30: $19
	db   $10                                         ; $4f31: $10
	inc  [hl]                                        ; $4f32: $34
	ld   c, $a0                                      ; $4f33: $0e $a0
	ld   b, $34                                      ; $4f35: $06 $34
	ld   [bc], a                                     ; $4f37: $02
	and  b                                           ; $4f38: $a0
	ld   [bc], a                                     ; $4f39: $02
	inc  [hl]                                        ; $4f3a: $34
	db   $10                                         ; $4f3b: $10
	add  hl, de                                      ; $4f3c: $19
	ld   [$0e32], sp                                 ; $4f3d: $08 $32 $0e
	and  b                                           ; $4f40: $a0
	ld   b, $32                                      ; $4f41: $06 $32
	ld   [bc], a                                     ; $4f43: $02
	and  b                                           ; $4f44: $a0
	ld   [bc], a                                     ; $4f45: $02
	jr   nc, jr_0fe_4f58                             ; $4f46: $30 $10

	ld   [hl-], a                                    ; $4f48: $32
	inc  b                                           ; $4f49: $04
	and  b                                           ; $4f4a: $a0
	ld   b, $32                                      ; $4f4b: $06 $32
	inc  b                                           ; $4f4d: $04
	and  b                                           ; $4f4e: $a0
	ld   [bc], a                                     ; $4f4f: $02
	jr   nz, jr_0fe_4f56                             ; $4f50: $20 $04

	and  b                                           ; $4f52: $a0
	ld   b, $20                                      ; $4f53: $06 $20
	inc  b                                           ; $4f55: $04

jr_0fe_4f56:
	and  b                                           ; $4f56: $a0
	ld   [bc], a                                     ; $4f57: $02

jr_0fe_4f58:
	dec  de                                          ; $4f58: $1b
	inc  b                                           ; $4f59: $04
	and  b                                           ; $4f5a: $a0
	ld   b, $1b                                      ; $4f5b: $06 $1b
	inc  b                                           ; $4f5d: $04
	and  b                                           ; $4f5e: $a0
	ld   [bc], a                                     ; $4f5f: $02
	dec  de                                          ; $4f60: $1b
	inc  b                                           ; $4f61: $04
	and  b                                           ; $4f62: $a0
	ld   b, $1b                                      ; $4f63: $06 $1b
	inc  b                                           ; $4f65: $04
	and  b                                           ; $4f66: $a0
	ld   [bc], a                                     ; $4f67: $02
	ld   a, [de]                                     ; $4f68: $1a
	inc  b                                           ; $4f69: $04
	and  b                                           ; $4f6a: $a0
	ld   b, $1a                                      ; $4f6b: $06 $1a
	inc  b                                           ; $4f6d: $04
	and  b                                           ; $4f6e: $a0
	ld   [bc], a                                     ; $4f6f: $02
	add  hl, de                                      ; $4f70: $19
	db   $10                                         ; $4f71: $10
	inc  [hl]                                        ; $4f72: $34
	ld   c, $a0                                      ; $4f73: $0e $a0
	ld   b, $34                                      ; $4f75: $06 $34
	ld   [bc], a                                     ; $4f77: $02
	and  b                                           ; $4f78: $a0
	ld   [bc], a                                     ; $4f79: $02
	inc  [hl]                                        ; $4f7a: $34
	db   $10                                         ; $4f7b: $10
	add  hl, de                                      ; $4f7c: $19
	ld   [$0319], sp                                 ; $4f7d: $08 $19 $03
	add  hl, de                                      ; $4f80: $19
	inc  bc                                          ; $4f81: $03
	add  hl, de                                      ; $4f82: $19
	ld   [bc], a                                     ; $4f83: $02
	add  hl, de                                      ; $4f84: $19
	ld   [$1014], sp                                 ; $4f85: $08 $14 $10
	inc  d                                           ; $4f88: $14
	inc  bc                                          ; $4f89: $03
	inc  d                                           ; $4f8a: $14
	inc  bc                                          ; $4f8b: $03
	inc  d                                           ; $4f8c: $14
	ld   [bc], a                                     ; $4f8d: $02
	add  hl, de                                      ; $4f8e: $19
	ld   [$1014], sp                                 ; $4f8f: $08 $14 $10
	inc  d                                           ; $4f92: $14
	ld   [$2019], sp                                 ; $4f93: $08 $19 $20
	and  d                                           ; $4f96: $a2
	db   $10                                         ; $4f97: $10
	add  hl, de                                      ; $4f98: $19
	inc  b                                           ; $4f99: $04
	add  hl, de                                      ; $4f9a: $19
	inc  b                                           ; $4f9b: $04
	add  hl, de                                      ; $4f9c: $19
	inc  b                                           ; $4f9d: $04
	add  hl, de                                      ; $4f9e: $19
	inc  b                                           ; $4f9f: $04
	add  hl, de                                      ; $4fa0: $19
	inc  b                                           ; $4fa1: $04
	add  hl, de                                      ; $4fa2: $19
	inc  b                                           ; $4fa3: $04
	add  hl, de                                      ; $4fa4: $19
	inc  b                                           ; $4fa5: $04
	add  hl, de                                      ; $4fa6: $19
	inc  b                                           ; $4fa7: $04

jr_0fe_4fa8:
	and  d                                           ; $4fa8: $a2
	jr   z, jr_0fe_4fa8                              ; $4fa9: $28 $fd

	di                                               ; $4fab: $f3
	and  b                                           ; $4fac: $a0
	ld   [bc], a                                     ; $4fad: $02
	inc  d                                           ; $4fae: $14
	ld   [$0814], sp                                 ; $4faf: $08 $14 $08
	rra                                              ; $4fb2: $1f
	ld   [$0814], sp                                 ; $4fb3: $08 $14 $08
	inc  d                                           ; $4fb6: $14
	ld   [$0819], sp                                 ; $4fb7: $08 $19 $08
	dec  de                                          ; $4fba: $1b
	ld   [$0814], sp                                 ; $4fbb: $08 $14 $08
	add  hl, de                                      ; $4fbe: $19
	ld   [$0819], sp                                 ; $4fbf: $08 $19 $08
	rra                                              ; $4fc2: $1f
	ld   [$0819], sp                                 ; $4fc3: $08 $19 $08
	add  hl, de                                      ; $4fc6: $19
	ld   [$0819], sp                                 ; $4fc7: $08 $19 $08
	rra                                              ; $4fca: $1f
	ld   [$0419], sp                                 ; $4fcb: $08 $19 $04
	ld   hl, $2404                                   ; $4fce: $21 $04 $24
	ld   c, $1f                                      ; $4fd1: $0e $1f
	ld   [bc], a                                     ; $4fd3: $02
	inc  d                                           ; $4fd4: $14
	ld   [$0e22], sp                                 ; $4fd5: $08 $22 $0e
	rra                                              ; $4fd8: $1f
	ld   [bc], a                                     ; $4fd9: $02
	inc  d                                           ; $4fda: $14
	ld   [$2421], sp                                 ; $4fdb: $08 $21 $24
	rra                                              ; $4fde: $1f
	inc  b                                           ; $4fdf: $04
	add  hl, hl                                      ; $4fe0: $29
	inc  b                                           ; $4fe1: $04
	dec  hl                                          ; $4fe2: $2b
	inc  b                                           ; $4fe3: $04
	add  hl, hl                                      ; $4fe4: $29
	inc  b                                           ; $4fe5: $04
	rra                                              ; $4fe6: $1f
	inc  b                                           ; $4fe7: $04
	inc  h                                           ; $4fe8: $24
	inc  b                                           ; $4fe9: $04
	rra                                              ; $4fea: $1f
	inc  b                                           ; $4feb: $04
	ld   hl, $1f04                                   ; $4fec: $21 $04 $1f
	inc  b                                           ; $4fef: $04
	add  hl, de                                      ; $4ff0: $19
	ld   [$0820], sp                                 ; $4ff1: $08 $20 $08
	jr   nz, @+$0a                                   ; $4ff4: $20 $08

	rra                                              ; $4ff6: $1f
	ld   [$0820], sp                                 ; $4ff7: $08 $20 $08
	jr   nz, @+$0a                                   ; $4ffa: $20 $08

	ld   [hl+], a                                    ; $4ffc: $22
	ld   [$0824], sp                                 ; $4ffd: $08 $24 $08
	jr   nz, jr_0fe_500a                             ; $5000: $20 $08

	rla                                              ; $5002: $17
	ld   [$0817], sp                                 ; $5003: $08 $17 $08
	rra                                              ; $5006: $1f
	ld   [$0817], sp                                 ; $5007: $08 $17 $08

jr_0fe_500a:
	rla                                              ; $500a: $17
	ld   [$0817], sp                                 ; $500b: $08 $17 $08
	rra                                              ; $500e: $1f
	ld   [$0822], sp                                 ; $500f: $08 $22 $08
	jr   nz, @+$12                                   ; $5012: $20 $10

	rla                                              ; $5014: $17
	ld   [$1022], sp                                 ; $5015: $08 $22 $10
	add  hl, de                                      ; $5018: $19
	ld   [$1624], sp                                 ; $5019: $08 $24 $16
	rra                                              ; $501c: $1f
	ld   [bc], a                                     ; $501d: $02
	inc  d                                           ; $501e: $14
	ld   [$0824], sp                                 ; $501f: $08 $24 $08
	inc  d                                           ; $5022: $14
	ld   [$0214], sp                                 ; $5023: $08 $14 $02
	rra                                              ; $5026: $1f
	ld   b, $1b                                      ; $5027: $06 $1b
	ld   c, $1f                                      ; $5029: $0e $1f
	ld   [bc], a                                     ; $502b: $02
	dec  de                                          ; $502c: $1b
	ld   [$0814], sp                                 ; $502d: $08 $14 $08
	inc  d                                           ; $5030: $14
	ld   [$081f], sp                                 ; $5031: $08 $1f $08
	inc  d                                           ; $5034: $14
	ld   [$0814], sp                                 ; $5035: $08 $14 $08
	add  hl, de                                      ; $5038: $19
	ld   [$081b], sp                                 ; $5039: $08 $1b $08
	inc  d                                           ; $503c: $14
	ld   [$0819], sp                                 ; $503d: $08 $19 $08
	add  hl, de                                      ; $5040: $19
	ld   [$081f], sp                                 ; $5041: $08 $1f $08
	add  hl, de                                      ; $5044: $19
	ld   [$0819], sp                                 ; $5045: $08 $19 $08
	add  hl, de                                      ; $5048: $19
	ld   [$081f], sp                                 ; $5049: $08 $1f $08
	add  hl, de                                      ; $504c: $19
	inc  b                                           ; $504d: $04
	ld   hl, $2404                                   ; $504e: $21 $04 $24
	db   $10                                         ; $5051: $10
	inc  d                                           ; $5052: $14
	ld   [$1022], sp                                 ; $5053: $08 $22 $10
	inc  d                                           ; $5056: $14
	ld   [$2421], sp                                 ; $5057: $08 $21 $24
	rra                                              ; $505a: $1f
	inc  b                                           ; $505b: $04
	add  hl, hl                                      ; $505c: $29
	inc  b                                           ; $505d: $04
	dec  hl                                          ; $505e: $2b
	inc  b                                           ; $505f: $04
	add  hl, hl                                      ; $5060: $29
	inc  b                                           ; $5061: $04
	rra                                              ; $5062: $1f
	inc  b                                           ; $5063: $04
	inc  h                                           ; $5064: $24
	inc  b                                           ; $5065: $04
	rra                                              ; $5066: $1f
	inc  b                                           ; $5067: $04
	ld   hl, $1f04                                   ; $5068: $21 $04 $1f
	inc  b                                           ; $506b: $04
	add  hl, de                                      ; $506c: $19
	ld   [$0820], sp                                 ; $506d: $08 $20 $08
	jr   nz, jr_0fe_507a                             ; $5070: $20 $08

	rra                                              ; $5072: $1f
	ld   [$0820], sp                                 ; $5073: $08 $20 $08
	ld   [hl+], a                                    ; $5076: $22
	ld   [$0822], sp                                 ; $5077: $08 $22 $08

jr_0fe_507a:
	rra                                              ; $507a: $1f
	ld   [$0822], sp                                 ; $507b: $08 $22 $08
	rla                                              ; $507e: $17
	ld   [$0817], sp                                 ; $507f: $08 $17 $08
	rra                                              ; $5082: $1f
	ld   [$0817], sp                                 ; $5083: $08 $17 $08
	jr   @+$12                                       ; $5086: $18 $10

	dec  de                                          ; $5088: $1b
	ld   c, $1f                                      ; $5089: $0e $1f
	ld   [bc], a                                     ; $508b: $02
	add  hl, de                                      ; $508c: $19
	ld   c, $1f                                      ; $508d: $0e $1f
	ld   [bc], a                                     ; $508f: $02
	add  hl, de                                      ; $5090: $19
	ld   [$081b], sp                                 ; $5091: $08 $1b $08
	rra                                              ; $5094: $1f
	jr   @+$16                                       ; $5095: $18 $14

	ld   c, $a2                                      ; $5097: $0e $a2
	db   $10                                         ; $5099: $10
	rra                                              ; $509a: $1f
	ld   [bc], a                                     ; $509b: $02
	inc  d                                           ; $509c: $14
	ld   [$0814], sp                                 ; $509d: $08 $14 $08
	inc  d                                           ; $50a0: $14
	ld   [$0814], sp                                 ; $50a1: $08 $14 $08
	inc  d                                           ; $50a4: $14
	ld   [$0814], sp                                 ; $50a5: $08 $14 $08
	inc  d                                           ; $50a8: $14
	ld   [$28a2], sp                                 ; $50a9: $08 $a2 $28
	dec  sp                                          ; $50ac: $3b
	ld   b, $a0                                      ; $50ad: $06 $a0
	ld   b, $3b                                      ; $50af: $06 $3b
	ld   [bc], a                                     ; $50b1: $02
	and  b                                           ; $50b2: $a0
	ld   [bc], a                                     ; $50b3: $02
	add  hl, sp                                      ; $50b4: $39
	ld   [bc], a                                     ; $50b5: $02
	and  b                                           ; $50b6: $a0
	ld   b, $39                                      ; $50b7: $06 $39
	inc  b                                           ; $50b9: $04
	rra                                              ; $50ba: $1f
	ld   [bc], a                                     ; $50bb: $02
	and  b                                           ; $50bc: $a0
	ld   [bc], a                                     ; $50bd: $02
	inc  d                                           ; $50be: $14
	inc  b                                           ; $50bf: $04
	inc  d                                           ; $50c0: $14
	inc  b                                           ; $50c1: $04
	dec  de                                          ; $50c2: $1b
	inc  b                                           ; $50c3: $04
	and  b                                           ; $50c4: $a0
	ld   b, $1b                                      ; $50c5: $06 $1b
	inc  b                                           ; $50c7: $04
	and  b                                           ; $50c8: $a0
	ld   [bc], a                                     ; $50c9: $02
	inc  d                                           ; $50ca: $14
	inc  b                                           ; $50cb: $04
	and  b                                           ; $50cc: $a0
	ld   b, $14                                      ; $50cd: $06 $14
	inc  b                                           ; $50cf: $04
	and  b                                           ; $50d0: $a0
	ld   [bc], a                                     ; $50d1: $02
	jr   c, jr_0fe_50da                              ; $50d2: $38 $06

	and  b                                           ; $50d4: $a0
	ld   b, $38                                      ; $50d5: $06 $38
	ld   [bc], a                                     ; $50d7: $02
	and  b                                           ; $50d8: $a0
	ld   [bc], a                                     ; $50d9: $02

jr_0fe_50da:
	ld   [hl], $02                                   ; $50da: $36 $02
	and  b                                           ; $50dc: $a0
	ld   b, $36                                      ; $50dd: $06 $36
	inc  b                                           ; $50df: $04
	rra                                              ; $50e0: $1f
	ld   [bc], a                                     ; $50e1: $02
	and  b                                           ; $50e2: $a0
	ld   [bc], a                                     ; $50e3: $02
	inc  d                                           ; $50e4: $14
	inc  b                                           ; $50e5: $04
	and  b                                           ; $50e6: $a0
	ld   b, $14                                      ; $50e7: $06 $14
	inc  b                                           ; $50e9: $04
	rra                                              ; $50ea: $1f
	ld   [$02a0], sp                                 ; $50eb: $08 $a0 $02
	inc  d                                           ; $50ee: $14
	inc  b                                           ; $50ef: $04
	ld   d, $04                                      ; $50f0: $16 $04
	rla                                              ; $50f2: $17
	inc  b                                           ; $50f3: $04
	add  hl, de                                      ; $50f4: $19
	inc  b                                           ; $50f5: $04
	rla                                              ; $50f6: $17
	inc  b                                           ; $50f7: $04
	ld   d, $04                                      ; $50f8: $16 $04
	rla                                              ; $50fa: $17
	ld   [$06a0], sp                                 ; $50fb: $08 $a0 $06
	rla                                              ; $50fe: $17
	inc  b                                           ; $50ff: $04
	rra                                              ; $5100: $1f
	inc  d                                           ; $5101: $14
	and  b                                           ; $5102: $a0
	ld   [bc], a                                     ; $5103: $02
	inc  [hl]                                        ; $5104: $34
	ld   b, $a0                                      ; $5105: $06 $a0
	ld   b, $34                                      ; $5107: $06 $34
	ld   [bc], a                                     ; $5109: $02
	and  b                                           ; $510a: $a0
	ld   [bc], a                                     ; $510b: $02
	ld   [hl-], a                                    ; $510c: $32
	ld   [bc], a                                     ; $510d: $02
	and  b                                           ; $510e: $a0
	ld   b, $32                                      ; $510f: $06 $32
	inc  b                                           ; $5111: $04
	rra                                              ; $5112: $1f
	ld   [bc], a                                     ; $5113: $02
	and  b                                           ; $5114: $a0
	ld   [bc], a                                     ; $5115: $02
	inc  d                                           ; $5116: $14
	inc  b                                           ; $5117: $04
	inc  d                                           ; $5118: $14
	inc  b                                           ; $5119: $04
	dec  de                                          ; $511a: $1b
	inc  b                                           ; $511b: $04
	and  b                                           ; $511c: $a0
	ld   b, $1b                                      ; $511d: $06 $1b
	inc  b                                           ; $511f: $04
	and  b                                           ; $5120: $a0
	ld   [bc], a                                     ; $5121: $02
	inc  d                                           ; $5122: $14
	inc  b                                           ; $5123: $04
	and  b                                           ; $5124: $a0
	ld   b, $14                                      ; $5125: $06 $14
	inc  b                                           ; $5127: $04
	and  b                                           ; $5128: $a0
	ld   [bc], a                                     ; $5129: $02
	ld   [hl-], a                                    ; $512a: $32
	ld   b, $a0                                      ; $512b: $06 $a0
	ld   b, $32                                      ; $512d: $06 $32
	ld   [bc], a                                     ; $512f: $02
	and  b                                           ; $5130: $a0
	ld   [bc], a                                     ; $5131: $02
	jr   nc, @+$04                                   ; $5132: $30 $02

	and  b                                           ; $5134: $a0
	ld   b, $30                                      ; $5135: $06 $30
	inc  b                                           ; $5137: $04
	rra                                              ; $5138: $1f
	ld   [bc], a                                     ; $5139: $02
	and  b                                           ; $513a: $a0
	ld   [bc], a                                     ; $513b: $02
	inc  d                                           ; $513c: $14
	inc  b                                           ; $513d: $04
	and  b                                           ; $513e: $a0
	ld   b, $14                                      ; $513f: $06 $14
	inc  b                                           ; $5141: $04
	rra                                              ; $5142: $1f
	ld   [$02a0], sp                                 ; $5143: $08 $a0 $02
	inc  d                                           ; $5146: $14
	inc  b                                           ; $5147: $04
	ld   d, $04                                      ; $5148: $16 $04
	rla                                              ; $514a: $17
	inc  b                                           ; $514b: $04
	ld   d, $04                                      ; $514c: $16 $04
	rla                                              ; $514e: $17
	inc  b                                           ; $514f: $04
	add  hl, de                                      ; $5150: $19
	inc  b                                           ; $5151: $04
	ld   a, [de]                                     ; $5152: $1a
	ld   [$081f], sp                                 ; $5153: $08 $1f $08
	ld   a, [de]                                     ; $5156: $1a
	inc  b                                           ; $5157: $04
	rla                                              ; $5158: $17
	inc  b                                           ; $5159: $04
	add  hl, de                                      ; $515a: $19
	inc  b                                           ; $515b: $04
	ld   a, [de]                                     ; $515c: $1a
	inc  b                                           ; $515d: $04
	dec  sp                                          ; $515e: $3b
	ld   b, $a0                                      ; $515f: $06 $a0
	ld   b, $3b                                      ; $5161: $06 $3b
	ld   [bc], a                                     ; $5163: $02
	and  b                                           ; $5164: $a0
	ld   [bc], a                                     ; $5165: $02
	add  hl, sp                                      ; $5166: $39
	ld   [bc], a                                     ; $5167: $02
	and  b                                           ; $5168: $a0
	ld   b, $39                                      ; $5169: $06 $39
	inc  b                                           ; $516b: $04
	rra                                              ; $516c: $1f
	ld   [bc], a                                     ; $516d: $02
	and  b                                           ; $516e: $a0
	ld   [bc], a                                     ; $516f: $02
	inc  d                                           ; $5170: $14
	inc  b                                           ; $5171: $04
	inc  d                                           ; $5172: $14
	inc  b                                           ; $5173: $04
	dec  de                                          ; $5174: $1b
	inc  b                                           ; $5175: $04
	and  b                                           ; $5176: $a0
	ld   b, $1b                                      ; $5177: $06 $1b
	inc  b                                           ; $5179: $04
	and  b                                           ; $517a: $a0
	ld   [bc], a                                     ; $517b: $02
	inc  d                                           ; $517c: $14
	inc  b                                           ; $517d: $04
	and  b                                           ; $517e: $a0
	ld   b, $14                                      ; $517f: $06 $14
	inc  b                                           ; $5181: $04
	and  b                                           ; $5182: $a0
	ld   [bc], a                                     ; $5183: $02
	jr   c, jr_0fe_518c                              ; $5184: $38 $06

	and  b                                           ; $5186: $a0
	ld   b, $38                                      ; $5187: $06 $38
	ld   [bc], a                                     ; $5189: $02
	and  b                                           ; $518a: $a0
	ld   [bc], a                                     ; $518b: $02

jr_0fe_518c:
	ld   [hl], $02                                   ; $518c: $36 $02
	and  b                                           ; $518e: $a0
	ld   b, $36                                      ; $518f: $06 $36
	inc  b                                           ; $5191: $04
	rra                                              ; $5192: $1f
	ld   [bc], a                                     ; $5193: $02
	and  b                                           ; $5194: $a0
	ld   [bc], a                                     ; $5195: $02
	inc  d                                           ; $5196: $14
	inc  b                                           ; $5197: $04
	and  b                                           ; $5198: $a0
	ld   b, $14                                      ; $5199: $06 $14
	inc  b                                           ; $519b: $04
	rra                                              ; $519c: $1f
	dec  bc                                          ; $519d: $0b
	and  b                                           ; $519e: $a0
	ld   [bc], a                                     ; $519f: $02
	dec  [hl]                                        ; $51a0: $35
	dec  bc                                          ; $51a1: $0b
	ld   [hl-], a                                    ; $51a2: $32
	ld   a, [bc]                                     ; $51a3: $0a
	dec  d                                           ; $51a4: $15
	inc  d                                           ; $51a5: $14
	and  b                                           ; $51a6: $a0
	ld   b, $15                                      ; $51a7: $06 $15
	inc  b                                           ; $51a9: $04
	and  b                                           ; $51aa: $a0
	ld   [bc], a                                     ; $51ab: $02
	dec  d                                           ; $51ac: $15
	inc  d                                           ; $51ad: $14
	and  b                                           ; $51ae: $a0
	ld   b, $15                                      ; $51af: $06 $15
	inc  b                                           ; $51b1: $04
	and  b                                           ; $51b2: $a0
	ld   [bc], a                                     ; $51b3: $02
	dec  de                                          ; $51b4: $1b
	db   $10                                         ; $51b5: $10
	and  d                                           ; $51b6: $a2
	db   $10                                         ; $51b7: $10
	dec  de                                          ; $51b8: $1b
	ld   [$081b], sp                                 ; $51b9: $08 $1b $08
	dec  de                                          ; $51bc: $1b
	ld   [$081b], sp                                 ; $51bd: $08 $1b $08
	and  d                                           ; $51c0: $a2
	jr   z, jr_0fe_51d7                              ; $51c1: $28 $14

	inc  b                                           ; $51c3: $04
	and  b                                           ; $51c4: $a0
	ld   b, $14                                      ; $51c5: $06 $14
	inc  b                                           ; $51c7: $04
	and  b                                           ; $51c8: $a0
	ld   [bc], a                                     ; $51c9: $02
	dec  bc                                          ; $51ca: $0b
	inc  b                                           ; $51cb: $04
	and  b                                           ; $51cc: $a0
	ld   b, $0b                                      ; $51cd: $06 $0b
	inc  b                                           ; $51cf: $04
	and  b                                           ; $51d0: $a0
	ld   [bc], a                                     ; $51d1: $02
	inc  d                                           ; $51d2: $14
	inc  b                                           ; $51d3: $04
	and  b                                           ; $51d4: $a0
	ld   b, $14                                      ; $51d5: $06 $14

jr_0fe_51d7:
	inc  b                                           ; $51d7: $04
	and  b                                           ; $51d8: $a0
	ld   [bc], a                                     ; $51d9: $02
	dec  bc                                          ; $51da: $0b
	inc  b                                           ; $51db: $04
	and  b                                           ; $51dc: $a0
	ld   b, $0b                                      ; $51dd: $06 $0b
	inc  b                                           ; $51df: $04
	or   b                                           ; $51e0: $b0
	di                                               ; $51e1: $f3
	rst  $38                                         ; $51e2: $ff
	rst  $38                                         ; $51e3: $ff
	inc  b                                           ; $51e4: $04
	nop                                              ; $51e5: $00
	add  hl, bc                                      ; $51e6: $09
	nop                                              ; $51e7: $00
	rra                                              ; $51e8: $1f
	db   $10                                         ; $51e9: $10
	db   $fd                                         ; $51ea: $fd
	ldh  a, [$c1]                                    ; $51eb: $f0 $c1
	inc  b                                           ; $51ed: $04
	and  b                                           ; $51ee: $a0
	add  hl, bc                                      ; $51ef: $09
	ld   l, b                                        ; $51f0: $68
	ld   bc, $06a0                                   ; $51f1: $01 $a0 $06
	sbc  c                                           ; $51f4: $99
	ld   bc, $01a0                                   ; $51f5: $01 $a0 $01
	sbc  c                                           ; $51f8: $99
	ld   [bc], a                                     ; $51f9: $02
	or   h                                           ; $51fa: $b4
	ldh  a, [$1f]                                    ; $51fb: $f0 $1f
	inc  a                                           ; $51fd: $3c
	rra                                              ; $51fe: $1f
	jr   c, @-$3d                                    ; $51ff: $38 $c1

	inc  b                                           ; $5201: $04
	and  b                                           ; $5202: $a0
	add  hl, bc                                      ; $5203: $09
	ld   l, b                                        ; $5204: $68
	ld   bc, $06a0                                   ; $5205: $01 $a0 $06
	sbc  c                                           ; $5208: $99
	ld   bc, $01a0                                   ; $5209: $01 $a0 $01
	sbc  c                                           ; $520c: $99
	ld   bc, $04c1                                   ; $520d: $01 $c1 $04
	and  b                                           ; $5210: $a0
	add  hl, bc                                      ; $5211: $09
	ld   l, b                                        ; $5212: $68
	ld   bc, $06a0                                   ; $5213: $01 $a0 $06
	sbc  c                                           ; $5216: $99
	ld   bc, $01a0                                   ; $5217: $01 $a0 $01
	sbc  c                                           ; $521a: $99
	ld   bc, $04c1                                   ; $521b: $01 $c1 $04
	and  b                                           ; $521e: $a0
	ld   c, $42                                      ; $521f: $0e $42
	ld   bc, $04a0                                   ; $5221: $01 $a0 $04

jr_0fe_5224:
	sbc  c                                           ; $5224: $99
	ld   bc, $f0fd                                   ; $5225: $01 $fd $f0
	pop  bc                                          ; $5228: $c1
	inc  b                                           ; $5229: $04
	and  b                                           ; $522a: $a0
	add  hl, bc                                      ; $522b: $09
	ld   l, b                                        ; $522c: $68
	ld   bc, $06a0                                   ; $522d: $01 $a0 $06
	sbc  c                                           ; $5230: $99
	ld   bc, $01a0                                   ; $5231: $01 $a0 $01
	sbc  c                                           ; $5234: $99
	ld   b, $b4                                      ; $5235: $06 $b4
	ldh  a, [$1f]                                    ; $5237: $f0 $1f
	jr   @-$3d                                       ; $5239: $18 $c1

	inc  b                                           ; $523b: $04
	and  b                                           ; $523c: $a0
	add  hl, bc                                      ; $523d: $09
	ld   l, b                                        ; $523e: $68
	ld   bc, $06a0                                   ; $523f: $01 $a0 $06
	sbc  c                                           ; $5242: $99
	ld   bc, $01a0                                   ; $5243: $01 $a0 $01
	sbc  c                                           ; $5246: $99
	ld   c, $1f                                      ; $5247: $0e $1f
	jr   nc, jr_0fe_526a                             ; $5249: $30 $1f

	jr   nc, @-$01                                   ; $524b: $30 $fd

	ldh  a, [$c1]                                    ; $524d: $f0 $c1
	inc  b                                           ; $524f: $04
	and  b                                           ; $5250: $a0
	add  hl, bc                                      ; $5251: $09
	ld   l, b                                        ; $5252: $68
	ld   bc, $06a0                                   ; $5253: $01 $a0 $06
	sbc  c                                           ; $5256: $99
	ld   bc, $01a0                                   ; $5257: $01 $a0 $01
	sbc  c                                           ; $525a: $99
	ld   [bc], a                                     ; $525b: $02
	or   h                                           ; $525c: $b4
	ldh  a, [$1f]                                    ; $525d: $f0 $1f
	inc  a                                           ; $525f: $3c
	rra                                              ; $5260: $1f
	jr   jr_0fe_5224                                 ; $5261: $18 $c1

	inc  b                                           ; $5263: $04
	and  b                                           ; $5264: $a0
	add  hl, bc                                      ; $5265: $09
	ld   l, b                                        ; $5266: $68
	ld   bc, $06a0                                   ; $5267: $01 $a0 $06

jr_0fe_526a:
	sbc  c                                           ; $526a: $99
	ld   bc, $01a0                                   ; $526b: $01 $a0 $01
	sbc  c                                           ; $526e: $99
	ld   bc, $04c1                                   ; $526f: $01 $c1 $04
	and  b                                           ; $5272: $a0
	add  hl, bc                                      ; $5273: $09
	ld   l, b                                        ; $5274: $68
	ld   bc, $06a0                                   ; $5275: $01 $a0 $06
	sbc  c                                           ; $5278: $99
	ld   bc, $01a0                                   ; $5279: $01 $a0 $01
	sbc  c                                           ; $527c: $99
	ld   bc, $04c1                                   ; $527d: $01 $c1 $04
	and  b                                           ; $5280: $a0
	ld   c, $42                                      ; $5281: $0e $42
	ld   bc, $04a0                                   ; $5283: $01 $a0 $04
	sbc  c                                           ; $5286: $99
	ld   bc, $f0fd                                   ; $5287: $01 $fd $f0
	pop  bc                                          ; $528a: $c1
	inc  b                                           ; $528b: $04
	and  b                                           ; $528c: $a0
	add  hl, bc                                      ; $528d: $09
	ld   l, b                                        ; $528e: $68
	ld   bc, $06a0                                   ; $528f: $01 $a0 $06
	sbc  c                                           ; $5292: $99
	ld   bc, $01a0                                   ; $5293: $01 $a0 $01
	sbc  c                                           ; $5296: $99
	ld   b, $b4                                      ; $5297: $06 $b4
	ldh  a, [$1f]                                    ; $5299: $f0 $1f
	jr   c, @+$21                                    ; $529b: $38 $1f

	ld   b, b                                        ; $529d: $40
	rra                                              ; $529e: $1f
	ld   [$f0fd], sp                                 ; $529f: $08 $fd $f0
	pop  bc                                          ; $52a2: $c1
	inc  b                                           ; $52a3: $04
	and  b                                           ; $52a4: $a0
	add  hl, bc                                      ; $52a5: $09
	ld   l, b                                        ; $52a6: $68
	ld   bc, $06a0                                   ; $52a7: $01 $a0 $06
	sbc  c                                           ; $52aa: $99
	ld   bc, $01a0                                   ; $52ab: $01 $a0 $01
	sbc  c                                           ; $52ae: $99
	ld   b, $b6                                      ; $52af: $06 $b6
	ldh  a, [$fd]                                    ; $52b1: $f0 $fd
	di                                               ; $52b3: $f3
	db   $fd                                         ; $52b4: $fd
	ldh  a, [$ac]                                    ; $52b5: $f0 $ac
	ld   bc, $02a0                                   ; $52b7: $01 $a0 $02
	or   c                                           ; $52ba: $b1
	ldh  a, [$ac]                                    ; $52bb: $f0 $ac
	ld   bc, $02e4                                   ; $52bd: $01 $e4 $02
	db   $fd                                         ; $52c0: $fd
	pop  af                                          ; $52c1: $f1
	db   $fd                                         ; $52c2: $fd
	ldh  a, [$ac]                                    ; $52c3: $f0 $ac
	ld   bc, $02e4                                   ; $52c5: $01 $e4 $02
	or   d                                           ; $52c8: $b2
	ldh  a, [$ac]                                    ; $52c9: $f0 $ac
	ld   bc, $02e4                                   ; $52cb: $01 $e4 $02
	or   c                                           ; $52ce: $b1
	pop  af                                          ; $52cf: $f1
	db   $fd                                         ; $52d0: $fd
	ldh  a, [$ac]                                    ; $52d1: $f0 $ac
	ld   bc, $02e4                                   ; $52d3: $01 $e4 $02
	or   d                                           ; $52d6: $b2
	ldh  a, [$c1]                                    ; $52d7: $f0 $c1
	inc  b                                           ; $52d9: $04
	and  b                                           ; $52da: $a0
	add  hl, bc                                      ; $52db: $09
	ld   l, b                                        ; $52dc: $68
	ld   bc, $06a0                                   ; $52dd: $01 $a0 $06
	sbc  c                                           ; $52e0: $99
	ld   bc, $01a0                                   ; $52e1: $01 $a0 $01
	sbc  c                                           ; $52e4: $99
	ld   c, $a0                                      ; $52e5: $0e $a0
	dec  c                                           ; $52e7: $0d
	rla                                              ; $52e8: $17
	ld   bc, $0aa0                                   ; $52e9: $01 $a0 $0a
	db   $10                                         ; $52ec: $10
	ld   bc, $01a0                                   ; $52ed: $01 $a0 $01
	nop                                              ; $52f0: $00
	ld   b, $c1                                      ; $52f1: $06 $c1
	inc  b                                           ; $52f3: $04
	and  b                                           ; $52f4: $a0
	add  hl, bc                                      ; $52f5: $09
	ld   l, b                                        ; $52f6: $68
	ld   bc, $06a0                                   ; $52f7: $01 $a0 $06
	sbc  c                                           ; $52fa: $99
	ld   bc, $01a0                                   ; $52fb: $01 $a0 $01
	sbc  c                                           ; $52fe: $99
	ld   b, $1f                                      ; $52ff: $06 $1f
	jr   @-$3d                                       ; $5301: $18 $c1

	inc  b                                           ; $5303: $04
	and  b                                           ; $5304: $a0
	add  hl, bc                                      ; $5305: $09
	ld   l, b                                        ; $5306: $68
	ld   bc, $06a0                                   ; $5307: $01 $a0 $06
	sbc  c                                           ; $530a: $99
	ld   bc, $01a0                                   ; $530b: $01 $a0 $01
	sbc  c                                           ; $530e: $99
	ld   b, $1f                                      ; $530f: $06 $1f
	ld   [$04c1], sp                                 ; $5311: $08 $c1 $04
	and  b                                           ; $5314: $a0
	add  hl, bc                                      ; $5315: $09
	ld   l, b                                        ; $5316: $68
	ld   bc, $06a0                                   ; $5317: $01 $a0 $06
	sbc  c                                           ; $531a: $99
	ld   bc, $01a0                                   ; $531b: $01 $a0 $01
	sbc  c                                           ; $531e: $99
	ld   b, $a0                                      ; $531f: $06 $a0
	dec  c                                           ; $5321: $0d
	rla                                              ; $5322: $17
	ld   bc, $0aa0                                   ; $5323: $01 $a0 $0a
	db   $10                                         ; $5326: $10
	ld   bc, $01a0                                   ; $5327: $01 $a0 $01
	nop                                              ; $532a: $00
	ld   c, $fd                                      ; $532b: $0e $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $532d: $f0 $a0
	dec  c                                           ; $532f: $0d
	rla                                              ; $5330: $17
	ld   bc, $0aa0                                   ; $5331: $01 $a0 $0a
	db   $10                                         ; $5334: $10
	ld   bc, $01a0                                   ; $5335: $01 $a0 $01
	nop                                              ; $5338: $00
	ld   b, $c1                                      ; $5339: $06 $c1
	inc  b                                           ; $533b: $04
	and  b                                           ; $533c: $a0
	add  hl, bc                                      ; $533d: $09
	ld   l, b                                        ; $533e: $68
	ld   bc, $06a0                                   ; $533f: $01 $a0 $06
	sbc  c                                           ; $5342: $99
	ld   bc, $01a0                                   ; $5343: $01 $a0 $01
	sbc  c                                           ; $5346: $99
	ld   b, $b1                                      ; $5347: $06 $b1
	ldh  a, [$1f]                                    ; $5349: $f0 $1f
	db   $10                                         ; $534b: $10
	db   $fd                                         ; $534c: $fd
	ldh  a, [$c1]                                    ; $534d: $f0 $c1
	inc  b                                           ; $534f: $04
	and  b                                           ; $5350: $a0
	add  hl, bc                                      ; $5351: $09
	ld   l, b                                        ; $5352: $68
	ld   bc, $06a0                                   ; $5353: $01 $a0 $06
	sbc  c                                           ; $5356: $99
	ld   bc, $01a0                                   ; $5357: $01 $a0 $01
	sbc  c                                           ; $535a: $99
	ld   [bc], a                                     ; $535b: $02
	or   d                                           ; $535c: $b2
	ldh  a, [$1f]                                    ; $535d: $f0 $1f
	inc  b                                           ; $535f: $04
	pop  bc                                          ; $5360: $c1
	inc  b                                           ; $5361: $04
	and  b                                           ; $5362: $a0
	add  hl, bc                                      ; $5363: $09
	ld   l, b                                        ; $5364: $68
	ld   bc, $06a0                                   ; $5365: $01 $a0 $06
	sbc  c                                           ; $5368: $99
	ld   bc, $01a0                                   ; $5369: $01 $a0 $01
	sbc  c                                           ; $536c: $99
	ld   d, $c1                                      ; $536d: $16 $c1
	inc  b                                           ; $536f: $04
	and  b                                           ; $5370: $a0
	add  hl, bc                                      ; $5371: $09
	ld   l, b                                        ; $5372: $68
	ld   bc, $06a0                                   ; $5373: $01 $a0 $06
	sbc  c                                           ; $5376: $99
	ld   bc, $01a0                                   ; $5377: $01 $a0 $01
	sbc  c                                           ; $537a: $99
	ld   b, $1f                                      ; $537b: $06 $1f
	ld   b, b                                        ; $537d: $40
	rra                                              ; $537e: $1f
	db   $10                                         ; $537f: $10
	db   $fd                                         ; $5380: $fd
	ldh  a, [$c1]                                    ; $5381: $f0 $c1
	inc  b                                           ; $5383: $04
	and  b                                           ; $5384: $a0
	add  hl, bc                                      ; $5385: $09
	ld   l, b                                        ; $5386: $68
	ld   bc, $06a0                                   ; $5387: $01 $a0 $06
	sbc  c                                           ; $538a: $99
	ld   bc, $01a0                                   ; $538b: $01 $a0 $01
	sbc  c                                           ; $538e: $99
	ld   [bc], a                                     ; $538f: $02
	or   d                                           ; $5390: $b2
	ldh  a, [$1f]                                    ; $5391: $f0 $1f
	inc  b                                           ; $5393: $04
	pop  bc                                          ; $5394: $c1
	inc  b                                           ; $5395: $04
	and  b                                           ; $5396: $a0
	add  hl, bc                                      ; $5397: $09
	ld   l, b                                        ; $5398: $68
	ld   bc, $06a0                                   ; $5399: $01 $a0 $06
	sbc  c                                           ; $539c: $99
	ld   bc, $01a0                                   ; $539d: $01 $a0 $01
	sbc  c                                           ; $53a0: $99
	ld   d, $c1                                      ; $53a1: $16 $c1
	inc  b                                           ; $53a3: $04
	and  b                                           ; $53a4: $a0
	add  hl, bc                                      ; $53a5: $09
	ld   l, b                                        ; $53a6: $68
	ld   bc, $06a0                                   ; $53a7: $01 $a0 $06
	sbc  c                                           ; $53aa: $99
	ld   bc, $01a0                                   ; $53ab: $01 $a0 $01
	sbc  c                                           ; $53ae: $99
	ld   b, $1f                                      ; $53af: $06 $1f
	ld   b, b                                        ; $53b1: $40
	rra                                              ; $53b2: $1f
	db   $10                                         ; $53b3: $10
	db   $fd                                         ; $53b4: $fd
	ldh  a, [$c1]                                    ; $53b5: $f0 $c1
	inc  b                                           ; $53b7: $04
	and  b                                           ; $53b8: $a0
	add  hl, bc                                      ; $53b9: $09
	ld   l, b                                        ; $53ba: $68
	ld   bc, $06a0                                   ; $53bb: $01 $a0 $06
	sbc  c                                           ; $53be: $99
	ld   bc, $01a0                                   ; $53bf: $01 $a0 $01
	sbc  c                                           ; $53c2: $99
	ld   [bc], a                                     ; $53c3: $02
	or   d                                           ; $53c4: $b2
	ldh  a, [$1f]                                    ; $53c5: $f0 $1f
	inc  b                                           ; $53c7: $04
	pop  bc                                          ; $53c8: $c1
	inc  b                                           ; $53c9: $04
	and  b                                           ; $53ca: $a0
	add  hl, bc                                      ; $53cb: $09
	ld   l, b                                        ; $53cc: $68
	ld   bc, $06a0                                   ; $53cd: $01 $a0 $06
	sbc  c                                           ; $53d0: $99
	ld   bc, $01a0                                   ; $53d1: $01 $a0 $01
	sbc  c                                           ; $53d4: $99
	ld   d, $c1                                      ; $53d5: $16 $c1
	inc  b                                           ; $53d7: $04
	and  b                                           ; $53d8: $a0
	add  hl, bc                                      ; $53d9: $09
	ld   l, b                                        ; $53da: $68
	ld   bc, $06a0                                   ; $53db: $01 $a0 $06
	sbc  c                                           ; $53de: $99
	ld   bc, $01a0                                   ; $53df: $01 $a0 $01
	sbc  c                                           ; $53e2: $99
	ld   b, $1f                                      ; $53e3: $06 $1f
	jr   nz, @-$3d                                   ; $53e5: $20 $c1

	inc  b                                           ; $53e7: $04
	and  b                                           ; $53e8: $a0
	add  hl, bc                                      ; $53e9: $09
	ld   l, b                                        ; $53ea: $68
	ld   bc, $06a0                                   ; $53eb: $01 $a0 $06
	sbc  c                                           ; $53ee: $99
	ld   bc, $01a0                                   ; $53ef: $01 $a0 $01
	sbc  c                                           ; $53f2: $99
	ld   c, $a0                                      ; $53f3: $0e $a0
	dec  c                                           ; $53f5: $0d
	rla                                              ; $53f6: $17
	ld   bc, $0aa0                                   ; $53f7: $01 $a0 $0a
	db   $10                                         ; $53fa: $10
	ld   bc, $01a0                                   ; $53fb: $01 $a0 $01
	nop                                              ; $53fe: $00
	ld   b, $c1                                      ; $53ff: $06 $c1
	inc  b                                           ; $5401: $04
	and  b                                           ; $5402: $a0
	add  hl, bc                                      ; $5403: $09
	ld   l, b                                        ; $5404: $68
	ld   bc, $06a0                                   ; $5405: $01 $a0 $06
	sbc  c                                           ; $5408: $99
	ld   bc, $01a0                                   ; $5409: $01 $a0 $01
	sbc  c                                           ; $540c: $99
	ld   b, $1f                                      ; $540d: $06 $1f
	db   $10                                         ; $540f: $10
	pop  bc                                          ; $5410: $c1
	inc  b                                           ; $5411: $04
	and  b                                           ; $5412: $a0
	add  hl, bc                                      ; $5413: $09
	ld   l, b                                        ; $5414: $68
	ld   bc, $06a0                                   ; $5415: $01 $a0 $06
	sbc  c                                           ; $5418: $99
	ld   bc, $01a0                                   ; $5419: $01 $a0 $01
	sbc  c                                           ; $541c: $99
	ld   d, $c1                                      ; $541d: $16 $c1
	inc  b                                           ; $541f: $04
	and  b                                           ; $5420: $a0
	add  hl, bc                                      ; $5421: $09
	ld   l, b                                        ; $5422: $68
	ld   bc, $06a0                                   ; $5423: $01 $a0 $06
	sbc  c                                           ; $5426: $99
	ld   bc, $01a0                                   ; $5427: $01 $a0 $01
	sbc  c                                           ; $542a: $99
	ld   b, $c1                                      ; $542b: $06 $c1
	inc  b                                           ; $542d: $04
	and  b                                           ; $542e: $a0
	add  hl, bc                                      ; $542f: $09
	ld   l, b                                        ; $5430: $68
	ld   bc, $06a0                                   ; $5431: $01 $a0 $06
	sbc  c                                           ; $5434: $99
	ld   bc, $01a0                                   ; $5435: $01 $a0 $01
	sbc  c                                           ; $5438: $99
	ld   b, $c1                                      ; $5439: $06 $c1
	inc  b                                           ; $543b: $04
	and  b                                           ; $543c: $a0
	add  hl, bc                                      ; $543d: $09
	ld   l, b                                        ; $543e: $68
	ld   bc, $06a0                                   ; $543f: $01 $a0 $06
	sbc  c                                           ; $5442: $99
	ld   bc, $01a0                                   ; $5443: $01 $a0 $01
	sbc  c                                           ; $5446: $99
	ld   b, $c1                                      ; $5447: $06 $c1
	inc  b                                           ; $5449: $04
	and  b                                           ; $544a: $a0
	add  hl, bc                                      ; $544b: $09
	ld   l, b                                        ; $544c: $68
	ld   bc, $06a0                                   ; $544d: $01 $a0 $06
	sbc  c                                           ; $5450: $99
	ld   bc, $01a0                                   ; $5451: $01 $a0 $01
	sbc  c                                           ; $5454: $99
	ld   b, $c1                                      ; $5455: $06 $c1
	inc  b                                           ; $5457: $04
	and  b                                           ; $5458: $a0
	add  hl, bc                                      ; $5459: $09
	ld   l, b                                        ; $545a: $68
	ld   bc, $06a0                                   ; $545b: $01 $a0 $06
	sbc  c                                           ; $545e: $99
	ld   bc, $01a0                                   ; $545f: $01 $a0 $01
	sbc  c                                           ; $5462: $99
	ld   b, $c1                                      ; $5463: $06 $c1
	inc  b                                           ; $5465: $04
	and  b                                           ; $5466: $a0
	add  hl, bc                                      ; $5467: $09
	ld   l, b                                        ; $5468: $68
	ld   bc, $06a0                                   ; $5469: $01 $a0 $06
	sbc  c                                           ; $546c: $99
	ld   bc, $01a0                                   ; $546d: $01 $a0 $01
	sbc  c                                           ; $5470: $99
	ld   b, $c1                                      ; $5471: $06 $c1
	inc  b                                           ; $5473: $04
	and  b                                           ; $5474: $a0
	add  hl, bc                                      ; $5475: $09
	ld   l, b                                        ; $5476: $68
	ld   bc, $06a0                                   ; $5477: $01 $a0 $06
	sbc  c                                           ; $547a: $99
	ld   bc, $01a0                                   ; $547b: $01 $a0 $01
	sbc  c                                           ; $547e: $99
	ld   b, $b0                                      ; $547f: $06 $b0
	di                                               ; $5481: $f3
	rst  $38                                         ; $5482: $ff
	rst  $38                                         ; $5483: $ff
	pop  bc                                          ; $5484: $c1
	inc  b                                           ; $5485: $04
	and  b                                           ; $5486: $a0
	add  hl, bc                                      ; $5487: $09
	ld   l, b                                        ; $5488: $68
	ld   bc, $06a0                                   ; $5489: $01 $a0 $06
	sbc  c                                           ; $548c: $99
	ld   bc, $01a0                                   ; $548d: $01 $a0 $01
	sbc  c                                           ; $5490: $99
	ld   c, $a0                                      ; $5491: $0e $a0
	dec  c                                           ; $5493: $0d
	rla                                              ; $5494: $17
	ld   bc, $0aa0                                   ; $5495: $01 $a0 $0a
	db   $10                                         ; $5498: $10
	ld   bc, $01a0                                   ; $5499: $01 $a0 $01
	nop                                              ; $549c: $00
	ld   c, $c1                                      ; $549d: $0e $c1
	inc  b                                           ; $549f: $04
	and  b                                           ; $54a0: $a0
	add  hl, bc                                      ; $54a1: $09
	ld   l, b                                        ; $54a2: $68
	ld   bc, $06a0                                   ; $54a3: $01 $a0 $06
	sbc  c                                           ; $54a6: $99
	ld   bc, $01a0                                   ; $54a7: $01 $a0 $01
	sbc  c                                           ; $54aa: $99
	ld   b, $c1                                      ; $54ab: $06 $c1
	inc  b                                           ; $54ad: $04
	and  b                                           ; $54ae: $a0
	add  hl, bc                                      ; $54af: $09
	ld   l, b                                        ; $54b0: $68
	ld   bc, $06a0                                   ; $54b1: $01 $a0 $06
	sbc  c                                           ; $54b4: $99
	ld   bc, $01a0                                   ; $54b5: $01 $a0 $01
	sbc  c                                           ; $54b8: $99
	ld   b, $a0                                      ; $54b9: $06 $a0
	dec  c                                           ; $54bb: $0d

jr_0fe_54bc:
	rla                                              ; $54bc: $17
	ld   bc, $0aa0                                   ; $54bd: $01 $a0 $0a
	db   $10                                         ; $54c0: $10
	ld   bc, $01a0                                   ; $54c1: $01 $a0 $01
	nop                                              ; $54c4: $00
	ld   c, $ad                                      ; $54c5: $0e $ad
	nop                                              ; $54c7: $00
	pop  bc                                          ; $54c8: $c1
	inc  b                                           ; $54c9: $04
	and  b                                           ; $54ca: $a0
	add  hl, bc                                      ; $54cb: $09
	ld   l, b                                        ; $54cc: $68
	ld   bc, $06a0                                   ; $54cd: $01 $a0 $06
	sbc  c                                           ; $54d0: $99
	ld   bc, $01a0                                   ; $54d1: $01 $a0 $01
	sbc  c                                           ; $54d4: $99
	ld   c, $a0                                      ; $54d5: $0e $a0
	dec  c                                           ; $54d7: $0d
	rla                                              ; $54d8: $17
	ld   bc, $0aa0                                   ; $54d9: $01 $a0 $0a
	db   $10                                         ; $54dc: $10
	ld   bc, $01a0                                   ; $54dd: $01 $a0 $01
	nop                                              ; $54e0: $00
	ld   b, $c1                                      ; $54e1: $06 $c1
	inc  b                                           ; $54e3: $04
	and  b                                           ; $54e4: $a0
	add  hl, bc                                      ; $54e5: $09
	ld   l, b                                        ; $54e6: $68
	ld   bc, $06a0                                   ; $54e7: $01 $a0 $06
	sbc  c                                           ; $54ea: $99
	ld   bc, $01a0                                   ; $54eb: $01 $a0 $01
	sbc  c                                           ; $54ee: $99
	ld   c, $c1                                      ; $54ef: $0e $c1
	inc  b                                           ; $54f1: $04
	and  b                                           ; $54f2: $a0
	add  hl, bc                                      ; $54f3: $09
	ld   l, b                                        ; $54f4: $68
	ld   bc, $06a0                                   ; $54f5: $01 $a0 $06
	sbc  c                                           ; $54f8: $99
	ld   bc, $01a0                                   ; $54f9: $01 $a0 $01
	sbc  c                                           ; $54fc: $99
	ld   b, $a0                                      ; $54fd: $06 $a0
	dec  c                                           ; $54ff: $0d
	rla                                              ; $5500: $17
	ld   bc, $0aa0                                   ; $5501: $01 $a0 $0a
	db   $10                                         ; $5504: $10
	ld   bc, $01a0                                   ; $5505: $01 $a0 $01
	nop                                              ; $5508: $00
	ld   c, $ad                                      ; $5509: $0e $ad
	nop                                              ; $550b: $00
	inc  b                                           ; $550c: $04
	nop                                              ; $550d: $00
	add  hl, bc                                      ; $550e: $09
	nop                                              ; $550f: $00
	rra                                              ; $5510: $1f
	db   $10                                         ; $5511: $10
	db   $fd                                         ; $5512: $fd
	di                                               ; $5513: $f3
	and  d                                           ; $5514: $a2
	nop                                              ; $5515: $00
	rst  ToBoot                                         ; $5516: $c7
	jr   nc, jr_0fe_54bc                             ; $5517: $30 $a3

	inc  d                                           ; $5519: $14
	db   $fd                                         ; $551a: $fd
	pop  af                                          ; $551b: $f1
	db   $fd                                         ; $551c: $fd
	ldh  a, [$1f]                                    ; $551d: $f0 $1f
	ld   [$0ca0], sp                                 ; $551f: $08 $a0 $0c
	inc  h                                           ; $5522: $24
	ld   [bc], a                                     ; $5523: $02
	and  b                                           ; $5524: $a0
	dec  b                                           ; $5525: $05
	inc  h                                           ; $5526: $24
	ld   b, $b3                                      ; $5527: $06 $b3
	ldh  a, [$1f]                                    ; $5529: $f0 $1f
	ld   [$f0fd], sp                                 ; $552b: $08 $fd $f0
	and  b                                           ; $552e: $a0
	inc  c                                           ; $552f: $0c
	inc  d                                           ; $5530: $14
	ld   [bc], a                                     ; $5531: $02
	and  b                                           ; $5532: $a0
	dec  b                                           ; $5533: $05
	inc  d                                           ; $5534: $14
	inc  b                                           ; $5535: $04
	rra                                              ; $5536: $1f
	ld   [bc], a                                     ; $5537: $02
	or   c                                           ; $5538: $b1
	ldh  a, [hScriptOpcodeParams]                                    ; $5539: $f0 $a0
	inc  c                                           ; $553b: $0c
	add  hl, de                                      ; $553c: $19
	ld   [bc], a                                     ; $553d: $02
	and  b                                           ; $553e: $a0
	dec  b                                           ; $553f: $05
	add  hl, de                                      ; $5540: $19
	inc  b                                           ; $5541: $04
	rra                                              ; $5542: $1f
	ld   [bc], a                                     ; $5543: $02
	and  b                                           ; $5544: $a0
	inc  c                                           ; $5545: $0c
	inc  d                                           ; $5546: $14
	ld   [bc], a                                     ; $5547: $02
	and  b                                           ; $5548: $a0
	dec  b                                           ; $5549: $05
	inc  d                                           ; $554a: $14
	inc  b                                           ; $554b: $04
	rra                                              ; $554c: $1f
	ld   [bc], a                                     ; $554d: $02
	and  b                                           ; $554e: $a0
	inc  c                                           ; $554f: $0c
	ld   [de], a                                     ; $5550: $12
	ld   [bc], a                                     ; $5551: $02
	and  b                                           ; $5552: $a0
	dec  b                                           ; $5553: $05
	ld   [de], a                                     ; $5554: $12
	ld   [bc], a                                     ; $5555: $02
	and  b                                           ; $5556: $a0
	inc  c                                           ; $5557: $0c
	ld   [de], a                                     ; $5558: $12
	ld   [bc], a                                     ; $5559: $02
	and  b                                           ; $555a: $a0
	dec  b                                           ; $555b: $05
	ld   [de], a                                     ; $555c: $12
	ld   [bc], a                                     ; $555d: $02
	and  b                                           ; $555e: $a0
	inc  c                                           ; $555f: $0c
	inc  d                                           ; $5560: $14
	ld   [bc], a                                     ; $5561: $02
	and  b                                           ; $5562: $a0
	dec  b                                           ; $5563: $05
	inc  d                                           ; $5564: $14
	inc  b                                           ; $5565: $04
	rra                                              ; $5566: $1f
	ld   [bc], a                                     ; $5567: $02
	and  b                                           ; $5568: $a0
	inc  c                                           ; $5569: $0c
	inc  h                                           ; $556a: $24
	ld   [bc], a                                     ; $556b: $02
	and  b                                           ; $556c: $a0
	dec  b                                           ; $556d: $05
	inc  h                                           ; $556e: $24
	ld   b, $fd                                      ; $556f: $06 $fd
	ldh  a, [$1f]                                    ; $5571: $f0 $1f
	ld   [$0ca0], sp                                 ; $5573: $08 $a0 $0c
	inc  h                                           ; $5576: $24
	ld   [bc], a                                     ; $5577: $02
	and  b                                           ; $5578: $a0
	dec  b                                           ; $5579: $05
	inc  h                                           ; $557a: $24
	ld   b, $b3                                      ; $557b: $06 $b3
	ldh  a, [$fd]                                    ; $557d: $f0 $fd
	ldh  a, [$1f]                                    ; $557f: $f0 $1f
	ld   [$0ca0], sp                                 ; $5581: $08 $a0 $0c
	ld   [hl+], a                                    ; $5584: $22
	ld   [bc], a                                     ; $5585: $02
	and  b                                           ; $5586: $a0
	dec  b                                           ; $5587: $05
	ld   [hl+], a                                    ; $5588: $22
	ld   b, $b1                                      ; $5589: $06 $b1
	ldh  a, [$1f]                                    ; $558b: $f0 $1f
	ld   [$f0fd], sp                                 ; $558d: $08 $fd $f0
	and  b                                           ; $5590: $a0
	inc  c                                           ; $5591: $0c
	jr   nz, jr_0fe_5596                             ; $5592: $20 $02

	and  b                                           ; $5594: $a0
	dec  b                                           ; $5595: $05

jr_0fe_5596:
	jr   nz, jr_0fe_559a                             ; $5596: $20 $02

	rra                                              ; $5598: $1f
	inc  b                                           ; $5599: $04

jr_0fe_559a:
	or   c                                           ; $559a: $b1
	ldh  a, [hScriptOpcodeParams]                                    ; $559b: $f0 $a0
	inc  c                                           ; $559d: $0c
	ld   a, [de]                                     ; $559e: $1a
	ld   [bc], a                                     ; $559f: $02
	and  b                                           ; $55a0: $a0
	dec  b                                           ; $55a1: $05
	ld   a, [de]                                     ; $55a2: $1a
	ld   [bc], a                                     ; $55a3: $02
	rra                                              ; $55a4: $1f
	inc  b                                           ; $55a5: $04
	and  b                                           ; $55a6: $a0
	inc  c                                           ; $55a7: $0c
	jr   nz, jr_0fe_55ac                             ; $55a8: $20 $02

	and  b                                           ; $55aa: $a0
	dec  b                                           ; $55ab: $05

jr_0fe_55ac:
	jr   nz, jr_0fe_55b0                             ; $55ac: $20 $02

	rra                                              ; $55ae: $1f
	inc  b                                           ; $55af: $04

jr_0fe_55b0:
	and  b                                           ; $55b0: $a0
	inc  c                                           ; $55b1: $0c
	ld   a, [de]                                     ; $55b2: $1a
	ld   [bc], a                                     ; $55b3: $02
	and  b                                           ; $55b4: $a0
	dec  b                                           ; $55b5: $05
	ld   a, [de]                                     ; $55b6: $1a
	ld   [bc], a                                     ; $55b7: $02
	and  b                                           ; $55b8: $a0
	inc  c                                           ; $55b9: $0c
	ld   a, [de]                                     ; $55ba: $1a

jr_0fe_55bb:
	ld   [bc], a                                     ; $55bb: $02
	and  b                                           ; $55bc: $a0
	dec  b                                           ; $55bd: $05
	ld   a, [de]                                     ; $55be: $1a
	ld   [bc], a                                     ; $55bf: $02
	and  b                                           ; $55c0: $a0
	inc  c                                           ; $55c1: $0c
	rla                                              ; $55c2: $17
	ld   [bc], a                                     ; $55c3: $02
	and  b                                           ; $55c4: $a0
	dec  b                                           ; $55c5: $05
	rla                                              ; $55c6: $17
	ld   [bc], a                                     ; $55c7: $02
	rra                                              ; $55c8: $1f
	inc  b                                           ; $55c9: $04
	and  b                                           ; $55ca: $a0
	inc  c                                           ; $55cb: $0c
	dec  d                                           ; $55cc: $15
	ld   [bc], a                                     ; $55cd: $02
	and  b                                           ; $55ce: $a0
	dec  b                                           ; $55cf: $05
	dec  d                                           ; $55d0: $15
	ld   [bc], a                                     ; $55d1: $02
	rra                                              ; $55d2: $1f
	inc  b                                           ; $55d3: $04
	or   c                                           ; $55d4: $b1
	pop  af                                          ; $55d5: $f1
	db   $fd                                         ; $55d6: $fd
	ldh  a, [$1f]                                    ; $55d7: $f0 $1f
	ld   [$0ca0], sp                                 ; $55d9: $08 $a0 $0c
	dec  de                                          ; $55dc: $1b
	ld   [bc], a                                     ; $55dd: $02
	and  b                                           ; $55de: $a0
	dec  b                                           ; $55df: $05
	dec  de                                          ; $55e0: $1b
	ld   b, $b2                                      ; $55e1: $06 $b2
	ldh  a, [$1f]                                    ; $55e3: $f0 $1f
	db   $10                                         ; $55e5: $10
	db   $fd                                         ; $55e6: $fd
	ldh  a, [$1f]                                    ; $55e7: $f0 $1f
	ld   [$0ca0], sp                                 ; $55e9: $08 $a0 $0c
	ld   [hl+], a                                    ; $55ec: $22
	ld   [bc], a                                     ; $55ed: $02
	and  b                                           ; $55ee: $a0
	dec  b                                           ; $55ef: $05
	ld   [hl+], a                                    ; $55f0: $22
	ld   b, $b2                                      ; $55f1: $06 $b2
	ldh  a, [$1f]                                    ; $55f3: $f0 $1f
	db   $10                                         ; $55f5: $10
	jp   $a304                                       ; $55f6: $c3 $04 $a3


	inc  d                                           ; $55f9: $14
	and  d                                           ; $55fa: $a2
	ld   bc, $081f                                   ; $55fb: $01 $1f $08
	and  b                                           ; $55fe: $a0
	inc  c                                           ; $55ff: $0c
	ld   [de], a                                     ; $5600: $12
	ld   [$0814], sp                                 ; $5601: $08 $14 $08
	rla                                              ; $5604: $17
	ld   [$0819], sp                                 ; $5605: $08 $19 $08

jr_0fe_5608:
	rla                                              ; $5608: $17
	ld   [bc], a                                     ; $5609: $02
	and  b                                           ; $560a: $a0
	dec  b                                           ; $560b: $05
	rla                                              ; $560c: $17
	ld   [bc], a                                     ; $560d: $02
	and  b                                           ; $560e: $a0
	inc  c                                           ; $560f: $0c
	add  hl, de                                      ; $5610: $19
	ld   [bc], a                                     ; $5611: $02
	and  b                                           ; $5612: $a0
	dec  b                                           ; $5613: $05
	add  hl, de                                      ; $5614: $19
	ld   [bc], a                                     ; $5615: $02
	and  b                                           ; $5616: $a0
	inc  c                                           ; $5617: $0c
	dec  de                                          ; $5618: $1b
	jr   nz, jr_0fe_55bb                             ; $5619: $20 $a0

	dec  b                                           ; $561b: $05
	dec  de                                          ; $561c: $1b
	ld   [$0ca0], sp                                 ; $561d: $08 $a0 $0c
	ld   [hl+], a                                    ; $5620: $22
	inc  b                                           ; $5621: $04
	and  b                                           ; $5622: $a0
	dec  b                                           ; $5623: $05
	ld   [hl+], a                                    ; $5624: $22
	inc  b                                           ; $5625: $04
	and  b                                           ; $5626: $a0
	inc  c                                           ; $5627: $0c
	dec  de                                          ; $5628: $1b
	ld   [$0219], sp                                 ; $5629: $08 $19 $02
	and  b                                           ; $562c: $a0
	dec  b                                           ; $562d: $05
	add  hl, de                                      ; $562e: $19
	ld   [bc], a                                     ; $562f: $02
	and  b                                           ; $5630: $a0
	inc  c                                           ; $5631: $0c
	rla                                              ; $5632: $17
	ld   [bc], a                                     ; $5633: $02
	and  b                                           ; $5634: $a0
	dec  b                                           ; $5635: $05
	rla                                              ; $5636: $17
	ld   [bc], a                                     ; $5637: $02
	and  b                                           ; $5638: $a0
	inc  c                                           ; $5639: $0c
	add  hl, de                                      ; $563a: $19
	ld   b, $a0                                      ; $563b: $06 $a0
	dec  b                                           ; $563d: $05
	add  hl, de                                      ; $563e: $19
	inc  b                                           ; $563f: $04
	rra                                              ; $5640: $1f
	ld   b, $c7                                      ; $5641: $06 $c7
	jr   nc, @-$5b                                   ; $5643: $30 $a3

	inc  d                                           ; $5645: $14
	and  d                                           ; $5646: $a2
	nop                                              ; $5647: $00
	rra                                              ; $5648: $1f
	ld   [$f0fd], sp                                 ; $5649: $08 $fd $f0
	and  b                                           ; $564c: $a0
	inc  c                                           ; $564d: $0c
	ld   [hl+], a                                    ; $564e: $22
	ld   [bc], a                                     ; $564f: $02
	and  b                                           ; $5650: $a0
	dec  b                                           ; $5651: $05
	ld   [hl+], a                                    ; $5652: $22
	ld   b, $be                                      ; $5653: $06 $be
	ldh  a, [$b0]                                    ; $5655: $f0 $b0
	di                                               ; $5657: $f3
	rst  $38                                         ; $5658: $ff
	rst  $38                                         ; $5659: $ff
	inc  b                                           ; $565a: $04
	nop                                              ; $565b: $00
	add  hl, bc                                      ; $565c: $09
	nop                                              ; $565d: $00
	rra                                              ; $565e: $1f
	db   $10                                         ; $565f: $10
	db   $fd                                         ; $5660: $fd
	di                                               ; $5661: $f3
	rst  ToBoot                                         ; $5662: $c7
	jr   nc, jr_0fe_5608                             ; $5663: $30 $a3

	inc  h                                           ; $5665: $24
	db   $fd                                         ; $5666: $fd
	ldh  a, [$1f]                                    ; $5667: $f0 $1f
	ld   [$0da0], sp                                 ; $5669: $08 $a0 $0d
	inc  [hl]                                        ; $566c: $34
	ld   [bc], a                                     ; $566d: $02
	and  b                                           ; $566e: $a0
	rlca                                             ; $566f: $07
	inc  [hl]                                        ; $5670: $34
	ld   b, $a0                                      ; $5671: $06 $a0
	dec  c                                           ; $5673: $0d
	inc  [hl]                                        ; $5674: $34
	ld   [bc], a                                     ; $5675: $02
	and  b                                           ; $5676: $a0
	rlca                                             ; $5677: $07
	inc  [hl]                                        ; $5678: $34
	ld   b, $a0                                      ; $5679: $06 $a0
	dec  c                                           ; $567b: $0d
	ld   [hl-], a                                    ; $567c: $32
	ld   [bc], a                                     ; $567d: $02
	and  b                                           ; $567e: $a0
	rlca                                             ; $567f: $07
	ld   [hl-], a                                    ; $5680: $32
	ld   b, $a0                                      ; $5681: $06 $a0
	dec  c                                           ; $5683: $0d
	inc  [hl]                                        ; $5684: $34
	ld   [bc], a                                     ; $5685: $02
	and  b                                           ; $5686: $a0
	rlca                                             ; $5687: $07
	inc  [hl]                                        ; $5688: $34
	ld   b, $a0                                      ; $5689: $06 $a0
	dec  c                                           ; $568b: $0d
	inc  [hl]                                        ; $568c: $34
	ld   [bc], a                                     ; $568d: $02
	and  b                                           ; $568e: $a0
	rlca                                             ; $568f: $07
	inc  [hl]                                        ; $5690: $34
	ld   [bc], a                                     ; $5691: $02
	and  b                                           ; $5692: $a0
	dec  c                                           ; $5693: $0d
	ld   [hl-], a                                    ; $5694: $32
	ld   [bc], a                                     ; $5695: $02
	and  b                                           ; $5696: $a0
	rlca                                             ; $5697: $07
	ld   [hl-], a                                    ; $5698: $32
	ld   [bc], a                                     ; $5699: $02
	and  b                                           ; $569a: $a0
	dec  c                                           ; $569b: $0d
	dec  hl                                          ; $569c: $2b
	ld   [bc], a                                     ; $569d: $02
	and  b                                           ; $569e: $a0
	rlca                                             ; $569f: $07
	dec  hl                                          ; $56a0: $2b
	ld   b, $1f                                      ; $56a1: $06 $1f
	ld   [$081f], sp                                 ; $56a3: $08 $1f $08
	and  b                                           ; $56a6: $a0
	dec  c                                           ; $56a7: $0d
	dec  de                                          ; $56a8: $1b
	ld   [bc], a                                     ; $56a9: $02
	and  b                                           ; $56aa: $a0
	rlca                                             ; $56ab: $07
	dec  de                                          ; $56ac: $1b
	inc  b                                           ; $56ad: $04
	rra                                              ; $56ae: $1f
	ld   [bc], a                                     ; $56af: $02
	and  b                                           ; $56b0: $a0
	dec  c                                           ; $56b1: $0d
	dec  de                                          ; $56b2: $1b
	ld   [bc], a                                     ; $56b3: $02
	and  b                                           ; $56b4: $a0
	rlca                                             ; $56b5: $07
	dec  de                                          ; $56b6: $1b
	inc  b                                           ; $56b7: $04
	rra                                              ; $56b8: $1f
	ld   [bc], a                                     ; $56b9: $02
	and  b                                           ; $56ba: $a0
	dec  c                                           ; $56bb: $0d
	ld   [hl+], a                                    ; $56bc: $22
	ld   [bc], a                                     ; $56bd: $02
	and  b                                           ; $56be: $a0
	rlca                                             ; $56bf: $07
	ld   [hl+], a                                    ; $56c0: $22
	inc  b                                           ; $56c1: $04
	rra                                              ; $56c2: $1f
	ld   [bc], a                                     ; $56c3: $02
	and  b                                           ; $56c4: $a0
	dec  c                                           ; $56c5: $0d
	dec  de                                          ; $56c6: $1b
	ld   [bc], a                                     ; $56c7: $02
	and  b                                           ; $56c8: $a0
	rlca                                             ; $56c9: $07
	dec  de                                          ; $56ca: $1b
	inc  b                                           ; $56cb: $04
	rra                                              ; $56cc: $1f
	ld   [bc], a                                     ; $56cd: $02
	and  b                                           ; $56ce: $a0
	dec  c                                           ; $56cf: $0d
	add  hl, de                                      ; $56d0: $19
	ld   [bc], a                                     ; $56d1: $02
	and  b                                           ; $56d2: $a0
	rlca                                             ; $56d3: $07
	add  hl, de                                      ; $56d4: $19
	ld   [bc], a                                     ; $56d5: $02
	and  b                                           ; $56d6: $a0
	dec  c                                           ; $56d7: $0d
	add  hl, de                                      ; $56d8: $19
	ld   [bc], a                                     ; $56d9: $02
	and  b                                           ; $56da: $a0
	rlca                                             ; $56db: $07
	add  hl, de                                      ; $56dc: $19
	ld   [bc], a                                     ; $56dd: $02
	and  b                                           ; $56de: $a0
	dec  c                                           ; $56df: $0d
	dec  de                                          ; $56e0: $1b
	ld   [bc], a                                     ; $56e1: $02
	and  b                                           ; $56e2: $a0
	rlca                                             ; $56e3: $07
	dec  de                                          ; $56e4: $1b
	inc  b                                           ; $56e5: $04
	rra                                              ; $56e6: $1f
	ld   a, [bc]                                     ; $56e7: $0a
	rra                                              ; $56e8: $1f
	ld   [$0da0], sp                                 ; $56e9: $08 $a0 $0d
	inc  [hl]                                        ; $56ec: $34
	ld   [bc], a                                     ; $56ed: $02
	and  b                                           ; $56ee: $a0
	rlca                                             ; $56ef: $07
	inc  [hl]                                        ; $56f0: $34
	ld   b, $a0                                      ; $56f1: $06 $a0
	dec  c                                           ; $56f3: $0d
	inc  [hl]                                        ; $56f4: $34
	ld   [bc], a                                     ; $56f5: $02
	and  b                                           ; $56f6: $a0
	rlca                                             ; $56f7: $07
	inc  [hl]                                        ; $56f8: $34
	ld   b, $a0                                      ; $56f9: $06 $a0
	dec  c                                           ; $56fb: $0d
	ld   [hl-], a                                    ; $56fc: $32
	ld   [bc], a                                     ; $56fd: $02
	and  b                                           ; $56fe: $a0
	rlca                                             ; $56ff: $07
	ld   [hl-], a                                    ; $5700: $32
	ld   b, $a0                                      ; $5701: $06 $a0
	dec  c                                           ; $5703: $0d
	inc  [hl]                                        ; $5704: $34
	ld   [bc], a                                     ; $5705: $02
	and  b                                           ; $5706: $a0
	rlca                                             ; $5707: $07
	inc  [hl]                                        ; $5708: $34
	ld   b, $a0                                      ; $5709: $06 $a0
	dec  c                                           ; $570b: $0d
	inc  [hl]                                        ; $570c: $34
	ld   [bc], a                                     ; $570d: $02
	and  b                                           ; $570e: $a0
	rlca                                             ; $570f: $07
	inc  [hl]                                        ; $5710: $34
	ld   [bc], a                                     ; $5711: $02
	and  b                                           ; $5712: $a0
	dec  c                                           ; $5713: $0d
	ld   [hl-], a                                    ; $5714: $32
	ld   [bc], a                                     ; $5715: $02
	and  b                                           ; $5716: $a0
	rlca                                             ; $5717: $07
	ld   [hl-], a                                    ; $5718: $32
	ld   [bc], a                                     ; $5719: $02
	and  b                                           ; $571a: $a0
	dec  c                                           ; $571b: $0d
	dec  hl                                          ; $571c: $2b
	ld   [bc], a                                     ; $571d: $02
	and  b                                           ; $571e: $a0
	rlca                                             ; $571f: $07
	dec  hl                                          ; $5720: $2b
	ld   b, $a0                                      ; $5721: $06 $a0
	dec  c                                           ; $5723: $0d
	add  hl, hl                                      ; $5724: $29
	ld   [bc], a                                     ; $5725: $02
	and  b                                           ; $5726: $a0
	rlca                                             ; $5727: $07
	add  hl, hl                                      ; $5728: $29
	ld   b, $a0                                      ; $5729: $06 $a0
	dec  c                                           ; $572b: $0d
	add  hl, hl                                      ; $572c: $29
	ld   [bc], a                                     ; $572d: $02
	and  b                                           ; $572e: $a0
	rlca                                             ; $572f: $07
	add  hl, hl                                      ; $5730: $29
	ld   b, $a0                                      ; $5731: $06 $a0
	dec  c                                           ; $5733: $0d
	add  hl, hl                                      ; $5734: $29
	ld   [bc], a                                     ; $5735: $02
	and  b                                           ; $5736: $a0
	rlca                                             ; $5737: $07
	add  hl, hl                                      ; $5738: $29
	ld   [bc], a                                     ; $5739: $02
	and  b                                           ; $573a: $a0
	dec  c                                           ; $573b: $0d
	ld   [hl-], a                                    ; $573c: $32
	ld   [bc], a                                     ; $573d: $02
	and  b                                           ; $573e: $a0
	rlca                                             ; $573f: $07
	ld   [hl-], a                                    ; $5740: $32
	ld   [bc], a                                     ; $5741: $02
	and  b                                           ; $5742: $a0
	dec  c                                           ; $5743: $0d
	add  hl, hl                                      ; $5744: $29
	ld   [bc], a                                     ; $5745: $02
	and  b                                           ; $5746: $a0
	rlca                                             ; $5747: $07
	add  hl, hl                                      ; $5748: $29
	ld   [bc], a                                     ; $5749: $02
	and  b                                           ; $574a: $a0
	dec  c                                           ; $574b: $0d
	daa                                              ; $574c: $27
	ld   [bc], a                                     ; $574d: $02
	and  b                                           ; $574e: $a0
	rlca                                             ; $574f: $07
	daa                                              ; $5750: $27
	ld   [bc], a                                     ; $5751: $02
	and  b                                           ; $5752: $a0
	dec  c                                           ; $5753: $0d
	inc  h                                           ; $5754: $24
	ld   [bc], a                                     ; $5755: $02
	and  b                                           ; $5756: $a0
	rlca                                             ; $5757: $07
	inc  h                                           ; $5758: $24
	ld   [bc], a                                     ; $5759: $02
	and  b                                           ; $575a: $a0
	dec  c                                           ; $575b: $0d
	daa                                              ; $575c: $27
	ld   [bc], a                                     ; $575d: $02
	and  b                                           ; $575e: $a0
	rlca                                             ; $575f: $07
	daa                                              ; $5760: $27
	ld   [bc], a                                     ; $5761: $02
	and  b                                           ; $5762: $a0
	dec  c                                           ; $5763: $0d
	add  hl, hl                                      ; $5764: $29
	ld   [bc], a                                     ; $5765: $02
	and  b                                           ; $5766: $a0
	rlca                                             ; $5767: $07
	add  hl, hl                                      ; $5768: $29
	ld   b, $a0                                      ; $5769: $06 $a0
	dec  c                                           ; $576b: $0d
	dec  h                                           ; $576c: $25
	ld   [bc], a                                     ; $576d: $02
	and  b                                           ; $576e: $a0
	rlca                                             ; $576f: $07
	dec  h                                           ; $5770: $25
	ld   b, $a0                                      ; $5771: $06 $a0
	dec  c                                           ; $5773: $0d
	dec  h                                           ; $5774: $25
	ld   [bc], a                                     ; $5775: $02
	and  b                                           ; $5776: $a0
	rlca                                             ; $5777: $07
	dec  h                                           ; $5778: $25
	ld   b, $a0                                      ; $5779: $06 $a0
	dec  c                                           ; $577b: $0d
	inc  hl                                          ; $577c: $23
	ld   [bc], a                                     ; $577d: $02
	and  b                                           ; $577e: $a0
	rlca                                             ; $577f: $07
	inc  hl                                          ; $5780: $23
	ld   b, $a0                                      ; $5781: $06 $a0
	dec  c                                           ; $5783: $0d
	dec  h                                           ; $5784: $25
	ld   [bc], a                                     ; $5785: $02
	and  b                                           ; $5786: $a0
	rlca                                             ; $5787: $07
	dec  h                                           ; $5788: $25
	ld   b, $a0                                      ; $5789: $06 $a0
	dec  c                                           ; $578b: $0d
	inc  hl                                          ; $578c: $23
	ld   [bc], a                                     ; $578d: $02
	and  b                                           ; $578e: $a0
	rlca                                             ; $578f: $07
	inc  hl                                          ; $5790: $23
	ld   [bc], a                                     ; $5791: $02
	and  b                                           ; $5792: $a0
	dec  c                                           ; $5793: $0d
	inc  hl                                          ; $5794: $23
	ld   [bc], a                                     ; $5795: $02
	and  b                                           ; $5796: $a0
	rlca                                             ; $5797: $07
	inc  hl                                          ; $5798: $23
	ld   [bc], a                                     ; $5799: $02
	and  b                                           ; $579a: $a0
	dec  c                                           ; $579b: $0d
	jr   nz, jr_0fe_57a0                             ; $579c: $20 $02

	and  b                                           ; $579e: $a0
	rlca                                             ; $579f: $07

jr_0fe_57a0:
	jr   nz, jr_0fe_57a8                             ; $57a0: $20 $06

	and  b                                           ; $57a2: $a0
	dec  c                                           ; $57a3: $0d
	ld   a, [de]                                     ; $57a4: $1a
	ld   [bc], a                                     ; $57a5: $02
	and  b                                           ; $57a6: $a0
	rlca                                             ; $57a7: $07

jr_0fe_57a8:
	ld   a, [de]                                     ; $57a8: $1a
	ld   b, $b1                                      ; $57a9: $06 $b1
	ldh  a, [$fd]                                    ; $57ab: $f0 $fd
	pop  af                                          ; $57ad: $f1
	db   $fd                                         ; $57ae: $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $57af: $f0 $a0
	dec  c                                           ; $57b1: $0d
	dec  hl                                          ; $57b2: $2b
	ld   [bc], a                                     ; $57b3: $02
	and  b                                           ; $57b4: $a0
	rlca                                             ; $57b5: $07
	dec  hl                                          ; $57b6: $2b
	ld   [bc], a                                     ; $57b7: $02
	and  b                                           ; $57b8: $a0
	dec  c                                           ; $57b9: $0d
	dec  hl                                          ; $57ba: $2b
	ld   [bc], a                                     ; $57bb: $02
	and  b                                           ; $57bc: $a0
	rlca                                             ; $57bd: $07
	dec  hl                                          ; $57be: $2b
	ld   [bc], a                                     ; $57bf: $02
	and  b                                           ; $57c0: $a0
	dec  c                                           ; $57c1: $0d
	add  hl, hl                                      ; $57c2: $29
	ld   [bc], a                                     ; $57c3: $02
	and  b                                           ; $57c4: $a0
	rlca                                             ; $57c5: $07
	add  hl, hl                                      ; $57c6: $29
	ld   b, $b2                                      ; $57c7: $06 $b2
	ldh  a, [hScriptOpcodeParams]                                    ; $57c9: $f0 $a0
	dec  c                                           ; $57cb: $0d
	dec  hl                                          ; $57cc: $2b
	ld   [bc], a                                     ; $57cd: $02
	and  b                                           ; $57ce: $a0
	rlca                                             ; $57cf: $07
	dec  hl                                          ; $57d0: $2b
	ld   b, $1f                                      ; $57d1: $06 $1f
	ld   [$f0fd], sp                                 ; $57d3: $08 $fd $f0
	and  b                                           ; $57d6: $a0
	dec  c                                           ; $57d7: $0d
	ld   [hl-], a                                    ; $57d8: $32
	ld   [bc], a                                     ; $57d9: $02
	and  b                                           ; $57da: $a0
	rlca                                             ; $57db: $07
	ld   [hl-], a                                    ; $57dc: $32
	ld   [bc], a                                     ; $57dd: $02
	and  b                                           ; $57de: $a0
	dec  c                                           ; $57df: $0d
	ld   [hl-], a                                    ; $57e0: $32
	ld   [bc], a                                     ; $57e1: $02
	and  b                                           ; $57e2: $a0
	rlca                                             ; $57e3: $07
	ld   [hl-], a                                    ; $57e4: $32
	ld   [bc], a                                     ; $57e5: $02
	and  b                                           ; $57e6: $a0
	dec  c                                           ; $57e7: $0d
	jr   nc, jr_0fe_57ec                             ; $57e8: $30 $02

	and  b                                           ; $57ea: $a0
	rlca                                             ; $57eb: $07

jr_0fe_57ec:
	jr   nc, jr_0fe_57f4                             ; $57ec: $30 $06

	or   d                                           ; $57ee: $b2
	ldh  a, [hScriptOpcodeParams]                                    ; $57ef: $f0 $a0
	dec  c                                           ; $57f1: $0d
	ld   [hl-], a                                    ; $57f2: $32
	ld   [bc], a                                     ; $57f3: $02

jr_0fe_57f4:
	and  b                                           ; $57f4: $a0
	rlca                                             ; $57f5: $07
	ld   [hl-], a                                    ; $57f6: $32
	ld   b, $1f                                      ; $57f7: $06 $1f
	ld   [$f1b1], sp                                 ; $57f9: $08 $b1 $f1
	rra                                              ; $57fc: $1f
	ld   [$f1fd], sp                                 ; $57fd: $08 $fd $f1
	and  b                                           ; $5800: $a0
	dec  c                                           ; $5801: $0d
	inc  h                                           ; $5802: $24
	ld   [bc], a                                     ; $5803: $02
	and  b                                           ; $5804: $a0
	rlca                                             ; $5805: $07
	inc  h                                           ; $5806: $24
	ld   b, $be                                      ; $5807: $06 $be
	pop  af                                          ; $5809: $f1
	or   b                                           ; $580a: $b0
	di                                               ; $580b: $f3
	rst  $38                                         ; $580c: $ff
	rst  $38                                         ; $580d: $ff
	inc  b                                           ; $580e: $04
	ld   b, b                                        ; $580f: $40
	ld   [bc], a                                     ; $5810: $02
	inc  bc                                          ; $5811: $03
	rra                                              ; $5812: $1f
	db   $10                                         ; $5813: $10
	db   $fd                                         ; $5814: $fd
	di                                               ; $5815: $f3
	and  e                                           ; $5816: $a3
	inc  h                                           ; $5817: $24
	and  d                                           ; $5818: $a2
	ld   b, b                                        ; $5819: $40
	db   $fd                                         ; $581a: $fd
	pop  af                                          ; $581b: $f1
	db   $fd                                         ; $581c: $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $581d: $f0 $a0
	ld   [bc], a                                     ; $581f: $02
	add  hl, de                                      ; $5820: $19
	inc  c                                           ; $5821: $0c
	and  b                                           ; $5822: $a0
	inc  b                                           ; $5823: $04
	add  hl, de                                      ; $5824: $19
	ld   [bc], a                                     ; $5825: $02
	rra                                              ; $5826: $1f
	ld   [bc], a                                     ; $5827: $02
	and  b                                           ; $5828: $a0
	ld   [bc], a                                     ; $5829: $02
	add  hl, de                                      ; $582a: $19
	ld   [$0629], sp                                 ; $582b: $08 $29 $06
	rra                                              ; $582e: $1f
	ld   [bc], a                                     ; $582f: $02
	add  hl, de                                      ; $5830: $19
	ld   [$0829], sp                                 ; $5831: $08 $29 $08
	inc  h                                           ; $5834: $24
	inc  b                                           ; $5835: $04
	and  b                                           ; $5836: $a0
	inc  b                                           ; $5837: $04
	ld   [hl+], a                                    ; $5838: $22
	inc  b                                           ; $5839: $04
	and  b                                           ; $583a: $a0
	ld   [bc], a                                     ; $583b: $02
	add  hl, de                                      ; $583c: $19
	ld   [$f0b2], sp                                 ; $583d: $08 $b2 $f0
	rla                                              ; $5840: $17
	inc  c                                           ; $5841: $0c
	and  b                                           ; $5842: $a0

jr_0fe_5843:
	inc  b                                           ; $5843: $04
	rla                                              ; $5844: $17
	ld   [bc], a                                     ; $5845: $02
	rra                                              ; $5846: $1f
	ld   [bc], a                                     ; $5847: $02
	and  b                                           ; $5848: $a0
	ld   [bc], a                                     ; $5849: $02
	rla                                              ; $584a: $17
	ld   [$0627], sp                                 ; $584b: $08 $27 $06
	rra                                              ; $584e: $1f
	ld   [bc], a                                     ; $584f: $02
	rla                                              ; $5850: $17
	ld   [$0827], sp                                 ; $5851: $08 $27 $08
	ld   [hl+], a                                    ; $5854: $22
	inc  b                                           ; $5855: $04
	and  b                                           ; $5856: $a0
	inc  b                                           ; $5857: $04
	jr   nz, @+$06                                   ; $5858: $20 $04

	and  b                                           ; $585a: $a0
	ld   [bc], a                                     ; $585b: $02
	rla                                              ; $585c: $17
	ld   [$0c17], sp                                 ; $585d: $08 $17 $0c
	and  b                                           ; $5860: $a0
	inc  b                                           ; $5861: $04
	rla                                              ; $5862: $17
	ld   [bc], a                                     ; $5863: $02
	rra                                              ; $5864: $1f
	ld   [bc], a                                     ; $5865: $02
	and  b                                           ; $5866: $a0
	ld   [bc], a                                     ; $5867: $02
	rla                                              ; $5868: $17
	ld   [$0617], sp                                 ; $5869: $08 $17 $06
	rra                                              ; $586c: $1f
	ld   [bc], a                                     ; $586d: $02
	or   c                                           ; $586e: $b1
	pop  af                                          ; $586f: $f1
	db   $fd                                         ; $5870: $fd
	ldh  a, [rAUD2HIGH]                              ; $5871: $f0 $19
	ld   [$0824], sp                                 ; $5873: $08 $24 $08
	add  hl, de                                      ; $5876: $19
	ld   [$0824], sp                                 ; $5877: $08 $24 $08
	add  hl, de                                      ; $587a: $19
	ld   [$0824], sp                                 ; $587b: $08 $24 $08
	add  hl, de                                      ; $587e: $19
	inc  b                                           ; $587f: $04
	and  b                                           ; $5880: $a0
	inc  b                                           ; $5881: $04
	add  hl, de                                      ; $5882: $19
	ld   [bc], a                                     ; $5883: $02
	rra                                              ; $5884: $1f
	ld   a, [bc]                                     ; $5885: $0a
	and  b                                           ; $5886: $a0
	ld   [bc], a                                     ; $5887: $02
	inc  hl                                          ; $5888: $23
	ld   [$0829], sp                                 ; $5889: $08 $29 $08
	inc  hl                                          ; $588c: $23
	ld   [$0829], sp                                 ; $588d: $08 $29 $08
	inc  hl                                          ; $5890: $23
	ld   [$0829], sp                                 ; $5891: $08 $29 $08
	inc  hl                                          ; $5894: $23
	inc  b                                           ; $5895: $04
	and  b                                           ; $5896: $a0
	inc  b                                           ; $5897: $04
	inc  hl                                          ; $5898: $23
	ld   [bc], a                                     ; $5899: $02
	rra                                              ; $589a: $1f
	ld   a, [bc]                                     ; $589b: $0a
	or   c                                           ; $589c: $b1
	ldh  a, [hScriptOpcodeParams+2]                                    ; $589d: $f0 $a2
	ldh  a, [$1f]                                    ; $589f: $f0 $1f
	jr   nz, jr_0fe_5843                             ; $58a1: $20 $a0

	ld   [bc], a                                     ; $58a3: $02
	inc  h                                           ; $58a4: $24
	ld   [bc], a                                     ; $58a5: $02
	and  b                                           ; $58a6: $a0
	inc  b                                           ; $58a7: $04
	inc  h                                           ; $58a8: $24
	ld   [bc], a                                     ; $58a9: $02
	rra                                              ; $58aa: $1f
	inc  b                                           ; $58ab: $04
	and  b                                           ; $58ac: $a0
	ld   [bc], a                                     ; $58ad: $02
	inc  h                                           ; $58ae: $24
	ld   [bc], a                                     ; $58af: $02
	and  b                                           ; $58b0: $a0
	inc  b                                           ; $58b1: $04
	inc  h                                           ; $58b2: $24
	ld   [bc], a                                     ; $58b3: $02
	rra                                              ; $58b4: $1f
	inc  b                                           ; $58b5: $04
	and  b                                           ; $58b6: $a0
	ld   [bc], a                                     ; $58b7: $02
	inc  h                                           ; $58b8: $24
	ld   [bc], a                                     ; $58b9: $02
	and  b                                           ; $58ba: $a0
	inc  b                                           ; $58bb: $04
	inc  h                                           ; $58bc: $24
	ld   [bc], a                                     ; $58bd: $02
	rra                                              ; $58be: $1f
	inc  b                                           ; $58bf: $04
	and  b                                           ; $58c0: $a0
	ld   [bc], a                                     ; $58c1: $02
	inc  h                                           ; $58c2: $24
	ld   [bc], a                                     ; $58c3: $02
	and  b                                           ; $58c4: $a0
	inc  b                                           ; $58c5: $04
	inc  h                                           ; $58c6: $24
	ld   [bc], a                                     ; $58c7: $02
	rra                                              ; $58c8: $1f
	inc  b                                           ; $58c9: $04
	and  b                                           ; $58ca: $a0
	ld   [bc], a                                     ; $58cb: $02
	inc  h                                           ; $58cc: $24
	ld   [bc], a                                     ; $58cd: $02
	and  b                                           ; $58ce: $a0
	inc  b                                           ; $58cf: $04
	inc  h                                           ; $58d0: $24
	ld   [bc], a                                     ; $58d1: $02
	rra                                              ; $58d2: $1f
	inc  b                                           ; $58d3: $04
	and  b                                           ; $58d4: $a0
	ld   [bc], a                                     ; $58d5: $02
	inc  h                                           ; $58d6: $24
	ld   [$0823], sp                                 ; $58d7: $08 $23 $08
	ld   [hl+], a                                    ; $58da: $22
	ld   [$0821], sp                                 ; $58db: $08 $21 $08
	jr   nz, jr_0fe_58e8                             ; $58de: $20 $08

	dec  de                                          ; $58e0: $1b
	ld   [$081a], sp                                 ; $58e1: $08 $1a $08
	or   b                                           ; $58e4: $b0
	di                                               ; $58e5: $f3
	rst  $38                                         ; $58e6: $ff
	rst  $38                                         ; $58e7: $ff

jr_0fe_58e8:
	inc  b                                           ; $58e8: $04
	nop                                              ; $58e9: $00
	add  hl, bc                                      ; $58ea: $09
	nop                                              ; $58eb: $00
	and  b                                           ; $58ec: $a0
	dec  c                                           ; $58ed: $0d
	rla                                              ; $58ee: $17
	ld   bc, $0aa0                                   ; $58ef: $01 $a0 $0a
	db   $10                                         ; $58f2: $10
	ld   bc, $01a0                                   ; $58f3: $01 $a0 $01
	nop                                              ; $58f6: $00
	ld   [bc], a                                     ; $58f7: $02
	and  b                                           ; $58f8: $a0
	dec  c                                           ; $58f9: $0d
	rla                                              ; $58fa: $17
	ld   bc, $0aa0                                   ; $58fb: $01 $a0 $0a
	db   $10                                         ; $58fe: $10
	ld   bc, $01a0                                   ; $58ff: $01 $a0 $01
	nop                                              ; $5902: $00
	ld   [bc], a                                     ; $5903: $02
	pop  bc                                          ; $5904: $c1
	inc  b                                           ; $5905: $04
	and  b                                           ; $5906: $a0
	add  hl, bc                                      ; $5907: $09
	ld   l, b                                        ; $5908: $68
	ld   bc, $06a0                                   ; $5909: $01 $a0 $06
	sbc  c                                           ; $590c: $99
	ld   bc, $01a0                                   ; $590d: $01 $a0 $01
	sbc  c                                           ; $5910: $99
	ld   b, $fd                                      ; $5911: $06 $fd
	di                                               ; $5913: $f3
	db   $fd                                         ; $5914: $fd
	ldh  a, [c]                                      ; $5915: $f2
	db   $fd                                         ; $5916: $fd
	pop  af                                          ; $5917: $f1
	xor  h                                           ; $5918: $ac
	ld   bc, $0098                                   ; $5919: $01 $98 $00
	or   e                                           ; $591c: $b3
	pop  af                                          ; $591d: $f1
	pop  bc                                          ; $591e: $c1
	inc  bc                                          ; $591f: $03
	and  b                                           ; $5920: $a0
	rlca                                             ; $5921: $07
	ld   [bc], a                                     ; $5922: $02
	ld   bc, $01a0                                   ; $5923: $01 $a0 $01
	nop                                              ; $5926: $00
	dec  bc                                          ; $5927: $0b
	and  b                                           ; $5928: $a0
	dec  c                                           ; $5929: $0d
	rla                                              ; $592a: $17
	ld   bc, $0aa0                                   ; $592b: $01 $a0 $0a
	db   $10                                         ; $592e: $10
	ld   bc, $01a0                                   ; $592f: $01 $a0 $01
	nop                                              ; $5932: $00
	ld   [bc], a                                     ; $5933: $02
	and  b                                           ; $5934: $a0
	dec  c                                           ; $5935: $0d
	rla                                              ; $5936: $17
	ld   bc, $0aa0                                   ; $5937: $01 $a0 $0a
	db   $10                                         ; $593a: $10
	ld   bc, $01a0                                   ; $593b: $01 $a0 $01
	nop                                              ; $593e: $00
	ld   b, $c1                                      ; $593f: $06 $c1
	inc  b                                           ; $5941: $04
	and  b                                           ; $5942: $a0
	add  hl, bc                                      ; $5943: $09
	ld   l, b                                        ; $5944: $68
	ld   bc, $06a0                                   ; $5945: $01 $a0 $06
	sbc  c                                           ; $5948: $99
	ld   bc, $01a0                                   ; $5949: $01 $a0 $01
	sbc  c                                           ; $594c: $99
	ld   b, $b1                                      ; $594d: $06 $b1
	ldh  a, [c]                                      ; $594f: $f2
	db   $fd                                         ; $5950: $fd
	pop  af                                          ; $5951: $f1
	xor  h                                           ; $5952: $ac
	ld   bc, $0104                              ; $5953: $01 $04 $01
	or   e                                           ; $5956: $b3
	pop  af                                          ; $5957: $f1
	rra                                              ; $5958: $1f
	ld   b, b                                        ; $5959: $40
	db   $fd                                         ; $595a: $fd
	pop  af                                          ; $595b: $f1
	and  b                                           ; $595c: $a0
	dec  c                                           ; $595d: $0d
	rla                                              ; $595e: $17
	ld   bc, $0aa0                                   ; $595f: $01 $a0 $0a
	db   $10                                         ; $5962: $10
	ld   bc, $01a0                                   ; $5963: $01 $a0 $01
	nop                                              ; $5966: $00
	ld   b, $b3                                      ; $5967: $06 $b3
	pop  af                                          ; $5969: $f1
	db   $fd                                         ; $596a: $fd
	pop  af                                          ; $596b: $f1
	pop  bc                                          ; $596c: $c1
	inc  b                                           ; $596d: $04
	and  b                                           ; $596e: $a0
	add  hl, bc                                      ; $596f: $09
	ld   l, b                                        ; $5970: $68
	ld   bc, $06a0                                   ; $5971: $01 $a0 $06
	sbc  c                                           ; $5974: $99
	ld   bc, $01a0                                   ; $5975: $01 $a0 $01
	sbc  c                                           ; $5978: $99
	ld   b, $b3                                      ; $5979: $06 $b3
	pop  af                                          ; $597b: $f1
	or   b                                           ; $597c: $b0
	di                                               ; $597d: $f3
	rst  $38                                         ; $597e: $ff
	rst  $38                                         ; $597f: $ff
	pop  bc                                          ; $5980: $c1
	inc  b                                           ; $5981: $04
	and  b                                           ; $5982: $a0
	add  hl, bc                                      ; $5983: $09
	ld   l, b                                        ; $5984: $68
	ld   bc, $06a0                                   ; $5985: $01 $a0 $06
	sbc  c                                           ; $5988: $99
	ld   bc, $01a0                                   ; $5989: $01 $a0 $01
	sbc  c                                           ; $598c: $99
	ld   b, $c1                                      ; $598d: $06 $c1
	inc  bc                                          ; $598f: $03
	and  b                                           ; $5990: $a0
	rlca                                             ; $5991: $07
	ld   [bc], a                                     ; $5992: $02
	ld   bc, $01a0                                   ; $5993: $01 $a0 $01
	nop                                              ; $5996: $00
	rlca                                             ; $5997: $07
	and  b                                           ; $5998: $a0
	dec  c                                           ; $5999: $0d
	rla                                              ; $599a: $17
	ld   bc, $0aa0                                   ; $599b: $01 $a0 $0a
	db   $10                                         ; $599e: $10
	ld   bc, $01a0                                   ; $599f: $01 $a0 $01
	nop                                              ; $59a2: $00
	ld   b, $c1                                      ; $59a3: $06 $c1
	inc  bc                                          ; $59a5: $03
	and  b                                           ; $59a6: $a0
	rlca                                             ; $59a7: $07
	ld   [bc], a                                     ; $59a8: $02
	ld   bc, $01a0                                   ; $59a9: $01 $a0 $01
	nop                                              ; $59ac: $00
	rlca                                             ; $59ad: $07
	pop  bc                                          ; $59ae: $c1
	inc  b                                           ; $59af: $04
	and  b                                           ; $59b0: $a0
	add  hl, bc                                      ; $59b1: $09
	ld   l, b                                        ; $59b2: $68
	ld   bc, $06a0                                   ; $59b3: $01 $a0 $06
	sbc  c                                           ; $59b6: $99
	ld   bc, $01a0                                   ; $59b7: $01 $a0 $01
	sbc  c                                           ; $59ba: $99
	ld   b, $c1                                      ; $59bb: $06 $c1
	inc  bc                                          ; $59bd: $03
	and  b                                           ; $59be: $a0
	rlca                                             ; $59bf: $07
	ld   [bc], a                                     ; $59c0: $02
	ld   bc, $01a0                                   ; $59c1: $01 $a0 $01
	nop                                              ; $59c4: $00
	inc  bc                                          ; $59c5: $03
	pop  bc                                          ; $59c6: $c1
	inc  b                                           ; $59c7: $04
	and  b                                           ; $59c8: $a0
	add  hl, bc                                      ; $59c9: $09
	ld   l, b                                        ; $59ca: $68
	ld   bc, $06a0                                   ; $59cb: $01 $a0 $06
	sbc  c                                           ; $59ce: $99
	ld   bc, $01a0                                   ; $59cf: $01 $a0 $01
	sbc  c                                           ; $59d2: $99
	ld   [bc], a                                     ; $59d3: $02
	and  b                                           ; $59d4: $a0
	dec  c                                           ; $59d5: $0d
	rla                                              ; $59d6: $17
	ld   bc, $0aa0                                   ; $59d7: $01 $a0 $0a
	db   $10                                         ; $59da: $10
	ld   bc, $01a0                                   ; $59db: $01 $a0 $01
	nop                                              ; $59de: $00
	ld   b, $c1                                      ; $59df: $06 $c1
	inc  bc                                          ; $59e1: $03
	and  b                                           ; $59e2: $a0
	rlca                                             ; $59e3: $07
	ld   [bc], a                                     ; $59e4: $02
	ld   bc, $01a0                                   ; $59e5: $01 $a0 $01
	nop                                              ; $59e8: $00
	rlca                                             ; $59e9: $07
	xor  l                                           ; $59ea: $ad
	nop                                              ; $59eb: $00
	db   $fd                                         ; $59ec: $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $59ed: $f0 $a0
	dec  c                                           ; $59ef: $0d
	rla                                              ; $59f0: $17
	ld   bc, $0aa0                                   ; $59f1: $01 $a0 $0a
	db   $10                                         ; $59f4: $10
	ld   bc, $01a0                                   ; $59f5: $01 $a0 $01
	nop                                              ; $59f8: $00
	ld   [bc], a                                     ; $59f9: $02
	and  b                                           ; $59fa: $a0
	dec  c                                           ; $59fb: $0d
	rla                                              ; $59fc: $17
	ld   bc, $0aa0                                   ; $59fd: $01 $a0 $0a
	db   $10                                         ; $5a00: $10
	ld   bc, $01a0                                   ; $5a01: $01 $a0 $01
	nop                                              ; $5a04: $00
	ld   [bc], a                                     ; $5a05: $02
	pop  bc                                          ; $5a06: $c1
	inc  b                                           ; $5a07: $04
	and  b                                           ; $5a08: $a0
	add  hl, bc                                      ; $5a09: $09
	ld   l, b                                        ; $5a0a: $68
	ld   bc, $06a0                                   ; $5a0b: $01 $a0 $06
	sbc  c                                           ; $5a0e: $99
	ld   bc, $01a0                                   ; $5a0f: $01 $a0 $01
	sbc  c                                           ; $5a12: $99
	ld   b, $b2                                      ; $5a13: $06 $b2
	ldh  a, [hScriptOpcodeParams]                                    ; $5a15: $f0 $a0
	dec  c                                           ; $5a17: $0d
	rla                                              ; $5a18: $17
	ld   bc, $0aa0                                   ; $5a19: $01 $a0 $0a
	db   $10                                         ; $5a1c: $10
	ld   bc, $01a0                                   ; $5a1d: $01 $a0 $01
	nop                                              ; $5a20: $00
	ld   c, $ad                                      ; $5a21: $0e $ad
	nop                                              ; $5a23: $00
	ld   b, $00                                      ; $5a24: $06 $00
	add  hl, bc                                      ; $5a26: $09
	nop                                              ; $5a27: $00
	rra                                              ; $5a28: $1f
	db   $10                                         ; $5a29: $10
	and  e                                           ; $5a2a: $a3
	inc  d                                           ; $5a2b: $14
	db   $fd                                         ; $5a2c: $fd
	ldh  a, [$1f]                                    ; $5a2d: $f0 $1f
	ld   [$0aa0], sp                                 ; $5a2f: $08 $a0 $0a
	daa                                              ; $5a32: $27
	ld   c, $a0                                      ; $5a33: $0e $a0
	dec  b                                           ; $5a35: $05
	daa                                              ; $5a36: $27
	ld   [bc], a                                     ; $5a37: $02
	and  b                                           ; $5a38: $a0
	ld   a, [bc]                                     ; $5a39: $0a
	daa                                              ; $5a3a: $27
	inc  b                                           ; $5a3b: $04
	daa                                              ; $5a3c: $27
	inc  b                                           ; $5a3d: $04
	daa                                              ; $5a3e: $27
	inc  b                                           ; $5a3f: $04
	and  b                                           ; $5a40: $a0
	dec  b                                           ; $5a41: $05
	daa                                              ; $5a42: $27
	inc  b                                           ; $5a43: $04
	and  b                                           ; $5a44: $a0
	ld   a, [bc]                                     ; $5a45: $0a
	daa                                              ; $5a46: $27
	inc  b                                           ; $5a47: $04
	and  b                                           ; $5a48: $a0
	dec  b                                           ; $5a49: $05
	daa                                              ; $5a4a: $27
	inc  b                                           ; $5a4b: $04
	rra                                              ; $5a4c: $1f
	db   $10                                         ; $5a4d: $10
	or   c                                           ; $5a4e: $b1
	ldh  a, [hScriptOpcodeParams]                                    ; $5a4f: $f0 $a0
	ld   a, [bc]                                     ; $5a51: $0a
	jr   nz, jr_0fe_5a6c                             ; $5a52: $20 $18

	ld   [hl+], a                                    ; $5a54: $22
	inc  b                                           ; $5a55: $04
	inc  h                                           ; $5a56: $24
	inc  b                                           ; $5a57: $04
	inc  h                                           ; $5a58: $24
	inc  c                                           ; $5a59: $0c
	and  b                                           ; $5a5a: $a0
	dec  b                                           ; $5a5b: $05
	inc  h                                           ; $5a5c: $24
	inc  b                                           ; $5a5d: $04
	and  b                                           ; $5a5e: $a0
	ld   a, [bc]                                     ; $5a5f: $0a
	jr   nz, jr_0fe_5a6e                             ; $5a60: $20 $0c

	and  b                                           ; $5a62: $a0
	dec  b                                           ; $5a63: $05
	jr   nz, jr_0fe_5a6a                             ; $5a64: $20 $04

	and  b                                           ; $5a66: $a0
	ld   a, [bc]                                     ; $5a67: $0a
	dec  de                                          ; $5a68: $1b
	inc  b                                           ; $5a69: $04

jr_0fe_5a6a:
	and  b                                           ; $5a6a: $a0
	dec  b                                           ; $5a6b: $05

jr_0fe_5a6c:
	dec  de                                          ; $5a6c: $1b
	inc  b                                           ; $5a6d: $04

jr_0fe_5a6e:
	and  b                                           ; $5a6e: $a0
	ld   a, [bc]                                     ; $5a6f: $0a
	scf                                              ; $5a70: $37
	ld   [bc], a                                     ; $5a71: $02
	and  b                                           ; $5a72: $a0
	dec  b                                           ; $5a73: $05
	scf                                              ; $5a74: $37
	ld   [bc], a                                     ; $5a75: $02
	and  b                                           ; $5a76: $a0
	ld   a, [bc]                                     ; $5a77: $0a
	scf                                              ; $5a78: $37
	ld   [bc], a                                     ; $5a79: $02
	and  b                                           ; $5a7a: $a0
	dec  b                                           ; $5a7b: $05
	scf                                              ; $5a7c: $37
	ld   [bc], a                                     ; $5a7d: $02
	and  b                                           ; $5a7e: $a0
	ld   a, [bc]                                     ; $5a7f: $0a
	add  hl, sp                                      ; $5a80: $39
	ld   [bc], a                                     ; $5a81: $02
	and  b                                           ; $5a82: $a0
	dec  b                                           ; $5a83: $05
	add  hl, sp                                      ; $5a84: $39
	inc  b                                           ; $5a85: $04
	rra                                              ; $5a86: $1f
	ld   [bc], a                                     ; $5a87: $02
	and  b                                           ; $5a88: $a0
	ld   a, [bc]                                     ; $5a89: $0a
	scf                                              ; $5a8a: $37
	ld   [bc], a                                     ; $5a8b: $02
	and  b                                           ; $5a8c: $a0
	dec  b                                           ; $5a8d: $05
	scf                                              ; $5a8e: $37
	ld   [bc], a                                     ; $5a8f: $02
	and  b                                           ; $5a90: $a0
	ld   a, [bc]                                     ; $5a91: $0a
	scf                                              ; $5a92: $37
	ld   [bc], a                                     ; $5a93: $02
	and  b                                           ; $5a94: $a0
	dec  b                                           ; $5a95: $05
	scf                                              ; $5a96: $37
	ld   [bc], a                                     ; $5a97: $02
	and  b                                           ; $5a98: $a0
	ld   a, [bc]                                     ; $5a99: $0a
	ld   b, d                                        ; $5a9a: $42
	ld   [bc], a                                     ; $5a9b: $02
	and  b                                           ; $5a9c: $a0
	dec  b                                           ; $5a9d: $05
	ld   b, d                                        ; $5a9e: $42
	inc  b                                           ; $5a9f: $04
	rra                                              ; $5aa0: $1f
	ld   [bc], a                                     ; $5aa1: $02
	and  b                                           ; $5aa2: $a0
	ld   a, [bc]                                     ; $5aa3: $0a
	scf                                              ; $5aa4: $37
	ld   [bc], a                                     ; $5aa5: $02
	and  b                                           ; $5aa6: $a0
	dec  b                                           ; $5aa7: $05
	scf                                              ; $5aa8: $37
	ld   [bc], a                                     ; $5aa9: $02
	and  b                                           ; $5aaa: $a0
	ld   a, [bc]                                     ; $5aab: $0a
	scf                                              ; $5aac: $37
	ld   [bc], a                                     ; $5aad: $02
	and  b                                           ; $5aae: $a0
	dec  b                                           ; $5aaf: $05
	scf                                              ; $5ab0: $37
	ld   [bc], a                                     ; $5ab1: $02
	and  b                                           ; $5ab2: $a0
	ld   a, [bc]                                     ; $5ab3: $0a
	add  hl, sp                                      ; $5ab4: $39
	ld   [bc], a                                     ; $5ab5: $02
	and  b                                           ; $5ab6: $a0
	dec  b                                           ; $5ab7: $05
	add  hl, sp                                      ; $5ab8: $39
	inc  b                                           ; $5ab9: $04
	rra                                              ; $5aba: $1f
	ld   [bc], a                                     ; $5abb: $02
	and  b                                           ; $5abc: $a0
	ld   a, [bc]                                     ; $5abd: $0a
	scf                                              ; $5abe: $37
	ld   [bc], a                                     ; $5abf: $02
	and  b                                           ; $5ac0: $a0
	dec  b                                           ; $5ac1: $05
	scf                                              ; $5ac2: $37
	ld   [bc], a                                     ; $5ac3: $02
	and  b                                           ; $5ac4: $a0
	ld   a, [bc]                                     ; $5ac5: $0a
	scf                                              ; $5ac6: $37
	ld   [bc], a                                     ; $5ac7: $02
	and  b                                           ; $5ac8: $a0
	dec  b                                           ; $5ac9: $05
	scf                                              ; $5aca: $37
	ld   [bc], a                                     ; $5acb: $02
	and  b                                           ; $5acc: $a0
	ld   a, [bc]                                     ; $5acd: $0a
	ld   b, d                                        ; $5ace: $42
	ld   [bc], a                                     ; $5acf: $02
	and  b                                           ; $5ad0: $a0
	dec  b                                           ; $5ad1: $05
	ld   b, d                                        ; $5ad2: $42
	inc  b                                           ; $5ad3: $04
	rra                                              ; $5ad4: $1f
	ld   [bc], a                                     ; $5ad5: $02
	and  b                                           ; $5ad6: $a0
	ld   a, [bc]                                     ; $5ad7: $0a
	scf                                              ; $5ad8: $37
	ld   [bc], a                                     ; $5ad9: $02
	and  b                                           ; $5ada: $a0
	dec  b                                           ; $5adb: $05
	scf                                              ; $5adc: $37
	ld   [bc], a                                     ; $5add: $02
	and  b                                           ; $5ade: $a0
	ld   a, [bc]                                     ; $5adf: $0a
	scf                                              ; $5ae0: $37
	ld   [bc], a                                     ; $5ae1: $02
	and  b                                           ; $5ae2: $a0
	dec  b                                           ; $5ae3: $05
	scf                                              ; $5ae4: $37
	ld   [bc], a                                     ; $5ae5: $02
	and  b                                           ; $5ae6: $a0
	ld   a, [bc]                                     ; $5ae7: $0a
	add  hl, sp                                      ; $5ae8: $39
	ld   [bc], a                                     ; $5ae9: $02
	and  b                                           ; $5aea: $a0
	dec  b                                           ; $5aeb: $05
	add  hl, sp                                      ; $5aec: $39
	inc  b                                           ; $5aed: $04
	rra                                              ; $5aee: $1f
	ld   [bc], a                                     ; $5aef: $02
	and  b                                           ; $5af0: $a0
	ld   a, [bc]                                     ; $5af1: $0a
	scf                                              ; $5af2: $37
	ld   [bc], a                                     ; $5af3: $02
	and  b                                           ; $5af4: $a0
	dec  b                                           ; $5af5: $05
	scf                                              ; $5af6: $37
	ld   [bc], a                                     ; $5af7: $02
	and  b                                           ; $5af8: $a0
	ld   a, [bc]                                     ; $5af9: $0a
	scf                                              ; $5afa: $37
	ld   [bc], a                                     ; $5afb: $02
	and  b                                           ; $5afc: $a0
	dec  b                                           ; $5afd: $05
	scf                                              ; $5afe: $37
	ld   [bc], a                                     ; $5aff: $02
	and  b                                           ; $5b00: $a0
	ld   a, [bc]                                     ; $5b01: $0a
	ld   hl, $2203                                   ; $5b02: $21 $03 $22
	inc  bc                                          ; $5b05: $03
	inc  h                                           ; $5b06: $24
	ld   [bc], a                                     ; $5b07: $02
	add  hl, hl                                      ; $5b08: $29
	inc  bc                                          ; $5b09: $03
	ld   sp, $3203                                   ; $5b0a: $31 $03 $32
	ld   [bc], a                                     ; $5b0d: $02
	inc  h                                           ; $5b0e: $24
	inc  bc                                          ; $5b0f: $03
	add  hl, hl                                      ; $5b10: $29
	inc  bc                                          ; $5b11: $03
	ld   sp, $3202                                   ; $5b12: $31 $02 $32
	inc  bc                                          ; $5b15: $03
	inc  [hl]                                        ; $5b16: $34
	inc  bc                                          ; $5b17: $03
	add  hl, sp                                      ; $5b18: $39
	ld   [bc], a                                     ; $5b19: $02
	db   $fd                                         ; $5b1a: $fd
	di                                               ; $5b1b: $f3
	and  b                                           ; $5b1c: $a0
	ld   a, [bc]                                     ; $5b1d: $0a
	dec  de                                          ; $5b1e: $1b
	inc  d                                           ; $5b1f: $14
	and  b                                           ; $5b20: $a0
	dec  b                                           ; $5b21: $05
	dec  de                                          ; $5b22: $1b
	inc  b                                           ; $5b23: $04
	and  b                                           ; $5b24: $a0
	ld   a, [bc]                                     ; $5b25: $0a
	dec  de                                          ; $5b26: $1b
	inc  b                                           ; $5b27: $04
	ld   [hl+], a                                    ; $5b28: $22
	inc  b                                           ; $5b29: $04
	inc  hl                                          ; $5b2a: $23
	inc  d                                           ; $5b2b: $14
	and  b                                           ; $5b2c: $a0
	dec  b                                           ; $5b2d: $05
	inc  hl                                          ; $5b2e: $23
	inc  b                                           ; $5b2f: $04
	and  b                                           ; $5b30: $a0
	ld   a, [bc]                                     ; $5b31: $0a
	ld   [hl+], a                                    ; $5b32: $22
	inc  b                                           ; $5b33: $04
	jr   nz, jr_0fe_5b3a                             ; $5b34: $20 $04

	daa                                              ; $5b36: $27
	inc  b                                           ; $5b37: $04
	and  b                                           ; $5b38: $a0
	dec  b                                           ; $5b39: $05

jr_0fe_5b3a:
	daa                                              ; $5b3a: $27
	ld   [bc], a                                     ; $5b3b: $02
	rra                                              ; $5b3c: $1f
	ld   [bc], a                                     ; $5b3d: $02
	and  b                                           ; $5b3e: $a0
	ld   a, [bc]                                     ; $5b3f: $0a
	add  hl, hl                                      ; $5b40: $29
	inc  b                                           ; $5b41: $04
	and  b                                           ; $5b42: $a0
	dec  b                                           ; $5b43: $05
	add  hl, hl                                      ; $5b44: $29
	ld   [bc], a                                     ; $5b45: $02
	rra                                              ; $5b46: $1f
	ld   [bc], a                                     ; $5b47: $02
	and  b                                           ; $5b48: $a0
	ld   a, [bc]                                     ; $5b49: $0a
	dec  hl                                          ; $5b4a: $2b
	inc  b                                           ; $5b4b: $04
	add  hl, hl                                      ; $5b4c: $29
	inc  b                                           ; $5b4d: $04
	daa                                              ; $5b4e: $27
	inc  b                                           ; $5b4f: $04
	ld   h, $04                                      ; $5b50: $26 $04
	inc  h                                           ; $5b52: $24
	inc  c                                           ; $5b53: $0c
	and  b                                           ; $5b54: $a0
	dec  b                                           ; $5b55: $05
	inc  h                                           ; $5b56: $24
	inc  b                                           ; $5b57: $04
	rra                                              ; $5b58: $1f
	db   $10                                         ; $5b59: $10
	and  b                                           ; $5b5a: $a0
	ld   a, [bc]                                     ; $5b5b: $0a
	inc  [hl]                                        ; $5b5c: $34
	inc  e                                           ; $5b5d: $1c
	and  b                                           ; $5b5e: $a0
	dec  b                                           ; $5b5f: $05
	inc  [hl]                                        ; $5b60: $34
	inc  b                                           ; $5b61: $04
	and  b                                           ; $5b62: $a0
	ld   a, [bc]                                     ; $5b63: $0a
	ld   [hl-], a                                    ; $5b64: $32
	inc  b                                           ; $5b65: $04
	and  b                                           ; $5b66: $a0
	dec  b                                           ; $5b67: $05
	ld   [hl-], a                                    ; $5b68: $32
	ld   [bc], a                                     ; $5b69: $02
	rra                                              ; $5b6a: $1f
	ld   [bc], a                                     ; $5b6b: $02
	and  b                                           ; $5b6c: $a0
	ld   a, [bc]                                     ; $5b6d: $0a
	dec  hl                                          ; $5b6e: $2b
	inc  b                                           ; $5b6f: $04
	and  b                                           ; $5b70: $a0
	dec  b                                           ; $5b71: $05
	dec  hl                                          ; $5b72: $2b
	ld   [bc], a                                     ; $5b73: $02
	rra                                              ; $5b74: $1f
	ld   [bc], a                                     ; $5b75: $02
	and  b                                           ; $5b76: $a0
	ld   a, [bc]                                     ; $5b77: $0a
	jr   nc, jr_0fe_5b80                             ; $5b78: $30 $06

	add  hl, hl                                      ; $5b7a: $29
	dec  b                                           ; $5b7b: $05
	inc  h                                           ; $5b7c: $24
	dec  b                                           ; $5b7d: $05
	dec  hl                                          ; $5b7e: $2b
	inc  b                                           ; $5b7f: $04

jr_0fe_5b80:
	and  b                                           ; $5b80: $a0
	dec  b                                           ; $5b81: $05
	dec  hl                                          ; $5b82: $2b
	ld   [bc], a                                     ; $5b83: $02
	rra                                              ; $5b84: $1f
	ld   [bc], a                                     ; $5b85: $02
	and  b                                           ; $5b86: $a0
	ld   a, [bc]                                     ; $5b87: $0a
	ld   [hl+], a                                    ; $5b88: $22
	inc  b                                           ; $5b89: $04
	and  b                                           ; $5b8a: $a0
	dec  b                                           ; $5b8b: $05
	ld   [hl+], a                                    ; $5b8c: $22
	ld   [bc], a                                     ; $5b8d: $02
	rra                                              ; $5b8e: $1f
	ld   [bc], a                                     ; $5b8f: $02
	and  b                                           ; $5b90: $a0
	ld   a, [bc]                                     ; $5b91: $0a
	add  hl, hl                                      ; $5b92: $29
	inc  b                                           ; $5b93: $04
	daa                                              ; $5b94: $27
	inc  b                                           ; $5b95: $04
	dec  h                                           ; $5b96: $25
	inc  b                                           ; $5b97: $04
	inc  h                                           ; $5b98: $24
	inc  b                                           ; $5b99: $04
	add  hl, de                                      ; $5b9a: $19
	inc  b                                           ; $5b9b: $04
	and  b                                           ; $5b9c: $a0
	dec  b                                           ; $5b9d: $05
	add  hl, de                                      ; $5b9e: $19
	ld   [bc], a                                     ; $5b9f: $02
	rra                                              ; $5ba0: $1f
	ld   [bc], a                                     ; $5ba1: $02
	and  b                                           ; $5ba2: $a0
	ld   a, [bc]                                     ; $5ba3: $0a
	jr   nz, jr_0fe_5baa                             ; $5ba4: $20 $04

	and  b                                           ; $5ba6: $a0
	dec  b                                           ; $5ba7: $05
	jr   nz, jr_0fe_5bac                             ; $5ba8: $20 $02

jr_0fe_5baa:
	rra                                              ; $5baa: $1f
	ld   [bc], a                                     ; $5bab: $02

jr_0fe_5bac:
	and  b                                           ; $5bac: $a0
	ld   a, [bc]                                     ; $5bad: $0a
	ld   [hl+], a                                    ; $5bae: $22
	inc  b                                           ; $5baf: $04
	and  b                                           ; $5bb0: $a0
	dec  b                                           ; $5bb1: $05
	ld   [hl+], a                                    ; $5bb2: $22
	ld   [bc], a                                     ; $5bb3: $02
	rra                                              ; $5bb4: $1f
	ld   a, [bc]                                     ; $5bb5: $0a
	and  b                                           ; $5bb6: $a0
	ld   a, [bc]                                     ; $5bb7: $0a
	dec  de                                          ; $5bb8: $1b
	inc  d                                           ; $5bb9: $14
	and  b                                           ; $5bba: $a0
	dec  b                                           ; $5bbb: $05
	dec  de                                          ; $5bbc: $1b
	inc  b                                           ; $5bbd: $04
	and  b                                           ; $5bbe: $a0
	ld   a, [bc]                                     ; $5bbf: $0a
	dec  de                                          ; $5bc0: $1b
	inc  b                                           ; $5bc1: $04
	ld   [hl+], a                                    ; $5bc2: $22
	inc  b                                           ; $5bc3: $04
	inc  hl                                          ; $5bc4: $23
	inc  d                                           ; $5bc5: $14
	and  b                                           ; $5bc6: $a0
	dec  b                                           ; $5bc7: $05
	inc  hl                                          ; $5bc8: $23

jr_0fe_5bc9:
	inc  b                                           ; $5bc9: $04
	and  b                                           ; $5bca: $a0
	ld   a, [bc]                                     ; $5bcb: $0a
	ld   [hl+], a                                    ; $5bcc: $22
	inc  b                                           ; $5bcd: $04
	jr   nz, jr_0fe_5bd4                             ; $5bce: $20 $04

	daa                                              ; $5bd0: $27
	inc  b                                           ; $5bd1: $04
	and  b                                           ; $5bd2: $a0
	dec  b                                           ; $5bd3: $05

jr_0fe_5bd4:
	daa                                              ; $5bd4: $27
	ld   [bc], a                                     ; $5bd5: $02
	rra                                              ; $5bd6: $1f
	ld   [bc], a                                     ; $5bd7: $02
	and  b                                           ; $5bd8: $a0
	ld   a, [bc]                                     ; $5bd9: $0a
	add  hl, hl                                      ; $5bda: $29
	inc  b                                           ; $5bdb: $04
	and  b                                           ; $5bdc: $a0
	dec  b                                           ; $5bdd: $05
	add  hl, hl                                      ; $5bde: $29
	ld   [bc], a                                     ; $5bdf: $02
	rra                                              ; $5be0: $1f
	ld   [bc], a                                     ; $5be1: $02
	and  b                                           ; $5be2: $a0
	ld   a, [bc]                                     ; $5be3: $0a
	dec  hl                                          ; $5be4: $2b
	inc  b                                           ; $5be5: $04
	add  hl, hl                                      ; $5be6: $29
	inc  b                                           ; $5be7: $04
	daa                                              ; $5be8: $27
	inc  b                                           ; $5be9: $04
	ld   h, $04                                      ; $5bea: $26 $04
	inc  h                                           ; $5bec: $24
	inc  c                                           ; $5bed: $0c

jr_0fe_5bee:
	and  b                                           ; $5bee: $a0
	dec  b                                           ; $5bef: $05
	inc  h                                           ; $5bf0: $24
	inc  b                                           ; $5bf1: $04
	rra                                              ; $5bf2: $1f
	db   $10                                         ; $5bf3: $10
	and  b                                           ; $5bf4: $a0
	ld   a, [bc]                                     ; $5bf5: $0a
	jr   nz, jr_0fe_5c14                             ; $5bf6: $20 $1c

	and  b                                           ; $5bf8: $a0
	dec  b                                           ; $5bf9: $05
	jr   nz, jr_0fe_5c00                             ; $5bfa: $20 $04

	and  b                                           ; $5bfc: $a0
	ld   a, [bc]                                     ; $5bfd: $0a
	jr   nz, jr_0fe_5c04                             ; $5bfe: $20 $04

jr_0fe_5c00:
	and  b                                           ; $5c00: $a0
	dec  b                                           ; $5c01: $05
	jr   nz, jr_0fe_5c06                             ; $5c02: $20 $02

jr_0fe_5c04:
	rra                                              ; $5c04: $1f
	ld   [bc], a                                     ; $5c05: $02

jr_0fe_5c06:
	and  b                                           ; $5c06: $a0
	ld   a, [bc]                                     ; $5c07: $0a
	jr   nz, jr_0fe_5c0e                             ; $5c08: $20 $04

	and  b                                           ; $5c0a: $a0
	dec  b                                           ; $5c0b: $05
	jr   nz, jr_0fe_5c10                             ; $5c0c: $20 $02

jr_0fe_5c0e:
	rra                                              ; $5c0e: $1f
	ld   [bc], a                                     ; $5c0f: $02

jr_0fe_5c10:
	and  b                                           ; $5c10: $a0
	ld   a, [bc]                                     ; $5c11: $0a
	jr   nz, jr_0fe_5c18                             ; $5c12: $20 $04

jr_0fe_5c14:
	and  b                                           ; $5c14: $a0
	dec  b                                           ; $5c15: $05
	jr   nz, jr_0fe_5c1a                             ; $5c16: $20 $02

jr_0fe_5c18:
	rra                                              ; $5c18: $1f
	ld   [bc], a                                     ; $5c19: $02

jr_0fe_5c1a:
	and  b                                           ; $5c1a: $a0
	ld   a, [bc]                                     ; $5c1b: $0a
	jr   nz, jr_0fe_5c22                             ; $5c1c: $20 $04

	and  b                                           ; $5c1e: $a0
	dec  b                                           ; $5c1f: $05
	jr   nz, jr_0fe_5c24                             ; $5c20: $20 $02

jr_0fe_5c22:
	rra                                              ; $5c22: $1f
	ld   [bc], a                                     ; $5c23: $02

jr_0fe_5c24:
	and  b                                           ; $5c24: $a0
	ld   a, [bc]                                     ; $5c25: $0a
	dec  de                                          ; $5c26: $1b
	jr   nc, jr_0fe_5bc9                             ; $5c27: $30 $a0

	dec  b                                           ; $5c29: $05
	dec  de                                          ; $5c2a: $1b
	ld   [$0aa0], sp                                 ; $5c2b: $08 $a0 $0a
	ld   [de], a                                     ; $5c2e: $12
	inc  b                                           ; $5c2f: $04
	ld   [de], a                                     ; $5c30: $12
	inc  b                                           ; $5c31: $04
	or   b                                           ; $5c32: $b0
	di                                               ; $5c33: $f3
	rst  $38                                         ; $5c34: $ff
	rst  $38                                         ; $5c35: $ff
	ld   b, $00                                      ; $5c36: $06 $00
	add  hl, bc                                      ; $5c38: $09
	nop                                              ; $5c39: $00
	and  e                                           ; $5c3a: $a3
	ld   h, $a0                                      ; $5c3b: $26 $a0
	dec  c                                           ; $5c3d: $0d
	daa                                              ; $5c3e: $27
	inc  b                                           ; $5c3f: $04
	add  hl, hl                                      ; $5c40: $29
	inc  b                                           ; $5c41: $04
	ld   [hl], $04                                   ; $5c42: $36 $04
	scf                                              ; $5c44: $37
	inc  b                                           ; $5c45: $04
	and  b                                           ; $5c46: $a0
	dec  c                                           ; $5c47: $0d
	rst  ToBoot                                         ; $5c48: $c7
	jr   nc, jr_0fe_5bee                             ; $5c49: $30 $a3

	ld   h, $32                                      ; $5c4b: $26 $32
	inc  h                                           ; $5c4d: $24
	and  b                                           ; $5c4e: $a0
	rlca                                             ; $5c4f: $07
	ld   [hl-], a                                    ; $5c50: $32
	inc  c                                           ; $5c51: $0c
	and  b                                           ; $5c52: $a0
	dec  c                                           ; $5c53: $0d
	ld   [hl-], a                                    ; $5c54: $32
	inc  b                                           ; $5c55: $04
	ld   sp, $2904                                   ; $5c56: $31 $04 $29
	inc  b                                           ; $5c59: $04
	daa                                              ; $5c5a: $27
	inc  b                                           ; $5c5b: $04
	dec  hl                                          ; $5c5c: $2b
	jr   z, @-$5e                                    ; $5c5d: $28 $a0

	rlca                                             ; $5c5f: $07
	dec  hl                                          ; $5c60: $2b
	ld   [$0da0], sp                                 ; $5c61: $08 $a0 $0d
	dec  hl                                          ; $5c64: $2b
	inc  b                                           ; $5c65: $04
	add  hl, hl                                      ; $5c66: $29
	inc  b                                           ; $5c67: $04
	inc  h                                           ; $5c68: $24
	inc  b                                           ; $5c69: $04
	daa                                              ; $5c6a: $27
	inc  b                                           ; $5c6b: $04
	add  hl, hl                                      ; $5c6c: $29
	jr   jr_0fe_5c9a                                 ; $5c6d: $18 $2b

	inc  b                                           ; $5c6f: $04
	jr   nc, jr_0fe_5c76                             ; $5c70: $30 $04

	daa                                              ; $5c72: $27
	inc  c                                           ; $5c73: $0c
	and  b                                           ; $5c74: $a0
	rlca                                             ; $5c75: $07

jr_0fe_5c76:
	daa                                              ; $5c76: $27
	inc  b                                           ; $5c77: $04
	and  b                                           ; $5c78: $a0
	dec  c                                           ; $5c79: $0d
	daa                                              ; $5c7a: $27
	inc  c                                           ; $5c7b: $0c
	and  b                                           ; $5c7c: $a0
	rlca                                             ; $5c7d: $07
	daa                                              ; $5c7e: $27
	inc  b                                           ; $5c7f: $04
	and  b                                           ; $5c80: $a0
	dec  c                                           ; $5c81: $0d
	daa                                              ; $5c82: $27
	inc  b                                           ; $5c83: $04
	and  b                                           ; $5c84: $a0
	rlca                                             ; $5c85: $07
	daa                                              ; $5c86: $27
	inc  b                                           ; $5c87: $04
	and  b                                           ; $5c88: $a0
	ld   a, [bc]                                     ; $5c89: $0a
	ld   [hl-], a                                    ; $5c8a: $32
	ld   [bc], a                                     ; $5c8b: $02
	and  b                                           ; $5c8c: $a0
	rlca                                             ; $5c8d: $07
	ld   [hl-], a                                    ; $5c8e: $32
	ld   [bc], a                                     ; $5c8f: $02
	and  b                                           ; $5c90: $a0
	ld   a, [bc]                                     ; $5c91: $0a
	ld   [hl-], a                                    ; $5c92: $32
	ld   [bc], a                                     ; $5c93: $02
	and  b                                           ; $5c94: $a0
	rlca                                             ; $5c95: $07
	ld   [hl-], a                                    ; $5c96: $32
	ld   [bc], a                                     ; $5c97: $02
	and  b                                           ; $5c98: $a0
	ld   a, [bc]                                     ; $5c99: $0a

jr_0fe_5c9a:
	inc  [hl]                                        ; $5c9a: $34
	ld   [bc], a                                     ; $5c9b: $02
	and  b                                           ; $5c9c: $a0
	rlca                                             ; $5c9d: $07
	inc  [hl]                                        ; $5c9e: $34
	inc  b                                           ; $5c9f: $04
	rra                                              ; $5ca0: $1f
	ld   [bc], a                                     ; $5ca1: $02
	and  b                                           ; $5ca2: $a0
	ld   a, [bc]                                     ; $5ca3: $0a
	ld   [hl-], a                                    ; $5ca4: $32
	ld   [bc], a                                     ; $5ca5: $02
	and  b                                           ; $5ca6: $a0
	rlca                                             ; $5ca7: $07
	ld   [hl-], a                                    ; $5ca8: $32
	ld   [bc], a                                     ; $5ca9: $02
	and  b                                           ; $5caa: $a0
	ld   a, [bc]                                     ; $5cab: $0a
	ld   [hl-], a                                    ; $5cac: $32
	ld   [bc], a                                     ; $5cad: $02
	and  b                                           ; $5cae: $a0
	rlca                                             ; $5caf: $07
	ld   [hl-], a                                    ; $5cb0: $32
	ld   [bc], a                                     ; $5cb1: $02
	and  b                                           ; $5cb2: $a0
	ld   a, [bc]                                     ; $5cb3: $0a
	add  hl, sp                                      ; $5cb4: $39
	ld   [bc], a                                     ; $5cb5: $02
	and  b                                           ; $5cb6: $a0
	rlca                                             ; $5cb7: $07
	add  hl, sp                                      ; $5cb8: $39
	inc  b                                           ; $5cb9: $04
	rra                                              ; $5cba: $1f
	ld   [bc], a                                     ; $5cbb: $02
	and  b                                           ; $5cbc: $a0
	ld   a, [bc]                                     ; $5cbd: $0a
	ld   [hl-], a                                    ; $5cbe: $32
	ld   [bc], a                                     ; $5cbf: $02
	and  b                                           ; $5cc0: $a0
	rlca                                             ; $5cc1: $07
	ld   [hl-], a                                    ; $5cc2: $32
	ld   [bc], a                                     ; $5cc3: $02
	and  b                                           ; $5cc4: $a0
	ld   a, [bc]                                     ; $5cc5: $0a
	ld   [hl-], a                                    ; $5cc6: $32
	ld   [bc], a                                     ; $5cc7: $02
	and  b                                           ; $5cc8: $a0
	rlca                                             ; $5cc9: $07
	ld   [hl-], a                                    ; $5cca: $32
	ld   [bc], a                                     ; $5ccb: $02
	and  b                                           ; $5ccc: $a0
	ld   a, [bc]                                     ; $5ccd: $0a
	inc  [hl]                                        ; $5cce: $34
	ld   [bc], a                                     ; $5ccf: $02
	and  b                                           ; $5cd0: $a0
	rlca                                             ; $5cd1: $07
	inc  [hl]                                        ; $5cd2: $34
	inc  b                                           ; $5cd3: $04
	rra                                              ; $5cd4: $1f
	ld   [bc], a                                     ; $5cd5: $02
	and  b                                           ; $5cd6: $a0
	ld   a, [bc]                                     ; $5cd7: $0a
	ld   [hl-], a                                    ; $5cd8: $32
	ld   [bc], a                                     ; $5cd9: $02
	and  b                                           ; $5cda: $a0
	rlca                                             ; $5cdb: $07
	ld   [hl-], a                                    ; $5cdc: $32
	ld   [bc], a                                     ; $5cdd: $02
	and  b                                           ; $5cde: $a0
	ld   a, [bc]                                     ; $5cdf: $0a
	ld   [hl-], a                                    ; $5ce0: $32
	ld   [bc], a                                     ; $5ce1: $02
	and  b                                           ; $5ce2: $a0
	rlca                                             ; $5ce3: $07
	ld   [hl-], a                                    ; $5ce4: $32
	ld   [bc], a                                     ; $5ce5: $02
	and  b                                           ; $5ce6: $a0
	ld   a, [bc]                                     ; $5ce7: $0a
	add  hl, sp                                      ; $5ce8: $39
	ld   [bc], a                                     ; $5ce9: $02
	and  b                                           ; $5cea: $a0
	rlca                                             ; $5ceb: $07
	add  hl, sp                                      ; $5cec: $39
	inc  b                                           ; $5ced: $04
	rra                                              ; $5cee: $1f
	ld   [bc], a                                     ; $5cef: $02
	and  b                                           ; $5cf0: $a0
	ld   a, [bc]                                     ; $5cf1: $0a
	ld   [hl-], a                                    ; $5cf2: $32
	ld   [bc], a                                     ; $5cf3: $02
	and  b                                           ; $5cf4: $a0
	rlca                                             ; $5cf5: $07
	ld   [hl-], a                                    ; $5cf6: $32
	ld   [bc], a                                     ; $5cf7: $02
	and  b                                           ; $5cf8: $a0
	ld   a, [bc]                                     ; $5cf9: $0a
	ld   [hl-], a                                    ; $5cfa: $32
	ld   [bc], a                                     ; $5cfb: $02
	and  b                                           ; $5cfc: $a0
	rlca                                             ; $5cfd: $07
	ld   [hl-], a                                    ; $5cfe: $32
	ld   [bc], a                                     ; $5cff: $02
	and  b                                           ; $5d00: $a0
	ld   a, [bc]                                     ; $5d01: $0a
	inc  [hl]                                        ; $5d02: $34
	ld   [bc], a                                     ; $5d03: $02
	and  b                                           ; $5d04: $a0
	rlca                                             ; $5d05: $07
	inc  [hl]                                        ; $5d06: $34
	inc  b                                           ; $5d07: $04
	rra                                              ; $5d08: $1f
	ld   [bc], a                                     ; $5d09: $02
	and  b                                           ; $5d0a: $a0
	ld   a, [bc]                                     ; $5d0b: $0a
	ld   [hl-], a                                    ; $5d0c: $32
	ld   [bc], a                                     ; $5d0d: $02
	and  b                                           ; $5d0e: $a0
	rlca                                             ; $5d0f: $07
	ld   [hl-], a                                    ; $5d10: $32
	ld   [bc], a                                     ; $5d11: $02
	and  b                                           ; $5d12: $a0
	ld   a, [bc]                                     ; $5d13: $0a
	ld   [hl-], a                                    ; $5d14: $32
	ld   [bc], a                                     ; $5d15: $02
	and  b                                           ; $5d16: $a0
	rlca                                             ; $5d17: $07
	ld   [hl-], a                                    ; $5d18: $32
	ld   [bc], a                                     ; $5d19: $02
	and  b                                           ; $5d1a: $a0
	ld   a, [bc]                                     ; $5d1b: $0a
	add  hl, sp                                      ; $5d1c: $39
	ld   [bc], a                                     ; $5d1d: $02
	and  b                                           ; $5d1e: $a0
	rlca                                             ; $5d1f: $07
	add  hl, sp                                      ; $5d20: $39
	inc  b                                           ; $5d21: $04
	rra                                              ; $5d22: $1f
	ld   [bc], a                                     ; $5d23: $02
	and  b                                           ; $5d24: $a0
	ld   a, [bc]                                     ; $5d25: $0a
	ld   [hl-], a                                    ; $5d26: $32
	ld   [bc], a                                     ; $5d27: $02
	and  b                                           ; $5d28: $a0
	rlca                                             ; $5d29: $07
	ld   [hl-], a                                    ; $5d2a: $32
	ld   [bc], a                                     ; $5d2b: $02
	and  b                                           ; $5d2c: $a0
	ld   a, [bc]                                     ; $5d2d: $0a
	ld   [hl-], a                                    ; $5d2e: $32
	ld   [bc], a                                     ; $5d2f: $02
	and  b                                           ; $5d30: $a0
	rlca                                             ; $5d31: $07
	ld   [hl-], a                                    ; $5d32: $32
	ld   [bc], a                                     ; $5d33: $02
	and  b                                           ; $5d34: $a0
	ld   a, [bc]                                     ; $5d35: $0a
	inc  [hl]                                        ; $5d36: $34
	ld   [bc], a                                     ; $5d37: $02
	and  b                                           ; $5d38: $a0
	rlca                                             ; $5d39: $07
	inc  [hl]                                        ; $5d3a: $34
	ld   [bc], a                                     ; $5d3b: $02
	rra                                              ; $5d3c: $1f
	inc  b                                           ; $5d3d: $04
	and  b                                           ; $5d3e: $a0
	dec  c                                           ; $5d3f: $0d
	ld   [hl+], a                                    ; $5d40: $22
	ld   [bc], a                                     ; $5d41: $02
	rra                                              ; $5d42: $1f
	ld   [bc], a                                     ; $5d43: $02
	ld   [hl+], a                                    ; $5d44: $22
	ld   [bc], a                                     ; $5d45: $02
	rra                                              ; $5d46: $1f
	ld   [bc], a                                     ; $5d47: $02
	db   $fd                                         ; $5d48: $fd
	di                                               ; $5d49: $f3
	and  b                                           ; $5d4a: $a0
	dec  c                                           ; $5d4b: $0d
	daa                                              ; $5d4c: $27
	ld   d, $a0                                      ; $5d4d: $16 $a0
	rlca                                             ; $5d4f: $07
	daa                                              ; $5d50: $27
	ld   [bc], a                                     ; $5d51: $02
	and  b                                           ; $5d52: $a0
	dec  c                                           ; $5d53: $0d
	ld   [hl+], a                                    ; $5d54: $22
	ld   [bc], a                                     ; $5d55: $02
	and  b                                           ; $5d56: $a0
	rlca                                             ; $5d57: $07
	ld   [hl+], a                                    ; $5d58: $22
	ld   [bc], a                                     ; $5d59: $02
	and  b                                           ; $5d5a: $a0
	dec  c                                           ; $5d5b: $0d
	daa                                              ; $5d5c: $27
	ld   [bc], a                                     ; $5d5d: $02
	and  b                                           ; $5d5e: $a0
	rlca                                             ; $5d5f: $07
	daa                                              ; $5d60: $27
	ld   [bc], a                                     ; $5d61: $02
	and  b                                           ; $5d62: $a0
	dec  c                                           ; $5d63: $0d
	add  hl, hl                                      ; $5d64: $29
	ld   d, $a0                                      ; $5d65: $16 $a0
	rlca                                             ; $5d67: $07
	add  hl, hl                                      ; $5d68: $29
	ld   [bc], a                                     ; $5d69: $02
	and  b                                           ; $5d6a: $a0
	dec  c                                           ; $5d6b: $0d
	daa                                              ; $5d6c: $27
	ld   [bc], a                                     ; $5d6d: $02
	and  b                                           ; $5d6e: $a0
	rlca                                             ; $5d6f: $07
	daa                                              ; $5d70: $27
	ld   [bc], a                                     ; $5d71: $02
	and  b                                           ; $5d72: $a0
	dec  c                                           ; $5d73: $0d
	add  hl, hl                                      ; $5d74: $29
	ld   [bc], a                                     ; $5d75: $02
	and  b                                           ; $5d76: $a0
	rlca                                             ; $5d77: $07
	add  hl, hl                                      ; $5d78: $29
	ld   [bc], a                                     ; $5d79: $02
	and  b                                           ; $5d7a: $a0
	dec  c                                           ; $5d7b: $0d
	dec  hl                                          ; $5d7c: $2b
	ld   [bc], a                                     ; $5d7d: $02
	and  b                                           ; $5d7e: $a0
	rlca                                             ; $5d7f: $07
	dec  hl                                          ; $5d80: $2b
	ld   [bc], a                                     ; $5d81: $02
	rra                                              ; $5d82: $1f
	inc  b                                           ; $5d83: $04
	and  b                                           ; $5d84: $a0
	dec  c                                           ; $5d85: $0d
	jr   nc, jr_0fe_5d8a                             ; $5d86: $30 $02

	and  b                                           ; $5d88: $a0
	rlca                                             ; $5d89: $07

jr_0fe_5d8a:
	jr   nc, jr_0fe_5d8e                             ; $5d8a: $30 $02

	rra                                              ; $5d8c: $1f
	inc  b                                           ; $5d8d: $04

jr_0fe_5d8e:
	and  b                                           ; $5d8e: $a0
	dec  c                                           ; $5d8f: $0d
	ld   [hl-], a                                    ; $5d90: $32
	ld   [bc], a                                     ; $5d91: $02
	and  b                                           ; $5d92: $a0
	rlca                                             ; $5d93: $07
	ld   [hl-], a                                    ; $5d94: $32
	ld   [bc], a                                     ; $5d95: $02
	and  b                                           ; $5d96: $a0
	dec  c                                           ; $5d97: $0d
	jr   nc, jr_0fe_5d9c                             ; $5d98: $30 $02

	and  b                                           ; $5d9a: $a0
	rlca                                             ; $5d9b: $07

jr_0fe_5d9c:
	jr   nc, jr_0fe_5da0                             ; $5d9c: $30 $02

	and  b                                           ; $5d9e: $a0
	dec  c                                           ; $5d9f: $0d

jr_0fe_5da0:
	dec  hl                                          ; $5da0: $2b
	ld   [bc], a                                     ; $5da1: $02
	and  b                                           ; $5da2: $a0
	rlca                                             ; $5da3: $07
	dec  hl                                          ; $5da4: $2b
	ld   [bc], a                                     ; $5da5: $02
	and  b                                           ; $5da6: $a0
	dec  c                                           ; $5da7: $0d
	add  hl, hl                                      ; $5da8: $29
	ld   [bc], a                                     ; $5da9: $02
	and  b                                           ; $5daa: $a0
	rlca                                             ; $5dab: $07
	add  hl, hl                                      ; $5dac: $29
	ld   [bc], a                                     ; $5dad: $02
	and  b                                           ; $5dae: $a0
	dec  c                                           ; $5daf: $0d
	daa                                              ; $5db0: $27
	inc  c                                           ; $5db1: $0c
	and  b                                           ; $5db2: $a0
	rlca                                             ; $5db3: $07
	daa                                              ; $5db4: $27
	inc  b                                           ; $5db5: $04
	and  b                                           ; $5db6: $a0
	dec  c                                           ; $5db7: $0d
	daa                                              ; $5db8: $27
	ld   b, $2b                                      ; $5db9: $06 $2b
	dec  b                                           ; $5dbb: $05
	inc  [hl]                                        ; $5dbc: $34
	dec  b                                           ; $5dbd: $05
	scf                                              ; $5dbe: $37
	jr   jr_0fe_5df7                                 ; $5dbf: $18 $36

	ld   [bc], a                                     ; $5dc1: $02
	and  b                                           ; $5dc2: $a0
	rlca                                             ; $5dc3: $07
	ld   [hl], $02                                   ; $5dc4: $36 $02
	and  b                                           ; $5dc6: $a0
	dec  c                                           ; $5dc7: $0d
	scf                                              ; $5dc8: $37
	ld   [bc], a                                     ; $5dc9: $02
	and  b                                           ; $5dca: $a0
	rlca                                             ; $5dcb: $07
	scf                                              ; $5dcc: $37
	ld   [bc], a                                     ; $5dcd: $02
	and  b                                           ; $5dce: $a0
	dec  c                                           ; $5dcf: $0d
	scf                                              ; $5dd0: $37
	ld   [bc], a                                     ; $5dd1: $02
	and  b                                           ; $5dd2: $a0
	rlca                                             ; $5dd3: $07
	scf                                              ; $5dd4: $37
	ld   [bc], a                                     ; $5dd5: $02
	rra                                              ; $5dd6: $1f
	inc  b                                           ; $5dd7: $04
	and  b                                           ; $5dd8: $a0
	dec  c                                           ; $5dd9: $0d
	ld   [hl-], a                                    ; $5dda: $32
	ld   [bc], a                                     ; $5ddb: $02
	and  b                                           ; $5ddc: $a0
	rlca                                             ; $5ddd: $07
	ld   [hl-], a                                    ; $5dde: $32
	ld   [bc], a                                     ; $5ddf: $02
	rra                                              ; $5de0: $1f
	inc  b                                           ; $5de1: $04
	and  b                                           ; $5de2: $a0
	dec  c                                           ; $5de3: $0d
	inc  [hl]                                        ; $5de4: $34
	ld   b, $30                                      ; $5de5: $06 $30
	dec  b                                           ; $5de7: $05
	add  hl, hl                                      ; $5de8: $29
	dec  b                                           ; $5de9: $05
	ld   [hl-], a                                    ; $5dea: $32
	ld   [bc], a                                     ; $5deb: $02
	and  b                                           ; $5dec: $a0
	rlca                                             ; $5ded: $07
	ld   [hl-], a                                    ; $5dee: $32
	ld   [bc], a                                     ; $5def: $02
	rra                                              ; $5df0: $1f
	inc  b                                           ; $5df1: $04
	and  b                                           ; $5df2: $a0
	dec  c                                           ; $5df3: $0d
	daa                                              ; $5df4: $27
	ld   [bc], a                                     ; $5df5: $02
	and  b                                           ; $5df6: $a0

jr_0fe_5df7:
	rlca                                             ; $5df7: $07
	daa                                              ; $5df8: $27
	ld   [bc], a                                     ; $5df9: $02
	rra                                              ; $5dfa: $1f
	inc  b                                           ; $5dfb: $04
	and  b                                           ; $5dfc: $a0
	dec  c                                           ; $5dfd: $0d
	jr   nc, jr_0fe_5e02                             ; $5dfe: $30 $02

	and  b                                           ; $5e00: $a0
	rlca                                             ; $5e01: $07

jr_0fe_5e02:
	jr   nc, jr_0fe_5e06                             ; $5e02: $30 $02

	and  b                                           ; $5e04: $a0
	dec  c                                           ; $5e05: $0d

jr_0fe_5e06:
	dec  hl                                          ; $5e06: $2b
	ld   [bc], a                                     ; $5e07: $02
	and  b                                           ; $5e08: $a0
	rlca                                             ; $5e09: $07
	dec  hl                                          ; $5e0a: $2b
	ld   [bc], a                                     ; $5e0b: $02
	and  b                                           ; $5e0c: $a0
	dec  c                                           ; $5e0d: $0d
	add  hl, hl                                      ; $5e0e: $29
	ld   [bc], a                                     ; $5e0f: $02
	and  b                                           ; $5e10: $a0
	rlca                                             ; $5e11: $07
	add  hl, hl                                      ; $5e12: $29
	ld   [bc], a                                     ; $5e13: $02
	and  b                                           ; $5e14: $a0
	dec  c                                           ; $5e15: $0d
	daa                                              ; $5e16: $27
	ld   [bc], a                                     ; $5e17: $02
	and  b                                           ; $5e18: $a0
	rlca                                             ; $5e19: $07
	daa                                              ; $5e1a: $27
	ld   [bc], a                                     ; $5e1b: $02
	and  b                                           ; $5e1c: $a0
	dec  c                                           ; $5e1d: $0d
	ld   h, $02                                      ; $5e1e: $26 $02
	and  b                                           ; $5e20: $a0
	rlca                                             ; $5e21: $07
	ld   h, $02                                      ; $5e22: $26 $02
	rra                                              ; $5e24: $1f
	inc  b                                           ; $5e25: $04
	and  b                                           ; $5e26: $a0
	dec  c                                           ; $5e27: $0d
	daa                                              ; $5e28: $27
	ld   [bc], a                                     ; $5e29: $02
	and  b                                           ; $5e2a: $a0
	rlca                                             ; $5e2b: $07
	daa                                              ; $5e2c: $27
	ld   [bc], a                                     ; $5e2d: $02
	rra                                              ; $5e2e: $1f
	inc  b                                           ; $5e2f: $04
	and  b                                           ; $5e30: $a0
	dec  c                                           ; $5e31: $0d
	add  hl, hl                                      ; $5e32: $29
	ld   [bc], a                                     ; $5e33: $02
	and  b                                           ; $5e34: $a0
	rlca                                             ; $5e35: $07
	add  hl, hl                                      ; $5e36: $29
	ld   [bc], a                                     ; $5e37: $02
	rra                                              ; $5e38: $1f
	inc  b                                           ; $5e39: $04
	and  b                                           ; $5e3a: $a0
	dec  c                                           ; $5e3b: $0d
	ld   [hl+], a                                    ; $5e3c: $22
	ld   [bc], a                                     ; $5e3d: $02
	and  b                                           ; $5e3e: $a0
	rlca                                             ; $5e3f: $07
	ld   [hl+], a                                    ; $5e40: $22
	ld   [bc], a                                     ; $5e41: $02
	and  b                                           ; $5e42: $a0
	dec  c                                           ; $5e43: $0d
	ld   [hl+], a                                    ; $5e44: $22
	ld   [bc], a                                     ; $5e45: $02
	and  b                                           ; $5e46: $a0
	rlca                                             ; $5e47: $07
	ld   [hl+], a                                    ; $5e48: $22
	ld   [bc], a                                     ; $5e49: $02
	and  b                                           ; $5e4a: $a0
	dec  c                                           ; $5e4b: $0d
	daa                                              ; $5e4c: $27
	ld   d, $a0                                      ; $5e4d: $16 $a0
	rlca                                             ; $5e4f: $07
	daa                                              ; $5e50: $27
	ld   [bc], a                                     ; $5e51: $02
	and  b                                           ; $5e52: $a0
	dec  c                                           ; $5e53: $0d
	ld   [hl+], a                                    ; $5e54: $22
	ld   [bc], a                                     ; $5e55: $02
	and  b                                           ; $5e56: $a0
	rlca                                             ; $5e57: $07
	ld   [hl+], a                                    ; $5e58: $22
	ld   [bc], a                                     ; $5e59: $02
	and  b                                           ; $5e5a: $a0
	dec  c                                           ; $5e5b: $0d
	daa                                              ; $5e5c: $27
	ld   [bc], a                                     ; $5e5d: $02
	and  b                                           ; $5e5e: $a0
	rlca                                             ; $5e5f: $07
	daa                                              ; $5e60: $27
	ld   [bc], a                                     ; $5e61: $02
	and  b                                           ; $5e62: $a0
	dec  c                                           ; $5e63: $0d
	add  hl, hl                                      ; $5e64: $29
	ld   d, $a0                                      ; $5e65: $16 $a0
	rlca                                             ; $5e67: $07
	add  hl, hl                                      ; $5e68: $29
	ld   [bc], a                                     ; $5e69: $02
	and  b                                           ; $5e6a: $a0
	dec  c                                           ; $5e6b: $0d
	daa                                              ; $5e6c: $27
	ld   [bc], a                                     ; $5e6d: $02
	and  b                                           ; $5e6e: $a0
	rlca                                             ; $5e6f: $07
	daa                                              ; $5e70: $27
	ld   [bc], a                                     ; $5e71: $02
	and  b                                           ; $5e72: $a0
	dec  c                                           ; $5e73: $0d
	add  hl, hl                                      ; $5e74: $29
	ld   [bc], a                                     ; $5e75: $02
	and  b                                           ; $5e76: $a0
	rlca                                             ; $5e77: $07
	add  hl, hl                                      ; $5e78: $29
	ld   [bc], a                                     ; $5e79: $02
	and  b                                           ; $5e7a: $a0
	dec  c                                           ; $5e7b: $0d
	dec  hl                                          ; $5e7c: $2b
	ld   [bc], a                                     ; $5e7d: $02
	and  b                                           ; $5e7e: $a0
	rlca                                             ; $5e7f: $07
	dec  hl                                          ; $5e80: $2b
	ld   [bc], a                                     ; $5e81: $02
	rra                                              ; $5e82: $1f
	inc  b                                           ; $5e83: $04
	and  b                                           ; $5e84: $a0
	dec  c                                           ; $5e85: $0d
	jr   nc, jr_0fe_5e8a                             ; $5e86: $30 $02

	and  b                                           ; $5e88: $a0
	rlca                                             ; $5e89: $07

jr_0fe_5e8a:
	jr   nc, jr_0fe_5e8e                             ; $5e8a: $30 $02

	rra                                              ; $5e8c: $1f
	inc  b                                           ; $5e8d: $04

jr_0fe_5e8e:
	and  b                                           ; $5e8e: $a0
	dec  c                                           ; $5e8f: $0d
	ld   [hl-], a                                    ; $5e90: $32
	ld   [bc], a                                     ; $5e91: $02
	and  b                                           ; $5e92: $a0
	rlca                                             ; $5e93: $07
	ld   [hl-], a                                    ; $5e94: $32
	ld   [bc], a                                     ; $5e95: $02
	and  b                                           ; $5e96: $a0
	dec  c                                           ; $5e97: $0d
	jr   nc, jr_0fe_5e9c                             ; $5e98: $30 $02

	and  b                                           ; $5e9a: $a0
	rlca                                             ; $5e9b: $07

jr_0fe_5e9c:
	jr   nc, jr_0fe_5ea0                             ; $5e9c: $30 $02

	and  b                                           ; $5e9e: $a0
	dec  c                                           ; $5e9f: $0d

jr_0fe_5ea0:
	dec  hl                                          ; $5ea0: $2b
	ld   [bc], a                                     ; $5ea1: $02
	and  b                                           ; $5ea2: $a0
	rlca                                             ; $5ea3: $07
	dec  hl                                          ; $5ea4: $2b
	ld   [bc], a                                     ; $5ea5: $02
	and  b                                           ; $5ea6: $a0
	dec  c                                           ; $5ea7: $0d
	add  hl, hl                                      ; $5ea8: $29
	ld   [bc], a                                     ; $5ea9: $02
	and  b                                           ; $5eaa: $a0
	rlca                                             ; $5eab: $07
	add  hl, hl                                      ; $5eac: $29
	ld   [bc], a                                     ; $5ead: $02
	and  b                                           ; $5eae: $a0
	dec  c                                           ; $5eaf: $0d
	daa                                              ; $5eb0: $27
	inc  c                                           ; $5eb1: $0c
	and  b                                           ; $5eb2: $a0
	rlca                                             ; $5eb3: $07
	daa                                              ; $5eb4: $27
	inc  b                                           ; $5eb5: $04
	and  b                                           ; $5eb6: $a0
	dec  c                                           ; $5eb7: $0d
	daa                                              ; $5eb8: $27
	ld   b, $26                                      ; $5eb9: $06 $26
	dec  b                                           ; $5ebb: $05
	daa                                              ; $5ebc: $27
	dec  b                                           ; $5ebd: $05
	add  hl, hl                                      ; $5ebe: $29
	jr   jr_0fe_5eec                                 ; $5ebf: $18 $2b

	ld   [bc], a                                     ; $5ec1: $02
	and  b                                           ; $5ec2: $a0
	rlca                                             ; $5ec3: $07
	dec  hl                                          ; $5ec4: $2b
	ld   [bc], a                                     ; $5ec5: $02
	and  b                                           ; $5ec6: $a0
	dec  c                                           ; $5ec7: $0d
	jr   nc, jr_0fe_5ecc                             ; $5ec8: $30 $02

	and  b                                           ; $5eca: $a0
	rlca                                             ; $5ecb: $07

jr_0fe_5ecc:
	jr   nc, jr_0fe_5ed0                             ; $5ecc: $30 $02

	and  b                                           ; $5ece: $a0
	dec  c                                           ; $5ecf: $0d

jr_0fe_5ed0:
	dec  hl                                          ; $5ed0: $2b
	ld   [bc], a                                     ; $5ed1: $02
	and  b                                           ; $5ed2: $a0
	rlca                                             ; $5ed3: $07
	dec  hl                                          ; $5ed4: $2b
	ld   [bc], a                                     ; $5ed5: $02
	rra                                              ; $5ed6: $1f
	inc  b                                           ; $5ed7: $04
	and  b                                           ; $5ed8: $a0
	dec  c                                           ; $5ed9: $0d
	add  hl, hl                                      ; $5eda: $29
	ld   [bc], a                                     ; $5edb: $02
	and  b                                           ; $5edc: $a0
	rlca                                             ; $5edd: $07
	add  hl, hl                                      ; $5ede: $29
	ld   [bc], a                                     ; $5edf: $02
	rra                                              ; $5ee0: $1f
	inc  b                                           ; $5ee1: $04
	and  b                                           ; $5ee2: $a0
	dec  c                                           ; $5ee3: $0d
	ld   [hl+], a                                    ; $5ee4: $22
	ld   [bc], a                                     ; $5ee5: $02
	and  b                                           ; $5ee6: $a0
	rlca                                             ; $5ee7: $07
	ld   [hl+], a                                    ; $5ee8: $22
	ld   [bc], a                                     ; $5ee9: $02
	rra                                              ; $5eea: $1f
	inc  b                                           ; $5eeb: $04

jr_0fe_5eec:
	and  b                                           ; $5eec: $a0
	dec  c                                           ; $5eed: $0d
	add  hl, hl                                      ; $5eee: $29
	ld   [bc], a                                     ; $5eef: $02
	and  b                                           ; $5ef0: $a0
	rlca                                             ; $5ef1: $07
	add  hl, hl                                      ; $5ef2: $29
	ld   [bc], a                                     ; $5ef3: $02
	rra                                              ; $5ef4: $1f
	inc  b                                           ; $5ef5: $04
	and  b                                           ; $5ef6: $a0
	dec  c                                           ; $5ef7: $0d
	daa                                              ; $5ef8: $27
	inc  l                                           ; $5ef9: $2c
	and  b                                           ; $5efa: $a0
	rlca                                             ; $5efb: $07
	daa                                              ; $5efc: $27
	inc  b                                           ; $5efd: $04
	rra                                              ; $5efe: $1f
	ld   [$0da0], sp                                 ; $5eff: $08 $a0 $0d
	ld   [hl+], a                                    ; $5f02: $22
	ld   [bc], a                                     ; $5f03: $02
	and  b                                           ; $5f04: $a0
	rlca                                             ; $5f05: $07
	ld   [hl+], a                                    ; $5f06: $22
	ld   [bc], a                                     ; $5f07: $02
	and  b                                           ; $5f08: $a0
	dec  c                                           ; $5f09: $0d
	ld   [hl+], a                                    ; $5f0a: $22
	ld   [bc], a                                     ; $5f0b: $02
	and  b                                           ; $5f0c: $a0
	rlca                                             ; $5f0d: $07
	ld   [hl+], a                                    ; $5f0e: $22
	ld   [bc], a                                     ; $5f0f: $02
	or   b                                           ; $5f10: $b0
	di                                               ; $5f11: $f3
	rst  $38                                         ; $5f12: $ff
	rst  $38                                         ; $5f13: $ff
	ld   b, $40                                      ; $5f14: $06 $40
	ld   [bc], a                                     ; $5f16: $02
	ld   [bc], a                                     ; $5f17: $02
	rra                                              ; $5f18: $1f
	db   $10                                         ; $5f19: $10
	and  e                                           ; $5f1a: $a3
	inc  h                                           ; $5f1b: $24
	and  d                                           ; $5f1c: $a2
	ld   b, b                                        ; $5f1d: $40
	and  b                                           ; $5f1e: $a0
	ld   [bc], a                                     ; $5f1f: $02
	rla                                              ; $5f20: $17
	inc  b                                           ; $5f21: $04
	and  b                                           ; $5f22: $a0
	inc  b                                           ; $5f23: $04
	rla                                              ; $5f24: $17
	inc  b                                           ; $5f25: $04
	and  b                                           ; $5f26: $a0
	ld   [bc], a                                     ; $5f27: $02
	ld   [hl-], a                                    ; $5f28: $32
	ld   c, $a0                                      ; $5f29: $0e $a0
	inc  b                                           ; $5f2b: $04
	ld   [hl-], a                                    ; $5f2c: $32
	ld   [bc], a                                     ; $5f2d: $02
	and  b                                           ; $5f2e: $a0
	ld   [bc], a                                     ; $5f2f: $02
	ld   [hl-], a                                    ; $5f30: $32
	inc  b                                           ; $5f31: $04
	ld   [hl-], a                                    ; $5f32: $32
	inc  b                                           ; $5f33: $04
	ld   [hl-], a                                    ; $5f34: $32
	inc  b                                           ; $5f35: $04
	and  b                                           ; $5f36: $a0
	inc  b                                           ; $5f37: $04
	ld   [hl-], a                                    ; $5f38: $32
	inc  b                                           ; $5f39: $04
	and  b                                           ; $5f3a: $a0
	ld   [bc], a                                     ; $5f3b: $02
	ld   [hl-], a                                    ; $5f3c: $32
	inc  b                                           ; $5f3d: $04
	and  b                                           ; $5f3e: $a0
	inc  b                                           ; $5f3f: $04
	ld   [hl-], a                                    ; $5f40: $32

jr_0fe_5f41:
	inc  b                                           ; $5f41: $04
	and  b                                           ; $5f42: $a0
	ld   [bc], a                                     ; $5f43: $02
	daa                                              ; $5f44: $27
	inc  b                                           ; $5f45: $04
	and  b                                           ; $5f46: $a0
	inc  b                                           ; $5f47: $04
	daa                                              ; $5f48: $27
	inc  b                                           ; $5f49: $04
	and  b                                           ; $5f4a: $a0
	ld   [bc], a                                     ; $5f4b: $02
	ld   [hl+], a                                    ; $5f4c: $22
	inc  b                                           ; $5f4d: $04
	and  b                                           ; $5f4e: $a0
	inc  b                                           ; $5f4f: $04
	ld   [hl+], a                                    ; $5f50: $22
	inc  b                                           ; $5f51: $04
	and  b                                           ; $5f52: $a0
	ld   [bc], a                                     ; $5f53: $02
	rla                                              ; $5f54: $17
	inc  b                                           ; $5f55: $04
	and  b                                           ; $5f56: $a0
	inc  b                                           ; $5f57: $04
	rla                                              ; $5f58: $17
	inc  b                                           ; $5f59: $04
	and  b                                           ; $5f5a: $a0
	ld   [bc], a                                     ; $5f5b: $02
	ld   [hl-], a                                    ; $5f5c: $32
	ld   c, $a0                                      ; $5f5d: $0e $a0
	inc  b                                           ; $5f5f: $04
	ld   [hl-], a                                    ; $5f60: $32
	ld   [bc], a                                     ; $5f61: $02
	and  b                                           ; $5f62: $a0
	ld   [bc], a                                     ; $5f63: $02
	ld   [hl-], a                                    ; $5f64: $32
	inc  b                                           ; $5f65: $04
	ld   [hl-], a                                    ; $5f66: $32
	inc  b                                           ; $5f67: $04
	ld   [hl-], a                                    ; $5f68: $32
	inc  b                                           ; $5f69: $04
	and  b                                           ; $5f6a: $a0
	inc  b                                           ; $5f6b: $04
	ld   [hl-], a                                    ; $5f6c: $32
	inc  b                                           ; $5f6d: $04
	and  b                                           ; $5f6e: $a0
	ld   [bc], a                                     ; $5f6f: $02
	ld   [hl-], a                                    ; $5f70: $32
	inc  b                                           ; $5f71: $04
	and  b                                           ; $5f72: $a0
	inc  b                                           ; $5f73: $04
	ld   [hl-], a                                    ; $5f74: $32
	inc  b                                           ; $5f75: $04
	rra                                              ; $5f76: $1f
	db   $10                                         ; $5f77: $10
	and  b                                           ; $5f78: $a0
	ld   [bc], a                                     ; $5f79: $02
	dec  h                                           ; $5f7a: $25
	ld   b, $24                                      ; $5f7b: $06 $24
	dec  b                                           ; $5f7d: $05
	ld   [hl+], a                                    ; $5f7e: $22
	dec  b                                           ; $5f7f: $05
	jr   nz, @+$08                                   ; $5f80: $20 $06

	dec  de                                          ; $5f82: $1b
	dec  b                                           ; $5f83: $05
	add  hl, de                                      ; $5f84: $19
	dec  b                                           ; $5f85: $05
	rla                                              ; $5f86: $17
	ld   c, $a0                                      ; $5f87: $0e $a0
	inc  b                                           ; $5f89: $04
	rla                                              ; $5f8a: $17
	ld   [bc], a                                     ; $5f8b: $02
	and  b                                           ; $5f8c: $a0
	ld   [bc], a                                     ; $5f8d: $02
	ld   [hl+], a                                    ; $5f8e: $22
	ld   c, $a0                                      ; $5f8f: $0e $a0
	inc  b                                           ; $5f91: $04
	ld   [hl+], a                                    ; $5f92: $22
	ld   [bc], a                                     ; $5f93: $02
	and  b                                           ; $5f94: $a0
	ld   [bc], a                                     ; $5f95: $02
	rla                                              ; $5f96: $17
	ld   [$04a0], sp                                 ; $5f97: $08 $a0 $04
	rla                                              ; $5f9a: $17
	ld   [bc], a                                     ; $5f9b: $02
	rra                                              ; $5f9c: $1f
	ld   [hl], $1f                                   ; $5f9d: $36 $1f
	jr   nz, jr_0fe_5f41                             ; $5f9f: $20 $a0

	inc  b                                           ; $5fa1: $04
	ld   [hl], $03                                   ; $5fa2: $36 $03
	scf                                              ; $5fa4: $37
	inc  bc                                          ; $5fa5: $03
	add  hl, sp                                      ; $5fa6: $39
	ld   [bc], a                                     ; $5fa7: $02
	ld   b, d                                        ; $5fa8: $42
	inc  bc                                          ; $5fa9: $03
	ld   b, [hl]                                     ; $5faa: $46
	inc  bc                                          ; $5fab: $03
	ld   b, a                                        ; $5fac: $47
	ld   [bc], a                                     ; $5fad: $02
	add  hl, sp                                      ; $5fae: $39
	inc  bc                                          ; $5faf: $03
	ld   b, d                                        ; $5fb0: $42
	inc  bc                                          ; $5fb1: $03
	ld   b, [hl]                                     ; $5fb2: $46
	ld   [bc], a                                     ; $5fb3: $02
	ld   b, a                                        ; $5fb4: $47
	inc  bc                                          ; $5fb5: $03
	ld   c, c                                        ; $5fb6: $49
	inc  bc                                          ; $5fb7: $03
	ld   d, d                                        ; $5fb8: $52
	ld   [bc], a                                     ; $5fb9: $02
	db   $fd                                         ; $5fba: $fd
	di                                               ; $5fbb: $f3
	db   $fd                                         ; $5fbc: $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $5fbd: $f0 $a0
	ld   [bc], a                                     ; $5fbf: $02
	rla                                              ; $5fc0: $17
	inc  b                                           ; $5fc1: $04
	and  b                                           ; $5fc2: $a0
	inc  b                                           ; $5fc3: $04
	rla                                              ; $5fc4: $17
	inc  b                                           ; $5fc5: $04
	and  b                                           ; $5fc6: $a0
	ld   [bc], a                                     ; $5fc7: $02
	rla                                              ; $5fc8: $17
	ld   [$081f], sp                                 ; $5fc9: $08 $1f $08
	rla                                              ; $5fcc: $17
	ld   [$f0b1], sp                                 ; $5fcd: $08 $b1 $f0
	rla                                              ; $5fd0: $17
	ld   [$0827], sp                                 ; $5fd1: $08 $27 $08
	ld   h, $08                                      ; $5fd4: $26 $08
	ld   [hl+], a                                    ; $5fd6: $22
	ld   [$0824], sp                                 ; $5fd7: $08 $24 $08
	rra                                              ; $5fda: $1f
	jr   jr_0fe_5ffd                                 ; $5fdb: $18 $20

	inc  b                                           ; $5fdd: $04
	and  b                                           ; $5fde: $a0
	inc  b                                           ; $5fdf: $04
	jr   nz, jr_0fe_5fe6                             ; $5fe0: $20 $04

	and  b                                           ; $5fe2: $a0
	ld   [bc], a                                     ; $5fe3: $02
	jr   nz, jr_0fe_5fee                             ; $5fe4: $20 $08

jr_0fe_5fe6:
	rra                                              ; $5fe6: $1f
	ld   [$0820], sp                                 ; $5fe7: $08 $20 $08
	dec  de                                          ; $5fea: $1b
	inc  b                                           ; $5feb: $04
	and  b                                           ; $5fec: $a0
	inc  b                                           ; $5fed: $04

jr_0fe_5fee:
	dec  de                                          ; $5fee: $1b
	inc  b                                           ; $5fef: $04
	and  b                                           ; $5ff0: $a0
	ld   [bc], a                                     ; $5ff1: $02
	dec  de                                          ; $5ff2: $1b
	ld   [$081f], sp                                 ; $5ff3: $08 $1f $08
	add  hl, de                                      ; $5ff6: $19
	ld   [$0417], sp                                 ; $5ff7: $08 $17 $04
	and  b                                           ; $5ffa: $a0
	inc  b                                           ; $5ffb: $04
	rla                                              ; $5ffc: $17

jr_0fe_5ffd:
	inc  b                                           ; $5ffd: $04
	and  b                                           ; $5ffe: $a0
	ld   [bc], a                                     ; $5fff: $02
	add  hl, de                                      ; $6000: $19
	inc  b                                           ; $6001: $04
	rla                                              ; $6002: $17
	inc  b                                           ; $6003: $04
	dec  d                                           ; $6004: $15
	ld   c, $1f                                      ; $6005: $0e $1f
	ld   [bc], a                                     ; $6007: $02
	ld   [hl+], a                                    ; $6008: $22
	ld   [$0824], sp                                 ; $6009: $08 $24 $08
	ld   h, $08                                      ; $600c: $26 $08
	rra                                              ; $600e: $1f
	ld   [$f0fd], sp                                 ; $600f: $08 $fd $f0
	and  b                                           ; $6012: $a0
	ld   [bc], a                                     ; $6013: $02
	rla                                              ; $6014: $17
	inc  b                                           ; $6015: $04
	and  b                                           ; $6016: $a0
	inc  b                                           ; $6017: $04
	rla                                              ; $6018: $17
	inc  b                                           ; $6019: $04
	and  b                                           ; $601a: $a0
	ld   [bc], a                                     ; $601b: $02
	rla                                              ; $601c: $17
	ld   [$081f], sp                                 ; $601d: $08 $1f $08
	rla                                              ; $6020: $17
	ld   [$f0b1], sp                                 ; $6021: $08 $b1 $f0
	rla                                              ; $6024: $17
	ld   [$0827], sp                                 ; $6025: $08 $27 $08
	ld   h, $08                                      ; $6028: $26 $08
	ld   [hl+], a                                    ; $602a: $22
	ld   [$0824], sp                                 ; $602b: $08 $24 $08
	inc  h                                           ; $602e: $24
	ld   [$081f], sp                                 ; $602f: $08 $1f $08
	inc  h                                           ; $6032: $24
	ld   [$0819], sp                                 ; $6033: $08 $19 $08
	add  hl, de                                      ; $6036: $19
	ld   [$081f], sp                                 ; $6037: $08 $1f $08
	add  hl, de                                      ; $603a: $19
	ld   [$0822], sp                                 ; $603b: $08 $22 $08
	ld   [hl+], a                                    ; $603e: $22
	ld   [$081f], sp                                 ; $603f: $08 $1f $08
	ld   [hl+], a                                    ; $6042: $22
	ld   [$0817], sp                                 ; $6043: $08 $17 $08
	rla                                              ; $6046: $17
	ld   [$081f], sp                                 ; $6047: $08 $1f $08
	rla                                              ; $604a: $17
	ld   [$0417], sp                                 ; $604b: $08 $17 $04
	add  hl, de                                      ; $604e: $19
	inc  b                                           ; $604f: $04
	ld   [hl+], a                                    ; $6050: $22
	inc  b                                           ; $6051: $04
	inc  h                                           ; $6052: $24
	inc  b                                           ; $6053: $04
	ld   [hl+], a                                    ; $6054: $22
	inc  b                                           ; $6055: $04
	inc  h                                           ; $6056: $24
	inc  b                                           ; $6057: $04
	daa                                              ; $6058: $27
	inc  b                                           ; $6059: $04
	add  hl, hl                                      ; $605a: $29
	inc  b                                           ; $605b: $04
	or   b                                           ; $605c: $b0
	di                                               ; $605d: $f3
	rst  $38                                         ; $605e: $ff
	rst  $38                                         ; $605f: $ff
	ld   b, $00                                      ; $6060: $06 $00
	add  hl, bc                                      ; $6062: $09
	nop                                              ; $6063: $00
	rra                                              ; $6064: $1f
	db   $10                                         ; $6065: $10
	pop  bc                                          ; $6066: $c1
	inc  b                                           ; $6067: $04
	and  b                                           ; $6068: $a0
	add  hl, bc                                      ; $6069: $09
	ld   l, b                                        ; $606a: $68
	ld   bc, $06a0                                   ; $606b: $01 $a0 $06
	sbc  c                                           ; $606e: $99
	ld   bc, $01a0                                   ; $606f: $01 $a0 $01
	sbc  c                                           ; $6072: $99
	ld   b, $a0                                      ; $6073: $06 $a0
	dec  c                                           ; $6075: $0d
	rla                                              ; $6076: $17
	ld   bc, $0aa0                                   ; $6077: $01 $a0 $0a
	db   $10                                         ; $607a: $10
	ld   bc, $01a0                                   ; $607b: $01 $a0 $01
	nop                                              ; $607e: $00
	ld   c, $fd                                      ; $607f: $0e $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $6081: $f0 $a0
	dec  c                                           ; $6083: $0d
	rla                                              ; $6084: $17
	ld   bc, $0aa0                                   ; $6085: $01 $a0 $0a
	db   $10                                         ; $6088: $10
	ld   bc, $01a0                                   ; $6089: $01 $a0 $01
	nop                                              ; $608c: $00

jr_0fe_608d:
	ld   [bc], a                                     ; $608d: $02
	or   c                                           ; $608e: $b1
	ldh  a, [$fd]                                    ; $608f: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $6091: $f0 $a0
	dec  c                                           ; $6093: $0d
	rla                                              ; $6094: $17
	ld   bc, $0aa0                                   ; $6095: $01 $a0 $0a
	db   $10                                         ; $6098: $10
	ld   bc, $01a0                                   ; $6099: $01 $a0 $01
	nop                                              ; $609c: $00
	ld   b, $b2                                      ; $609d: $06 $b2
	ldh  a, [$c1]                                    ; $609f: $f0 $c1
	inc  b                                           ; $60a1: $04
	and  b                                           ; $60a2: $a0
	add  hl, bc                                      ; $60a3: $09
	ld   l, b                                        ; $60a4: $68
	ld   bc, $06a0                                   ; $60a5: $01 $a0 $06
	sbc  c                                           ; $60a8: $99
	ld   bc, $01a0                                   ; $60a9: $01 $a0 $01
	sbc  c                                           ; $60ac: $99
	ld   b, $c1                                      ; $60ad: $06 $c1
	inc  b                                           ; $60af: $04
	and  b                                           ; $60b0: $a0
	add  hl, bc                                      ; $60b1: $09
	ld   l, b                                        ; $60b2: $68
	ld   bc, $06a0                                   ; $60b3: $01 $a0 $06
	sbc  c                                           ; $60b6: $99
	ld   bc, $01a0                                   ; $60b7: $01 $a0 $01
	sbc  c                                           ; $60ba: $99
	ld   b, $a0                                      ; $60bb: $06 $a0
	dec  c                                           ; $60bd: $0d
	rla                                              ; $60be: $17
	ld   bc, $0aa0                                   ; $60bf: $01 $a0 $0a
	db   $10                                         ; $60c2: $10
	ld   bc, $01a0                                   ; $60c3: $01 $a0 $01
	nop                                              ; $60c6: $00
	ld   c, $fd                                      ; $60c7: $0e $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $60c9: $f0 $a0
	dec  c                                           ; $60cb: $0d
	rla                                              ; $60cc: $17
	ld   bc, $0aa0                                   ; $60cd: $01 $a0 $0a
	db   $10                                         ; $60d0: $10
	ld   bc, $01a0                                   ; $60d1: $01 $a0 $01
	nop                                              ; $60d4: $00
	ld   [bc], a                                     ; $60d5: $02
	or   c                                           ; $60d6: $b1
	ldh  a, [$fd]                                    ; $60d7: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $60d9: $f0 $a0
	dec  c                                           ; $60db: $0d
	rla                                              ; $60dc: $17
	ld   bc, $0aa0                                   ; $60dd: $01 $a0 $0a
	db   $10                                         ; $60e0: $10
	ld   bc, $01a0                                   ; $60e1: $01 $a0 $01
	nop                                              ; $60e4: $00
	ld   b, $b1                                      ; $60e5: $06 $b1
	ldh  a, [$1f]                                    ; $60e7: $f0 $1f
	db   $10                                         ; $60e9: $10
	rra                                              ; $60ea: $1f
	jr   nz, jr_0fe_608d                             ; $60eb: $20 $a0

	dec  c                                           ; $60ed: $0d
	rla                                              ; $60ee: $17
	ld   bc, $0aa0                                   ; $60ef: $01 $a0 $0a
	db   $10                                         ; $60f2: $10
	ld   bc, $01a0                                   ; $60f3: $01 $a0 $01
	nop                                              ; $60f6: $00
	ld   c, $a0                                      ; $60f7: $0e $a0
	dec  c                                           ; $60f9: $0d
	rla                                              ; $60fa: $17
	ld   bc, $0aa0                                   ; $60fb: $01 $a0 $0a
	db   $10                                         ; $60fe: $10
	ld   bc, $01a0                                   ; $60ff: $01 $a0 $01
	nop                                              ; $6102: $00
	ld   b, $fd                                      ; $6103: $06 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $6105: $f0 $a0
	dec  c                                           ; $6107: $0d
	rla                                              ; $6108: $17
	ld   bc, $0aa0                                   ; $6109: $01 $a0 $0a
	db   $10                                         ; $610c: $10
	ld   bc, $01a0                                   ; $610d: $01 $a0 $01
	nop                                              ; $6110: $00
	ld   [bc], a                                     ; $6111: $02
	or   c                                           ; $6112: $b1
	ldh  a, [$c1]                                    ; $6113: $f0 $c1
	inc  b                                           ; $6115: $04
	and  b                                           ; $6116: $a0
	add  hl, bc                                      ; $6117: $09
	ld   l, b                                        ; $6118: $68
	ld   bc, $06a0                                   ; $6119: $01 $a0 $06
	sbc  c                                           ; $611c: $99
	ld   bc, $01a0                                   ; $611d: $01 $a0 $01
	sbc  c                                           ; $6120: $99
	ld   c, $1f                                      ; $6121: $0e $1f
	jr   nc, jr_0fe_6144                             ; $6123: $30 $1f

	jr   nc, @-$01                                   ; $6125: $30 $fd

	ldh  a, [$c1]                                    ; $6127: $f0 $c1
	inc  b                                           ; $6129: $04
	and  b                                           ; $612a: $a0
	ld   c, $42                                      ; $612b: $0e $42
	ld   bc, $04a0                                   ; $612d: $01 $a0 $04
	sbc  c                                           ; $6130: $99
	ld   [bc], a                                     ; $6131: $02
	pop  bc                                          ; $6132: $c1
	inc  b                                           ; $6133: $04
	and  b                                           ; $6134: $a0
	ld   c, $42                                      ; $6135: $0e $42
	ld   bc, $04a0                                   ; $6137: $01 $a0 $04
	sbc  c                                           ; $613a: $99
	ld   [bc], a                                     ; $613b: $02
	pop  bc                                          ; $613c: $c1
	inc  b                                           ; $613d: $04
	and  b                                           ; $613e: $a0
	ld   c, $42                                      ; $613f: $0e $42
	ld   bc, $04a0                                   ; $6141: $01 $a0 $04

jr_0fe_6144:
	sbc  c                                           ; $6144: $99
	ld   bc, $f0b1                                   ; $6145: $01 $b1 $f0
	db   $fd                                         ; $6148: $fd
	di                                               ; $6149: $f3
	db   $fd                                         ; $614a: $fd
	ldh  a, [$c1]                                    ; $614b: $f0 $c1
	inc  b                                           ; $614d: $04
	and  b                                           ; $614e: $a0
	add  hl, bc                                      ; $614f: $09
	ld   l, b                                        ; $6150: $68
	ld   bc, $06a0                                   ; $6151: $01 $a0 $06
	sbc  c                                           ; $6154: $99
	ld   bc, $01a0                                   ; $6155: $01 $a0 $01
	sbc  c                                           ; $6158: $99
	ld   b, $c1                                      ; $6159: $06 $c1
	inc  bc                                          ; $615b: $03
	and  b                                           ; $615c: $a0
	rlca                                             ; $615d: $07
	ld   [bc], a                                     ; $615e: $02
	ld   bc, $01a0                                   ; $615f: $01 $a0 $01
	nop                                              ; $6162: $00
	rlca                                             ; $6163: $07
	and  b                                           ; $6164: $a0
	dec  c                                           ; $6165: $0d
	rla                                              ; $6166: $17
	ld   bc, $0aa0                                   ; $6167: $01 $a0 $0a
	db   $10                                         ; $616a: $10
	ld   bc, $01a0                                   ; $616b: $01 $a0 $01
	nop                                              ; $616e: $00
	ld   b, $c1                                      ; $616f: $06 $c1
	inc  bc                                          ; $6171: $03
	and  b                                           ; $6172: $a0
	rlca                                             ; $6173: $07
	ld   [bc], a                                     ; $6174: $02
	ld   bc, $01a0                                   ; $6175: $01 $a0 $01
	nop                                              ; $6178: $00
	rlca                                             ; $6179: $07
	cp   [hl]                                        ; $617a: $be
	ldh  a, [$c1]                                    ; $617b: $f0 $c1
	inc  b                                           ; $617d: $04
	and  b                                           ; $617e: $a0
	add  hl, bc                                      ; $617f: $09
	ld   l, b                                        ; $6180: $68
	ld   bc, $06a0                                   ; $6181: $01 $a0 $06
	sbc  c                                           ; $6184: $99
	ld   bc, $01a0                                   ; $6185: $01 $a0 $01
	sbc  c                                           ; $6188: $99
	ld   b, $a0                                      ; $6189: $06 $a0
	dec  c                                           ; $618b: $0d
	rla                                              ; $618c: $17
	ld   bc, $0aa0                                   ; $618d: $01 $a0 $0a
	db   $10                                         ; $6190: $10
	ld   bc, $01a0                                   ; $6191: $01 $a0 $01
	nop                                              ; $6194: $00
	ld   b, $a0                                      ; $6195: $06 $a0
	dec  c                                           ; $6197: $0d
	rla                                              ; $6198: $17
	ld   bc, $0aa0                                   ; $6199: $01 $a0 $0a
	db   $10                                         ; $619c: $10
	ld   bc, $01a0                                   ; $619d: $01 $a0 $01
	nop                                              ; $61a0: $00
	ld   b, $a0                                      ; $61a1: $06 $a0
	dec  c                                           ; $61a3: $0d
	rla                                              ; $61a4: $17
	ld   bc, $0aa0                                   ; $61a5: $01 $a0 $0a
	db   $10                                         ; $61a8: $10
	ld   bc, $01a0                                   ; $61a9: $01 $a0 $01
	nop                                              ; $61ac: $00
	ld   [bc], a                                     ; $61ad: $02
	and  b                                           ; $61ae: $a0
	dec  c                                           ; $61af: $0d
	rla                                              ; $61b0: $17
	ld   bc, $0aa0                                   ; $61b1: $01 $a0 $0a
	db   $10                                         ; $61b4: $10
	ld   bc, $01a0                                   ; $61b5: $01 $a0 $01
	nop                                              ; $61b8: $00
	ld   [bc], a                                     ; $61b9: $02
	or   b                                           ; $61ba: $b0
	di                                               ; $61bb: $f3
	rst  $38                                         ; $61bc: $ff
	rst  $38                                         ; $61bd: $ff
	rlca                                             ; $61be: $07
	nop                                              ; $61bf: $00
	add  hl, bc                                      ; $61c0: $09
	nop                                              ; $61c1: $00
	db   $fd                                         ; $61c2: $fd
	di                                               ; $61c3: $f3
	and  d                                           ; $61c4: $a2
	nop                                              ; $61c5: $00
	and  e                                           ; $61c6: $a3
	ld   d, $a0                                      ; $61c7: $16 $a0
	ld   a, [bc]                                     ; $61c9: $0a
	add  hl, de                                      ; $61ca: $19
	inc  b                                           ; $61cb: $04
	dec  d                                           ; $61cc: $15
	inc  b                                           ; $61cd: $04
	add  hl, de                                      ; $61ce: $19
	inc  b                                           ; $61cf: $04
	jr   nz, jr_0fe_61d6                             ; $61d0: $20 $04

	dec  h                                           ; $61d2: $25
	inc  b                                           ; $61d3: $04
	add  hl, de                                      ; $61d4: $19
	inc  b                                           ; $61d5: $04

jr_0fe_61d6:
	jr   nz, jr_0fe_61dc                             ; $61d6: $20 $04

	dec  h                                           ; $61d8: $25
	inc  b                                           ; $61d9: $04
	add  hl, hl                                      ; $61da: $29
	inc  b                                           ; $61db: $04

jr_0fe_61dc:
	jr   nz, jr_0fe_61e2                             ; $61dc: $20 $04

	dec  h                                           ; $61de: $25
	inc  b                                           ; $61df: $04
	add  hl, hl                                      ; $61e0: $29
	inc  b                                           ; $61e1: $04

jr_0fe_61e2:
	jr   nc, jr_0fe_61e8                             ; $61e2: $30 $04

	dec  h                                           ; $61e4: $25
	inc  b                                           ; $61e5: $04
	add  hl, hl                                      ; $61e6: $29
	inc  b                                           ; $61e7: $04

jr_0fe_61e8:
	jr   nc, jr_0fe_61ee                             ; $61e8: $30 $04

	jr   nc, jr_0fe_61f8                             ; $61ea: $30 $0c

	dec  h                                           ; $61ec: $25
	ld   [bc], a                                     ; $61ed: $02

jr_0fe_61ee:
	and  b                                           ; $61ee: $a0
	dec  b                                           ; $61ef: $05
	dec  h                                           ; $61f0: $25
	ld   [bc], a                                     ; $61f1: $02
	and  b                                           ; $61f2: $a0
	ld   a, [bc]                                     ; $61f3: $0a
	inc  h                                           ; $61f4: $24
	ld   [bc], a                                     ; $61f5: $02
	and  b                                           ; $61f6: $a0
	dec  b                                           ; $61f7: $05

jr_0fe_61f8:
	inc  h                                           ; $61f8: $24
	ld   [bc], a                                     ; $61f9: $02
	and  b                                           ; $61fa: $a0
	ld   a, [bc]                                     ; $61fb: $0a
	ld   [hl+], a                                    ; $61fc: $22
	ld   [bc], a                                     ; $61fd: $02
	and  b                                           ; $61fe: $a0
	dec  b                                           ; $61ff: $05
	ld   [hl+], a                                    ; $6200: $22
	ld   [bc], a                                     ; $6201: $02
	and  b                                           ; $6202: $a0
	ld   a, [bc]                                     ; $6203: $0a
	jr   nz, jr_0fe_6208                             ; $6204: $20 $02

	and  b                                           ; $6206: $a0
	dec  b                                           ; $6207: $05

jr_0fe_6208:
	jr   nz, jr_0fe_620c                             ; $6208: $20 $02

	and  b                                           ; $620a: $a0
	ld   a, [bc]                                     ; $620b: $0a

jr_0fe_620c:
	daa                                              ; $620c: $27
	ld   [bc], a                                     ; $620d: $02
	and  b                                           ; $620e: $a0
	dec  b                                           ; $620f: $05
	ld   [hl+], a                                    ; $6210: $22
	ld   [bc], a                                     ; $6211: $02
	and  b                                           ; $6212: $a0
	ld   a, [bc]                                     ; $6213: $0a
	jr   nc, jr_0fe_6226                             ; $6214: $30 $10

	inc  h                                           ; $6216: $24
	ld   [bc], a                                     ; $6217: $02
	and  b                                           ; $6218: $a0
	dec  b                                           ; $6219: $05
	inc  h                                           ; $621a: $24
	ld   [bc], a                                     ; $621b: $02
	and  b                                           ; $621c: $a0
	ld   a, [bc]                                     ; $621d: $0a
	ld   [hl+], a                                    ; $621e: $22
	ld   [bc], a                                     ; $621f: $02
	and  b                                           ; $6220: $a0
	dec  b                                           ; $6221: $05
	ld   [hl+], a                                    ; $6222: $22
	ld   [bc], a                                     ; $6223: $02
	and  b                                           ; $6224: $a0
	ld   a, [bc]                                     ; $6225: $0a

jr_0fe_6226:
	jr   nz, jr_0fe_622a                             ; $6226: $20 $02

	and  b                                           ; $6228: $a0
	dec  b                                           ; $6229: $05

jr_0fe_622a:
	jr   nz, jr_0fe_622e                             ; $622a: $20 $02

	and  b                                           ; $622c: $a0
	ld   a, [bc]                                     ; $622d: $0a

jr_0fe_622e:
	ld   [hl+], a                                    ; $622e: $22
	ld   [bc], a                                     ; $622f: $02
	and  b                                           ; $6230: $a0
	dec  b                                           ; $6231: $05
	ld   [hl+], a                                    ; $6232: $22
	ld   [bc], a                                     ; $6233: $02
	and  b                                           ; $6234: $a0
	ld   a, [bc]                                     ; $6235: $0a
	jr   nc, jr_0fe_6244                             ; $6236: $30 $0c

	dec  h                                           ; $6238: $25
	ld   [bc], a                                     ; $6239: $02
	and  b                                           ; $623a: $a0
	dec  b                                           ; $623b: $05
	dec  h                                           ; $623c: $25
	ld   [bc], a                                     ; $623d: $02
	and  b                                           ; $623e: $a0
	ld   a, [bc]                                     ; $623f: $0a
	inc  h                                           ; $6240: $24
	ld   [bc], a                                     ; $6241: $02
	and  b                                           ; $6242: $a0
	dec  b                                           ; $6243: $05

jr_0fe_6244:
	inc  h                                           ; $6244: $24
	ld   [bc], a                                     ; $6245: $02
	and  b                                           ; $6246: $a0
	ld   a, [bc]                                     ; $6247: $0a
	ld   [hl+], a                                    ; $6248: $22
	ld   [bc], a                                     ; $6249: $02
	and  b                                           ; $624a: $a0
	dec  b                                           ; $624b: $05
	ld   [hl+], a                                    ; $624c: $22
	ld   [bc], a                                     ; $624d: $02
	and  b                                           ; $624e: $a0
	ld   a, [bc]                                     ; $624f: $0a
	jr   nz, jr_0fe_6254                             ; $6250: $20 $02

	and  b                                           ; $6252: $a0
	dec  b                                           ; $6253: $05

jr_0fe_6254:
	jr   nz, jr_0fe_6258                             ; $6254: $20 $02

	and  b                                           ; $6256: $a0
	ld   a, [bc]                                     ; $6257: $0a

jr_0fe_6258:
	daa                                              ; $6258: $27
	ld   [bc], a                                     ; $6259: $02
	and  b                                           ; $625a: $a0
	dec  b                                           ; $625b: $05
	ld   [hl+], a                                    ; $625c: $22
	ld   [bc], a                                     ; $625d: $02
	and  b                                           ; $625e: $a0
	ld   a, [bc]                                     ; $625f: $0a
	jr   nc, jr_0fe_6272                             ; $6260: $30 $10

	inc  h                                           ; $6262: $24
	ld   [bc], a                                     ; $6263: $02
	and  b                                           ; $6264: $a0
	dec  b                                           ; $6265: $05
	inc  h                                           ; $6266: $24
	ld   [bc], a                                     ; $6267: $02
	and  b                                           ; $6268: $a0
	ld   a, [bc]                                     ; $6269: $0a
	ld   [hl+], a                                    ; $626a: $22
	ld   [bc], a                                     ; $626b: $02
	and  b                                           ; $626c: $a0
	dec  b                                           ; $626d: $05
	ld   [hl+], a                                    ; $626e: $22
	ld   [bc], a                                     ; $626f: $02
	and  b                                           ; $6270: $a0
	ld   a, [bc]                                     ; $6271: $0a

jr_0fe_6272:
	inc  h                                           ; $6272: $24
	ld   [bc], a                                     ; $6273: $02
	and  b                                           ; $6274: $a0
	dec  b                                           ; $6275: $05
	inc  h                                           ; $6276: $24
	ld   [bc], a                                     ; $6277: $02
	and  b                                           ; $6278: $a0
	ld   a, [bc]                                     ; $6279: $0a
	dec  h                                           ; $627a: $25
	ld   [bc], a                                     ; $627b: $02
	and  b                                           ; $627c: $a0
	dec  b                                           ; $627d: $05
	dec  h                                           ; $627e: $25
	ld   [bc], a                                     ; $627f: $02
	and  b                                           ; $6280: $a0
	ld   [$0225], sp                                 ; $6281: $08 $25 $02
	and  b                                           ; $6284: $a0
	dec  b                                           ; $6285: $05
	dec  h                                           ; $6286: $25
	ld   [bc], a                                     ; $6287: $02
	and  b                                           ; $6288: $a0
	ld   [$0227], sp                                 ; $6289: $08 $27 $02
	and  b                                           ; $628c: $a0
	dec  b                                           ; $628d: $05
	daa                                              ; $628e: $27
	ld   [bc], a                                     ; $628f: $02
	and  b                                           ; $6290: $a0
	ld   a, [bc]                                     ; $6291: $0a
	add  hl, hl                                      ; $6292: $29
	ld   [bc], a                                     ; $6293: $02
	and  b                                           ; $6294: $a0
	dec  b                                           ; $6295: $05
	add  hl, hl                                      ; $6296: $29
	ld   [bc], a                                     ; $6297: $02
	and  b                                           ; $6298: $a0
	add  hl, bc                                      ; $6299: $09
	daa                                              ; $629a: $27
	ld   [bc], a                                     ; $629b: $02
	and  b                                           ; $629c: $a0
	dec  b                                           ; $629d: $05
	daa                                              ; $629e: $27
	ld   [bc], a                                     ; $629f: $02
	and  b                                           ; $62a0: $a0
	ld   [$0225], sp                                 ; $62a1: $08 $25 $02
	and  b                                           ; $62a4: $a0
	dec  b                                           ; $62a5: $05
	dec  h                                           ; $62a6: $25
	ld   [bc], a                                     ; $62a7: $02
	and  b                                           ; $62a8: $a0
	ld   [$0224], sp                                 ; $62a9: $08 $24 $02
	and  b                                           ; $62ac: $a0
	dec  b                                           ; $62ad: $05
	inc  h                                           ; $62ae: $24
	ld   [bc], a                                     ; $62af: $02
	and  b                                           ; $62b0: $a0
	ld   [$0222], sp                                 ; $62b1: $08 $22 $02
	and  b                                           ; $62b4: $a0
	dec  b                                           ; $62b5: $05
	ld   [hl+], a                                    ; $62b6: $22
	ld   [bc], a                                     ; $62b7: $02
	and  b                                           ; $62b8: $a0
	ld   [$0224], sp                                 ; $62b9: $08 $24 $02
	and  b                                           ; $62bc: $a0
	dec  b                                           ; $62bd: $05
	inc  h                                           ; $62be: $24
	ld   [bc], a                                     ; $62bf: $02
	and  b                                           ; $62c0: $a0
	ld   [$0225], sp                                 ; $62c1: $08 $25 $02
	and  b                                           ; $62c4: $a0
	dec  b                                           ; $62c5: $05
	dec  h                                           ; $62c6: $25
	ld   [bc], a                                     ; $62c7: $02
	and  b                                           ; $62c8: $a0
	add  hl, bc                                      ; $62c9: $09
	daa                                              ; $62ca: $27
	ld   [bc], a                                     ; $62cb: $02
	and  b                                           ; $62cc: $a0
	dec  b                                           ; $62cd: $05
	daa                                              ; $62ce: $27
	ld   [bc], a                                     ; $62cf: $02
	and  b                                           ; $62d0: $a0
	add  hl, bc                                      ; $62d1: $09
	jr   z, jr_0fe_62d6                              ; $62d2: $28 $02

	and  b                                           ; $62d4: $a0
	dec  b                                           ; $62d5: $05

jr_0fe_62d6:
	jr   z, jr_0fe_62da                              ; $62d6: $28 $02

	and  b                                           ; $62d8: $a0
	add  hl, bc                                      ; $62d9: $09

jr_0fe_62da:
	daa                                              ; $62da: $27
	ld   [bc], a                                     ; $62db: $02
	and  b                                           ; $62dc: $a0
	dec  b                                           ; $62dd: $05
	daa                                              ; $62de: $27
	ld   [bc], a                                     ; $62df: $02
	and  b                                           ; $62e0: $a0
	ld   a, [bc]                                     ; $62e1: $0a
	dec  h                                           ; $62e2: $25
	ld   [bc], a                                     ; $62e3: $02
	and  b                                           ; $62e4: $a0
	dec  b                                           ; $62e5: $05
	dec  h                                           ; $62e6: $25
	ld   [bc], a                                     ; $62e7: $02
	and  b                                           ; $62e8: $a0
	ld   a, [bc]                                     ; $62e9: $0a
	inc  hl                                          ; $62ea: $23
	ld   [bc], a                                     ; $62eb: $02
	and  b                                           ; $62ec: $a0
	dec  b                                           ; $62ed: $05
	inc  hl                                          ; $62ee: $23
	ld   [bc], a                                     ; $62ef: $02
	and  b                                           ; $62f0: $a0
	ld   [$0222], sp                                 ; $62f1: $08 $22 $02
	and  b                                           ; $62f4: $a0
	dec  b                                           ; $62f5: $05
	ld   [hl+], a                                    ; $62f6: $22
	ld   [bc], a                                     ; $62f7: $02
	and  b                                           ; $62f8: $a0
	ld   a, [bc]                                     ; $62f9: $0a
	inc  hl                                          ; $62fa: $23
	ld   [bc], a                                     ; $62fb: $02
	and  b                                           ; $62fc: $a0
	dec  b                                           ; $62fd: $05
	inc  hl                                          ; $62fe: $23
	ld   [bc], a                                     ; $62ff: $02
	and  b                                           ; $6300: $a0
	ld   a, [bc]                                     ; $6301: $0a
	dec  h                                           ; $6302: $25
	ld   [bc], a                                     ; $6303: $02
	and  b                                           ; $6304: $a0
	dec  b                                           ; $6305: $05
	dec  h                                           ; $6306: $25
	ld   [bc], a                                     ; $6307: $02
	and  b                                           ; $6308: $a0
	ld   a, [bc]                                     ; $6309: $0a
	add  hl, de                                      ; $630a: $19
	ld   [bc], a                                     ; $630b: $02
	and  b                                           ; $630c: $a0
	dec  b                                           ; $630d: $05
	add  hl, de                                      ; $630e: $19
	ld   [bc], a                                     ; $630f: $02
	and  b                                           ; $6310: $a0
	ld   a, [bc]                                     ; $6311: $0a
	jr   nz, jr_0fe_6316                             ; $6312: $20 $02

	and  b                                           ; $6314: $a0
	dec  b                                           ; $6315: $05

jr_0fe_6316:
	jr   nz, jr_0fe_631a                             ; $6316: $20 $02

	and  b                                           ; $6318: $a0
	ld   a, [bc]                                     ; $6319: $0a

jr_0fe_631a:
	dec  h                                           ; $631a: $25
	ld   [bc], a                                     ; $631b: $02
	and  b                                           ; $631c: $a0
	dec  b                                           ; $631d: $05
	dec  h                                           ; $631e: $25
	ld   [bc], a                                     ; $631f: $02
	and  b                                           ; $6320: $a0
	ld   a, [bc]                                     ; $6321: $0a
	daa                                              ; $6322: $27
	ld   [bc], a                                     ; $6323: $02
	and  b                                           ; $6324: $a0
	dec  b                                           ; $6325: $05
	daa                                              ; $6326: $27
	ld   [bc], a                                     ; $6327: $02
	and  b                                           ; $6328: $a0
	ld   a, [bc]                                     ; $6329: $0a
	dec  de                                          ; $632a: $1b
	ld   [bc], a                                     ; $632b: $02
	and  b                                           ; $632c: $a0
	dec  b                                           ; $632d: $05
	dec  de                                          ; $632e: $1b
	ld   [bc], a                                     ; $632f: $02
	and  b                                           ; $6330: $a0
	ld   a, [bc]                                     ; $6331: $0a
	ld   [hl+], a                                    ; $6332: $22
	ld   [bc], a                                     ; $6333: $02
	and  b                                           ; $6334: $a0
	dec  b                                           ; $6335: $05
	ld   [hl+], a                                    ; $6336: $22
	ld   [bc], a                                     ; $6337: $02
	and  b                                           ; $6338: $a0
	ld   a, [bc]                                     ; $6339: $0a
	daa                                              ; $633a: $27
	ld   [bc], a                                     ; $633b: $02
	and  b                                           ; $633c: $a0
	dec  b                                           ; $633d: $05
	daa                                              ; $633e: $27
	ld   [bc], a                                     ; $633f: $02
	and  b                                           ; $6340: $a0
	ld   a, [bc]                                     ; $6341: $0a
	add  hl, hl                                      ; $6342: $29
	ld   [bc], a                                     ; $6343: $02
	and  b                                           ; $6344: $a0
	dec  b                                           ; $6345: $05
	add  hl, hl                                      ; $6346: $29
	ld   [bc], a                                     ; $6347: $02
	and  b                                           ; $6348: $a0
	ld   a, [bc]                                     ; $6349: $0a
	jr   nz, jr_0fe_634e                             ; $634a: $20 $02

	and  b                                           ; $634c: $a0
	dec  b                                           ; $634d: $05

jr_0fe_634e:
	jr   nz, jr_0fe_6352                             ; $634e: $20 $02

	and  b                                           ; $6350: $a0
	ld   a, [bc]                                     ; $6351: $0a

jr_0fe_6352:
	dec  h                                           ; $6352: $25
	ld   [bc], a                                     ; $6353: $02
	and  b                                           ; $6354: $a0
	dec  b                                           ; $6355: $05
	dec  h                                           ; $6356: $25
	ld   [bc], a                                     ; $6357: $02
	and  b                                           ; $6358: $a0
	ld   a, [bc]                                     ; $6359: $0a
	add  hl, hl                                      ; $635a: $29
	ld   [bc], a                                     ; $635b: $02
	and  b                                           ; $635c: $a0
	dec  b                                           ; $635d: $05
	add  hl, hl                                      ; $635e: $29
	ld   [bc], a                                     ; $635f: $02
	and  b                                           ; $6360: $a0
	ld   a, [bc]                                     ; $6361: $0a
	dec  hl                                          ; $6362: $2b
	ld   [bc], a                                     ; $6363: $02
	and  b                                           ; $6364: $a0
	dec  b                                           ; $6365: $05
	dec  hl                                          ; $6366: $2b
	ld   [bc], a                                     ; $6367: $02
	and  b                                           ; $6368: $a0
	ld   a, [bc]                                     ; $6369: $0a
	ld   [hl+], a                                    ; $636a: $22
	ld   [bc], a                                     ; $636b: $02
	and  b                                           ; $636c: $a0
	dec  b                                           ; $636d: $05
	ld   [hl+], a                                    ; $636e: $22
	ld   [bc], a                                     ; $636f: $02
	and  b                                           ; $6370: $a0
	ld   a, [bc]                                     ; $6371: $0a
	daa                                              ; $6372: $27
	ld   [bc], a                                     ; $6373: $02
	and  b                                           ; $6374: $a0
	dec  b                                           ; $6375: $05
	daa                                              ; $6376: $27
	ld   [bc], a                                     ; $6377: $02
	and  b                                           ; $6378: $a0
	ld   a, [bc]                                     ; $6379: $0a
	dec  hl                                          ; $637a: $2b
	ld   [bc], a                                     ; $637b: $02
	and  b                                           ; $637c: $a0
	dec  b                                           ; $637d: $05
	dec  hl                                          ; $637e: $2b
	ld   [bc], a                                     ; $637f: $02
	and  b                                           ; $6380: $a0
	ld   a, [bc]                                     ; $6381: $0a
	rla                                              ; $6382: $17
	inc  b                                           ; $6383: $04
	and  b                                           ; $6384: $a0
	dec  b                                           ; $6385: $05
	rla                                              ; $6386: $17
	ld   [bc], a                                     ; $6387: $02
	rra                                              ; $6388: $1f
	ld   [bc], a                                     ; $6389: $02
	and  b                                           ; $638a: $a0
	ld   a, [bc]                                     ; $638b: $0a
	rla                                              ; $638c: $17
	ld   [bc], a                                     ; $638d: $02
	and  b                                           ; $638e: $a0
	dec  b                                           ; $638f: $05
	rla                                              ; $6390: $17
	ld   [bc], a                                     ; $6391: $02
	and  b                                           ; $6392: $a0
	ld   a, [bc]                                     ; $6393: $0a
	rla                                              ; $6394: $17
	inc  b                                           ; $6395: $04
	jr   nz, jr_0fe_639a                             ; $6396: $20 $02

	and  b                                           ; $6398: $a0
	dec  b                                           ; $6399: $05

jr_0fe_639a:
	jr   nz, jr_0fe_63a0                             ; $639a: $20 $04

	rra                                              ; $639c: $1f
	ld   [bc], a                                     ; $639d: $02
	and  b                                           ; $639e: $a0
	ld   a, [bc]                                     ; $639f: $0a

jr_0fe_63a0:
	ld   [hl+], a                                    ; $63a0: $22
	ld   [bc], a                                     ; $63a1: $02
	and  b                                           ; $63a2: $a0
	dec  b                                           ; $63a3: $05
	ld   [hl+], a                                    ; $63a4: $22
	inc  b                                           ; $63a5: $04
	rra                                              ; $63a6: $1f
	ld   [bc], a                                     ; $63a7: $02
	and  b                                           ; $63a8: $a0
	ld   a, [bc]                                     ; $63a9: $0a
	rla                                              ; $63aa: $17
	ld   c, $a0                                      ; $63ab: $0e $a0
	dec  b                                           ; $63ad: $05
	rla                                              ; $63ae: $17
	ld   [bc], a                                     ; $63af: $02
	and  b                                           ; $63b0: $a0
	ld   a, [bc]                                     ; $63b1: $0a
	rla                                              ; $63b2: $17
	inc  b                                           ; $63b3: $04
	and  b                                           ; $63b4: $a0
	dec  b                                           ; $63b5: $05
	rla                                              ; $63b6: $17
	ld   [bc], a                                     ; $63b7: $02
	rra                                              ; $63b8: $1f
	ld   [bc], a                                     ; $63b9: $02
	and  b                                           ; $63ba: $a0
	ld   a, [bc]                                     ; $63bb: $0a
	rla                                              ; $63bc: $17
	inc  b                                           ; $63bd: $04
	and  b                                           ; $63be: $a0
	dec  b                                           ; $63bf: $05
	rla                                              ; $63c0: $17
	ld   [bc], a                                     ; $63c1: $02
	rra                                              ; $63c2: $1f
	ld   [bc], a                                     ; $63c3: $02
	and  b                                           ; $63c4: $a0
	ld   a, [bc]                                     ; $63c5: $0a
	rla                                              ; $63c6: $17
	inc  b                                           ; $63c7: $04
	and  b                                           ; $63c8: $a0
	dec  b                                           ; $63c9: $05
	rla                                              ; $63ca: $17
	ld   [bc], a                                     ; $63cb: $02
	rra                                              ; $63cc: $1f
	ld   [bc], a                                     ; $63cd: $02
	and  b                                           ; $63ce: $a0
	ld   a, [bc]                                     ; $63cf: $0a
	rla                                              ; $63d0: $17
	ld   [bc], a                                     ; $63d1: $02
	and  b                                           ; $63d2: $a0
	dec  b                                           ; $63d3: $05
	rla                                              ; $63d4: $17
	ld   [bc], a                                     ; $63d5: $02
	and  b                                           ; $63d6: $a0
	ld   a, [bc]                                     ; $63d7: $0a
	rla                                              ; $63d8: $17
	inc  b                                           ; $63d9: $04
	jr   nz, jr_0fe_63de                             ; $63da: $20 $02

	and  b                                           ; $63dc: $a0
	dec  b                                           ; $63dd: $05

jr_0fe_63de:
	jr   nz, jr_0fe_63e4                             ; $63de: $20 $04

	rra                                              ; $63e0: $1f
	ld   [bc], a                                     ; $63e1: $02
	and  b                                           ; $63e2: $a0
	ld   a, [bc]                                     ; $63e3: $0a

jr_0fe_63e4:
	ld   [hl+], a                                    ; $63e4: $22
	ld   [bc], a                                     ; $63e5: $02
	and  b                                           ; $63e6: $a0
	dec  b                                           ; $63e7: $05
	ld   [hl+], a                                    ; $63e8: $22
	inc  b                                           ; $63e9: $04
	rra                                              ; $63ea: $1f
	ld   [bc], a                                     ; $63eb: $02
	and  b                                           ; $63ec: $a0
	ld   a, [bc]                                     ; $63ed: $0a
	daa                                              ; $63ee: $27
	ld   c, $a0                                      ; $63ef: $0e $a0
	dec  b                                           ; $63f1: $05
	daa                                              ; $63f2: $27
	ld   [bc], a                                     ; $63f3: $02
	and  b                                           ; $63f4: $a0
	ld   a, [bc]                                     ; $63f5: $0a
	rla                                              ; $63f6: $17
	inc  b                                           ; $63f7: $04
	and  b                                           ; $63f8: $a0
	dec  b                                           ; $63f9: $05
	rla                                              ; $63fa: $17
	ld   [bc], a                                     ; $63fb: $02
	rra                                              ; $63fc: $1f
	ld   [bc], a                                     ; $63fd: $02
	and  b                                           ; $63fe: $a0
	ld   a, [bc]                                     ; $63ff: $0a
	rla                                              ; $6400: $17
	inc  b                                           ; $6401: $04
	and  b                                           ; $6402: $a0
	dec  b                                           ; $6403: $05
	rla                                              ; $6404: $17
	ld   [bc], a                                     ; $6405: $02
	rra                                              ; $6406: $1f
	ld   [bc], a                                     ; $6407: $02
	and  b                                           ; $6408: $a0
	ld   a, [bc]                                     ; $6409: $0a
	jr   nz, jr_0fe_6410                             ; $640a: $20 $04

	jr   nz, jr_0fe_6410                             ; $640c: $20 $02

	and  b                                           ; $640e: $a0
	dec  b                                           ; $640f: $05

jr_0fe_6410:
	jr   nz, jr_0fe_6414                             ; $6410: $20 $02

	and  b                                           ; $6412: $a0
	ld   a, [bc]                                     ; $6413: $0a

jr_0fe_6414:
	jr   nz, jr_0fe_641e                             ; $6414: $20 $08

	and  b                                           ; $6416: $a0
	dec  b                                           ; $6417: $05
	jr   nz, @+$04                                   ; $6418: $20 $02

	rra                                              ; $641a: $1f
	ld   c, $a0                                      ; $641b: $0e $a0
	ld   a, [bc]                                     ; $641d: $0a

jr_0fe_641e:
	dec  de                                          ; $641e: $1b
	inc  b                                           ; $641f: $04
	dec  de                                          ; $6420: $1b
	ld   [bc], a                                     ; $6421: $02
	and  b                                           ; $6422: $a0
	dec  b                                           ; $6423: $05
	dec  de                                          ; $6424: $1b
	ld   [bc], a                                     ; $6425: $02
	and  b                                           ; $6426: $a0
	ld   a, [bc]                                     ; $6427: $0a
	dec  de                                          ; $6428: $1b
	ld   [$05a0], sp                                 ; $6429: $08 $a0 $05
	dec  de                                          ; $642c: $1b
	ld   [bc], a                                     ; $642d: $02
	rra                                              ; $642e: $1f
	ld   c, $1f                                      ; $642f: $0e $1f
	ld   [$0aa0], sp                                 ; $6431: $08 $a0 $0a
	rla                                              ; $6434: $17
	ld   [bc], a                                     ; $6435: $02
	and  b                                           ; $6436: $a0
	dec  b                                           ; $6437: $05
	rla                                              ; $6438: $17
	ld   [bc], a                                     ; $6439: $02
	and  b                                           ; $643a: $a0
	ld   a, [bc]                                     ; $643b: $0a
	rla                                              ; $643c: $17
	ld   [bc], a                                     ; $643d: $02
	and  b                                           ; $643e: $a0
	dec  b                                           ; $643f: $05
	rla                                              ; $6440: $17
	ld   [bc], a                                     ; $6441: $02
	and  b                                           ; $6442: $a0
	ld   a, [bc]                                     ; $6443: $0a
	jr   nz, jr_0fe_6448                             ; $6444: $20 $02

	and  b                                           ; $6446: $a0
	dec  b                                           ; $6447: $05

jr_0fe_6448:
	jr   nz, jr_0fe_644c                             ; $6448: $20 $02

	and  b                                           ; $644a: $a0
	ld   a, [bc]                                     ; $644b: $0a

jr_0fe_644c:
	rla                                              ; $644c: $17
	ld   [bc], a                                     ; $644d: $02
	and  b                                           ; $644e: $a0
	dec  b                                           ; $644f: $05
	rla                                              ; $6450: $17
	ld   [bc], a                                     ; $6451: $02
	and  b                                           ; $6452: $a0
	ld   a, [bc]                                     ; $6453: $0a
	jr   nz, jr_0fe_645a                             ; $6454: $20 $04

	inc  h                                           ; $6456: $24
	ld   [bc], a                                     ; $6457: $02
	and  b                                           ; $6458: $a0
	dec  b                                           ; $6459: $05

jr_0fe_645a:
	inc  h                                           ; $645a: $24
	ld   [bc], a                                     ; $645b: $02
	and  b                                           ; $645c: $a0
	ld   a, [bc]                                     ; $645d: $0a
	daa                                              ; $645e: $27
	ld   c, $a0                                      ; $645f: $0e $a0
	dec  b                                           ; $6461: $05
	daa                                              ; $6462: $27
	ld   [bc], a                                     ; $6463: $02
	and  b                                           ; $6464: $a0
	ld   a, [bc]                                     ; $6465: $0a
	jr   z, @+$10                                    ; $6466: $28 $0e

	and  b                                           ; $6468: $a0
	dec  b                                           ; $6469: $05
	jr   z, jr_0fe_646e                              ; $646a: $28 $02

	and  b                                           ; $646c: $a0
	ld   a, [bc]                                     ; $646d: $0a

jr_0fe_646e:
	add  hl, hl                                      ; $646e: $29
	inc  b                                           ; $646f: $04
	and  b                                           ; $6470: $a0
	dec  b                                           ; $6471: $05
	add  hl, hl                                      ; $6472: $29
	inc  b                                           ; $6473: $04
	rra                                              ; $6474: $1f
	ld   [$0aa0], sp                                 ; $6475: $08 $a0 $0a
	inc  h                                           ; $6478: $24
	inc  b                                           ; $6479: $04
	and  b                                           ; $647a: $a0
	dec  b                                           ; $647b: $05
	inc  h                                           ; $647c: $24
	inc  b                                           ; $647d: $04
	rra                                              ; $647e: $1f
	ld   [$0aa0], sp                                 ; $647f: $08 $a0 $0a
	inc  h                                           ; $6482: $24
	inc  b                                           ; $6483: $04
	and  b                                           ; $6484: $a0
	dec  b                                           ; $6485: $05
	inc  h                                           ; $6486: $24
	inc  b                                           ; $6487: $04
	rra                                              ; $6488: $1f
	ld   [$0aa0], sp                                 ; $6489: $08 $a0 $0a
	inc  h                                           ; $648c: $24
	inc  b                                           ; $648d: $04
	and  b                                           ; $648e: $a0
	dec  b                                           ; $648f: $05
	inc  h                                           ; $6490: $24
	inc  b                                           ; $6491: $04
	rra                                              ; $6492: $1f
	ld   [$0aa0], sp                                 ; $6493: $08 $a0 $0a
	dec  de                                          ; $6496: $1b
	inc  b                                           ; $6497: $04
	and  b                                           ; $6498: $a0
	dec  b                                           ; $6499: $05
	dec  de                                          ; $649a: $1b
	inc  b                                           ; $649b: $04
	rra                                              ; $649c: $1f
	ld   [$0aa0], sp                                 ; $649d: $08 $a0 $0a
	dec  de                                          ; $64a0: $1b
	inc  b                                           ; $64a1: $04
	and  b                                           ; $64a2: $a0
	dec  b                                           ; $64a3: $05
	dec  de                                          ; $64a4: $1b
	inc  b                                           ; $64a5: $04
	rra                                              ; $64a6: $1f
	ld   [$0aa0], sp                                 ; $64a7: $08 $a0 $0a
	dec  de                                          ; $64aa: $1b
	inc  b                                           ; $64ab: $04
	and  b                                           ; $64ac: $a0
	dec  b                                           ; $64ad: $05
	dec  de                                          ; $64ae: $1b
	inc  b                                           ; $64af: $04
	rra                                              ; $64b0: $1f
	ld   [$0aa0], sp                                 ; $64b1: $08 $a0 $0a
	dec  de                                          ; $64b4: $1b
	inc  b                                           ; $64b5: $04
	and  b                                           ; $64b6: $a0
	dec  b                                           ; $64b7: $05
	dec  de                                          ; $64b8: $1b
	inc  b                                           ; $64b9: $04
	rra                                              ; $64ba: $1f
	ld   [$0aa0], sp                                 ; $64bb: $08 $a0 $0a
	jr   nz, jr_0fe_64c4                             ; $64be: $20 $04

	and  b                                           ; $64c0: $a0
	dec  b                                           ; $64c1: $05
	jr   nz, jr_0fe_64c8                             ; $64c2: $20 $04

jr_0fe_64c4:
	rra                                              ; $64c4: $1f
	ld   [$0aa0], sp                                 ; $64c5: $08 $a0 $0a

jr_0fe_64c8:
	jr   nz, jr_0fe_64ce                             ; $64c8: $20 $04

	and  b                                           ; $64ca: $a0
	dec  b                                           ; $64cb: $05
	jr   nz, jr_0fe_64d2                             ; $64cc: $20 $04

jr_0fe_64ce:
	rra                                              ; $64ce: $1f
	ld   [$0aa0], sp                                 ; $64cf: $08 $a0 $0a

jr_0fe_64d2:
	dec  h                                           ; $64d2: $25
	inc  b                                           ; $64d3: $04
	and  b                                           ; $64d4: $a0
	dec  b                                           ; $64d5: $05
	dec  h                                           ; $64d6: $25
	inc  b                                           ; $64d7: $04
	rra                                              ; $64d8: $1f
	ld   [$0aa0], sp                                 ; $64d9: $08 $a0 $0a
	dec  h                                           ; $64dc: $25
	inc  b                                           ; $64dd: $04
	and  b                                           ; $64de: $a0
	dec  b                                           ; $64df: $05
	dec  h                                           ; $64e0: $25
	inc  b                                           ; $64e1: $04
	rra                                              ; $64e2: $1f
	ld   [$0aa0], sp                                 ; $64e3: $08 $a0 $0a
	inc  h                                           ; $64e6: $24
	inc  b                                           ; $64e7: $04
	and  b                                           ; $64e8: $a0
	dec  b                                           ; $64e9: $05
	inc  h                                           ; $64ea: $24
	inc  b                                           ; $64eb: $04
	rra                                              ; $64ec: $1f
	ld   [$0aa0], sp                                 ; $64ed: $08 $a0 $0a
	inc  h                                           ; $64f0: $24
	inc  b                                           ; $64f1: $04
	and  b                                           ; $64f2: $a0
	dec  b                                           ; $64f3: $05
	inc  h                                           ; $64f4: $24
	inc  b                                           ; $64f5: $04
	rra                                              ; $64f6: $1f
	ld   [$0aa0], sp                                 ; $64f7: $08 $a0 $0a
	add  hl, hl                                      ; $64fa: $29
	inc  b                                           ; $64fb: $04
	add  hl, de                                      ; $64fc: $19
	inc  b                                           ; $64fd: $04
	dec  h                                           ; $64fe: $25
	inc  b                                           ; $64ff: $04
	add  hl, hl                                      ; $6500: $29
	inc  b                                           ; $6501: $04
	dec  hl                                          ; $6502: $2b
	inc  b                                           ; $6503: $04
	dec  de                                          ; $6504: $1b
	inc  b                                           ; $6505: $04
	daa                                              ; $6506: $27
	inc  b                                           ; $6507: $04
	dec  hl                                          ; $6508: $2b
	inc  b                                           ; $6509: $04
	jr   nc, jr_0fe_6510                             ; $650a: $30 $04

	daa                                              ; $650c: $27
	inc  b                                           ; $650d: $04
	inc  h                                           ; $650e: $24
	inc  b                                           ; $650f: $04

jr_0fe_6510:
	jr   nz, jr_0fe_6516                             ; $6510: $20 $04

	jr   nc, jr_0fe_6518                             ; $6512: $30 $04

	daa                                              ; $6514: $27
	inc  b                                           ; $6515: $04

jr_0fe_6516:
	inc  h                                           ; $6516: $24
	inc  b                                           ; $6517: $04

jr_0fe_6518:
	jr   nz, jr_0fe_651e                             ; $6518: $20 $04

	jr   nc, jr_0fe_6520                             ; $651a: $30 $04

	daa                                              ; $651c: $27
	inc  b                                           ; $651d: $04

jr_0fe_651e:
	inc  h                                           ; $651e: $24
	inc  b                                           ; $651f: $04

jr_0fe_6520:
	jr   nz, jr_0fe_6526                             ; $6520: $20 $04

	jr   nc, jr_0fe_6528                             ; $6522: $30 $04

	daa                                              ; $6524: $27
	inc  b                                           ; $6525: $04

jr_0fe_6526:
	inc  h                                           ; $6526: $24
	inc  b                                           ; $6527: $04

jr_0fe_6528:
	jr   nz, jr_0fe_652e                             ; $6528: $20 $04

	dec  hl                                          ; $652a: $2b
	inc  b                                           ; $652b: $04
	daa                                              ; $652c: $27
	inc  b                                           ; $652d: $04

jr_0fe_652e:
	ld   [hl+], a                                    ; $652e: $22
	inc  b                                           ; $652f: $04
	dec  de                                          ; $6530: $1b
	inc  b                                           ; $6531: $04
	dec  hl                                          ; $6532: $2b
	inc  b                                           ; $6533: $04
	daa                                              ; $6534: $27
	inc  b                                           ; $6535: $04
	ld   [hl+], a                                    ; $6536: $22
	inc  b                                           ; $6537: $04
	dec  de                                          ; $6538: $1b
	inc  b                                           ; $6539: $04
	dec  hl                                          ; $653a: $2b
	inc  b                                           ; $653b: $04
	daa                                              ; $653c: $27
	inc  b                                           ; $653d: $04
	ld   [hl+], a                                    ; $653e: $22
	inc  b                                           ; $653f: $04
	dec  de                                          ; $6540: $1b
	inc  b                                           ; $6541: $04
	dec  hl                                          ; $6542: $2b
	inc  b                                           ; $6543: $04
	daa                                              ; $6544: $27
	inc  b                                           ; $6545: $04
	ld   [hl+], a                                    ; $6546: $22
	inc  b                                           ; $6547: $04
	dec  de                                          ; $6548: $1b
	inc  b                                           ; $6549: $04
	jr   nc, jr_0fe_6550                             ; $654a: $30 $04

	add  hl, hl                                      ; $654c: $29
	inc  b                                           ; $654d: $04
	dec  h                                           ; $654e: $25
	inc  b                                           ; $654f: $04

jr_0fe_6550:
	ld   [hl+], a                                    ; $6550: $22
	inc  b                                           ; $6551: $04
	jr   nc, jr_0fe_6558                             ; $6552: $30 $04

	add  hl, hl                                      ; $6554: $29
	inc  b                                           ; $6555: $04
	dec  h                                           ; $6556: $25
	inc  b                                           ; $6557: $04

jr_0fe_6558:
	ld   [hl+], a                                    ; $6558: $22
	inc  b                                           ; $6559: $04
	dec  hl                                          ; $655a: $2b
	inc  b                                           ; $655b: $04
	daa                                              ; $655c: $27
	inc  b                                           ; $655d: $04
	dec  h                                           ; $655e: $25
	inc  b                                           ; $655f: $04
	ld   [hl+], a                                    ; $6560: $22
	inc  b                                           ; $6561: $04
	dec  hl                                          ; $6562: $2b
	inc  b                                           ; $6563: $04
	daa                                              ; $6564: $27
	inc  b                                           ; $6565: $04
	dec  h                                           ; $6566: $25
	inc  b                                           ; $6567: $04
	ld   [hl+], a                                    ; $6568: $22
	inc  b                                           ; $6569: $04
	jr   nc, jr_0fe_6570                             ; $656a: $30 $04

	daa                                              ; $656c: $27
	inc  b                                           ; $656d: $04
	inc  h                                           ; $656e: $24
	inc  b                                           ; $656f: $04

jr_0fe_6570:
	jr   nz, jr_0fe_6576                             ; $6570: $20 $04

	jr   nc, jr_0fe_6578                             ; $6572: $30 $04

	daa                                              ; $6574: $27
	inc  b                                           ; $6575: $04

jr_0fe_6576:
	inc  h                                           ; $6576: $24
	inc  b                                           ; $6577: $04

jr_0fe_6578:
	jr   nz, jr_0fe_657e                             ; $6578: $20 $04

	jr   nc, jr_0fe_6580                             ; $657a: $30 $04

	daa                                              ; $657c: $27
	inc  b                                           ; $657d: $04

jr_0fe_657e:
	inc  h                                           ; $657e: $24
	inc  b                                           ; $657f: $04

jr_0fe_6580:
	jr   nz, jr_0fe_6586                             ; $6580: $20 $04

	dec  hl                                          ; $6582: $2b
	inc  b                                           ; $6583: $04
	jr   z, jr_0fe_658a                              ; $6584: $28 $04

jr_0fe_6586:
	inc  h                                           ; $6586: $24
	inc  b                                           ; $6587: $04
	ld   [hl+], a                                    ; $6588: $22
	inc  b                                           ; $6589: $04

jr_0fe_658a:
	add  hl, hl                                      ; $658a: $29
	inc  b                                           ; $658b: $04
	inc  h                                           ; $658c: $24
	inc  b                                           ; $658d: $04
	jr   nz, jr_0fe_6594                             ; $658e: $20 $04

	add  hl, de                                      ; $6590: $19
	inc  b                                           ; $6591: $04
	add  hl, hl                                      ; $6592: $29
	inc  b                                           ; $6593: $04

jr_0fe_6594:
	inc  h                                           ; $6594: $24
	inc  b                                           ; $6595: $04
	jr   nz, jr_0fe_659c                             ; $6596: $20 $04

	add  hl, de                                      ; $6598: $19
	inc  b                                           ; $6599: $04
	add  hl, hl                                      ; $659a: $29
	inc  b                                           ; $659b: $04

jr_0fe_659c:
	inc  h                                           ; $659c: $24
	inc  b                                           ; $659d: $04
	jr   nz, jr_0fe_65a4                             ; $659e: $20 $04

	add  hl, de                                      ; $65a0: $19
	inc  b                                           ; $65a1: $04
	add  hl, hl                                      ; $65a2: $29
	inc  b                                           ; $65a3: $04

jr_0fe_65a4:
	inc  h                                           ; $65a4: $24
	inc  b                                           ; $65a5: $04
	jr   nz, jr_0fe_65ac                             ; $65a6: $20 $04

	add  hl, de                                      ; $65a8: $19
	inc  b                                           ; $65a9: $04
	inc  h                                           ; $65aa: $24
	inc  b                                           ; $65ab: $04

jr_0fe_65ac:
	ld   [hl+], a                                    ; $65ac: $22
	inc  b                                           ; $65ad: $04
	dec  de                                          ; $65ae: $1b
	inc  b                                           ; $65af: $04
	rla                                              ; $65b0: $17
	inc  b                                           ; $65b1: $04
	inc  h                                           ; $65b2: $24
	inc  b                                           ; $65b3: $04
	ld   [hl+], a                                    ; $65b4: $22
	inc  b                                           ; $65b5: $04
	dec  de                                          ; $65b6: $1b
	inc  b                                           ; $65b7: $04
	rla                                              ; $65b8: $17
	inc  b                                           ; $65b9: $04
	inc  h                                           ; $65ba: $24
	inc  b                                           ; $65bb: $04
	ld   [hl+], a                                    ; $65bc: $22
	inc  b                                           ; $65bd: $04
	dec  de                                          ; $65be: $1b
	inc  b                                           ; $65bf: $04
	rla                                              ; $65c0: $17
	inc  b                                           ; $65c1: $04
	dec  de                                          ; $65c2: $1b
	inc  b                                           ; $65c3: $04
	rla                                              ; $65c4: $17
	inc  b                                           ; $65c5: $04
	dec  de                                          ; $65c6: $1b
	inc  b                                           ; $65c7: $04
	ld   [hl+], a                                    ; $65c8: $22
	inc  b                                           ; $65c9: $04
	or   b                                           ; $65ca: $b0
	di                                               ; $65cb: $f3
	rst  $38                                         ; $65cc: $ff
	rst  $38                                         ; $65cd: $ff
	rlca                                             ; $65ce: $07
	nop                                              ; $65cf: $00
	add  hl, bc                                      ; $65d0: $09
	nop                                              ; $65d1: $00
	db   $fd                                         ; $65d2: $fd
	di                                               ; $65d3: $f3
	and  d                                           ; $65d4: $a2
	nop                                              ; $65d5: $00
	and  e                                           ; $65d6: $a3
	jr   z, @-$5e                                    ; $65d7: $28 $a0

	dec  c                                           ; $65d9: $0d
	dec  h                                           ; $65da: $25
	inc  b                                           ; $65db: $04
	jr   nz, jr_0fe_65e2                             ; $65dc: $20 $04

	dec  h                                           ; $65de: $25
	inc  b                                           ; $65df: $04
	add  hl, hl                                      ; $65e0: $29
	inc  b                                           ; $65e1: $04

jr_0fe_65e2:
	jr   nc, jr_0fe_65e8                             ; $65e2: $30 $04

	dec  h                                           ; $65e4: $25
	inc  b                                           ; $65e5: $04
	add  hl, hl                                      ; $65e6: $29
	inc  b                                           ; $65e7: $04

jr_0fe_65e8:
	jr   nc, jr_0fe_65ee                             ; $65e8: $30 $04

	dec  [hl]                                        ; $65ea: $35
	inc  b                                           ; $65eb: $04
	add  hl, hl                                      ; $65ec: $29
	inc  b                                           ; $65ed: $04

jr_0fe_65ee:
	jr   nc, jr_0fe_65f4                             ; $65ee: $30 $04

	dec  [hl]                                        ; $65f0: $35
	inc  b                                           ; $65f1: $04
	add  hl, sp                                      ; $65f2: $39
	inc  b                                           ; $65f3: $04

jr_0fe_65f4:
	jr   nc, jr_0fe_65fa                             ; $65f4: $30 $04

	dec  [hl]                                        ; $65f6: $35
	inc  b                                           ; $65f7: $04
	add  hl, sp                                      ; $65f8: $39
	inc  b                                           ; $65f9: $04

jr_0fe_65fa:
	ld   b, b                                        ; $65fa: $40
	inc  b                                           ; $65fb: $04
	and  b                                           ; $65fc: $a0
	dec  b                                           ; $65fd: $05
	ld   b, b                                        ; $65fe: $40
	ld   [$041f], sp                                 ; $65ff: $08 $1f $04
	and  b                                           ; $6602: $a0
	dec  c                                           ; $6603: $0d
	daa                                              ; $6604: $27
	ld   [$0337], sp                                 ; $6605: $08 $37 $03
	scf                                              ; $6608: $37
	inc  bc                                          ; $6609: $03
	scf                                              ; $660a: $37
	ld   [bc], a                                     ; $660b: $02
	and  b                                           ; $660c: $a0
	dec  c                                           ; $660d: $0d
	scf                                              ; $660e: $37
	ld   [bc], a                                     ; $660f: $02
	and  b                                           ; $6610: $a0
	dec  b                                           ; $6611: $05
	scf                                              ; $6612: $37
	ld   [bc], a                                     ; $6613: $02
	rra                                              ; $6614: $1f
	inc  b                                           ; $6615: $04
	and  b                                           ; $6616: $a0
	dec  c                                           ; $6617: $0d
	scf                                              ; $6618: $37
	ld   [bc], a                                     ; $6619: $02
	and  b                                           ; $661a: $a0
	dec  b                                           ; $661b: $05
	scf                                              ; $661c: $37
	ld   [bc], a                                     ; $661d: $02
	rra                                              ; $661e: $1f
	inc  b                                           ; $661f: $04
	and  b                                           ; $6620: $a0
	dec  c                                           ; $6621: $0d
	scf                                              ; $6622: $37
	ld   [bc], a                                     ; $6623: $02
	and  b                                           ; $6624: $a0
	dec  b                                           ; $6625: $05
	scf                                              ; $6626: $37
	ld   [bc], a                                     ; $6627: $02
	rra                                              ; $6628: $1f
	inc  b                                           ; $6629: $04
	and  b                                           ; $662a: $a0
	dec  c                                           ; $662b: $0d
	scf                                              ; $662c: $37
	ld   [bc], a                                     ; $662d: $02
	and  b                                           ; $662e: $a0
	dec  b                                           ; $662f: $05
	scf                                              ; $6630: $37
	ld   [bc], a                                     ; $6631: $02
	rra                                              ; $6632: $1f
	inc  b                                           ; $6633: $04
	and  b                                           ; $6634: $a0
	dec  c                                           ; $6635: $0d
	scf                                              ; $6636: $37
	inc  b                                           ; $6637: $04
	and  b                                           ; $6638: $a0
	dec  b                                           ; $6639: $05
	scf                                              ; $663a: $37
	inc  b                                           ; $663b: $04
	rra                                              ; $663c: $1f
	ld   [$0da0], sp                                 ; $663d: $08 $a0 $0d
	daa                                              ; $6640: $27
	ld   [$0337], sp                                 ; $6641: $08 $37 $03
	scf                                              ; $6644: $37
	inc  bc                                          ; $6645: $03
	scf                                              ; $6646: $37
	ld   [bc], a                                     ; $6647: $02
	scf                                              ; $6648: $37
	ld   [bc], a                                     ; $6649: $02
	and  b                                           ; $664a: $a0
	dec  b                                           ; $664b: $05
	scf                                              ; $664c: $37
	ld   [bc], a                                     ; $664d: $02
	rra                                              ; $664e: $1f
	inc  b                                           ; $664f: $04
	and  b                                           ; $6650: $a0
	dec  c                                           ; $6651: $0d
	scf                                              ; $6652: $37
	ld   [bc], a                                     ; $6653: $02
	and  b                                           ; $6654: $a0
	dec  b                                           ; $6655: $05
	scf                                              ; $6656: $37
	ld   [bc], a                                     ; $6657: $02
	rra                                              ; $6658: $1f
	inc  b                                           ; $6659: $04
	and  b                                           ; $665a: $a0
	dec  c                                           ; $665b: $0d
	scf                                              ; $665c: $37
	ld   [bc], a                                     ; $665d: $02
	and  b                                           ; $665e: $a0
	dec  b                                           ; $665f: $05
	scf                                              ; $6660: $37
	ld   [bc], a                                     ; $6661: $02
	rra                                              ; $6662: $1f
	inc  b                                           ; $6663: $04
	and  b                                           ; $6664: $a0
	dec  c                                           ; $6665: $0d
	scf                                              ; $6666: $37
	inc  b                                           ; $6667: $04
	and  b                                           ; $6668: $a0
	dec  b                                           ; $6669: $05
	scf                                              ; $666a: $37
	inc  b                                           ; $666b: $04
	and  b                                           ; $666c: $a0
	dec  c                                           ; $666d: $0d
	jr   nc, jr_0fe_6684                             ; $666e: $30 $14

	and  b                                           ; $6670: $a0
	dec  b                                           ; $6671: $05
	jr   nc, jr_0fe_6678                             ; $6672: $30 $04

	and  b                                           ; $6674: $a0
	dec  c                                           ; $6675: $0d
	jr   nc, jr_0fe_667b                             ; $6676: $30 $03

jr_0fe_6678:
	ld   [hl-], a                                    ; $6678: $32
	inc  bc                                          ; $6679: $03
	inc  [hl]                                        ; $667a: $34

jr_0fe_667b:
	ld   [bc], a                                     ; $667b: $02
	dec  [hl]                                        ; $667c: $35
	inc  b                                           ; $667d: $04
	and  b                                           ; $667e: $a0
	dec  b                                           ; $667f: $05
	dec  [hl]                                        ; $6680: $35
	ld   [bc], a                                     ; $6681: $02
	rra                                              ; $6682: $1f

jr_0fe_6683:
	ld   [bc], a                                     ; $6683: $02

jr_0fe_6684:
	and  b                                           ; $6684: $a0
	dec  c                                           ; $6685: $0d
	inc  sp                                          ; $6686: $33
	ld   [bc], a                                     ; $6687: $02
	and  b                                           ; $6688: $a0
	dec  b                                           ; $6689: $05
	inc  sp                                          ; $668a: $33
	ld   [bc], a                                     ; $668b: $02
	rra                                              ; $668c: $1f
	inc  b                                           ; $668d: $04
	and  b                                           ; $668e: $a0
	dec  c                                           ; $668f: $0d
	ld   [hl-], a                                    ; $6690: $32
	ld   [bc], a                                     ; $6691: $02
	and  b                                           ; $6692: $a0
	dec  b                                           ; $6693: $05
	ld   [hl-], a                                    ; $6694: $32
	ld   [bc], a                                     ; $6695: $02
	rra                                              ; $6696: $1f
	inc  b                                           ; $6697: $04
	and  b                                           ; $6698: $a0
	dec  c                                           ; $6699: $0d
	jr   nc, jr_0fe_66a0                             ; $669a: $30 $04

	and  b                                           ; $669c: $a0
	dec  b                                           ; $669d: $05
	jr   nc, jr_0fe_66a2                             ; $669e: $30 $02

jr_0fe_66a0:
	rra                                              ; $66a0: $1f
	ld   [bc], a                                     ; $66a1: $02

jr_0fe_66a2:
	and  b                                           ; $66a2: $a0
	dec  c                                           ; $66a3: $0d
	jr   nc, jr_0fe_66b4                             ; $66a4: $30 $0e

	and  b                                           ; $66a6: $a0
	dec  b                                           ; $66a7: $05
	jr   nc, jr_0fe_66ac                             ; $66a8: $30 $02

	and  b                                           ; $66aa: $a0
	dec  c                                           ; $66ab: $0d

jr_0fe_66ac:
	dec  hl                                          ; $66ac: $2b
	ld   c, $a0                                      ; $66ad: $0e $a0
	dec  b                                           ; $66af: $05
	dec  hl                                          ; $66b0: $2b
	ld   [bc], a                                     ; $66b1: $02
	and  b                                           ; $66b2: $a0
	dec  c                                           ; $66b3: $0d

jr_0fe_66b4:
	jr   nc, jr_0fe_66c4                             ; $66b4: $30 $0e

	and  b                                           ; $66b6: $a0
	dec  b                                           ; $66b7: $05
	jr   nc, jr_0fe_66bc                             ; $66b8: $30 $02

	and  b                                           ; $66ba: $a0
	dec  c                                           ; $66bb: $0d

jr_0fe_66bc:
	ld   [hl-], a                                    ; $66bc: $32
	inc  c                                           ; $66bd: $0c
	and  b                                           ; $66be: $a0
	dec  b                                           ; $66bf: $05
	ld   [hl-], a                                    ; $66c0: $32
	inc  b                                           ; $66c1: $04
	and  b                                           ; $66c2: $a0
	dec  c                                           ; $66c3: $0d

jr_0fe_66c4:
	inc  [hl]                                        ; $66c4: $34
	ld   e, $a0                                      ; $66c5: $1e $a0
	dec  b                                           ; $66c7: $05
	inc  [hl]                                        ; $66c8: $34
	ld   [bc], a                                     ; $66c9: $02
	and  b                                           ; $66ca: $a0
	dec  c                                           ; $66cb: $0d
	inc  [hl]                                        ; $66cc: $34
	ld   [bc], a                                     ; $66cd: $02
	and  b                                           ; $66ce: $a0
	dec  b                                           ; $66cf: $05
	inc  [hl]                                        ; $66d0: $34
	ld   b, $a0                                      ; $66d1: $06 $a0
	dec  c                                           ; $66d3: $0d
	inc  [hl]                                        ; $66d4: $34
	ld   [$0c32], sp                                 ; $66d5: $08 $32 $0c
	jr   nc, jr_0fe_66dc                             ; $66d8: $30 $02

	and  b                                           ; $66da: $a0
	dec  b                                           ; $66db: $05

jr_0fe_66dc:
	jr   nc, jr_0fe_66e0                             ; $66dc: $30 $02

	and  b                                           ; $66de: $a0
	dec  c                                           ; $66df: $0d

jr_0fe_66e0:
	ld   [hl-], a                                    ; $66e0: $32
	jr   jr_0fe_6683                                 ; $66e1: $18 $a0

jr_0fe_66e3:
	dec  b                                           ; $66e3: $05
	ld   [hl-], a                                    ; $66e4: $32
	ld   [$0da0], sp                                 ; $66e5: $08 $a0 $0d
	ld   [hl-], a                                    ; $66e8: $32
	ld   c, $a0                                      ; $66e9: $0e $a0
	dec  b                                           ; $66eb: $05
	ld   [hl-], a                                    ; $66ec: $32
	ld   [bc], a                                     ; $66ed: $02
	and  b                                           ; $66ee: $a0
	dec  c                                           ; $66ef: $0d
	inc  [hl]                                        ; $66f0: $34
	ld   c, $a0                                      ; $66f1: $0e $a0
	dec  b                                           ; $66f3: $05
	inc  [hl]                                        ; $66f4: $34
	ld   [bc], a                                     ; $66f5: $02
	and  b                                           ; $66f6: $a0
	dec  c                                           ; $66f7: $0d
	dec  [hl]                                        ; $66f8: $35
	ld   d, $a0                                      ; $66f9: $16 $a0
	dec  b                                           ; $66fb: $05
	dec  [hl]                                        ; $66fc: $35
	ld   [bc], a                                     ; $66fd: $02
	and  b                                           ; $66fe: $a0
	dec  c                                           ; $66ff: $0d
	scf                                              ; $6700: $37
	ld   b, $a0                                      ; $6701: $06 $a0
	dec  b                                           ; $6703: $05
	scf                                              ; $6704: $37
	ld   [bc], a                                     ; $6705: $02
	and  b                                           ; $6706: $a0
	dec  c                                           ; $6707: $0d
	dec  [hl]                                        ; $6708: $35
	ld   [$0834], sp                                 ; $6709: $08 $34 $08
	ld   [hl-], a                                    ; $670c: $32
	ld   [$0830], sp                                 ; $670d: $08 $30 $08
	inc  [hl]                                        ; $6710: $34
	inc  e                                           ; $6711: $1c
	and  b                                           ; $6712: $a0
	dec  b                                           ; $6713: $05
	inc  [hl]                                        ; $6714: $34
	inc  b                                           ; $6715: $04
	and  b                                           ; $6716: $a0
	dec  c                                           ; $6717: $0d
	inc  [hl]                                        ; $6718: $34
	db   $10                                         ; $6719: $10
	ld   [hl-], a                                    ; $671a: $32
	ld   c, $1f                                      ; $671b: $0e $1f
	ld   [bc], a                                     ; $671d: $02
	jr   nc, jr_0fe_673c                             ; $671e: $30 $1c

	and  b                                           ; $6720: $a0
	dec  b                                           ; $6721: $05
	jr   nc, jr_0fe_6728                             ; $6722: $30 $04

	and  b                                           ; $6724: $a0
	dec  c                                           ; $6725: $0d
	jr   nc, jr_0fe_672a                             ; $6726: $30 $02

jr_0fe_6728:
	and  b                                           ; $6728: $a0
	dec  b                                           ; $6729: $05

jr_0fe_672a:
	jr   nc, jr_0fe_6732                             ; $672a: $30 $06

	and  b                                           ; $672c: $a0
	dec  c                                           ; $672d: $0d
	jr   nc, jr_0fe_6738                             ; $672e: $30 $08

	dec  hl                                          ; $6730: $2b
	ld   a, [bc]                                     ; $6731: $0a

jr_0fe_6732:
	and  b                                           ; $6732: $a0
	dec  b                                           ; $6733: $05
	dec  hl                                          ; $6734: $2b
	ld   [bc], a                                     ; $6735: $02
	and  b                                           ; $6736: $a0
	dec  c                                           ; $6737: $0d

jr_0fe_6738:
	inc  h                                           ; $6738: $24
	ld   [bc], a                                     ; $6739: $02
	and  b                                           ; $673a: $a0
	dec  b                                           ; $673b: $05

jr_0fe_673c:
	inc  h                                           ; $673c: $24
	ld   [bc], a                                     ; $673d: $02
	and  b                                           ; $673e: $a0
	dec  c                                           ; $673f: $0d
	daa                                              ; $6740: $27
	jr   z, jr_0fe_66e3                              ; $6741: $28 $a0

	dec  b                                           ; $6743: $05
	daa                                              ; $6744: $27
	ld   [$0da0], sp                                 ; $6745: $08 $a0 $0d
	inc  h                                           ; $6748: $24
	ld   [$0827], sp                                 ; $6749: $08 $27 $08
	add  hl, hl                                      ; $674c: $29
	ld   [de], a                                     ; $674d: $12
	and  b                                           ; $674e: $a0
	dec  b                                           ; $674f: $05
	add  hl, hl                                      ; $6750: $29
	ld   b, $a0                                      ; $6751: $06 $a0
	dec  c                                           ; $6753: $0d
	inc  [hl]                                        ; $6754: $34
	ld   [FadePalettesAndSetRangeToUpdate], sp                                 ; $6755: $08 $32 $08
	inc  [hl]                                        ; $6758: $34
	inc  b                                           ; $6759: $04
	ld   [hl-], a                                    ; $675a: $32
	inc  b                                           ; $675b: $04
	jr   nc, jr_0fe_6766                             ; $675c: $30 $08

	and  b                                           ; $675e: $a0
	add  hl, bc                                      ; $675f: $09
	add  hl, hl                                      ; $6760: $29
	ld   [$0da0], sp                                 ; $6761: $08 $a0 $0d
	jr   nc, jr_0fe_6780                             ; $6764: $30 $1a

jr_0fe_6766:
	and  b                                           ; $6766: $a0
	dec  b                                           ; $6767: $05
	jr   nc, jr_0fe_6770                             ; $6768: $30 $06

	and  b                                           ; $676a: $a0

jr_0fe_676b:
	dec  c                                           ; $676b: $0d
	jr   nc, @+$12                                   ; $676c: $30 $10

	ld   [hl-], a                                    ; $676e: $32
	db   $10                                         ; $676f: $10

jr_0fe_6770:
	inc  [hl]                                        ; $6770: $34
	inc  e                                           ; $6771: $1c
	and  b                                           ; $6772: $a0
	dec  b                                           ; $6773: $05
	inc  [hl]                                        ; $6774: $34
	inc  b                                           ; $6775: $04
	and  b                                           ; $6776: $a0
	dec  c                                           ; $6777: $0d
	inc  [hl]                                        ; $6778: $34
	ld   [bc], a                                     ; $6779: $02
	and  b                                           ; $677a: $a0
	dec  b                                           ; $677b: $05
	inc  [hl]                                        ; $677c: $34
	ld   b, $a0                                      ; $677d: $06 $a0
	dec  c                                           ; $677f: $0d

jr_0fe_6780:
	inc  [hl]                                        ; $6780: $34
	ld   [$0c32], sp                                 ; $6781: $08 $32 $0c
	jr   nc, jr_0fe_6788                             ; $6784: $30 $02

	and  b                                           ; $6786: $a0
	dec  b                                           ; $6787: $05

jr_0fe_6788:
	jr   nc, jr_0fe_678c                             ; $6788: $30 $02

	and  b                                           ; $678a: $a0
	dec  c                                           ; $678b: $0d

jr_0fe_678c:
	ld   [hl-], a                                    ; $678c: $32
	ld   a, [de]                                     ; $678d: $1a
	and  b                                           ; $678e: $a0
	dec  b                                           ; $678f: $05
	ld   [hl-], a                                    ; $6790: $32
	ld   b, $a0                                      ; $6791: $06 $a0
	dec  c                                           ; $6793: $0d
	ld   [hl-], a                                    ; $6794: $32
	db   $10                                         ; $6795: $10
	inc  [hl]                                        ; $6796: $34
	db   $10                                         ; $6797: $10
	dec  [hl]                                        ; $6798: $35
	inc  d                                           ; $6799: $14
	and  b                                           ; $679a: $a0
	dec  b                                           ; $679b: $05
	dec  [hl]                                        ; $679c: $35
	inc  b                                           ; $679d: $04
	and  b                                           ; $679e: $a0
	dec  c                                           ; $679f: $0d
	scf                                              ; $67a0: $37
	inc  b                                           ; $67a1: $04
	and  b                                           ; $67a2: $a0
	dec  b                                           ; $67a3: $05
	scf                                              ; $67a4: $37
	inc  b                                           ; $67a5: $04
	and  b                                           ; $67a6: $a0
	dec  c                                           ; $67a7: $0d
	dec  [hl]                                        ; $67a8: $35
	inc  b                                           ; $67a9: $04
	and  b                                           ; $67aa: $a0
	dec  b                                           ; $67ab: $05
	dec  [hl]                                        ; $67ac: $35
	inc  b                                           ; $67ad: $04
	and  b                                           ; $67ae: $a0
	dec  c                                           ; $67af: $0d
	inc  [hl]                                        ; $67b0: $34
	inc  b                                           ; $67b1: $04
	and  b                                           ; $67b2: $a0
	dec  b                                           ; $67b3: $05
	inc  [hl]                                        ; $67b4: $34
	inc  b                                           ; $67b5: $04
	and  b                                           ; $67b6: $a0
	dec  c                                           ; $67b7: $0d
	ld   [hl-], a                                    ; $67b8: $32
	inc  b                                           ; $67b9: $04
	and  b                                           ; $67ba: $a0
	dec  b                                           ; $67bb: $05
	ld   [hl-], a                                    ; $67bc: $32
	inc  b                                           ; $67bd: $04
	and  b                                           ; $67be: $a0
	dec  c                                           ; $67bf: $0d
	jr   nc, jr_0fe_67c6                             ; $67c0: $30 $04

	and  b                                           ; $67c2: $a0
	dec  b                                           ; $67c3: $05
	jr   nc, @+$06                                   ; $67c4: $30 $04

jr_0fe_67c6:
	and  b                                           ; $67c6: $a0
	dec  c                                           ; $67c7: $0d
	inc  [hl]                                        ; $67c8: $34
	jr   jr_0fe_676b                                 ; $67c9: $18 $a0

	dec  b                                           ; $67cb: $05
	inc  [hl]                                        ; $67cc: $34
	ld   [$0da0], sp                                 ; $67cd: $08 $a0 $0d
	inc  [hl]                                        ; $67d0: $34
	db   $10                                         ; $67d1: $10
	ld   [hl-], a                                    ; $67d2: $32
	db   $10                                         ; $67d3: $10
	jr   nc, jr_0fe_67f0                             ; $67d4: $30 $1a

	and  b                                           ; $67d6: $a0
	dec  b                                           ; $67d7: $05
	jr   nc, jr_0fe_67e0                             ; $67d8: $30 $06

	and  b                                           ; $67da: $a0
	dec  c                                           ; $67db: $0d
	jr   nc, jr_0fe_67e0                             ; $67dc: $30 $02

	and  b                                           ; $67de: $a0
	dec  b                                           ; $67df: $05

jr_0fe_67e0:
	jr   nc, jr_0fe_67e8                             ; $67e0: $30 $06

	and  b                                           ; $67e2: $a0
	dec  c                                           ; $67e3: $0d
	jr   nc, jr_0fe_67ee                             ; $67e4: $30 $08

	dec  hl                                          ; $67e6: $2b
	inc  c                                           ; $67e7: $0c

jr_0fe_67e8:
	inc  h                                           ; $67e8: $24
	ld   [bc], a                                     ; $67e9: $02
	and  b                                           ; $67ea: $a0
	dec  b                                           ; $67eb: $05
	inc  h                                           ; $67ec: $24
	ld   [bc], a                                     ; $67ed: $02

jr_0fe_67ee:
	and  b                                           ; $67ee: $a0
	dec  c                                           ; $67ef: $0d

jr_0fe_67f0:
	daa                                              ; $67f0: $27
	ld   e, $a0                                      ; $67f1: $1e $a0
	dec  b                                           ; $67f3: $05
	daa                                              ; $67f4: $27
	ld   [$0a1f], sp                                 ; $67f5: $08 $1f $0a
	and  b                                           ; $67f8: $a0
	dec  c                                           ; $67f9: $0d
	inc  h                                           ; $67fa: $24
	inc  b                                           ; $67fb: $04
	ld   [hl+], a                                    ; $67fc: $22
	inc  b                                           ; $67fd: $04
	daa                                              ; $67fe: $27
	inc  b                                           ; $67ff: $04
	inc  h                                           ; $6800: $24
	inc  b                                           ; $6801: $04
	or   b                                           ; $6802: $b0
	di                                               ; $6803: $f3
	rst  $38                                         ; $6804: $ff
	rst  $38                                         ; $6805: $ff
	rlca                                             ; $6806: $07
	ld   b, b                                        ; $6807: $40
	ld   [bc], a                                     ; $6808: $02
	ld   [bc], a                                     ; $6809: $02
	db   $fd                                         ; $680a: $fd
	di                                               ; $680b: $f3
	and  e                                           ; $680c: $a3
	inc  h                                           ; $680d: $24
	and  d                                           ; $680e: $a2
	ld   b, b                                        ; $680f: $40
	db   $fd                                         ; $6810: $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $6811: $f0 $a0
	ld   [bc], a                                     ; $6813: $02
	rla                                              ; $6814: $17
	inc  c                                           ; $6815: $0c
	daa                                              ; $6816: $27
	inc  b                                           ; $6817: $04
	or   e                                           ; $6818: $b3
	ldh  a, [rAUD4LEN]                               ; $6819: $f0 $20
	inc  b                                           ; $681b: $04
	ld   [hl-], a                                    ; $681c: $32
	ld   [bc], a                                     ; $681d: $02
	and  b                                           ; $681e: $a0
	inc  b                                           ; $681f: $04
	ld   [hl-], a                                    ; $6820: $32
	ld   [bc], a                                     ; $6821: $02
	and  b                                           ; $6822: $a0
	ld   [bc], a                                     ; $6823: $02
	inc  [hl]                                        ; $6824: $34
	ld   [bc], a                                     ; $6825: $02
	and  b                                           ; $6826: $a0
	inc  b                                           ; $6827: $04
	inc  [hl]                                        ; $6828: $34
	ld   [bc], a                                     ; $6829: $02
	and  b                                           ; $682a: $a0
	ld   [bc], a                                     ; $682b: $02
	ld   [hl-], a                                    ; $682c: $32
	ld   [bc], a                                     ; $682d: $02
	and  b                                           ; $682e: $a0
	inc  b                                           ; $682f: $04
	ld   [hl-], a                                    ; $6830: $32
	ld   [bc], a                                     ; $6831: $02
	and  b                                           ; $6832: $a0
	ld   [bc], a                                     ; $6833: $02
	jr   nc, jr_0fe_6838                             ; $6834: $30 $02

	and  b                                           ; $6836: $a0
	inc  b                                           ; $6837: $04

jr_0fe_6838:
	jr   nc, jr_0fe_683c                             ; $6838: $30 $02

	and  b                                           ; $683a: $a0
	ld   [bc], a                                     ; $683b: $02

jr_0fe_683c:
	dec  hl                                          ; $683c: $2b
	ld   [bc], a                                     ; $683d: $02
	and  b                                           ; $683e: $a0
	inc  b                                           ; $683f: $04
	dec  hl                                          ; $6840: $2b
	ld   [bc], a                                     ; $6841: $02
	and  b                                           ; $6842: $a0
	ld   [bc], a                                     ; $6843: $02
	rla                                              ; $6844: $17
	ld   [$0420], sp                                 ; $6845: $08 $20 $04
	inc  [hl]                                        ; $6848: $34
	ld   [bc], a                                     ; $6849: $02
	and  b                                           ; $684a: $a0
	inc  b                                           ; $684b: $04
	inc  [hl]                                        ; $684c: $34
	ld   [bc], a                                     ; $684d: $02
	and  b                                           ; $684e: $a0
	ld   [bc], a                                     ; $684f: $02
	jr   nz, jr_0fe_6856                             ; $6850: $20 $04

	inc  [hl]                                        ; $6852: $34
	ld   [bc], a                                     ; $6853: $02
	and  b                                           ; $6854: $a0
	inc  b                                           ; $6855: $04

jr_0fe_6856:
	inc  [hl]                                        ; $6856: $34
	ld   [bc], a                                     ; $6857: $02
	and  b                                           ; $6858: $a0
	ld   [bc], a                                     ; $6859: $02
	jr   nc, jr_0fe_685e                             ; $685a: $30 $02

	and  b                                           ; $685c: $a0
	inc  b                                           ; $685d: $04

jr_0fe_685e:
	jr   nc, jr_0fe_6862                             ; $685e: $30 $02

	and  b                                           ; $6860: $a0
	ld   [bc], a                                     ; $6861: $02

jr_0fe_6862:
	dec  hl                                          ; $6862: $2b
	ld   [bc], a                                     ; $6863: $02
	and  b                                           ; $6864: $a0
	inc  b                                           ; $6865: $04
	dec  hl                                          ; $6866: $2b
	ld   [bc], a                                     ; $6867: $02
	and  b                                           ; $6868: $a0
	ld   [bc], a                                     ; $6869: $02
	rla                                              ; $686a: $17
	ld   [$041a], sp                                 ; $686b: $08 $1a $04
	ld   [hl-], a                                    ; $686e: $32
	ld   [bc], a                                     ; $686f: $02
	and  b                                           ; $6870: $a0
	inc  b                                           ; $6871: $04
	ld   [hl-], a                                    ; $6872: $32
	ld   [bc], a                                     ; $6873: $02
	and  b                                           ; $6874: $a0
	ld   [bc], a                                     ; $6875: $02
	inc  [hl]                                        ; $6876: $34
	ld   [bc], a                                     ; $6877: $02
	and  b                                           ; $6878: $a0
	inc  b                                           ; $6879: $04
	inc  [hl]                                        ; $687a: $34
	ld   [bc], a                                     ; $687b: $02
	and  b                                           ; $687c: $a0
	ld   [bc], a                                     ; $687d: $02
	ld   [hl-], a                                    ; $687e: $32
	ld   [bc], a                                     ; $687f: $02
	and  b                                           ; $6880: $a0
	inc  b                                           ; $6881: $04
	ld   [hl-], a                                    ; $6882: $32
	ld   [bc], a                                     ; $6883: $02
	and  b                                           ; $6884: $a0
	ld   [bc], a                                     ; $6885: $02
	jr   nc, jr_0fe_688a                             ; $6886: $30 $02

	and  b                                           ; $6888: $a0
	inc  b                                           ; $6889: $04

jr_0fe_688a:
	jr   nc, jr_0fe_688e                             ; $688a: $30 $02

	and  b                                           ; $688c: $a0
	ld   [bc], a                                     ; $688d: $02

jr_0fe_688e:
	ld   a, [hl+]                                    ; $688e: $2a
	ld   [bc], a                                     ; $688f: $02
	and  b                                           ; $6890: $a0
	inc  b                                           ; $6891: $04
	ld   a, [hl+]                                    ; $6892: $2a
	ld   [bc], a                                     ; $6893: $02
	and  b                                           ; $6894: $a0
	ld   [bc], a                                     ; $6895: $02
	dec  d                                           ; $6896: $15
	ld   [$041a], sp                                 ; $6897: $08 $1a $04
	inc  [hl]                                        ; $689a: $34
	ld   [bc], a                                     ; $689b: $02
	and  b                                           ; $689c: $a0
	inc  b                                           ; $689d: $04
	inc  [hl]                                        ; $689e: $34
	ld   [bc], a                                     ; $689f: $02
	and  b                                           ; $68a0: $a0
	ld   [bc], a                                     ; $68a1: $02
	ld   a, [de]                                     ; $68a2: $1a
	inc  b                                           ; $68a3: $04
	inc  [hl]                                        ; $68a4: $34
	ld   [bc], a                                     ; $68a5: $02
	and  b                                           ; $68a6: $a0
	inc  b                                           ; $68a7: $04
	inc  [hl]                                        ; $68a8: $34
	ld   [bc], a                                     ; $68a9: $02
	and  b                                           ; $68aa: $a0
	ld   [bc], a                                     ; $68ab: $02
	jr   nc, jr_0fe_68b0                             ; $68ac: $30 $02

	and  b                                           ; $68ae: $a0
	inc  b                                           ; $68af: $04

jr_0fe_68b0:
	jr   nc, jr_0fe_68b4                             ; $68b0: $30 $02

	and  b                                           ; $68b2: $a0
	ld   [bc], a                                     ; $68b3: $02

jr_0fe_68b4:
	ld   a, [hl+]                                    ; $68b4: $2a
	ld   [bc], a                                     ; $68b5: $02
	and  b                                           ; $68b6: $a0
	inc  b                                           ; $68b7: $04
	ld   a, [hl+]                                    ; $68b8: $2a
	ld   [bc], a                                     ; $68b9: $02
	and  b                                           ; $68ba: $a0
	ld   [bc], a                                     ; $68bb: $02
	dec  d                                           ; $68bc: $15
	ld   [$0419], sp                                 ; $68bd: $08 $19 $04
	dec  hl                                          ; $68c0: $2b
	ld   [bc], a                                     ; $68c1: $02
	and  b                                           ; $68c2: $a0
	inc  b                                           ; $68c3: $04
	dec  hl                                          ; $68c4: $2b
	ld   [bc], a                                     ; $68c5: $02
	and  b                                           ; $68c6: $a0
	ld   [bc], a                                     ; $68c7: $02
	jr   nc, jr_0fe_68cc                             ; $68c8: $30 $02

	and  b                                           ; $68ca: $a0
	inc  b                                           ; $68cb: $04

jr_0fe_68cc:
	jr   nc, jr_0fe_68d0                             ; $68cc: $30 $02

	and  b                                           ; $68ce: $a0
	ld   [bc], a                                     ; $68cf: $02

jr_0fe_68d0:
	dec  hl                                          ; $68d0: $2b
	ld   [bc], a                                     ; $68d1: $02
	and  b                                           ; $68d2: $a0
	inc  b                                           ; $68d3: $04
	dec  hl                                          ; $68d4: $2b
	ld   [bc], a                                     ; $68d5: $02
	and  b                                           ; $68d6: $a0
	ld   [bc], a                                     ; $68d7: $02
	add  hl, hl                                      ; $68d8: $29
	ld   [bc], a                                     ; $68d9: $02
	and  b                                           ; $68da: $a0
	inc  b                                           ; $68db: $04
	add  hl, hl                                      ; $68dc: $29
	ld   [bc], a                                     ; $68dd: $02
	and  b                                           ; $68de: $a0
	ld   [bc], a                                     ; $68df: $02
	daa                                              ; $68e0: $27
	ld   [bc], a                                     ; $68e1: $02
	and  b                                           ; $68e2: $a0
	inc  b                                           ; $68e3: $04
	daa                                              ; $68e4: $27
	ld   [bc], a                                     ; $68e5: $02
	and  b                                           ; $68e6: $a0
	ld   [bc], a                                     ; $68e7: $02
	dec  d                                           ; $68e8: $15
	ld   [$0418], sp                                 ; $68e9: $08 $18 $04
	ld   a, [hl+]                                    ; $68ec: $2a
	ld   [bc], a                                     ; $68ed: $02
	and  b                                           ; $68ee: $a0
	inc  b                                           ; $68ef: $04
	ld   a, [hl+]                                    ; $68f0: $2a
	ld   [bc], a                                     ; $68f1: $02
	and  b                                           ; $68f2: $a0
	ld   [bc], a                                     ; $68f3: $02
	jr   jr_0fe_68fa                                 ; $68f4: $18 $04

	ld   a, [hl+]                                    ; $68f6: $2a
	ld   [bc], a                                     ; $68f7: $02
	and  b                                           ; $68f8: $a0
	inc  b                                           ; $68f9: $04

jr_0fe_68fa:
	ld   a, [hl+]                                    ; $68fa: $2a
	ld   [bc], a                                     ; $68fb: $02
	and  b                                           ; $68fc: $a0
	ld   [bc], a                                     ; $68fd: $02
	jr   z, jr_0fe_6902                              ; $68fe: $28 $02

	and  b                                           ; $6900: $a0
	inc  b                                           ; $6901: $04

jr_0fe_6902:
	jr   z, jr_0fe_6906                              ; $6902: $28 $02

	and  b                                           ; $6904: $a0
	ld   [bc], a                                     ; $6905: $02

jr_0fe_6906:
	daa                                              ; $6906: $27
	ld   [bc], a                                     ; $6907: $02
	and  b                                           ; $6908: $a0
	inc  b                                           ; $6909: $04
	daa                                              ; $690a: $27
	ld   [bc], a                                     ; $690b: $02
	and  b                                           ; $690c: $a0
	ld   [bc], a                                     ; $690d: $02
	dec  d                                           ; $690e: $15
	ld   [$f0fd], sp                                 ; $690f: $08 $fd $f0
	and  b                                           ; $6912: $a0
	ld   [bc], a                                     ; $6913: $02
	rla                                              ; $6914: $17
	inc  c                                           ; $6915: $0c
	daa                                              ; $6916: $27
	inc  b                                           ; $6917: $04
	or   e                                           ; $6918: $b3
	ldh  a, [rAUD4LEN]                               ; $6919: $f0 $20
	inc  b                                           ; $691b: $04
	and  b                                           ; $691c: $a0
	inc  b                                           ; $691d: $04
	jr   nz, jr_0fe_6922                             ; $691e: $20 $02

	rra                                              ; $6920: $1f
	ld   [hl+], a                                    ; $6921: $22

jr_0fe_6922:
	and  b                                           ; $6922: $a0
	ld   [bc], a                                     ; $6923: $02
	jr   nz, jr_0fe_692a                             ; $6924: $20 $04

	and  b                                           ; $6926: $a0
	inc  b                                           ; $6927: $04
	jr   nz, jr_0fe_692c                             ; $6928: $20 $02

jr_0fe_692a:
	rra                                              ; $692a: $1f
	ld   [bc], a                                     ; $692b: $02

jr_0fe_692c:
	and  b                                           ; $692c: $a0
	ld   [bc], a                                     ; $692d: $02
	jr   nz, jr_0fe_6934                             ; $692e: $20 $04

	and  b                                           ; $6930: $a0
	inc  b                                           ; $6931: $04
	jr   nz, jr_0fe_6936                             ; $6932: $20 $02

jr_0fe_6934:
	rra                                              ; $6934: $1f
	ld   [bc], a                                     ; $6935: $02

jr_0fe_6936:
	and  b                                           ; $6936: $a0
	ld   [bc], a                                     ; $6937: $02
	jr   nz, jr_0fe_693e                             ; $6938: $20 $04

	and  b                                           ; $693a: $a0
	inc  b                                           ; $693b: $04
	jr   nz, jr_0fe_6940                             ; $693c: $20 $02

jr_0fe_693e:
	rra                                              ; $693e: $1f
	ld   [bc], a                                     ; $693f: $02

jr_0fe_6940:
	and  b                                           ; $6940: $a0
	ld   [bc], a                                     ; $6941: $02
	dec  de                                          ; $6942: $1b
	inc  b                                           ; $6943: $04
	and  b                                           ; $6944: $a0
	inc  b                                           ; $6945: $04
	dec  de                                          ; $6946: $1b
	ld   [bc], a                                     ; $6947: $02
	rra                                              ; $6948: $1f
	ld   [hl+], a                                    ; $6949: $22
	and  b                                           ; $694a: $a0
	ld   [bc], a                                     ; $694b: $02
	dec  de                                          ; $694c: $1b
	inc  b                                           ; $694d: $04
	and  b                                           ; $694e: $a0
	inc  b                                           ; $694f: $04
	dec  de                                          ; $6950: $1b
	ld   [bc], a                                     ; $6951: $02
	rra                                              ; $6952: $1f
	ld   [bc], a                                     ; $6953: $02
	and  b                                           ; $6954: $a0
	ld   [bc], a                                     ; $6955: $02
	dec  de                                          ; $6956: $1b
	inc  b                                           ; $6957: $04
	and  b                                           ; $6958: $a0
	inc  b                                           ; $6959: $04
	dec  de                                          ; $695a: $1b
	ld   [bc], a                                     ; $695b: $02
	rra                                              ; $695c: $1f
	ld   [bc], a                                     ; $695d: $02
	and  b                                           ; $695e: $a0
	ld   [bc], a                                     ; $695f: $02
	dec  de                                          ; $6960: $1b
	inc  b                                           ; $6961: $04
	and  b                                           ; $6962: $a0
	inc  b                                           ; $6963: $04
	dec  de                                          ; $6964: $1b
	ld   [bc], a                                     ; $6965: $02
	rra                                              ; $6966: $1f
	ld   [bc], a                                     ; $6967: $02
	and  b                                           ; $6968: $a0
	ld   [bc], a                                     ; $6969: $02
	add  hl, de                                      ; $696a: $19
	inc  b                                           ; $696b: $04
	add  hl, de                                      ; $696c: $19
	ld   [bc], a                                     ; $696d: $02
	and  b                                           ; $696e: $a0
	inc  b                                           ; $696f: $04
	add  hl, de                                      ; $6970: $19
	ld   [bc], a                                     ; $6971: $02
	and  b                                           ; $6972: $a0
	ld   [bc], a                                     ; $6973: $02
	add  hl, de                                      ; $6974: $19
	ld   [$04a0], sp                                 ; $6975: $08 $a0 $04
	add  hl, de                                      ; $6978: $19
	ld   [bc], a                                     ; $6979: $02
	rra                                              ; $697a: $1f
	ld   c, $a0                                      ; $697b: $0e $a0
	ld   [bc], a                                     ; $697d: $02
	rla                                              ; $697e: $17
	inc  b                                           ; $697f: $04
	rla                                              ; $6980: $17
	ld   [bc], a                                     ; $6981: $02
	and  b                                           ; $6982: $a0
	inc  b                                           ; $6983: $04
	rla                                              ; $6984: $17
	ld   [bc], a                                     ; $6985: $02
	and  b                                           ; $6986: $a0
	ld   [bc], a                                     ; $6987: $02
	rla                                              ; $6988: $17
	ld   [$04a0], sp                                 ; $6989: $08 $a0 $04
	rla                                              ; $698c: $17
	ld   [bc], a                                     ; $698d: $02
	rra                                              ; $698e: $1f
	ld   c, $1f                                      ; $698f: $0e $1f
	jr   nz, @-$5e                                   ; $6991: $20 $a0

	ld   [bc], a                                     ; $6993: $02
	jr   nz, jr_0fe_69a6                             ; $6994: $20 $10

	dec  de                                          ; $6996: $1b
	ld   c, $a0                                      ; $6997: $0e $a0
	inc  b                                           ; $6999: $04
	dec  de                                          ; $699a: $1b
	ld   [bc], a                                     ; $699b: $02
	db   $fd                                         ; $699c: $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $699d: $f0 $a0
	ld   [bc], a                                     ; $699f: $02
	add  hl, de                                      ; $69a0: $19
	inc  b                                           ; $69a1: $04
	and  b                                           ; $69a2: $a0
	inc  b                                           ; $69a3: $04
	add  hl, de                                      ; $69a4: $19
	inc  b                                           ; $69a5: $04

jr_0fe_69a6:
	rra                                              ; $69a6: $1f
	ld   [$f0b3], sp                                 ; $69a7: $08 $b3 $f0
	db   $fd                                         ; $69aa: $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $69ab: $f0 $a0
	ld   [bc], a                                     ; $69ad: $02
	inc  h                                           ; $69ae: $24
	inc  b                                           ; $69af: $04
	and  b                                           ; $69b0: $a0
	inc  b                                           ; $69b1: $04
	inc  h                                           ; $69b2: $24
	inc  b                                           ; $69b3: $04
	rra                                              ; $69b4: $1f
	ld   [$f0b3], sp                                 ; $69b5: $08 $b3 $f0
	db   $fd                                         ; $69b8: $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $69b9: $f0 $a0
	ld   [bc], a                                     ; $69bb: $02
	dec  h                                           ; $69bc: $25
	inc  b                                           ; $69bd: $04
	and  b                                           ; $69be: $a0
	inc  b                                           ; $69bf: $04
	dec  h                                           ; $69c0: $25
	inc  b                                           ; $69c1: $04
	rra                                              ; $69c2: $1f
	ld   [$f0b1], sp                                 ; $69c3: $08 $b1 $f0
	db   $fd                                         ; $69c6: $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $69c7: $f0 $a0
	ld   [bc], a                                     ; $69c9: $02
	daa                                              ; $69ca: $27
	inc  b                                           ; $69cb: $04
	and  b                                           ; $69cc: $a0
	inc  b                                           ; $69cd: $04
	daa                                              ; $69ce: $27
	inc  b                                           ; $69cf: $04
	rra                                              ; $69d0: $1f
	ld   [$f0b1], sp                                 ; $69d1: $08 $b1 $f0
	db   $fd                                         ; $69d4: $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $69d5: $f0 $a0
	ld   [bc], a                                     ; $69d7: $02
	jr   nz, jr_0fe_69de                             ; $69d8: $20 $04

	and  b                                           ; $69da: $a0
	inc  b                                           ; $69db: $04
	jr   nz, jr_0fe_69e2                             ; $69dc: $20 $04

jr_0fe_69de:
	rra                                              ; $69de: $1f
	ld   [$f0b1], sp                                 ; $69df: $08 $b1 $f0

jr_0fe_69e2:
	and  b                                           ; $69e2: $a0
	ld   [bc], a                                     ; $69e3: $02
	dec  d                                           ; $69e4: $15
	db   $10                                         ; $69e5: $10
	rla                                              ; $69e6: $17
	inc  c                                           ; $69e7: $0c
	and  b                                           ; $69e8: $a0
	inc  b                                           ; $69e9: $04
	rla                                              ; $69ea: $17
	inc  b                                           ; $69eb: $04
	db   $fd                                         ; $69ec: $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $69ed: $f0 $a0
	ld   [bc], a                                     ; $69ef: $02
	jr   nz, jr_0fe_69f6                             ; $69f0: $20 $04

	and  b                                           ; $69f2: $a0
	inc  b                                           ; $69f3: $04
	jr   nz, jr_0fe_69fa                             ; $69f4: $20 $04

jr_0fe_69f6:
	and  b                                           ; $69f6: $a0
	ld   [bc], a                                     ; $69f7: $02
	jr   nz, jr_0fe_69fe                             ; $69f8: $20 $04

jr_0fe_69fa:
	and  b                                           ; $69fa: $a0
	inc  b                                           ; $69fb: $04
	jr   nz, jr_0fe_6a02                             ; $69fc: $20 $04

jr_0fe_69fe:
	rra                                              ; $69fe: $1f
	ld   [$02a0], sp                                 ; $69ff: $08 $a0 $02

jr_0fe_6a02:
	jr   nz, jr_0fe_6a0c                             ; $6a02: $20 $08

	or   c                                           ; $6a04: $b1
	ldh  a, [$fd]                                    ; $6a05: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $6a07: $f0 $a0
	ld   [bc], a                                     ; $6a09: $02
	dec  de                                          ; $6a0a: $1b
	inc  b                                           ; $6a0b: $04

jr_0fe_6a0c:
	and  b                                           ; $6a0c: $a0
	inc  b                                           ; $6a0d: $04
	dec  de                                          ; $6a0e: $1b
	inc  b                                           ; $6a0f: $04
	and  b                                           ; $6a10: $a0
	ld   [bc], a                                     ; $6a11: $02
	dec  de                                          ; $6a12: $1b
	inc  b                                           ; $6a13: $04
	and  b                                           ; $6a14: $a0
	inc  b                                           ; $6a15: $04
	dec  de                                          ; $6a16: $1b
	inc  b                                           ; $6a17: $04
	rra                                              ; $6a18: $1f
	ld   [$02a0], sp                                 ; $6a19: $08 $a0 $02
	dec  de                                          ; $6a1c: $1b
	ld   [$f0b1], sp                                 ; $6a1d: $08 $b1 $f0
	add  hl, de                                      ; $6a20: $19
	inc  b                                           ; $6a21: $04
	and  b                                           ; $6a22: $a0
	inc  b                                           ; $6a23: $04
	add  hl, de                                      ; $6a24: $19
	inc  b                                           ; $6a25: $04
	and  b                                           ; $6a26: $a0
	ld   [bc], a                                     ; $6a27: $02
	add  hl, de                                      ; $6a28: $19
	inc  b                                           ; $6a29: $04
	and  b                                           ; $6a2a: $a0
	inc  b                                           ; $6a2b: $04
	add  hl, de                                      ; $6a2c: $19
	inc  b                                           ; $6a2d: $04
	rra                                              ; $6a2e: $1f
	ld   [$02a0], sp                                 ; $6a2f: $08 $a0 $02
	add  hl, de                                      ; $6a32: $19
	ld   [$0417], sp                                 ; $6a33: $08 $17 $04
	and  b                                           ; $6a36: $a0
	inc  b                                           ; $6a37: $04
	rla                                              ; $6a38: $17
	inc  b                                           ; $6a39: $04
	and  b                                           ; $6a3a: $a0
	ld   [bc], a                                     ; $6a3b: $02
	rla                                              ; $6a3c: $17
	inc  b                                           ; $6a3d: $04
	and  b                                           ; $6a3e: $a0
	inc  b                                           ; $6a3f: $04
	rla                                              ; $6a40: $17
	inc  b                                           ; $6a41: $04
	rra                                              ; $6a42: $1f
	ld   [$02a0], sp                                 ; $6a43: $08 $a0 $02
	rla                                              ; $6a46: $17
	ld   [$0420], sp                                 ; $6a47: $08 $20 $04
	and  b                                           ; $6a4a: $a0
	inc  b                                           ; $6a4b: $04
	jr   nz, jr_0fe_6a52                             ; $6a4c: $20 $04

	and  b                                           ; $6a4e: $a0
	ld   [bc], a                                     ; $6a4f: $02
	jr   nz, jr_0fe_6a56                             ; $6a50: $20 $04

jr_0fe_6a52:
	and  b                                           ; $6a52: $a0
	inc  b                                           ; $6a53: $04
	jr   nz, jr_0fe_6a5a                             ; $6a54: $20 $04

jr_0fe_6a56:
	rra                                              ; $6a56: $1f
	ld   [$02a0], sp                                 ; $6a57: $08 $a0 $02

jr_0fe_6a5a:
	dec  de                                          ; $6a5a: $1b
	ld   [$0c20], sp                                 ; $6a5b: $08 $20 $0c
	and  b                                           ; $6a5e: $a0
	inc  b                                           ; $6a5f: $04
	jr   nz, jr_0fe_6a66                             ; $6a60: $20 $04

	and  b                                           ; $6a62: $a0
	ld   [bc], a                                     ; $6a63: $02
	dec  de                                          ; $6a64: $1b
	inc  c                                           ; $6a65: $0c

jr_0fe_6a66:
	and  b                                           ; $6a66: $a0
	inc  b                                           ; $6a67: $04
	dec  de                                          ; $6a68: $1b
	inc  b                                           ; $6a69: $04
	db   $fd                                         ; $6a6a: $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $6a6b: $f0 $a0
	ld   [bc], a                                     ; $6a6d: $02
	add  hl, de                                      ; $6a6e: $19
	inc  b                                           ; $6a6f: $04
	and  b                                           ; $6a70: $a0
	inc  b                                           ; $6a71: $04
	add  hl, de                                      ; $6a72: $19
	inc  b                                           ; $6a73: $04
	and  b                                           ; $6a74: $a0
	ld   [bc], a                                     ; $6a75: $02
	add  hl, de                                      ; $6a76: $19
	inc  b                                           ; $6a77: $04
	and  b                                           ; $6a78: $a0
	inc  b                                           ; $6a79: $04
	add  hl, de                                      ; $6a7a: $19
	inc  b                                           ; $6a7b: $04
	rra                                              ; $6a7c: $1f
	ld   [$02a0], sp                                 ; $6a7d: $08 $a0 $02
	add  hl, de                                      ; $6a80: $19
	ld   [$f0b1], sp                                 ; $6a81: $08 $b1 $f0
	db   $fd                                         ; $6a84: $fd
	ldh  a, [rAUD1HIGH]                              ; $6a85: $f0 $14
	inc  b                                           ; $6a87: $04
	and  b                                           ; $6a88: $a0
	inc  b                                           ; $6a89: $04
	inc  d                                           ; $6a8a: $14
	inc  b                                           ; $6a8b: $04
	and  b                                           ; $6a8c: $a0
	ld   [bc], a                                     ; $6a8d: $02
	inc  d                                           ; $6a8e: $14
	inc  b                                           ; $6a8f: $04
	and  b                                           ; $6a90: $a0
	inc  b                                           ; $6a91: $04
	inc  d                                           ; $6a92: $14
	inc  b                                           ; $6a93: $04
	rra                                              ; $6a94: $1f
	ld   [$02a0], sp                                 ; $6a95: $08 $a0 $02
	inc  d                                           ; $6a98: $14
	ld   [$f0b1], sp                                 ; $6a99: $08 $b1 $f0
	or   b                                           ; $6a9c: $b0
	di                                               ; $6a9d: $f3
	rst  $38                                         ; $6a9e: $ff
	rst  $38                                         ; $6a9f: $ff
	rlca                                             ; $6aa0: $07
	nop                                              ; $6aa1: $00
	add  hl, bc                                      ; $6aa2: $09
	nop                                              ; $6aa3: $00
	db   $fd                                         ; $6aa4: $fd
	di                                               ; $6aa5: $f3
	db   $fd                                         ; $6aa6: $fd
	pop  af                                          ; $6aa7: $f1
	xor  h                                           ; $6aa8: $ac
	ld   bc, $009e                                   ; $6aa9: $01 $9e $00
	or   h                                           ; $6aac: $b4
	pop  af                                          ; $6aad: $f1
	db   $fd                                         ; $6aae: $fd
	ldh  a, [c]                                      ; $6aaf: $f2
	and  b                                           ; $6ab0: $a0
	dec  c                                           ; $6ab1: $0d
	rla                                              ; $6ab2: $17
	ld   bc, $0aa0                                   ; $6ab3: $01 $a0 $0a
	db   $10                                         ; $6ab6: $10
	ld   bc, $01a0                                   ; $6ab7: $01 $a0 $01
	nop                                              ; $6aba: $00
	ld   h, $fd                                      ; $6abb: $26 $fd
	pop  af                                          ; $6abd: $f1
	and  b                                           ; $6abe: $a0
	dec  c                                           ; $6abf: $0d
	rla                                              ; $6ac0: $17
	ld   bc, $0aa0                                   ; $6ac1: $01 $a0 $0a
	db   $10                                         ; $6ac4: $10
	ld   bc, $01a0                                   ; $6ac5: $01 $a0 $01
	nop                                              ; $6ac8: $00
	ld   b, $b2                                      ; $6ac9: $06 $b2
	pop  af                                          ; $6acb: $f1
	or   c                                           ; $6acc: $b1
	ldh  a, [c]                                      ; $6acd: $f2
	db   $fd                                         ; $6ace: $fd
	ldh  a, [c]                                      ; $6acf: $f2
	db   $fd                                         ; $6ad0: $fd
	pop  af                                          ; $6ad1: $f1
	and  b                                           ; $6ad2: $a0
	dec  c                                           ; $6ad3: $0d
	rla                                              ; $6ad4: $17
	ld   bc, $0aa0                                   ; $6ad5: $01 $a0 $0a
	db   $10                                         ; $6ad8: $10
	ld   bc, $01a0                                   ; $6ad9: $01 $a0 $01
	nop                                              ; $6adc: $00
	ld   [bc], a                                     ; $6add: $02
	or   d                                           ; $6ade: $b2
	pop  af                                          ; $6adf: $f1
	rra                                              ; $6ae0: $1f
	inc  d                                           ; $6ae1: $14
	or   c                                           ; $6ae2: $b1
	ldh  a, [c]                                      ; $6ae3: $f2

jr_0fe_6ae4:
	rra                                              ; $6ae4: $1f
	jr   nz, jr_0fe_6ae4                             ; $6ae5: $20 $fd

	pop  af                                          ; $6ae7: $f1
	and  b                                           ; $6ae8: $a0
	dec  c                                           ; $6ae9: $0d
	rla                                              ; $6aea: $17
	ld   bc, $0aa0                                   ; $6aeb: $01 $a0 $0a
	db   $10                                         ; $6aee: $10
	ld   bc, $01a0                                   ; $6aef: $01 $a0 $01
	nop                                              ; $6af2: $00
	ld   b, $b2                                      ; $6af3: $06 $b2
	pop  af                                          ; $6af5: $f1
	and  b                                           ; $6af6: $a0
	dec  c                                           ; $6af7: $0d
	rla                                              ; $6af8: $17
	ld   bc, $0aa0                                   ; $6af9: $01 $a0 $0a
	db   $10                                         ; $6afc: $10
	ld   bc, $01a0                                   ; $6afd: $01 $a0 $01
	nop                                              ; $6b00: $00
	ld   [bc], a                                     ; $6b01: $02
	and  b                                           ; $6b02: $a0
	dec  c                                           ; $6b03: $0d
	rla                                              ; $6b04: $17
	ld   bc, $0aa0                                   ; $6b05: $01 $a0 $0a
	db   $10                                         ; $6b08: $10
	ld   bc, $01a0                                   ; $6b09: $01 $a0 $01
	nop                                              ; $6b0c: $00
	ld   [bc], a                                     ; $6b0d: $02
	db   $fd                                         ; $6b0e: $fd
	ldh  a, [c]                                      ; $6b0f: $f2
	db   $fd                                         ; $6b10: $fd
	pop  af                                          ; $6b11: $f1
	and  b                                           ; $6b12: $a0
	dec  c                                           ; $6b13: $0d
	rla                                              ; $6b14: $17
	ld   bc, $0aa0                                   ; $6b15: $01 $a0 $0a
	db   $10                                         ; $6b18: $10
	ld   bc, $01a0                                   ; $6b19: $01 $a0 $01
	nop                                              ; $6b1c: $00
	ld   c, $b6                                      ; $6b1d: $0e $b6
	pop  af                                          ; $6b1f: $f1
	db   $fd                                         ; $6b20: $fd
	pop  af                                          ; $6b21: $f1
	and  b                                           ; $6b22: $a0
	dec  c                                           ; $6b23: $0d

jr_0fe_6b24:
	rla                                              ; $6b24: $17

jr_0fe_6b25:
	ld   bc, $0aa0                                   ; $6b25: $01 $a0 $0a
	db   $10                                         ; $6b28: $10
	ld   bc, $01a0                                   ; $6b29: $01 $a0 $01
	nop                                              ; $6b2c: $00
	ld   [bc], a                                     ; $6b2d: $02
	or   e                                           ; $6b2e: $b3
	pop  af                                          ; $6b2f: $f1
	or   c                                           ; $6b30: $b1
	ldh  a, [c]                                      ; $6b31: $f2
	db   $fd                                         ; $6b32: $fd
	pop  af                                          ; $6b33: $f1
	xor  h                                           ; $6b34: $ac
	ld   bc, $009e                                   ; $6b35: $01 $9e $00
	or   l                                           ; $6b38: $b5
	pop  af                                          ; $6b39: $f1
	or   b                                           ; $6b3a: $b0
	di                                               ; $6b3b: $f3
	rst  $38                                         ; $6b3c: $ff
	rst  $38                                         ; $6b3d: $ff
	db   $fd                                         ; $6b3e: $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $6b3f: $f0 $a0
	dec  c                                           ; $6b41: $0d
	rla                                              ; $6b42: $17
	ld   bc, $0aa0                                   ; $6b43: $01 $a0 $0a
	db   $10                                         ; $6b46: $10
	ld   bc, $01a0                                   ; $6b47: $01 $a0 $01
	nop                                              ; $6b4a: $00
	ld   b, $a0                                      ; $6b4b: $06 $a0
	dec  c                                           ; $6b4d: $0d
	rla                                              ; $6b4e: $17
	ld   bc, $0aa0                                   ; $6b4f: $01 $a0 $0a
	db   $10                                         ; $6b52: $10
	ld   bc, $01a0                                   ; $6b53: $01 $a0 $01
	nop                                              ; $6b56: $00

jr_0fe_6b57:
	ld   [bc], a                                     ; $6b57: $02
	and  b                                           ; $6b58: $a0
	dec  c                                           ; $6b59: $0d
	rla                                              ; $6b5a: $17
	ld   bc, $0aa0                                   ; $6b5b: $01 $a0 $0a
	db   $10                                         ; $6b5e: $10
	ld   bc, $01a0                                   ; $6b5f: $01 $a0 $01
	nop                                              ; $6b62: $00
	ld   [bc], a                                     ; $6b63: $02
	or   d                                           ; $6b64: $b2
	ldh  a, [$fd]                                    ; $6b65: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $6b67: $f0 $a0
	dec  c                                           ; $6b69: $0d
	rla                                              ; $6b6a: $17
	ld   bc, $0aa0                                   ; $6b6b: $01 $a0 $0a
	db   $10                                         ; $6b6e: $10
	ld   bc, $01a0                                   ; $6b6f: $01 $a0 $01
	nop                                              ; $6b72: $00
	ld   [bc], a                                     ; $6b73: $02
	or   e                                           ; $6b74: $b3
	ldh  a, [$ad]                                    ; $6b75: $f0 $ad
	nop                                              ; $6b77: $00
	dec  bc                                          ; $6b78: $0b
	nop                                              ; $6b79: $00
	add  hl, bc                                      ; $6b7a: $09
	nop                                              ; $6b7b: $00
	and  d                                           ; $6b7c: $a2
	nop                                              ; $6b7d: $00
	rst  ToBoot                                         ; $6b7e: $c7
	jr   nc, jr_0fe_6b24                             ; $6b7f: $30 $a3

	ld   d, $1f                                      ; $6b81: $16 $1f
	jr   z, jr_0fe_6b25                              ; $6b83: $28 $a0

	ld   a, [bc]                                     ; $6b85: $0a
	dec  d                                           ; $6b86: $15
	ld   c, $19                                      ; $6b87: $0e $19
	ld   b, $1b                                      ; $6b89: $06 $1b
	ld   b, $c7                                      ; $6b8b: $06 $c7
	ld   h, b                                        ; $6b8d: $60
	jr   @+$01                                       ; $6b8e: $18 $ff

	rst  $38                                         ; $6b90: $ff
	rst  $38                                         ; $6b91: $ff
	dec  bc                                          ; $6b92: $0b
	nop                                              ; $6b93: $00
	add  hl, bc                                      ; $6b94: $09
	nop                                              ; $6b95: $00
	and  d                                           ; $6b96: $a2
	ld   bc, $40c7                                   ; $6b97: $01 $c7 $40
	and  e                                           ; $6b9a: $a3
	inc  h                                           ; $6b9b: $24
	and  b                                           ; $6b9c: $a0
	ld   a, [bc]                                     ; $6b9d: $0a
	inc  [hl]                                        ; $6b9e: $34
	ld   [$0839], sp                                 ; $6b9f: $08 $39 $08
	add  hl, sp                                      ; $6ba2: $39
	ld   [$0844], sp                                 ; $6ba3: $08 $44 $08
	ld   b, h                                        ; $6ba6: $44
	ld   a, [de]                                     ; $6ba7: $1a
	ld   b, e                                        ; $6ba8: $43
	ld   [$60c7], sp                                 ; $6ba9: $08 $c7 $60
	ld   b, d                                        ; $6bac: $42
	rst  $38                                         ; $6bad: $ff
	rst  $38                                         ; $6bae: $ff
	rst  $38                                         ; $6baf: $ff
	dec  bc                                          ; $6bb0: $0b
	ld   b, b                                        ; $6bb1: $40
	ld   [bc], a                                     ; $6bb2: $02
	ld   [bc], a                                     ; $6bb3: $02
	rra                                              ; $6bb4: $1f
	jr   nz, jr_0fe_6b57                             ; $6bb5: $20 $a0

	ld   [bc], a                                     ; $6bb7: $02
	and  e                                           ; $6bb8: $a3
	inc  h                                           ; $6bb9: $24
	and  d                                           ; $6bba: $a2
	add  b                                           ; $6bbb: $80
	and  b                                           ; $6bbc: $a0
	inc  b                                           ; $6bbd: $04
	dec  de                                          ; $6bbe: $1b
	db   $10                                         ; $6bbf: $10
	inc  [hl]                                        ; $6bc0: $34
	ld   [de], a                                     ; $6bc1: $12
	and  d                                           ; $6bc2: $a2
	ld   h, b                                        ; $6bc3: $60
	inc  h                                           ; $6bc4: $24
	rst  $38                                         ; $6bc5: $ff
	rst  $38                                         ; $6bc6: $ff
	rst  $38                                         ; $6bc7: $ff
	dec  bc                                          ; $6bc8: $0b
	nop                                              ; $6bc9: $00
	add  hl, bc                                      ; $6bca: $09
	nop                                              ; $6bcb: $00
	rst  $38                                         ; $6bcc: $ff
	rst  $38                                         ; $6bcd: $ff
	ld   b, $01                                      ; $6bce: $06 $01
	add  hl, bc                                      ; $6bd0: $09

jr_0fe_6bd1:
	nop                                              ; $6bd1: $00
	rst  ToBoot                                         ; $6bd2: $c7
	ld   [hl], b                                     ; $6bd3: $70
	and  e                                           ; $6bd4: $a3
	daa                                              ; $6bd5: $27

jr_0fe_6bd6:
	and  d                                           ; $6bd6: $a2
	nop                                              ; $6bd7: $00
	and  b                                           ; $6bd8: $a0
	ld   [$3039], sp                                 ; $6bd9: $08 $39 $30
	scf                                              ; $6bdc: $37
	db   $10                                         ; $6bdd: $10
	ld   [hl], $0c                                   ; $6bde: $36 $0c
	ld   [hl-], a                                    ; $6be0: $32
	inc  c                                           ; $6be1: $0c
	add  hl, hl                                      ; $6be2: $29
	inc  c                                           ; $6be3: $0c
	rst  ToBoot                                         ; $6be4: $c7
	ld   h, b                                        ; $6be5: $60
	ld   b, c                                        ; $6be6: $41
	rst  $38                                         ; $6be7: $ff
	rst  $38                                         ; $6be8: $ff
	rst  $38                                         ; $6be9: $ff
	ld   b, $00                                      ; $6bea: $06 $00
	add  hl, bc                                      ; $6bec: $09
	nop                                              ; $6bed: $00
	and  b                                           ; $6bee: $a0
	ld   [bc], a                                     ; $6bef: $02
	and  e                                           ; $6bf0: $a3
	ld   h, $c7                                      ; $6bf1: $26 $c7
	ld   [hl], b                                     ; $6bf3: $70
	and  b                                           ; $6bf4: $a0
	ld   a, [bc]                                     ; $6bf5: $0a
	ld   b, h                                        ; $6bf6: $44
	db   $10                                         ; $6bf7: $10
	ld   b, d                                        ; $6bf8: $42
	ld   [$0844], sp                                 ; $6bf9: $08 $44 $08
	add  hl, sp                                      ; $6bfc: $39
	jr   nc, jr_0fe_6c36                             ; $6bfd: $30 $37

	ld   [$0a39], sp                                 ; $6bff: $08 $39 $0a
	rst  ToBoot                                         ; $6c02: $c7
	ld   h, b                                        ; $6c03: $60
	add  hl, sp                                      ; $6c04: $39
	rst  $38                                         ; $6c05: $ff
	rst  $38                                         ; $6c06: $ff
	rst  $38                                         ; $6c07: $ff
	ld   b, $40                                      ; $6c08: $06 $40
	ld   [bc], a                                     ; $6c0a: $02
	ld   [bc], a                                     ; $6c0b: $02
	and  b                                           ; $6c0c: $a0
	ld   [bc], a                                     ; $6c0d: $02
	and  e                                           ; $6c0e: $a3
	inc  h                                           ; $6c0f: $24
	and  d                                           ; $6c10: $a2
	ld   [hl], b                                     ; $6c11: $70
	and  b                                           ; $6c12: $a0
	inc  b                                           ; $6c13: $04
	ld   b, l                                        ; $6c14: $45
	jr   nc, jr_0fe_6c5b                             ; $6c15: $30 $44

	jr   jr_0fe_6c54                                 ; $6c17: $18 $3b

	ld   [$1034], sp                                 ; $6c19: $08 $34 $10
	and  d                                           ; $6c1c: $a2
	ld   h, b                                        ; $6c1d: $60
	add  hl, hl                                      ; $6c1e: $29
	rst  $38                                         ; $6c1f: $ff
	rst  $38                                         ; $6c20: $ff
	rst  $38                                         ; $6c21: $ff
	ld   b, $00                                      ; $6c22: $06 $00
	add  hl, bc                                      ; $6c24: $09
	nop                                              ; $6c25: $00
	rst  $38                                         ; $6c26: $ff
	rst  $38                                         ; $6c27: $ff
	ld   b, $00                                      ; $6c28: $06 $00
	add  hl, bc                                      ; $6c2a: $09
	nop                                              ; $6c2b: $00
	rra                                              ; $6c2c: $1f
	jr   nz, jr_0fe_6bd1                             ; $6c2d: $20 $a2

	nop                                              ; $6c2f: $00
	rst  ToBoot                                         ; $6c30: $c7
	jr   nc, jr_0fe_6bd6                             ; $6c31: $30 $a3

	ld   h, $a0                                      ; $6c33: $26 $a0
	ld   a, [bc]                                     ; $6c35: $0a

jr_0fe_6c36:
	inc  d                                           ; $6c36: $14
	ld   [$081b], sp                                 ; $6c37: $08 $1b $08
	jr   nz, @+$0a                                   ; $6c3a: $20 $08

	dec  h                                           ; $6c3c: $25
	jr   @+$26                                       ; $6c3d: $18 $24

	ld   d, b                                        ; $6c3f: $50
	rra                                              ; $6c40: $1f
	ld   b, b                                        ; $6c41: $40
	add  hl, hl                                      ; $6c42: $29
	jr   nz, jr_0fe_6c69                             ; $6c43: $20 $24

	jr   jr_0fe_6c62                                 ; $6c45: $18 $1b

	ld   [$0814], sp                                 ; $6c47: $08 $14 $08
	dec  de                                          ; $6c4a: $1b
	ld   [$0820], sp                                 ; $6c4b: $08 $20 $08
	dec  h                                           ; $6c4e: $25
	jr   jr_0fe_6c75                                 ; $6c4f: $18 $24

	ld   d, b                                        ; $6c51: $50
	db   $fd                                         ; $6c52: $fd
	di                                               ; $6c53: $f3

jr_0fe_6c54:
	inc  d                                           ; $6c54: $14
	ld   [$081b], sp                                 ; $6c55: $08 $1b $08
	jr   nz, jr_0fe_6c62                             ; $6c58: $20 $08

	dec  h                                           ; $6c5a: $25

jr_0fe_6c5b:
	jr   jr_0fe_6c81                                 ; $6c5b: $18 $24

	ld   d, b                                        ; $6c5d: $50
	inc  d                                           ; $6c5e: $14
	ld   [$081b], sp                                 ; $6c5f: $08 $1b $08

jr_0fe_6c62:
	jr   nz, @+$0a                                   ; $6c62: $20 $08

	dec  h                                           ; $6c64: $25
	jr   @+$26                                       ; $6c65: $18 $24

	db   $10                                         ; $6c67: $10
	ld   [hl-], a                                    ; $6c68: $32

jr_0fe_6c69:
	jr   nz, @+$2b                                   ; $6c69: $20 $29

	jr   @+$26                                       ; $6c6b: $18 $24

	ld   c, b                                        ; $6c6d: $48
	inc  d                                           ; $6c6e: $14
	ld   [$081b], sp                                 ; $6c6f: $08 $1b $08
	jr   nz, jr_0fe_6c7c                             ; $6c72: $20 $08

jr_0fe_6c74:
	dec  h                                           ; $6c74: $25

jr_0fe_6c75:
	jr   @+$26                                       ; $6c75: $18 $24

	ld   d, b                                        ; $6c77: $50
	rla                                              ; $6c78: $17
	ld   [$0822], sp                                 ; $6c79: $08 $22 $08

jr_0fe_6c7c:
	inc  hl                                          ; $6c7c: $23
	ld   [$1828], sp                                 ; $6c7d: $08 $28 $18
	daa                                              ; $6c80: $27

jr_0fe_6c81:
	ld   d, b                                        ; $6c81: $50
	dec  h                                           ; $6c82: $25
	ld   [$0817], sp                                 ; $6c83: $08 $17 $08
	ld   a, [de]                                     ; $6c86: $1a
	ld   [$1823], sp                                 ; $6c87: $08 $23 $18
	jr   jr_0fe_6cdc                                 ; $6c8a: $18 $50

	inc  hl                                          ; $6c8c: $23
	ld   [$0815], sp                                 ; $6c8d: $08 $15 $08
	ld   d, $08                                      ; $6c90: $16 $08
	ld   hl, $1a18                                   ; $6c92: $21 $18 $1a
	ld   d, b                                        ; $6c95: $50
	jr   jr_0fe_6ca0                                 ; $6c96: $18 $08

	add  hl, de                                      ; $6c98: $19
	ld   [$0821], sp                                 ; $6c99: $08 $21 $08
	jr   z, jr_0fe_6cb6                              ; $6c9c: $28 $18

	dec  h                                           ; $6c9e: $25
	ld   d, b                                        ; $6c9f: $50

jr_0fe_6ca0:
	inc  d                                           ; $6ca0: $14
	ld   [$081b], sp                                 ; $6ca1: $08 $1b $08
	jr   nz, jr_0fe_6cae                             ; $6ca4: $20 $08

	dec  h                                           ; $6ca6: $25
	jr   jr_0fe_6ccd                                 ; $6ca7: $18 $24

	ld   d, b                                        ; $6ca9: $50
	inc  d                                           ; $6caa: $14
	ld   [$081b], sp                                 ; $6cab: $08 $1b $08

jr_0fe_6cae:
	jr   nz, jr_0fe_6cb8                             ; $6cae: $20 $08

	dec  h                                           ; $6cb0: $25
	jr   jr_0fe_6cd7                                 ; $6cb1: $18 $24

	ld   d, b                                        ; $6cb3: $50
	rra                                              ; $6cb4: $1f
	ld   b, b                                        ; $6cb5: $40

jr_0fe_6cb6:
	or   b                                           ; $6cb6: $b0
	di                                               ; $6cb7: $f3

jr_0fe_6cb8:
	rst  $38                                         ; $6cb8: $ff
	rst  $38                                         ; $6cb9: $ff
	ld   b, $00                                      ; $6cba: $06 $00
	add  hl, bc                                      ; $6cbc: $09
	nop                                              ; $6cbd: $00
	and  d                                           ; $6cbe: $a2
	nop                                              ; $6cbf: $00
	rst  ToBoot                                         ; $6cc0: $c7
	jr   nc, @-$5b                                   ; $6cc1: $30 $a3

	ld   h, $1f                                      ; $6cc3: $26 $1f
	jr   nz, jr_0fe_6ce6                             ; $6cc5: $20 $1f

	ld   b, b                                        ; $6cc7: $40
	rra                                              ; $6cc8: $1f
	ld   b, b                                        ; $6cc9: $40
	rra                                              ; $6cca: $1f
	ld   b, b                                        ; $6ccb: $40
	and  d                                           ; $6ccc: $a2

jr_0fe_6ccd:
	nop                                              ; $6ccd: $00
	rst  ToBoot                                         ; $6cce: $c7
	jr   nc, jr_0fe_6c74                             ; $6ccf: $30 $a3

	ld   h, $a0                                      ; $6cd1: $26 $a0
	dec  c                                           ; $6cd3: $0d
	ld   [hl-], a                                    ; $6cd4: $32
	jr   nz, @+$2b                                   ; $6cd5: $20 $29

jr_0fe_6cd7:
	jr   jr_0fe_6cfd                                 ; $6cd7: $18 $24

	jr   nz, jr_0fe_6cfa                             ; $6cd9: $20 $1f

	ld   c, b                                        ; $6cdb: $48

jr_0fe_6cdc:
	and  d                                           ; $6cdc: $a2
	ld   [bc], a                                     ; $6cdd: $02
	jp   $a304                                       ; $6cde: $c3 $04 $a3


	inc  h                                           ; $6ce1: $24
	add  hl, de                                      ; $6ce2: $19
	ld   [$0824], sp                                 ; $6ce3: $08 $24 $08

jr_0fe_6ce6:
	dec  de                                          ; $6ce6: $1b
	ld   [$0820], sp                                 ; $6ce7: $08 $20 $08
	db   $fd                                         ; $6cea: $fd
	di                                               ; $6ceb: $f3
	jr   z, jr_0fe_6d4a                              ; $6cec: $28 $5c

	and  b                                           ; $6cee: $a0
	dec  b                                           ; $6cef: $05
	jr   z, @+$06                                    ; $6cf0: $28 $04

	and  b                                           ; $6cf2: $a0
	dec  c                                           ; $6cf3: $0d
	daa                                              ; $6cf4: $27
	jr   nz, @+$26                                   ; $6cf5: $20 $24

	sub  b                                           ; $6cf7: $90
	and  b                                           ; $6cf8: $a0
	dec  b                                           ; $6cf9: $05

jr_0fe_6cfa:
	inc  h                                           ; $6cfa: $24
	db   $10                                         ; $6cfb: $10
	and  b                                           ; $6cfc: $a0

jr_0fe_6cfd:
	dec  c                                           ; $6cfd: $0d
	add  hl, de                                      ; $6cfe: $19
	ld   [$0824], sp                                 ; $6cff: $08 $24 $08
	dec  de                                          ; $6d02: $1b
	ld   [$0820], sp                                 ; $6d03: $08 $20 $08
	jr   z, @+$5e                                    ; $6d06: $28 $5c

jr_0fe_6d08:
	and  b                                           ; $6d08: $a0

jr_0fe_6d09:
	dec  b                                           ; $6d09: $05
	jr   z, @+$06                                    ; $6d0a: $28 $04

	and  b                                           ; $6d0c: $a0
	dec  c                                           ; $6d0d: $0d

jr_0fe_6d0e:
	dec  hl                                          ; $6d0e: $2b
	jr   nz, @+$29                                   ; $6d0f: $20 $27

	ld   e, h                                        ; $6d11: $5c
	and  b                                           ; $6d12: $a0
	dec  b                                           ; $6d13: $05
	daa                                              ; $6d14: $27
	inc  b                                           ; $6d15: $04
	and  b                                           ; $6d16: $a0
	dec  c                                           ; $6d17: $0d
	daa                                              ; $6d18: $27

jr_0fe_6d19:
	dec  bc                                          ; $6d19: $0b
	ld   h, $0b                                      ; $6d1a: $26 $0b
	ld   [hl+], a                                    ; $6d1c: $22
	ld   a, [bc]                                     ; $6d1d: $0a
	dec  h                                           ; $6d1e: $25
	ld   e, h                                        ; $6d1f: $5c
	and  b                                           ; $6d20: $a0
	dec  b                                           ; $6d21: $05
	dec  h                                           ; $6d22: $25
	inc  b                                           ; $6d23: $04
	and  b                                           ; $6d24: $a0
	dec  c                                           ; $6d25: $0d
	dec  h                                           ; $6d26: $25
	dec  bc                                          ; $6d27: $0b
	inc  h                                           ; $6d28: $24
	dec  bc                                          ; $6d29: $0b
	jr   nz, jr_0fe_6d36                             ; $6d2a: $20 $0a

	inc  hl                                          ; $6d2c: $23
	ld   h, b                                        ; $6d2d: $60
	ld   hl, $a01c                                   ; $6d2e: $21 $1c $a0
	dec  b                                           ; $6d31: $05
	ld   hl, $a004                                   ; $6d32: $21 $04 $a0
	dec  c                                           ; $6d35: $0d

jr_0fe_6d36:
	ld   hl, $a058                                   ; $6d36: $21 $58 $a0
	dec  b                                           ; $6d39: $05
	ld   hl, $a008                                   ; $6d3a: $21 $08 $a0
	dec  c                                           ; $6d3d: $0d
	jr   nz, jr_0fe_6d60                             ; $6d3e: $20 $20

	add  hl, de                                      ; $6d40: $19
	ld   e, b                                        ; $6d41: $58
	and  b                                           ; $6d42: $a0
	dec  b                                           ; $6d43: $05
	add  hl, de                                      ; $6d44: $19
	ld   [$0da0], sp                                 ; $6d45: $08 $a0 $0d
	jr   nz, @+$22                                   ; $6d48: $20 $20

jr_0fe_6d4a:
	add  hl, de                                      ; $6d4a: $19
	sub  b                                           ; $6d4b: $90
	and  b                                           ; $6d4c: $a0
	dec  b                                           ; $6d4d: $05
	add  hl, de                                      ; $6d4e: $19
	db   $10                                         ; $6d4f: $10
	and  b                                           ; $6d50: $a0
	dec  c                                           ; $6d51: $0d
	add  hl, de                                      ; $6d52: $19
	ld   [$0824], sp                                 ; $6d53: $08 $24 $08
	dec  de                                          ; $6d56: $1b
	ld   [$0820], sp                                 ; $6d57: $08 $20 $08
	or   b                                           ; $6d5a: $b0
	di                                               ; $6d5b: $f3
	rst  $38                                         ; $6d5c: $ff
	rst  $38                                         ; $6d5d: $ff
	ld   b, $80                                      ; $6d5e: $06 $80

jr_0fe_6d60:
	ld   [bc], a                                     ; $6d60: $02
	inc  bc                                          ; $6d61: $03
	rra                                              ; $6d62: $1f
	jr   nz, jr_0fe_6d08                             ; $6d63: $20 $a3

	jr   z, jr_0fe_6d09                              ; $6d65: $28 $a2

	rst  $38                                         ; $6d67: $ff
	db   $fd                                         ; $6d68: $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $6d69: $f0 $a0
	ld   [bc], a                                     ; $6d6b: $02
	add  hl, de                                      ; $6d6c: $19
	ld   a, a                                        ; $6d6d: $7f
	rra                                              ; $6d6e: $1f
	ld   bc, $f0b2                                   ; $6d6f: $01 $b2 $f0
	db   $fd                                         ; $6d72: $fd
	di                                               ; $6d73: $f3
	and  e                                           ; $6d74: $a3
	jr   z, jr_0fe_6d19                              ; $6d75: $28 $a2

	rst  $38                                         ; $6d77: $ff
	and  b                                           ; $6d78: $a0
	ld   [bc], a                                     ; $6d79: $02
	add  hl, de                                      ; $6d7a: $19
	ld   a, a                                        ; $6d7b: $7f
	rra                                              ; $6d7c: $1f
	ld   bc, $4019                                   ; $6d7d: $01 $19 $40
	and  d                                           ; $6d80: $a2
	ld   b, b                                        ; $6d81: $40
	add  hl, sp                                      ; $6d82: $39
	jr   nz, jr_0fe_6db9                             ; $6d83: $20 $34

	jr   @+$2d                                       ; $6d85: $18 $2b

	ld   c, b                                        ; $6d87: $48
	and  d                                           ; $6d88: $a2
	rst  $38                                         ; $6d89: $ff
	add  hl, de                                      ; $6d8a: $19
	add  b                                           ; $6d8b: $80
	jr   nz, jr_0fe_6d0e                             ; $6d8c: $20 $80

	dec  d                                           ; $6d8e: $15
	add  b                                           ; $6d8f: $80
	inc  hl                                          ; $6d90: $23
	add  b                                           ; $6d91: $80
	ld   d, $80                                      ; $6d92: $16 $80
	add  hl, de                                      ; $6d94: $19
	ld   h, b                                        ; $6d95: $60
	dec  d                                           ; $6d96: $15
	jr   nz, @+$1b                                   ; $6d97: $20 $19

	ret  nz                                          ; $6d99: $c0

	or   b                                           ; $6d9a: $b0
	di                                               ; $6d9b: $f3
	rst  $38                                         ; $6d9c: $ff
	rst  $38                                         ; $6d9d: $ff
	ld   b, $00                                      ; $6d9e: $06 $00
	add  hl, bc                                      ; $6da0: $09
	nop                                              ; $6da1: $00
	db   $fd                                         ; $6da2: $fd
	ldh  a, [$c1]                                    ; $6da3: $f0 $c1
	inc  bc                                          ; $6da5: $03
	and  b                                           ; $6da6: $a0
	ld   [$0101], sp                                 ; $6da7: $08 $01 $01
	and  b                                           ; $6daa: $a0
	inc  b                                           ; $6dab: $04
	nop                                              ; $6dac: $00
	ld   [bc], a                                     ; $6dad: $02
	pop  bc                                          ; $6dae: $c1
	inc  bc                                          ; $6daf: $03
	and  b                                           ; $6db0: $a0
	ld   [$0101], sp                                 ; $6db1: $08 $01 $01
	and  b                                           ; $6db4: $a0
	inc  b                                           ; $6db5: $04
	nop                                              ; $6db6: $00
	ld   [bc], a                                     ; $6db7: $02
	pop  bc                                          ; $6db8: $c1

jr_0fe_6db9:
	inc  bc                                          ; $6db9: $03
	and  b                                           ; $6dba: $a0
	ld   [$0101], sp                                 ; $6dbb: $08 $01 $01
	and  b                                           ; $6dbe: $a0
	inc  b                                           ; $6dbf: $04
	nop                                              ; $6dc0: $00
	ld   bc, $f0b3                                   ; $6dc1: $01 $b3 $f0
	xor  h                                           ; $6dc4: $ac
	ld   bc, $01ae                                   ; $6dc5: $01 $ae $01
	and  b                                           ; $6dc8: $a0
	dec  c                                           ; $6dc9: $0d
	rla                                              ; $6dca: $17
	ld   bc, $0aa0                                   ; $6dcb: $01 $a0 $0a
	db   $10                                         ; $6dce: $10
	ld   bc, $01a0                                   ; $6dcf: $01 $a0 $01
	nop                                              ; $6dd2: $00
	ld   l, $c1                                      ; $6dd3: $2e $c1
	inc  bc                                          ; $6dd5: $03
	and  b                                           ; $6dd6: $a0
	rlca                                             ; $6dd7: $07
	ld   [bc], a                                     ; $6dd8: $02
	ld   bc, $01a0                                   ; $6dd9: $01 $a0 $01
	nop                                              ; $6ddc: $00
	rlca                                             ; $6ddd: $07
	pop  bc                                          ; $6dde: $c1
	inc  bc                                          ; $6ddf: $03
	and  b                                           ; $6de0: $a0
	rlca                                             ; $6de1: $07
	ld   [bc], a                                     ; $6de2: $02
	ld   bc, $01a0                                   ; $6de3: $01 $a0 $01
	nop                                              ; $6de6: $00
	rlca                                             ; $6de7: $07
	xor  h                                           ; $6de8: $ac
	ld   bc, $01ae                                   ; $6de9: $01 $ae $01
	and  b                                           ; $6dec: $a0
	dec  c                                           ; $6ded: $0d
	rla                                              ; $6dee: $17
	ld   bc, $0aa0                                   ; $6def: $01 $a0 $0a
	db   $10                                         ; $6df2: $10
	ld   bc, $01a0                                   ; $6df3: $01 $a0 $01
	nop                                              ; $6df6: $00
	ld   a, $1f                                      ; $6df7: $3e $1f
	ld   b, b                                        ; $6df9: $40
	db   $fd                                         ; $6dfa: $fd
	ldh  a, [$c1]                                    ; $6dfb: $f0 $c1
	inc  bc                                          ; $6dfd: $03
	and  b                                           ; $6dfe: $a0
	ld   [$0101], sp                                 ; $6dff: $08 $01 $01
	and  b                                           ; $6e02: $a0
	inc  b                                           ; $6e03: $04
	nop                                              ; $6e04: $00
	ld   [bc], a                                     ; $6e05: $02
	pop  bc                                          ; $6e06: $c1
	inc  bc                                          ; $6e07: $03
	and  b                                           ; $6e08: $a0
	ld   [$0101], sp                                 ; $6e09: $08 $01 $01
	and  b                                           ; $6e0c: $a0
	inc  b                                           ; $6e0d: $04
	nop                                              ; $6e0e: $00
	ld   [bc], a                                     ; $6e0f: $02
	pop  bc                                          ; $6e10: $c1
	inc  bc                                          ; $6e11: $03
	and  b                                           ; $6e12: $a0
	ld   [$0101], sp                                 ; $6e13: $08 $01 $01
	and  b                                           ; $6e16: $a0
	inc  b                                           ; $6e17: $04
	nop                                              ; $6e18: $00
	ld   bc, $f0b3                                   ; $6e19: $01 $b3 $f0
	pop  bc                                          ; $6e1c: $c1
	inc  bc                                          ; $6e1d: $03
	and  b                                           ; $6e1e: $a0
	ld   [$0101], sp                                 ; $6e1f: $08 $01 $01
	and  b                                           ; $6e22: $a0
	inc  b                                           ; $6e23: $04
	nop                                              ; $6e24: $00
	rra                                              ; $6e25: $1f
	db   $fd                                         ; $6e26: $fd
	di                                               ; $6e27: $f3
	xor  h                                           ; $6e28: $ac
	ld   bc, $01ae                                   ; $6e29: $01 $ae $01
	and  b                                           ; $6e2c: $a0
	dec  c                                           ; $6e2d: $0d
	rla                                              ; $6e2e: $17
	ld   bc, $0aa0                                   ; $6e2f: $01 $a0 $0a
	db   $10                                         ; $6e32: $10
	ld   bc, $01a0                                   ; $6e33: $01 $a0 $01
	nop                                              ; $6e36: $00
	ld   [hl], $a0                                   ; $6e37: $36 $a0
	dec  c                                           ; $6e39: $0d
	rla                                              ; $6e3a: $17
	ld   bc, $0aa0                                   ; $6e3b: $01 $a0 $0a
	db   $10                                         ; $6e3e: $10
	ld   bc, $01a0                                   ; $6e3f: $01 $a0 $01
	nop                                              ; $6e42: $00
	ld   b, $ac                                      ; $6e43: $06 $ac
	ld   bc, $01ae                                   ; $6e45: $01 $ae $01
	and  b                                           ; $6e48: $a0
	dec  c                                           ; $6e49: $0d
	rla                                              ; $6e4a: $17
	ld   bc, $0aa0                                   ; $6e4b: $01 $a0 $0a
	db   $10                                         ; $6e4e: $10
	ld   bc, $01a0                                   ; $6e4f: $01 $a0 $01
	nop                                              ; $6e52: $00
	ld   a, $1f                                      ; $6e53: $3e $1f
	ld   b, b                                        ; $6e55: $40
	xor  h                                           ; $6e56: $ac
	ld   bc, $01ae                                   ; $6e57: $01 $ae $01
	and  b                                           ; $6e5a: $a0
	dec  c                                           ; $6e5b: $0d
	rla                                              ; $6e5c: $17
	ld   bc, $0aa0                                   ; $6e5d: $01 $a0 $0a
	db   $10                                         ; $6e60: $10
	ld   bc, $01a0                                   ; $6e61: $01 $a0 $01
	nop                                              ; $6e64: $00
	ld   [hl], $a0                                   ; $6e65: $36 $a0
	dec  c                                           ; $6e67: $0d
	rla                                              ; $6e68: $17
	ld   bc, $0aa0                                   ; $6e69: $01 $a0 $0a
	db   $10                                         ; $6e6c: $10
	ld   bc, $01a0                                   ; $6e6d: $01 $a0 $01
	nop                                              ; $6e70: $00
	ld   b, $ac                                      ; $6e71: $06 $ac
	ld   bc, $01ae                                   ; $6e73: $01 $ae $01
	and  b                                           ; $6e76: $a0
	dec  c                                           ; $6e77: $0d
	rla                                              ; $6e78: $17
	ld   bc, $0aa0                                   ; $6e79: $01 $a0 $0a
	db   $10                                         ; $6e7c: $10
	ld   bc, $01a0                                   ; $6e7d: $01 $a0 $01
	nop                                              ; $6e80: $00
	ld   a, $ac                                      ; $6e81: $3e $ac
	ld   bc, $01ae                                   ; $6e83: $01 $ae $01
	and  b                                           ; $6e86: $a0
	dec  c                                           ; $6e87: $0d
	rla                                              ; $6e88: $17
	ld   bc, $0aa0                                   ; $6e89: $01 $a0 $0a
	db   $10                                         ; $6e8c: $10
	ld   bc, $01a0                                   ; $6e8d: $01 $a0 $01
	nop                                              ; $6e90: $00
	ld   b, $c1                                      ; $6e91: $06 $c1
	inc  bc                                          ; $6e93: $03
	and  b                                           ; $6e94: $a0
	rlca                                             ; $6e95: $07
	ld   [bc], a                                     ; $6e96: $02
	ld   bc, $01a0                                   ; $6e97: $01 $a0 $01
	nop                                              ; $6e9a: $00
	rla                                              ; $6e9b: $17
	pop  bc                                          ; $6e9c: $c1
	inc  bc                                          ; $6e9d: $03
	and  b                                           ; $6e9e: $a0
	rlca                                             ; $6e9f: $07
	ld   [bc], a                                     ; $6ea0: $02
	ld   bc, $01a0                                   ; $6ea1: $01 $a0 $01
	nop                                              ; $6ea4: $00
	rla                                              ; $6ea5: $17
	and  b                                           ; $6ea6: $a0
	dec  c                                           ; $6ea7: $0d
	rla                                              ; $6ea8: $17
	ld   bc, $0aa0                                   ; $6ea9: $01 $a0 $0a
	db   $10                                         ; $6eac: $10
	ld   bc, $01a0                                   ; $6ead: $01 $a0 $01
	nop                                              ; $6eb0: $00
	ld   b, $ac                                      ; $6eb1: $06 $ac
	ld   bc, $01ae                                   ; $6eb3: $01 $ae $01
	and  b                                           ; $6eb6: $a0
	dec  c                                           ; $6eb7: $0d
	rla                                              ; $6eb8: $17
	ld   bc, $0aa0                                   ; $6eb9: $01 $a0 $0a
	db   $10                                         ; $6ebc: $10
	ld   bc, $01a0                                   ; $6ebd: $01 $a0 $01
	nop                                              ; $6ec0: $00
	ld   b, $c1                                      ; $6ec1: $06 $c1
	inc  bc                                          ; $6ec3: $03
	and  b                                           ; $6ec4: $a0
	rlca                                             ; $6ec5: $07
	ld   [bc], a                                     ; $6ec6: $02
	ld   bc, $01a0                                   ; $6ec7: $01 $a0 $01
	nop                                              ; $6eca: $00
	rla                                              ; $6ecb: $17
	pop  bc                                          ; $6ecc: $c1
	inc  bc                                          ; $6ecd: $03
	and  b                                           ; $6ece: $a0
	rlca                                             ; $6ecf: $07
	ld   [bc], a                                     ; $6ed0: $02
	ld   bc, $01a0                                   ; $6ed1: $01 $a0 $01
	nop                                              ; $6ed4: $00
	rrca                                             ; $6ed5: $0f
	pop  bc                                          ; $6ed6: $c1
	inc  bc                                          ; $6ed7: $03
	and  b                                           ; $6ed8: $a0
	rlca                                             ; $6ed9: $07
	ld   [bc], a                                     ; $6eda: $02
	ld   bc, $01a0                                   ; $6edb: $01 $a0 $01
	nop                                              ; $6ede: $00
	rrca                                             ; $6edf: $0f
	xor  h                                           ; $6ee0: $ac
	ld   bc, $01ae                                   ; $6ee1: $01 $ae $01
	and  b                                           ; $6ee4: $a0
	dec  c                                           ; $6ee5: $0d
	rla                                              ; $6ee6: $17
	ld   bc, $0aa0                                   ; $6ee7: $01 $a0 $0a
	db   $10                                         ; $6eea: $10
	ld   bc, $01a0                                   ; $6eeb: $01 $a0 $01
	nop                                              ; $6eee: $00
	ld   [hl], $a0                                   ; $6eef: $36 $a0
	dec  c                                           ; $6ef1: $0d
	rla                                              ; $6ef2: $17
	ld   bc, $0aa0                                   ; $6ef3: $01 $a0 $0a
	db   $10                                         ; $6ef6: $10
	ld   bc, $01a0                                   ; $6ef7: $01 $a0 $01
	nop                                              ; $6efa: $00
	ld   b, $ac                                      ; $6efb: $06 $ac
	ld   bc, $01ae                                   ; $6efd: $01 $ae $01
	and  b                                           ; $6f00: $a0
	dec  c                                           ; $6f01: $0d
	rla                                              ; $6f02: $17
	ld   bc, $0aa0                                   ; $6f03: $01 $a0 $0a
	db   $10                                         ; $6f06: $10
	ld   bc, $01a0                                   ; $6f07: $01 $a0 $01
	nop                                              ; $6f0a: $00
	ld   a, $ac                                      ; $6f0b: $3e $ac
	ld   bc, $01ae                                   ; $6f0d: $01 $ae $01
	and  b                                           ; $6f10: $a0
	dec  c                                           ; $6f11: $0d
	rla                                              ; $6f12: $17
	ld   bc, $0aa0                                   ; $6f13: $01 $a0 $0a
	db   $10                                         ; $6f16: $10
	ld   bc, $01a0                                   ; $6f17: $01 $a0 $01
	nop                                              ; $6f1a: $00
	ld   a, $fd                                      ; $6f1b: $3e $fd
	ldh  a, [$c1]                                    ; $6f1d: $f0 $c1
	inc  bc                                          ; $6f1f: $03
	and  b                                           ; $6f20: $a0
	ld   [$0101], sp                                 ; $6f21: $08 $01 $01
	and  b                                           ; $6f24: $a0
	inc  b                                           ; $6f25: $04
	nop                                              ; $6f26: $00
	ld   [bc], a                                     ; $6f27: $02
	pop  bc                                          ; $6f28: $c1
	inc  bc                                          ; $6f29: $03
	and  b                                           ; $6f2a: $a0
	ld   [$0101], sp                                 ; $6f2b: $08 $01 $01
	and  b                                           ; $6f2e: $a0
	inc  b                                           ; $6f2f: $04
	nop                                              ; $6f30: $00
	ld   [bc], a                                     ; $6f31: $02
	pop  bc                                          ; $6f32: $c1
	inc  bc                                          ; $6f33: $03
	and  b                                           ; $6f34: $a0
	ld   [$0101], sp                                 ; $6f35: $08 $01 $01
	and  b                                           ; $6f38: $a0
	inc  b                                           ; $6f39: $04
	nop                                              ; $6f3a: $00
	ld   bc, $f0b3                                   ; $6f3b: $01 $b3 $f0
	pop  bc                                          ; $6f3e: $c1
	inc  bc                                          ; $6f3f: $03
	and  b                                           ; $6f40: $a0
	ld   [$0101], sp                                 ; $6f41: $08 $01 $01
	and  b                                           ; $6f44: $a0
	inc  b                                           ; $6f45: $04
	nop                                              ; $6f46: $00
	rra                                              ; $6f47: $1f
	or   b                                           ; $6f48: $b0
	di                                               ; $6f49: $f3
	rst  $38                                         ; $6f4a: $ff
	rst  $38                                         ; $6f4b: $ff
	and  b                                           ; $6f4c: $a0
	dec  c                                           ; $6f4d: $0d
	rla                                              ; $6f4e: $17
	ld   bc, $0aa0                                   ; $6f4f: $01 $a0 $0a
	db   $10                                         ; $6f52: $10
	ld   bc, $01a0                                   ; $6f53: $01 $a0 $01
	nop                                              ; $6f56: $00
	ld   e, $a0                                      ; $6f57: $1e $a0
	dec  c                                           ; $6f59: $0d
	rla                                              ; $6f5a: $17
	ld   bc, $0aa0                                   ; $6f5b: $01 $a0 $0a
	db   $10                                         ; $6f5e: $10
	ld   bc, $01a0                                   ; $6f5f: $01 $a0 $01
	nop                                              ; $6f62: $00
	ld   d, $a0                                      ; $6f63: $16 $a0
	dec  c                                           ; $6f65: $0d
	rla                                              ; $6f66: $17
	ld   bc, $0aa0                                   ; $6f67: $01 $a0 $0a
	db   $10                                         ; $6f6a: $10
	ld   bc, $01a0                                   ; $6f6b: $01 $a0 $01
	nop                                              ; $6f6e: $00
	ld   b, $ad                                      ; $6f6f: $06 $ad
	nop                                              ; $6f71: $00
	dec  bc                                          ; $6f72: $0b
	nop                                              ; $6f73: $00
	add  hl, bc                                      ; $6f74: $09
	nop                                              ; $6f75: $00
	and  e                                           ; $6f76: $a3
	inc  h                                           ; $6f77: $24
	and  d                                           ; $6f78: $a2
	nop                                              ; $6f79: $00
	rst  ToBoot                                         ; $6f7a: $c7
	ld   h, b                                        ; $6f7b: $60
	and  b                                           ; $6f7c: $a0
	ld   a, [bc]                                     ; $6f7d: $0a
	ld   [hl+], a                                    ; $6f7e: $22
	ld   [$0829], sp                                 ; $6f7f: $08 $29 $08
	ld   a, [hl+]                                    ; $6f82: $2a
	ld   [$0835], sp                                 ; $6f83: $08 $35 $08
	jr   c, jr_0fe_6f8b                              ; $6f86: $38 $03

	ld   sp, $3303                                   ; $6f88: $31 $03 $33

jr_0fe_6f8b:
	ld   [bc], a                                     ; $6f8b: $02
	dec  [hl]                                        ; $6f8c: $35
	inc  bc                                          ; $6f8d: $03
	jr   c, jr_0fe_6f93                              ; $6f8e: $38 $03

	ld   b, b                                        ; $6f90: $40
	ld   [bc], a                                     ; $6f91: $02
	and  b                                           ; $6f92: $a0

jr_0fe_6f93:
	dec  b                                           ; $6f93: $05
	ld   b, h                                        ; $6f94: $44
	ld   [$0aa0], sp                                 ; $6f95: $08 $a0 $0a
	add  hl, de                                      ; $6f98: $19
	db   $10                                         ; $6f99: $10

jr_0fe_6f9a:
	dec  h                                           ; $6f9a: $25
	jr   z, jr_0fe_6f9a                              ; $6f9b: $28 $fd

	di                                               ; $6f9d: $f3
	ld   [hl], $10                                   ; $6f9e: $36 $10
	inc  h                                           ; $6fa0: $24
	ld   b, $22                                      ; $6fa1: $06 $22
	ld   a, [hl+]                                    ; $6fa3: $2a
	jr   nc, jr_0fe_6fcc                             ; $6fa4: $30 $26

	ld   b, d                                        ; $6fa6: $42
	ld   a, [bc]                                     ; $6fa7: $0a
	dec  sp                                          ; $6fa8: $3b
	dec  bc                                          ; $6fa9: $0b
	inc  [hl]                                        ; $6faa: $34
	dec  b                                           ; $6fab: $05
	inc  [hl]                                        ; $6fac: $34
	db   $10                                         ; $6fad: $10
	add  hl, hl                                      ; $6fae: $29
	jr   c, @+$1b                                    ; $6faf: $38 $19

	db   $10                                         ; $6fb1: $10
	add  hl, de                                      ; $6fb2: $19
	ld   [$081f], sp                                 ; $6fb3: $08 $1f $08
	ld   [hl+], a                                    ; $6fb6: $22
	db   $10                                         ; $6fb7: $10
	dec  de                                          ; $6fb8: $1b
	ld   [$081f], sp                                 ; $6fb9: $08 $1f $08
	dec  de                                          ; $6fbc: $1b
	ld   [$0b24], sp                                 ; $6fbd: $08 $24 $0b
	ld   [hl+], a                                    ; $6fc0: $22
	dec  b                                           ; $6fc1: $05
	ld   hl, $1f20                                   ; $6fc2: $21 $20 $1f
	ld   [$1019], sp                                 ; $6fc5: $08 $19 $10
	inc  h                                           ; $6fc8: $24
	ld   [$2025], sp                                 ; $6fc9: $08 $25 $20

jr_0fe_6fcc:
	ld   h, $08                                      ; $6fcc: $26 $08
	dec  de                                          ; $6fce: $1b
	db   $10                                         ; $6fcf: $10
	dec  de                                          ; $6fd0: $1b
	ld   [$2028], sp                                 ; $6fd1: $08 $28 $20
	rra                                              ; $6fd4: $1f
	ld   [$1019], sp                                 ; $6fd5: $08 $19 $10
	dec  h                                           ; $6fd8: $25
	jr   z, jr_0fe_6f8b                              ; $6fd9: $28 $b0

	di                                               ; $6fdb: $f3
	rst  $38                                         ; $6fdc: $ff
	rst  $38                                         ; $6fdd: $ff
	dec  bc                                          ; $6fde: $0b
	nop                                              ; $6fdf: $00
	add  hl, bc                                      ; $6fe0: $09
	nop                                              ; $6fe1: $00
	and  e                                           ; $6fe2: $a3
	inc  h                                           ; $6fe3: $24
	and  d                                           ; $6fe4: $a2
	ld   bc, $60c7                                   ; $6fe5: $01 $c7 $60
	and  b                                           ; $6fe8: $a0
	ld   a, [bc]                                     ; $6fe9: $0a
	db   $10                                         ; $6fea: $10
	jr   nz, jr_0fe_6ff7                             ; $6feb: $20 $0a

	db   $10                                         ; $6fed: $10
	inc  [hl]                                        ; $6fee: $34
	ld   b, $35                                      ; $6fef: $06 $35
	dec  b                                           ; $6ff1: $05
	add  hl, sp                                      ; $6ff2: $39
	dec  b                                           ; $6ff3: $05
	ld   b, h                                        ; $6ff4: $44
	jr   nz, jr_0fe_7039                             ; $6ff5: $20 $42

jr_0fe_6ff7:
	ld   b, $40                                      ; $6ff7: $06 $40
	dec  b                                           ; $6ff9: $05
	dec  sp                                          ; $6ffa: $3b
	dec  b                                           ; $6ffb: $05
	db   $fd                                         ; $6ffc: $fd
	di                                               ; $6ffd: $f3
	rra                                              ; $6ffe: $1f
	ld   [bc], a                                     ; $6fff: $02
	add  hl, sp                                      ; $7000: $39
	ld   l, $3b                                      ; $7001: $2e $3b
	ld   [de], a                                     ; $7003: $12
	dec  sp                                          ; $7004: $3b
	ld   e, $3b                                      ; $7005: $1e $3b
	dec  bc                                          ; $7007: $0b
	ld   b, b                                        ; $7008: $40
	dec  bc                                          ; $7009: $0b
	scf                                              ; $700a: $37
	ld   a, [bc]                                     ; $700b: $0a
	rra                                              ; $700c: $1f
	ld   [bc], a                                     ; $700d: $02
	add  hl, sp                                      ; $700e: $39
	ld   a, $39                                      ; $700f: $3e $39
	jr   nz, @+$21                                   ; $7011: $20 $1f

	ld   [$083b], sp                                 ; $7013: $08 $3b $08
	scf                                              ; $7016: $37
	ld   [$0835], sp                                 ; $7017: $08 $35 $08
	scf                                              ; $701a: $37
	jr   z, jr_0fe_7048                              ; $701b: $28 $2b

	ld   [$0831], sp                                 ; $701d: $08 $31 $08
	scf                                              ; $7020: $37
	ld   [$0637], sp                                 ; $7021: $08 $37 $06
	dec  [hl]                                        ; $7024: $35
	dec  b                                           ; $7025: $05
	inc  [hl]                                        ; $7026: $34
	dec  b                                           ; $7027: $05
	ld   [hl-], a                                    ; $7028: $32

jr_0fe_7029:
	jr   nz, jr_0fe_7056                             ; $7029: $20 $2b

	ld   [de], a                                     ; $702b: $12
	inc  [hl]                                        ; $702c: $34
	ld   e, $2b                                      ; $702d: $1e $2b
	jr   nz, jr_0fe_7065                             ; $702f: $20 $34

	ld   b, $35                                      ; $7031: $06 $35
	dec  b                                           ; $7033: $05
	add  hl, sp                                      ; $7034: $39
	dec  b                                           ; $7035: $05
	ld   b, h                                        ; $7036: $44
	jr   nz, @+$44                                   ; $7037: $20 $42

jr_0fe_7039:
	ld   b, $40                                      ; $7039: $06 $40
	dec  b                                           ; $703b: $05
	dec  sp                                          ; $703c: $3b
	dec  b                                           ; $703d: $05
	or   b                                           ; $703e: $b0
	di                                               ; $703f: $f3
	rst  $38                                         ; $7040: $ff
	rst  $38                                         ; $7041: $ff
	dec  bc                                          ; $7042: $0b
	ld   b, b                                        ; $7043: $40
	ld   [bc], a                                     ; $7044: $02
	ld   [bc], a                                     ; $7045: $02
	and  e                                           ; $7046: $a3
	inc  h                                           ; $7047: $24

jr_0fe_7048:
	and  d                                           ; $7048: $a2
	ld   h, b                                        ; $7049: $60
	and  b                                           ; $704a: $a0
	inc  b                                           ; $704b: $04
	ld   a, [hl+]                                    ; $704c: $2a
	ld   b, $29                                      ; $704d: $06 $29
	dec  b                                           ; $704f: $05
	daa                                              ; $7050: $27
	dec  b                                           ; $7051: $05
	ld   [hl-], a                                    ; $7052: $32
	ld   b, $30                                      ; $7053: $06 $30
	dec  b                                           ; $7055: $05

jr_0fe_7056:
	ld   a, [hl+]                                    ; $7056: $2a
	dec  b                                           ; $7057: $05
	ld   b, l                                        ; $7058: $45
	inc  bc                                          ; $7059: $03
	ld   a, [hl-]                                    ; $705a: $3a

jr_0fe_705b:
	inc  bc                                          ; $705b: $03
	ld   b, b                                        ; $705c: $40
	ld   [bc], a                                     ; $705d: $02
	ld   b, c                                        ; $705e: $41
	inc  bc                                          ; $705f: $03
	ld   b, l                                        ; $7060: $45
	inc  bc                                          ; $7061: $03
	ld   c, b                                        ; $7062: $48
	ld   [bc], a                                     ; $7063: $02

jr_0fe_7064:
	ld   [hl+], a                                    ; $7064: $22

jr_0fe_7065:
	db   $10                                         ; $7065: $10
	scf                                              ; $7066: $37
	db   $10                                         ; $7067: $10

jr_0fe_7068:
	add  hl, sp                                      ; $7068: $39
	jr   nz, jr_0fe_7068                             ; $7069: $20 $fd

	di                                               ; $706b: $f3
	inc  h                                           ; $706c: $24
	ld   [$122b], sp                                 ; $706d: $08 $2b $12
	ld   sp, $2b06                                   ; $7070: $31 $06 $2b
	jr   nz, jr_0fe_708e                             ; $7073: $20 $19

	ld   [$0824], sp                                 ; $7075: $08 $24 $08
	dec  hl                                          ; $7078: $2b
	ld   [$0829], sp                                 ; $7079: $08 $29 $08
	jr   z, jr_0fe_708e                              ; $707c: $28 $10

	daa                                              ; $707e: $27
	db   $10                                         ; $707f: $10
	dec  h                                           ; $7080: $25
	ld   [$1830], sp                                 ; $7081: $08 $30 $18
	and  b                                           ; $7084: $a0
	ld   b, $42                                      ; $7085: $06 $42
	jr   nz, jr_0fe_7029                             ; $7087: $20 $a0

	inc  b                                           ; $7089: $04
	ld   [hl+], a                                    ; $708a: $22
	db   $10                                         ; $708b: $10
	dec  [hl]                                        ; $708c: $35
	db   $10                                         ; $708d: $10

jr_0fe_708e:
	daa                                              ; $708e: $27
	db   $10                                         ; $708f: $10
	dec  [hl]                                        ; $7090: $35
	db   $10                                         ; $7091: $10
	inc  h                                           ; $7092: $24
	ld   d, $2b                                      ; $7093: $16 $2b
	ld   a, [bc]                                     ; $7095: $0a
	rra                                              ; $7096: $1f
	db   $10                                         ; $7097: $10
	add  hl, de                                      ; $7098: $19
	db   $10                                         ; $7099: $10
	ld   [hl+], a                                    ; $709a: $22
	db   $10                                         ; $709b: $10
	ld   [hl-], a                                    ; $709c: $32
	jr   nc, jr_0fe_70c3                             ; $709d: $30 $24

	db   $10                                         ; $709f: $10
	inc  [hl]                                        ; $70a0: $34
	db   $10                                         ; $70a1: $10
	ld   [hl-], a                                    ; $70a2: $32
	jr   nz, jr_0fe_70c7                             ; $70a3: $20 $22

	db   $10                                         ; $70a5: $10
	scf                                              ; $70a6: $37
	db   $10                                         ; $70a7: $10
	add  hl, sp                                      ; $70a8: $39
	jr   nz, jr_0fe_705b                             ; $70a9: $20 $b0

	di                                               ; $70ab: $f3
	rst  $38                                         ; $70ac: $ff
	rst  $38                                         ; $70ad: $ff
	dec  bc                                          ; $70ae: $0b
	nop                                              ; $70af: $00
	add  hl, bc                                      ; $70b0: $09
	nop                                              ; $70b1: $00
	rst  $38                                         ; $70b2: $ff
	rst  $38                                         ; $70b3: $ff
	add  hl, bc                                      ; $70b4: $09
	nop                                              ; $70b5: $00
	add  hl, bc                                      ; $70b6: $09
	nop                                              ; $70b7: $00

jr_0fe_70b8:
	rra                                              ; $70b8: $1f
	jr   nz, jr_0fe_70b8                             ; $70b9: $20 $fd

	di                                               ; $70bb: $f3
	and  d                                           ; $70bc: $a2
	nop                                              ; $70bd: $00
	rst  ToBoot                                         ; $70be: $c7
	jr   nz, jr_0fe_7064                             ; $70bf: $20 $a3

	ld   h, $1f                                      ; $70c1: $26 $1f

jr_0fe_70c3:
	ld   [$0aa0], sp                                 ; $70c3: $08 $a0 $0a
	ld   b, d                                        ; $70c6: $42

jr_0fe_70c7:
	ld   d, h                                        ; $70c7: $54
	and  b                                           ; $70c8: $a0
	dec  b                                           ; $70c9: $05
	ld   b, d                                        ; $70ca: $42
	inc  b                                           ; $70cb: $04
	rst  ToBoot                                         ; $70cc: $c7
	ld   b, b                                        ; $70cd: $40
	and  b                                           ; $70ce: $a0
	ld   a, [bc]                                     ; $70cf: $0a
	dec  sp                                          ; $70d0: $3b
	db   $10                                         ; $70d1: $10
	dec  de                                          ; $70d2: $1b
	db   $10                                         ; $70d3: $10
	jr   nz, jr_0fe_70f6                             ; $70d4: $20 $20

	add  hl, de                                      ; $70d6: $19
	db   $10                                         ; $70d7: $10
	rla                                              ; $70d8: $17
	db   $10                                         ; $70d9: $10
	rst  ToBoot                                         ; $70da: $c7
	jr   nz, @-$5e                                   ; $70db: $20 $a0

	dec  bc                                          ; $70dd: $0b
	inc  h                                           ; $70de: $24
	db   $10                                         ; $70df: $10
	ld   [hl+], a                                    ; $70e0: $22
	ld   [$0424], sp                                 ; $70e1: $08 $24 $04
	dec  h                                           ; $70e4: $25
	inc  b                                           ; $70e5: $04
	ld   h, $10                                      ; $70e6: $26 $10
	ld   h, $08                                      ; $70e8: $26 $08
	daa                                              ; $70ea: $27
	inc  b                                           ; $70eb: $04
	jr   z, jr_0fe_70f2                              ; $70ec: $28 $04

	add  hl, hl                                      ; $70ee: $29
	inc  b                                           ; $70ef: $04
	and  b                                           ; $70f0: $a0
	ld   a, [bc]                                     ; $70f1: $0a

jr_0fe_70f2:
	add  hl, hl                                      ; $70f2: $29
	inc  b                                           ; $70f3: $04
	and  b                                           ; $70f4: $a0
	inc  bc                                          ; $70f5: $03

jr_0fe_70f6:
	ld   b, [hl]                                     ; $70f6: $46
	inc  bc                                          ; $70f7: $03
	ld   b, h                                        ; $70f8: $44
	inc  bc                                          ; $70f9: $03
	ld   b, d                                        ; $70fa: $42
	ld   [bc], a                                     ; $70fb: $02
	dec  sp                                          ; $70fc: $3b
	inc  bc                                          ; $70fd: $03
	add  hl, sp                                      ; $70fe: $39
	inc  bc                                          ; $70ff: $03
	inc  [hl]                                        ; $7100: $34
	ld   [bc], a                                     ; $7101: $02
	ld   b, d                                        ; $7102: $42
	inc  bc                                          ; $7103: $03
	dec  sp                                          ; $7104: $3b
	inc  bc                                          ; $7105: $03
	add  hl, sp                                      ; $7106: $39
	ld   [bc], a                                     ; $7107: $02
	inc  [hl]                                        ; $7108: $34
	inc  bc                                          ; $7109: $03
	ld   [hl-], a                                    ; $710a: $32
	inc  bc                                          ; $710b: $03
	add  hl, hl                                      ; $710c: $29
	ld   [bc], a                                     ; $710d: $02
	add  hl, sp                                      ; $710e: $39
	inc  bc                                          ; $710f: $03
	inc  [hl]                                        ; $7110: $34
	inc  bc                                          ; $7111: $03
	ld   [hl-], a                                    ; $7112: $32
	ld   [bc], a                                     ; $7113: $02
	dec  hl                                          ; $7114: $2b
	inc  bc                                          ; $7115: $03
	add  hl, hl                                      ; $7116: $29
	inc  bc                                          ; $7117: $03
	inc  h                                           ; $7118: $24
	ld   [bc], a                                     ; $7119: $02
	ld   [hl+], a                                    ; $711a: $22
	ld   [$0419], sp                                 ; $711b: $08 $19 $04
	and  b                                           ; $711e: $a0
	ld   a, [bc]                                     ; $711f: $0a
	add  hl, de                                      ; $7120: $19
	ld   [$0827], sp                                 ; $7121: $08 $27 $08
	add  hl, de                                      ; $7124: $19
	ld   [$0427], sp                                 ; $7125: $08 $27 $04
	and  b                                           ; $7128: $a0
	dec  b                                           ; $7129: $05
	add  hl, de                                      ; $712a: $19
	inc  b                                           ; $712b: $04
	and  b                                           ; $712c: $a0
	ld   a, [bc]                                     ; $712d: $0a
	add  hl, de                                      ; $712e: $19
	ld   [$0827], sp                                 ; $712f: $08 $27 $08
	add  hl, de                                      ; $7132: $19
	ld   [$0427], sp                                 ; $7133: $08 $27 $04
	and  b                                           ; $7136: $a0
	dec  b                                           ; $7137: $05
	add  hl, de                                      ; $7138: $19
	inc  b                                           ; $7139: $04
	and  b                                           ; $713a: $a0
	ld   a, [bc]                                     ; $713b: $0a
	add  hl, de                                      ; $713c: $19
	ld   [$0427], sp                                 ; $713d: $08 $27 $04
	rra                                              ; $7140: $1f
	inc  b                                           ; $7141: $04
	add  hl, de                                      ; $7142: $19
	ld   [$0426], sp                                 ; $7143: $08 $26 $04
	and  b                                           ; $7146: $a0
	dec  b                                           ; $7147: $05
	dec  de                                          ; $7148: $1b
	inc  b                                           ; $7149: $04
	and  b                                           ; $714a: $a0
	ld   a, [bc]                                     ; $714b: $0a
	dec  de                                          ; $714c: $1b
	ld   [$0427], sp                                 ; $714d: $08 $27 $04
	rra                                              ; $7150: $1f
	inc  b                                           ; $7151: $04
	dec  de                                          ; $7152: $1b
	ld   [$0427], sp                                 ; $7153: $08 $27 $04
	and  b                                           ; $7156: $a0
	dec  b                                           ; $7157: $05
	dec  de                                          ; $7158: $1b
	inc  b                                           ; $7159: $04
	and  b                                           ; $715a: $a0
	ld   a, [bc]                                     ; $715b: $0a
	dec  de                                          ; $715c: $1b
	ld   [$0827], sp                                 ; $715d: $08 $27 $08
	dec  de                                          ; $7160: $1b
	ld   [$0427], sp                                 ; $7161: $08 $27 $04
	and  b                                           ; $7164: $a0
	dec  b                                           ; $7165: $05
	add  hl, de                                      ; $7166: $19
	inc  b                                           ; $7167: $04
	and  b                                           ; $7168: $a0
	ld   a, [bc]                                     ; $7169: $0a
	add  hl, de                                      ; $716a: $19
	ld   [$0427], sp                                 ; $716b: $08 $27 $04
	rra                                              ; $716e: $1f
	inc  b                                           ; $716f: $04
	add  hl, de                                      ; $7170: $19
	ld   [$0427], sp                                 ; $7171: $08 $27 $04
	and  b                                           ; $7174: $a0
	dec  b                                           ; $7175: $05
	add  hl, de                                      ; $7176: $19
	inc  b                                           ; $7177: $04
	and  b                                           ; $7178: $a0
	ld   a, [bc]                                     ; $7179: $0a
	add  hl, de                                      ; $717a: $19
	ld   [$0427], sp                                 ; $717b: $08 $27 $04
	rra                                              ; $717e: $1f
	inc  b                                           ; $717f: $04
	rla                                              ; $7180: $17
	ld   [$0425], sp                                 ; $7181: $08 $25 $04
	and  b                                           ; $7184: $a0
	dec  b                                           ; $7185: $05
	add  hl, de                                      ; $7186: $19
	inc  b                                           ; $7187: $04
	and  b                                           ; $7188: $a0
	ld   a, [bc]                                     ; $7189: $0a
	add  hl, de                                      ; $718a: $19
	inc  b                                           ; $718b: $04
	and  b                                           ; $718c: $a0
	dec  b                                           ; $718d: $05
	add  hl, de                                      ; $718e: $19
	inc  b                                           ; $718f: $04
	and  b                                           ; $7190: $a0
	ld   a, [bc]                                     ; $7191: $0a
	jr   nz, jr_0fe_7198                             ; $7192: $20 $04

	and  b                                           ; $7194: $a0
	dec  b                                           ; $7195: $05
	jr   nz, jr_0fe_719c                             ; $7196: $20 $04

jr_0fe_7198:
	and  b                                           ; $7198: $a0
	ld   a, [bc]                                     ; $7199: $0a
	ld   [hl+], a                                    ; $719a: $22
	inc  b                                           ; $719b: $04

jr_0fe_719c:
	and  b                                           ; $719c: $a0
	dec  b                                           ; $719d: $05
	ld   [hl+], a                                    ; $719e: $22
	inc  b                                           ; $719f: $04
	and  b                                           ; $71a0: $a0
	ld   a, [bc]                                     ; $71a1: $0a
	ld   h, $04                                      ; $71a2: $26 $04
	and  b                                           ; $71a4: $a0
	dec  b                                           ; $71a5: $05
	add  hl, de                                      ; $71a6: $19
	inc  b                                           ; $71a7: $04
	and  b                                           ; $71a8: $a0
	ld   a, [bc]                                     ; $71a9: $0a
	add  hl, de                                      ; $71aa: $19
	ld   [$0827], sp                                 ; $71ab: $08 $27 $08
	add  hl, de                                      ; $71ae: $19
	ld   [$0427], sp                                 ; $71af: $08 $27 $04
	and  b                                           ; $71b2: $a0
	dec  b                                           ; $71b3: $05
	add  hl, de                                      ; $71b4: $19
	inc  b                                           ; $71b5: $04
	and  b                                           ; $71b6: $a0
	ld   a, [bc]                                     ; $71b7: $0a
	add  hl, de                                      ; $71b8: $19
	ld   [$0827], sp                                 ; $71b9: $08 $27 $08
	add  hl, de                                      ; $71bc: $19
	ld   [$0427], sp                                 ; $71bd: $08 $27 $04
	and  b                                           ; $71c0: $a0
	dec  b                                           ; $71c1: $05
	add  hl, de                                      ; $71c2: $19
	inc  b                                           ; $71c3: $04
	and  b                                           ; $71c4: $a0
	ld   a, [bc]                                     ; $71c5: $0a
	add  hl, de                                      ; $71c6: $19
	ld   [$0427], sp                                 ; $71c7: $08 $27 $04
	rra                                              ; $71ca: $1f
	inc  b                                           ; $71cb: $04
	add  hl, de                                      ; $71cc: $19
	ld   [$0426], sp                                 ; $71cd: $08 $26 $04
	and  b                                           ; $71d0: $a0
	dec  b                                           ; $71d1: $05
	rla                                              ; $71d2: $17
	inc  b                                           ; $71d3: $04
	and  b                                           ; $71d4: $a0
	ld   a, [bc]                                     ; $71d5: $0a
	rla                                              ; $71d6: $17
	ld   [$0424], sp                                 ; $71d7: $08 $24 $04
	rra                                              ; $71da: $1f
	inc  b                                           ; $71db: $04
	rla                                              ; $71dc: $17
	ld   [$0424], sp                                 ; $71dd: $08 $24 $04
	and  b                                           ; $71e0: $a0
	dec  b                                           ; $71e1: $05
	dec  de                                          ; $71e2: $1b
	inc  b                                           ; $71e3: $04
	and  b                                           ; $71e4: $a0
	ld   a, [bc]                                     ; $71e5: $0a
	dec  de                                          ; $71e6: $1b
	ld   [$0827], sp                                 ; $71e7: $08 $27 $08
	dec  de                                          ; $71ea: $1b
	ld   [$0427], sp                                 ; $71eb: $08 $27 $04
	and  b                                           ; $71ee: $a0
	dec  b                                           ; $71ef: $05
	ld   [hl+], a                                    ; $71f0: $22
	inc  b                                           ; $71f1: $04
	and  b                                           ; $71f2: $a0
	ld   a, [bc]                                     ; $71f3: $0a
	ld   [hl+], a                                    ; $71f4: $22
	ld   [$0830], sp                                 ; $71f5: $08 $30 $08
	add  hl, hl                                      ; $71f8: $29
	ld   [$0422], sp                                 ; $71f9: $08 $22 $04
	and  b                                           ; $71fc: $a0
	dec  b                                           ; $71fd: $05
	add  hl, de                                      ; $71fe: $19
	inc  b                                           ; $71ff: $04
	and  b                                           ; $7200: $a0
	ld   a, [bc]                                     ; $7201: $0a
	add  hl, de                                      ; $7202: $19
	ld   [$0827], sp                                 ; $7203: $08 $27 $08
	add  hl, de                                      ; $7206: $19
	ld   [$0827], sp                                 ; $7207: $08 $27 $08
	jr   nz, jr_0fe_7214                             ; $720a: $20 $08

	daa                                              ; $720c: $27
	ld   [$0819], sp                                 ; $720d: $08 $19 $08
	daa                                              ; $7210: $27
	inc  b                                           ; $7211: $04
	and  b                                           ; $7212: $a0
	dec  b                                           ; $7213: $05

jr_0fe_7214:
	add  hl, de                                      ; $7214: $19
	inc  b                                           ; $7215: $04
	and  b                                           ; $7216: $a0
	ld   a, [bc]                                     ; $7217: $0a
	add  hl, de                                      ; $7218: $19
	inc  b                                           ; $7219: $04
	dec  hl                                          ; $721a: $2b
	ld   [$0830], sp                                 ; $721b: $08 $30 $08
	ld   [hl-], a                                    ; $721e: $32
	ld   [$0c33], sp                                 ; $721f: $08 $33 $0c
	daa                                              ; $7222: $27
	ld   [$0819], sp                                 ; $7223: $08 $19 $08
	daa                                              ; $7226: $27
	inc  b                                           ; $7227: $04
	and  b                                           ; $7228: $a0
	dec  b                                           ; $7229: $05
	add  hl, de                                      ; $722a: $19
	inc  b                                           ; $722b: $04
	and  b                                           ; $722c: $a0
	ld   a, [bc]                                     ; $722d: $0a
	add  hl, de                                      ; $722e: $19
	ld   [$0427], sp                                 ; $722f: $08 $27 $04
	rra                                              ; $7232: $1f
	inc  b                                           ; $7233: $04
	add  hl, de                                      ; $7234: $19
	ld   [$0426], sp                                 ; $7235: $08 $26 $04
	and  b                                           ; $7238: $a0
	dec  b                                           ; $7239: $05
	dec  de                                          ; $723a: $1b
	inc  b                                           ; $723b: $04
	and  b                                           ; $723c: $a0
	ld   a, [bc]                                     ; $723d: $0a
	dec  de                                          ; $723e: $1b
	ld   [$0427], sp                                 ; $723f: $08 $27 $04
	rra                                              ; $7242: $1f
	inc  b                                           ; $7243: $04
	dec  de                                          ; $7244: $1b
	ld   [$0427], sp                                 ; $7245: $08 $27 $04
	and  b                                           ; $7248: $a0
	dec  b                                           ; $7249: $05
	dec  de                                          ; $724a: $1b
	inc  b                                           ; $724b: $04
	and  b                                           ; $724c: $a0
	ld   a, [bc]                                     ; $724d: $0a
	dec  de                                          ; $724e: $1b
	ld   [$0827], sp                                 ; $724f: $08 $27 $08
	dec  de                                          ; $7252: $1b
	ld   [$0427], sp                                 ; $7253: $08 $27 $04
	and  b                                           ; $7256: $a0
	dec  b                                           ; $7257: $05
	add  hl, de                                      ; $7258: $19
	inc  b                                           ; $7259: $04
	and  b                                           ; $725a: $a0
	ld   a, [bc]                                     ; $725b: $0a
	add  hl, de                                      ; $725c: $19
	ld   [$0427], sp                                 ; $725d: $08 $27 $04
	rra                                              ; $7260: $1f
	inc  b                                           ; $7261: $04
	add  hl, de                                      ; $7262: $19
	ld   [$0427], sp                                 ; $7263: $08 $27 $04
	and  b                                           ; $7266: $a0
	dec  b                                           ; $7267: $05
	add  hl, de                                      ; $7268: $19
	inc  b                                           ; $7269: $04
	and  b                                           ; $726a: $a0
	ld   a, [bc]                                     ; $726b: $0a
	add  hl, de                                      ; $726c: $19
	ld   [$0427], sp                                 ; $726d: $08 $27 $04
	rra                                              ; $7270: $1f
	inc  b                                           ; $7271: $04
	rla                                              ; $7272: $17
	ld   [$0425], sp                                 ; $7273: $08 $25 $04
	and  b                                           ; $7276: $a0
	dec  b                                           ; $7277: $05
	add  hl, de                                      ; $7278: $19
	inc  b                                           ; $7279: $04
	and  b                                           ; $727a: $a0
	ld   a, [bc]                                     ; $727b: $0a
	add  hl, de                                      ; $727c: $19
	inc  b                                           ; $727d: $04
	and  b                                           ; $727e: $a0
	dec  b                                           ; $727f: $05
	add  hl, de                                      ; $7280: $19
	inc  b                                           ; $7281: $04
	and  b                                           ; $7282: $a0
	ld   a, [bc]                                     ; $7283: $0a
	jr   nz, jr_0fe_728a                             ; $7284: $20 $04

	and  b                                           ; $7286: $a0
	dec  b                                           ; $7287: $05
	jr   nz, jr_0fe_728e                             ; $7288: $20 $04

jr_0fe_728a:
	and  b                                           ; $728a: $a0
	ld   a, [bc]                                     ; $728b: $0a
	ld   [hl+], a                                    ; $728c: $22
	inc  b                                           ; $728d: $04

jr_0fe_728e:
	and  b                                           ; $728e: $a0
	dec  b                                           ; $728f: $05
	ld   [hl+], a                                    ; $7290: $22
	inc  b                                           ; $7291: $04
	and  b                                           ; $7292: $a0
	ld   a, [bc]                                     ; $7293: $0a
	ld   h, $04                                      ; $7294: $26 $04
	and  b                                           ; $7296: $a0
	dec  b                                           ; $7297: $05
	add  hl, de                                      ; $7298: $19
	inc  b                                           ; $7299: $04
	and  b                                           ; $729a: $a0
	ld   a, [bc]                                     ; $729b: $0a
	add  hl, de                                      ; $729c: $19
	inc  b                                           ; $729d: $04
	dec  hl                                          ; $729e: $2b
	inc  b                                           ; $729f: $04
	jr   nc, jr_0fe_72a6                             ; $72a0: $30 $04

	ld   [hl-], a                                    ; $72a2: $32
	inc  b                                           ; $72a3: $04
	jr   nc, jr_0fe_72aa                             ; $72a4: $30 $04

jr_0fe_72a6:
	dec  hl                                          ; $72a6: $2b
	inc  b                                           ; $72a7: $04
	add  hl, hl                                      ; $72a8: $29
	inc  b                                           ; $72a9: $04

jr_0fe_72aa:
	daa                                              ; $72aa: $27
	inc  b                                           ; $72ab: $04
	dec  h                                           ; $72ac: $25
	inc  b                                           ; $72ad: $04
	inc  hl                                          ; $72ae: $23
	inc  c                                           ; $72af: $0c
	add  hl, de                                      ; $72b0: $19
	ld   [$0427], sp                                 ; $72b1: $08 $27 $04
	and  b                                           ; $72b4: $a0
	dec  b                                           ; $72b5: $05
	add  hl, de                                      ; $72b6: $19
	inc  b                                           ; $72b7: $04
	and  b                                           ; $72b8: $a0
	ld   a, [bc]                                     ; $72b9: $0a
	add  hl, de                                      ; $72ba: $19
	ld   [$0427], sp                                 ; $72bb: $08 $27 $04
	rra                                              ; $72be: $1f
	inc  b                                           ; $72bf: $04
	add  hl, de                                      ; $72c0: $19
	ld   [$0426], sp                                 ; $72c1: $08 $26 $04
	and  b                                           ; $72c4: $a0
	dec  b                                           ; $72c5: $05
	rla                                              ; $72c6: $17
	inc  b                                           ; $72c7: $04
	and  b                                           ; $72c8: $a0
	ld   a, [bc]                                     ; $72c9: $0a
	rla                                              ; $72ca: $17
	ld   [$0424], sp                                 ; $72cb: $08 $24 $04
	rra                                              ; $72ce: $1f
	inc  b                                           ; $72cf: $04
	rla                                              ; $72d0: $17
	ld   [$0424], sp                                 ; $72d1: $08 $24 $04
	and  b                                           ; $72d4: $a0
	dec  b                                           ; $72d5: $05
	dec  de                                          ; $72d6: $1b
	inc  b                                           ; $72d7: $04
	and  b                                           ; $72d8: $a0
	ld   a, [bc]                                     ; $72d9: $0a
	dec  de                                          ; $72da: $1b
	ld   [$0827], sp                                 ; $72db: $08 $27 $08
	dec  de                                          ; $72de: $1b
	ld   [$0427], sp                                 ; $72df: $08 $27 $04
	and  b                                           ; $72e2: $a0
	dec  b                                           ; $72e3: $05
	ld   [hl+], a                                    ; $72e4: $22
	inc  b                                           ; $72e5: $04
	and  b                                           ; $72e6: $a0
	ld   a, [bc]                                     ; $72e7: $0a
	ld   [hl+], a                                    ; $72e8: $22
	ld   [$0830], sp                                 ; $72e9: $08 $30 $08
	add  hl, hl                                      ; $72ec: $29
	ld   [$0422], sp                                 ; $72ed: $08 $22 $04
	and  b                                           ; $72f0: $a0
	dec  b                                           ; $72f1: $05
	add  hl, de                                      ; $72f2: $19
	inc  b                                           ; $72f3: $04
	and  b                                           ; $72f4: $a0
	ld   a, [bc]                                     ; $72f5: $0a
	add  hl, de                                      ; $72f6: $19
	ld   [$0822], sp                                 ; $72f7: $08 $22 $08
	daa                                              ; $72fa: $27
	inc  b                                           ; $72fb: $04
	dec  de                                          ; $72fc: $1b
	inc  b                                           ; $72fd: $04
	jr   nz, jr_0fe_7304                             ; $72fe: $20 $04

	dec  de                                          ; $7300: $1b
	jr   nz, jr_0fe_7327                             ; $7301: $20 $24

	ld   [bc], a                                     ; $7303: $02

jr_0fe_7304:
	and  b                                           ; $7304: $a0
	dec  b                                           ; $7305: $05
	inc  h                                           ; $7306: $24
	inc  b                                           ; $7307: $04
	rra                                              ; $7308: $1f
	ld   [bc], a                                     ; $7309: $02
	and  b                                           ; $730a: $a0
	ld   a, [bc]                                     ; $730b: $0a
	inc  h                                           ; $730c: $24
	ld   [$0224], sp                                 ; $730d: $08 $24 $02
	and  b                                           ; $7310: $a0
	dec  b                                           ; $7311: $05
	inc  h                                           ; $7312: $24
	inc  b                                           ; $7313: $04
	rra                                              ; $7314: $1f
	ld   [bc], a                                     ; $7315: $02
	and  b                                           ; $7316: $a0
	ld   a, [bc]                                     ; $7317: $0a
	inc  h                                           ; $7318: $24
	ld   [bc], a                                     ; $7319: $02
	and  b                                           ; $731a: $a0
	dec  b                                           ; $731b: $05
	inc  h                                           ; $731c: $24
	inc  b                                           ; $731d: $04
	rra                                              ; $731e: $1f
	ld   [bc], a                                     ; $731f: $02
	and  b                                           ; $7320: $a0
	ld   a, [bc]                                     ; $7321: $0a
	ld   [hl+], a                                    ; $7322: $22
	ld   [bc], a                                     ; $7323: $02
	and  b                                           ; $7324: $a0
	dec  b                                           ; $7325: $05
	ld   [hl+], a                                    ; $7326: $22

jr_0fe_7327:
	inc  b                                           ; $7327: $04
	rra                                              ; $7328: $1f
	ld   [bc], a                                     ; $7329: $02
	and  b                                           ; $732a: $a0
	ld   a, [bc]                                     ; $732b: $0a
	ld   [hl+], a                                    ; $732c: $22
	ld   [$0222], sp                                 ; $732d: $08 $22 $02
	and  b                                           ; $7330: $a0
	dec  b                                           ; $7331: $05
	ld   [hl+], a                                    ; $7332: $22
	inc  b                                           ; $7333: $04
	rra                                              ; $7334: $1f
	ld   [bc], a                                     ; $7335: $02
	and  b                                           ; $7336: $a0
	ld   a, [bc]                                     ; $7337: $0a
	ld   [hl+], a                                    ; $7338: $22
	ld   [bc], a                                     ; $7339: $02
	and  b                                           ; $733a: $a0
	dec  b                                           ; $733b: $05
	ld   [hl+], a                                    ; $733c: $22
	inc  b                                           ; $733d: $04
	rra                                              ; $733e: $1f
	ld   [bc], a                                     ; $733f: $02
	and  b                                           ; $7340: $a0
	ld   a, [bc]                                     ; $7341: $0a
	jr   nz, jr_0fe_7346                             ; $7342: $20 $02

	and  b                                           ; $7344: $a0
	dec  b                                           ; $7345: $05

jr_0fe_7346:
	jr   nz, jr_0fe_734c                             ; $7346: $20 $04

	rra                                              ; $7348: $1f
	ld   [bc], a                                     ; $7349: $02
	and  b                                           ; $734a: $a0
	ld   a, [bc]                                     ; $734b: $0a

jr_0fe_734c:
	jr   nz, jr_0fe_7356                             ; $734c: $20 $08

	jr   nz, jr_0fe_7352                             ; $734e: $20 $02

	and  b                                           ; $7350: $a0
	dec  b                                           ; $7351: $05

jr_0fe_7352:
	jr   nz, jr_0fe_7358                             ; $7352: $20 $04

	rra                                              ; $7354: $1f
	ld   [bc], a                                     ; $7355: $02

jr_0fe_7356:
	and  b                                           ; $7356: $a0
	ld   a, [bc]                                     ; $7357: $0a

jr_0fe_7358:
	jr   nz, jr_0fe_735c                             ; $7358: $20 $02

	and  b                                           ; $735a: $a0
	dec  b                                           ; $735b: $05

jr_0fe_735c:
	jr   nz, jr_0fe_7362                             ; $735c: $20 $04

	rra                                              ; $735e: $1f
	ld   [bc], a                                     ; $735f: $02
	and  b                                           ; $7360: $a0
	ld   a, [bc]                                     ; $7361: $0a

jr_0fe_7362:
	dec  de                                          ; $7362: $1b
	db   $10                                         ; $7363: $10
	and  b                                           ; $7364: $a0
	dec  b                                           ; $7365: $05
	dec  de                                          ; $7366: $1b
	ld   [$081f], sp                                 ; $7367: $08 $1f $08
	and  b                                           ; $736a: $a0
	ld   a, [bc]                                     ; $736b: $0a
	rla                                              ; $736c: $17
	inc  b                                           ; $736d: $04
	add  hl, de                                      ; $736e: $19
	inc  b                                           ; $736f: $04
	dec  de                                          ; $7370: $1b
	inc  b                                           ; $7371: $04
	rla                                              ; $7372: $17
	inc  b                                           ; $7373: $04
	inc  h                                           ; $7374: $24
	inc  c                                           ; $7375: $0c
	and  b                                           ; $7376: $a0
	dec  b                                           ; $7377: $05
	inc  h                                           ; $7378: $24
	inc  b                                           ; $7379: $04
	and  b                                           ; $737a: $a0
	ld   a, [bc]                                     ; $737b: $0a
	jr   nz, jr_0fe_7382                             ; $737c: $20 $04

	ld   [hl+], a                                    ; $737e: $22
	inc  b                                           ; $737f: $04
	inc  hl                                          ; $7380: $23
	inc  b                                           ; $7381: $04

jr_0fe_7382:
	jr   nz, jr_0fe_7388                             ; $7382: $20 $04

	ld   h, $0c                                      ; $7384: $26 $0c
	and  b                                           ; $7386: $a0
	dec  b                                           ; $7387: $05

jr_0fe_7388:
	ld   h, $04                                      ; $7388: $26 $04
	and  b                                           ; $738a: $a0
	ld   a, [bc]                                     ; $738b: $0a
	add  hl, hl                                      ; $738c: $29
	inc  b                                           ; $738d: $04
	daa                                              ; $738e: $27
	inc  b                                           ; $738f: $04
	ld   h, $04                                      ; $7390: $26 $04
	daa                                              ; $7392: $27
	inc  b                                           ; $7393: $04
	ld   [hl+], a                                    ; $7394: $22
	ld   [$0427], sp                                 ; $7395: $08 $27 $04
	dec  hl                                          ; $7398: $2b
	inc  b                                           ; $7399: $04
	ld   a, [hl+]                                    ; $739a: $2a
	ld   [$0432], sp                                 ; $739b: $08 $32 $04
	inc  [hl]                                        ; $739e: $34
	inc  b                                           ; $739f: $04
	ld   [hl], $04                                   ; $73a0: $36 $04
	scf                                              ; $73a2: $37
	inc  b                                           ; $73a3: $04
	ld   a, [hl-]                                    ; $73a4: $3a
	inc  b                                           ; $73a5: $04
	ld   b, c                                        ; $73a6: $41
	inc  b                                           ; $73a7: $04
	rst  ToBoot                                         ; $73a8: $c7
	ld   d, b                                        ; $73a9: $50
	jr   nc, jr_0fe_73e8                             ; $73aa: $30 $3c

	rst  ToBoot                                         ; $73ac: $c7
	jr   nz, @-$5e                                   ; $73ad: $20 $a0

	dec  b                                           ; $73af: $05
	jr   nc, jr_0fe_73b6                             ; $73b0: $30 $04

	and  b                                           ; $73b2: $a0
	ld   a, [bc]                                     ; $73b3: $0a
	dec  hl                                          ; $73b4: $2b
	inc  b                                           ; $73b5: $04

jr_0fe_73b6:
	ld   [hl+], a                                    ; $73b6: $22
	inc  b                                           ; $73b7: $04
	daa                                              ; $73b8: $27
	inc  b                                           ; $73b9: $04
	dec  hl                                          ; $73ba: $2b
	inc  b                                           ; $73bb: $04
	jr   nc, jr_0fe_73c2                             ; $73bc: $30 $04

	inc  h                                           ; $73be: $24
	inc  b                                           ; $73bf: $04
	daa                                              ; $73c0: $27
	inc  b                                           ; $73c1: $04

jr_0fe_73c2:
	jr   nc, jr_0fe_73c8                             ; $73c2: $30 $04

	dec  hl                                          ; $73c4: $2b
	db   $10                                         ; $73c5: $10
	and  b                                           ; $73c6: $a0
	inc  bc                                          ; $73c7: $03

jr_0fe_73c8:
	dec  hl                                          ; $73c8: $2b
	inc  b                                           ; $73c9: $04
	rra                                              ; $73ca: $1f
	inc  c                                           ; $73cb: $0c
	and  b                                           ; $73cc: $a0
	ld   a, [bc]                                     ; $73cd: $0a
	scf                                              ; $73ce: $37
	inc  b                                           ; $73cf: $04
	ld   [hl], $04                                   ; $73d0: $36 $04
	inc  [hl]                                        ; $73d2: $34
	inc  b                                           ; $73d3: $04
	dec  hl                                          ; $73d4: $2b
	inc  b                                           ; $73d5: $04
	scf                                              ; $73d6: $37
	inc  b                                           ; $73d7: $04
	ld   [hl], $04                                   ; $73d8: $36 $04
	inc  [hl]                                        ; $73da: $34
	inc  b                                           ; $73db: $04
	dec  hl                                          ; $73dc: $2b
	inc  b                                           ; $73dd: $04
	scf                                              ; $73de: $37
	inc  b                                           ; $73df: $04
	ld   [hl], $04                                   ; $73e0: $36 $04
	inc  [hl]                                        ; $73e2: $34
	inc  b                                           ; $73e3: $04
	dec  hl                                          ; $73e4: $2b
	inc  b                                           ; $73e5: $04
	scf                                              ; $73e6: $37
	inc  b                                           ; $73e7: $04

jr_0fe_73e8:
	ld   [hl], $04                                   ; $73e8: $36 $04
	inc  [hl]                                        ; $73ea: $34
	inc  b                                           ; $73eb: $04
	dec  hl                                          ; $73ec: $2b
	inc  b                                           ; $73ed: $04
	scf                                              ; $73ee: $37
	inc  b                                           ; $73ef: $04
	ld   [hl], $04                                   ; $73f0: $36 $04
	inc  [hl]                                        ; $73f2: $34
	inc  b                                           ; $73f3: $04
	dec  hl                                          ; $73f4: $2b
	inc  b                                           ; $73f5: $04
	scf                                              ; $73f6: $37
	inc  b                                           ; $73f7: $04
	ld   [hl], $04                                   ; $73f8: $36 $04
	inc  [hl]                                        ; $73fa: $34
	inc  b                                           ; $73fb: $04
	dec  hl                                          ; $73fc: $2b
	inc  b                                           ; $73fd: $04
	scf                                              ; $73fe: $37
	inc  b                                           ; $73ff: $04
	ld   [hl], $04                                   ; $7400: $36 $04
	inc  [hl]                                        ; $7402: $34
	inc  b                                           ; $7403: $04
	dec  hl                                          ; $7404: $2b
	inc  b                                           ; $7405: $04
	scf                                              ; $7406: $37
	inc  b                                           ; $7407: $04
	ld   [hl], $04                                   ; $7408: $36 $04
	inc  [hl]                                        ; $740a: $34
	inc  b                                           ; $740b: $04
	dec  hl                                          ; $740c: $2b
	inc  b                                           ; $740d: $04
	scf                                              ; $740e: $37
	inc  b                                           ; $740f: $04
	inc  [hl]                                        ; $7410: $34
	inc  b                                           ; $7411: $04
	jr   nc, jr_0fe_7418                             ; $7412: $30 $04

	add  hl, hl                                      ; $7414: $29
	inc  b                                           ; $7415: $04
	scf                                              ; $7416: $37
	inc  b                                           ; $7417: $04

jr_0fe_7418:
	inc  [hl]                                        ; $7418: $34
	inc  b                                           ; $7419: $04
	jr   nc, jr_0fe_7420                             ; $741a: $30 $04

	add  hl, hl                                      ; $741c: $29
	inc  b                                           ; $741d: $04
	ld   [hl], $04                                   ; $741e: $36 $04

jr_0fe_7420:
	inc  [hl]                                        ; $7420: $34
	inc  b                                           ; $7421: $04
	ld   [hl-], a                                    ; $7422: $32
	inc  b                                           ; $7423: $04
	add  hl, hl                                      ; $7424: $29
	inc  b                                           ; $7425: $04
	ld   [hl], $04                                   ; $7426: $36 $04
	inc  [hl]                                        ; $7428: $34
	inc  b                                           ; $7429: $04
	ld   [hl-], a                                    ; $742a: $32
	inc  b                                           ; $742b: $04
	add  hl, hl                                      ; $742c: $29
	inc  b                                           ; $742d: $04
	scf                                              ; $742e: $37
	inc  b                                           ; $742f: $04
	inc  [hl]                                        ; $7430: $34
	inc  b                                           ; $7431: $04
	ld   [hl-], a                                    ; $7432: $32
	inc  b                                           ; $7433: $04
	dec  hl                                          ; $7434: $2b
	inc  b                                           ; $7435: $04
	scf                                              ; $7436: $37
	inc  b                                           ; $7437: $04
	inc  [hl]                                        ; $7438: $34
	inc  b                                           ; $7439: $04
	ld   [hl-], a                                    ; $743a: $32
	inc  b                                           ; $743b: $04
	dec  hl                                          ; $743c: $2b
	inc  b                                           ; $743d: $04
	scf                                              ; $743e: $37
	inc  b                                           ; $743f: $04
	inc  [hl]                                        ; $7440: $34
	inc  b                                           ; $7441: $04
	ld   [hl-], a                                    ; $7442: $32
	inc  b                                           ; $7443: $04
	dec  hl                                          ; $7444: $2b
	inc  b                                           ; $7445: $04
	scf                                              ; $7446: $37
	inc  b                                           ; $7447: $04
	inc  [hl]                                        ; $7448: $34
	inc  b                                           ; $7449: $04
	ld   [hl-], a                                    ; $744a: $32
	inc  b                                           ; $744b: $04
	dec  hl                                          ; $744c: $2b
	inc  b                                           ; $744d: $04
	scf                                              ; $744e: $37
	inc  b                                           ; $744f: $04
	ld   [hl], $04                                   ; $7450: $36 $04
	inc  [hl]                                        ; $7452: $34
	inc  b                                           ; $7453: $04
	dec  hl                                          ; $7454: $2b
	inc  b                                           ; $7455: $04
	scf                                              ; $7456: $37
	inc  b                                           ; $7457: $04
	ld   [hl], $04                                   ; $7458: $36 $04
	inc  [hl]                                        ; $745a: $34
	inc  b                                           ; $745b: $04
	dec  hl                                          ; $745c: $2b
	inc  b                                           ; $745d: $04
	scf                                              ; $745e: $37
	inc  b                                           ; $745f: $04
	ld   [hl], $04                                   ; $7460: $36 $04
	inc  [hl]                                        ; $7462: $34
	inc  b                                           ; $7463: $04
	dec  hl                                          ; $7464: $2b
	inc  b                                           ; $7465: $04
	scf                                              ; $7466: $37
	inc  b                                           ; $7467: $04
	ld   [hl], $04                                   ; $7468: $36 $04
	inc  [hl]                                        ; $746a: $34
	inc  b                                           ; $746b: $04
	dec  hl                                          ; $746c: $2b
	inc  b                                           ; $746d: $04
	scf                                              ; $746e: $37
	inc  b                                           ; $746f: $04
	ld   [hl], $04                                   ; $7470: $36 $04
	inc  [hl]                                        ; $7472: $34
	inc  b                                           ; $7473: $04
	dec  hl                                          ; $7474: $2b

jr_0fe_7475:
	inc  b                                           ; $7475: $04
	scf                                              ; $7476: $37
	inc  b                                           ; $7477: $04
	ld   [hl], $04                                   ; $7478: $36 $04
	inc  [hl]                                        ; $747a: $34
	inc  b                                           ; $747b: $04
	dec  hl                                          ; $747c: $2b
	inc  b                                           ; $747d: $04
	add  hl, hl                                      ; $747e: $29
	inc  b                                           ; $747f: $04
	dec  hl                                          ; $7480: $2b
	inc  b                                           ; $7481: $04
	ld   sp, $3403                                   ; $7482: $31 $03 $34
	inc  bc                                          ; $7485: $03
	ld   [hl], $02                                   ; $7486: $36 $02
	scf                                              ; $7488: $37
	inc  bc                                          ; $7489: $03
	add  hl, sp                                      ; $748a: $39
	inc  bc                                          ; $748b: $03
	dec  sp                                          ; $748c: $3b
	ld   [bc], a                                     ; $748d: $02
	ld   b, c                                        ; $748e: $41
	inc  bc                                          ; $748f: $03
	ld   b, h                                        ; $7490: $44
	inc  bc                                          ; $7491: $03
	ld   b, [hl]                                     ; $7492: $46
	ld   [bc], a                                     ; $7493: $02
	jp   $3402                                       ; $7494: $c3 $02 $34


	inc  c                                           ; $7497: $0c
	ld   [hl-], a                                    ; $7498: $32
	ld   [bc], a                                     ; $7499: $02
	ld   sp, $3002                                   ; $749a: $31 $02 $30
	ld   [bc], a                                     ; $749d: $02
	dec  hl                                          ; $749e: $2b
	ld   e, $a0                                      ; $749f: $1e $a0
	dec  b                                           ; $74a1: $05
	dec  hl                                          ; $74a2: $2b
	ld   a, [bc]                                     ; $74a3: $0a
	and  b                                           ; $74a4: $a0
	ld   a, [bc]                                     ; $74a5: $0a
	ld   [hl-], a                                    ; $74a6: $32
	ld   b, $33                                      ; $74a7: $06 $33
	inc  c                                           ; $74a9: $0c
	jr   nc, jr_0fe_74ae                             ; $74aa: $30 $02

	dec  hl                                          ; $74ac: $2b
	ld   [bc], a                                     ; $74ad: $02

jr_0fe_74ae:
	ld   a, [hl+]                                    ; $74ae: $2a
	ld   [bc], a                                     ; $74af: $02
	add  hl, hl                                      ; $74b0: $29
	ld   e, $a0                                      ; $74b1: $1e $a0
	dec  b                                           ; $74b3: $05
	add  hl, hl                                      ; $74b4: $29
	ld   a, [bc]                                     ; $74b5: $0a
	and  b                                           ; $74b6: $a0
	ld   a, [bc]                                     ; $74b7: $0a
	dec  h                                           ; $74b8: $25
	ld   b, $28                                      ; $74b9: $06 $28
	ld   b, $23                                      ; $74bb: $06 $23
	dec  b                                           ; $74bd: $05
	dec  de                                          ; $74be: $1b
	dec  b                                           ; $74bf: $05
	jr   jr_0fe_74c8                                 ; $74c0: $18 $06

	dec  d                                           ; $74c2: $15
	dec  b                                           ; $74c3: $05
	ld   [de], a                                     ; $74c4: $12
	dec  b                                           ; $74c5: $05
	ld   h, $06                                      ; $74c6: $26 $06

jr_0fe_74c8:
	ld   [hl+], a                                    ; $74c8: $22
	dec  b                                           ; $74c9: $05
	add  hl, de                                      ; $74ca: $19
	dec  b                                           ; $74cb: $05
	add  hl, de                                      ; $74cc: $19
	ld   b, $13                                      ; $74cd: $06 $13
	dec  b                                           ; $74cf: $05
	db   $10                                         ; $74d0: $10
	dec  b                                           ; $74d1: $05
	rst  ToBoot                                         ; $74d2: $c7
	jr   nz, jr_0fe_7475                             ; $74d3: $20 $a0

	dec  b                                           ; $74d5: $05
	db   $10                                         ; $74d6: $10
	ld   b, $1f                                      ; $74d7: $06 $1f
	ld   [bc], a                                     ; $74d9: $02
	and  b                                           ; $74da: $a0
	ld   a, [bc]                                     ; $74db: $0a
	jr   nz, jr_0fe_74e0                             ; $74dc: $20 $02

	and  b                                           ; $74de: $a0
	dec  b                                           ; $74df: $05

jr_0fe_74e0:
	jr   nz, jr_0fe_74e4                             ; $74e0: $20 $02

	and  b                                           ; $74e2: $a0
	ld   a, [bc]                                     ; $74e3: $0a

jr_0fe_74e4:
	jr   nz, jr_0fe_74e8                             ; $74e4: $20 $02

	and  b                                           ; $74e6: $a0
	dec  b                                           ; $74e7: $05

jr_0fe_74e8:
	jr   nz, jr_0fe_74ec                             ; $74e8: $20 $02

	and  b                                           ; $74ea: $a0
	ld   a, [bc]                                     ; $74eb: $0a

jr_0fe_74ec:
	jr   nz, jr_0fe_74f0                             ; $74ec: $20 $02

	and  b                                           ; $74ee: $a0
	dec  b                                           ; $74ef: $05

jr_0fe_74f0:
	jr   nz, jr_0fe_74f4                             ; $74f0: $20 $02

	rra                                              ; $74f2: $1f
	inc  c                                           ; $74f3: $0c

jr_0fe_74f4:
	and  b                                           ; $74f4: $a0
	ld   a, [bc]                                     ; $74f5: $0a
	jr   nz, jr_0fe_74fa                             ; $74f6: $20 $02

	and  b                                           ; $74f8: $a0
	dec  b                                           ; $74f9: $05

jr_0fe_74fa:
	jr   nz, jr_0fe_74fe                             ; $74fa: $20 $02

	rra                                              ; $74fc: $1f
	inc  b                                           ; $74fd: $04

jr_0fe_74fe:
	and  b                                           ; $74fe: $a0
	ld   a, [bc]                                     ; $74ff: $0a
	jr   nz, jr_0fe_7504                             ; $7500: $20 $02

	and  b                                           ; $7502: $a0
	dec  b                                           ; $7503: $05

jr_0fe_7504:
	jr   nz, jr_0fe_7508                             ; $7504: $20 $02

	rra                                              ; $7506: $1f
	inc  c                                           ; $7507: $0c

jr_0fe_7508:
	and  b                                           ; $7508: $a0
	ld   a, [bc]                                     ; $7509: $0a
	jr   nz, jr_0fe_750e                             ; $750a: $20 $02

	and  b                                           ; $750c: $a0
	dec  b                                           ; $750d: $05

jr_0fe_750e:
	jr   nz, jr_0fe_7512                             ; $750e: $20 $02

	and  b                                           ; $7510: $a0
	ld   a, [bc]                                     ; $7511: $0a

jr_0fe_7512:
	jr   nz, jr_0fe_7516                             ; $7512: $20 $02

	and  b                                           ; $7514: $a0
	dec  b                                           ; $7515: $05

jr_0fe_7516:
	jr   nz, jr_0fe_751a                             ; $7516: $20 $02

	and  b                                           ; $7518: $a0
	ld   a, [bc]                                     ; $7519: $0a

jr_0fe_751a:
	jr   nz, jr_0fe_751e                             ; $751a: $20 $02

	and  b                                           ; $751c: $a0
	dec  b                                           ; $751d: $05

jr_0fe_751e:
	jr   nz, jr_0fe_7522                             ; $751e: $20 $02

	rra                                              ; $7520: $1f
	inc  b                                           ; $7521: $04

jr_0fe_7522:
	and  b                                           ; $7522: $a0
	ld   a, [bc]                                     ; $7523: $0a
	jr   nz, jr_0fe_7528                             ; $7524: $20 $02

	and  b                                           ; $7526: $a0
	dec  b                                           ; $7527: $05

jr_0fe_7528:
	jr   nz, jr_0fe_752c                             ; $7528: $20 $02

	rra                                              ; $752a: $1f
	inc  b                                           ; $752b: $04

jr_0fe_752c:
	and  b                                           ; $752c: $a0
	ld   a, [bc]                                     ; $752d: $0a
	jr   nz, jr_0fe_7532                             ; $752e: $20 $02

	and  b                                           ; $7530: $a0
	dec  b                                           ; $7531: $05

jr_0fe_7532:
	jr   nz, jr_0fe_7536                             ; $7532: $20 $02

	rra                                              ; $7534: $1f
	inc  b                                           ; $7535: $04

jr_0fe_7536:
	and  b                                           ; $7536: $a0
	ld   a, [bc]                                     ; $7537: $0a
	jr   nz, jr_0fe_753c                             ; $7538: $20 $02

	and  b                                           ; $753a: $a0
	dec  b                                           ; $753b: $05

jr_0fe_753c:
	jr   nz, jr_0fe_7540                             ; $753c: $20 $02

	rra                                              ; $753e: $1f
	inc  b                                           ; $753f: $04

jr_0fe_7540:
	and  b                                           ; $7540: $a0
	ld   a, [bc]                                     ; $7541: $0a
	jr   nz, jr_0fe_7560                             ; $7542: $20 $1c

	and  b                                           ; $7544: $a0
	dec  b                                           ; $7545: $05
	jr   nz, jr_0fe_754c                             ; $7546: $20 $04

	or   b                                           ; $7548: $b0
	di                                               ; $7549: $f3
	rst  $38                                         ; $754a: $ff
	rst  $38                                         ; $754b: $ff

jr_0fe_754c:
	add  hl, bc                                      ; $754c: $09
	nop                                              ; $754d: $00
	add  hl, bc                                      ; $754e: $09
	nop                                              ; $754f: $00
	and  d                                           ; $7550: $a2
	ld   bc, $04c3                                   ; $7551: $01 $c3 $04
	and  e                                           ; $7554: $a3
	inc  h                                           ; $7555: $24
	and  b                                           ; $7556: $a0
	dec  bc                                          ; $7557: $0b
	daa                                              ; $7558: $27
	ld   [$0829], sp                                 ; $7559: $08 $29 $08
	ld   [hl], $0c                                   ; $755c: $36 $0c
	scf                                              ; $755e: $37
	inc  b                                           ; $755f: $04

jr_0fe_7560:
	db   $fd                                         ; $7560: $fd
	di                                               ; $7561: $f3
	and  d                                           ; $7562: $a2
	ld   bc, $04c3                                   ; $7563: $01 $c3 $04
	and  e                                           ; $7566: $a3
	inc  h                                           ; $7567: $24
	ld   [hl-], a                                    ; $7568: $32
	ld   a, [hl+]                                    ; $7569: $2a
	and  b                                           ; $756a: $a0
	dec  b                                           ; $756b: $05
	ld   [hl-], a                                    ; $756c: $32
	inc  b                                           ; $756d: $04
	rra                                              ; $756e: $1f
	ld   [bc], a                                     ; $756f: $02
	and  b                                           ; $7570: $a0
	dec  c                                           ; $7571: $0d
	ld   [hl-], a                                    ; $7572: $32
	inc  b                                           ; $7573: $04
	ld   sp, $2904                                   ; $7574: $31 $04 $29
	inc  b                                           ; $7577: $04
	daa                                              ; $7578: $27
	inc  b                                           ; $7579: $04
	dec  hl                                          ; $757a: $2b
	ld   e, $a0                                      ; $757b: $1e $a0
	dec  b                                           ; $757d: $05
	dec  hl                                          ; $757e: $2b
	ld   [bc], a                                     ; $757f: $02
	and  b                                           ; $7580: $a0
	dec  c                                           ; $7581: $0d
	dec  hl                                          ; $7582: $2b
	ld   [$0829], sp                                 ; $7583: $08 $29 $08
	inc  h                                           ; $7586: $24
	inc  c                                           ; $7587: $0c
	daa                                              ; $7588: $27
	inc  b                                           ; $7589: $04
	add  hl, hl                                      ; $758a: $29
	ld   [$1034], sp                                 ; $758b: $08 $34 $10
	add  hl, hl                                      ; $758e: $29
	ld   [$0827], sp                                 ; $758f: $08 $27 $08
	inc  sp                                          ; $7592: $33
	db   $10                                         ; $7593: $10
	daa                                              ; $7594: $27
	ld   [$4032], sp                                 ; $7595: $08 $32 $40
	and  d                                           ; $7598: $a2
	ld   bc, $50c7                                   ; $7599: $01 $c7 $50
	and  e                                           ; $759c: $a3
	ld   [hl+], a                                    ; $759d: $22
	and  b                                           ; $759e: $a0
	ld   a, [bc]                                     ; $759f: $0a
	ld   b, [hl]                                     ; $75a0: $46
	inc  bc                                          ; $75a1: $03
	ld   b, h                                        ; $75a2: $44
	inc  bc                                          ; $75a3: $03
	ld   b, d                                        ; $75a4: $42
	ld   [bc], a                                     ; $75a5: $02
	dec  sp                                          ; $75a6: $3b
	inc  bc                                          ; $75a7: $03
	add  hl, sp                                      ; $75a8: $39
	inc  bc                                          ; $75a9: $03
	inc  [hl]                                        ; $75aa: $34
	ld   [bc], a                                     ; $75ab: $02
	ld   b, d                                        ; $75ac: $42
	inc  bc                                          ; $75ad: $03
	dec  sp                                          ; $75ae: $3b
	inc  bc                                          ; $75af: $03
	add  hl, sp                                      ; $75b0: $39
	ld   [bc], a                                     ; $75b1: $02
	inc  [hl]                                        ; $75b2: $34
	inc  bc                                          ; $75b3: $03
	ld   [hl-], a                                    ; $75b4: $32
	inc  bc                                          ; $75b5: $03
	add  hl, hl                                      ; $75b6: $29
	ld   [bc], a                                     ; $75b7: $02
	add  hl, sp                                      ; $75b8: $39
	inc  bc                                          ; $75b9: $03
	inc  [hl]                                        ; $75ba: $34
	inc  bc                                          ; $75bb: $03
	ld   [hl-], a                                    ; $75bc: $32
	ld   [bc], a                                     ; $75bd: $02
	dec  hl                                          ; $75be: $2b
	inc  bc                                          ; $75bf: $03
	add  hl, hl                                      ; $75c0: $29
	inc  bc                                          ; $75c1: $03
	inc  h                                           ; $75c2: $24
	ld   [bc], a                                     ; $75c3: $02
	and  d                                           ; $75c4: $a2
	ld   bc, $02c3                                   ; $75c5: $01 $c3 $02
	and  e                                           ; $75c8: $a3
	inc  h                                           ; $75c9: $24
	ld   [hl+], a                                    ; $75ca: $22
	ld   [$0da0], sp                                 ; $75cb: $08 $a0 $0d
	ld   [hl+], a                                    ; $75ce: $22
	ld   [bc], a                                     ; $75cf: $02
	and  b                                           ; $75d0: $a0
	dec  b                                           ; $75d1: $05
	ld   [hl+], a                                    ; $75d2: $22
	ld   [bc], a                                     ; $75d3: $02
	and  b                                           ; $75d4: $a0
	dec  c                                           ; $75d5: $0d
	ld   [hl+], a                                    ; $75d6: $22
	ld   [bc], a                                     ; $75d7: $02
	and  b                                           ; $75d8: $a0
	dec  b                                           ; $75d9: $05
	ld   [hl+], a                                    ; $75da: $22
	ld   [bc], a                                     ; $75db: $02
	and  b                                           ; $75dc: $a0
	dec  c                                           ; $75dd: $0d
	daa                                              ; $75de: $27
	inc  d                                           ; $75df: $14
	and  b                                           ; $75e0: $a0
	dec  b                                           ; $75e1: $05
	daa                                              ; $75e2: $27
	inc  b                                           ; $75e3: $04
	and  b                                           ; $75e4: $a0
	dec  c                                           ; $75e5: $0d
	ld   [hl+], a                                    ; $75e6: $22
	inc  b                                           ; $75e7: $04
	daa                                              ; $75e8: $27
	inc  b                                           ; $75e9: $04
	add  hl, hl                                      ; $75ea: $29
	ld   d, $a0                                      ; $75eb: $16 $a0
	dec  b                                           ; $75ed: $05
	add  hl, hl                                      ; $75ee: $29
	ld   [bc], a                                     ; $75ef: $02
	and  b                                           ; $75f0: $a0
	dec  c                                           ; $75f1: $0d
	daa                                              ; $75f2: $27
	inc  b                                           ; $75f3: $04
	add  hl, hl                                      ; $75f4: $29
	inc  b                                           ; $75f5: $04
	dec  hl                                          ; $75f6: $2b
	ld   [$0830], sp                                 ; $75f7: $08 $30 $08
	ld   [hl-], a                                    ; $75fa: $32
	inc  b                                           ; $75fb: $04
	jr   nc, jr_0fe_7602                             ; $75fc: $30 $04

	dec  hl                                          ; $75fe: $2b
	inc  b                                           ; $75ff: $04
	add  hl, hl                                      ; $7600: $29
	inc  b                                           ; $7601: $04

jr_0fe_7602:
	daa                                              ; $7602: $27
	ld   c, $a0                                      ; $7603: $0e $a0
	dec  b                                           ; $7605: $05
	daa                                              ; $7606: $27
	ld   [bc], a                                     ; $7607: $02
	and  b                                           ; $7608: $a0
	dec  c                                           ; $7609: $0d
	daa                                              ; $760a: $27
	ld   b, $2b                                      ; $760b: $06 $2b
	dec  b                                           ; $760d: $05
	inc  [hl]                                        ; $760e: $34
	dec  b                                           ; $760f: $05
	scf                                              ; $7610: $37
	jr   jr_0fe_7649                                 ; $7611: $18 $36

	inc  b                                           ; $7613: $04
	scf                                              ; $7614: $37
	ld   [bc], a                                     ; $7615: $02
	and  b                                           ; $7616: $a0
	dec  b                                           ; $7617: $05
	scf                                              ; $7618: $37
	ld   [bc], a                                     ; $7619: $02
	and  b                                           ; $761a: $a0
	dec  c                                           ; $761b: $0d
	scf                                              ; $761c: $37
	ld   [bc], a                                     ; $761d: $02
	and  b                                           ; $761e: $a0
	dec  b                                           ; $761f: $05
	scf                                              ; $7620: $37
	inc  b                                           ; $7621: $04
	rra                                              ; $7622: $1f
	ld   [bc], a                                     ; $7623: $02
	and  b                                           ; $7624: $a0
	dec  c                                           ; $7625: $0d
	ld   [hl-], a                                    ; $7626: $32
	ld   [bc], a                                     ; $7627: $02
	and  b                                           ; $7628: $a0
	dec  b                                           ; $7629: $05
	ld   [hl-], a                                    ; $762a: $32
	inc  b                                           ; $762b: $04
	rra                                              ; $762c: $1f
	ld   [bc], a                                     ; $762d: $02
	and  b                                           ; $762e: $a0
	dec  c                                           ; $762f: $0d
	inc  [hl]                                        ; $7630: $34
	ld   b, $30                                      ; $7631: $06 $30
	dec  b                                           ; $7633: $05
	add  hl, hl                                      ; $7634: $29
	dec  b                                           ; $7635: $05
	ld   [hl-], a                                    ; $7636: $32
	ld   [bc], a                                     ; $7637: $02
	and  b                                           ; $7638: $a0
	dec  b                                           ; $7639: $05
	ld   [hl-], a                                    ; $763a: $32
	inc  b                                           ; $763b: $04
	rra                                              ; $763c: $1f
	ld   [bc], a                                     ; $763d: $02
	and  b                                           ; $763e: $a0
	dec  c                                           ; $763f: $0d
	daa                                              ; $7640: $27
	ld   [bc], a                                     ; $7641: $02
	and  b                                           ; $7642: $a0
	dec  b                                           ; $7643: $05
	daa                                              ; $7644: $27
	inc  b                                           ; $7645: $04
	rra                                              ; $7646: $1f
	ld   [bc], a                                     ; $7647: $02
	and  b                                           ; $7648: $a0

jr_0fe_7649:
	dec  c                                           ; $7649: $0d
	jr   nc, jr_0fe_7650                             ; $764a: $30 $04

	dec  hl                                          ; $764c: $2b
	inc  b                                           ; $764d: $04
	add  hl, hl                                      ; $764e: $29
	inc  b                                           ; $764f: $04

jr_0fe_7650:
	daa                                              ; $7650: $27

jr_0fe_7651:
	inc  b                                           ; $7651: $04
	ld   h, $08                                      ; $7652: $26 $08
	daa                                              ; $7654: $27
	ld   [$0429], sp                                 ; $7655: $08 $29 $04
	and  b                                           ; $7658: $a0
	dec  b                                           ; $7659: $05
	add  hl, hl                                      ; $765a: $29
	inc  b                                           ; $765b: $04
	and  b                                           ; $765c: $a0
	dec  c                                           ; $765d: $0d
	ld   [hl+], a                                    ; $765e: $22
	ld   [bc], a                                     ; $765f: $02
	and  b                                           ; $7660: $a0
	dec  b                                           ; $7661: $05
	ld   [hl+], a                                    ; $7662: $22
	ld   [bc], a                                     ; $7663: $02
	and  b                                           ; $7664: $a0
	dec  c                                           ; $7665: $0d
	ld   [hl+], a                                    ; $7666: $22
	ld   [bc], a                                     ; $7667: $02
	and  b                                           ; $7668: $a0
	dec  b                                           ; $7669: $05
	ld   [hl+], a                                    ; $766a: $22
	ld   [bc], a                                     ; $766b: $02
	and  b                                           ; $766c: $a0
	dec  c                                           ; $766d: $0d
	daa                                              ; $766e: $27
	inc  d                                           ; $766f: $14
	and  b                                           ; $7670: $a0
	dec  b                                           ; $7671: $05
	daa                                              ; $7672: $27
	inc  b                                           ; $7673: $04
	and  b                                           ; $7674: $a0
	dec  c                                           ; $7675: $0d
	ld   [hl+], a                                    ; $7676: $22
	inc  b                                           ; $7677: $04
	daa                                              ; $7678: $27
	inc  b                                           ; $7679: $04
	add  hl, hl                                      ; $767a: $29
	ld   d, $a0                                      ; $767b: $16 $a0
	dec  b                                           ; $767d: $05
	add  hl, hl                                      ; $767e: $29
	ld   [bc], a                                     ; $767f: $02
	and  b                                           ; $7680: $a0
	dec  c                                           ; $7681: $0d
	daa                                              ; $7682: $27
	inc  b                                           ; $7683: $04
	add  hl, hl                                      ; $7684: $29
	inc  b                                           ; $7685: $04
	dec  hl                                          ; $7686: $2b
	ld   [$0830], sp                                 ; $7687: $08 $30 $08
	ld   [hl-], a                                    ; $768a: $32
	inc  b                                           ; $768b: $04
	jr   nc, jr_0fe_7692                             ; $768c: $30 $04

	dec  hl                                          ; $768e: $2b
	inc  b                                           ; $768f: $04
	add  hl, hl                                      ; $7690: $29
	inc  b                                           ; $7691: $04

jr_0fe_7692:
	daa                                              ; $7692: $27
	ld   c, $a0                                      ; $7693: $0e $a0
	dec  b                                           ; $7695: $05
	daa                                              ; $7696: $27
	ld   [bc], a                                     ; $7697: $02
	and  b                                           ; $7698: $a0
	dec  c                                           ; $7699: $0d
	daa                                              ; $769a: $27
	ld   b, $26                                      ; $769b: $06 $26
	dec  b                                           ; $769d: $05
	daa                                              ; $769e: $27
	dec  b                                           ; $769f: $05
	add  hl, hl                                      ; $76a0: $29
	jr   jr_0fe_76ce                                 ; $76a1: $18 $2b

	inc  b                                           ; $76a3: $04
	jr   nc, jr_0fe_76aa                             ; $76a4: $30 $04

	dec  hl                                          ; $76a6: $2b
	ld   [$0829], sp                                 ; $76a7: $08 $29 $08

jr_0fe_76aa:
	ld   [hl+], a                                    ; $76aa: $22
	ld   [$0829], sp                                 ; $76ab: $08 $29 $08
	daa                                              ; $76ae: $27
	jr   nc, jr_0fe_7651                             ; $76af: $30 $a0

	dec  b                                           ; $76b1: $05
	daa                                              ; $76b2: $27
	ld   b, $1f                                      ; $76b3: $06 $1f
	ld   [bc], a                                     ; $76b5: $02
	and  b                                           ; $76b6: $a0
	dec  c                                           ; $76b7: $0d
	ld   [hl+], a                                    ; $76b8: $22
	ld   [bc], a                                     ; $76b9: $02
	and  b                                           ; $76ba: $a0
	dec  b                                           ; $76bb: $05
	ld   [hl+], a                                    ; $76bc: $22
	ld   [bc], a                                     ; $76bd: $02
	and  b                                           ; $76be: $a0
	dec  c                                           ; $76bf: $0d
	ld   [hl+], a                                    ; $76c0: $22
	ld   [bc], a                                     ; $76c1: $02
	and  b                                           ; $76c2: $a0
	dec  b                                           ; $76c3: $05
	ld   [hl+], a                                    ; $76c4: $22
	ld   [bc], a                                     ; $76c5: $02
	and  b                                           ; $76c6: $a0
	dec  c                                           ; $76c7: $0d
	daa                                              ; $76c8: $27
	inc  d                                           ; $76c9: $14
	and  b                                           ; $76ca: $a0
	dec  b                                           ; $76cb: $05
	daa                                              ; $76cc: $27
	inc  b                                           ; $76cd: $04

jr_0fe_76ce:
	and  b                                           ; $76ce: $a0
	dec  c                                           ; $76cf: $0d
	ld   [hl+], a                                    ; $76d0: $22
	inc  b                                           ; $76d1: $04
	daa                                              ; $76d2: $27
	inc  b                                           ; $76d3: $04
	add  hl, hl                                      ; $76d4: $29
	ld   d, $a0                                      ; $76d5: $16 $a0
	dec  b                                           ; $76d7: $05
	add  hl, hl                                      ; $76d8: $29
	ld   [bc], a                                     ; $76d9: $02
	and  b                                           ; $76da: $a0
	dec  c                                           ; $76db: $0d
	daa                                              ; $76dc: $27
	inc  b                                           ; $76dd: $04
	add  hl, hl                                      ; $76de: $29
	inc  b                                           ; $76df: $04
	dec  hl                                          ; $76e0: $2b
	ld   [$0830], sp                                 ; $76e1: $08 $30 $08
	ld   [hl-], a                                    ; $76e4: $32
	inc  b                                           ; $76e5: $04
	jr   nc, jr_0fe_76ec                             ; $76e6: $30 $04

	dec  hl                                          ; $76e8: $2b
	inc  b                                           ; $76e9: $04
	add  hl, hl                                      ; $76ea: $29
	inc  b                                           ; $76eb: $04

jr_0fe_76ec:
	daa                                              ; $76ec: $27
	ld   c, $a0                                      ; $76ed: $0e $a0
	dec  b                                           ; $76ef: $05
	daa                                              ; $76f0: $27
	ld   [bc], a                                     ; $76f1: $02
	and  b                                           ; $76f2: $a0
	dec  c                                           ; $76f3: $0d
	daa                                              ; $76f4: $27
	ld   b, $2b                                      ; $76f5: $06 $2b
	dec  b                                           ; $76f7: $05
	inc  [hl]                                        ; $76f8: $34
	dec  b                                           ; $76f9: $05
	scf                                              ; $76fa: $37
	jr   jr_0fe_7733                                 ; $76fb: $18 $36

	inc  b                                           ; $76fd: $04
	scf                                              ; $76fe: $37
	ld   [bc], a                                     ; $76ff: $02
	and  b                                           ; $7700: $a0
	dec  b                                           ; $7701: $05
	scf                                              ; $7702: $37
	ld   [bc], a                                     ; $7703: $02
	and  b                                           ; $7704: $a0
	dec  c                                           ; $7705: $0d
	scf                                              ; $7706: $37
	ld   [bc], a                                     ; $7707: $02
	and  b                                           ; $7708: $a0
	dec  b                                           ; $7709: $05
	scf                                              ; $770a: $37
	inc  b                                           ; $770b: $04
	rra                                              ; $770c: $1f
	ld   [bc], a                                     ; $770d: $02
	and  b                                           ; $770e: $a0
	dec  c                                           ; $770f: $0d
	ld   [hl-], a                                    ; $7710: $32
	ld   [bc], a                                     ; $7711: $02
	and  b                                           ; $7712: $a0
	dec  b                                           ; $7713: $05
	ld   [hl-], a                                    ; $7714: $32
	inc  b                                           ; $7715: $04
	rra                                              ; $7716: $1f
	ld   [bc], a                                     ; $7717: $02
	and  b                                           ; $7718: $a0
	dec  c                                           ; $7719: $0d
	inc  [hl]                                        ; $771a: $34
	ld   b, $30                                      ; $771b: $06 $30
	dec  b                                           ; $771d: $05
	add  hl, hl                                      ; $771e: $29
	dec  b                                           ; $771f: $05
	ld   [hl-], a                                    ; $7720: $32
	ld   [bc], a                                     ; $7721: $02
	and  b                                           ; $7722: $a0
	dec  b                                           ; $7723: $05
	ld   [hl-], a                                    ; $7724: $32
	inc  b                                           ; $7725: $04
	rra                                              ; $7726: $1f
	ld   [bc], a                                     ; $7727: $02
	and  b                                           ; $7728: $a0
	dec  c                                           ; $7729: $0d
	daa                                              ; $772a: $27
	ld   [bc], a                                     ; $772b: $02
	and  b                                           ; $772c: $a0
	dec  b                                           ; $772d: $05
	daa                                              ; $772e: $27
	inc  b                                           ; $772f: $04
	rra                                              ; $7730: $1f
	ld   [bc], a                                     ; $7731: $02
	and  b                                           ; $7732: $a0

jr_0fe_7733:
	dec  c                                           ; $7733: $0d
	jr   nc, jr_0fe_773a                             ; $7734: $30 $04

	dec  hl                                          ; $7736: $2b
	inc  b                                           ; $7737: $04
	add  hl, hl                                      ; $7738: $29
	inc  b                                           ; $7739: $04

jr_0fe_773a:
	daa                                              ; $773a: $27
	inc  b                                           ; $773b: $04
	ld   h, $08                                      ; $773c: $26 $08
	daa                                              ; $773e: $27
	ld   [$0429], sp                                 ; $773f: $08 $29 $04
	and  b                                           ; $7742: $a0
	dec  b                                           ; $7743: $05
	add  hl, hl                                      ; $7744: $29
	inc  b                                           ; $7745: $04
	and  b                                           ; $7746: $a0
	dec  c                                           ; $7747: $0d
	ld   [hl+], a                                    ; $7748: $22
	ld   [bc], a                                     ; $7749: $02
	and  b                                           ; $774a: $a0
	dec  b                                           ; $774b: $05
	ld   [hl+], a                                    ; $774c: $22
	ld   [bc], a                                     ; $774d: $02
	and  b                                           ; $774e: $a0
	dec  c                                           ; $774f: $0d
	ld   [hl+], a                                    ; $7750: $22
	ld   [bc], a                                     ; $7751: $02
	and  b                                           ; $7752: $a0
	dec  b                                           ; $7753: $05
	ld   [hl+], a                                    ; $7754: $22
	ld   [bc], a                                     ; $7755: $02
	and  b                                           ; $7756: $a0
	dec  c                                           ; $7757: $0d
	daa                                              ; $7758: $27
	inc  d                                           ; $7759: $14
	and  b                                           ; $775a: $a0
	dec  b                                           ; $775b: $05
	daa                                              ; $775c: $27
	inc  b                                           ; $775d: $04
	and  b                                           ; $775e: $a0
	dec  c                                           ; $775f: $0d
	ld   [hl+], a                                    ; $7760: $22
	inc  b                                           ; $7761: $04
	daa                                              ; $7762: $27
	inc  b                                           ; $7763: $04
	add  hl, hl                                      ; $7764: $29
	ld   d, $a0                                      ; $7765: $16 $a0
	dec  b                                           ; $7767: $05
	add  hl, hl                                      ; $7768: $29
	ld   [bc], a                                     ; $7769: $02
	and  b                                           ; $776a: $a0
	dec  c                                           ; $776b: $0d
	daa                                              ; $776c: $27
	inc  b                                           ; $776d: $04
	add  hl, hl                                      ; $776e: $29
	inc  b                                           ; $776f: $04
	dec  hl                                          ; $7770: $2b
	ld   [$0830], sp                                 ; $7771: $08 $30 $08
	ld   [hl-], a                                    ; $7774: $32
	inc  b                                           ; $7775: $04
	jr   nc, jr_0fe_777c                             ; $7776: $30 $04

	dec  hl                                          ; $7778: $2b
	inc  b                                           ; $7779: $04
	add  hl, hl                                      ; $777a: $29
	inc  b                                           ; $777b: $04

jr_0fe_777c:
	daa                                              ; $777c: $27
	ld   c, $a0                                      ; $777d: $0e $a0
	dec  b                                           ; $777f: $05
	daa                                              ; $7780: $27
	ld   [bc], a                                     ; $7781: $02
	and  b                                           ; $7782: $a0
	dec  c                                           ; $7783: $0d
	daa                                              ; $7784: $27
	ld   b, $26                                      ; $7785: $06 $26
	dec  b                                           ; $7787: $05
	daa                                              ; $7788: $27
	dec  b                                           ; $7789: $05
	add  hl, hl                                      ; $778a: $29
	jr   jr_0fe_77b8                                 ; $778b: $18 $2b

	inc  b                                           ; $778d: $04
	jr   nc, jr_0fe_7794                             ; $778e: $30 $04

	dec  hl                                          ; $7790: $2b
	ld   [$0829], sp                                 ; $7791: $08 $29 $08

jr_0fe_7794:
	ld   [hl+], a                                    ; $7794: $22
	ld   [$0829], sp                                 ; $7795: $08 $29 $08
	daa                                              ; $7798: $27
	inc  l                                           ; $7799: $2c
	and  b                                           ; $779a: $a0
	dec  b                                           ; $779b: $05
	daa                                              ; $779c: $27
	inc  b                                           ; $779d: $04
	and  b                                           ; $779e: $a0
	dec  c                                           ; $779f: $0d
	daa                                              ; $77a0: $27
	inc  b                                           ; $77a1: $04
	add  hl, hl                                      ; $77a2: $29
	inc  b                                           ; $77a3: $04
	ld   [hl], $04                                   ; $77a4: $36 $04
	scf                                              ; $77a6: $37
	inc  b                                           ; $77a7: $04
	dec  sp                                          ; $77a8: $3b
	jr   jr_0fe_77e4                                 ; $77a9: $18 $39

	inc  b                                           ; $77ab: $04
	scf                                              ; $77ac: $37
	inc  b                                           ; $77ad: $04
	add  hl, sp                                      ; $77ae: $39
	ld   [bc], a                                     ; $77af: $02
	and  b                                           ; $77b0: $a0
	dec  b                                           ; $77b1: $05
	add  hl, sp                                      ; $77b2: $39
	inc  b                                           ; $77b3: $04
	rra                                              ; $77b4: $1f
	ld   [bc], a                                     ; $77b5: $02
	and  b                                           ; $77b6: $a0
	dec  c                                           ; $77b7: $0d

jr_0fe_77b8:
	ld   [hl-], a                                    ; $77b8: $32
	ld   [$0834], sp                                 ; $77b9: $08 $34 $08
	ld   [hl], $08                                   ; $77bc: $36 $08
	scf                                              ; $77be: $37
	ld   [bc], a                                     ; $77bf: $02
	and  b                                           ; $77c0: $a0
	dec  b                                           ; $77c1: $05
	scf                                              ; $77c2: $37
	inc  b                                           ; $77c3: $04
	rra                                              ; $77c4: $1f
	ld   [bc], a                                     ; $77c5: $02
	and  b                                           ; $77c6: $a0
	dec  c                                           ; $77c7: $0d
	ld   [hl-], a                                    ; $77c8: $32
	ld   [bc], a                                     ; $77c9: $02
	and  b                                           ; $77ca: $a0
	dec  b                                           ; $77cb: $05
	ld   [hl-], a                                    ; $77cc: $32
	inc  b                                           ; $77cd: $04
	rra                                              ; $77ce: $1f
	ld   [bc], a                                     ; $77cf: $02
	and  b                                           ; $77d0: $a0
	dec  c                                           ; $77d1: $0d
	jr   nc, jr_0fe_77d6                             ; $77d2: $30 $02

	ld   [hl-], a                                    ; $77d4: $32
	ld   [bc], a                                     ; $77d5: $02

jr_0fe_77d6:
	jr   nc, jr_0fe_77dc                             ; $77d6: $30 $04

	dec  hl                                          ; $77d8: $2b
	inc  b                                           ; $77d9: $04
	add  hl, hl                                      ; $77da: $29
	inc  b                                           ; $77db: $04

jr_0fe_77dc:
	dec  hl                                          ; $77dc: $2b
	ld   c, $a0                                      ; $77dd: $0e $a0
	dec  b                                           ; $77df: $05
	dec  hl                                          ; $77e0: $2b
	ld   [bc], a                                     ; $77e1: $02
	and  b                                           ; $77e2: $a0
	dec  c                                           ; $77e3: $0d

jr_0fe_77e4:
	dec  hl                                          ; $77e4: $2b
	inc  b                                           ; $77e5: $04
	jr   nc, jr_0fe_77ec                             ; $77e6: $30 $04

	ld   [hl-], a                                    ; $77e8: $32
	inc  b                                           ; $77e9: $04
	dec  hl                                          ; $77ea: $2b
	inc  b                                           ; $77eb: $04

jr_0fe_77ec:
	inc  [hl]                                        ; $77ec: $34
	ld   c, $a0                                      ; $77ed: $0e $a0
	dec  b                                           ; $77ef: $05
	inc  [hl]                                        ; $77f0: $34
	ld   [bc], a                                     ; $77f1: $02
	and  b                                           ; $77f2: $a0
	dec  c                                           ; $77f3: $0d
	inc  [hl]                                        ; $77f4: $34
	inc  b                                           ; $77f5: $04
	ld   [hl], $04                                   ; $77f6: $36 $04
	scf                                              ; $77f8: $37
	inc  b                                           ; $77f9: $04
	inc  [hl]                                        ; $77fa: $34
	inc  b                                           ; $77fb: $04
	add  hl, sp                                      ; $77fc: $39
	ld   c, $a0                                      ; $77fd: $0e $a0
	dec  b                                           ; $77ff: $05
	add  hl, sp                                      ; $7800: $39
	ld   [bc], a                                     ; $7801: $02
	and  b                                           ; $7802: $a0
	dec  c                                           ; $7803: $0d
	add  hl, sp                                      ; $7804: $39
	inc  b                                           ; $7805: $04
	scf                                              ; $7806: $37
	inc  b                                           ; $7807: $04
	ld   [hl], $04                                   ; $7808: $36 $04
	scf                                              ; $780a: $37
	inc  b                                           ; $780b: $04
	dec  sp                                          ; $780c: $3b
	ld   c, $a0                                      ; $780d: $0e $a0
	dec  b                                           ; $780f: $05
	dec  sp                                          ; $7810: $3b
	ld   [bc], a                                     ; $7811: $02
	and  b                                           ; $7812: $a0
	dec  c                                           ; $7813: $0d
	dec  sp                                          ; $7814: $3b
	inc  b                                           ; $7815: $04
	ld   a, [hl-]                                    ; $7816: $3a
	inc  b                                           ; $7817: $04
	dec  sp                                          ; $7818: $3b
	inc  b                                           ; $7819: $04
	ld   b, a                                        ; $781a: $47
	inc  b                                           ; $781b: $04
	ld   b, [hl]                                     ; $781c: $46
	db   $10                                         ; $781d: $10
	ld   b, h                                        ; $781e: $44
	db   $10                                         ; $781f: $10
	ld   b, d                                        ; $7820: $42
	ld   [$0440], sp                                 ; $7821: $08 $40 $04
	dec  sp                                          ; $7824: $3b
	inc  b                                           ; $7825: $04
	inc  [hl]                                        ; $7826: $34
	ld   [bc], a                                     ; $7827: $02
	and  b                                           ; $7828: $a0
	dec  b                                           ; $7829: $05
	inc  [hl]                                        ; $782a: $34
	inc  b                                           ; $782b: $04
	rra                                              ; $782c: $1f
	ld   [bc], a                                     ; $782d: $02
	and  b                                           ; $782e: $a0
	dec  c                                           ; $782f: $0d
	scf                                              ; $7830: $37
	ld   [bc], a                                     ; $7831: $02
	and  b                                           ; $7832: $a0
	dec  b                                           ; $7833: $05
	scf                                              ; $7834: $37
	inc  b                                           ; $7835: $04
	rra                                              ; $7836: $1f
	ld   [bc], a                                     ; $7837: $02
	and  b                                           ; $7838: $a0
	dec  c                                           ; $7839: $0d
	dec  sp                                          ; $783a: $3b
	db   $10                                         ; $783b: $10
	add  hl, sp                                      ; $783c: $39
	inc  b                                           ; $783d: $04
	dec  sp                                          ; $783e: $3b
	inc  b                                           ; $783f: $04
	inc  [hl]                                        ; $7840: $34
	inc  b                                           ; $7841: $04
	add  hl, sp                                      ; $7842: $39
	inc  b                                           ; $7843: $04
	scf                                              ; $7844: $37
	inc  l                                           ; $7845: $2c
	and  b                                           ; $7846: $a0
	dec  b                                           ; $7847: $05
	scf                                              ; $7848: $37
	inc  b                                           ; $7849: $04
	rra                                              ; $784a: $1f
	ld   [$0da0], sp                                 ; $784b: $08 $a0 $0d
	dec  de                                          ; $784e: $1b
	ld   [bc], a                                     ; $784f: $02
	and  b                                           ; $7850: $a0
	dec  b                                           ; $7851: $05
	dec  de                                          ; $7852: $1b
	ld   [bc], a                                     ; $7853: $02
	and  b                                           ; $7854: $a0
	dec  c                                           ; $7855: $0d
	dec  de                                          ; $7856: $1b
	inc  b                                           ; $7857: $04
	daa                                              ; $7858: $27
	inc  e                                           ; $7859: $1c
	rra                                              ; $785a: $1f
	inc  b                                           ; $785b: $04
	and  b                                           ; $785c: $a0
	dec  c                                           ; $785d: $0d
	ld   h, $08                                      ; $785e: $26 $08
	daa                                              ; $7860: $27
	ld   [FadePalettesAndSetRangeToUpdate], sp                                 ; $7861: $08 $32 $08
	ld   h, $10                                      ; $7864: $26 $10
	inc  h                                           ; $7866: $24
	inc  b                                           ; $7867: $04
	and  b                                           ; $7868: $a0
	dec  b                                           ; $7869: $05
	inc  h                                           ; $786a: $24
	inc  b                                           ; $786b: $04
	and  b                                           ; $786c: $a0
	dec  c                                           ; $786d: $0d
	inc  h                                           ; $786e: $24
	inc  l                                           ; $786f: $2c
	and  b                                           ; $7870: $a0
	dec  b                                           ; $7871: $05
	inc  h                                           ; $7872: $24
	inc  b                                           ; $7873: $04
	and  b                                           ; $7874: $a0
	dec  c                                           ; $7875: $0d
	inc  h                                           ; $7876: $24
	ld   e, $a0                                      ; $7877: $1e $a0
	dec  b                                           ; $7879: $05
	inc  h                                           ; $787a: $24
	ld   [bc], a                                     ; $787b: $02
	and  b                                           ; $787c: $a0
	dec  c                                           ; $787d: $0d
	inc  h                                           ; $787e: $24
	ld   [$0826], sp                                 ; $787f: $08 $26 $08
	jr   nc, jr_0fe_788a                             ; $7882: $30 $06

	and  b                                           ; $7884: $a0
	dec  b                                           ; $7885: $05
	jr   nc, jr_0fe_788a                             ; $7886: $30 $02

	and  b                                           ; $7888: $a0
	dec  c                                           ; $7889: $0d

jr_0fe_788a:
	inc  h                                           ; $788a: $24
	db   $10                                         ; $788b: $10
	ld   [hl+], a                                    ; $788c: $22
	inc  b                                           ; $788d: $04
	and  b                                           ; $788e: $a0
	dec  b                                           ; $788f: $05
	ld   [hl+], a                                    ; $7890: $22
	inc  b                                           ; $7891: $04
	and  b                                           ; $7892: $a0
	dec  c                                           ; $7893: $0d
	ld   [hl+], a                                    ; $7894: $22
	inc  l                                           ; $7895: $2c
	and  b                                           ; $7896: $a0
	dec  b                                           ; $7897: $05
	ld   [hl+], a                                    ; $7898: $22
	inc  b                                           ; $7899: $04
	and  b                                           ; $789a: $a0
	dec  c                                           ; $789b: $0d
	daa                                              ; $789c: $27
	ld   e, $a0                                      ; $789d: $1e $a0
	dec  b                                           ; $789f: $05
	daa                                              ; $78a0: $27
	ld   [bc], a                                     ; $78a1: $02
	and  b                                           ; $78a2: $a0
	dec  c                                           ; $78a3: $0d
	ld   h, $08                                      ; $78a4: $26 $08
	daa                                              ; $78a6: $27
	ld   [$0632], sp                                 ; $78a7: $08 $32 $06
	and  b                                           ; $78aa: $a0
	dec  b                                           ; $78ab: $05
	ld   [hl-], a                                    ; $78ac: $32
	ld   [bc], a                                     ; $78ad: $02
	and  b                                           ; $78ae: $a0
	dec  c                                           ; $78af: $0d
	ld   h, $10                                      ; $78b0: $26 $10
	inc  h                                           ; $78b2: $24
	inc  b                                           ; $78b3: $04
	and  b                                           ; $78b4: $a0
	dec  b                                           ; $78b5: $05
	inc  h                                           ; $78b6: $24
	inc  b                                           ; $78b7: $04
	and  b                                           ; $78b8: $a0
	dec  c                                           ; $78b9: $0d
	inc  h                                           ; $78ba: $24
	inc  l                                           ; $78bb: $2c
	and  b                                           ; $78bc: $a0
	dec  b                                           ; $78bd: $05
	inc  h                                           ; $78be: $24
	inc  b                                           ; $78bf: $04
	and  b                                           ; $78c0: $a0
	dec  c                                           ; $78c1: $0d
	dec  sp                                          ; $78c2: $3b
	ld   b, $39                                      ; $78c3: $06 $39
	dec  b                                           ; $78c5: $05
	dec  sp                                          ; $78c6: $3b
	dec  b                                           ; $78c7: $05
	inc  [hl]                                        ; $78c8: $34
	db   $10                                         ; $78c9: $10
	and  b                                           ; $78ca: $a0
	dec  b                                           ; $78cb: $05
	inc  [hl]                                        ; $78cc: $34
	ld   b, $a0                                      ; $78cd: $06 $a0
	dec  c                                           ; $78cf: $0d
	inc  sp                                          ; $78d0: $33
	dec  b                                           ; $78d1: $05
	inc  [hl]                                        ; $78d2: $34
	dec  b                                           ; $78d3: $05
	ld   [hl], $06                                   ; $78d4: $36 $06
	inc  [hl]                                        ; $78d6: $34
	dec  b                                           ; $78d7: $05
	ld   [hl], $05                                   ; $78d8: $36 $05
	scf                                              ; $78da: $37
	ld   b, $36                                      ; $78db: $06 $36
	dec  b                                           ; $78dd: $05
	scf                                              ; $78de: $37
	dec  b                                           ; $78df: $05
	jr   nc, jr_0fe_78f2                             ; $78e0: $30 $10

	and  b                                           ; $78e2: $a0
	dec  b                                           ; $78e3: $05
	jr   nc, jr_0fe_78ec                             ; $78e4: $30 $06

	and  b                                           ; $78e6: $a0
	dec  c                                           ; $78e7: $0d
	dec  hl                                          ; $78e8: $2b
	dec  b                                           ; $78e9: $05
	jr   nc, jr_0fe_78f1                             ; $78ea: $30 $05

jr_0fe_78ec:
	ld   [hl-], a                                    ; $78ec: $32
	ld   b, $30                                      ; $78ed: $06 $30
	dec  b                                           ; $78ef: $05
	ld   [hl-], a                                    ; $78f0: $32

jr_0fe_78f1:
	dec  b                                           ; $78f1: $05

jr_0fe_78f2:
	inc  sp                                          ; $78f2: $33
	ld   b, $2b                                      ; $78f3: $06 $2b
	dec  b                                           ; $78f5: $05
	jr   z, jr_0fe_78fd                              ; $78f6: $28 $05

	dec  h                                           ; $78f8: $25
	ld   b, $22                                      ; $78f9: $06 $22
	dec  b                                           ; $78fb: $05
	dec  de                                          ; $78fc: $1b

jr_0fe_78fd:
	dec  b                                           ; $78fd: $05
	ld   [hl-], a                                    ; $78fe: $32
	ld   b, $29                                      ; $78ff: $06 $29
	dec  b                                           ; $7901: $05
	ld   h, $05                                      ; $7902: $26 $05
	inc  hl                                          ; $7904: $23
	ld   b, $20                                      ; $7905: $06 $20
	dec  b                                           ; $7907: $05
	add  hl, de                                      ; $7908: $19
	dec  b                                           ; $7909: $05
	ld   [hl+], a                                    ; $790a: $22
	ld   e, d                                        ; $790b: $5a
	and  b                                           ; $790c: $a0
	dec  b                                           ; $790d: $05
	ld   [hl+], a                                    ; $790e: $22
	ld   b, $a0                                      ; $790f: $06 $a0
	dec  c                                           ; $7911: $0d
	daa                                              ; $7912: $27
	ld   [$0829], sp                                 ; $7913: $08 $29 $08
	ld   [hl], $0c                                   ; $7916: $36 $0c
	scf                                              ; $7918: $37
	inc  b                                           ; $7919: $04
	or   b                                           ; $791a: $b0
	di                                               ; $791b: $f3
	rst  $38                                         ; $791c: $ff
	rst  $38                                         ; $791d: $ff
	add  hl, bc                                      ; $791e: $09
	ld   b, b                                        ; $791f: $40
	ld   [bc], a                                     ; $7920: $02
	inc  bc                                          ; $7921: $03

jr_0fe_7922:
	rra                                              ; $7922: $1f
	jr   nz, jr_0fe_7922                             ; $7923: $20 $fd

	di                                               ; $7925: $f3
	rra                                              ; $7926: $1f
	ld   [$04a0], sp                                 ; $7927: $08 $a0 $04
	ld   d, d                                        ; $792a: $52
	inc  b                                           ; $792b: $04
	and  b                                           ; $792c: $a0
	ld   b, $52                                      ; $792d: $06 $52
	inc  b                                           ; $792f: $04
	and  b                                           ; $7930: $a0
	inc  b                                           ; $7931: $04
	ld   d, b                                        ; $7932: $50
	inc  b                                           ; $7933: $04
	and  b                                           ; $7934: $a0

jr_0fe_7935:
	ld   b, $50                                      ; $7935: $06 $50
	inc  b                                           ; $7937: $04
	and  b                                           ; $7938: $a0
	inc  b                                           ; $7939: $04
	ld   c, e                                        ; $793a: $4b
	inc  b                                           ; $793b: $04
	and  b                                           ; $793c: $a0
	ld   b, $4b                                      ; $793d: $06 $4b
	inc  b                                           ; $793f: $04
	and  b                                           ; $7940: $a0
	inc  b                                           ; $7941: $04
	ld   c, c                                        ; $7942: $49
	inc  b                                           ; $7943: $04
	and  b                                           ; $7944: $a0
	ld   b, $49                                      ; $7945: $06 $49
	inc  b                                           ; $7947: $04
	and  b                                           ; $7948: $a0
	inc  b                                           ; $7949: $04
	ld   b, a                                        ; $794a: $47
	inc  b                                           ; $794b: $04
	and  b                                           ; $794c: $a0
	ld   b, $47                                      ; $794d: $06 $47
	inc  b                                           ; $794f: $04
	and  b                                           ; $7950: $a0
	inc  b                                           ; $7951: $04
	ld   b, [hl]                                     ; $7952: $46
	inc  b                                           ; $7953: $04
	and  b                                           ; $7954: $a0
	ld   b, $46                                      ; $7955: $06 $46
	inc  b                                           ; $7957: $04
	and  b                                           ; $7958: $a0
	inc  b                                           ; $7959: $04
	ld   b, a                                        ; $795a: $47
	inc  b                                           ; $795b: $04
	and  b                                           ; $795c: $a0
	ld   b, $47                                      ; $795d: $06 $47
	inc  b                                           ; $795f: $04
	rra                                              ; $7960: $1f
	ld   [$04a0], sp                                 ; $7961: $08 $a0 $04
	ld   b, [hl]                                     ; $7964: $46
	inc  b                                           ; $7965: $04
	ld   b, a                                        ; $7966: $47
	inc  b                                           ; $7967: $04
	ld   b, d                                        ; $7968: $42
	inc  b                                           ; $7969: $04
	ld   b, h                                        ; $796a: $44
	inc  b                                           ; $796b: $04
	ld   b, a                                        ; $796c: $47
	inc  b                                           ; $796d: $04
	ld   c, c                                        ; $796e: $49
	inc  b                                           ; $796f: $04
	ld   b, d                                        ; $7970: $42
	db   $10                                         ; $7971: $10
	and  b                                           ; $7972: $a0
	ld   [bc], a                                     ; $7973: $02
	ld   hl, $1910                                   ; $7974: $21 $10 $19
	db   $10                                         ; $7977: $10
	inc  h                                           ; $7978: $24
	db   $10                                         ; $7979: $10
	jr   nz, @+$22                                   ; $797a: $20 $20

	jr   nc, jr_0fe_7986                             ; $797c: $30 $08

	add  hl, hl                                      ; $797e: $29
	ld   [$082b], sp                                 ; $797f: $08 $2b $08
	add  hl, hl                                      ; $7982: $29
	ld   [$0830], sp                                 ; $7983: $08 $30 $08

jr_0fe_7986:
	dec  hl                                          ; $7986: $2b
	ld   [$0829], sp                                 ; $7987: $08 $29 $08
	inc  h                                           ; $798a: $24
	ld   [$0422], sp                                 ; $798b: $08 $22 $04
	and  b                                           ; $798e: $a0
	inc  b                                           ; $798f: $04
	ld   [hl+], a                                    ; $7990: $22
	inc  b                                           ; $7991: $04
	rra                                              ; $7992: $1f
	jr   c, jr_0fe_7935                              ; $7993: $38 $a0

	ld   [bc], a                                     ; $7995: $02
	xor  h                                           ; $7996: $ac
	ld   bc, $02f0                                   ; $7997: $01 $f0 $02
	xor  h                                           ; $799a: $ac
	ld   bc, $0302                                   ; $799b: $01 $02 $03
	and  b                                           ; $799e: $a0
	ld   [bc], a                                     ; $799f: $02
	xor  h                                           ; $79a0: $ac
	ld   bc, $02f0                                   ; $79a1: $01 $f0 $02
	xor  h                                           ; $79a4: $ac
	ld   bc, $0334                                   ; $79a5: $01 $34 $03
	add  hl, de                                      ; $79a8: $19
	ld   [$0830], sp                                 ; $79a9: $08 $30 $08
	inc  h                                           ; $79ac: $24
	ld   [$0830], sp                                 ; $79ad: $08 $30 $08
	ld   [hl+], a                                    ; $79b0: $22
	ld   [$0834], sp                                 ; $79b1: $08 $34 $08
	ld   [de], a                                     ; $79b4: $12
	ld   [$0836], sp                                 ; $79b5: $08 $36 $08
	rla                                              ; $79b8: $17
	ld   [$082b], sp                                 ; $79b9: $08 $2b $08
	ld   [hl+], a                                    ; $79bc: $22
	ld   [$082b], sp                                 ; $79bd: $08 $2b $08
	rla                                              ; $79c0: $17
	ld   [FadePalettesAndSetRangeToUpdate], sp                                 ; $79c1: $08 $32 $08
	ld   [hl+], a                                    ; $79c4: $22
	ld   [$082b], sp                                 ; $79c5: $08 $2b $08
	rla                                              ; $79c8: $17
	ld   [$042b], sp                                 ; $79c9: $08 $2b $04
	scf                                              ; $79cc: $37
	inc  b                                           ; $79cd: $04
	ld   [hl+], a                                    ; $79ce: $22
	inc  b                                           ; $79cf: $04
	add  hl, hl                                      ; $79d0: $29
	inc  b                                           ; $79d1: $04
	dec  hl                                          ; $79d2: $2b
	inc  b                                           ; $79d3: $04
	scf                                              ; $79d4: $37
	inc  b                                           ; $79d5: $04
	rla                                              ; $79d6: $17
	inc  b                                           ; $79d7: $04
	add  hl, hl                                      ; $79d8: $29
	inc  b                                           ; $79d9: $04
	jr   nc, @+$06                                   ; $79da: $30 $04

	rra                                              ; $79dc: $1f
	inc  b                                           ; $79dd: $04
	inc  hl                                          ; $79de: $23
	ld   [$0830], sp                                 ; $79df: $08 $30 $08
	xor  h                                           ; $79e2: $ac
	ld   bc, $0302                                   ; $79e3: $01 $02 $03
	rla                                              ; $79e6: $17
	ld   [$042b], sp                                 ; $79e7: $08 $2b $04
	scf                                              ; $79ea: $37
	inc  b                                           ; $79eb: $04
	ld   [hl+], a                                    ; $79ec: $22
	inc  b                                           ; $79ed: $04
	add  hl, hl                                      ; $79ee: $29
	inc  b                                           ; $79ef: $04
	dec  hl                                          ; $79f0: $2b
	inc  b                                           ; $79f1: $04
	scf                                              ; $79f2: $37
	inc  b                                           ; $79f3: $04
	rla                                              ; $79f4: $17
	inc  b                                           ; $79f5: $04
	add  hl, hl                                      ; $79f6: $29
	inc  b                                           ; $79f7: $04
	jr   nc, @+$06                                   ; $79f8: $30 $04

	scf                                              ; $79fa: $37
	inc  b                                           ; $79fb: $04
	inc  hl                                          ; $79fc: $23
	ld   [$0830], sp                                 ; $79fd: $08 $30 $08
	xor  h                                           ; $7a00: $ac
	ld   bc, $0334                                   ; $7a01: $01 $34 $03
	add  hl, de                                      ; $7a04: $19
	ld   [$0830], sp                                 ; $7a05: $08 $30 $08
	inc  h                                           ; $7a08: $24
	ld   [$0830], sp                                 ; $7a09: $08 $30 $08
	ld   [hl+], a                                    ; $7a0c: $22
	ld   [$0834], sp                                 ; $7a0d: $08 $34 $08
	ld   [de], a                                     ; $7a10: $12
	ld   [$0830], sp                                 ; $7a11: $08 $30 $08
	rla                                              ; $7a14: $17
	ld   [$082b], sp                                 ; $7a15: $08 $2b $08
	daa                                              ; $7a18: $27
	ld   [FadePalettesAndSetRangeToUpdate], sp                                 ; $7a19: $08 $32 $08
	rla                                              ; $7a1c: $17
	ld   a, [de]                                     ; $7a1d: $1a
	rra                                              ; $7a1e: $1f
	ld   b, $30                                      ; $7a1f: $06 $30
	ld   [bc], a                                     ; $7a21: $02
	and  b                                           ; $7a22: $a0
	inc  b                                           ; $7a23: $04
	jr   nc, jr_0fe_7a2a                             ; $7a24: $30 $04

	rra                                              ; $7a26: $1f
	ld   [bc], a                                     ; $7a27: $02
	and  b                                           ; $7a28: $a0
	ld   [bc], a                                     ; $7a29: $02

jr_0fe_7a2a:
	jr   nc, jr_0fe_7a34                             ; $7a2a: $30 $08

	jr   nc, jr_0fe_7a30                             ; $7a2c: $30 $02

	and  b                                           ; $7a2e: $a0
	inc  b                                           ; $7a2f: $04

jr_0fe_7a30:
	jr   nc, jr_0fe_7a36                             ; $7a30: $30 $04

	rra                                              ; $7a32: $1f
	ld   [bc], a                                     ; $7a33: $02

jr_0fe_7a34:
	and  b                                           ; $7a34: $a0
	ld   [bc], a                                     ; $7a35: $02

jr_0fe_7a36:
	jr   nc, jr_0fe_7a3a                             ; $7a36: $30 $02

	and  b                                           ; $7a38: $a0
	inc  b                                           ; $7a39: $04

jr_0fe_7a3a:
	jr   nc, jr_0fe_7a40                             ; $7a3a: $30 $04

	rra                                              ; $7a3c: $1f
	ld   [bc], a                                     ; $7a3d: $02
	and  b                                           ; $7a3e: $a0
	ld   [bc], a                                     ; $7a3f: $02

jr_0fe_7a40:
	dec  hl                                          ; $7a40: $2b
	ld   [bc], a                                     ; $7a41: $02
	and  b                                           ; $7a42: $a0
	inc  b                                           ; $7a43: $04
	dec  hl                                          ; $7a44: $2b
	inc  b                                           ; $7a45: $04
	rra                                              ; $7a46: $1f
	ld   [bc], a                                     ; $7a47: $02
	and  b                                           ; $7a48: $a0
	ld   [bc], a                                     ; $7a49: $02
	dec  hl                                          ; $7a4a: $2b
	ld   [$022b], sp                                 ; $7a4b: $08 $2b $02
	and  b                                           ; $7a4e: $a0
	inc  b                                           ; $7a4f: $04
	dec  hl                                          ; $7a50: $2b
	inc  b                                           ; $7a51: $04
	rra                                              ; $7a52: $1f
	ld   [bc], a                                     ; $7a53: $02
	and  b                                           ; $7a54: $a0
	ld   [bc], a                                     ; $7a55: $02
	dec  hl                                          ; $7a56: $2b
	ld   [bc], a                                     ; $7a57: $02
	and  b                                           ; $7a58: $a0
	inc  b                                           ; $7a59: $04
	dec  hl                                          ; $7a5a: $2b
	inc  b                                           ; $7a5b: $04
	rra                                              ; $7a5c: $1f
	ld   [bc], a                                     ; $7a5d: $02
	and  b                                           ; $7a5e: $a0
	ld   [bc], a                                     ; $7a5f: $02
	add  hl, hl                                      ; $7a60: $29
	ld   [bc], a                                     ; $7a61: $02
	and  b                                           ; $7a62: $a0
	inc  b                                           ; $7a63: $04
	add  hl, hl                                      ; $7a64: $29
	inc  b                                           ; $7a65: $04
	rra                                              ; $7a66: $1f
	ld   [bc], a                                     ; $7a67: $02
	and  b                                           ; $7a68: $a0
	ld   [bc], a                                     ; $7a69: $02
	add  hl, hl                                      ; $7a6a: $29
	ld   [$0229], sp                                 ; $7a6b: $08 $29 $02
	and  b                                           ; $7a6e: $a0
	inc  b                                           ; $7a6f: $04
	add  hl, hl                                      ; $7a70: $29
	inc  b                                           ; $7a71: $04
	rra                                              ; $7a72: $1f
	ld   [bc], a                                     ; $7a73: $02
	and  b                                           ; $7a74: $a0
	ld   [bc], a                                     ; $7a75: $02
	add  hl, hl                                      ; $7a76: $29
	ld   [bc], a                                     ; $7a77: $02
	and  b                                           ; $7a78: $a0
	inc  b                                           ; $7a79: $04
	add  hl, hl                                      ; $7a7a: $29
	inc  b                                           ; $7a7b: $04
	rra                                              ; $7a7c: $1f
	ld   [bc], a                                     ; $7a7d: $02
	and  b                                           ; $7a7e: $a0
	ld   [bc], a                                     ; $7a7f: $02
	add  hl, hl                                      ; $7a80: $29
	ld   [$0827], sp                                 ; $7a81: $08 $27 $08
	and  b                                           ; $7a84: $a0
	inc  b                                           ; $7a85: $04
	daa                                              ; $7a86: $27
	ld   [$081f], sp                                 ; $7a87: $08 $1f $08
	and  b                                           ; $7a8a: $a0
	ld   [bc], a                                     ; $7a8b: $02
	ld   hl, $2708                                   ; $7a8c: $21 $08 $27
	inc  b                                           ; $7a8f: $04
	inc  h                                           ; $7a90: $24
	inc  b                                           ; $7a91: $04
	daa                                              ; $7a92: $27
	inc  c                                           ; $7a93: $0c
	and  b                                           ; $7a94: $a0
	inc  b                                           ; $7a95: $04
	daa                                              ; $7a96: $27
	inc  b                                           ; $7a97: $04
	and  b                                           ; $7a98: $a0
	ld   [bc], a                                     ; $7a99: $02
	inc  hl                                          ; $7a9a: $23
	ld   [$0430], sp                                 ; $7a9b: $08 $30 $04
	add  hl, hl                                      ; $7a9e: $29
	inc  b                                           ; $7a9f: $04
	jr   nc, jr_0fe_7aae                             ; $7aa0: $30 $0c

	and  b                                           ; $7aa2: $a0
	inc  b                                           ; $7aa3: $04
	jr   nc, @+$06                                   ; $7aa4: $30 $04

	and  b                                           ; $7aa6: $a0
	ld   [bc], a                                     ; $7aa7: $02
	ld   [hl+], a                                    ; $7aa8: $22
	ld   [$0432], sp                                 ; $7aa9: $08 $32 $04
	dec  hl                                          ; $7aac: $2b
	inc  b                                           ; $7aad: $04

jr_0fe_7aae:
	daa                                              ; $7aae: $27
	inc  b                                           ; $7aaf: $04
	and  b                                           ; $7ab0: $a0
	inc  b                                           ; $7ab1: $04
	daa                                              ; $7ab2: $27
	inc  b                                           ; $7ab3: $04
	and  b                                           ; $7ab4: $a0
	ld   [bc], a                                     ; $7ab5: $02
	dec  hl                                          ; $7ab6: $2b
	inc  b                                           ; $7ab7: $04
	ld   [hl-], a                                    ; $7ab8: $32
	inc  b                                           ; $7ab9: $04
	ld   hl, $a004                                   ; $7aba: $21 $04 $a0
	inc  b                                           ; $7abd: $04
	ld   hl, $a004                                   ; $7abe: $21 $04 $a0
	ld   [bc], a                                     ; $7ac1: $02
	daa                                              ; $7ac2: $27
	inc  b                                           ; $7ac3: $04
	and  b                                           ; $7ac4: $a0
	inc  b                                           ; $7ac5: $04
	daa                                              ; $7ac6: $27
	inc  b                                           ; $7ac7: $04
	and  b                                           ; $7ac8: $a0
	ld   [bc], a                                     ; $7ac9: $02
	ld   a, [hl+]                                    ; $7aca: $2a
	inc  b                                           ; $7acb: $04
	and  b                                           ; $7acc: $a0
	inc  b                                           ; $7acd: $04
	ld   a, [hl+]                                    ; $7ace: $2a
	inc  b                                           ; $7acf: $04
	and  b                                           ; $7ad0: $a0
	ld   [bc], a                                     ; $7ad1: $02
	ld   sp, $a004                                   ; $7ad2: $31 $04 $a0
	inc  b                                           ; $7ad5: $04
	ld   sp, $a004                                   ; $7ad6: $31 $04 $a0
	ld   [bc], a                                     ; $7ad9: $02
	inc  [hl]                                        ; $7ada: $34
	jr   nz, jr_0fe_7b0f                             ; $7adb: $20 $32

	ld   e, $a0                                      ; $7add: $1e $a0
	inc  b                                           ; $7adf: $04
	ld   [hl-], a                                    ; $7ae0: $32
	ld   [bc], a                                     ; $7ae1: $02
	and  b                                           ; $7ae2: $a0
	ld   [bc], a                                     ; $7ae3: $02
	daa                                              ; $7ae4: $27
	inc  c                                           ; $7ae5: $0c
	ld   [hl+], a                                    ; $7ae6: $22
	inc  b                                           ; $7ae7: $04
	daa                                              ; $7ae8: $27
	inc  c                                           ; $7ae9: $0c
	ld   [hl+], a                                    ; $7aea: $22
	inc  b                                           ; $7aeb: $04
	rla                                              ; $7aec: $17
	db   $10                                         ; $7aed: $10
	and  b                                           ; $7aee: $a0
	inc  b                                           ; $7aef: $04
	rla                                              ; $7af0: $17
	ld   b, $1f                                      ; $7af1: $06 $1f
	ld   a, [bc]                                     ; $7af3: $0a
	db   $fd                                         ; $7af4: $fd

jr_0fe_7af5:
	ldh  a, [hScriptOpcodeParams]                                    ; $7af5: $f0 $a0
	ld   [bc], a                                     ; $7af7: $02
	inc  [hl]                                        ; $7af8: $34
	inc  b                                           ; $7af9: $04
	and  b                                           ; $7afa: $a0
	inc  b                                           ; $7afb: $04
	inc  [hl]                                        ; $7afc: $34
	inc  b                                           ; $7afd: $04
	or   a                                           ; $7afe: $b7
	ldh  a, [$fd]                                    ; $7aff: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $7b01: $f0 $a0
	ld   [bc], a                                     ; $7b03: $02
	ld   sp, $a004                                   ; $7b04: $31 $04 $a0

jr_0fe_7b07:
	inc  b                                           ; $7b07: $04
	ld   sp, $b704                                   ; $7b08: $31 $04 $b7
	ldh  a, [$fd]                                    ; $7b0b: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $7b0d: $f0 $a0

jr_0fe_7b0f:
	ld   [bc], a                                     ; $7b0f: $02
	add  hl, hl                                      ; $7b10: $29
	inc  b                                           ; $7b11: $04
	and  b                                           ; $7b12: $a0
	inc  b                                           ; $7b13: $04
	add  hl, hl                                      ; $7b14: $29
	inc  b                                           ; $7b15: $04
	or   e                                           ; $7b16: $b3
	ldh  a, [$fd]                                    ; $7b17: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $7b19: $f0 $a0
	ld   [bc], a                                     ; $7b1b: $02
	ld   [hl-], a                                    ; $7b1c: $32
	inc  b                                           ; $7b1d: $04
	and  b                                           ; $7b1e: $a0
	inc  b                                           ; $7b1f: $04
	ld   [hl-], a                                    ; $7b20: $32
	inc  b                                           ; $7b21: $04
	or   e                                           ; $7b22: $b3
	ldh  a, [$fd]                                    ; $7b23: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $7b25: $f0 $a0
	ld   [bc], a                                     ; $7b27: $02
	daa                                              ; $7b28: $27
	inc  b                                           ; $7b29: $04
	and  b                                           ; $7b2a: $a0
	inc  b                                           ; $7b2b: $04
	daa                                              ; $7b2c: $27
	inc  b                                           ; $7b2d: $04
	or   a                                           ; $7b2e: $b7
	ldh  a, [$fd]                                    ; $7b2f: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $7b31: $f0 $a0
	ld   [bc], a                                     ; $7b33: $02
	inc  [hl]                                        ; $7b34: $34
	inc  b                                           ; $7b35: $04
	and  b                                           ; $7b36: $a0
	inc  b                                           ; $7b37: $04
	inc  [hl]                                        ; $7b38: $34
	inc  b                                           ; $7b39: $04
	or   a                                           ; $7b3a: $b7
	ldh  a, [$fd]                                    ; $7b3b: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $7b3d: $f0 $a0
	ld   [bc], a                                     ; $7b3f: $02
	ld   sp, $a004                                   ; $7b40: $31 $04 $a0
	inc  b                                           ; $7b43: $04
	ld   sp, $b704                                   ; $7b44: $31 $04 $b7
	ldh  a, [hScriptOpcodeParams]                                    ; $7b47: $f0 $a0
	ld   [bc], a                                     ; $7b49: $02
	ld   sp, $2b0c                                   ; $7b4a: $31 $0c $2b
	ld   [bc], a                                     ; $7b4d: $02
	add  hl, hl                                      ; $7b4e: $29
	ld   [bc], a                                     ; $7b4f: $02
	jr   z, @+$04                                    ; $7b50: $28 $02

	daa                                              ; $7b52: $27
	jr   nz, jr_0fe_7af5                             ; $7b53: $20 $a0

	inc  b                                           ; $7b55: $04
	daa                                              ; $7b56: $27
	ld   [$02a0], sp                                 ; $7b57: $08 $a0 $02
	add  hl, hl                                      ; $7b5a: $29
	ld   b, $30                                      ; $7b5b: $06 $30
	inc  c                                           ; $7b5d: $0c
	daa                                              ; $7b5e: $27
	ld   [bc], a                                     ; $7b5f: $02
	ld   h, $02                                      ; $7b60: $26 $02
	dec  h                                           ; $7b62: $25
	ld   [bc], a                                     ; $7b63: $02
	inc  hl                                          ; $7b64: $23
	jr   nz, jr_0fe_7b07                             ; $7b65: $20 $a0

	inc  b                                           ; $7b67: $04
	inc  hl                                          ; $7b68: $23
	ld   [$02a0], sp                                 ; $7b69: $08 $a0 $02
	daa                                              ; $7b6c: $27
	ld   b, $25                                      ; $7b6d: $06 $25
	ld   [$0623], sp                                 ; $7b6f: $08 $23 $06
	and  b                                           ; $7b72: $a0
	inc  b                                           ; $7b73: $04
	inc  hl                                          ; $7b74: $23
	ld   [bc], a                                     ; $7b75: $02
	and  b                                           ; $7b76: $a0
	ld   [bc], a                                     ; $7b77: $02
	ld   [hl+], a                                    ; $7b78: $22
	ld   [$0618], sp                                 ; $7b79: $08 $18 $06
	and  b                                           ; $7b7c: $a0
	inc  b                                           ; $7b7d: $04
	jr   jr_0fe_7b82                                 ; $7b7e: $18 $02

	and  b                                           ; $7b80: $a0
	ld   [bc], a                                     ; $7b81: $02

jr_0fe_7b82:
	inc  hl                                          ; $7b82: $23
	ld   [$0620], sp                                 ; $7b83: $08 $20 $06
	and  b                                           ; $7b86: $a0
	inc  b                                           ; $7b87: $04
	jr   nz, jr_0fe_7b8c                             ; $7b88: $20 $02

	and  b                                           ; $7b8a: $a0
	ld   [bc], a                                     ; $7b8b: $02

jr_0fe_7b8c:
	add  hl, de                                      ; $7b8c: $19
	ld   [$0613], sp                                 ; $7b8d: $08 $13 $06
	and  b                                           ; $7b90: $a0
	inc  b                                           ; $7b91: $04
	inc  de                                          ; $7b92: $13
	ld   [bc], a                                     ; $7b93: $02
	rra                                              ; $7b94: $1f
	ld   [$02a0], sp                                 ; $7b95: $08 $a0 $02
	add  hl, hl                                      ; $7b98: $29
	ld   [bc], a                                     ; $7b99: $02
	and  b                                           ; $7b9a: $a0
	inc  b                                           ; $7b9b: $04
	add  hl, hl                                      ; $7b9c: $29
	ld   [bc], a                                     ; $7b9d: $02
	and  b                                           ; $7b9e: $a0
	ld   [bc], a                                     ; $7b9f: $02
	add  hl, hl                                      ; $7ba0: $29
	ld   [bc], a                                     ; $7ba1: $02
	and  b                                           ; $7ba2: $a0
	inc  b                                           ; $7ba3: $04
	add  hl, hl                                      ; $7ba4: $29
	ld   [bc], a                                     ; $7ba5: $02
	and  b                                           ; $7ba6: $a0
	ld   [bc], a                                     ; $7ba7: $02
	add  hl, hl                                      ; $7ba8: $29
	ld   [bc], a                                     ; $7ba9: $02
	and  b                                           ; $7baa: $a0
	inc  b                                           ; $7bab: $04
	add  hl, hl                                      ; $7bac: $29
	ld   [bc], a                                     ; $7bad: $02
	rra                                              ; $7bae: $1f
	inc  c                                           ; $7baf: $0c
	and  b                                           ; $7bb0: $a0
	ld   [bc], a                                     ; $7bb1: $02
	add  hl, hl                                      ; $7bb2: $29
	ld   [bc], a                                     ; $7bb3: $02
	and  b                                           ; $7bb4: $a0
	inc  b                                           ; $7bb5: $04
	add  hl, hl                                      ; $7bb6: $29
	ld   [bc], a                                     ; $7bb7: $02
	rra                                              ; $7bb8: $1f
	inc  b                                           ; $7bb9: $04
	and  b                                           ; $7bba: $a0
	ld   [bc], a                                     ; $7bbb: $02
	add  hl, hl                                      ; $7bbc: $29
	ld   [bc], a                                     ; $7bbd: $02
	and  b                                           ; $7bbe: $a0
	inc  b                                           ; $7bbf: $04
	add  hl, hl                                      ; $7bc0: $29
	ld   [bc], a                                     ; $7bc1: $02
	rra                                              ; $7bc2: $1f
	inc  c                                           ; $7bc3: $0c
	and  b                                           ; $7bc4: $a0
	ld   [bc], a                                     ; $7bc5: $02
	add  hl, hl                                      ; $7bc6: $29
	ld   [bc], a                                     ; $7bc7: $02
	and  b                                           ; $7bc8: $a0
	inc  b                                           ; $7bc9: $04
	add  hl, hl                                      ; $7bca: $29
	ld   [bc], a                                     ; $7bcb: $02
	and  b                                           ; $7bcc: $a0
	ld   [bc], a                                     ; $7bcd: $02
	add  hl, hl                                      ; $7bce: $29
	ld   [bc], a                                     ; $7bcf: $02
	and  b                                           ; $7bd0: $a0
	inc  b                                           ; $7bd1: $04
	add  hl, hl                                      ; $7bd2: $29
	ld   [bc], a                                     ; $7bd3: $02
	and  b                                           ; $7bd4: $a0
	ld   [bc], a                                     ; $7bd5: $02
	add  hl, hl                                      ; $7bd6: $29
	ld   [bc], a                                     ; $7bd7: $02
	and  b                                           ; $7bd8: $a0
	inc  b                                           ; $7bd9: $04
	add  hl, hl                                      ; $7bda: $29
	ld   [bc], a                                     ; $7bdb: $02
	rra                                              ; $7bdc: $1f
	inc  b                                           ; $7bdd: $04
	and  b                                           ; $7bde: $a0
	ld   [bc], a                                     ; $7bdf: $02
	daa                                              ; $7be0: $27
	ld   [bc], a                                     ; $7be1: $02
	and  b                                           ; $7be2: $a0
	inc  b                                           ; $7be3: $04
	daa                                              ; $7be4: $27
	ld   [bc], a                                     ; $7be5: $02
	rra                                              ; $7be6: $1f
	inc  b                                           ; $7be7: $04
	and  b                                           ; $7be8: $a0
	ld   [bc], a                                     ; $7be9: $02
	ld   h, $02                                      ; $7bea: $26 $02
	and  b                                           ; $7bec: $a0
	inc  b                                           ; $7bed: $04
	ld   h, $02                                      ; $7bee: $26 $02
	rra                                              ; $7bf0: $1f
	inc  b                                           ; $7bf1: $04
	and  b                                           ; $7bf2: $a0
	ld   [bc], a                                     ; $7bf3: $02
	inc  h                                           ; $7bf4: $24
	ld   [bc], a                                     ; $7bf5: $02
	and  b                                           ; $7bf6: $a0
	inc  b                                           ; $7bf7: $04
	inc  h                                           ; $7bf8: $24
	ld   [bc], a                                     ; $7bf9: $02
	rra                                              ; $7bfa: $1f
	inc  b                                           ; $7bfb: $04
	and  b                                           ; $7bfc: $a0
	ld   [bc], a                                     ; $7bfd: $02
	ld   [hl+], a                                    ; $7bfe: $22
	ld   e, $a0                                      ; $7bff: $1e $a0
	inc  b                                           ; $7c01: $04
	ld   [hl+], a                                    ; $7c02: $22
	ld   [bc], a                                     ; $7c03: $02
	or   b                                           ; $7c04: $b0
	di                                               ; $7c05: $f3
	rst  $38                                         ; $7c06: $ff
	rst  $38                                         ; $7c07: $ff
	add  hl, bc                                      ; $7c08: $09
	nop                                              ; $7c09: $00
	add  hl, bc                                      ; $7c0a: $09
	nop                                              ; $7c0b: $00
	rst  $38                                         ; $7c0c: $ff
	rst  $38                                         ; $7c0d: $ff
	rla                                              ; $7c0e: $17
	ld   [$082b], sp                                 ; $7c0f: $08 $2b $08
	ld   [hl+], a                                    ; $7c12: $22
	ld   [$082b], sp                                 ; $7c13: $08 $2b $08
	rla                                              ; $7c16: $17
	ld   [$0830], sp                                 ; $7c17: $08 $30 $08
	inc  hl                                          ; $7c1a: $23
	ld   [$0830], sp                                 ; $7c1b: $08 $30 $08
	xor  l                                           ; $7c1e: $ad
	nop                                              ; $7c1f: $00
	rla                                              ; $7c20: $17
	ld   [FadePalettesAndSetRangeToUpdate], sp                                 ; $7c21: $08 $32 $08
	ld   d, $08                                      ; $7c24: $16 $08
	ld   [hl-], a                                    ; $7c26: $32
	ld   [$0814], sp                                 ; $7c27: $08 $14 $08
	ld   [hl], $08                                   ; $7c2a: $36 $08
	ld   [de], a                                     ; $7c2c: $12
	ld   [$0836], sp                                 ; $7c2d: $08 $36 $08
	jr   nz, @+$0a                                   ; $7c30: $20 $08

	jr   nc, jr_0fe_7c3c                             ; $7c32: $30 $08

	rla                                              ; $7c34: $17
	ld   [$0830], sp                                 ; $7c35: $08 $30 $08
	dec  de                                          ; $7c38: $1b
	ld   [FadePalettesAndSetRangeToUpdate], sp                                 ; $7c39: $08 $32 $08

jr_0fe_7c3c:
	add  hl, de                                      ; $7c3c: $19
	ld   [$0830], sp                                 ; $7c3d: $08 $30 $08
	rla                                              ; $7c40: $17
	ld   [FadePalettesAndSetRangeToUpdate], sp                                 ; $7c41: $08 $32 $08
	dec  d                                           ; $7c44: $15
	ld   [$0830], sp                                 ; $7c45: $08 $30 $08
	ld   [hl+], a                                    ; $7c48: $22
	ld   [$0824], sp                                 ; $7c49: $08 $24 $08
	ld   h, $08                                      ; $7c4c: $26 $08
	add  hl, hl                                      ; $7c4e: $29
	ld   [$00ad], sp                                 ; $7c4f: $08 $ad $00
	rla                                              ; $7c52: $17
	ld   [FadePalettesAndSetRangeToUpdate], sp                                 ; $7c53: $08 $32 $08
	ld   d, $08                                      ; $7c56: $16 $08
	ld   [hl-], a                                    ; $7c58: $32
	ld   [$0814], sp                                 ; $7c59: $08 $14 $08
	dec  hl                                          ; $7c5c: $2b
	ld   [$0812], sp                                 ; $7c5d: $08 $12 $08
	dec  hl                                          ; $7c60: $2b
	ld   [$00ad], sp                                 ; $7c61: $08 $ad $00
	ld   [$0f00], sp                                 ; $7c64: $08 $00 $0f
	nop                                              ; $7c67: $00
	pop  bc                                          ; $7c68: $c1
	inc  b                                           ; $7c69: $04
	and  b                                           ; $7c6a: $a0
	rrca                                             ; $7c6b: $0f
	ld   d, e                                        ; $7c6c: $53
	ld   bc, $0181                                   ; $7c6d: $01 $81 $01
	sbc  c                                           ; $7c70: $99
	ld   bc, $04a0                                   ; $7c71: $01 $a0 $04
	sbc  c                                           ; $7c74: $99
	ld   bc, $01a0                                   ; $7c75: $01 $a0 $01
	sbc  c                                           ; $7c78: $99
	ld   bc, $0fa0                                   ; $7c79: $01 $a0 $0f
	ld   d, h                                        ; $7c7c: $54
	ld   bc, $0180                                   ; $7c7d: $01 $80 $01
	sbc  c                                           ; $7c80: $99
	ld   bc, $04a0                                   ; $7c81: $01 $a0 $04
	sbc  c                                           ; $7c84: $99
	ld   bc, $0199                                   ; $7c85: $01 $99 $01
	and  b                                           ; $7c88: $a0
	ld   bc, $0199                                   ; $7c89: $01 $99 $01
	sbc  c                                           ; $7c8c: $99
	ld   bc, $ffff                                   ; $7c8d: $01 $ff $ff
	ld   [$0f00], sp                                 ; $7c90: $08 $00 $0f
	nop                                              ; $7c93: $00
	and  b                                           ; $7c94: $a0
	ld   [$0171], sp                                 ; $7c95: $08 $71 $01
	and  b                                           ; $7c98: $a0
	rrca                                             ; $7c99: $0f
	ld   h, b                                        ; $7c9a: $60
	inc  bc                                          ; $7c9b: $03
	and  b                                           ; $7c9c: $a0
	inc  c                                           ; $7c9d: $0c
	ld   h, d                                        ; $7c9e: $62
	ld   bc, $03a0                                   ; $7c9f: $01 $a0 $03
	ld   h, b                                        ; $7ca2: $60
	ld   [bc], a                                     ; $7ca3: $02
	ld   h, d                                        ; $7ca4: $62
	ld   bc, $0162                                   ; $7ca5: $01 $62 $01
	and  b                                           ; $7ca8: $a0
	ld   bc, $0260                                   ; $7ca9: $01 $60 $02
	ld   h, d                                        ; $7cac: $62
	ld   bc, $0162                                   ; $7cad: $01 $62 $01
	rst  $38                                         ; $7cb0: $ff
	rst  $38                                         ; $7cb1: $ff
	ld   [bc], a                                     ; $7cb2: $02
	nop                                              ; $7cb3: $00
	rrca                                             ; $7cb4: $0f
	nop                                              ; $7cb5: $00
	and  b                                           ; $7cb6: $a0
	ld   [$0171], sp                                 ; $7cb7: $08 $71 $01
	and  b                                           ; $7cba: $a0
	rrca                                             ; $7cbb: $0f
	scf                                              ; $7cbc: $37
	ld   [bc], a                                     ; $7cbd: $02
	and  b                                           ; $7cbe: $a0
	inc  c                                           ; $7cbf: $0c
	ld   [hl], $01                                   ; $7cc0: $36 $01
	and  b                                           ; $7cc2: $a0
	ld   a, [bc]                                     ; $7cc3: $0a
	dec  [hl]                                        ; $7cc4: $35
	ld   bc, $07a0                                   ; $7cc5: $01 $a0 $07
	inc  [hl]                                        ; $7cc8: $34
	ld   bc, $05a0                                   ; $7cc9: $01 $a0 $05
	inc  sp                                          ; $7ccc: $33
	ld   bc, $03a0                                   ; $7ccd: $01 $a0 $03
	ld   [hl-], a                                    ; $7cd0: $32
	ld   bc, $01a0                                   ; $7cd1: $01 $a0 $01
	ld   sp, $ff01                                   ; $7cd4: $31 $01 $ff
	rst  $38                                         ; $7cd7: $ff
	ld   b, $00                                      ; $7cd8: $06 $00
	rrca                                             ; $7cda: $0f
	nop                                              ; $7cdb: $00
	and  b                                           ; $7cdc: $a0
	ld   [$0131], sp                                 ; $7cdd: $08 $31 $01
	and  b                                           ; $7ce0: $a0
	rrca                                             ; $7ce1: $0f
	rla                                              ; $7ce2: $17
	ld   [bc], a                                     ; $7ce3: $02
	and  b                                           ; $7ce4: $a0
	inc  c                                           ; $7ce5: $0c
	ld   d, $01                                      ; $7ce6: $16 $01
	and  b                                           ; $7ce8: $a0
	ld   a, [bc]                                     ; $7ce9: $0a
	dec  d                                           ; $7cea: $15
	ld   bc, $07a0                                   ; $7ceb: $01 $a0 $07
	inc  d                                           ; $7cee: $14
	ld   bc, $05a0                                   ; $7cef: $01 $a0 $05
	inc  de                                          ; $7cf2: $13
	ld   bc, $03a0                                   ; $7cf3: $01 $a0 $03
	ld   [de], a                                     ; $7cf6: $12
	ld   bc, $01a0                                   ; $7cf7: $01 $a0 $01
	ld   de, $ff01                                   ; $7cfa: $11 $01 $ff
	rst  $38                                         ; $7cfd: $ff
	nop                                              ; $7cfe: $00
	nop                                              ; $7cff: $00
	rrca                                             ; $7d00: $0f
	nop                                              ; $7d01: $00
	and  b                                           ; $7d02: $a0
	ld   [$0161], sp                                 ; $7d03: $08 $61 $01
	and  b                                           ; $7d06: $a0
	inc  c                                           ; $7d07: $0c
	inc  d                                           ; $7d08: $14
	ld   bc, $0ea0                                   ; $7d09: $01 $a0 $0e
	ld   [de], a                                     ; $7d0c: $12
	ld   bc, $0fa0                                   ; $7d0d: $01 $a0 $0f
	db   $10                                         ; $7d10: $10
	ld   bc, $04a0                                   ; $7d11: $01 $a0 $04
	ld   [de], a                                     ; $7d14: $12
	ld   bc, $03a0                                   ; $7d15: $01 $a0 $03
	ld   de, $a001                                   ; $7d18: $11 $01 $a0
	ld   [bc], a                                     ; $7d1b: $02
	ld   [de], a                                     ; $7d1c: $12
	ld   bc, $01a0                                   ; $7d1d: $01 $a0 $01
	ld   de, $ff01                                   ; $7d20: $11 $01 $ff
	rst  $38                                         ; $7d23: $ff
	nop                                              ; $7d24: $00
	nop                                              ; $7d25: $00
	rrca                                             ; $7d26: $0f
	nop                                              ; $7d27: $00
	and  b                                           ; $7d28: $a0
	ld   [$0176], sp                                 ; $7d29: $08 $76 $01
	and  b                                           ; $7d2c: $a0
	ld   a, [bc]                                     ; $7d2d: $0a
	ld   h, l                                        ; $7d2e: $65
	ld   bc, $f0fd                                   ; $7d2f: $01 $fd $f0
	and  b                                           ; $7d32: $a0
	rrca                                             ; $7d33: $0f
	ld   d, h                                        ; $7d34: $54
	inc  bc                                          ; $7d35: $03
	and  b                                           ; $7d36: $a0
	ld   c, $63                                      ; $7d37: $0e $63
	ld   bc, $0fa0                                   ; $7d39: $01 $a0 $0f
	ld   d, h                                        ; $7d3c: $54
	inc  bc                                          ; $7d3d: $03
	and  b                                           ; $7d3e: $a0
	ld   c, $63                                      ; $7d3f: $0e $63
	ld   bc, $f0bf                                   ; $7d41: $01 $bf $f0
	and  b                                           ; $7d44: $a0
	inc  c                                           ; $7d45: $0c
	ld   d, h                                        ; $7d46: $54
	inc  bc                                          ; $7d47: $03
	and  b                                           ; $7d48: $a0
	dec  bc                                          ; $7d49: $0b
	ld   h, e                                        ; $7d4a: $63
	ld   bc, $0ca0                                   ; $7d4b: $01 $a0 $0c
	ld   d, h                                        ; $7d4e: $54
	inc  bc                                          ; $7d4f: $03
	and  b                                           ; $7d50: $a0
	dec  bc                                          ; $7d51: $0b
	ld   h, e                                        ; $7d52: $63
	ld   bc, $09a0                                   ; $7d53: $01 $a0 $09
	ld   d, h                                        ; $7d56: $54
	inc  bc                                          ; $7d57: $03
	and  b                                           ; $7d58: $a0
	ld   [$0163], sp                                 ; $7d59: $08 $63 $01
	and  b                                           ; $7d5c: $a0
	add  hl, bc                                      ; $7d5d: $09
	ld   d, h                                        ; $7d5e: $54
	inc  bc                                          ; $7d5f: $03
	and  b                                           ; $7d60: $a0
	ld   [$0163], sp                                 ; $7d61: $08 $63 $01
	and  b                                           ; $7d64: $a0
	rlca                                             ; $7d65: $07
	ld   d, h                                        ; $7d66: $54
	inc  bc                                          ; $7d67: $03
	and  b                                           ; $7d68: $a0
	inc  b                                           ; $7d69: $04
	ld   h, e                                        ; $7d6a: $63
	ld   bc, $07a0                                   ; $7d6b: $01 $a0 $07
	ld   d, h                                        ; $7d6e: $54
	inc  bc                                          ; $7d6f: $03
	and  b                                           ; $7d70: $a0
	inc  b                                           ; $7d71: $04
	ld   h, e                                        ; $7d72: $63
	ld   bc, $05a0                                   ; $7d73: $01 $a0 $05
	ld   d, h                                        ; $7d76: $54
	inc  bc                                          ; $7d77: $03
	and  b                                           ; $7d78: $a0
	inc  bc                                          ; $7d79: $03
	ld   h, e                                        ; $7d7a: $63
	ld   bc, $05a0                                   ; $7d7b: $01 $a0 $05
	ld   d, h                                        ; $7d7e: $54
	inc  bc                                          ; $7d7f: $03
	and  b                                           ; $7d80: $a0
	inc  bc                                          ; $7d81: $03
	ld   h, e                                        ; $7d82: $63
	ld   bc, $02a0                                   ; $7d83: $01 $a0 $02
	ld   d, h                                        ; $7d86: $54
	inc  bc                                          ; $7d87: $03
	and  b                                           ; $7d88: $a0
	ld   bc, $0163                                   ; $7d89: $01 $63 $01
	and  b                                           ; $7d8c: $a0
	ld   [bc], a                                     ; $7d8d: $02
	ld   d, h                                        ; $7d8e: $54
	inc  bc                                          ; $7d8f: $03
	and  b                                           ; $7d90: $a0
	ld   bc, $0163                                   ; $7d91: $01 $63 $01
	rst  $38                                         ; $7d94: $ff
	rst  $38                                         ; $7d95: $ff
	dec  bc                                          ; $7d96: $0b
	nop                                              ; $7d97: $00
	rrca                                             ; $7d98: $0f
	nop                                              ; $7d99: $00
	and  b                                           ; $7d9a: $a0
	ld   [$0171], sp                                 ; $7d9b: $08 $71 $01
	and  b                                           ; $7d9e: $a0
	rrca                                             ; $7d9f: $0f
	ld   d, b                                        ; $7da0: $50
	ld   bc, $0160                                   ; $7da1: $01 $60 $01
	ld   [hl], c                                     ; $7da4: $71
	ld   bc, $0160                                   ; $7da5: $01 $60 $01
	ld   [hl], c                                     ; $7da8: $71
	ld   bc, $0ca0                                   ; $7da9: $01 $a0 $0c
	ld   h, d                                        ; $7dac: $62
	ld   bc, $03a0                                   ; $7dad: $01 $a0 $03
	ld   h, b                                        ; $7db0: $60
	ld   [bc], a                                     ; $7db1: $02
	ld   h, d                                        ; $7db2: $62
	ld   bc, $0163                                   ; $7db3: $01 $63 $01
	and  b                                           ; $7db6: $a0
	ld   bc, $0170                                   ; $7db7: $01 $70 $01
	ld   [hl], d                                     ; $7dba: $72
	ld   bc, $0173                                   ; $7dbb: $01 $73 $01
	rst  $38                                         ; $7dbe: $ff
	rst  $38                                         ; $7dbf: $ff
	nop                                              ; $7dc0: $00
	ld   [bc], a                                     ; $7dc1: $02
	rrca                                             ; $7dc2: $0f
	nop                                              ; $7dc3: $00
	and  b                                           ; $7dc4: $a0
	ld   a, [bc]                                     ; $7dc5: $0a
	add  hl, sp                                      ; $7dc6: $39
	ld   bc, $0fa0                                   ; $7dc7: $01 $a0 $0f
	ld   b, l                                        ; $7dca: $45
	ld   [bc], a                                     ; $7dcb: $02
	and  b                                           ; $7dcc: $a0
	ld   b, $30                                      ; $7dcd: $06 $30
	ld   bc, $04a0                                   ; $7dcf: $01 $a0 $04
	ld   b, l                                        ; $7dd2: $45
	ld   bc, $03a0                                   ; $7dd3: $01 $a0 $03
	add  hl, sp                                      ; $7dd6: $39
	ld   bc, $01a0                                   ; $7dd7: $01 $a0 $01
	jr   nc, jr_0fe_7ddd                             ; $7dda: $30 $01

	rst  $38                                         ; $7ddc: $ff

jr_0fe_7ddd:
	rst  $38                                         ; $7ddd: $ff
	ld   bc, $0f00                                   ; $7dde: $01 $00 $0f
	nop                                              ; $7de1: $00
	and  b                                           ; $7de2: $a0
	add  hl, bc                                      ; $7de3: $09
	inc  de                                          ; $7de4: $13
	ld   [bc], a                                     ; $7de5: $02
	rra                                              ; $7de6: $1f
	ld   bc, $0fa0                                   ; $7de7: $01 $a0 $0f
	db   $10                                         ; $7dea: $10
	ld   [bc], a                                     ; $7deb: $02
	and  b                                           ; $7dec: $a0
	dec  bc                                          ; $7ded: $0b
	inc  de                                          ; $7dee: $13
	ld   bc, $08a0                                   ; $7def: $01 $a0 $08
	ld   [de], a                                     ; $7df2: $12
	ld   bc, $04a0                                   ; $7df3: $01 $a0 $04
	ld   de, $ff01                                   ; $7df6: $11 $01 $ff
	rst  $38                                         ; $7df9: $ff
	ld   [bc], a                                     ; $7dfa: $02
	ld   [bc], a                                     ; $7dfb: $02
	rrca                                             ; $7dfc: $0f
	nop                                              ; $7dfd: $00
	and  b                                           ; $7dfe: $a0
	rrca                                             ; $7dff: $0f
	ld   b, a                                        ; $7e00: $47
	inc  bc                                          ; $7e01: $03
	and  b                                           ; $7e02: $a0
	ld   b, $47                                      ; $7e03: $06 $47
	ld   bc, $04a0                                   ; $7e05: $01 $a0 $04
	ld   b, a                                        ; $7e08: $47
	ld   bc, $03a0                                   ; $7e09: $01 $a0 $03
	ld   b, a                                        ; $7e0c: $47
	ld   bc, $01a0                                   ; $7e0d: $01 $a0 $01
	ld   b, a                                        ; $7e10: $47
	ld   bc, $0aa0                                   ; $7e11: $01 $a0 $0a
	ld   b, a                                        ; $7e14: $47
	ld   bc, $0fa0                                   ; $7e15: $01 $a0 $0f
	ld   b, h                                        ; $7e18: $44
	ld   b, $a0                                      ; $7e19: $06 $a0
	add  hl, bc                                      ; $7e1b: $09
	ld   b, h                                        ; $7e1c: $44
	ld   [bc], a                                     ; $7e1d: $02
	and  b                                           ; $7e1e: $a0
	rlca                                             ; $7e1f: $07
	ld   b, h                                        ; $7e20: $44
	ld   bc, $05a0                                   ; $7e21: $01 $a0 $05
	ld   b, h                                        ; $7e24: $44
	ld   bc, $03a0                                   ; $7e25: $01 $a0 $03
	ld   b, h                                        ; $7e28: $44
	ld   bc, $01a0                                   ; $7e29: $01 $a0 $01
	ld   b, h                                        ; $7e2c: $44
	ld   bc, $ffff                                   ; $7e2d: $01 $ff $ff
	nop                                              ; $7e30: $00
	nop                                              ; $7e31: $00
	rrca                                             ; $7e32: $0f
	nop                                              ; $7e33: $00
	and  e                                           ; $7e34: $a3
	inc  h                                           ; $7e35: $24
	and  b                                           ; $7e36: $a0
	rrca                                             ; $7e37: $0f
	db   $10                                         ; $7e38: $10
	inc  c                                           ; $7e39: $0c
	and  b                                           ; $7e3a: $a0
	dec  b                                           ; $7e3b: $05
	db   $10                                         ; $7e3c: $10
	ld   bc, $02a0                                   ; $7e3d: $01 $a0 $02
	db   $10                                         ; $7e40: $10
	ld   bc, $04a0                                   ; $7e41: $01 $a0 $04
	db   $10                                         ; $7e44: $10
	ld   [$0110], sp                                 ; $7e45: $08 $10 $01
	db   $10                                         ; $7e48: $10
	ld   bc, $02a0                                   ; $7e49: $01 $a0 $02
	db   $10                                         ; $7e4c: $10
	ld   [$0110], sp                                 ; $7e4d: $08 $10 $01
	db   $10                                         ; $7e50: $10
	ld   bc, $01a0                                   ; $7e51: $01 $a0 $01
	db   $10                                         ; $7e54: $10
	ld   [$0110], sp                                 ; $7e55: $08 $10 $01
	db   $10                                         ; $7e58: $10
	ld   bc, $ffff                                   ; $7e59: $01 $ff $ff
	nop                                              ; $7e5c: $00
	ld   bc, $000f                                   ; $7e5d: $01 $0f $00
	jp   $a308                                       ; $7e60: $c3 $08 $a3


	inc  h                                           ; $7e63: $24
	and  b                                           ; $7e64: $a0
	rrca                                             ; $7e65: $0f
	ld   c, c                                        ; $7e66: $49
	rlca                                             ; $7e67: $07
	and  b                                           ; $7e68: $a0
	dec  b                                           ; $7e69: $05
	ld   c, b                                        ; $7e6a: $48
	ld   bc, $01a0                                   ; $7e6b: $01 $a0 $01
	ld   c, c                                        ; $7e6e: $49
	ld   bc, $021f                                   ; $7e6f: $01 $1f $02
	and  b                                           ; $7e72: $a0
	rrca                                             ; $7e73: $0f
	ld   c, c                                        ; $7e74: $49
	ld   a, [bc]                                     ; $7e75: $0a
	and  b                                           ; $7e76: $a0
	dec  b                                           ; $7e77: $05
	ld   c, b                                        ; $7e78: $48
	ld   bc, $02a0                                   ; $7e79: $01 $a0 $02
	ld   c, c                                        ; $7e7c: $49
	ld   bc, $04a0                                   ; $7e7d: $01 $a0 $04
	ld   c, c                                        ; $7e80: $49
	inc  b                                           ; $7e81: $04
	ld   c, b                                        ; $7e82: $48
	ld   bc, $0149                           ; $7e83: $01 $49 $01
	and  b                                           ; $7e86: $a0
	ld   [bc], a                                     ; $7e87: $02
	ld   c, c                                        ; $7e88: $49
	inc  b                                           ; $7e89: $04
	ld   c, b                                        ; $7e8a: $48
	ld   bc, $0149                           ; $7e8b: $01 $49 $01
	and  b                                           ; $7e8e: $a0
	ld   bc, $0449                                   ; $7e8f: $01 $49 $04
	ld   c, b                                        ; $7e92: $48
	ld   bc, $0149                           ; $7e93: $01 $49 $01
	rst  $38                                         ; $7e96: $ff
	rst  $38                                         ; $7e97: $ff
	inc  b                                           ; $7e98: $04
	nop                                              ; $7e99: $00
	rrca                                             ; $7e9a: $0f
	nop                                              ; $7e9b: $00
	and  b                                           ; $7e9c: $a0
	ld   a, [bc]                                     ; $7e9d: $0a
	ld   h, d                                        ; $7e9e: $62
	ld   bc, $0fa0                                   ; $7e9f: $01 $a0 $0f
	ld   b, e                                        ; $7ea2: $43
	ld   [bc], a                                     ; $7ea3: $02
	and  b                                           ; $7ea4: $a0
	ld   [$0142], sp                                 ; $7ea5: $08 $42 $01
	ld   b, c                                        ; $7ea8: $41
	ld   bc, $0140                                   ; $7ea9: $01 $40 $01
	and  b                                           ; $7eac: $a0
	inc  bc                                          ; $7ead: $03
	ld   b, b                                        ; $7eae: $40
	ld   bc, $02a0                                   ; $7eaf: $01 $a0 $02
	ld   b, c                                        ; $7eb2: $41
	ld   bc, $0142                                   ; $7eb3: $01 $42 $01
	ld   b, e                                        ; $7eb6: $43
	ld   bc, $ffff                                   ; $7eb7: $01 $ff $ff
	ld   [$0f00], sp                                 ; $7eba: $08 $00 $0f
	nop                                              ; $7ebd: $00
	and  b                                           ; $7ebe: $a0
	ld   [$0152], sp                                 ; $7ebf: $08 $52 $01
	and  b                                           ; $7ec2: $a0
	rrca                                             ; $7ec3: $0f
	jr   nz, jr_0fe_7ec7                             ; $7ec4: $20 $01

	and  b                                           ; $7ec6: $a0

jr_0fe_7ec7:
	ld   [bc], a                                     ; $7ec7: $02
	ld   hl, $a001                                   ; $7ec8: $21 $01 $a0
	ld   bc, $0132                                   ; $7ecb: $01 $32 $01
	rst  $38                                         ; $7ece: $ff
	rst  $38                                         ; $7ecf: $ff
	nop                                              ; $7ed0: $00
	nop                                              ; $7ed1: $00
	rrca                                             ; $7ed2: $0f
	nop                                              ; $7ed3: $00
	and  b                                           ; $7ed4: $a0
	ld   a, [bc]                                     ; $7ed5: $0a
	ld   [hl-], a                                    ; $7ed6: $32
	ld   bc, $0fa0                                   ; $7ed7: $01 $a0 $0f
	scf                                              ; $7eda: $37
	ld   [bc], a                                     ; $7edb: $02
	and  b                                           ; $7edc: $a0
	ld   b, $32                                      ; $7edd: $06 $32
	ld   bc, $04a0                                   ; $7edf: $01 $a0 $04
	scf                                              ; $7ee2: $37
	ld   bc, $03a0                                   ; $7ee3: $01 $a0 $03
	ld   [hl-], a                                    ; $7ee6: $32
	ld   bc, $01a0                                   ; $7ee7: $01 $a0 $01
	scf                                              ; $7eea: $37
	ld   bc, $ffff                                   ; $7eeb: $01 $ff $ff
	nop                                              ; $7eee: $00
	ld   [bc], a                                     ; $7eef: $02
	rrca                                             ; $7ef0: $0f
	nop                                              ; $7ef1: $00
	and  b                                           ; $7ef2: $a0
	ld   a, [bc]                                     ; $7ef3: $0a
	dec  sp                                          ; $7ef4: $3b
	ld   bc, $0fa0                                   ; $7ef5: $01 $a0 $0f
	ld   b, h                                        ; $7ef8: $44
	ld   [bc], a                                     ; $7ef9: $02
	and  b                                           ; $7efa: $a0
	ld   b, $3b                                      ; $7efb: $06 $3b
	ld   bc, $04a0                                   ; $7efd: $01 $a0 $04
	ld   b, h                                        ; $7f00: $44
	ld   bc, $03a0                                   ; $7f01: $01 $a0 $03
	dec  sp                                          ; $7f04: $3b
	ld   bc, $01a0                                   ; $7f05: $01 $a0 $01
	ld   b, h                                        ; $7f08: $44
	ld   bc, $ffff                                   ; $7f09: $01 $ff $ff
	nop                                              ; $7f0c: $00
	ld   bc, $000f                                   ; $7f0d: $01 $0f $00
	and  b                                           ; $7f10: $a0
	ld   a, [bc]                                     ; $7f11: $0a
	ld   d, b                                        ; $7f12: $50
	ld   bc, $0fa0                                   ; $7f13: $01 $a0 $0f
	ld   c, e                                        ; $7f16: $4b
	ld   bc, $0da0                                   ; $7f17: $01 $a0 $0d
	ld   c, c                                        ; $7f1a: $49
	ld   bc, $06a0                                   ; $7f1b: $01 $a0 $06
	ld   b, a                                        ; $7f1e: $47
	ld   bc, $04a0                                   ; $7f1f: $01 $a0 $04
	ld   b, l                                        ; $7f22: $45
	ld   bc, $03a0                                   ; $7f23: $01 $a0 $03
	ld   b, h                                        ; $7f26: $44
	ld   bc, $01a0                                   ; $7f27: $01 $a0 $01
	ld   b, d                                        ; $7f2a: $42
	ld   bc, $ffff                                   ; $7f2b: $01 $ff $ff
	nop                                              ; $7f2e: $00
	nop                                              ; $7f2f: $00
	rrca                                             ; $7f30: $0f
	nop                                              ; $7f31: $00
	and  b                                           ; $7f32: $a0
	ld   a, [bc]                                     ; $7f33: $0a
	jr   nz, jr_0fe_7f37                             ; $7f34: $20 $01

	and  b                                           ; $7f36: $a0

jr_0fe_7f37:
	dec  bc                                          ; $7f37: $0b
	add  hl, hl                                      ; $7f38: $29
	ld   bc, $0ca0                                   ; $7f39: $01 $a0 $0c
	scf                                              ; $7f3c: $37
	ld   bc, $0da0                                   ; $7f3d: $01 $a0 $0d
	ld   b, b                                        ; $7f40: $40
	ld   bc, $0ea0                                   ; $7f41: $01 $a0 $0e
	ld   b, a                                        ; $7f44: $47
	ld   bc, $0fa0                                   ; $7f45: $01 $a0 $0f
	ld   d, b                                        ; $7f48: $50
	ld   bc, $0aa0                                   ; $7f49: $01 $a0 $0a
	ld   b, b                                        ; $7f4c: $40
	ld   bc, $0ba0                                   ; $7f4d: $01 $a0 $0b
	ld   b, a                                        ; $7f50: $47
	ld   bc, $0ca0                                   ; $7f51: $01 $a0 $0c
	ld   d, b                                        ; $7f54: $50
	ld   bc, $05a0                                   ; $7f55: $01 $a0 $05
	ld   b, b                                        ; $7f58: $40
	ld   bc, $06a0                                   ; $7f59: $01 $a0 $06
	ld   b, a                                        ; $7f5c: $47
	ld   bc, $07a0                                   ; $7f5d: $01 $a0 $07
	ld   d, b                                        ; $7f60: $50
	ld   bc, $03a0                                   ; $7f61: $01 $a0 $03
	ld   b, b                                        ; $7f64: $40
	ld   bc, $02a0                                   ; $7f65: $01 $a0 $02
	ld   b, a                                        ; $7f68: $47
	ld   bc, $01a0                                   ; $7f69: $01 $a0 $01
	ld   d, b                                        ; $7f6c: $50
	ld   bc, $ffff                                   ; $7f6d: $01 $ff $ff
	nop                                              ; $7f70: $00
	nop                                              ; $7f71: $00
	rrca                                             ; $7f72: $0f
	nop                                              ; $7f73: $00
	and  b                                           ; $7f74: $a0
	rlca                                             ; $7f75: $07
	ld   b, b                                        ; $7f76: $40

jr_0fe_7f77:
	ld   bc, $0aa0                                   ; $7f77: $01 $a0 $0a
	ld   b, a                                        ; $7f7a: $47
	ld   bc, $0fa0                                   ; $7f7b: $01 $a0 $0f
	jr   nc, jr_0fe_7f81                             ; $7f7e: $30 $01

	and  b                                           ; $7f80: $a0

jr_0fe_7f81:
	ld   a, [bc]                                     ; $7f81: $0a
	scf                                              ; $7f82: $37
	ld   bc, $07a0                                   ; $7f83: $01 $a0 $07
	inc  [hl]                                        ; $7f86: $34
	ld   bc, $04a0                                   ; $7f87: $01 $a0 $04
	jr   nc, jr_0fe_7f8d                             ; $7f8a: $30 $01

	and  b                                           ; $7f8c: $a0

jr_0fe_7f8d:
	rlca                                             ; $7f8d: $07
	jr   nc, jr_0fe_7f91                             ; $7f8e: $30 $01

	and  b                                           ; $7f90: $a0

jr_0fe_7f91:
	ld   b, $37                                      ; $7f91: $06 $37
	ld   bc, $03a0                                   ; $7f93: $01 $a0 $03
	add  hl, hl                                      ; $7f96: $29
	ld   bc, $06a0                                   ; $7f97: $01 $a0 $06
	daa                                              ; $7f9a: $27
	ld   bc, $04a0                                   ; $7f9b: $01 $a0 $04
	inc  h                                           ; $7f9e: $24
	ld   bc, $02a0                                   ; $7f9f: $01 $a0 $02
	jr   nz, jr_0fe_7fa5                             ; $7fa2: $20 $01

	and  b                                           ; $7fa4: $a0

jr_0fe_7fa5:
	inc  bc                                          ; $7fa5: $03
	daa                                              ; $7fa6: $27
	ld   bc, $02a0                                   ; $7fa7: $01 $a0 $02
	inc  h                                           ; $7faa: $24
	ld   bc, $01a0                                   ; $7fab: $01 $a0 $01
	jr   nz, jr_0fe_7fb1                             ; $7fae: $20 $01

	rst  $38                                         ; $7fb0: $ff

jr_0fe_7fb1:
	rst  $38                                         ; $7fb1: $ff
	ld   bc, $0f02                                   ; $7fb2: $01 $02 $0f
	nop                                              ; $7fb5: $00
	db   $fd                                         ; $7fb6: $fd
	pop  af                                          ; $7fb7: $f1
	db   $fd                                         ; $7fb8: $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $7fb9: $f0 $a0
	ld   b, $23                                      ; $7fbb: $06 $23
	ld   bc, $08a0                                   ; $7fbd: $01 $a0 $08
	inc  h                                           ; $7fc0: $24
	ld   bc, $04a0                                   ; $7fc1: $01 $a0 $04
	inc  hl                                          ; $7fc4: $23
	ld   bc, $06a0                                   ; $7fc5: $01 $a0 $06
	inc  h                                           ; $7fc8: $24
	ld   bc, $f0bc                                   ; $7fc9: $01 $bc $f0
	or   e                                           ; $7fcc: $b3
	pop  af                                          ; $7fcd: $f1
	rst  $38                                         ; $7fce: $ff
	rst  $38                                         ; $7fcf: $ff
	ld   bc, $0f00                                   ; $7fd0: $01 $00 $0f
	nop                                              ; $7fd3: $00
	and  d                                           ; $7fd4: $a2
	jr   nz, jr_0fe_7f77                             ; $7fd5: $20 $a0

	ld   [bc], a                                     ; $7fd7: $02
	ld   b, e                                        ; $7fd8: $43
	jr   nz, @+$46                                   ; $7fd9: $20 $44

	inc  e                                           ; $7fdb: $1c
	ld   b, l                                        ; $7fdc: $45
	jr   @+$48                                       ; $7fdd: $18 $46

	inc  d                                           ; $7fdf: $14
	ld   b, a                                        ; $7fe0: $47
	db   $10                                         ; $7fe1: $10
	ld   c, b                                        ; $7fe2: $48
	ld   c, $49                                      ; $7fe3: $0e $49
	inc  c                                           ; $7fe5: $0c
	ld   c, d                                        ; $7fe6: $4a
	ld   a, [bc]                                     ; $7fe7: $0a
	ld   c, e                                        ; $7fe8: $4b
	add  hl, bc                                      ; $7fe9: $09
	ld   d, b                                        ; $7fea: $50
	ld   [$0751], sp                                 ; $7feb: $08 $51 $07
	ld   d, d                                        ; $7fee: $52
	ld   b, $53                                      ; $7fef: $06 $53
	dec  b                                           ; $7ff1: $05
	ld   d, h                                        ; $7ff2: $54
	inc  b                                           ; $7ff3: $04
	ld   d, l                                        ; $7ff4: $55
	inc  bc                                          ; $7ff5: $03
	ld   d, [hl]                                     ; $7ff6: $56
	ld   [bc], a                                     ; $7ff7: $02
	rst  $38                                         ; $7ff8: $ff
	rst  $38                                         ; $7ff9: $ff
	nop                                              ; $7ffa: $00
	nop                                              ; $7ffb: $00
	nop                                              ; $7ffc: $00
	nop                                              ; $7ffd: $00
	nop                                              ; $7ffe: $00
	nop                                              ; $7fff: $00
