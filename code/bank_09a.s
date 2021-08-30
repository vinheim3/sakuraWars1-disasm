; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $09a", ROMX[$4000], BANK[$9a]

	ld   a, [$eaaa]                                  ; $4000: $fa $aa $ea
	xor  d                                           ; $4003: $aa
	sbc  a                                           ; $4004: $9f
	cp   $d6                                         ; $4005: $fe $d6
	sub  e                                           ; $4007: $93
	sbc  l                                           ; $4008: $9d
	cp   [hl]                                        ; $4009: $be
	or   a                                           ; $400a: $b7
	rst  $20                                         ; $400b: $e7
	push bc                                          ; $400c: $c5
	adc  $c0                                         ; $400d: $ce $c0
	ret  nz                                          ; $400f: $c0

	ret  nz                                          ; $4010: $c0

	ldh  [$c0], a                                    ; $4011: $e0 $c0
	ldh  [$e0], a                                    ; $4013: $e0 $e0
	ldh  [$e0], a                                    ; $4015: $e0 $e0
	ldh  a, [rSVBK]                                  ; $4017: $f0 $70
	ldh  a, [rSVBK]                                  ; $4019: $f0 $70
	ld   hl, sp+$78                                  ; $401b: $f8 $78
	ld   hl, sp+$7c                                  ; $401d: $f8 $7c
	db   $fc                                         ; $401f: $fc
	sbc  d                                           ; $4020: $9a
	rst  $38                                         ; $4021: $ff
	sbc  d                                           ; $4022: $9a
	rst  JumpTable                                         ; $4023: $df
	sbc  e                                           ; $4024: $9b
	rst  JumpTable                                         ; $4025: $df
	sbc  e                                           ; $4026: $9b
	sbc  a                                           ; $4027: $9f
	sbc  c                                           ; $4028: $99
	rst  JumpTable                                         ; $4029: $df
	sbc  c                                           ; $402a: $99
	rst  $38                                         ; $402b: $ff
	sbc  l                                           ; $402c: $9d
	rst  $30                                         ; $402d: $f7
	sbc  h                                           ; $402e: $9c
	rst  $30                                         ; $402f: $f7
	sub  $73                                         ; $4030: $d6 $73
	ld   c, e                                        ; $4032: $4b
	ld   a, c                                        ; $4033: $79
	add  hl, hl                                      ; $4034: $29
	add  hl, sp                                      ; $4035: $39
	sub  l                                           ; $4036: $95
	sbc  h                                           ; $4037: $9c
	sbc  a                                           ; $4038: $9f
	inc  c                                           ; $4039: $0c
	adc  a                                           ; $403a: $8f
	ld   b, $03                                      ; $403b: $06 $03
	nop                                              ; $403d: $00
	nop                                              ; $403e: $00
	nop                                              ; $403f: $00
	ld   [bc], a                                     ; $4040: $02
	rst  $10                                         ; $4041: $d7
	dec  bc                                          ; $4042: $0b
	ld   c, e                                        ; $4043: $4b
	add  hl, bc                                      ; $4044: $09
	adc  a                                           ; $4045: $8f
	inc  b                                           ; $4046: $04
	rst  $30                                         ; $4047: $f7
	and  [hl]                                        ; $4048: $a6
	rst  $38                                         ; $4049: $ff
	sub  e                                           ; $404a: $93
	rst  $38                                         ; $404b: $ff
	reti                                             ; $404c: $d9


	ld   a, a                                        ; $404d: $7f
	db   $ec                                         ; $404e: $ec
	cp   a                                           ; $404f: $bf
	sub  [hl]                                        ; $4050: $96
	cp   a                                           ; $4051: $bf
	ld   l, l                                        ; $4052: $6d
	rst  $38                                         ; $4053: $ff
	ei                                               ; $4054: $fb
	add  $9f                                         ; $4055: $c6 $9f
	ld   a, a                                        ; $4057: $7f
	ld   c, d                                        ; $4058: $4a
	xor  $21                                         ; $4059: $ee $21
	ld   e, $00                                      ; $405b: $1e $00
	ld   bc, $0000                                   ; $405d: $01 $00 $00
	nop                                              ; $4060: $00
	nop                                              ; $4061: $00
	nop                                              ; $4062: $00
	nop                                              ; $4063: $00
	nop                                              ; $4064: $00
	nop                                              ; $4065: $00
	ld   b, b                                        ; $4066: $40
	nop                                              ; $4067: $00
	ldh  [$80], a                                    ; $4068: $e0 $80
	jr   nz, jr_09a_40ac                             ; $406a: $20 $40

	jr   jr_09a_4074                                 ; $406c: $18 $06

	inc  e                                           ; $406e: $1c
	nop                                              ; $406f: $00
	nop                                              ; $4070: $00
	nop                                              ; $4071: $00
	nop                                              ; $4072: $00
	nop                                              ; $4073: $00

jr_09a_4074:
	nop                                              ; $4074: $00
	nop                                              ; $4075: $00
	nop                                              ; $4076: $00
	nop                                              ; $4077: $00
	nop                                              ; $4078: $00
	nop                                              ; $4079: $00
	nop                                              ; $407a: $00

jr_09a_407b:
	nop                                              ; $407b: $00
	nop                                              ; $407c: $00
	nop                                              ; $407d: $00
	nop                                              ; $407e: $00
	nop                                              ; $407f: $00
	nop                                              ; $4080: $00
	nop                                              ; $4081: $00
	nop                                              ; $4082: $00
	nop                                              ; $4083: $00
	nop                                              ; $4084: $00
	nop                                              ; $4085: $00
	ld   bc, $0100                                   ; $4086: $01 $00 $01
	nop                                              ; $4089: $00
	ld   bc, $0300                                   ; $408a: $01 $00 $03
	nop                                              ; $408d: $00
	inc  bc                                          ; $408e: $03
	nop                                              ; $408f: $00
	ld   b, $01                                      ; $4090: $06 $01
	dec  b                                           ; $4092: $05
	inc  bc                                          ; $4093: $03
	ld   a, [bc]                                     ; $4094: $0a
	ld   b, $14                                      ; $4095: $06 $14
	inc  c                                           ; $4097: $0c
	ld   a, b                                        ; $4098: $78
	jr   jr_09a_407b                                 ; $4099: $18 $e0

	ld   h, b                                        ; $409b: $60
	add  b                                           ; $409c: $80
	add  b                                           ; $409d: $80
	nop                                              ; $409e: $00
	nop                                              ; $409f: $00
	ld   c, b                                        ; $40a0: $48
	rst  $38                                         ; $40a1: $ff
	ret  z                                           ; $40a2: $c8

	ei                                               ; $40a3: $fb
	ret  z                                           ; $40a4: $c8

	ld   a, e                                        ; $40a5: $7b
	ret  z                                           ; $40a6: $c8

	jp   hl                                          ; $40a7: $e9


	ret  z                                           ; $40a8: $c8

	ld   l, b                                        ; $40a9: $68
	ret  z                                           ; $40aa: $c8

	ld   l, b                                        ; $40ab: $68

jr_09a_40ac:
	ret  z                                           ; $40ac: $c8

	ld   c, c                                        ; $40ad: $49
	ret  z                                           ; $40ae: $c8

	ld   c, c                                        ; $40af: $49
	ret  z                                           ; $40b0: $c8

	ld   e, l                                        ; $40b1: $5d
	ret  z                                           ; $40b2: $c8

	ld   e, l                                        ; $40b3: $5d
	ret  z                                           ; $40b4: $c8

	ld   e, l                                        ; $40b5: $5d
	ret  z                                           ; $40b6: $c8

	ld   a, a                                        ; $40b7: $7f
	adc  b                                           ; $40b8: $88
	rst  $38                                         ; $40b9: $ff
	adc  d                                           ; $40ba: $8a
	rst  $38                                         ; $40bb: $ff
	adc  d                                           ; $40bc: $8a
	rst  $38                                         ; $40bd: $ff
	adc  d                                           ; $40be: $8a
	rst  $38                                         ; $40bf: $ff
	ld   a, [$eaaa]                                  ; $40c0: $fa $aa $ea
	xor  d                                           ; $40c3: $aa
	sbc  a                                           ; $40c4: $9f
	cp   $d6                                         ; $40c5: $fe $d6
	sub  e                                           ; $40c7: $93
	add  e                                           ; $40c8: $83
	sbc  h                                           ; $40c9: $9c
	cp   a                                           ; $40ca: $bf
	rst  $38                                         ; $40cb: $ff
	push bc                                          ; $40cc: $c5
	adc  $c0                                         ; $40cd: $ce $c0
	ret  nz                                          ; $40cf: $c0

	sub  [hl]                                        ; $40d0: $96
	cp   a                                           ; $40d1: $bf
	ld   l, l                                        ; $40d2: $6d
	rst  $38                                         ; $40d3: $ff
	ei                                               ; $40d4: $fb
	add  $e0                                         ; $40d5: $c6 $e0
	rra                                              ; $40d7: $1f
	rst  $38                                         ; $40d8: $ff
	ld   a, a                                        ; $40d9: $7f
	dec  h                                           ; $40da: $25
	ld   e, $00                                      ; $40db: $1e $00
	ld   bc, $0000                                   ; $40dd: $01 $00 $00
	nop                                              ; $40e0: $00
	nop                                              ; $40e1: $00
	nop                                              ; $40e2: $00
	nop                                              ; $40e3: $00
	nop                                              ; $40e4: $00
	nop                                              ; $40e5: $00
	ld   b, b                                        ; $40e6: $40
	nop                                              ; $40e7: $00
	ldh  [$80], a                                    ; $40e8: $e0 $80
	jr   nz, @+$42                                   ; $40ea: $20 $40

	db   $10                                         ; $40ec: $10
	ld   c, $10                                      ; $40ed: $0e $10
	ld   [bc], a                                     ; $40ef: $02
	ld   [$0004], sp                                 ; $40f0: $08 $04 $00
	nop                                              ; $40f3: $00
	nop                                              ; $40f4: $00
	nop                                              ; $40f5: $00
	nop                                              ; $40f6: $00
	nop                                              ; $40f7: $00
	nop                                              ; $40f8: $00
	nop                                              ; $40f9: $00
	nop                                              ; $40fa: $00
	nop                                              ; $40fb: $00
	nop                                              ; $40fc: $00
	nop                                              ; $40fd: $00
	nop                                              ; $40fe: $00
	nop                                              ; $40ff: $00
	ld   c, b                                        ; $4100: $48
	rst  $38                                         ; $4101: $ff
	ret  z                                           ; $4102: $c8

	ei                                               ; $4103: $fb
	ret  z                                           ; $4104: $c8

	ld   a, e                                        ; $4105: $7b
	ld   c, b                                        ; $4106: $48
	jp   hl                                          ; $4107: $e9


	ld   c, b                                        ; $4108: $48
	add  sp, -$38                                    ; $4109: $e8 $c8
	ld   l, b                                        ; $410b: $68
	ret  z                                           ; $410c: $c8

	ld   c, c                                        ; $410d: $49
	ret  z                                           ; $410e: $c8

	ld   c, c                                        ; $410f: $49
	ld   a, [$eaaa]                                  ; $4110: $fa $aa $ea
	xor  d                                           ; $4113: $aa
	sbc  a                                           ; $4114: $9f
	cp   $d6                                         ; $4115: $fe $d6
	sub  e                                           ; $4117: $93
	add  e                                           ; $4118: $83
	add  b                                           ; $4119: $80
	cp   l                                           ; $411a: $bd
	di                                               ; $411b: $f3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $411c: $cf
	sbc  $c0                                         ; $411d: $de $c0
	ret  nz                                          ; $411f: $c0

	sub  [hl]                                        ; $4120: $96
	cp   a                                           ; $4121: $bf
	ld   l, l                                        ; $4122: $6d
	rst  $38                                         ; $4123: $ff
	ei                                               ; $4124: $fb
	add  $fe                                         ; $4125: $c6 $fe
	ld   bc, $e75b                                   ; $4127: $01 $5b $e7
	ccf                                              ; $412a: $3f
	ld   a, $00                                      ; $412b: $3e $00
	ld   bc, $0000                                   ; $412d: $01 $00 $00
	ld   a, [$eaaa]                                  ; $4130: $fa $aa $ea
	xor  d                                           ; $4133: $aa
	sbc  $bf                                         ; $4134: $de $bf
	sub  a                                           ; $4136: $97
	ldh  a, [c]                                      ; $4137: $f2
	db   $dd                                         ; $4138: $dd
	sbc  [hl]                                        ; $4139: $9e
	and  a                                           ; $413a: $a7
	or   a                                           ; $413b: $b7
	push bc                                          ; $413c: $c5
	xor  $c0                                         ; $413d: $ee $c0
	ret  nz                                          ; $413f: $c0

	sub  $bf                                         ; $4140: $d6 $bf
	ld   l, l                                        ; $4142: $6d
	rst  $38                                         ; $4143: $ff
	ei                                               ; $4144: $fb
	add  $9f                                         ; $4145: $c6 $9f
	ld   a, a                                        ; $4147: $7f
	ld   c, e                                        ; $4148: $4b
	rst  $28                                         ; $4149: $ef
	ld   hl, $001e                                   ; $414a: $21 $1e $00
	ld   bc, $0000                                   ; $414d: $01 $00 $00
	nop                                              ; $4150: $00
	nop                                              ; $4151: $00
	nop                                              ; $4152: $00
	nop                                              ; $4153: $00
	nop                                              ; $4154: $00
	nop                                              ; $4155: $00
	ld   b, b                                        ; $4156: $40
	nop                                              ; $4157: $00
	ldh  [$80], a                                    ; $4158: $e0 $80
	jr   nz, jr_09a_419c                             ; $415a: $20 $40

	add  hl, de                                      ; $415c: $19
	ld   b, $0e                                      ; $415d: $06 $0e
	nop                                              ; $415f: $00
	ld   c, b                                        ; $4160: $48
	rst  $38                                         ; $4161: $ff
	ret  z                                           ; $4162: $c8

	ei                                               ; $4163: $fb
	ret  z                                           ; $4164: $c8

	ld   a, e                                        ; $4165: $7b
	ret  z                                           ; $4166: $c8

	ld   l, c                                        ; $4167: $69
	ret  z                                           ; $4168: $c8

	add  sp, -$38                                    ; $4169: $e8 $c8
	ld   l, b                                        ; $416b: $68
	ret  z                                           ; $416c: $c8

	ld   c, c                                        ; $416d: $49
	ret  z                                           ; $416e: $c8

	ld   c, c                                        ; $416f: $49
	ld   a, [$eaaa]                                  ; $4170: $fa $aa $ea
	xor  d                                           ; $4173: $aa
	sbc  $bf                                         ; $4174: $de $bf
	sub  a                                           ; $4176: $97
	ldh  a, [c]                                      ; $4177: $f2
	add  e                                           ; $4178: $83
	sbc  h                                           ; $4179: $9c
	cp   a                                           ; $417a: $bf
	rst  $38                                         ; $417b: $ff
	push bc                                          ; $417c: $c5
	adc  $c0                                         ; $417d: $ce $c0
	ret  nz                                          ; $417f: $c0

	sub  $bf                                         ; $4180: $d6 $bf
	ld   l, l                                        ; $4182: $6d
	rst  $38                                         ; $4183: $ff
	ei                                               ; $4184: $fb
	add  $e0                                         ; $4185: $c6 $e0
	rra                                              ; $4187: $1f
	rst  $38                                         ; $4188: $ff
	ld   a, a                                        ; $4189: $7f
	dec  h                                           ; $418a: $25
	ld   e, $00                                      ; $418b: $1e $00
	ld   bc, $0000                                   ; $418d: $01 $00 $00
	nop                                              ; $4190: $00
	nop                                              ; $4191: $00
	nop                                              ; $4192: $00
	nop                                              ; $4193: $00
	nop                                              ; $4194: $00
	nop                                              ; $4195: $00
	ld   b, b                                        ; $4196: $40
	nop                                              ; $4197: $00
	ldh  [$80], a                                    ; $4198: $e0 $80
	jr   nz, @+$42                                   ; $419a: $20 $40

jr_09a_419c:
	add  hl, bc                                      ; $419c: $09
	ld   d, $00                                      ; $419d: $16 $00
	add  hl, bc                                      ; $419f: $09
	ld   [$0006], sp                                 ; $41a0: $08 $06 $00
	nop                                              ; $41a3: $00
	nop                                              ; $41a4: $00
	nop                                              ; $41a5: $00
	nop                                              ; $41a6: $00
	nop                                              ; $41a7: $00
	nop                                              ; $41a8: $00
	nop                                              ; $41a9: $00
	nop                                              ; $41aa: $00
	nop                                              ; $41ab: $00
	nop                                              ; $41ac: $00
	nop                                              ; $41ad: $00
	nop                                              ; $41ae: $00
	nop                                              ; $41af: $00
	ld   c, b                                        ; $41b0: $48
	rst  $38                                         ; $41b1: $ff
	ret  z                                           ; $41b2: $c8

	ei                                               ; $41b3: $fb
	ret  z                                           ; $41b4: $c8

	ld   a, e                                        ; $41b5: $7b
	ret  z                                           ; $41b6: $c8

	ld   l, c                                        ; $41b7: $69
	ld   c, b                                        ; $41b8: $48
	add  sp, -$38                                    ; $41b9: $e8 $c8
	ld   l, b                                        ; $41bb: $68
	ret  z                                           ; $41bc: $c8

	ld   c, c                                        ; $41bd: $49
	ret  z                                           ; $41be: $c8

	ld   c, c                                        ; $41bf: $49
	ld   a, [$eaaa]                                  ; $41c0: $fa $aa $ea
	xor  d                                           ; $41c3: $aa
	sbc  $bf                                         ; $41c4: $de $bf
	sub  a                                           ; $41c6: $97
	ldh  a, [c]                                      ; $41c7: $f2
	add  e                                           ; $41c8: $83
	add  b                                           ; $41c9: $80
	cp   l                                           ; $41ca: $bd
	di                                               ; $41cb: $f3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41cc: $cf
	sbc  $c0                                         ; $41cd: $de $c0
	ret  nz                                          ; $41cf: $c0

	sub  $bf                                         ; $41d0: $d6 $bf
	ld   l, l                                        ; $41d2: $6d
	rst  $38                                         ; $41d3: $ff
	ei                                               ; $41d4: $fb
	add  $fe                                         ; $41d5: $c6 $fe
	ld   bc, $e75b                                   ; $41d7: $01 $5b $e7
	ccf                                              ; $41da: $3f
	ld   a, $00                                      ; $41db: $3e $00
	ld   bc, $0000                                   ; $41dd: $01 $00 $00
	ld   a, [$aaaa]                                  ; $41e0: $fa $aa $aa
	ld   [$badf], a                                  ; $41e3: $ea $df $ba
	sub  $97                                         ; $41e6: $d6 $97
	db   $dd                                         ; $41e8: $dd
	cp   $97                                         ; $41e9: $fe $97
	and  a                                           ; $41eb: $a7
	push bc                                          ; $41ec: $c5
	adc  $c0                                         ; $41ed: $ce $c0
	ret  nz                                          ; $41ef: $c0

	sub  $73                                         ; $41f0: $d6 $73
	ld   c, e                                        ; $41f2: $4b
	ld   a, c                                        ; $41f3: $79
	add  hl, hl                                      ; $41f4: $29
	jr   c, @-$69                                    ; $41f5: $38 $95

	dec  e                                           ; $41f7: $1d
	rra                                              ; $41f8: $1f
	adc  h                                           ; $41f9: $8c
	adc  a                                           ; $41fa: $8f
	ld   b, $03                                      ; $41fb: $06 $03
	nop                                              ; $41fd: $00
	nop                                              ; $41fe: $00
	nop                                              ; $41ff: $00
	sub  $bf                                         ; $4200: $d6 $bf
	ld   a, l                                        ; $4202: $7d
	rst  JumpTable                                         ; $4203: $df
	ei                                               ; $4204: $fb
	and  $df                                         ; $4205: $e6 $df
	ccf                                              ; $4207: $3f
	ld   c, d                                        ; $4208: $4a
	xor  $21                                         ; $4209: $ee $21
	ld   e, $00                                      ; $420b: $1e $00
	ld   bc, $0000                                   ; $420d: $01 $00 $00
	nop                                              ; $4210: $00
	nop                                              ; $4211: $00
	nop                                              ; $4212: $00
	nop                                              ; $4213: $00
	nop                                              ; $4214: $00
	nop                                              ; $4215: $00
	ld   b, b                                        ; $4216: $40
	nop                                              ; $4217: $00
	ldh  [$80], a                                    ; $4218: $e0 $80
	jr   nz, jr_09a_425c                             ; $421a: $20 $40

	ld   [de], a                                     ; $421c: $12
	inc  c                                           ; $421d: $0c
	ld   c, $00                                      ; $421e: $0e $00
	ld   a, [$aaaa]                                  ; $4220: $fa $aa $aa
	ld   [$badf], a                                  ; $4223: $ea $df $ba
	sub  $97                                         ; $4226: $d6 $97
	db   $d3                                         ; $4228: $d3
	db   $fc                                         ; $4229: $fc
	adc  a                                           ; $422a: $8f
	sbc  a                                           ; $422b: $9f
	push bc                                          ; $422c: $c5
	adc  $c0                                         ; $422d: $ce $c0
	ret  nz                                          ; $422f: $c0

	sub  $bf                                         ; $4230: $d6 $bf
	ld   a, l                                        ; $4232: $7d
	rst  JumpTable                                         ; $4233: $df
	ei                                               ; $4234: $fb
	and  $e3                                         ; $4235: $e6 $e3
	rra                                              ; $4237: $1f
	ld   a, [hl]                                     ; $4238: $7e
	cp   $21                                         ; $4239: $fe $21
	ld   e, $00                                      ; $423b: $1e $00
	ld   bc, $0000                                   ; $423d: $01 $00 $00
	nop                                              ; $4240: $00
	nop                                              ; $4241: $00
	nop                                              ; $4242: $00
	nop                                              ; $4243: $00
	nop                                              ; $4244: $00
	nop                                              ; $4245: $00
	ld   b, b                                        ; $4246: $40
	nop                                              ; $4247: $00
	ldh  [$80], a                                    ; $4248: $e0 $80
	jr   nz, @+$42                                   ; $424a: $20 $40

	ld   a, [bc]                                     ; $424c: $0a
	inc  d                                           ; $424d: $14
	ld   bc, $0808                                   ; $424e: $01 $08 $08
	ld   bc, $0600                                   ; $4251: $01 $00 $06
	nop                                              ; $4254: $00
	nop                                              ; $4255: $00
	nop                                              ; $4256: $00
	nop                                              ; $4257: $00
	nop                                              ; $4258: $00
	nop                                              ; $4259: $00
	nop                                              ; $425a: $00
	nop                                              ; $425b: $00

jr_09a_425c:
	nop                                              ; $425c: $00
	nop                                              ; $425d: $00
	nop                                              ; $425e: $00
	nop                                              ; $425f: $00
	ld   a, [$aaaa]                                  ; $4260: $fa $aa $aa
	ld   [$badf], a                                  ; $4263: $ea $df $ba
	sub  $97                                         ; $4266: $d6 $97
	add  e                                           ; $4268: $83
	add  b                                           ; $4269: $80
	cp   l                                           ; $426a: $bd
	di                                               ; $426b: $f3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $426c: $cf
	sbc  $c0                                         ; $426d: $de $c0
	ret  nz                                          ; $426f: $c0

	sub  $73                                         ; $4270: $d6 $73
	ld   c, e                                        ; $4272: $4b
	ld   a, c                                        ; $4273: $79
	add  hl, hl                                      ; $4274: $29
	jr   c, @-$69                                    ; $4275: $38 $95

	dec  e                                           ; $4277: $1d
	sbc  a                                           ; $4278: $9f
	inc  c                                           ; $4279: $0c
	adc  a                                           ; $427a: $8f
	ld   b, $03                                      ; $427b: $06 $03
	nop                                              ; $427d: $00
	nop                                              ; $427e: $00
	nop                                              ; $427f: $00
	sub  $bf                                         ; $4280: $d6 $bf
	ld   a, l                                        ; $4282: $7d
	rst  JumpTable                                         ; $4283: $df
	ei                                               ; $4284: $fb
	and  $fe                                         ; $4285: $e6 $fe
	ld   bc, $e75b                                   ; $4287: $01 $5b $e7
	ccf                                              ; $428a: $3f
	ld   a, $00                                      ; $428b: $3e $00
	ld   bc, $0000                                   ; $428d: $01 $00 $00
	ld   a, [$feaa]                                  ; $4290: $fa $aa $fe
	cp   a                                           ; $4293: $bf
	rst  $20                                         ; $4294: $e7
	and  $d7                                         ; $4295: $e6 $d7
	adc  [hl]                                        ; $4297: $8e
	or   l                                           ; $4298: $b5
	sbc  c                                           ; $4299: $99
	and  [hl]                                        ; $429a: $a6
	db   $d3                                         ; $429b: $d3
	add  $c3                                         ; $429c: $c6 $c3
	ret                                              ; $429e: $c9


	add  $d6                                         ; $429f: $c6 $d6
	ld   [hl], e                                     ; $42a1: $73
	ld   c, e                                        ; $42a2: $4b
	ld   a, e                                        ; $42a3: $7b
	add  hl, hl                                      ; $42a4: $29
	jr   c, @-$67                                    ; $42a5: $38 $97

	inc  e                                           ; $42a7: $1c
	sbc  a                                           ; $42a8: $9f
	inc  c                                           ; $42a9: $0c
	adc  [hl]                                        ; $42aa: $8e
	ld   b, $00                                      ; $42ab: $06 $00
	nop                                              ; $42ad: $00
	nop                                              ; $42ae: $00
	nop                                              ; $42af: $00
	ld   [bc], a                                     ; $42b0: $02
	rst  $10                                         ; $42b1: $d7
	dec  bc                                          ; $42b2: $0b
	ld   c, e                                        ; $42b3: $4b
	add  hl, bc                                      ; $42b4: $09
	adc  a                                           ; $42b5: $8f
	inc  b                                           ; $42b6: $04
	rst  $30                                         ; $42b7: $f7
	and  [hl]                                        ; $42b8: $a6
	rst  $38                                         ; $42b9: $ff
	sub  e                                           ; $42ba: $93
	rst  $38                                         ; $42bb: $ff
	reti                                             ; $42bc: $d9


	ld   a, a                                        ; $42bd: $7f
	db   $ec                                         ; $42be: $ec
	rst  $38                                         ; $42bf: $ff
	or   $df                                         ; $42c0: $f6 $df
	ld   c, l                                        ; $42c2: $4d
	rst  $38                                         ; $42c3: $ff
	ei                                               ; $42c4: $fb
	adc  $07                                         ; $42c5: $ce $07
	push de                                          ; $42c7: $d5
	dec  c                                           ; $42c8: $0d
	sbc  l                                           ; $42c9: $9d
	add  hl, bc                                      ; $42ca: $09
	inc  e                                           ; $42cb: $1c
	ld   c, $3d                                      ; $42cc: $0e $3d
	nop                                              ; $42ce: $00
	nop                                              ; $42cf: $00
	nop                                              ; $42d0: $00
	nop                                              ; $42d1: $00
	nop                                              ; $42d2: $00
	nop                                              ; $42d3: $00
	nop                                              ; $42d4: $00
	nop                                              ; $42d5: $00
	ld   b, b                                        ; $42d6: $40
	nop                                              ; $42d7: $00
	ldh  [$80], a                                    ; $42d8: $e0 $80
	jr   nz, jr_09a_431c                             ; $42da: $20 $40

	ld   [de], a                                     ; $42dc: $12
	inc  c                                           ; $42dd: $0c
	dec  bc                                          ; $42de: $0b
	db   $10                                         ; $42df: $10
	jr   jr_09a_42e3                                 ; $42e0: $18 $01

	nop                                              ; $42e2: $00

jr_09a_42e3:
	add  hl, bc                                      ; $42e3: $09
	ld   bc, $0006                                   ; $42e4: $01 $06 $00
	nop                                              ; $42e7: $00
	nop                                              ; $42e8: $00
	nop                                              ; $42e9: $00
	nop                                              ; $42ea: $00
	nop                                              ; $42eb: $00
	nop                                              ; $42ec: $00
	nop                                              ; $42ed: $00
	nop                                              ; $42ee: $00
	nop                                              ; $42ef: $00
	ld   a, [$feaa]                                  ; $42f0: $fa $aa $fe
	cp   a                                           ; $42f3: $bf
	db   $e3                                         ; $42f4: $e3
	ldh  [c], a                                      ; $42f5: $e2
	jp   $9780                                       ; $42f6: $c3 $80 $97


	adc  a                                           ; $42f9: $8f
	or   h                                           ; $42fa: $b4
	rst  JumpTable                                         ; $42fb: $df

jr_09a_42fc:
	and  $d7                                         ; $42fc: $e6 $d7
	ret                                              ; $42fe: $c9


	add  $f6                                         ; $42ff: $c6 $f6
	rst  JumpTable                                         ; $4301: $df
	ld   a, l                                        ; $4302: $7d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4303: $cf
	db   $eb                                         ; $4304: $eb
	cp   $bf                                         ; $4305: $fe $bf
	ld   a, [hl]                                     ; $4307: $7e
	ld   d, c                                        ; $4308: $51
	db   $fd                                         ; $4309: $fd
	dec  e                                           ; $430a: $1d
	sbc  h                                           ; $430b: $9c
	ld   c, $3d                                      ; $430c: $0e $3d
	nop                                              ; $430e: $00
	nop                                              ; $430f: $00
	nop                                              ; $4310: $00
	nop                                              ; $4311: $00
	nop                                              ; $4312: $00
	nop                                              ; $4313: $00
	nop                                              ; $4314: $00
	nop                                              ; $4315: $00
	ld   b, b                                        ; $4316: $40
	nop                                              ; $4317: $00
	ldh  [$80], a                                    ; $4318: $e0 $80
	jr   nz, @+$42                                   ; $431a: $20 $40

jr_09a_431c:
	ld   c, $00                                      ; $431c: $0e $00
	inc  b                                           ; $431e: $04
	ld   [de], a                                     ; $431f: $12
	ld   a, [$feaa]                                  ; $4320: $fa $aa $fe
	cp   a                                           ; $4323: $bf
	db   $e3                                         ; $4324: $e3
	ldh  [c], a                                      ; $4325: $e2
	jp   $8381                                       ; $4326: $c3 $81 $83


	add  b                                           ; $4329: $80
	cp   l                                           ; $432a: $bd
	di                                               ; $432b: $f3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $432c: $cf
	sbc  $c0                                         ; $432d: $de $c0
	ret  nz                                          ; $432f: $c0

	or   $df                                         ; $4330: $f6 $df
	ld   l, l                                        ; $4332: $6d
	rst  JumpTable                                         ; $4333: $df
	ei                                               ; $4334: $fb
	and  $fe                                         ; $4335: $e6 $fe
	ld   bc, $e75b                                   ; $4337: $01 $5b $e7
	ccf                                              ; $433a: $3f
	ld   a, $00                                      ; $433b: $3e $00
	ld   bc, $0000                                   ; $433d: $01 $00 $00
	ld   a, [$ebaa]                                  ; $4340: $fa $aa $eb
	xor  e                                           ; $4343: $ab
	rst  $28                                         ; $4344: $ef
	xor  [hl]                                        ; $4345: $ae
	rst  $38                                         ; $4346: $ff
	ld   sp, hl                                      ; $4347: $f9
	sbc  l                                           ; $4348: $9d
	cp   [hl]                                        ; $4349: $be
	or   a                                           ; $434a: $b7
	rst  $20                                         ; $434b: $e7
	push bc                                          ; $434c: $c5
	adc  $c0                                         ; $434d: $ce $c0
	ret  nz                                          ; $434f: $c0

	ret  nz                                          ; $4350: $c0

	ldh  [$ca], a                                    ; $4351: $e0 $ca
	ldh  [$f4], a                                    ; $4353: $e0 $f4
	ldh  [$e0], a                                    ; $4355: $e0 $e0
	ldh  a, [rSVBK]                                  ; $4357: $f0 $70
	ldh  a, [rSVBK]                                  ; $4359: $f0 $70
	ld   hl, sp+$78                                  ; $435b: $f8 $78
	ld   hl, sp+$7c                                  ; $435d: $f8 $7c
	db   $fc                                         ; $435f: $fc
	sub  $77                                         ; $4360: $d6 $77
	ld   c, e                                        ; $4362: $4b
	ld   a, e                                        ; $4363: $7b
	add  hl, hl                                      ; $4364: $29
	jr   c, jr_09a_42fc                              ; $4365: $38 $95

	inc  e                                           ; $4367: $1c
	sbc  a                                           ; $4368: $9f
	inc  c                                           ; $4369: $0c
	adc  a                                           ; $436a: $8f
	ld   b, $03                                      ; $436b: $06 $03
	nop                                              ; $436d: $00
	nop                                              ; $436e: $00
	nop                                              ; $436f: $00
	sub  $bf                                         ; $4370: $d6 $bf
	ld   l, l                                        ; $4372: $6d
	rst  $38                                         ; $4373: $ff
	ei                                               ; $4374: $fb
	sbc  $9f                                         ; $4375: $de $9f
	ld   a, a                                        ; $4377: $7f
	ld   c, d                                        ; $4378: $4a
	xor  $21                                         ; $4379: $ee $21
	ld   e, $00                                      ; $437b: $1e $00
	ld   bc, $0000                                   ; $437d: $01 $00 $00
	ld   a, [hl+]                                    ; $4380: $2a
	nop                                              ; $4381: $00
	ld   d, h                                        ; $4382: $54
	nop                                              ; $4383: $00
	nop                                              ; $4384: $00
	nop                                              ; $4385: $00
	ld   bc, $0100                                   ; $4386: $01 $00 $01
	nop                                              ; $4389: $00
	ld   bc, $0300                                   ; $438a: $01 $00 $03
	nop                                              ; $438d: $00
	inc  bc                                          ; $438e: $03
	nop                                              ; $438f: $00
	ld   a, [$ebaa]                                  ; $4390: $fa $aa $eb
	xor  e                                           ; $4393: $ab
	rst  $28                                         ; $4394: $ef
	xor  [hl]                                        ; $4395: $ae
	rst  $38                                         ; $4396: $ff
	ld   sp, hl                                      ; $4397: $f9
	add  e                                           ; $4398: $83
	sbc  h                                           ; $4399: $9c
	cp   a                                           ; $439a: $bf
	rst  $38                                         ; $439b: $ff
	push bc                                          ; $439c: $c5
	adc  $c0                                         ; $439d: $ce $c0
	ret  nz                                          ; $439f: $c0

	sub  $bf                                         ; $43a0: $d6 $bf
	ld   l, l                                        ; $43a2: $6d
	rst  $38                                         ; $43a3: $ff
	ei                                               ; $43a4: $fb
	sbc  $e0                                         ; $43a5: $de $e0
	rra                                              ; $43a7: $1f
	ld   a, a                                        ; $43a8: $7f
	rst  $38                                         ; $43a9: $ff
	dec  h                                           ; $43aa: $25
	ld   e, $00                                      ; $43ab: $1e $00
	ld   bc, $0000                                   ; $43ad: $01 $00 $00
	ld   a, [$ebaa]                                  ; $43b0: $fa $aa $eb
	xor  e                                           ; $43b3: $ab
	rst  $28                                         ; $43b4: $ef
	xor  [hl]                                        ; $43b5: $ae
	rst  $38                                         ; $43b6: $ff
	ld   sp, hl                                      ; $43b7: $f9
	db   $e3                                         ; $43b8: $e3
	add  b                                           ; $43b9: $80
	cp   l                                           ; $43ba: $bd
	di                                               ; $43bb: $f3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43bc: $cf
	sbc  $c0                                         ; $43bd: $de $c0
	ret  nz                                          ; $43bf: $c0

	sub  $bf                                         ; $43c0: $d6 $bf
	ld   l, l                                        ; $43c2: $6d
	rst  $38                                         ; $43c3: $ff
	ei                                               ; $43c4: $fb
	sbc  $fe                                         ; $43c5: $de $fe
	ld   bc, $e75b                                   ; $43c7: $01 $5b $e7
	ccf                                              ; $43ca: $3f
	ld   a, $00                                      ; $43cb: $3e $00
	ld   bc, $0000                                   ; $43cd: $01 $00 $00
	sub  $bf                                         ; $43d0: $d6 $bf
	ld   l, l                                        ; $43d2: $6d
	rst  $38                                         ; $43d3: $ff
	ei                                               ; $43d4: $fb
	sbc  $e0                                         ; $43d5: $de $e0
	rra                                              ; $43d7: $1f
	rst  $38                                         ; $43d8: $ff
	ld   a, a                                        ; $43d9: $7f
	dec  h                                           ; $43da: $25
	ld   e, $00                                      ; $43db: $1e $00
	ld   bc, $0000                                   ; $43dd: $01 $00 $00
	nop                                              ; $43e0: $00
	nop                                              ; $43e1: $00
	nop                                              ; $43e2: $00
	nop                                              ; $43e3: $00
	nop                                              ; $43e4: $00
	nop                                              ; $43e5: $00
	ld   b, b                                        ; $43e6: $40
	nop                                              ; $43e7: $00
	ldh  [$80], a                                    ; $43e8: $e0 $80
	jr   nz, @+$42                                   ; $43ea: $20 $40

	ld   [de], a                                     ; $43ec: $12
	inc  c                                           ; $43ed: $0c
	nop                                              ; $43ee: $00
	add  hl, bc                                      ; $43ef: $09
	inc  b                                           ; $43f0: $04
	ld   bc, $0600                                   ; $43f1: $01 $00 $06
	nop                                              ; $43f4: $00
	nop                                              ; $43f5: $00
	nop                                              ; $43f6: $00
	nop                                              ; $43f7: $00
	nop                                              ; $43f8: $00
	nop                                              ; $43f9: $00
	nop                                              ; $43fa: $00
	nop                                              ; $43fb: $00
	nop                                              ; $43fc: $00
	nop                                              ; $43fd: $00
	nop                                              ; $43fe: $00
	nop                                              ; $43ff: $00
	ld   a, [$ebaa]                                  ; $4400: $fa $aa $eb
	xor  e                                           ; $4403: $ab
	rst  $28                                         ; $4404: $ef
	xor  [hl]                                        ; $4405: $ae
	rst  $38                                         ; $4406: $ff
	ld   sp, hl                                      ; $4407: $f9
	add  e                                           ; $4408: $83
	add  b                                           ; $4409: $80
	cp   l                                           ; $440a: $bd
	di                                               ; $440b: $f3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $440c: $cf
	sbc  $c0                                         ; $440d: $de $c0
	ret  nz                                          ; $440f: $c0

	ld   a, [$ebaa]                                  ; $4410: $fa $aa $eb
	xor  e                                           ; $4413: $ab
	rst  $28                                         ; $4414: $ef
	xor  [hl]                                        ; $4415: $ae
	rst  $38                                         ; $4416: $ff
	ld   sp, hl                                      ; $4417: $f9
	sbc  h                                           ; $4418: $9c
	cp   a                                           ; $4419: $bf
	and  [hl]                                        ; $441a: $a6
	di                                               ; $441b: $f3
	call $c0c6                                       ; $441c: $cd $c6 $c0
	ret  nz                                          ; $441f: $c0

	sub  $bf                                         ; $4420: $d6 $bf
	ld   l, l                                        ; $4422: $6d
	rst  $38                                         ; $4423: $ff
	ei                                               ; $4424: $fb
	sbc  $9f                                         ; $4425: $de $9f
	ld   a, a                                        ; $4427: $7f
	ld   c, h                                        ; $4428: $4c
	rst  $20                                         ; $4429: $e7
	ld   hl, $001e                                   ; $442a: $21 $1e $00
	ld   bc, $0000                                   ; $442d: $01 $00 $00
	nop                                              ; $4430: $00
	nop                                              ; $4431: $00
	nop                                              ; $4432: $00
	nop                                              ; $4433: $00
	nop                                              ; $4434: $00
	nop                                              ; $4435: $00
	ld   b, b                                        ; $4436: $40
	nop                                              ; $4437: $00
	ldh  [$80], a                                    ; $4438: $e0 $80
	jr   nz, jr_09a_447c                             ; $443a: $20 $40

	ld   [de], a                                     ; $443c: $12
	inc  c                                           ; $443d: $0c
	ld   [$ba01], sp                                 ; $443e: $08 $01 $ba
	ld   [$baea], a                                  ; $4441: $ea $ea $ba
	rst  $38                                         ; $4444: $ff
	sbc  d                                           ; $4445: $9a
	sub  $97                                         ; $4446: $d6 $97
	rst  JumpTable                                         ; $4448: $df
	cp   a                                           ; $4449: $bf
	add  c                                           ; $444a: $81
	sub  e                                           ; $444b: $93
	jp   $c0c3                                       ; $444c: $c3 $c3 $c0


	ret  z                                           ; $444f: $c8

	pop  bc                                          ; $4450: $c1
	and  $c0                                         ; $4451: $e6 $c0
	ldh  [$e0], a                                    ; $4453: $e0 $e0
	ldh  [$e0], a                                    ; $4455: $e0 $e0
	ldh  a, [rSVBK]                                  ; $4457: $f0 $70
	ldh  a, [rSVBK]                                  ; $4459: $f0 $70
	ld   hl, sp+$78                                  ; $445b: $f8 $78
	ld   hl, sp+$7c                                  ; $445d: $f8 $7c
	db   $fc                                         ; $445f: $fc
	sub  $bf                                         ; $4460: $d6 $bf
	ld   a, l                                        ; $4462: $7d
	rst  $28                                         ; $4463: $ef
	ei                                               ; $4464: $fb
	add  $9f                                         ; $4465: $c6 $9f
	rst  $38                                         ; $4467: $ff
	ld   c, c                                        ; $4468: $49
	db   $dd                                         ; $4469: $dd
	add  hl, de                                      ; $446a: $19
	jr   @+$04                                       ; $446b: $18 $02

	ld   bc, $1c20                                   ; $446d: $01 $20 $1c
	nop                                              ; $4470: $00
	nop                                              ; $4471: $00
	nop                                              ; $4472: $00
	nop                                              ; $4473: $00
	nop                                              ; $4474: $00
	nop                                              ; $4475: $00
	ld   b, b                                        ; $4476: $40
	nop                                              ; $4477: $00
	ldh  [$80], a                                    ; $4478: $e0 $80
	jr   nz, jr_09a_44bc                             ; $447a: $20 $40

jr_09a_447c:
	nop                                              ; $447c: $00
	nop                                              ; $447d: $00
	inc  h                                           ; $447e: $24
	jr   jr_09a_448d                                 ; $447f: $18 $0c

	nop                                              ; $4481: $00
	nop                                              ; $4482: $00
	nop                                              ; $4483: $00
	nop                                              ; $4484: $00
	nop                                              ; $4485: $00
	nop                                              ; $4486: $00
	nop                                              ; $4487: $00
	nop                                              ; $4488: $00
	nop                                              ; $4489: $00
	nop                                              ; $448a: $00
	nop                                              ; $448b: $00
	nop                                              ; $448c: $00

jr_09a_448d:
	nop                                              ; $448d: $00
	nop                                              ; $448e: $00
	nop                                              ; $448f: $00
	cp   d                                           ; $4490: $ba
	ld   [$baea], a                                  ; $4491: $ea $ea $ba
	rst  $38                                         ; $4494: $ff
	sbc  d                                           ; $4495: $9a
	sbc  $97                                         ; $4496: $de $97
	rst  ToBoot                                         ; $4498: $c7
	add  e                                           ; $4499: $83
	sbc  h                                           ; $449a: $9c
	cp   a                                           ; $449b: $bf
	ret                                              ; $449c: $c9


	db   $d3                                         ; $449d: $d3
	jp   $d6cb                                       ; $449e: $c3 $cb $d6


	cp   a                                           ; $44a1: $bf
	ld   a, l                                        ; $44a2: $7d
	rst  $28                                         ; $44a3: $ef
	ei                                               ; $44a4: $fb
	add  $ff                                         ; $44a5: $c6 $ff
	add  b                                           ; $44a7: $80
	rst  JumpTable                                         ; $44a8: $df
	ld   a, a                                        ; $44a9: $7f
	ld   e, e                                        ; $44aa: $5b
	reti                                             ; $44ab: $d9


	ld   a, [de]                                     ; $44ac: $1a
	add  hl, de                                      ; $44ad: $19
	jr   nz, jr_09a_44cc                             ; $44ae: $20 $1c

	nop                                              ; $44b0: $00
	nop                                              ; $44b1: $00
	nop                                              ; $44b2: $00
	nop                                              ; $44b3: $00
	nop                                              ; $44b4: $00
	nop                                              ; $44b5: $00
	ld   b, b                                        ; $44b6: $40
	nop                                              ; $44b7: $00
	ldh  [$80], a                                    ; $44b8: $e0 $80
	jr   nz, jr_09a_44fc                             ; $44ba: $20 $40

jr_09a_44bc:
	nop                                              ; $44bc: $00
	inc  e                                           ; $44bd: $1c
	inc  e                                           ; $44be: $1c
	ld   [hl+], a                                    ; $44bf: $22
	jr   jr_09a_44e3                                 ; $44c0: $18 $21

	db   $10                                         ; $44c2: $10
	ld   hl, $1100                                   ; $44c3: $21 $00 $11
	nop                                              ; $44c6: $00
	ld   [bc], a                                     ; $44c7: $02
	nop                                              ; $44c8: $00
	nop                                              ; $44c9: $00
	nop                                              ; $44ca: $00
	nop                                              ; $44cb: $00

jr_09a_44cc:
	nop                                              ; $44cc: $00
	nop                                              ; $44cd: $00
	nop                                              ; $44ce: $00
	nop                                              ; $44cf: $00
	cp   d                                           ; $44d0: $ba
	ld   [$baea], a                                  ; $44d1: $ea $ea $ba
	rst  $38                                         ; $44d4: $ff

Call_09a_44d5:
	sbc  d                                           ; $44d5: $9a
	sbc  $97                                         ; $44d6: $de $97
	add  c                                           ; $44d8: $81
	add  c                                           ; $44d9: $81
	add  e                                           ; $44da: $83
	ret  nz                                          ; $44db: $c0

	db   $fd                                         ; $44dc: $fd
	di                                               ; $44dd: $f3
	adc  $de                                         ; $44de: $ce $de
	sub  $bf                                         ; $44e0: $d6 $bf
	ld   a, l                                        ; $44e2: $7d

jr_09a_44e3:
	rst  $28                                         ; $44e3: $ef
	ei                                               ; $44e4: $fb
	add  $ff                                         ; $44e5: $c6 $ff
	add  b                                           ; $44e7: $80
	cp   $01                                         ; $44e8: $fe $01
	ld   e, e                                        ; $44ea: $5b
	rst  $20                                         ; $44eb: $e7
	ld   a, $3d                                      ; $44ec: $3e $3d
	nop                                              ; $44ee: $00
	nop                                              ; $44ef: $00
	sbc  [hl]                                        ; $44f0: $9e
	ld   bc, $ff00                                   ; $44f1: $01 $00 $ff
	adc  l                                           ; $44f4: $8d
	nop                                              ; $44f5: $00
	ld   de, $d898                                   ; $44f6: $11 $98 $d8
	sbc  b                                           ; $44f9: $98
	ret  c                                           ; $44fa: $d8

	sbc  b                                           ; $44fb: $98

jr_09a_44fc:
	ret  c                                           ; $44fc: $d8

	jr   @-$26                                       ; $44fd: $18 $d8

	db   $10                                         ; $44ff: $10
	ret  c                                           ; $4500: $d8

	nop                                              ; $4501: $00
	ret  c                                           ; $4502: $d8

	nop                                              ; $4503: $00
	ret  c                                           ; $4504: $d8

	ld   b, b                                        ; $4505: $40
	ret  c                                           ; $4506: $d8

	cpl                                              ; $4507: $2f
	inc  bc                                          ; $4508: $03
	add  h                                           ; $4509: $84
	rst  $38                                         ; $450a: $ff
	add  b                                           ; $450b: $80
	xor  a                                           ; $450c: $af
	add  b                                           ; $450d: $80
	rst  $10                                         ; $450e: $d7
	add  b                                           ; $450f: $80
	xor  e                                           ; $4510: $ab
	add  b                                           ; $4511: $80
	rst  $10                                         ; $4512: $d7
	ld   bc, $8a49                                   ; $4513: $01 $49 $8a
	add  b                                           ; $4516: $80
	sub  l                                           ; $4517: $95
	add  b                                           ; $4518: $80
	adc  d                                           ; $4519: $8a
	add  b                                           ; $451a: $80
	add  l                                           ; $451b: $85
	add  b                                           ; $451c: $80
	add  d                                           ; $451d: $82
	add  b                                           ; $451e: $80
	add  l                                           ; $451f: $85
	add  b                                           ; $4520: $80
	add  d                                           ; $4521: $82
	add  b                                           ; $4522: $80
	add  c                                           ; $4523: $81
	nop                                              ; $4524: $00
	and  b                                           ; $4525: $a0
	adc  l                                           ; $4526: $8d
	nop                                              ; $4527: $00
	nop                                              ; $4528: $00
	and  b                                           ; $4529: $a0
	adc  l                                           ; $452a: $8d
	ld   b, b                                        ; $452b: $40
	ld   bc, $9310                                   ; $452c: $01 $10 $93
	add  b                                           ; $452f: $80
	jp   Jump_09a_6780                               ; $4530: $c3 $80 $67


	add  b                                           ; $4533: $80
	inc  sp                                          ; $4534: $33
	add  b                                           ; $4535: $80
	sbc  e                                           ; $4536: $9b
	inc  b                                           ; $4537: $04
	ld   c, l                                        ; $4538: $4d
	ld   c, a                                        ; $4539: $4f
	and  h                                           ; $453a: $a4
	and  a                                           ; $453b: $a7
	ld   b, d                                        ; $453c: $42
	add  b                                           ; $453d: $80
	ld   b, e                                        ; $453e: $43
	adc  l                                           ; $453f: $8d
	add  b                                           ; $4540: $80
	ld   bc, $fa05                                   ; $4541: $01 $05 $fa
	add  b                                           ; $4544: $80
	push af                                          ; $4545: $f5
	nop                                              ; $4546: $00
	ret  nz                                          ; $4547: $c0

	add  c                                           ; $4548: $81
	nop                                              ; $4549: $00
	ld   bc, $0080                                   ; $454a: $01 $80 $00
	add  c                                           ; $454d: $81
	inc  bc                                          ; $454e: $03

jr_09a_454f:
	nop                                              ; $454f: $00
	add  e                                           ; $4550: $83
	add  b                                           ; $4551: $80
	inc  bc                                          ; $4552: $03
	inc  b                                           ; $4553: $04
	rst  $38                                         ; $4554: $ff
	ld   bc, $4181                                   ; $4555: $01 $81 $41
	ld   hl, $0181                                   ; $4558: $21 $81 $01
	ld   [bc], a                                     ; $455b: $02
	pop  hl                                          ; $455c: $e1
	add  c                                           ; $455d: $81
	ld   bc, $8183                                   ; $455e: $01 $83 $81
	ld   bc, $e816                                   ; $4561: $01 $16 $e8
	add  b                                           ; $4564: $80
	call nc, $0082                                   ; $4565: $d4 $82 $00
	nop                                              ; $4568: $00
	db   $fc                                         ; $4569: $fc
	add  b                                           ; $456a: $80
	nop                                              ; $456b: $00
	nop                                              ; $456c: $00
	db   $fc                                         ; $456d: $fc
	add  d                                           ; $456e: $82
	nop                                              ; $456f: $00
	nop                                              ; $4570: $00
	cp   a                                           ; $4571: $bf
	adc  l                                           ; $4572: $8d
	add  b                                           ; $4573: $80
	nop                                              ; $4574: $00
	ccf                                              ; $4575: $3f
	adc  l                                           ; $4576: $8d
	rst  $38                                         ; $4577: $ff
	adc  [hl]                                        ; $4578: $8e
	nop                                              ; $4579: $00
	inc  b                                           ; $457a: $04
	ld   hl, sp-$40                                  ; $457b: $f8 $c0
	call nz, $e3e0                                   ; $457d: $c4 $e0 $e3
	add  b                                           ; $4580: $80
	ld   hl, sp-$80                                  ; $4581: $f8 $80
	cp   $85                                         ; $4583: $fe $85
	rst  $38                                         ; $4585: $ff
	add  h                                           ; $4586: $84
	nop                                              ; $4587: $00
	dec  bc                                          ; $4588: $0b
	ret  nz                                          ; $4589: $c0

	nop                                              ; $458a: $00
	jr   nz, jr_09a_458d                             ; $458b: $20 $00

jr_09a_458d:
	jr   jr_09a_454f                                 ; $458d: $18 $c0

	add  $f0                                         ; $458f: $c6 $f0
	pop  af                                          ; $4591: $f1
	ld   hl, sp-$53                                  ; $4592: $f8 $ad
	xor  d                                           ; $4594: $aa
	add  b                                           ; $4595: $80
	ld   d, l                                        ; $4596: $55
	add  b                                           ; $4597: $80
	xor  d                                           ; $4598: $aa
	add  b                                           ; $4599: $80
	ld   d, l                                        ; $459a: $55
	add  b                                           ; $459b: $80
	xor  d                                           ; $459c: $aa
	add  b                                           ; $459d: $80
	ld   d, c                                        ; $459e: $51
	add  b                                           ; $459f: $80
	and  b                                           ; $45a0: $a0
	add  b                                           ; $45a1: $80
	ld   b, b                                        ; $45a2: $40
	nop                                              ; $45a3: $00
	sub  h                                           ; $45a4: $94
	adc  l                                           ; $45a5: $8d
	ld   a, e                                        ; $45a6: $7b
	nop                                              ; $45a7: $00
	push bc                                          ; $45a8: $c5
	adc  l                                           ; $45a9: $8d
	rst  JumpTable                                         ; $45aa: $df
	ld   bc, $9c9a                                   ; $45ab: $01 $9a $9c
	add  b                                           ; $45ae: $80
	sbc  b                                           ; $45af: $98
	add  b                                           ; $45b0: $80
	sbc  h                                           ; $45b1: $9c
	add  b                                           ; $45b2: $80
	sbc  b                                           ; $45b3: $98
	add  b                                           ; $45b4: $80
	sbc  h                                           ; $45b5: $9c
	add  b                                           ; $45b6: $80
	sbc  b                                           ; $45b7: $98
	add  b                                           ; $45b8: $80
	sbc  h                                           ; $45b9: $9c
	add  b                                           ; $45ba: $80
	sbc  b                                           ; $45bb: $98
	ld   bc, $aa59                                   ; $45bc: $01 $59 $aa
	add  b                                           ; $45bf: $80
	ld   d, h                                        ; $45c0: $54
	add  b                                           ; $45c1: $80
	xor  b                                           ; $45c2: $a8
	add  b                                           ; $45c3: $80
	ld   d, b                                        ; $45c4: $50
	add  b                                           ; $45c5: $80
	and  b                                           ; $45c6: $a0
	add  b                                           ; $45c7: $80
	ld   b, b                                        ; $45c8: $40
	add  b                                           ; $45c9: $80
	and  b                                           ; $45ca: $a0
	add  b                                           ; $45cb: $80
	ld   b, b                                        ; $45cc: $40
	add  c                                           ; $45cd: $81
	cp   [hl]                                        ; $45ce: $be
	ld   [$a6bf], sp                                 ; $45cf: $08 $bf $a6
	and  l                                           ; $45d2: $a5
	cp   l                                           ; $45d3: $bd
	cp   c                                           ; $45d4: $b9
	or   d                                           ; $45d5: $b2
	cp   e                                           ; $45d6: $bb
	sub  a                                           ; $45d7: $97
	and  a                                           ; $45d8: $a7
	add  d                                           ; $45d9: $82
	cp   a                                           ; $45da: $bf
	rlca                                             ; $45db: $07
	add  l                                           ; $45dc: $85
	cp   d                                           ; $45dd: $ba
	sbc  d                                           ; $45de: $9a
	ld   a, [$ba2a]                                  ; $45df: $fa $2a $ba
	and  d                                           ; $45e2: $a2
	xor  d                                           ; $45e3: $aa
	add  b                                           ; $45e4: $80
	add  d                                           ; $45e5: $82
	add  b                                           ; $45e6: $80
	ld   [bc], a                                     ; $45e7: $02
	add  d                                           ; $45e8: $82
	ld   a, [$f701]                                  ; $45e9: $fa $01 $f7
	ld   [$0980], sp                                 ; $45ec: $08 $80 $09
	add  b                                           ; $45ef: $80
	ld   [$0986], sp                                 ; $45f0: $08 $86 $09
	add  b                                           ; $45f3: $80
	ld   [$2a01], sp                                 ; $45f4: $08 $01 $2a
	jp   nc, $c980                                   ; $45f7: $d2 $80 $c9

	add  b                                           ; $45fa: $80
	jp   c, $c980                                    ; $45fb: $da $80 $c9

	ld   bc, $dad2                                   ; $45fe: $01 $d2 $da
	add  b                                           ; $4601: $80
	reti                                             ; $4602: $d9


	add  b                                           ; $4603: $80
	jp   c, $d980                                    ; $4604: $da $80 $d9

	ld   bc, $654d                                   ; $4607: $01 $4d $65
	add  b                                           ; $460a: $80
	ld   h, d                                        ; $460b: $62
	adc  b                                           ; $460c: $88
	ld   h, b                                        ; $460d: $60
	add  b                                           ; $460e: $80
	ld   h, d                                        ; $460f: $62
	ld   bc, $ee2a                                   ; $4610: $01 $2a $ee
	add  b                                           ; $4613: $80
	cp   $03                                         ; $4614: $fe $03
	db   $ec                                         ; $4616: $ec
	xor  $fc                                         ; $4617: $ee $fc
	cp   $80                                         ; $4619: $fe $80
	xor  $80                                         ; $461b: $ee $80
	cp   $82                                         ; $461d: $fe $82
	xor  $01                                         ; $461f: $ee $01
	ei                                               ; $4621: $fb
	add  b                                           ; $4622: $80
	add  b                                           ; $4623: $80
	nop                                              ; $4624: $00
	add  b                                           ; $4625: $80
	add  b                                           ; $4626: $80
	adc  b                                           ; $4627: $88
	nop                                              ; $4628: $00
	nop                                              ; $4629: $00
	ld   h, b                                        ; $462a: $60
	adc  l                                           ; $462b: $8d
	ld   bc, $c100                                   ; $462c: $01 $00 $c1
	adc  l                                           ; $462f: $8d
	ld   b, b                                        ; $4630: $40
	nop                                              ; $4631: $00
	adc  a                                           ; $4632: $8f
	add  e                                           ; $4633: $83
	ld   [$0986], sp                                 ; $4634: $08 $86 $09
	add  b                                           ; $4637: $80
	ld   [$2d01], sp                                 ; $4638: $08 $01 $2d
	ld   a, [hl+]                                    ; $463b: $2a
	add  b                                           ; $463c: $80
	dec  d                                           ; $463d: $15
	add  b                                           ; $463e: $80
	ld   a, [bc]                                     ; $463f: $0a
	add  b                                           ; $4640: $80
	dec  b                                           ; $4641: $05
	add  b                                           ; $4642: $80
	ld   [bc], a                                     ; $4643: $02
	add  b                                           ; $4644: $80
	dec  b                                           ; $4645: $05
	add  b                                           ; $4646: $80
	ld   [bc], a                                     ; $4647: $02
	add  b                                           ; $4648: $80
	ld   bc, $8080                                   ; $4649: $01 $80 $80
	add  b                                           ; $464c: $80
	ld   b, b                                        ; $464d: $40
	add  b                                           ; $464e: $80
	add  b                                           ; $464f: $80
	adc  b                                           ; $4650: $88
	nop                                              ; $4651: $00
	nop                                              ; $4652: $00
	sub  h                                           ; $4653: $94
	adc  l                                           ; $4654: $8d
	ld   a, e                                        ; $4655: $7b
	ld   bc, $d5c5                                   ; $4656: $01 $c5 $d5
	add  h                                           ; $4659: $84
	jp   c, $d581                                    ; $465a: $da $81 $d5

	add  e                                           ; $465d: $83
	rst  JumpTable                                         ; $465e: $df
	ld   bc, $9c9a                                   ; $465f: $01 $9a $9c
	add  b                                           ; $4662: $80
	sbc  b                                           ; $4663: $98
	add  b                                           ; $4664: $80
	sbc  h                                           ; $4665: $9c
	add  b                                           ; $4666: $80
	sbc  b                                           ; $4667: $98
	add  b                                           ; $4668: $80
	sbc  h                                           ; $4669: $9c
	add  b                                           ; $466a: $80
	sbc  b                                           ; $466b: $98
	add  b                                           ; $466c: $80
	sbc  h                                           ; $466d: $9c
	add  b                                           ; $466e: $80
	sbc  b                                           ; $466f: $98
	ld   bc, $8073                                   ; $4670: $01 $73 $80
	add  b                                           ; $4673: $80
	ld   b, b                                        ; $4674: $40
	add  b                                           ; $4675: $80
	add  b                                           ; $4676: $80
	adc  b                                           ; $4677: $88
	nop                                              ; $4678: $00
	add  b                                           ; $4679: $80
	add  b                                           ; $467a: $80
	add  b                                           ; $467b: $80
	sbc  a                                           ; $467c: $9f
	dec  bc                                          ; $467d: $0b
	xor  d                                           ; $467e: $aa
	add  b                                           ; $467f: $80
	adc  c                                           ; $4680: $89
	and  e                                           ; $4681: $a3
	xor  d                                           ; $4682: $aa
	add  b                                           ; $4683: $80
	sub  a                                           ; $4684: $97
	cp   l                                           ; $4685: $bd
	xor  d                                           ; $4686: $aa
	add  b                                           ; $4687: $80
	sbc  l                                           ; $4688: $9d
	or   a                                           ; $4689: $b7
	add  b                                           ; $468a: $80
	ld   [bc], a                                     ; $468b: $02
	add  c                                           ; $468c: $81
	xor  d                                           ; $468d: $aa
	inc  c                                           ; $468e: $0c
	ld   [bc], a                                     ; $468f: $02
	ld   d, d                                        ; $4690: $52
	ld   a, [$02aa]                                  ; $4691: $fa $aa $02
	ld   c, d                                        ; $4694: $4a
	ldh  [c], a                                      ; $4695: $e2
	xor  d                                           ; $4696: $aa
	ld   [bc], a                                     ; $4697: $02
	ldh  a, [c]                                      ; $4698: $f2
	ld   e, d                                        ; $4699: $5a
	add  sp, -$15                                    ; $469a: $e8 $eb
	add  b                                           ; $469c: $80
	ld   [hl], a                                     ; $469d: $77
	add  b                                           ; $469e: $80
	dec  hl                                          ; $469f: $2b
	add  b                                           ; $46a0: $80
	rla                                              ; $46a1: $17
	add  hl, bc                                      ; $46a2: $09
	adc  c                                           ; $46a3: $89
	adc  e                                           ; $46a4: $8b
	push bc                                          ; $46a5: $c5
	rst  ToBoot                                         ; $46a6: $c7
	ld   h, c                                        ; $46a7: $61
	ld   h, e                                        ; $46a8: $63
	jr   nz, jr_09a_46ce                             ; $46a9: $20 $23

	ld   b, b                                        ; $46ab: $40
	add  d                                           ; $46ac: $82
	add  b                                           ; $46ad: $80
	add  c                                           ; $46ae: $81
	add  b                                           ; $46af: $80
	add  b                                           ; $46b0: $80
	add  b                                           ; $46b1: $80
	add  c                                           ; $46b2: $81
	add  [hl]                                        ; $46b3: $86
	add  b                                           ; $46b4: $80
	nop                                              ; $46b5: $00
	and  b                                           ; $46b6: $a0
	adc  e                                           ; $46b7: $8b
	nop                                              ; $46b8: $00
	ld   b, $a8                                      ; $46b9: $06 $a8
	db   $f4                                         ; $46bb: $f4
	ld   b, a                                        ; $46bc: $47
	and  $e4                                         ; $46bd: $e6 $e4
	and  $e4                                         ; $46bf: $e6 $e4
	add  a                                           ; $46c1: $87
	and  $03                                         ; $46c2: $e6 $03
	ld   h, [hl]                                     ; $46c4: $66
	and  $bd                                         ; $46c5: $e6 $bd
	and  e                                           ; $46c7: $a3
	add  b                                           ; $46c8: $80
	ld   d, e                                        ; $46c9: $53
	add  b                                           ; $46ca: $80
	add  e                                           ; $46cb: $83
	add  d                                           ; $46cc: $82
	inc  bc                                          ; $46cd: $03

jr_09a_46ce:
	add  d                                           ; $46ce: $82
	nop                                              ; $46cf: $00
	ld   [bc], a                                     ; $46d0: $02
	ld   [$bff4], sp                                 ; $46d1: $08 $f4 $bf
	adc  l                                           ; $46d4: $8d
	add  b                                           ; $46d5: $80
	inc  bc                                          ; $46d6: $03
	db   $ed                                         ; $46d7: $ed
	jp   c, $d9c9                                    ; $46d8: $da $c9 $d9

	add  b                                           ; $46db: $80
	jp   c, $9901                                    ; $46dc: $da $01 $99

	reti                                             ; $46df: $d9


	add  b                                           ; $46e0: $80
	jp   c, Jump_09a_5901                            ; $46e1: $da $01 $59

	reti                                             ; $46e4: $d9


	add  b                                           ; $46e5: $80
	jp   c, $d980                                    ; $46e6: $da $80 $d9

	dec  bc                                          ; $46e9: $0b
	sbc  h                                           ; $46ea: $9c
	ld   h, h                                        ; $46eb: $64
	ld   a, [hl+]                                    ; $46ec: $2a
	ld   l, d                                        ; $46ed: $6a
	inc  h                                           ; $46ee: $24
	ld   h, h                                        ; $46ef: $64
	ld   a, [hl+]                                    ; $46f0: $2a
	ld   l, d                                        ; $46f1: $6a
	ld   h, $66                                      ; $46f2: $26 $66
	ld   l, $6e                                      ; $46f4: $2e $6e
	add  b                                           ; $46f6: $80
	ld   h, [hl]                                     ; $46f7: $66
	add  b                                           ; $46f8: $80
	ld   l, [hl]                                     ; $46f9: $6e
	ld   bc, $009f                                   ; $46fa: $01 $9f $00
	add  b                                           ; $46fd: $80
	ld   bc, $009a                                   ; $46fe: $01 $9a $00
	nop                                              ; $4701: $00
	sub  h                                           ; $4702: $94
	adc  l                                           ; $4703: $8d
	ld   a, e                                        ; $4704: $7b
	nop                                              ; $4705: $00
	push bc                                          ; $4706: $c5
	adc  l                                           ; $4707: $8d
	rst  JumpTable                                         ; $4708: $df
	nop                                              ; $4709: $00
	sbc  [hl]                                        ; $470a: $9e
	adc  l                                           ; $470b: $8d
	sbc  b                                           ; $470c: $98
	nop                                              ; $470d: $00
	ld   b, $8d                                      ; $470e: $06 $8d
	xor  $02                                         ; $4710: $ee $02
	sbc  e                                           ; $4712: $9b
	add  b                                           ; $4713: $80
	nop                                              ; $4714: $00
	add  b                                           ; $4715: $80
	rst  $38                                         ; $4716: $ff
	adc  c                                           ; $4717: $89
	nop                                              ; $4718: $00
	add  b                                           ; $4719: $80
	ld   [bc], a                                     ; $471a: $02
	nop                                              ; $471b: $00
	nop                                              ; $471c: $00
	add  b                                           ; $471d: $80
	cp   $89                                         ; $471e: $fe $89
	nop                                              ; $4720: $00
	nop                                              ; $4721: $00
	db   $fc                                         ; $4722: $fc
	add  e                                           ; $4723: $83
	inc  bc                                          ; $4724: $03
	add  b                                           ; $4725: $80
	ldh  a, [rSB]                                    ; $4726: $f0 $01
	inc  bc                                          ; $4728: $03
	di                                               ; $4729: $f3
	add  b                                           ; $472a: $80
	db   $fc                                         ; $472b: $fc
	nop                                              ; $472c: $00
	ldh  a, [$81]                                    ; $472d: $f0 $81
	rst  $38                                         ; $472f: $ff
	ld   bc, $8180                                   ; $4730: $01 $80 $81
	add  b                                           ; $4733: $80
	add  b                                           ; $4734: $80
	ld   [$80c1], sp                                 ; $4735: $08 $c1 $80
	or   b                                           ; $4738: $b0
	ld   b, b                                        ; $4739: $40
	ld   c, h                                        ; $473a: $4c
	ldh  [$e2], a                                    ; $473b: $e0 $e2
	ld   a, b                                        ; $473d: $78
	ld   a, c                                        ; $473e: $79
	add  b                                           ; $473f: $80
	cp   $02                                         ; $4740: $fe $02
	rst  $38                                         ; $4742: $ff
	ld   a, a                                        ; $4743: $7f
	add  b                                           ; $4744: $80
	add  b                                           ; $4745: $80
	ld   h, b                                        ; $4746: $60
	inc  c                                           ; $4747: $0c
	sbc  b                                           ; $4748: $98
	jr   jr_09a_47b2                                 ; $4749: $18 $67

	rlca                                             ; $474b: $07
	ld   [de], a                                     ; $474c: $12
	inc  bc                                          ; $474d: $03
	dec  c                                           ; $474e: $0d
	nop                                              ; $474f: $00
	add  e                                           ; $4750: $83
	nop                                              ; $4751: $00
	ld   h, b                                        ; $4752: $60
	nop                                              ; $4753: $00
	and  b                                           ; $4754: $a0
	add  l                                           ; $4755: $85
	add  b                                           ; $4756: $80
	nop                                              ; $4757: $00
	nop                                              ; $4758: $00
	add  c                                           ; $4759: $81
	add  b                                           ; $475a: $80
	dec  b                                           ; $475b: $05
	nop                                              ; $475c: $00
	add  b                                           ; $475d: $80
	ret  nz                                          ; $475e: $c0

	nop                                              ; $475f: $00
	ld   hl, sp-$68                                  ; $4760: $f8 $98
	add  b                                           ; $4762: $80
	db   $10                                         ; $4763: $10
	add  b                                           ; $4764: $80
	adc  b                                           ; $4765: $88
	add  b                                           ; $4766: $80
	db   $10                                         ; $4767: $10
	add  b                                           ; $4768: $80
	add  b                                           ; $4769: $80
	add  b                                           ; $476a: $80
	db   $10                                         ; $476b: $10
	add  b                                           ; $476c: $80
	add  b                                           ; $476d: $80
	add  b                                           ; $476e: $80
	nop                                              ; $476f: $00
	nop                                              ; $4770: $00
	ld   h, b                                        ; $4771: $60
	adc  l                                           ; $4772: $8d
	nop                                              ; $4773: $00
	ld   [$e67b], sp                                 ; $4774: $08 $7b $e6
	ld   h, [hl]                                     ; $4777: $66
	and  $66                                         ; $4778: $e6 $66
	and  $66                                         ; $477a: $e6 $66
	and  $e2                                         ; $477c: $e6 $e2
	add  l                                           ; $477e: $85
	and  $04                                         ; $477f: $e6 $04
	or   $d8                                         ; $4781: $f6 $d8
	ret  nz                                          ; $4783: $c0

	ret  c                                           ; $4784: $d8

	ret  nc                                          ; $4785: $d0

	adc  c                                           ; $4786: $89
	ret  c                                           ; $4787: $d8

	add  b                                           ; $4788: $80
	jp   c, $d980                                    ; $4789: $da $80 $d9

	add  b                                           ; $478c: $80
	jp   c, $d980                                    ; $478d: $da $80 $d9

	add  b                                           ; $4790: $80
	jp   c, $d980                                    ; $4791: $da $80 $d9

	add  b                                           ; $4794: $80
	jp   c, $d980                                    ; $4795: $da $80 $d9

	nop                                              ; $4798: $00
	sub  $85                                         ; $4799: $d6 $85
	ld   l, [hl]                                     ; $479b: $6e
	nop                                              ; $479c: $00
	ld   h, [hl]                                     ; $479d: $66
	add  l                                           ; $479e: $85
	ld   l, [hl]                                     ; $479f: $6e
	nop                                              ; $47a0: $00
	inc  bc                                          ; $47a1: $03
	add  e                                           ; $47a2: $83
	ld   a, e                                        ; $47a3: $7b
	ld   h, $78                                      ; $47a4: $26 $78
	ld   a, e                                        ; $47a6: $7b
	ld   a, b                                        ; $47a7: $78
	ld   a, e                                        ; $47a8: $7b
	ld   a, [hl]                                     ; $47a9: $7e
	ld   a, a                                        ; $47aa: $7f
	ld   [hl], b                                     ; $47ab: $70
	ld   a, a                                        ; $47ac: $7f
	ld   [hl], c                                     ; $47ad: $71
	ld   a, a                                        ; $47ae: $7f
	call nz, $dedf                                   ; $47af: $c4 $df $de

jr_09a_47b2:
	rst  JumpTable                                         ; $47b2: $df
	rra                                              ; $47b3: $1f
	rst  $38                                         ; $47b4: $ff
	ld   a, [de]                                     ; $47b5: $1a
	rst  $38                                         ; $47b6: $ff
	ret  z                                           ; $47b7: $c8

	rst  $38                                         ; $47b8: $ff
	ld   b, $fe                                      ; $47b9: $06 $fe
	ld   sp, $8ef0                                   ; $47bb: $31 $f0 $8e
	add  b                                           ; $47be: $80

jr_09a_47bf:
	dec  de                                          ; $47bf: $1b
	sbc  b                                           ; $47c0: $98
	ld   e, b                                        ; $47c1: $58
	ret  c                                           ; $47c2: $d8

	jr   @-$06                                       ; $47c3: $18 $f8

	jr   jr_09a_47bf                                 ; $47c5: $18 $f8

	ret  nz                                          ; $47c7: $c0

	ret  z                                           ; $47c8: $c8

	jr   c, jr_09a_47cb                              ; $47c9: $38 $00

jr_09a_47cb:
	ret  nz                                          ; $47cb: $c0

	add  c                                           ; $47cc: $81
	nop                                              ; $47cd: $00
	nop                                              ; $47ce: $00
	or   $8d                                         ; $47cf: $f6 $8d
	xor  $00                                         ; $47d1: $ee $00
	db   $e4                                         ; $47d3: $e4
	adc  [hl]                                        ; $47d4: $8e
	and  $8d                                         ; $47d5: $e6 $8d
	ret  c                                           ; $47d7: $d8

	nop                                              ; $47d8: $00
	daa                                              ; $47d9: $27
	db   $dd                                         ; $47da: $dd
	nop                                              ; $47db: $00
	nop                                              ; $47dc: $00
	ret  nz                                          ; $47dd: $c0

	adc  e                                           ; $47de: $8b
	ld   b, b                                        ; $47df: $40
	ld   [bc], a                                     ; $47e0: $02
	ld   a, d                                        ; $47e1: $7a
	dec  b                                           ; $47e2: $05
	rst  $38                                         ; $47e3: $ff
	adc  e                                           ; $47e4: $8b
	nop                                              ; $47e5: $00
	ld   [bc], a                                     ; $47e6: $02
	add  d                                           ; $47e7: $82
	ld   a, a                                        ; $47e8: $7f
	db   $fd                                         ; $47e9: $fd
	adc  e                                           ; $47ea: $8b
	nop                                              ; $47eb: $00
	ld   [bc], a                                     ; $47ec: $02
	xor  e                                           ; $47ed: $ab
	rst  $38                                         ; $47ee: $ff
	xor  l                                           ; $47ef: $ad
	add  c                                           ; $47f0: $81
	ld   l, [hl]                                     ; $47f1: $6e
	nop                                              ; $47f2: $00
	ld   l, d                                        ; $47f3: $6a
	adc  c                                           ; $47f4: $89
	ld   l, [hl]                                     ; $47f5: $6e
	ld   b, $10                                      ; $47f6: $06 $10
	ld   a, h                                        ; $47f8: $7c
	ld   h, e                                        ; $47f9: $63
	ld   h, b                                        ; $47fa: $60
	inc  e                                           ; $47fb: $1c
	nop                                              ; $47fc: $00
	ldh  [$87], a                                    ; $47fd: $e0 $87
	nop                                              ; $47ff: $00
	ld   [bc], a                                     ; $4800: $02
	add  b                                           ; $4801: $80
	nop                                              ; $4802: $00
	add  b                                           ; $4803: $80
	adc  e                                           ; $4804: $8b
	nop                                              ; $4805: $00
	nop                                              ; $4806: $00
	inc  bc                                          ; $4807: $03
	add  c                                           ; $4808: $81
	nop                                              ; $4809: $00
	add  d                                           ; $480a: $82
	inc  b                                           ; $480b: $04
	add  h                                           ; $480c: $84
	inc  c                                           ; $480d: $0c
	ld   [bc], a                                     ; $480e: $02
	inc  e                                           ; $480f: $1c
	jr   jr_09a_4819                                 ; $4810: $18 $07

	add  c                                           ; $4812: $81
	nop                                              ; $4813: $00
	add  b                                           ; $4814: $80
	add  b                                           ; $4815: $80
	add  d                                           ; $4816: $82
	ret  nz                                          ; $4817: $c0

	add  b                                           ; $4818: $80

jr_09a_4819:
	ldh  [$80], a                                    ; $4819: $e0 $80
	ldh  a, [rSC]                                    ; $481b: $f0 $02
	rst  $38                                         ; $481d: $ff
	nop                                              ; $481e: $00
	rst  $38                                         ; $481f: $ff
	adc  e                                           ; $4820: $8b
	nop                                              ; $4821: $00
	ld   [bc], a                                     ; $4822: $02
	rst  $38                                         ; $4823: $ff
	nop                                              ; $4824: $00
	rst  $38                                         ; $4825: $ff
	adc  e                                           ; $4826: $8b
	nop                                              ; $4827: $00
	ld   [bc], a                                     ; $4828: $02
	rst  $38                                         ; $4829: $ff
	nop                                              ; $482a: $00
	rst  $38                                         ; $482b: $ff
	xor  l                                           ; $482c: $ad
	nop                                              ; $482d: $00
	add  b                                           ; $482e: $80
	ld   [bc], a                                     ; $482f: $02
	nop                                              ; $4830: $00
	ld   bc, $0380                                   ; $4831: $01 $80 $03
	nop                                              ; $4834: $00
	ld   [bc], a                                     ; $4835: $02
	add  b                                           ; $4836: $80
	ld   bc, $0005                                   ; $4837: $01 $05 $00
	ld   bc, $0003                                   ; $483a: $01 $03 $00
	ld   bc, $8000                                   ; $483d: $01 $00 $80
	rst  $38                                         ; $4840: $ff
	add  b                                           ; $4841: $80
	inc  b                                           ; $4842: $04
	inc  b                                           ; $4843: $04
	add  [hl]                                        ; $4844: $86
	ld   a, d                                        ; $4845: $7a
	add  d                                           ; $4846: $82
	db   $fc                                         ; $4847: $fc
	ld   a, l                                        ; $4848: $7d
	add  c                                           ; $4849: $81
	cp   $03                                         ; $484a: $fe $03
	add  a                                           ; $484c: $87
	ld   a, b                                        ; $484d: $78
	cp   $00                                         ; $484e: $fe $00
	add  b                                           ; $4850: $80
	rst  $38                                         ; $4851: $ff
	inc  b                                           ; $4852: $04
	and  c                                           ; $4853: $a1
	cp   $8d                                         ; $4854: $fe $8d
	db   $fd                                         ; $4856: $fd
	ret  nc                                          ; $4857: $d0

	add  c                                           ; $4858: $81
	nop                                              ; $4859: $00
	add  b                                           ; $485a: $80
	jr   nz, jr_09a_485e                             ; $485b: $20 $01

	rst  JumpTable                                         ; $485d: $df

jr_09a_485e:
	rst  $38                                         ; $485e: $ff
	add  d                                           ; $485f: $82
	ldh  [rSB], a                                    ; $4860: $e0 $01
	ld   a, [hl+]                                    ; $4862: $2a
	ld   a, [bc]                                     ; $4863: $0a
	add  b                                           ; $4864: $80
	dec  b                                           ; $4865: $05
	add  d                                           ; $4866: $82
	nop                                              ; $4867: $00
	ld   bc, $407f                                   ; $4868: $01 $7f $40
	add  b                                           ; $486b: $80
	ret  nz                                          ; $486c: $c0

	ld   bc, $3f00                                   ; $486d: $01 $00 $3f
	add  b                                           ; $4870: $80
	nop                                              ; $4871: $00
	add  b                                           ; $4872: $80
	rst  $38                                         ; $4873: $ff
	add  b                                           ; $4874: $80
	ld   a, a                                        ; $4875: $7f
	add  d                                           ; $4876: $82
	nop                                              ; $4877: $00
	nop                                              ; $4878: $00
	rst  $38                                         ; $4879: $ff
	add  d                                           ; $487a: $82
	nop                                              ; $487b: $00
	nop                                              ; $487c: $00
	rst  $38                                         ; $487d: $ff
	add  b                                           ; $487e: $80
	nop                                              ; $487f: $00
	inc  b                                           ; $4880: $04
	xor  d                                           ; $4881: $aa
	rst  $38                                         ; $4882: $ff
	xor  b                                           ; $4883: $a8
	rst  $38                                         ; $4884: $ff
	ld   [bc], a                                     ; $4885: $02
	add  c                                           ; $4886: $81
	nop                                              ; $4887: $00
	nop                                              ; $4888: $00
	rst  $38                                         ; $4889: $ff
	add  d                                           ; $488a: $82
	nop                                              ; $488b: $00
	nop                                              ; $488c: $00
	rst  $38                                         ; $488d: $ff
	add  c                                           ; $488e: $81
	nop                                              ; $488f: $00
	adc  e                                           ; $4890: $8b
	and  $02                                         ; $4891: $e6 $02
	push hl                                          ; $4893: $e5
	db   $e3                                         ; $4894: $e3
	rra                                              ; $4895: $1f
	adc  e                                           ; $4896: $8b
	nop                                              ; $4897: $00
	ld   [bc], a                                     ; $4898: $02
	ld   [bc], a                                     ; $4899: $02
	ld   bc, $8103                                   ; $489a: $01 $03 $81
	nop                                              ; $489d: $00
	inc  d                                           ; $489e: $14
	ld   bc, $0300                                   ; $489f: $01 $00 $03
	ld   bc, $030c                                   ; $48a2: $01 $0c $03
	dec  sp                                          ; $48a5: $3b
	rrca                                             ; $48a6: $0f
	rst  $20                                         ; $48a7: $e7
	ccf                                              ; $48a8: $3f
	rra                                              ; $48a9: $1f
	rst  $38                                         ; $48aa: $ff
	inc  e                                           ; $48ab: $1c
	inc  bc                                          ; $48ac: $03
	ld   a, b                                        ; $48ad: $78
	rra                                              ; $48ae: $1f
	rst  $10                                         ; $48af: $d7
	ld   a, a                                        ; $48b0: $7f
	xor  a                                           ; $48b1: $af
	rst  $38                                         ; $48b2: $ff
	ld   a, a                                        ; $48b3: $7f
	add  l                                           ; $48b4: $85
	rst  $38                                         ; $48b5: $ff
	ld   [bc], a                                     ; $48b6: $02
	dec  d                                           ; $48b7: $15
	rst  $38                                         ; $48b8: $ff
	dec  d                                           ; $48b9: $15
	adc  e                                           ; $48ba: $8b
	rst  $38                                         ; $48bb: $ff
	ld   [de], a                                     ; $48bc: $12
	cp   $ff                                         ; $48bd: $fe $ff
	db   $fd                                         ; $48bf: $fd
	rst  $38                                         ; $48c0: $ff
	ld   a, [$f5ff]                                  ; $48c1: $fa $ff $f5
	rst  $38                                         ; $48c4: $ff
	db   $eb                                         ; $48c5: $eb
	rst  $38                                         ; $48c6: $ff
	rst  ToBoot                                         ; $48c7: $c7
	rst  $28                                         ; $48c8: $ef
	adc  a                                           ; $48c9: $8f
	ret  nz                                          ; $48ca: $c0

	ccf                                              ; $48cb: $3f
	cp   a                                           ; $48cc: $bf
	add  b                                           ; $48cd: $80
	rst  $38                                         ; $48ce: $ff
	ld   a, a                                        ; $48cf: $7f
	adc  b                                           ; $48d0: $88
	rst  $38                                         ; $48d1: $ff
	nop                                              ; $48d2: $00
	nop                                              ; $48d3: $00
	add  b                                           ; $48d4: $80
	rst  $38                                         ; $48d5: $ff
	nop                                              ; $48d6: $00
	nop                                              ; $48d7: $00
	add  a                                           ; $48d8: $87
	rst  $38                                         ; $48d9: $ff
	add  b                                           ; $48da: $80
	ld   hl, sp+$01                                  ; $48db: $f8 $01
	ldh  a, [rP1]                                    ; $48dd: $f0 $00
	add  b                                           ; $48df: $80
	ldh  a, [rP1]                                    ; $48e0: $f0 $00
	rrca                                             ; $48e2: $0f
	adc  e                                           ; $48e3: $8b
	ret  c                                           ; $48e4: $d8

	ld   [bc], a                                     ; $48e5: $02
	ld   e, b                                        ; $48e6: $58
	add  b                                           ; $48e7: $80
	di                                               ; $48e8: $f3
	add  c                                           ; $48e9: $81
	dec  bc                                          ; $48ea: $0b
	add  b                                           ; $48eb: $80
	add  hl, bc                                      ; $48ec: $09
	add  [hl]                                        ; $48ed: $86
	ld   [$f803], sp                                 ; $48ee: $08 $03 $f8
	nop                                              ; $48f1: $00
	ld   bc, $80d9                                   ; $48f2: $01 $d9 $80
	jp   c, $d980                                    ; $48f5: $da $80 $d9

	add  b                                           ; $48f8: $80
	jp   c, $d980                                    ; $48f9: $da $80 $d9

	inc  b                                           ; $48fc: $04
	jp   c, $f81a                                    ; $48fd: $da $1a $f8

	nop                                              ; $4900: $00
	ldh  [$80], a                                    ; $4901: $e0 $80
	nop                                              ; $4903: $00
	nop                                              ; $4904: $00
	ldh  a, [$80]                                    ; $4905: $f0 $80
	ld   hl, sp+$01                                  ; $4907: $f8 $01
	ldh  a, [$f8]                                    ; $4909: $f0 $f8
	add  b                                           ; $490b: $80
	db   $fc                                         ; $490c: $fc
	ld   [bc], a                                     ; $490d: $02
	ld   hl, sp-$04                                  ; $490e: $f8 $fc
	inc  bc                                          ; $4910: $03
	add  e                                           ; $4911: $83
	nop                                              ; $4912: $00
	nop                                              ; $4913: $00
	ccf                                              ; $4914: $3f
	add  e                                           ; $4915: $83
	ldh  [$0a], a                                    ; $4916: $e0 $0a
	ccf                                              ; $4918: $3f
	rra                                              ; $4919: $1f
	ret  nz                                          ; $491a: $c0

	rst  $38                                         ; $491b: $ff
	pop  bc                                          ; $491c: $c1
	rrca                                             ; $491d: $0f
	ld   [$0107], sp                                 ; $491e: $08 $07 $01
	nop                                              ; $4921: $00
	rst  $38                                         ; $4922: $ff
	add  e                                           ; $4923: $83
	nop                                              ; $4924: $00
	add  b                                           ; $4925: $80
	rst  $38                                         ; $4926: $ff
	ld   [$ff00], sp                                 ; $4927: $08 $00 $ff
	adc  a                                           ; $492a: $8f
	rst  $38                                         ; $492b: $ff
	inc  sp                                          ; $492c: $33
	rst  $38                                         ; $492d: $ff
	sbc  l                                           ; $492e: $9d
	rst  $38                                         ; $492f: $ff
	ld   hl, $0083                                   ; $4930: $21 $83 $00
	add  b                                           ; $4933: $80
	rst  $38                                         ; $4934: $ff
	nop                                              ; $4935: $00
	nop                                              ; $4936: $00
	add  [hl]                                        ; $4937: $86
	rst  $38                                         ; $4938: $ff
	add  e                                           ; $4939: $83
	nop                                              ; $493a: $00
	add  b                                           ; $493b: $80
	rst  $38                                         ; $493c: $ff
	nop                                              ; $493d: $00
	nop                                              ; $493e: $00
	add  l                                           ; $493f: $85
	rst  $38                                         ; $4940: $ff
	add  h                                           ; $4941: $84
	nop                                              ; $4942: $00
	ld   c, $01                                      ; $4943: $0e $01
	nop                                              ; $4945: $00
	ld   b, $00                                      ; $4946: $06 $00
	jr   jr_09a_494d                                 ; $4948: $18 $03

	ld   h, e                                        ; $494a: $63
	rrca                                             ; $494b: $0f
	adc  a                                           ; $494c: $8f

jr_09a_494d:
	rra                                              ; $494d: $1f
	rst  $20                                         ; $494e: $e7
	dec  bc                                          ; $494f: $0b
	inc  sp                                          ; $4950: $33
	rlca                                             ; $4951: $07
	rst  ToBoot                                         ; $4952: $c7
	add  b                                           ; $4953: $80
	rra                                              ; $4954: $1f
	add  b                                           ; $4955: $80
	ld   a, a                                        ; $4956: $7f
	add  l                                           ; $4957: $85
	rst  $38                                         ; $4958: $ff
	nop                                              ; $4959: $00
	db   $fd                                         ; $495a: $fd
	add  a                                           ; $495b: $87
	ld   l, [hl]                                     ; $495c: $6e
	ld   b, $6c                                      ; $495d: $06 $6c
	ld   b, b                                        ; $495f: $40
	ld   a, [hl]                                     ; $4960: $7e
	nop                                              ; $4961: $00
	ld   a, $00                                      ; $4962: $3e $00
	ld   a, [bc]                                     ; $4964: $0a
	add  a                                           ; $4965: $87
	xor  $1a                                         ; $4966: $ee $1a
	db   $e4                                         ; $4968: $e4
	ldh  [rIE], a                                    ; $4969: $e0 $ff
	nop                                              ; $496b: $00
	rra                                              ; $496c: $1f
	nop                                              ; $496d: $00
	ld   bc, $fcff                                   ; $496e: $01 $ff $fc
	cp   $f9                                         ; $4971: $fe $f9
	db   $fd                                         ; $4973: $fd
	ldh  a, [c]                                      ; $4974: $f2
	ei                                               ; $4975: $fb
	pop  hl                                          ; $4976: $e1
	di                                               ; $4977: $f3
	jp   $87e7                                       ; $4978: $c3 $e7 $87


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $497b: $cf
	rrca                                             ; $497c: $0f
	sbc  a                                           ; $497d: $9f
	ld   e, a                                        ; $497e: $5f
	ld   a, a                                        ; $497f: $7f
	cp   a                                           ; $4980: $bf
	rst  $38                                         ; $4981: $ff
	ld   a, a                                        ; $4982: $7f
	sub  c                                           ; $4983: $91
	rst  $38                                         ; $4984: $ff
	ld   [bc], a                                     ; $4985: $02
	cp   $ff                                         ; $4986: $fe $ff
	db   $fc                                         ; $4988: $fc
	add  e                                           ; $4989: $83
	cp   $06                                         ; $498a: $fe $06
	db   $e3                                         ; $498c: $e3
	ret  nz                                          ; $498d: $c0

	add  b                                           ; $498e: $80
	ldh  [rP1], a                                    ; $498f: $e0 $00
	add  b                                           ; $4991: $80
	nop                                              ; $4992: $00
	add  c                                           ; $4993: $81
	ld   b, b                                        ; $4994: $40
	ld   b, $20                                      ; $4995: $06 $20

jr_09a_4997:
	ld   h, b                                        ; $4997: $60
	ld   e, h                                        ; $4998: $5c
	ld   a, h                                        ; $4999: $7c
	ld   l, e                                        ; $499a: $6b
	ld   a, a                                        ; $499b: $7f
	db   $f4                                         ; $499c: $f4
	adc  e                                           ; $499d: $8b
	nop                                              ; $499e: $00
	add  b                                           ; $499f: $80
	rst  $38                                         ; $49a0: $ff
	adc  h                                           ; $49a1: $8c
	nop                                              ; $49a2: $00
	add  b                                           ; $49a3: $80
	rst  $38                                         ; $49a4: $ff
	adc  h                                           ; $49a5: $8c
	nop                                              ; $49a6: $00
	add  b                                           ; $49a7: $80
	rst  $38                                         ; $49a8: $ff
	adc  h                                           ; $49a9: $8c
	nop                                              ; $49aa: $00
	add  b                                           ; $49ab: $80
	rst  $38                                         ; $49ac: $ff
	ld   bc, $e3fc                                   ; $49ad: $01 $fc $e3
	add  b                                           ; $49b0: $80
	pop  hl                                          ; $49b1: $e1
	add  l                                           ; $49b2: $85
	ldh  [$0e], a                                    ; $49b3: $e0 $0e
	jr   nz, jr_09a_4997                             ; $49b5: $20 $e0

	nop                                              ; $49b7: $00
	ret  nz                                          ; $49b8: $c0

	nop                                              ; $49b9: $00
	ld   l, c                                        ; $49ba: $69
	ld   sp, hl                                      ; $49bb: $f9
	inc  h                                           ; $49bc: $24
	ld   a, h                                        ; $49bd: $7c
	ld   [bc], a                                     ; $49be: $02
	ld   l, $11                                      ; $49bf: $2e $11
	rla                                              ; $49c1: $17
	nop                                              ; $49c2: $00
	inc  de                                          ; $49c3: $13
	add  b                                           ; $49c4: $80
	add  hl, de                                      ; $49c5: $19
	inc  d                                           ; $49c6: $14
	dec  [hl]                                        ; $49c7: $35
	dec  a                                           ; $49c8: $3d
	push af                                          ; $49c9: $f5
	db   $fd                                         ; $49ca: $fd
	pop  af                                          ; $49cb: $f1
	rst  $38                                         ; $49cc: $ff
	ld   a, a                                        ; $49cd: $7f
	rst  $38                                         ; $49ce: $ff
	ccf                                              ; $49cf: $3f
	ld   a, a                                        ; $49d0: $7f
	rra                                              ; $49d1: $1f
	ccf                                              ; $49d2: $3f
	adc  a                                           ; $49d3: $8f
	sbc  a                                           ; $49d4: $9f
	ld   b, a                                        ; $49d5: $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $49d6: $cf
	and  e                                           ; $49d7: $a3
	rst  $20                                         ; $49d8: $e7
	pop  de                                          ; $49d9: $d1
	di                                               ; $49da: $f3
	pop  hl                                          ; $49db: $e1
	add  a                                           ; $49dc: $87
	rst  $38                                         ; $49dd: $ff
	add  h                                           ; $49de: $84
	nop                                              ; $49df: $00

	
RleXorTileData_TitleScreenBank0_9000::
	db $8f, $00, $0b, $7a, $df, $2b, $ff, $30, $ff, $10, $aa, $5b, $6f, $e3, $d3, $80, $4d, $19, $fd, $ff, $78, $73, $bf, $75, $92, $d2, $2e, $ab, $d8, $d1, $78, $7b
	db $35, $bf, $d9, $5f, $b5, $4a, $a5, $b5, $d1, $bb, $71, $f4, $80, $af, $7f, $92, $d7, $e4, $ef, $a5, $ff, $fd, $f7, $5a, $bf, $a5, $d0, $ff, $56, $0b, $ff, $46
	db $ff, $d0, $ff, $54, $fe, $3e, $af, $ac, $ff, $88, $7f, $c6, $33, $74, $8d, $74, $41, $b7, $b8, $c1, $ff, $7c, $d7, $88, $ea, $4f, $f1, $0f, $f8, $05, $fe, $02
	db $df, $69, $07, $f9, $01, $46, $5f, $a5, $ab, $4e, $15, $20, $db, $13, $2d, $2c, $9c, $1f, $e1, $a4, $f0, $ff, $71, $4a, $fb, $10, $fd, $e4, $b8, $1c, $1d, $84
	db $b7, $65, $73, $cc, $f2, $ac, $77, $50, $ef, $ba, $ff, $b5, $df, $f4, $2e, $c9, $df, $3a, $ff, $1e, $fb, $7c, $af, $3b, $d5, $4f, $ef, $10, $ee, $ac, $ff, $6a
	db $bf, $8a, $ff, $95, $ff, $7c, $7f, $51, $9f, $84, $ff, $f3, $5e, $77, $af, $1f, $d9, $dd, $aa, $fa, $c1, $ed, $db, $66, $83, $f7, $44, $7f, $a6, $af, $55, $57
	db $60, $ef, $c0, $7e, $14, $20, $78, $fe, $b3, $fd, $e2, $ae, $c4, $5f, $b9, $a6, $80, $53, $7f, $03, $ef, $ae, $40, $29, $f8, $d7, $7e, $a5, $df, $2a, $7f, $e3
	db $be, $73, $7f, $81, $df, $30, $cf, $8e, $78, $89, $1e, $7d, $81, $3f, $50, $f6, $ab, $5f, $55, $5b, $fb, $c5, $6f, $4f, $71, $e6, $02, $ed, $01, $d2, $01, $dc
	db $00, $30, $ce, $db, $66, $98, $f9, $09, $ef, $4b, $57, $a1, $7f, $80, $7e, $df, $eb, $5b, $7d, $8d, $fb, $55, $25, $8b, $ff, $42, $ff, $54, $fd, $fe, $b7, $bd
	db $eb, $45, $f7, $5d, $fe, $e7, $ad, $52, $d7, $3e, $ef, $3e, $d7, $4c, $e7, $6a, $ff, $fa, $5f, $75, $57, $ad, $af, $99, $7e, $81, $fe, $81, $d6, $ba, $ff, $4d
	db $ff, $51, $f6, $40, $6a, $8d, $77, $17, $ec, $51, $7c, $4c, $3e, $de, $4f, $13, $65, $6f, $fe, $45, $44, $bf, $b9, $e7, $18, $07, $f5, $98, $e7, $fe, $8e, $7d
	db $8d, $f8, $d5, $fd, $a2, $be, $48, $c1, $15, $d5, $b5, $eb, $f7, $00, $af, $50, $83, $bf, $5b, $ff, $98, $43, $f5, $7c, $15, $c1, $2e, $71, $f3, $fc, $8d, $3e
	db $c5, $83, $3f, $f8, $87, $e0, $ed, $1f, $8e, $9b, $dd, $df, $f2, $f7, $b2, $bf, $ab, $fd, $0b, $ff, $12, $ff, $b4, $ff, $54, $5a, $80, $b5, $7f, $8e, $af, $0c
	db $7f, $0c, $7f, $52, $f7, $a2, $ff, $ae, $f9, $a6, $3f, $52, $fe, $9d, $d5, $a6, $da, $78, $cd, $45, $ff, $fe, $81, $55, $7f, $35, $5f, $c9, $9f, $7c, $55, $ab
	db $eb, $f5, $77, $dd, $c0, $e8, $0f, $15, $ed, $77, $f8, $48, $ff, $87, $f3, $5a, $e0, $20, $8d, $23, $fd, $39, $bb, $4a, $73, $4b, $80, $7f, $30, $3b, $0f, $22
	db $5b, $2e, $e7, $19, $c3, $ff, $f1, $a7, $b8, $20, $60, $be, $03, $6b, $b7, $2d, $f7, $be, $ff, $ee, $fe, $4d, $fd, $a7, $f3, $4a, $ff, $d4, $7f, $0f, $fd, $92
	db $fa, $bc, $7d, $a4, $af, $5c, $57, $cc, $6f, $06, $ff, $09, $ff, $97, $27, $fe, $1f, $f9, $fe, $aa, $ac, $4a, $79, $d9, $d5, $99, $fe, $45, $ef, $6c, $5e, $d6
	db $a9, $ee, $ba, $ad, $26, $2e, $86, $f9, $fa, $dd, $4d, $3f, $e1, $ff, $eb, $7a, $ee, $b5, $31, $7b, $aa, $fe, $fd, $bd, $6e, $ff, $9b, $da, $05, $fd, $81, $ff
	db $0a, $bf, $83, $ff, $a0, $ff, $50, $ef, $45, $c5, $55, $bf, $71, $7f, $40, $7f, $b7, $e0, $bb, $b7, $e0, $e2, $a5, $b7, $b0, $ff, $04, $5e, $bb, $b0, $72, $0c
	db $8c, $7f, $34, $bf, $1f, $77, $83, $e3, $82, $b7, $b1, $06, $7a, $03, $06, $f1, $7b, $f0, $f3, $7e, $80, $eb, $3b, $df, $50, $ff, $75, $1f, $76, $5f, $72, $2d
	db $a4, $37, $7d, $12, $a5, $0b, $13, $c1, $a9, $c0, $20, $83, $00, $08, $60, $00, $80, $00, $40, $00, $80, $00, $20, $83, $00, $0a, $ee, $00, $44, $00, $44, $00
	db $cc, $00, $cc, $00, $ee, $83, $00, $0c, $e3, $00, $63, $00, $63, $00, $41, $00, $49, $00, $e3, $00, $08, $81, $00, $02, $bb, $00, $11, $81, $00, $04, $80, $00
	db $91, $00, $bb, $83, $00, $02, $b8, $00, $10, $83, $00, $06, $10, $00, $b8, $00, $c0, $00, $80, $83, $00, $02, $80, $00, $c0, $a5, $00, $1e, $0f, $00, $17, $00
	db $0f, $00, $03, $00, $03, $00, $0f, $00, $17, $00, $0f, $00, $80, $00, $47, $00, $8b, $00, $0b, $00, $06, $00, $8e, $00, $4f, $00, $80, $81, $00, $0a, $be, $00
	db $8e, $00, $0e, $00, $8e, $00, $8e, $00, $3e, $83, $00, $0a, $79, $00, $ba, $00, $18, $00, $10, $00, $b0, $00, $7b, $83, $00, $06, $c3, $00, $e0, $00, $c0, $00
	db $c0, $81, $00, $00, $23, $83, $00, $0a, $ec, $00, $e2, $00, $e1, $00, $e2, $00, $e1, $00, $ec, $83, $00, $02, $bf, $00, $33, $85, $00, $00, $8c, $83, $00, $0a
	db $7d, $00, $1c, $00, $18, $00, $18, $00, $1c, $00, $7d, $83, $00, $06, $e7, $00, $71, $00, $71, $00, $71, $81, $00, $00, $96, $83, $00, $06, $9e, $00, $c7, $00
	db $c7, $00, $87, $81, $00, $00, $19, $83, $00, $0a, $67, $00, $0b, $00, $0b, $00, $06, $00, $0e, $00, $6f, $83, $00, $0a, $be, $00, $8e, $00, $0e, $00, $8e, $00
	db $8e, $00, $3e, $83, $00, $0c, $78, $00, $b8, $00, $b0, $00, $68, $00, $ea, $00, $f0, $00, $02, $81, $00, $02, $c7, $00, $06, $83, $00, $02, $38, $00, $f9, $83
	db $00, $02, $ef, $00, $63, $83, $00, $02, $03, $00, $8f, $83, $00, $02, $06, $00, $84, $83, $00, $04, $a8, $00, $22, $00, $08, $cb, $00, $02, $f8, $00, $f8, $8d
	db $00, $0e, $1f, $00, $2e, $00, $1f, $00, $06, $00, $06, $00, $1f, $00, $2e, $00, $1f, $81, $00, $06, $9e, $00, $07, $00, $07, $00, $07, $81, $00, $00, $99, $83
	db $00, $0a, $7d, $00, $1c, $00, $1c, $00, $1c, $00, $1c, $00, $7d, $83, $00, $02, $e1, $00, $71, $83, $00, $02, $70, $00, $e0, $83, $00, $0a, $bb, $00, $11, $00
	db $11, $00, $33, $00, $33, $00, $bb, $83, $00, $0c, $b8, $00, $18, $00, $18, $00, $10, $00, $12, $00, $b8, $00, $02, $81, $00, $0a, $ee, $00, $c4, $00, $c0, $00
	db $60, $00, $64, $00, $ee, $83, $00, $02, $ee, $00, $44, $83, $00, $02, $44, $00, $ee, $d1, $00, $00, $01, $87, $00, $00, $01, $83, $00, $0c, $8c, $00, $f8, $00
	db $30, $00, $30, $00, $f8, $00, $74, $00, $f8, $81, $00, $0a, $c5, $00, $28, $00, $10, $00, $28, $00, $10, $00, $c5, $83, $00, $0a, $f7, $00, $71, $00, $70, $00
	db $70, $00, $71, $00, $f7, $83, $00, $02, $99, $00, $c2, $83, $00, $02, $c0, $00, $9b, $83, $00, $06, $c3, $00, $e0, $00, $c0, $00, $c0, $81, $00, $00, $23, $83
	db $00, $06, $e7, $00, $eb, $00, $c3, $00, $c3, $81, $00, $00, $0c, $83, $00, $02, $1e, $00, $ae, $83, $00, $02, $2e, $00, $9e, $83, $00, $02, $fc, $00, $cd, $83
	db $00, $02, $01, $00, $30, $83, $00, $0a, $e7, $00, $71, $00, $01, $00, $01, $00, $70, $00, $e6, $83, $00, $06, $99, $00, $d6, $00, $c9, $00, $c0, $81, $00, $00
	db $46, $83, $00, $0a, $9d, $00, $98, $00, $18, $00, $0c, $00, $0c, $00, $1d, $83, $00, $02, $dd, $00, $88, $83, $00, $02, $88, $00, $dd, $ff, $00, $ff, $00, $ff
	db $00, $ff, $00, $00, $00


RleXorTileData_TitleScreenBank0_8000::
	db $6c, $01, $04, $0e, $00, $13, $80, $a2, $81, $80, $08, $c1, $80, $02, $80, $8c, $80, $f0, $8c, $f0, $81, $fc, $0c, $00, $c0, $0c, $cc, $1e, $de, $3e, $fe, $f8
	db $fe, $46, $fc, $bc, $92, $00, $84, $03, $80, $01, $9d, $00, $80, $01, $80, $06, $8e, $00, $01, $70, $78, $80, $f8, $80, $78, $80, $38, $01, $f0, $fc, $80, $7c
	db $80, $3c, $80, $0c, $03, $04, $00, $08, $0c, $82, $1c, $00, $38, $83, $3e, $03, $0c, $0f, $0d, $0c, $8c, $00, $80, $12, $80, $1f, $01, $1e, $1f, $80, $3f, $09
	db $39, $3e, $26, $38, $20, $3e, $18, $1f, $0e, $0f, $80, $07, $80, $02, $80, $00, $82, $01, $84, $00, $02, $60, $70, $e0, $81, $f8, $00, $f0, $81, $fc, $03, $38
	db $3e, $82, $80, $80, $e0, $80, $70, $83, $78, $00, $7c, $80, $fc, $02, $64, $78, $18, $80, $20, $8d, $00, $04, $64, $00, $20, $00, $80, $81, $00, $02, $40, $00
	db $8c, $81, $00, $0c, $08, $00, $f8, $70, $64, $a8, $aa, $ec, $f4, $d4, $d5, $44, $c8, $80, $40, $05, $00, $06, $00, $40, $00, $01, $81, $00, $04, $10, $00, $24
	db $00, $08, $83, $00, $02, $fb, $11, $97, $80, $09, $01, $08, $4b, $81, $04, $02, $25, $00, $02, $81, $00, $06, $08, $00, $01, $00, $10, $00, $04, $97, $00, $04
	db $9c, $00, $10, $00, $c2, $83, $00, $00, $08, $81, $00, $02, $42, $00, $04, $8d, $00, $04, $64, $00, $20, $00, $80, $81, $00, $02, $40, $00, $8c, $83, $00, $00
	db $08, $8d, $00, $0c, $f8, $c0, $c8, $00, $50, $00, $e0, $00, $c1, $00, $80, $00, $01, $91, $00, $10, $f3, $00, $3c, $01, $d1, $02, $22, $00, $43, $00, $04, $00
	db $88, $00, $10, $00, $e0, $89, $00, $80, $20, $00, $00, $80, $10, $95, $00, $82, $08, $01, $04, $00, $84, $10, $01, $08, $00, $81, $20, $81, $24, $00, $46, $81
	db $44, $02, $84, $86, $06, $86, $02, $01, $00, $04, $87, $00, $00, $02, $87, $00, $80, $86, $00, $06, $86, $02, $01, $00, $04, $85, $00, $00, $02, $81, $00, $00
	db $18, $85, $00, $01, $9e, $82, $87, $02, $01, $00, $04, $87, $00, $02, $02, $00, $18, $85, $00, $00, $10, $8d, $00, $22, $f3, $00, $3c, $01, $d1, $02, $22, $00
	db $43, $00, $8c, $00, $10, $00, $20, $00, $c1, $80, $92, $00, $30, $00, $45, $00, $a2, $00, $44, $00, $80, $00, $20, $00, $40, $00, $a1, $81, $00, $02, $40, $00
	db $81, $85, $00, $12, $01, $80, $92, $00, $30, $00, $45, $00, $a2, $00, $44, $00, $80, $00, $21, $00, $40, $00, $a0, $81, $00, $02, $40, $00, $81, $85, $00, $04
	db $c0, $00, $40, $00, $80, $91, $00, $00, $40, $85, $00, $02, $c0, $00, $80, $93, $00, $00, $40, $87, $00, $00, $80, $80, $00, $8b, $40, $00, $c0, $80, $40, $8b
	db $00, $00, $80, $80, $00, $8b, $40, $00, $c0, $80, $40, $87, $00, $02, $c0, $00, $80, $8d, $00, $0f, $7e, $7f, $fd, $ff, $1b, $7e, $76, $3e, $16, $3c, $74, $7c
	db $6c, $78, $5c, $44, $8e, $00, $10, $fc, $ff, $1b, $7f, $57, $3e, $2e, $7e, $6e, $7c, $2c, $7c, $5c, $78, $3c, $24, $20, $8d, $00, $04, $18, $7f, $77, $3f, $1f
	db $81, $7e, $0a, $6e, $7c, $3c, $7c, $5c, $78, $3c, $64, $98, $70, $64, $80, $a8, $01, $ec, $f6, $80, $d4, $01, $44, $c9, $80, $40, $81, $00, $00, $02, $81, $00
	db $06, $09, $00, $20, $00, $40, $00, $10, $83, $00, $02, $fb, $11, $97, $80, $09, $01, $08, $4b, $82, $04, $01, $00, $04, $81, $00, $06, $10, $00, $02, $00, $20
	db $00, $08, $97, $00, $02, $9c, $00, $12, $85, $00, $00, $02, $81, $00, $02, $80, $00, $0c, $8d, $00, $02, $e4, $00, $20, $81, $00, $00, $4c, $81, $00, $02, $80
	db $00, $18, $81, $00, $00, $10, $8d, $00, $08, $f8, $c0, $c8, $00, $91, $00, $e0, $00, $82, $81, $00, $02, $05, $00, $06, $8f, $00, $28, $e3, $00, $6c, $01, $b1
	db $02, $43, $00, $87, $00, $19, $00, $20, $00, $40, $00, $81, $80, $92, $00, $31, $00, $46, $00, $a4, $00, $41, $00, $80, $00, $22, $00, $40, $00, $a0, $00, $01
	db $00, $40, $00, $82, $9d, $00, $00, $40, $87, $00, $00, $80, $80, $00, $85, $40, $00, $00, $86, $80, $87, $00, $00, $80, $87, $00, $82, $08, $01, $04, $00, $84
	db $10, $01, $08, $00, $81, $20, $81, $24, $00, $54, $81, $44, $80, $84, $87, $04, $01, $00, $08, $87, $00, $02, $04, $00, $30, $85, $00, $02, $20, $00, $ff, $80
	db $00, $80, $77, $80, $55, $80, $76, $01, $45, $55, $80, $45, $01, $00, $ef, $8f, $00, $00, $ff, $80, $00, $80, $77, $80, $44, $80, $77, $80, $41, $80, $77, $01
	db $00, $ff, $8f, $00, $00, $f8, $80, $00, $80, $70, $80, $40, $80, $70, $80, $10, $80, $70, $01, $00, $f8, $8f, $00, $00, $ff, $80, $00, $80, $77, $80, $42, $80
	db $72, $80, $12, $80, $72, $01, $00, $ff, $8f, $00, $00, $ff, $80, $00, $80, $77, $80, $55, $80, $76, $82, $55, $01, $00, $ff, $8f, $00, $00, $f8, $80, $00, $80
	db $70, $01, $20, $28, $84, $20, $01, $00, $f0, $8e, $00, $80, $07, $80, $0f, $80, $00, $80, $1f, $82, $3f, $80, $1f, $85, $00, $00, $01, $85, $00, $02, $02, $00
	db $03, $80, $07, $80, $0e, $80, $01, $80, $0f, $80, $1f, $80, $3f, $80, $3e, $80, $1c, $85, $00, $00, $01, $83, $00, $0c, $02, $00, $3d, $41, $00, $3f, $7e, $41
	db $e0, $7e, $9f, $01, $7f, $93, $00, $01, $08, $00, $80, $80, $00, $f7, $80, $c5, $03, $a3, $b2, $95, $7b, $97, $00, $00, $ff, $80, $55, $03, $52, $c0, $94, $f9
	db $93, $00, $0a, $14, $0c, $26, $1a, $c3, $25, $00, $81, $82, $02, $c3, $93, $00, $01, $40, $d0, $80, $40, $06, $e7, $a4, $2c, $aa, $3b, $59, $37, $97, $00, $06
	db $de, $a2, $80, $94, $96, $b2, $4c, $94, $00, $80, $06, $80, $0d, $80, $03, $84, $1f, $80, $0e, $85, $00, $00, $01, $81, $00, $00, $02, $83, $00, $00, $03, $80
	db $0f, $80, $1e, $80, $01, $82, $3f, $80, $1f, $80, $0e, $87, $00, $00, $01, $83, $00, $0c, $02, $00, $3f, $3c, $e0, $fc, $15, $f8, $c8, $f8, $3a, $f8, $f9, $81
	db $f8, $08, $f2, $f8, $e8, $f0, $d0, $f0, $b0, $e8, $68, $80, $e8, $08, $da, $de, $d6, $d4, $b6, $be, $ae, $a0, $00, $80, $01, $80, $07, $14, $1c, $1f, $73, $7f
	db $cc, $ff, $3b, $ff, $e6, $ff, $d8, $ff, $b5, $ff, $6b, $ff, $d7, $ff, $b2, $c3, $41, $80, $01, $80, $00, $15, $02, $1e, $1c, $f0, $fc, $8d, $f8, $60, $f8, $9a
	db $f8, $79, $f8, $f0, $f8, $ea, $f0, $d0, $f0, $b0, $e8, $68, $80, $e8, $80, $d8, $07, $da, $de, $b6, $b4, $b6, $bc, $6e, $62, $81, $00, $80, $03, $12, $0e, $0f
	db $39, $3f, $66, $7f, $99, $ff, $65, $ff, $d1, $ff, $ab, $ff, $57, $ff, $ae, $ff, $61, $80, $83, $80, $01, $80, $02, $15, $07, $1b, $1c, $70, $7c, $cd, $f8, $20
	db $f8, $9a, $f8, $79, $f8, $f0, $f8, $ea, $f0, $d0, $f0, $b0, $e8, $68, $82, $d8, $00, $b2, $80, $b6, $04, $be, $6e, $7e, $5e, $42, $81, $00, $80, $01, $80, $07
	db $11, $1c, $1f, $72, $7f, $c9, $ff, $b6, $ff, $68, $ff, $d5, $ff, $ab, $ff, $56, $ff, $3d, $0f, $81, $03, $80, $01, $80, $02, $92, $00, $88, $80, $9f, $00


	xor  c                                           ; $53a4: $a9
	ld   bc, $ff00                                   ; $53a5: $01 $00 $ff
	adc  l                                           ; $53a8: $8d
	nop                                              ; $53a9: $00
	nop                                              ; $53aa: $00
	rrca                                             ; $53ab: $0f
	add  b                                           ; $53ac: $80
	ld   [$0080], sp                                 ; $53ad: $08 $80 $00
	ld   bc, $0010                                   ; $53b0: $01 $10 $00
	add  b                                           ; $53b3: $80
	db   $10                                         ; $53b4: $10
	add  b                                           ; $53b5: $80
	nop                                              ; $53b6: $00
	ld   bc, $0020                                   ; $53b7: $01 $20 $00
	add  b                                           ; $53ba: $80
	db $20, $80

	nop                                              ; $53bd: $00
	ld   bc, $0040                                   ; $53be: $01 $40 $00
	add  b                                           ; $53c1: $80
	ld   b, b                                        ; $53c2: $40
	add  b                                           ; $53c3: $80
	nop                                              ; $53c4: $00
	ld   bc, $0080                                   ; $53c5: $01 $80 $00
	add  b                                           ; $53c8: $80
	add  b                                           ; $53c9: $80
	add  e                                           ; $53ca: $83
	nop                                              ; $53cb: $00
	nop                                              ; $53cc: $00
	rst  $38                                         ; $53cd: $ff
	adc  d                                           ; $53ce: $8a
	nop                                              ; $53cf: $00
	ld   bc, $0001                                   ; $53d0: $01 $01 $00
	add  b                                           ; $53d3: $80
	ld   bc, $0080                                   ; $53d4: $01 $80 $00
	ld   bc, $0002                                   ; $53d7: $01 $02 $00
	add  b                                           ; $53da: $80
	ld   [bc], a                                     ; $53db: $02
	add  b                                           ; $53dc: $80
	nop                                              ; $53dd: $00
	ld   bc, $0004                                   ; $53de: $01 $04 $00
	add  b                                           ; $53e1: $80
	inc  b                                           ; $53e2: $04
	add  b                                           ; $53e3: $80
	nop                                              ; $53e4: $00
	ld   bc, $f008                                   ; $53e5: $01 $08 $f0
	sbc  c                                           ; $53e8: $99
	nop                                              ; $53e9: $00
	inc  b                                           ; $53ea: $04
	ld   de, $6e1f                                   ; $53eb: $11 $1f $6e
	jr   nz, jr_09a_5430                             ; $53ee: $20 $40

	adc  e                                           ; $53f0: $8b
	nop                                              ; $53f1: $00
	add  b                                           ; $53f2: $80
	add  b                                           ; $53f3: $80
	add  b                                           ; $53f4: $80
	nop                                              ; $53f5: $00
	ld   [bc], a                                     ; $53f6: $02
	ld   bc, $0200                                   ; $53f7: $01 $00 $02
	add  e                                           ; $53fa: $83
	nop                                              ; $53fb: $00
	ld   bc, $0004                                   ; $53fc: $01 $04 $00
	add  d                                           ; $53ff: $82
	ld   [bc], a                                     ; $5400: $02
	nop                                              ; $5401: $00
	add  a                                           ; $5402: $87
	add  c                                           ; $5403: $81
	nop                                              ; $5404: $00
	ld   b, $c0                                      ; $5405: $06 $c0
	nop                                              ; $5407: $00
	add  b                                           ; $5408: $80
	nop                                              ; $5409: $00
	ld   [hl], e                                     ; $540a: $73
	nop                                              ; $540b: $00
	ld   c, h                                        ; $540c: $4c
	add  e                                           ; $540d: $83
	nop                                              ; $540e: $00
	ld   a, [bc]                                     ; $540f: $0a
	cp   a                                           ; $5410: $bf
	ld   b, b                                        ; $5411: $40
	jr   nz, jr_09a_5414                             ; $5412: $20 $00

jr_09a_5414:
	jr   nc, jr_09a_5416                             ; $5414: $30 $00

jr_09a_5416:
	ld   [$a000], sp                                 ; $5416: $08 $00 $a0
	nop                                              ; $5419: $00
	ld   b, b                                        ; $541a: $40
	add  e                                           ; $541b: $83
	nop                                              ; $541c: $00
	ld   [bc], a                                     ; $541d: $02
	db   $fd                                         ; $541e: $fd
	ld   [bc], a                                     ; $541f: $02
	inc  b                                           ; $5420: $04
	add  c                                           ; $5421: $81
	nop                                              ; $5422: $00
	dec  bc                                          ; $5423: $0b
	dec  b                                           ; $5424: $05
	nop                                              ; $5425: $00
	ld   c, $00                                      ; $5426: $0e $00
	jr   jr_09a_542a                                 ; $5428: $18 $00

jr_09a_542a:
	jr   nc, jr_09a_542c                             ; $542a: $30 $00

jr_09a_542c:
	ld   h, b                                        ; $542c: $60
	nop                                              ; $542d: $00
	add  b                                           ; $542e: $80
	nop                                              ; $542f: $00

jr_09a_5430:
	add  c                                           ; $5430: $81
	ld   b, b                                        ; $5431: $40
	rlca                                             ; $5432: $07
	ld   h, c                                        ; $5433: $61
	sbc  $00                                         ; $5434: $de $00
	add  hl, sp                                      ; $5436: $39
	nop                                              ; $5437: $00
	ld   [bc], a                                     ; $5438: $02
	ei                                               ; $5439: $fb
	rst  $38                                         ; $543a: $ff
	add  b                                           ; $543b: $80
	rra                                              ; $543c: $1f
	inc  bc                                          ; $543d: $03
	inc  b                                           ; $543e: $04
	ld   d, h                                        ; $543f: $54
	nop                                              ; $5440: $00
	ld   h, b                                        ; $5441: $60
	add  b                                           ; $5442: $80
	ld   b, b                                        ; $5443: $40
	rlca                                             ; $5444: $07
	ret  nz                                          ; $5445: $c0

	jr   jr_09a_5448                                 ; $5446: $18 $00

jr_09a_5448:
	db   $ec                                         ; $5448: $ec
	nop                                              ; $5449: $00
	ld   b, $e0                                      ; $544a: $06 $e0
	db   $e3                                         ; $544c: $e3
	add  c                                           ; $544d: $81
	nop                                              ; $544e: $00
	nop                                              ; $544f: $00
	ld   bc, $0081                                   ; $5450: $01 $81 $00
	nop                                              ; $5453: $00
	ld   bc, $0083                                   ; $5454: $01 $83 $00
	nop                                              ; $5457: $00
	inc  bc                                          ; $5458: $03
	add  e                                           ; $5459: $83
	ld   bc, $4303                                   ; $545a: $01 $03 $43
	nop                                              ; $545d: $00
	ret  nz                                          ; $545e: $c0

	nop                                              ; $545f: $00
	add  e                                           ; $5460: $83
	add  b                                           ; $5461: $80
	rlca                                             ; $5462: $07
	call z, $b88c                                    ; $5463: $cc $8c $b8
	and  b                                           ; $5466: $a0
	cp   e                                           ; $5467: $bb
	inc  de                                          ; $5468: $13
	or   a                                           ; $5469: $b7
	ld   b, a                                        ; $546a: $47
	add  a                                           ; $546b: $87
	inc  b                                           ; $546c: $04
	add  c                                           ; $546d: $81
	nop                                              ; $546e: $00
	add  b                                           ; $546f: $80
	ldh  [rSB], a                                    ; $5470: $e0 $01
	di                                               ; $5472: $f3
	rst  $30                                         ; $5473: $f7
	add  h                                           ; $5474: $84
	nop                                              ; $5475: $00
	add  b                                           ; $5476: $80
	ld   [$0c09], sp                                 ; $5477: $08 $09 $0c
	inc  b                                           ; $547a: $04
	ld   e, $11                                      ; $547b: $1e $11
	or   $f2                                         ; $547d: $f6 $f2
	ei                                               ; $547f: $fb
	ld   a, b                                        ; $5480: $78
	nop                                              ; $5481: $00
	ret  nz                                          ; $5482: $c0

	add  c                                           ; $5483: $81
	nop                                              ; $5484: $00
	nop                                              ; $5485: $00
	ld   h, b                                        ; $5486: $60
	add  c                                           ; $5487: $81
	ld   b, b                                        ; $5488: $40
	nop                                              ; $5489: $00
	ld   [hl], b                                     ; $548a: $70
	add  c                                           ; $548b: $81
	ldh  [$08], a                                    ; $548c: $e0 $08
	ld   l, b                                        ; $548e: $68
	ld   h, b                                        ; $548f: $60
	ld   a, [$0701]                                  ; $5490: $fa $01 $07
	inc  bc                                          ; $5493: $03
	ld   [bc], a                                     ; $5494: $02
	inc  bc                                          ; $5495: $03
	ld   bc, $0385                                   ; $5496: $01 $85 $03
	ld   b, $0b                                      ; $5499: $06 $0b
	rlca                                             ; $549b: $07
	ld   l, b                                        ; $549c: $68
	sbc  a                                           ; $549d: $9f
	scf                                              ; $549e: $37
	cp   a                                           ; $549f: $bf
	rst  $20                                         ; $54a0: $e7
	add  c                                           ; $54a1: $81
	ld   a, a                                        ; $54a2: $7f
	ld   [bc], a                                     ; $54a3: $02
	ld   e, a                                        ; $54a4: $5f
	ld   a, a                                        ; $54a5: $7f
	cpl                                              ; $54a6: $2f
	add  e                                           ; $54a7: $83
	cp   a                                           ; $54a8: $bf
	nop                                              ; $54a9: $00
	ld   e, e                                        ; $54aa: $5b
	add  l                                           ; $54ab: $85
	di                                               ; $54ac: $f3
	nop                                              ; $54ad: $00
	rst  $30                                         ; $54ae: $f7
	add  c                                           ; $54af: $81
	rst  $38                                         ; $54b0: $ff
	ld   b, $fb                                      ; $54b1: $06 $fb
	rst  $38                                         ; $54b3: $ff
	db   $e4                                         ; $54b4: $e4
	rst  $38                                         ; $54b5: $ff
	pop  hl                                          ; $54b6: $e1
	rst  $38                                         ; $54b7: $ff
	cp   $87                                         ; $54b8: $fe $87
	rst  $38                                         ; $54ba: $ff
	ld   b, $fb                                      ; $54bb: $06 $fb
	rst  $38                                         ; $54bd: $ff
	ld   a, b                                        ; $54be: $78
	rst  $38                                         ; $54bf: $ff
	and  h                                           ; $54c0: $a4
	ld   h, b                                        ; $54c1: $60
	ld   b, b                                        ; $54c2: $40
	add  d                                           ; $54c3: $82
	ld   h, b                                        ; $54c4: $60
	ld   bc, $f070                                   ; $54c5: $01 $70 $f0
	add  l                                           ; $54c8: $85
	or   b                                           ; $54c9: $b0
	nop                                              ; $54ca: $00
	rst  ToBoot                                         ; $54cb: $c7
	add  e                                           ; $54cc: $83
	rlca                                             ; $54cd: $07
	nop                                              ; $54ce: $00
	rrca                                             ; $54cf: $0f
	add  a                                           ; $54d0: $87
	inc  bc                                          ; $54d1: $03
	ld   b, $c4                                      ; $54d2: $06 $c4
	ld   a, a                                        ; $54d4: $7f
	ld   a, [hl]                                     ; $54d5: $7e
	ld   a, a                                        ; $54d6: $7f
	ld   a, l                                        ; $54d7: $7d
	ld   a, a                                        ; $54d8: $7f
	ld   a, h                                        ; $54d9: $7c
	add  b                                           ; $54da: $80
	ld   a, a                                        ; $54db: $7f
	add  l                                           ; $54dc: $85
	cp   a                                           ; $54dd: $bf
	ld   b, $00                                      ; $54de: $06 $00
	ei                                               ; $54e0: $fb
	ld   a, b                                        ; $54e1: $78
	ei                                               ; $54e2: $fb
	add  e                                           ; $54e3: $83
	ei                                               ; $54e4: $fb
	ld   a, e                                        ; $54e5: $7b
	add  e                                           ; $54e6: $83
	ei                                               ; $54e7: $fb
	ld   bc, $fdf9                                   ; $54e8: $01 $f9 $fd
	add  b                                           ; $54eb: $80
	push af                                          ; $54ec: $f5
	inc  b                                           ; $54ed: $04
	ld   a, [de]                                     ; $54ee: $1a
	rst  $38                                         ; $54ef: $ff
	ld   l, [hl]                                     ; $54f0: $6e
	rst  $38                                         ; $54f1: $ff
	adc  a                                           ; $54f2: $8f
	adc  c                                           ; $54f3: $89
	rst  $38                                         ; $54f4: $ff
	nop                                              ; $54f5: $00
	rlca                                             ; $54f6: $07
	adc  b                                           ; $54f7: $88
	ld   [hl], b                                     ; $54f8: $70
	add  e                                           ; $54f9: $83
	or   b                                           ; $54fa: $b0
	nop                                              ; $54fb: $00
	ld   c, e                                        ; $54fc: $4b
	adc  d                                           ; $54fd: $8a
	ld   bc, $0003                                   ; $54fe: $01 $03 $00
	rlca                                             ; $5501: $07
	inc  bc                                          ; $5502: $03
	rst  ToBoot                                         ; $5503: $c7
	add  d                                           ; $5504: $82
	cp   a                                           ; $5505: $bf
	nop                                              ; $5506: $00
	ld   a, a                                        ; $5507: $7f
	add  b                                           ; $5508: $80
	ld   a, h                                        ; $5509: $7c
	ld   [bc], a                                     ; $550a: $02
	ld   [hl], b                                     ; $550b: $70
	ld   [hl], e                                     ; $550c: $73
	ld   b, e                                        ; $550d: $43
	add  b                                           ; $550e: $80
	ld   l, a                                        ; $550f: $6f
	add  b                                           ; $5510: $80
	rrca                                             ; $5511: $0f
	ld   bc, $ee1f                                   ; $5512: $01 $1f $ee
	add  c                                           ; $5515: $81
	push af                                          ; $5516: $f5
	add  c                                           ; $5517: $81
	inc  b                                           ; $5518: $04
	add  c                                           ; $5519: $81
	rst  $38                                         ; $551a: $ff
	ld   [bc], a                                     ; $551b: $02
	ldh  [rIE], a                                    ; $551c: $e0 $ff
	rra                                              ; $551e: $1f
	add  l                                           ; $551f: $85
	rst  $38                                         ; $5520: $ff
	add  b                                           ; $5521: $80
	ccf                                              ; $5522: $3f
	ld   a, [bc]                                     ; $5523: $0a
	rlca                                             ; $5524: $07
	rst  $20                                         ; $5525: $e7
	db   $e3                                         ; $5526: $e3
	ei                                               ; $5527: $fb
	ld   hl, sp-$03                                  ; $5528: $f8 $fd
	dec  b                                           ; $552a: $05
	cp   $fc                                         ; $552b: $fe $fc
	rst  $38                                         ; $552d: $ff
	ld   [bc], a                                     ; $552e: $02

jr_09a_552f:
	adc  d                                           ; $552f: $8a
	or   b                                           ; $5530: $b0
	add  c                                           ; $5531: $81
	jr   nc, jr_09a_5534                             ; $5532: $30 $00

jr_09a_5534:
	call z, $0382                                    ; $5534: $cc $82 $03
	dec  b                                           ; $5537: $05
	ld   bc, $0007                                   ; $5538: $01 $07 $00
	inc  bc                                          ; $553b: $03
	nop                                              ; $553c: $00
	ld   bc, $0083                                   ; $553d: $01 $83 $00
	nop                                              ; $5540: $00
	ccf                                              ; $5541: $3f
	add  e                                           ; $5542: $83
	rst  JumpTable                                         ; $5543: $df
	add  b                                           ; $5544: $80
	sbc  a                                           ; $5545: $9f
	ld   [bc], a                                     ; $5546: $02
	ld   e, a                                        ; $5547: $5f
	rra                                              ; $5548: $1f
	sbc  a                                           ; $5549: $9f
	add  e                                           ; $554a: $83
	rra                                              ; $554b: $1f
	inc  b                                           ; $554c: $04
	inc  h                                           ; $554d: $24
	rst  $38                                         ; $554e: $ff
	dec  b                                           ; $554f: $05
	ei                                               ; $5550: $fb
	ld   a, [$fb82]                                  ; $5551: $fa $82 $fb
	add  b                                           ; $5554: $80
	di                                               ; $5555: $f3
	add  b                                           ; $5556: $80
	ldh  [$80], a                                    ; $5557: $e0 $80
	ld   sp, hl                                      ; $5559: $f9
	ld   bc, $0ef1                                   ; $555a: $01 $f1 $0e
	add  c                                           ; $555d: $81
	rst  $38                                         ; $555e: $ff
	ld   [bc], a                                     ; $555f: $02
	ld   a, [hl]                                     ; $5560: $7e
	rst  $38                                         ; $5561: $ff
	add  c                                           ; $5562: $81
	add  d                                           ; $5563: $82
	rst  $38                                         ; $5564: $ff
	add  b                                           ; $5565: $80
	ccf                                              ; $5566: $3f
	add  c                                           ; $5567: $81
	rst  $38                                         ; $5568: $ff
	inc  bc                                          ; $5569: $03
	ld   hl, sp+$70                                  ; $556a: $f8 $70
	ld   a, b                                        ; $556c: $78
	nop                                              ; $556d: $00
	add  b                                           ; $556e: $80
	ld   h, b                                        ; $556f: $60
	nop                                              ; $5570: $00
	ld   a, b                                        ; $5571: $78
	add  c                                           ; $5572: $81
	ld   [hl], b                                     ; $5573: $70
	nop                                              ; $5574: $00
	ld   [hl], h                                     ; $5575: $74
	add  e                                           ; $5576: $83
	ld   [hl], b                                     ; $5577: $70
	nop                                              ; $5578: $00
	db   $fc                                         ; $5579: $fc
	adc  l                                           ; $557a: $8d
	nop                                              ; $557b: $00
	nop                                              ; $557c: $00
	ccf                                              ; $557d: $3f

Jump_09a_557e:
	adc  l                                           ; $557e: $8d
	rra                                              ; $557f: $1f
	nop                                              ; $5580: $00
	db   $db                                         ; $5581: $db
	adc  e                                           ; $5582: $8b
	pop  af                                          ; $5583: $f1
	ld   [bc], a                                     ; $5584: $02
	di                                               ; $5585: $f3
	ldh  a, [$f6]                                    ; $5586: $f0 $f6
	adc  l                                           ; $5588: $8d
	rst  $38                                         ; $5589: $ff
	ld   [bc], a                                     ; $558a: $02
	db   $fc                                         ; $558b: $fc
	nop                                              ; $558c: $00
	ld   l, b                                        ; $558d: $68
	add  e                                           ; $558e: $83
	ld   [$4803], sp                                 ; $558f: $08 $03 $48
	ld   [$4868], sp                                 ; $5592: $08 $68 $48
	add  b                                           ; $5595: $80
	ld   l, b                                        ; $5596: $68
	ld   [bc], a                                     ; $5597: $02
	ld   l, d                                        ; $5598: $6a
	ld   l, b                                        ; $5599: $68
	pop  bc                                          ; $559a: $c1
	adc  c                                           ; $559b: $89
	rra                                              ; $559c: $1f
	inc  b                                           ; $559d: $04
	inc  e                                           ; $559e: $1c
	rra                                              ; $559f: $1f
	dec  de                                          ; $55a0: $1b
	rra                                              ; $55a1: $1f
	sbc  $84                                         ; $55a2: $de $84
	ldh  a, [rSB]                                    ; $55a4: $f0 $01
	add  sp, -$20                                    ; $55a6: $e8 $e0
	add  b                                           ; $55a8: $80
	add  sp, $01                                     ; $55a9: $e8 $01
	and  b                                           ; $55ab: $a0
	jr   nz, jr_09a_552f                             ; $55ac: $20 $81

	and  b                                           ; $55ae: $a0
	ld   bc, $6846                                   ; $55af: $01 $46 $68
	add  b                                           ; $55b2: $80
	ld   h, a                                        ; $55b3: $67
	nop                                              ; $55b4: $00
	ld   a, a                                        ; $55b5: $7f
	add  b                                           ; $55b6: $80
	ld   a, h                                        ; $55b7: $7c
	ld   bc, $7b79                                   ; $55b8: $01 $79 $7b
	add  l                                           ; $55bb: $85
	ld   a, c                                        ; $55bc: $79
	inc  b                                           ; $55bd: $04
	ei                                               ; $55be: $fb
	nop                                              ; $55bf: $00
	add  b                                           ; $55c0: $80
	nop                                              ; $55c1: $00
	ret  nz                                          ; $55c2: $c0

	add  c                                           ; $55c3: $81
	add  b                                           ; $55c4: $80
	nop                                              ; $55c5: $00

Jump_09a_55c6:
	ldh  [$85], a                                    ; $55c6: $e0 $85
	ret  nz                                          ; $55c8: $c0

	nop                                              ; $55c9: $00
	ldh  [$8a], a                                    ; $55ca: $e0 $8a
	nop                                              ; $55cc: $00
	add  b                                           ; $55cd: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $55ce: $cf
	inc  bc                                          ; $55cf: $03
	nop                                              ; $55d0: $00
	jr   c, jr_09a_55f2                              ; $55d1: $38 $1f

	rla                                              ; $55d3: $17
	adc  e                                           ; $55d4: $8b
	rra                                              ; $55d5: $1f
	ld   bc, $c01e                                   ; $55d6: $01 $1e $c0
	add  d                                           ; $55d9: $82
	ldh  [rP1], a                                    ; $55da: $e0 $00
	ld   sp, hl                                      ; $55dc: $f9
	add  a                                           ; $55dd: $87
	ldh  a, [rP1]                                    ; $55de: $f0 $00
	rlca                                             ; $55e0: $07
	add  h                                           ; $55e1: $84
	rst  $38                                         ; $55e2: $ff
	add  a                                           ; $55e3: $87
	ld   a, a                                        ; $55e4: $7f
	nop                                              ; $55e5: $00
	inc  b                                           ; $55e6: $04
	adc  l                                           ; $55e7: $8d

jr_09a_55e8:
	ld   a, e                                        ; $55e8: $7b
	nop                                              ; $55e9: $00
	rst  JumpTable                                         ; $55ea: $df
	add  e                                           ; $55eb: $83
	ret  nz                                          ; $55ec: $c0

	nop                                              ; $55ed: $00
	ldh  a, [$87]                                    ; $55ee: $f0 $87
	ldh  [rP1], a                                    ; $55f0: $e0 $00

jr_09a_55f2:
	rrca                                             ; $55f2: $0f
	add  [hl]                                        ; $55f3: $86
	nop                                              ; $55f4: $00
	add  b                                           ; $55f5: $80
	rlca                                             ; $55f6: $07
	add  b                                           ; $55f7: $80
	nop                                              ; $55f8: $00
	add  b                                           ; $55f9: $80
	ld   bc, $0203                                   ; $55fa: $01 $03 $02
	dec  b                                           ; $55fd: $05
	ld   [$8000], sp                                 ; $55fe: $08 $00 $80
	ld   [$0082], sp                                 ; $5601: $08 $82 $00
	ld   bc, $d8d7                                   ; $5604: $01 $d7 $d8
	add  b                                           ; $5607: $80
	sbc  a                                           ; $5608: $9f
	add  c                                           ; $5609: $81
	rra                                              ; $560a: $1f
	nop                                              ; $560b: $00
	ldh  [$82], a                                    ; $560c: $e0 $82
	nop                                              ; $560e: $00
	dec  bc                                          ; $560f: $0b
	rlca                                             ; $5610: $07
	rst  $30                                         ; $5611: $f7
	rst  $38                                         ; $5612: $ff
	rrca                                             ; $5613: $0f
	ldh  a, [$38]                                    ; $5614: $f0 $38
	rst  $28                                         ; $5616: $ef
	rst  $30                                         ; $5617: $f7
	rst  JumpTable                                         ; $5618: $df
	xor  a                                           ; $5619: $af
	rst  $38                                         ; $561a: $ff
	ld   e, a                                        ; $561b: $5f
	add  b                                           ; $561c: $80
	inc  bc                                          ; $561d: $03
	add  b                                           ; $561e: $80
	nop                                              ; $561f: $00
	add  d                                           ; $5620: $82
	rst  $38                                         ; $5621: $ff
	add  b                                           ; $5622: $80
	nop                                              ; $5623: $00
	dec  b                                           ; $5624: $05
	cp   $fa                                         ; $5625: $fe $fa
	db   $fc                                         ; $5627: $fc
	add  c                                           ; $5628: $81
	ld   sp, hl                                      ; $5629: $f9
	add  b                                           ; $562a: $80
	add  b                                           ; $562b: $80
	rst  JumpTable                                         ; $562c: $df
	add  b                                           ; $562d: $80
	nop                                              ; $562e: $00
	add  b                                           ; $562f: $80
	rst  $38                                         ; $5630: $ff
	add  b                                           ; $5631: $80
	cp   $80                                         ; $5632: $fe $80
	nop                                              ; $5634: $00
	add  c                                           ; $5635: $81

jr_09a_5636:
	rst  $38                                         ; $5636: $ff
	ld   [bc], a                                     ; $5637: $02
	rlca                                             ; $5638: $07
	rst  $38                                         ; $5639: $ff
	rlca                                             ; $563a: $07
	add  b                                           ; $563b: $80
	rst  $38                                         ; $563c: $ff
	add  b                                           ; $563d: $80
	add  b                                           ; $563e: $80
	add  b                                           ; $563f: $80
	ld   a, a                                        ; $5640: $7f
	add  b                                           ; $5641: $80
	rst  $38                                         ; $5642: $ff
	add  b                                           ; $5643: $80
	ld   bc, $ff81                                   ; $5644: $01 $81 $ff
	ld   [bc], a                                     ; $5647: $02
	add  b                                           ; $5648: $80
	rst  $38                                         ; $5649: $ff
	add  b                                           ; $564a: $80
	add  b                                           ; $564b: $80
	rst  $38                                         ; $564c: $ff
	add  b                                           ; $564d: $80
	rra                                              ; $564e: $1f
	add  d                                           ; $564f: $82
	rst  $38                                         ; $5650: $ff
	add  b                                           ; $5651: $80
	nop                                              ; $5652: $00
	adc  h                                           ; $5653: $8c
	rst  $38                                         ; $5654: $ff
	add  b                                           ; $5655: $80
	nop                                              ; $5656: $00
	add  b                                           ; $5657: $80
	cp   a                                           ; $5658: $bf
	add  d                                           ; $5659: $82
	ld   a, a                                        ; $565a: $7f
	add  b                                           ; $565b: $80
	rst  $38                                         ; $565c: $ff
	add  b                                           ; $565d: $80
	nop                                              ; $565e: $00
	add  d                                           ; $565f: $82
	rst  $38                                         ; $5660: $ff
	add  b                                           ; $5661: $80
	jr   nc, jr_09a_55e8                             ; $5662: $30 $84

	db   $fd                                         ; $5664: $fd
	add  b                                           ; $5665: $80
	rst  $38                                         ; $5666: $ff
	add  b                                           ; $5667: $80
	nop                                              ; $5668: $00
	add  d                                           ; $5669: $82
	rst  $38                                         ; $566a: $ff
	add  b                                           ; $566b: $80
	nop                                              ; $566c: $00
	add  [hl]                                        ; $566d: $86
	rst  $38                                         ; $566e: $ff
	add  b                                           ; $566f: $80
	nop                                              ; $5670: $00
	add  b                                           ; $5671: $80
	rst  $38                                         ; $5672: $ff
	add  b                                           ; $5673: $80
	ld   a, a                                        ; $5674: $7f
	add  b                                           ; $5675: $80
	nop                                              ; $5676: $00
	add  b                                           ; $5677: $80
	rst  $30                                         ; $5678: $f7
	inc  bc                                          ; $5679: $03
	ei                                               ; $567a: $fb
	rlca                                             ; $567b: $07
	db   $fd                                         ; $567c: $fd
	ld   bc, $c080                                   ; $567d: $01 $80 $c0
	add  b                                           ; $5680: $80
	inc  b                                           ; $5681: $04
	add  d                                           ; $5682: $82
	rst  $38                                         ; $5683: $ff
	add  b                                           ; $5684: $80
	nop                                              ; $5685: $00
	add  c                                           ; $5686: $81
	rst  $38                                         ; $5687: $ff
	ld   [bc], a                                     ; $5688: $02
	ldh  a, [rIE]                                    ; $5689: $f0 $ff
	ldh  a, [$82]                                    ; $568b: $f0 $82
	nop                                              ; $568d: $00
	nop                                              ; $568e: $00
	ldh  [$80], a                                    ; $568f: $e0 $80
	rst  $38                                         ; $5691: $ff
	ld   a, [bc]                                     ; $5692: $0a
	ldh  [rTAC], a                                   ; $5693: $e0 $07
	inc  c                                           ; $5695: $0c
	ld   a, a                                        ; $5696: $7f
	ld   [hl], c                                     ; $5697: $71
	cp   a                                           ; $5698: $bf
	ld   [hl], l                                     ; $5699: $75
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $569a: $cf
	rra                                              ; $569b: $1f
	stop                                             ; $569c: $10 $00
	add  b                                           ; $569e: $80
	db   $10                                         ; $569f: $10
	add  d                                           ; $56a0: $82
	nop                                              ; $56a1: $00
	inc  bc                                          ; $56a2: $03
	cp   $06                                         ; $56a3: $fe $06
	ld   hl, sp-$10                                  ; $56a5: $f8 $f0
	add  d                                           ; $56a7: $82
	ld   hl, sp-$7c                                  ; $56a8: $f8 $84
	nop                                              ; $56aa: $00
	add  b                                           ; $56ab: $80
	ld   bc, $2a80                                   ; $56ac: $01 $80 $2a
	add  h                                           ; $56af: $84
	nop                                              ; $56b0: $00
	add  b                                           ; $56b1: $80
	rst  $38                                         ; $56b2: $ff
	add  b                                           ; $56b3: $80
	jr   nz, jr_09a_5636                             ; $56b4: $20 $80

	ret  nz                                          ; $56b6: $c0

	add  b                                           ; $56b7: $80
	nop                                              ; $56b8: $00
	add  b                                           ; $56b9: $80
	cp   a                                           ; $56ba: $bf
	add  b                                           ; $56bb: $80
	ld   [bc], a                                     ; $56bc: $02
	add  b                                           ; $56bd: $80
	inc  c                                           ; $56be: $0c
	inc  b                                           ; $56bf: $04
	db   $10                                         ; $56c0: $10
	rrca                                             ; $56c1: $0f
	rst  $38                                         ; $56c2: $ff
	ld   hl, sp+$27                                  ; $56c3: $f8 $27
	add  d                                           ; $56c5: $82
	ccf                                              ; $56c6: $3f
	rra                                              ; $56c7: $1f
	nop                                              ; $56c8: $00
	cp   a                                           ; $56c9: $bf
	add  b                                           ; $56ca: $80
	ccf                                              ; $56cb: $3f
	dec  a                                           ; $56cc: $3d
	rra                                              ; $56cd: $1f
	jr   jr_09a_56ef                                 ; $56ce: $18 $1f

	push hl                                          ; $56d0: $e5
	db   $fc                                         ; $56d1: $fc
	rla                                              ; $56d2: $17
	ei                                               ; $56d3: $fb
	add  $f7                                         ; $56d4: $c6 $f7
	adc  [hl]                                        ; $56d6: $8e
	rst  $28                                         ; $56d7: $ef
	ld   b, b                                        ; $56d8: $40
	add  b                                           ; $56d9: $80
	ld   b, c                                        ; $56da: $41
	db   $fd                                         ; $56db: $fd
	ccf                                              ; $56dc: $3f
	ei                                               ; $56dd: $fb
	ld   a, a                                        ; $56de: $7f
	rst  $30                                         ; $56df: $f7
	ld   [hl], b                                     ; $56e0: $70
	nop                                              ; $56e1: $00
	ret  nz                                          ; $56e2: $c0

	rst  $38                                         ; $56e3: $ff
	ccf                                              ; $56e4: $3f
	rst  $38                                         ; $56e5: $ff
	nop                                              ; $56e6: $00
	rst  $38                                         ; $56e7: $ff
	add  b                                           ; $56e8: $80
	nop                                              ; $56e9: $00
	dec  c                                           ; $56ea: $0d
	ld   d, b                                        ; $56eb: $50
	rst  $38                                         ; $56ec: $ff
	rrca                                             ; $56ed: $0f
	rst  $38                                         ; $56ee: $ff

jr_09a_56ef:
	rrca                                             ; $56ef: $0f
	rst  $38                                         ; $56f0: $ff
	xor  a                                           ; $56f1: $af
	ld   bc, rAUD1LEN                                   ; $56f2: $01 $11 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $56f5: $cf
	rst  $28                                         ; $56f6: $ef
	nop                                              ; $56f7: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $56f8: $cf
	add  b                                           ; $56f9: $80
	nop                                              ; $56fa: $00
	ld   [bc], a                                     ; $56fb: $02
	db   $10                                         ; $56fc: $10
	di                                               ; $56fd: $f3
	jp   $e780                                       ; $56fe: $c3 $80 $e7


	ld   bc, $cfef                                   ; $5701: $01 $ef $cf
	add  b                                           ; $5704: $80
	nop                                              ; $5705: $00
	add  c                                           ; $5706: $81
	cp   $01                                         ; $5707: $fe $01
	ld   [bc], a                                     ; $5709: $02
	db   $fc                                         ; $570a: $fc
	add  c                                           ; $570b: $81
	nop                                              ; $570c: $00
	add  h                                           ; $570d: $84
	rst  $38                                         ; $570e: $ff
	add  b                                           ; $570f: $80
	nop                                              ; $5710: $00
	add  b                                           ; $5711: $80
	rst  $38                                         ; $5712: $ff
	add  b                                           ; $5713: $80
	db   $fc                                         ; $5714: $fc
	add  b                                           ; $5715: $80
	ld   hl, sp-$80                                  ; $5716: $f8 $80
	nop                                              ; $5718: $00
	add  b                                           ; $5719: $80
	db   $fd                                         ; $571a: $fd
	add  d                                           ; $571b: $82
	ei                                               ; $571c: $fb
	add  b                                           ; $571d: $80
	nop                                              ; $571e: $00
	add  b                                           ; $571f: $80
	cp   $80                                         ; $5720: $fe $80
	cp   [hl]                                        ; $5722: $be
	add  b                                           ; $5723: $80
	cp   $80                                         ; $5724: $fe $80
	nop                                              ; $5726: $00
	add  h                                           ; $5727: $84
	rst  $38                                         ; $5728: $ff
	add  b                                           ; $5729: $80
	nop                                              ; $572a: $00
	add  h                                           ; $572b: $84
	rst  $38                                         ; $572c: $ff
	add  b                                           ; $572d: $80
	nop                                              ; $572e: $00
	add  h                                           ; $572f: $84
	rst  $38                                         ; $5730: $ff
	add  b                                           ; $5731: $80
	nop                                              ; $5732: $00
	add  b                                           ; $5733: $80
	cp   $82                                         ; $5734: $fe $82
	rst  $38                                         ; $5736: $ff
	add  b                                           ; $5737: $80

jr_09a_5738:
	nop                                              ; $5738: $00
	add  d                                           ; $5739: $82
	ld   a, a                                        ; $573a: $7f
	add  b                                           ; $573b: $80
	cp   a                                           ; $573c: $bf
	add  b                                           ; $573d: $80
	add  b                                           ; $573e: $80
	add  b                                           ; $573f: $80
	rst  $38                                         ; $5740: $ff
	inc  bc                                          ; $5741: $03
	ld   a, a                                        ; $5742: $7f
	ld   [hl], b                                     ; $5743: $70
	ld   a, a                                        ; $5744: $7f
	ld   [hl], b                                     ; $5745: $70
	add  b                                           ; $5746: $80
	nop                                              ; $5747: $00
	add  h                                           ; $5748: $84
	rst  $38                                         ; $5749: $ff
	add  b                                           ; $574a: $80
	nop                                              ; $574b: $00
	add  b                                           ; $574c: $80
	rst  $30                                         ; $574d: $f7
	rlca                                             ; $574e: $07
	ei                                               ; $574f: $fb
	rlca                                             ; $5750: $07
	db   $fd                                         ; $5751: $fd
	ld   bc, $0800                                   ; $5752: $01 $00 $08
	ccf                                              ; $5755: $3f
	scf                                              ; $5756: $37
	add  b                                           ; $5757: $80
	cp   a                                           ; $5758: $bf
	add  b                                           ; $5759: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $575a: $cf
	ld   [de], a                                     ; $575b: $12
	nop                                              ; $575c: $00
	dec  hl                                          ; $575d: $2b
	rst  $38                                         ; $575e: $ff
	pop  de                                          ; $575f: $d1
	rst  $38                                         ; $5760: $ff
	pop  af                                          ; $5761: $f1
	rst  $38                                         ; $5762: $ff
	push af                                          ; $5763: $f5
	ld   bc, $fe3e                                   ; $5764: $01 $3e $fe
	rst  $10                                         ; $5767: $d7
	rst  $38                                         ; $5768: $ff
	rst  ToBoot                                         ; $5769: $c7
	rst  $38                                         ; $576a: $ff
	rst  $10                                         ; $576b: $d7
	rrca                                             ; $576c: $0f
	ld   [hl], a                                     ; $576d: $77
	ld   a, h                                        ; $576e: $7c
	add  b                                           ; $576f: $80
	cp   h                                           ; $5770: $bc
	add  b                                           ; $5771: $80
	call c, $0008                                   ; $5772: $dc $08 $00
	rst  $38                                         ; $5775: $ff
	inc  bc                                          ; $5776: $03
	db   $fc                                         ; $5777: $fc
	ld   e, h                                        ; $5778: $5c
	ld   a, b                                        ; $5779: $78
	adc  b                                           ; $577a: $88
	cp   b                                           ; $577b: $b8
	add  sp, -$80                                    ; $577c: $e8 $80

jr_09a_577e:
	ld   b, b                                        ; $577e: $40
	add  b                                           ; $577f: $80
	nop                                              ; $5780: $00
	add  b                                           ; $5781: $80
	ld   c, l                                        ; $5782: $4d
	add  a                                           ; $5783: $87
	nop                                              ; $5784: $00
	ld   [bc], a                                     ; $5785: $02
	ld   [bc], a                                     ; $5786: $02
	rrca                                             ; $5787: $0f
	inc  c                                           ; $5788: $0c
	add  b                                           ; $5789: $80
	rlca                                             ; $578a: $07
	ld   bc, $feff                                   ; $578b: $01 $ff $fe
	add  a                                           ; $578e: $87
	nop                                              ; $578f: $00
	dec  b                                           ; $5790: $05
	or   c                                           ; $5791: $b1
	rst  $28                                         ; $5792: $ef
	ld   e, $ff                                      ; $5793: $1e $ff
	ld   b, b                                        ; $5795: $40
	add  b                                           ; $5796: $80
	add  c                                           ; $5797: $81
	ld   a, a                                        ; $5798: $7f
	add  b                                           ; $5799: $80
	rrca                                             ; $579a: $0f
	add  b                                           ; $579b: $80
	nop                                              ; $579c: $00
	add  b                                           ; $579d: $80
	ld   bc, $0205                                   ; $579e: $01 $05 $02
	ld   e, l                                        ; $57a1: $5d
	rst  $38                                         ; $57a2: $ff
	jr   nz, @+$01                                   ; $57a3: $20 $ff

	add  b                                           ; $57a5: $80
	add  b                                           ; $57a6: $80
	nop                                              ; $57a7: $00
	dec  c                                           ; $57a8: $0d
	rst  $38                                         ; $57a9: $ff
	ld   d, a                                        ; $57aa: $57
	rst  $38                                         ; $57ab: $ff
	add  e                                           ; $57ac: $83
	rst  $38                                         ; $57ad: $ff
	push de                                          ; $57ae: $d5
	rlca                                             ; $57af: $07
	ld   b, $00                                      ; $57b0: $06 $00
	cp   a                                           ; $57b2: $bf
	rst  JumpTable                                         ; $57b3: $df
	nop                                              ; $57b4: $00
	cp   a                                           ; $57b5: $bf
	jr   nz, jr_09a_5738                             ; $57b6: $20 $80

	nop                                              ; $57b8: $00
	add  c                                           ; $57b9: $81
	rst  $38                                         ; $57ba: $ff
	nop                                              ; $57bb: $00
	cp   $81                                         ; $57bc: $fe $81
	rst  $38                                         ; $57be: $ff
	dec  b                                           ; $57bf: $05
	ld   [bc], a                                     ; $57c0: $02
	rra                                              ; $57c1: $1f
	db   $e3                                         ; $57c2: $e3
	rst  $38                                         ; $57c3: $ff
	nop                                              ; $57c4: $00
	rst  $38                                         ; $57c5: $ff
	add  b                                           ; $57c6: $80
	nop                                              ; $57c7: $00
	nop                                              ; $57c8: $00
	add  b                                           ; $57c9: $80
	add  c                                           ; $57ca: $81
	cp   a                                           ; $57cb: $bf
	nop                                              ; $57cc: $00
	ccf                                              ; $57cd: $3f
	add  d                                           ; $57ce: $82
	ld   a, a                                        ; $57cf: $7f
	dec  b                                           ; $57d0: $05
	rst  $38                                         ; $57d1: $ff
	rst  $30                                         ; $57d2: $f7
	ei                                               ; $57d3: $fb
	nop                                              ; $57d4: $00
	rst  $30                                         ; $57d5: $f7
	inc  b                                           ; $57d6: $04
	add  b                                           ; $57d7: $80
	nop                                              ; $57d8: $00
	adc  c                                           ; $57d9: $89
	rst  $38                                         ; $57da: $ff
	ld   bc, $ff00                                   ; $57db: $01 $00 $ff
	add  b                                           ; $57de: $80
	nop                                              ; $57df: $00
	nop                                              ; $57e0: $00
	inc  b                                           ; $57e1: $04
	add  a                                           ; $57e2: $87
	db   $fd                                         ; $57e3: $fd
	inc  bc                                          ; $57e4: $03
	ld   sp, hl                                      ; $57e5: $f9
	rst  $38                                         ; $57e6: $ff
	nop                                              ; $57e7: $00
	rst  $38                                         ; $57e8: $ff
	add  c                                           ; $57e9: $81
	nop                                              ; $57ea: $00
	adc  b                                           ; $57eb: $88
	rst  $38                                         ; $57ec: $ff
	ld   [bc], a                                     ; $57ed: $02
	cp   a                                           ; $57ee: $bf
	nop                                              ; $57ef: $00
	cp   a                                           ; $57f0: $bf
	add  c                                           ; $57f1: $81
	nop                                              ; $57f2: $00
	adc  c                                           ; $57f3: $89
	rst  $38                                         ; $57f4: $ff
	ld   bc, $ff00                                   ; $57f5: $01 $00 $ff

jr_09a_57f8:
	add  b                                           ; $57f8: $80
	nop                                              ; $57f9: $00
	nop                                              ; $57fa: $00
	jr   nz, jr_09a_577e                             ; $57fb: $20 $81

	rst  $28                                         ; $57fd: $ef
	nop                                              ; $57fe: $00
	rst  JumpTable                                         ; $57ff: $df
	add  c                                           ; $5800: $81
	rst  $30                                         ; $5801: $f7
	ld   b, $d8                                      ; $5802: $06 $d8
	ld   hl, sp-$3a                                  ; $5804: $f8 $c6
	rst  $28                                         ; $5806: $ef
	inc  e                                           ; $5807: $1c
	rst  $30                                         ; $5808: $f7
	dec  b                                           ; $5809: $05
	add  b                                           ; $580a: $80
	nop                                              ; $580b: $00
	ld   c, $ff                                      ; $580c: $0e $ff
	ld   [$c1ff], a                                  ; $580e: $ea $ff $c1
	rst  $38                                         ; $5811: $ff
	xor  e                                           ; $5812: $ab
	ldh  [$60], a                                    ; $5813: $e0 $60
	nop                                              ; $5815: $00
	xor  b                                           ; $5816: $a8
	rst  $38                                         ; $5817: $ff
	ld   d, a                                        ; $5818: $57
	rst  $38                                         ; $5819: $ff
	nop                                              ; $581a: $00
	ld   bc, $fe81                                   ; $581b: $01 $81 $fe
	add  b                                           ; $581e: $80
	db   $f4                                         ; $581f: $f4
	add  b                                           ; $5820: $80
	ld   [bc], a                                     ; $5821: $02
	add  b                                           ; $5822: $80
	ld   bc, $0003                                   ; $5823: $01 $03 $00
	jr   nz, jr_09a_57f8                             ; $5826: $20 $d0

	ldh  a, [$80]                                    ; $5828: $f0 $80
	ldh  [$80], a                                    ; $582a: $e0 $80
	db   $ed                                         ; $582c: $ed
	adc  d                                           ; $582d: $8a
	nop                                              ; $582e: $00
	add  b                                           ; $582f: $80
	ld   [de], a                                     ; $5830: $12
	adc  d                                           ; $5831: $8a
	nop                                              ; $5832: $00
	add  b                                           ; $5833: $80
	ld   b, $80                                      ; $5834: $06 $80
	jp   c, $008c                                    ; $5836: $da $8c $00

	add  b                                           ; $5839: $80
	rst  $38                                         ; $583a: $ff
	adc  d                                           ; $583b: $8a
	nop                                              ; $583c: $00
	add  b                                           ; $583d: $80
	ld   a, a                                        ; $583e: $7f
	add  b                                           ; $583f: $80
	add  b                                           ; $5840: $80
	adc  d                                           ; $5841: $8a
	nop                                              ; $5842: $00
	add  b                                           ; $5843: $80
	rst  $38                                         ; $5844: $ff
	add  b                                           ; $5845: $80
	ld   h, $89                                      ; $5846: $26 $89
	nop                                              ; $5848: $00
	ld   [bc], a                                     ; $5849: $02
	ld   [bc], a                                     ; $584a: $02
	rst  $38                                         ; $584b: $ff
	db   $fd                                         ; $584c: $fd
	add  b                                           ; $584d: $80
	rst  $38                                         ; $584e: $ff
	adc  d                                           ; $584f: $8a
	nop                                              ; $5850: $00
	add  b                                           ; $5851: $80
	rst  $38                                         ; $5852: $ff
	add  b                                           ; $5853: $80
	and  h                                           ; $5854: $a4
	adc  d                                           ; $5855: $8a
	nop                                              ; $5856: $00
	add  b                                           ; $5857: $80
	cp   $80                                         ; $5858: $fe $80
	ld   bc, $008a                                   ; $585a: $01 $8a $00
	add  b                                           ; $585d: $80
	inc  b                                           ; $585e: $04
	add  b                                           ; $585f: $80
	rst  $38                                         ; $5860: $ff
	adc  h                                           ; $5861: $8c
	nop                                              ; $5862: $00
	add  b                                           ; $5863: $80
	xor  $8c                                         ; $5864: $ee $8c
	nop                                              ; $5866: $00
	add  b                                           ; $5867: $80
	cp   e                                           ; $5868: $bb
	adc  d                                           ; $5869: $8a
	nop                                              ; $586a: $00
	add  b                                           ; $586b: $80
	add  b                                           ; $586c: $80
	add  b                                           ; $586d: $80
	ld   h, h                                        ; $586e: $64
	adc  c                                           ; $586f: $89
	nop                                              ; $5870: $00
	nop                                              ; $5871: $00
	rst  $38                                         ; $5872: $ff
	rst  $38                                         ; $5873: $ff
	nop                                              ; $5874: $00
	rst  $38                                         ; $5875: $ff
	nop                                              ; $5876: $00
	xor  e                                           ; $5877: $ab
	nop                                              ; $5878: $00
	jr   nz, jr_09a_589b                             ; $5879: $20 $20

	ld   b, b                                        ; $587b: $40
	ld   b, b                                        ; $587c: $40
	ld   b, c                                        ; $587d: $41
	ld   b, c                                        ; $587e: $41
	add  c                                           ; $587f: $81
	add  c                                           ; $5880: $81
	add  e                                           ; $5881: $83
	add  e                                           ; $5882: $83
	ld   [bc], a                                     ; $5883: $02
	ld   [bc], a                                     ; $5884: $02
	ld   b, $06                                      ; $5885: $06 $06
	ld   b, $06                                      ; $5887: $06 $06
	ld   b, $ff                                      ; $5889: $06 $ff
	adc  [hl]                                        ; $588b: $8e
	ei                                               ; $588c: $fb
	adc  a                                           ; $588d: $8f
	ei                                               ; $588e: $fb
	db   $db                                         ; $588f: $db
	cp   $df                                         ; $5890: $fe $df
	ld   hl, sp-$05                                  ; $5892: $f8 $fb
	ld   sp, hl                                      ; $5894: $f9
	rst  $38                                         ; $5895: $ff
	ld   a, [$a6fc]                                  ; $5896: $fa $fc $a6
	ld   b, c                                        ; $5899: $41
	rst  $38                                         ; $589a: $ff

jr_09a_589b:
	add  l                                           ; $589b: $85
	rst  $38                                         ; $589c: $ff
	add  l                                           ; $589d: $85
	rst  $38                                         ; $589e: $ff
	dec  b                                           ; $589f: $05
	and  a                                           ; $58a0: $a7
	dec  bc                                          ; $58a1: $0b
	ld   c, $0b                                      ; $58a2: $0e $0b
	ld   a, [hl]                                     ; $58a4: $7e
	dec  bc                                          ; $58a5: $0b
	cp   $0b                                         ; $58a6: $fe $0b
	cp   $5f                                         ; $58a8: $fe $5f
	or   $df                                         ; $58aa: $f6 $df
	or   $f7                                         ; $58ac: $f6 $f7
	ld   a, [$fd2a]                                  ; $58ae: $fa $2a $fd
	ld   [hl], a                                     ; $58b1: $77
	ld   hl, sp-$62                                  ; $58b2: $f8 $9e
	ld   hl, sp+$18                                  ; $58b4: $f8 $18
	or   b                                           ; $58b6: $b0
	ld   hl, sp-$10                                  ; $58b7: $f8 $f0
	cp   $b7                                         ; $58b9: $fe $b7
	adc  $03                                         ; $58bb: $ce $03
	add  a                                           ; $58bd: $87
	inc  bc                                          ; $58be: $03
	add  a                                           ; $58bf: $87
	inc  bc                                          ; $58c0: $03
	rlca                                             ; $58c1: $07
	inc  bc                                          ; $58c2: $03
	rlca                                             ; $58c3: $07
	inc  bc                                          ; $58c4: $03
	rlca                                             ; $58c5: $07
	inc  bc                                          ; $58c6: $03
	rlca                                             ; $58c7: $07
	ld   [bc], a                                     ; $58c8: $02
	rlca                                             ; $58c9: $07
	ld   [bc], a                                     ; $58ca: $02
	rlca                                             ; $58cb: $07
	ld   [bc], a                                     ; $58cc: $02
	dec  bc                                          ; $58cd: $0b
	inc  b                                           ; $58ce: $04
	adc  a                                           ; $58cf: $8f
	rlca                                             ; $58d0: $07
	sbc  [hl]                                        ; $58d1: $9e
	add  hl, bc                                      ; $58d2: $09
	dec  de                                          ; $58d3: $1b
	ld   bc, $0712                                   ; $58d4: $01 $12 $07
	inc  b                                           ; $58d7: $04
	ld   [bc], a                                     ; $58d8: $02
	ld   [$08ff], sp                                 ; $58d9: $08 $ff $08
	rst  $38                                         ; $58dc: $ff
	inc  b                                           ; $58dd: $04
	rst  $30                                         ; $58de: $f7
	inc  b                                           ; $58df: $04
	or   a                                           ; $58e0: $b7
	inc  b                                           ; $58e1: $04
	rst  ToBoot                                         ; $58e2: $c7
	ld   [bc], a                                     ; $58e3: $02
	ld   [$fa82], a                                  ; $58e4: $ea $82 $fa
	add  d                                           ; $58e7: $82
	cp   $82                                         ; $58e8: $fe $82
	cp   $a2                                         ; $58ea: $fe $a2
	rst  $38                                         ; $58ec: $ff
	and  a                                           ; $58ed: $a7
	rst  $38                                         ; $58ee: $ff
	rst  $20                                         ; $58ef: $e7
	rst  $38                                         ; $58f0: $ff
	cp   a                                           ; $58f1: $bf
	rst  $38                                         ; $58f2: $ff
	rst  $38                                         ; $58f3: $ff
	sbc  a                                           ; $58f4: $9f
	ld   h, e                                        ; $58f5: $63
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58f6: $cf
	rst  $20                                         ; $58f7: $e7
	db   $e3                                         ; $58f8: $e3
	ld   [$fc34], a                                  ; $58f9: $ea $34 $fc
	jr   nc, @-$01                                   ; $58fc: $30 $fd

	ld   [hl], b                                     ; $58fe: $70
	cp   $50                                         ; $58ff: $fe $50

Jump_09a_5901:
	cp   $b0                                         ; $5901: $fe $b0
	or   $b8                                         ; $5903: $f6 $b8
	cp   $c8                                         ; $5905: $fe $c8
	ld   a, [hl]                                     ; $5907: $7e
	add  sp, $7f                                     ; $5908: $e8 $7f
	ld   hl, sp+$5b                                  ; $590a: $f8 $5b
	db   $fc                                         ; $590c: $fc
	cpl                                              ; $590d: $2f
	db   $fc                                         ; $590e: $fc
	cpl                                              ; $590f: $2f
	cp   $6f                                         ; $5910: $fe $6f
	rst  $38                                         ; $5912: $ff
	ld   a, a                                        ; $5913: $7f
	rst  $38                                         ; $5914: $ff
	ld   [hl], a                                     ; $5915: $77
	rst  $30                                         ; $5916: $f7
	pop  bc                                          ; $5917: $c1
	pop  bc                                          ; $5918: $c1
	ret  c                                           ; $5919: $d8

	ldh  a, [hScriptOpcodeParams]                                    ; $591a: $f0 $a0
	ret  nc                                          ; $591c: $d0

	sub  b                                           ; $591d: $90
	ldh  [$e0], a                                    ; $591e: $e0 $e0
	nop                                              ; $5920: $00
	nop                                              ; $5921: $00
	nop                                              ; $5922: $00
	ld   de, $8300                                   ; $5923: $11 $00 $83
	nop                                              ; $5926: $00
	inc  bc                                          ; $5927: $03
	nop                                              ; $5928: $00
	ld   hl, $0000                                   ; $5929: $21 $00 $00
	nop                                              ; $592c: $00
	nop                                              ; $592d: $00
	nop                                              ; $592e: $00
	add  b                                           ; $592f: $80
	nop                                              ; $5930: $00
	add  b                                           ; $5931: $80
	nop                                              ; $5932: $00
	ret  nz                                          ; $5933: $c0

	add  b                                           ; $5934: $80
	ldh  [$c0], a                                    ; $5935: $e0 $c0
	ldh  a, [hScriptOpcodeParams]                                    ; $5937: $f0 $a0
	inc  bc                                          ; $5939: $03
	inc  bc                                          ; $593a: $03
	inc  bc                                          ; $593b: $03
	inc  bc                                          ; $593c: $03
	ld   [bc], a                                     ; $593d: $02
	inc  bc                                          ; $593e: $03
	rlca                                             ; $593f: $07
	ld   [bc], a                                     ; $5940: $02
	ld   [bc], a                                     ; $5941: $02
	ld   bc, $0000                                   ; $5942: $01 $00 $00
	add  h                                           ; $5945: $84
	ld   b, b                                        ; $5946: $40
	ld   b, b                                        ; $5947: $40
	ret  nz                                          ; $5948: $c0

	add  b                                           ; $5949: $80
	nop                                              ; $594a: $00
	ld   [bc], a                                     ; $594b: $02
	nop                                              ; $594c: $00
	nop                                              ; $594d: $00
	nop                                              ; $594e: $00
	nop                                              ; $594f: $00
	nop                                              ; $5950: $00
	nop                                              ; $5951: $00
	nop                                              ; $5952: $00
	nop                                              ; $5953: $00
	nop                                              ; $5954: $00
	ld   bc, $0700                                   ; $5955: $01 $00 $07
	inc  bc                                          ; $5958: $03
	rst  $30                                         ; $5959: $f7
	and  e                                           ; $595a: $a3
	push de                                          ; $595b: $d5
	sub  e                                           ; $595c: $93
	call $1693                                       ; $595d: $cd $93 $16
	add  e                                           ; $5960: $83
	ld   b, a                                        ; $5961: $47
	add  d                                           ; $5962: $82
	dec  c                                           ; $5963: $0d
	ld   b, $0f                                      ; $5964: $06 $0f
	inc  b                                           ; $5966: $04
	ld   c, a                                        ; $5967: $4f
	inc  b                                           ; $5968: $04
	dec  bc                                          ; $5969: $0b
	dec  c                                           ; $596a: $0d
	rra                                              ; $596b: $1f
	dec  bc                                          ; $596c: $0b
	rra                                              ; $596d: $1f
	rra                                              ; $596e: $1f
	ccf                                              ; $596f: $3f
	rra                                              ; $5970: $1f
	ccf                                              ; $5971: $3f
	ccf                                              ; $5972: $3f
	ld   a, e                                        ; $5973: $7b
	ld   a, a                                        ; $5974: $7f
	cp   e                                           ; $5975: $bb
	rst  $38                                         ; $5976: $ff
	cp   e                                           ; $5977: $bb
	rst  $38                                         ; $5978: $ff
	ld   b, $ff                                      ; $5979: $06 $ff
	adc  [hl]                                        ; $597b: $8e
	ei                                               ; $597c: $fb
	adc  a                                           ; $597d: $8f
	ei                                               ; $597e: $fb
	db   $db                                         ; $597f: $db
	cp   $df                                         ; $5980: $fe $df
	ld   hl, sp-$07                                  ; $5982: $f8 $f9
	ld   hl, sp-$07                                  ; $5984: $f8 $f9
	ld   hl, sp-$05                                  ; $5986: $f8 $fb
	and  e                                           ; $5988: $a3
	ld   e, a                                        ; $5989: $5f
	or   $df                                         ; $598a: $f6 $df
	or   $f7                                         ; $598c: $f6 $f7
	ld   a, [$fd2a]                                  ; $598e: $fa $2a $fd
	or   a                                           ; $5991: $b7
	ld   c, b                                        ; $5992: $48
	cp   $00                                         ; $5993: $fe $00
	ld   hl, sp-$10                                  ; $5995: $f8 $f0
	ld   hl, sp-$08                                  ; $5997: $f8 $f8
	rlca                                             ; $5999: $07
	ld   [bc], a                                     ; $599a: $02
	rlca                                             ; $599b: $07
	ld   [bc], a                                     ; $599c: $02
	dec  bc                                          ; $599d: $0b
	inc  b                                           ; $599e: $04
	adc  a                                           ; $599f: $8f
	rlca                                             ; $59a0: $07
	sbc  [hl]                                        ; $59a1: $9e
	add  hl, bc                                      ; $59a2: $09
	dec  de                                          ; $59a3: $1b
	ld   bc, $0010                                   ; $59a4: $01 $10 $00
	inc  bc                                          ; $59a7: $03
	nop                                              ; $59a8: $00
	add  d                                           ; $59a9: $82
	cp   $a2                                         ; $59aa: $fe $a2
	rst  $38                                         ; $59ac: $ff
	and  a                                           ; $59ad: $a7
	rst  $38                                         ; $59ae: $ff
	rst  $20                                         ; $59af: $e7
	rst  $38                                         ; $59b0: $ff
	cp   a                                           ; $59b1: $bf
	rst  $38                                         ; $59b2: $ff
	rst  $38                                         ; $59b3: $ff
	sbc  a                                           ; $59b4: $9f
	inc  hl                                          ; $59b5: $23
	rrca                                             ; $59b6: $0f
	rst  ToBoot                                         ; $59b7: $c7
	inc  bc                                          ; $59b8: $03
	rst  $28                                         ; $59b9: $ef
	ld   [hl], $fc                                   ; $59ba: $36 $fc
	jr   nc, @-$01                                   ; $59bc: $30 $fd

	ld   [hl], b                                     ; $59be: $70
	cp   $50                                         ; $59bf: $fe $50
	cp   $b0                                         ; $59c1: $fe $b0
	or   $b8                                         ; $59c3: $f6 $b8
	cp   $c8                                         ; $59c5: $fe $c8
	ld   a, [hl]                                     ; $59c7: $7e
	add  sp, $02                                     ; $59c8: $e8 $02
	rlca                                             ; $59ca: $07
	rlca                                             ; $59cb: $07
	inc  bc                                          ; $59cc: $03
	ld   [bc], a                                     ; $59cd: $02
	inc  bc                                          ; $59ce: $03
	rlca                                             ; $59cf: $07
	ld   [bc], a                                     ; $59d0: $02
	ld   [bc], a                                     ; $59d1: $02
	ld   bc, $0000                                   ; $59d2: $01 $00 $00
	add  h                                           ; $59d5: $84
	ld   b, b                                        ; $59d6: $40
	ld   b, b                                        ; $59d7: $40
	ret  nz                                          ; $59d8: $c0

	daa                                              ; $59d9: $27
	jp   $e3f5                                       ; $59da: $c3 $f5 $e3


	db   $dd                                         ; $59dd: $dd
	or   e                                           ; $59de: $b3
	ld   b, $83                                      ; $59df: $06 $83
	ld   b, a                                        ; $59e1: $47
	add  d                                           ; $59e2: $82
	dec  c                                           ; $59e3: $0d
	ld   b, $0f                                      ; $59e4: $06 $0f
	inc  b                                           ; $59e6: $04
	ld   c, a                                        ; $59e7: $4f
	inc  b                                           ; $59e8: $04
	ld   b, $ff                                      ; $59e9: $06 $ff
	adc  [hl]                                        ; $59eb: $8e
	ei                                               ; $59ec: $fb
	adc  a                                           ; $59ed: $8f
	ei                                               ; $59ee: $fb
	db   $db                                         ; $59ef: $db
	cp   $df                                         ; $59f0: $fe $df
	ld   hl, sp-$08                                  ; $59f2: $f8 $f8
	ld   hl, sp-$08                                  ; $59f4: $f8 $f8
	ld   hl, sp-$08                                  ; $59f6: $f8 $f8
	and  b                                           ; $59f8: $a0
	ld   e, a                                        ; $59f9: $5f
	or   $df                                         ; $59fa: $f6 $df
	or   $f7                                         ; $59fc: $f6 $f7
	ld   a, [$fd2a]                                  ; $59fe: $fa $2a $fd
	or   a                                           ; $5a01: $b7
	ld   c, b                                        ; $5a02: $48
	ld   h, $00                                      ; $5a03: $26 $00
	nop                                              ; $5a05: $00
	nop                                              ; $5a06: $00
	nop                                              ; $5a07: $00
	nop                                              ; $5a08: $00
	rlca                                             ; $5a09: $07
	ld   [bc], a                                     ; $5a0a: $02
	rlca                                             ; $5a0b: $07
	ld   [bc], a                                     ; $5a0c: $02
	dec  bc                                          ; $5a0d: $0b
	inc  b                                           ; $5a0e: $04
	adc  a                                           ; $5a0f: $8f
	rlca                                             ; $5a10: $07
	sbc  [hl]                                        ; $5a11: $9e
	add  hl, bc                                      ; $5a12: $09
	dec  de                                          ; $5a13: $1b
	ld   bc, $0010                                   ; $5a14: $01 $10 $00
	nop                                              ; $5a17: $00
	nop                                              ; $5a18: $00
	add  d                                           ; $5a19: $82
	cp   $a2                                         ; $5a1a: $fe $a2
	rst  $38                                         ; $5a1c: $ff
	and  a                                           ; $5a1d: $a7
	rst  $38                                         ; $5a1e: $ff
	rst  $20                                         ; $5a1f: $e7
	rst  $38                                         ; $5a20: $ff
	cp   a                                           ; $5a21: $bf
	rst  $38                                         ; $5a22: $ff
	rst  $38                                         ; $5a23: $ff
	sbc  a                                           ; $5a24: $9f
	inc  hl                                          ; $5a25: $23
	rrca                                             ; $5a26: $0f
	rlca                                             ; $5a27: $07
	inc  bc                                          ; $5a28: $03
	jp   hl                                          ; $5a29: $e9


	ld   [hl], $ff                                   ; $5a2a: $36 $ff
	ld   sp, $71fc                                   ; $5a2c: $31 $fc $71
	cp   $50                                         ; $5a2f: $fe $50
	cp   $b0                                         ; $5a31: $fe $b0
	or   $b8                                         ; $5a33: $f6 $b8
	cp   $c8                                         ; $5a35: $fe $c8
	ld   a, [hl]                                     ; $5a37: $7e
	add  sp, $10                                     ; $5a38: $e8 $10
	ld   [$f0e8], sp                                 ; $5a3a: $08 $e8 $f0
	ret  nc                                          ; $5a3d: $d0

	ldh  [$e0], a                                    ; $5a3e: $e0 $e0
	nop                                              ; $5a40: $00
	nop                                              ; $5a41: $00
	nop                                              ; $5a42: $00
	ld   de, $8300                                   ; $5a43: $11 $00 $83
	nop                                              ; $5a46: $00
	inc  bc                                          ; $5a47: $03
	nop                                              ; $5a48: $00
	nop                                              ; $5a49: $00
	nop                                              ; $5a4a: $00
	inc  c                                           ; $5a4b: $0c
	nop                                              ; $5a4c: $00
	ld   [bc], a                                     ; $5a4d: $02
	inc  b                                           ; $5a4e: $04
	ld   bc, $0203                                   ; $5a4f: $01 $03 $02
	ld   bc, $0000                                   ; $5a52: $01 $00 $00
	add  h                                           ; $5a55: $84
	ld   b, b                                        ; $5a56: $40
	ld   b, b                                        ; $5a57: $40
	ret  nz                                          ; $5a58: $c0

	rlca                                             ; $5a59: $07
	inc  bc                                          ; $5a5a: $03
	dec  b                                           ; $5a5b: $05
	inc  bc                                          ; $5a5c: $03
	dec  l                                           ; $5a5d: $2d
	inc  de                                          ; $5a5e: $13
	sub  $e3                                         ; $5a5f: $d6 $e3
	and  a                                           ; $5a61: $a7
	jp   nz, $060d                                   ; $5a62: $c2 $0d $06

	rrca                                             ; $5a65: $0f
	inc  b                                           ; $5a66: $04

jr_09a_5a67:
	ld   c, a                                        ; $5a67: $4f
	inc  b                                           ; $5a68: $04
	add  b                                           ; $5a69: $80
	nop                                              ; $5a6a: $00
	nop                                              ; $5a6b: $00
	nop                                              ; $5a6c: $00
	nop                                              ; $5a6d: $00
	nop                                              ; $5a6e: $00
	nop                                              ; $5a6f: $00
	nop                                              ; $5a70: $00
	nop                                              ; $5a71: $00
	nop                                              ; $5a72: $00
	stop                                             ; $5a73: $10 $00
	jr   c, jr_09a_5a7b                              ; $5a75: $38 $04

	inc  [hl]                                        ; $5a77: $34
	inc  c                                           ; $5a78: $0c
	jr   jr_09a_5a7b                                 ; $5a79: $18 $00

jr_09a_5a7b:
	ld   h, b                                        ; $5a7b: $60
	nop                                              ; $5a7c: $00
	ld   h, d                                        ; $5a7d: $62
	inc  [hl]                                        ; $5a7e: $34
	jr   nc, jr_09a_5a81                             ; $5a7f: $30 $00

jr_09a_5a81:
	jr   jr_09a_5a83                                 ; $5a81: $18 $00

jr_09a_5a83:
	nop                                              ; $5a83: $00
	nop                                              ; $5a84: $00
	nop                                              ; $5a85: $00
	nop                                              ; $5a86: $00
	nop                                              ; $5a87: $00
	nop                                              ; $5a88: $00
	jr   jr_09a_5a8b                                 ; $5a89: $18 $00

jr_09a_5a8b:
	nop                                              ; $5a8b: $00
	nop                                              ; $5a8c: $00
	ld   c, b                                        ; $5a8d: $48
	inc  [hl]                                        ; $5a8e: $34
	ld   b, b                                        ; $5a8f: $40
	inc  h                                           ; $5a90: $24
	inc  h                                           ; $5a91: $24
	jr   jr_09a_5aa4                                 ; $5a92: $18 $10

	nop                                              ; $5a94: $00
	jr   jr_09a_5a97                                 ; $5a95: $18 $00

jr_09a_5a97:
	nop                                              ; $5a97: $00
	nop                                              ; $5a98: $00
	ld   b, $ff                                      ; $5a99: $06 $ff
	adc  [hl]                                        ; $5a9b: $8e
	ei                                               ; $5a9c: $fb
	adc  a                                           ; $5a9d: $8f
	ei                                               ; $5a9e: $fb
	db   $db                                         ; $5a9f: $db
	db   $fc                                         ; $5aa0: $fc
	rst  JumpTable                                         ; $5aa1: $df
	ld   hl, sp-$07                                  ; $5aa2: $f8 $f9

jr_09a_5aa4:
	ei                                               ; $5aa4: $fb
	db   $fd                                         ; $5aa5: $fd
	ld   a, [$a4fa]                                  ; $5aa6: $fa $fa $a4
	ld   e, a                                        ; $5aa9: $5f
	or   $df                                         ; $5aaa: $f6 $df
	or   $f3                                         ; $5aac: $f6 $f3
	cp   $2e                                         ; $5aae: $fe $2e
	ld   sp, hl                                      ; $5ab0: $f9
	ld   [hl], a                                     ; $5ab1: $77
	ld   hl, sp-$62                                  ; $5ab2: $f8 $9e
	ld   a, b                                        ; $5ab4: $78
	jr   jr_09a_5a67                                 ; $5ab5: $18 $b0

	ld   hl, sp-$10                                  ; $5ab7: $f8 $f0
	rlca                                             ; $5ab9: $07
	ld   [bc], a                                     ; $5aba: $02
	rlca                                             ; $5abb: $07
	ld   [bc], a                                     ; $5abc: $02
	dec  bc                                          ; $5abd: $0b
	dec  b                                           ; $5abe: $05
	adc  [hl]                                        ; $5abf: $8e
	rlca                                             ; $5ac0: $07
	sub  [hl]                                        ; $5ac1: $96
	add  hl, bc                                      ; $5ac2: $09
	dec  de                                          ; $5ac3: $1b
	inc  bc                                          ; $5ac4: $03
	ld   [de], a                                     ; $5ac5: $12
	dec  b                                           ; $5ac6: $05
	inc  b                                           ; $5ac7: $04
	ld   [bc], a                                     ; $5ac8: $02
	add  d                                           ; $5ac9: $82
	cp   $a2                                         ; $5aca: $fe $a2
	rst  $38                                         ; $5acc: $ff
	and  a                                           ; $5acd: $a7
	rst  $38                                         ; $5ace: $ff
	rst  $20                                         ; $5acf: $e7
	rst  $38                                         ; $5ad0: $ff
	cp   a                                           ; $5ad1: $bf
	rst  $38                                         ; $5ad2: $ff
	cp   a                                           ; $5ad3: $bf
	rst  JumpTable                                         ; $5ad4: $df
	inc  bc                                          ; $5ad5: $03
	rst  $28                                         ; $5ad6: $ef
	rst  $20                                         ; $5ad7: $e7

jr_09a_5ad8:
	and  e                                           ; $5ad8: $a3
	db   $ec                                         ; $5ad9: $ec
	jr   nc, jr_09a_5ad8                             ; $5ada: $30 $fc

	jr   nc, @-$01                                   ; $5adc: $30 $fd

	ld   [hl], b                                     ; $5ade: $70
	cp   $50                                         ; $5adf: $fe $50
	cp   $b0                                         ; $5ae1: $fe $b0
	or   $b8                                         ; $5ae3: $f6 $b8
	cp   $c8                                         ; $5ae5: $fe $c8
	ld   a, [hl]                                     ; $5ae7: $7e
	add  sp, -$09                                    ; $5ae8: $e8 $f7
	sub  e                                           ; $5aea: $93
	push de                                          ; $5aeb: $d5
	sub  e                                           ; $5aec: $93
	db   $dd                                         ; $5aed: $dd
	add  e                                           ; $5aee: $83
	ld   d, $83                                      ; $5aef: $16 $83
	ld   b, a                                        ; $5af1: $47
	add  d                                           ; $5af2: $82
	dec  c                                           ; $5af3: $0d
	ld   b, $0f                                      ; $5af4: $06 $0f
	inc  b                                           ; $5af6: $04
	ld   c, a                                        ; $5af7: $4f
	inc  b                                           ; $5af8: $04
	ld   b, $ff                                      ; $5af9: $06 $ff
	adc  [hl]                                        ; $5afb: $8e
	ei                                               ; $5afc: $fb
	adc  a                                           ; $5afd: $8f
	ei                                               ; $5afe: $fb
	db   $db                                         ; $5aff: $db
	db   $fc                                         ; $5b00: $fc
	sbc  $f8                                         ; $5b01: $de $f8
	ld   hl, sp-$08                                  ; $5b03: $f8 $f8
	ld   sp, hl                                      ; $5b05: $f9
	ld   hl, sp-$05                                  ; $5b06: $f8 $fb
	and  e                                           ; $5b08: $a3
	ld   e, a                                        ; $5b09: $5f
	or   $df                                         ; $5b0a: $f6 $df
	or   $f3                                         ; $5b0c: $f6 $f3
	cp   $2e                                         ; $5b0e: $fe $2e
	ld   sp, hl                                      ; $5b10: $f9
	or   e                                           ; $5b11: $b3
	ld   c, b                                        ; $5b12: $48
	ldh  a, [rP1]                                    ; $5b13: $f0 $00
	ld   hl, sp-$10                                  ; $5b15: $f8 $f0
	ld   hl, sp-$08                                  ; $5b17: $f8 $f8
	rlca                                             ; $5b19: $07
	ld   [bc], a                                     ; $5b1a: $02
	rlca                                             ; $5b1b: $07
	ld   [bc], a                                     ; $5b1c: $02
	dec  bc                                          ; $5b1d: $0b
	dec  b                                           ; $5b1e: $05
	adc  [hl]                                        ; $5b1f: $8e
	rlca                                             ; $5b20: $07

Call_09a_5b21:
	sbc  [hl]                                        ; $5b21: $9e
	add  hl, bc                                      ; $5b22: $09
	dec  de                                          ; $5b23: $1b
	ld   bc, $0010                                   ; $5b24: $01 $10 $00
	inc  bc                                          ; $5b27: $03
	nop                                              ; $5b28: $00
	ld   b, $ff                                      ; $5b29: $06 $ff
	adc  [hl]                                        ; $5b2b: $8e
	ei                                               ; $5b2c: $fb
	adc  a                                           ; $5b2d: $8f
	ei                                               ; $5b2e: $fb
	db   $db                                         ; $5b2f: $db
	db   $fc                                         ; $5b30: $fc
	sbc  $f8                                         ; $5b31: $de $f8
	ld   hl, sp-$08                                  ; $5b33: $f8 $f8
	ld   hl, sp-$08                                  ; $5b35: $f8 $f8
	ld   hl, sp-$60                                  ; $5b37: $f8 $a0
	ld   e, a                                        ; $5b39: $5f
	or   $df                                         ; $5b3a: $f6 $df
	or   $f3                                         ; $5b3c: $f6 $f3
	cp   $2e                                         ; $5b3e: $fe $2e
	ld   sp, hl                                      ; $5b40: $f9
	or   e                                           ; $5b41: $b3
	ld   c, b                                        ; $5b42: $48
	jr   nz, jr_09a_5b45                             ; $5b43: $20 $00

jr_09a_5b45:
	nop                                              ; $5b45: $00
	nop                                              ; $5b46: $00
	nop                                              ; $5b47: $00
	nop                                              ; $5b48: $00
	rlca                                             ; $5b49: $07
	ld   [bc], a                                     ; $5b4a: $02
	rlca                                             ; $5b4b: $07
	ld   [bc], a                                     ; $5b4c: $02
	dec  bc                                          ; $5b4d: $0b
	dec  b                                           ; $5b4e: $05
	adc  [hl]                                        ; $5b4f: $8e
	rlca                                             ; $5b50: $07
	sub  [hl]                                        ; $5b51: $96
	add  hl, bc                                      ; $5b52: $09
	dec  de                                          ; $5b53: $1b
	ld   bc, $0010                                   ; $5b54: $01 $10 $00
	nop                                              ; $5b57: $00
	nop                                              ; $5b58: $00
	jr   jr_09a_5b5b                                 ; $5b59: $18 $00

jr_09a_5b5b:
	ld   h, $40                                      ; $5b5b: $26 $40
	ld   e, d                                        ; $5b5d: $5a
	inc  h                                           ; $5b5e: $24
	jr   nc, jr_09a_5b61                             ; $5b5f: $30 $00

jr_09a_5b61:
	jr   jr_09a_5b63                                 ; $5b61: $18 $00

jr_09a_5b63:
	nop                                              ; $5b63: $00
	nop                                              ; $5b64: $00
	nop                                              ; $5b65: $00
	nop                                              ; $5b66: $00
	nop                                              ; $5b67: $00
	nop                                              ; $5b68: $00
	jr   jr_09a_5b6b                                 ; $5b69: $18 $00

jr_09a_5b6b:
	ld   b, $60                                      ; $5b6b: $06 $60
	ld   a, [de]                                     ; $5b6d: $1a
	ld   b, h                                        ; $5b6e: $44
	ld   c, b                                        ; $5b6f: $48
	inc  b                                           ; $5b70: $04
	ld   b, h                                        ; $5b71: $44
	jr   z, jr_09a_5b9c                              ; $5b72: $28 $28

	db   $10                                         ; $5b74: $10
	jr   nc, jr_09a_5b77                             ; $5b75: $30 $00

jr_09a_5b77:
	nop                                              ; $5b77: $00
	nop                                              ; $5b78: $00
	ld   b, $ff                                      ; $5b79: $06 $ff
	adc  [hl]                                        ; $5b7b: $8e
	ei                                               ; $5b7c: $fb
	adc  e                                           ; $5b7d: $8b
	rst  $38                                         ; $5b7e: $ff
	rst  JumpTable                                         ; $5b7f: $df
	ld   a, [$f8df]                                  ; $5b80: $fa $df $f8
	ei                                               ; $5b83: $fb
	ld   sp, hl                                      ; $5b84: $f9
	rst  $38                                         ; $5b85: $ff
	ld   a, [$a6fc]                                  ; $5b86: $fa $fc $a6
	ld   e, a                                        ; $5b89: $5f
	or   $df                                         ; $5b8a: $f6 $df
	or   $ff                                         ; $5b8c: $f6 $ff
	ldh  a, [c]                                      ; $5b8e: $f2
	ld   a, [hl]                                     ; $5b8f: $7e
	ld   sp, hl                                      ; $5b90: $f9
	ld   [hl], a                                     ; $5b91: $77
	db   $fc                                         ; $5b92: $fc
	sbc  [hl]                                        ; $5b93: $9e
	ld   hl, sp+$18                                  ; $5b94: $f8 $18
	or   b                                           ; $5b96: $b0
	ld   hl, sp-$10                                  ; $5b97: $f8 $f0
	rlca                                             ; $5b99: $07
	ld   [bc], a                                     ; $5b9a: $02
	rlca                                             ; $5b9b: $07

jr_09a_5b9c:
	ld   [bc], a                                     ; $5b9c: $02
	dec  bc                                          ; $5b9d: $0b
	inc  b                                           ; $5b9e: $04
	adc  a                                           ; $5b9f: $8f
	nop                                              ; $5ba0: $00
	sbc  [hl]                                        ; $5ba1: $9e
	inc  bc                                          ; $5ba2: $03
	rra                                              ; $5ba3: $1f
	dec  c                                           ; $5ba4: $0d
	ld   [de], a                                     ; $5ba5: $12
	rlca                                             ; $5ba6: $07
	inc  b                                           ; $5ba7: $04
	ld   [bc], a                                     ; $5ba8: $02
	ld   b, $ff                                      ; $5ba9: $06 $ff
	adc  [hl]                                        ; $5bab: $8e
	ei                                               ; $5bac: $fb
	adc  e                                           ; $5bad: $8b
	rst  $38                                         ; $5bae: $ff
	rst  JumpTable                                         ; $5baf: $df
	ld   a, [$f8df]                                  ; $5bb0: $fa $df $f8
	ld   hl, sp-$08                                  ; $5bb3: $f8 $f8
	ld   sp, hl                                      ; $5bb5: $f9
	ld   hl, sp-$05                                  ; $5bb6: $f8 $fb
	and  e                                           ; $5bb8: $a3
	ld   e, a                                        ; $5bb9: $5f
	or   $df                                         ; $5bba: $f6 $df
	or   $ff                                         ; $5bbc: $f6 $ff
	ldh  a, [c]                                      ; $5bbe: $f2
	ld   a, [hl]                                     ; $5bbf: $7e
	ld   sp, hl                                      ; $5bc0: $f9
	or   a                                           ; $5bc1: $b7
	ld   c, h                                        ; $5bc2: $4c
	or   $00                                         ; $5bc3: $f6 $00
	ld   hl, sp-$10                                  ; $5bc5: $f8 $f0
	ld   hl, sp-$08                                  ; $5bc7: $f8 $f8
	rlca                                             ; $5bc9: $07
	ld   [bc], a                                     ; $5bca: $02
	rlca                                             ; $5bcb: $07
	ld   [bc], a                                     ; $5bcc: $02
	dec  bc                                          ; $5bcd: $0b
	inc  b                                           ; $5bce: $04
	adc  a                                           ; $5bcf: $8f
	nop                                              ; $5bd0: $00
	sbc  [hl]                                        ; $5bd1: $9e
	inc  bc                                          ; $5bd2: $03
	rra                                              ; $5bd3: $1f
	dec  c                                           ; $5bd4: $0d
	stop                                             ; $5bd5: $10 $00
	inc  bc                                          ; $5bd7: $03
	nop                                              ; $5bd8: $00
	ld   b, $ff                                      ; $5bd9: $06 $ff
	adc  [hl]                                        ; $5bdb: $8e
	ei                                               ; $5bdc: $fb
	adc  e                                           ; $5bdd: $8b
	rst  $38                                         ; $5bde: $ff
	rst  JumpTable                                         ; $5bdf: $df
	ld   a, [$f8df]                                  ; $5be0: $fa $df $f8
	ld   hl, sp-$08                                  ; $5be3: $f8 $f8
	ld   hl, sp-$08                                  ; $5be5: $f8 $f8
	ld   hl, sp-$60                                  ; $5be7: $f8 $a0
	ld   e, a                                        ; $5be9: $5f
	or   $df                                         ; $5bea: $f6 $df
	or   $ff                                         ; $5bec: $f6 $ff
	ldh  a, [c]                                      ; $5bee: $f2
	ld   a, [hl]                                     ; $5bef: $7e
	ld   sp, hl                                      ; $5bf0: $f9
	or   a                                           ; $5bf1: $b7
	ld   c, h                                        ; $5bf2: $4c
	ld   h, $00                                      ; $5bf3: $26 $00
	nop                                              ; $5bf5: $00
	nop                                              ; $5bf6: $00

jr_09a_5bf7:
	nop                                              ; $5bf7: $00
	nop                                              ; $5bf8: $00
	rlca                                             ; $5bf9: $07
	ld   [bc], a                                     ; $5bfa: $02
	rlca                                             ; $5bfb: $07
	ld   [bc], a                                     ; $5bfc: $02
	dec  bc                                          ; $5bfd: $0b
	inc  b                                           ; $5bfe: $04
	adc  a                                           ; $5bff: $8f
	nop                                              ; $5c00: $00
	sbc  [hl]                                        ; $5c01: $9e
	inc  bc                                          ; $5c02: $03
	rra                                              ; $5c03: $1f
	dec  c                                           ; $5c04: $0d
	stop                                             ; $5c05: $10 $00
	nop                                              ; $5c07: $00
	nop                                              ; $5c08: $00
	jr   jr_09a_5c0b                                 ; $5c09: $18 $00

jr_09a_5c0b:
	nop                                              ; $5c0b: $00
	nop                                              ; $5c0c: $00
	ld   [hl], d                                     ; $5c0d: $72
	inc  h                                           ; $5c0e: $24
	jr   nc, jr_09a_5c11                             ; $5c0f: $30 $00

jr_09a_5c11:
	jr   jr_09a_5c13                                 ; $5c11: $18 $00

jr_09a_5c13:
	nop                                              ; $5c13: $00
	nop                                              ; $5c14: $00
	nop                                              ; $5c15: $00
	nop                                              ; $5c16: $00
	nop                                              ; $5c17: $00
	nop                                              ; $5c18: $00
	jr   jr_09a_5c1b                                 ; $5c19: $18 $00

jr_09a_5c1b:
	nop                                              ; $5c1b: $00
	nop                                              ; $5c1c: $00
	ld   c, d                                        ; $5c1d: $4a
	inc  h                                           ; $5c1e: $24
	inc  h                                           ; $5c1f: $24
	ld   b, d                                        ; $5c20: $42
	nop                                              ; $5c21: $00
	ld   b, d                                        ; $5c22: $42
	ld   h, d                                        ; $5c23: $62
	inc  b                                           ; $5c24: $04
	inc  h                                           ; $5c25: $24
	jr   jr_09a_5c28                                 ; $5c26: $18 $00

jr_09a_5c28:
	nop                                              ; $5c28: $00
	ld   b, $ff                                      ; $5c29: $06 $ff
	adc  [hl]                                        ; $5c2b: $8e
	ei                                               ; $5c2c: $fb
	adc  a                                           ; $5c2d: $8f
	ei                                               ; $5c2e: $fb
	rst  JumpTable                                         ; $5c2f: $df
	ld   sp, hl                                      ; $5c30: $f9
	reti                                             ; $5c31: $d9


	rst  $38                                         ; $5c32: $ff
	ei                                               ; $5c33: $fb
	ld   hl, sp-$01                                  ; $5c34: $f8 $ff
	ld   sp, hl                                      ; $5c36: $f9
	cp   $a2                                         ; $5c37: $fe $a2
	ld   e, a                                        ; $5c39: $5f
	or   $df                                         ; $5c3a: $f6 $df
	or   $f3                                         ; $5c3c: $f6 $f3
	cp   $ee                                         ; $5c3e: $fe $ee
	ld   sp, hl                                      ; $5c40: $f9
	or   a                                           ; $5c41: $b7
	ld   c, b                                        ; $5c42: $48
	cp   $f8                                         ; $5c43: $fe $f8
	jr   jr_09a_5bf7                                 ; $5c45: $18 $b0

	ld   hl, sp-$10                                  ; $5c47: $f8 $f0
	rlca                                             ; $5c49: $07
	ld   [bc], a                                     ; $5c4a: $02
	rlca                                             ; $5c4b: $07
	ld   [bc], a                                     ; $5c4c: $02
	dec  bc                                          ; $5c4d: $0b
	inc  c                                           ; $5c4e: $0c
	adc  a                                           ; $5c4f: $8f
	rlca                                             ; $5c50: $07
	sbc  [hl]                                        ; $5c51: $9e
	ld   bc, $011b                                   ; $5c52: $01 $1b $01
	ld   d, $03                                      ; $5c55: $16 $03
	nop                                              ; $5c57: $00
	ld   b, $82                                      ; $5c58: $06 $82
	cp   $a2                                         ; $5c5a: $fe $a2
	rst  $38                                         ; $5c5c: $ff
	and  a                                           ; $5c5d: $a7
	rst  $38                                         ; $5c5e: $ff
	rst  $20                                         ; $5c5f: $e7
	rst  $38                                         ; $5c60: $ff
	rst  $38                                         ; $5c61: $ff
	rst  $38                                         ; $5c62: $ff
	rst  $38                                         ; $5c63: $ff
	cp   a                                           ; $5c64: $bf
	ld   h, e                                        ; $5c65: $63
	adc  a                                           ; $5c66: $8f
	rst  $20                                         ; $5c67: $e7
	jp   $36ec                                       ; $5c68: $c3 $ec $36


	ld   hl, sp+$34                                  ; $5c6b: $f8 $34
	db   $fd                                         ; $5c6d: $fd
	ld   [hl], b                                     ; $5c6e: $70
	cp   $50                                         ; $5c6f: $fe $50
	cp   $b0                                         ; $5c71: $fe $b0
	or   $b8                                         ; $5c73: $f6 $b8
	cp   $c8                                         ; $5c75: $fe $c8
	ld   a, [hl]                                     ; $5c77: $7e
	add  sp, -$09                                    ; $5c78: $e8 $f7
	db   $e3                                         ; $5c7a: $e3
	push de                                          ; $5c7b: $d5
	or   e                                           ; $5c7c: $b3
	call $1693                                       ; $5c7d: $cd $93 $16
	add  e                                           ; $5c80: $83
	ld   b, a                                        ; $5c81: $47
	add  d                                           ; $5c82: $82
	dec  c                                           ; $5c83: $0d
	ld   b, $0f                                      ; $5c84: $06 $0f
	inc  b                                           ; $5c86: $04
	ld   c, a                                        ; $5c87: $4f
	inc  b                                           ; $5c88: $04
	ld   b, $ff                                      ; $5c89: $06 $ff
	adc  [hl]                                        ; $5c8b: $8e
	ei                                               ; $5c8c: $fb
	adc  a                                           ; $5c8d: $8f
	ei                                               ; $5c8e: $fb
	rst  JumpTable                                         ; $5c8f: $df
	ld   sp, hl                                      ; $5c90: $f9
	reti                                             ; $5c91: $d9


	rst  $38                                         ; $5c92: $ff
	ld   sp, hl                                      ; $5c93: $f9
	ld   hl, sp-$07                                  ; $5c94: $f8 $f9
	ld   hl, sp-$05                                  ; $5c96: $f8 $fb
	and  c                                           ; $5c98: $a1
	ld   e, a                                        ; $5c99: $5f
	or   $df                                         ; $5c9a: $f6 $df
	or   $f3                                         ; $5c9c: $f6 $f3
	cp   $ee                                         ; $5c9e: $fe $ee
	ld   sp, hl                                      ; $5ca0: $f9
	or   e                                           ; $5ca1: $b3
	ld   c, b                                        ; $5ca2: $48
	ret  nz                                          ; $5ca3: $c0

	nop                                              ; $5ca4: $00
	ldh  a, [rP1]                                    ; $5ca5: $f0 $00
	ld   hl, sp-$10                                  ; $5ca7: $f8 $f0
	rlca                                             ; $5ca9: $07
	ld   [bc], a                                     ; $5caa: $02
	rlca                                             ; $5cab: $07
	ld   [bc], a                                     ; $5cac: $02
	dec  bc                                          ; $5cad: $0b
	inc  c                                           ; $5cae: $0c
	adc  a                                           ; $5caf: $8f
	rlca                                             ; $5cb0: $07
	sbc  [hl]                                        ; $5cb1: $9e
	ld   bc, $011b                                   ; $5cb2: $01 $1b $01
	stop                                             ; $5cb5: $10 $00
	nop                                              ; $5cb7: $00
	nop                                              ; $5cb8: $00
	add  d                                           ; $5cb9: $82
	cp   $a2                                         ; $5cba: $fe $a2
	rst  $38                                         ; $5cbc: $ff
	and  a                                           ; $5cbd: $a7
	rst  $38                                         ; $5cbe: $ff
	rst  $20                                         ; $5cbf: $e7
	rst  $38                                         ; $5cc0: $ff
	rst  $38                                         ; $5cc1: $ff
	rst  $38                                         ; $5cc2: $ff
	rst  $38                                         ; $5cc3: $ff
	cp   a                                           ; $5cc4: $bf
	inc  hl                                          ; $5cc5: $23
	rrca                                             ; $5cc6: $0f
	rlca                                             ; $5cc7: $07
	inc  bc                                          ; $5cc8: $03
	rst  $28                                         ; $5cc9: $ef
	inc  sp                                          ; $5cca: $33
	cp   $36                                         ; $5ccb: $fe $36
	db   $fd                                         ; $5ccd: $fd
	ld   [hl], b                                     ; $5cce: $70
	cp   $50                                         ; $5ccf: $fe $50
	cp   $b0                                         ; $5cd1: $fe $b0
	or   $b8                                         ; $5cd3: $f6 $b8
	cp   $c8                                         ; $5cd5: $fe $c8
	ld   a, [hl]                                     ; $5cd7: $7e
	add  sp, -$28                                    ; $5cd8: $e8 $d8
	ld   hl, sp-$60                                  ; $5cda: $f8 $a0
	ret  nc                                          ; $5cdc: $d0

	sub  b                                           ; $5cdd: $90
	ldh  [$e0], a                                    ; $5cde: $e0 $e0
	nop                                              ; $5ce0: $00
	nop                                              ; $5ce1: $00
	nop                                              ; $5ce2: $00
	ld   de, $8300                                   ; $5ce3: $11 $00 $83
	nop                                              ; $5ce6: $00
	inc  bc                                          ; $5ce7: $03
	nop                                              ; $5ce8: $00
	rlca                                             ; $5ce9: $07
	nop                                              ; $5cea: $00
	ld   [bc], a                                     ; $5ceb: $02
	rlca                                             ; $5cec: $07
	ld   [bc], a                                     ; $5ced: $02
	inc  bc                                          ; $5cee: $03
	rlca                                             ; $5cef: $07
	ld   [bc], a                                     ; $5cf0: $02
	ld   [bc], a                                     ; $5cf1: $02
	ld   bc, $0000                                   ; $5cf2: $01 $00 $00
	add  h                                           ; $5cf5: $84
	ld   b, b                                        ; $5cf6: $40
	ld   b, b                                        ; $5cf7: $40
	ret  nz                                          ; $5cf8: $c0

	rst  ToBoot                                         ; $5cf9: $c7
	inc  bc                                          ; $5cfa: $03
	ld   h, l                                        ; $5cfb: $65
	jp   $e3fd                                       ; $5cfc: $c3 $fd $e3


	ld   d, $93                                      ; $5cff: $16 $93
	ld   b, a                                        ; $5d01: $47
	add  d                                           ; $5d02: $82
	dec  c                                           ; $5d03: $0d
	ld   b, $0f                                      ; $5d04: $06 $0f
	inc  b                                           ; $5d06: $04
	ld   c, a                                        ; $5d07: $4f
	inc  b                                           ; $5d08: $04
	ld   b, $ff                                      ; $5d09: $06 $ff
	adc  [hl]                                        ; $5d0b: $8e
	ei                                               ; $5d0c: $fb
	adc  a                                           ; $5d0d: $8f
	ei                                               ; $5d0e: $fb
	rst  JumpTable                                         ; $5d0f: $df
	ld   sp, hl                                      ; $5d10: $f9
	reti                                             ; $5d11: $d9


	rst  $38                                         ; $5d12: $ff
	ei                                               ; $5d13: $fb
	ld   hl, sp-$08                                  ; $5d14: $f8 $f8
	ld   hl, sp-$08                                  ; $5d16: $f8 $f8
	and  b                                           ; $5d18: $a0
	ld   e, a                                        ; $5d19: $5f
	or   $df                                         ; $5d1a: $f6 $df
	or   $f3                                         ; $5d1c: $f6 $f3
	cp   $ee                                         ; $5d1e: $fe $ee
	ld   sp, hl                                      ; $5d20: $f9
	or   e                                           ; $5d21: $b3
	ld   c, b                                        ; $5d22: $48
	ret  nz                                          ; $5d23: $c0

	nop                                              ; $5d24: $00
	nop                                              ; $5d25: $00
	nop                                              ; $5d26: $00
	nop                                              ; $5d27: $00
	nop                                              ; $5d28: $00
	jr   jr_09a_5d2b                                 ; $5d29: $18 $00

jr_09a_5d2b:
	nop                                              ; $5d2b: $00
	nop                                              ; $5d2c: $00
	ld   l, d                                        ; $5d2d: $6a
	inc  [hl]                                        ; $5d2e: $34
	jr   nc, jr_09a_5d31                             ; $5d2f: $30 $00

jr_09a_5d31:
	jr   jr_09a_5d33                                 ; $5d31: $18 $00

jr_09a_5d33:
	nop                                              ; $5d33: $00
	nop                                              ; $5d34: $00
	nop                                              ; $5d35: $00
	nop                                              ; $5d36: $00
	nop                                              ; $5d37: $00
	nop                                              ; $5d38: $00
	jr   jr_09a_5d3b                                 ; $5d39: $18 $00

jr_09a_5d3b:
	nop                                              ; $5d3b: $00
	nop                                              ; $5d3c: $00
	jr   z, @+$16                                    ; $5d3d: $28 $14

	ld   b, b                                        ; $5d3f: $40
	ld   [hl+], a                                    ; $5d40: $22
	ld   b, h                                        ; $5d41: $44
	ld   [hl+], a                                    ; $5d42: $22
	ld   [hl], $08                                   ; $5d43: $36 $08
	stop                                             ; $5d45: $10 $00
	jr   jr_09a_5d49                                 ; $5d47: $18 $00

jr_09a_5d49:
	ld   b, l                                        ; $5d49: $45
	ld   bc, $0094                                   ; $5d4a: $01 $94 $00
	ld   a, [bc]                                     ; $5d4d: $0a
	inc  bc                                          ; $5d4e: $03
	nop                                              ; $5d4f: $00
	dec  c                                           ; $5d50: $0d
	ld   bc, $0b1b                                   ; $5d51: $01 $1b $0b
	ld   [hl], $16                                   ; $5d54: $36 $16
	db   $f4                                         ; $5d56: $f4
	ld   [hl], $fd                                   ; $5d57: $36 $fd
	adc  a                                           ; $5d59: $8f
	nop                                              ; $5d5a: $00
	dec  b                                           ; $5d5b: $05
	rlca                                             ; $5d5c: $07
	nop                                              ; $5d5d: $00
	ld   a, a                                        ; $5d5e: $7f
	rlca                                             ; $5d5f: $07
	call z, $804c                                    ; $5d60: $cc $4c $80
	sub  e                                           ; $5d63: $93
	add  b                                           ; $5d64: $80
	daa                                              ; $5d65: $27
	inc  b                                           ; $5d66: $04
	ld   b, h                                        ; $5d67: $44
	ld   c, h                                        ; $5d68: $4c
	nop                                              ; $5d69: $00
	sbc  b                                           ; $5d6a: $98
	ld   l, a                                        ; $5d6b: $6f
	add  l                                           ; $5d6c: $85
	nop                                              ; $5d6d: $00
	ld   b, $03                                      ; $5d6e: $06 $03
	nop                                              ; $5d70: $00
	inc  b                                           ; $5d71: $04
	nop                                              ; $5d72: $00
	ld   [$1b01], sp                                 ; $5d73: $08 $01 $1b
	add  b                                           ; $5d76: $80
	dec  bc                                          ; $5d77: $0b
	ld   b, $0a                                      ; $5d78: $06 $0a
	db   $e4                                         ; $5d7a: $e4
	inc  b                                           ; $5d7b: $04
	nop                                              ; $5d7c: $00
	ld   bc, $feff                                   ; $5d7d: $01 $ff $fe
	add  b                                           ; $5d80: $80
	ret  nz                                          ; $5d81: $c0

	add  b                                           ; $5d82: $80
	rlca                                             ; $5d83: $07
	add  b                                           ; $5d84: $80
	rra                                              ; $5d85: $1f
	ld   [bc], a                                     ; $5d86: $02
	ld   c, b                                        ; $5d87: $48
	ld   a, b                                        ; $5d88: $78
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d89: $cf
	add  l                                           ; $5d8a: $85
	nop                                              ; $5d8b: $00
	add  hl, bc                                      ; $5d8c: $09
	rst  $20                                         ; $5d8d: $e7
	nop                                              ; $5d8e: $00
	ld   e, c                                        ; $5d8f: $59
	rst  ToBoot                                         ; $5d90: $c7
	ld   bc, $089f                                   ; $5d91: $01 $9f $08
	inc  a                                           ; $5d94: $3c
	ld   e, h                                        ; $5d95: $5c
	ld   [hl], b                                     ; $5d96: $70

jr_09a_5d97:
	add  b                                           ; $5d97: $80
	ld   h, a                                        ; $5d98: $67
	inc  c                                           ; $5d99: $0c
	adc  b                                           ; $5d9a: $88
	ld   [$03b3], sp                                 ; $5d9b: $08 $b3 $03
	inc  a                                           ; $5d9e: $3c
	nop                                              ; $5d9f: $00
	add  sp, -$20                                    ; $5da0: $e8 $e0
	add  a                                           ; $5da2: $87
	add  b                                           ; $5da3: $80
	ld   a, [hl-]                                    ; $5da4: $3a

jr_09a_5da5:
	jr   c, jr_09a_5da5                              ; $5da5: $38 $fe

	add  l                                           ; $5da7: $85
	nop                                              ; $5da8: $00
	ld   [bc], a                                     ; $5da9: $02
	ret  nz                                          ; $5daa: $c0

	nop                                              ; $5dab: $00
	ldh  [$81], a                                    ; $5dac: $e0 $81
	ret  nz                                          ; $5dae: $c0

	nop                                              ; $5daf: $00
	db   $10                                         ; $5db0: $10
	add  c                                           ; $5db1: $81
	nop                                              ; $5db2: $00
	inc  bc                                          ; $5db3: $03
	add  sp, -$20                                    ; $5db4: $e8 $e0
	inc  b                                           ; $5db6: $04
	nop                                              ; $5db7: $00
	add  b                                           ; $5db8: $80
	ldh  a, [rAUD1LEN]                               ; $5db9: $f0 $11
	or   $fc                                         ; $5dbb: $f6 $fc
	ld   de, $0a1e                                   ; $5dbd: $11 $1e $0a
	rrca                                             ; $5dc0: $0f
	ld   [bc], a                                     ; $5dc1: $02
	inc  bc                                          ; $5dc2: $03
	ld   a, l                                        ; $5dc3: $7d
	nop                                              ; $5dc4: $00
	ret  nz                                          ; $5dc5: $c0

	add  b                                           ; $5dc6: $80
	ld   h, b                                        ; $5dc7: $60
	ret  nz                                          ; $5dc8: $c0

	or   b                                           ; $5dc9: $b0
	ld   h, b                                        ; $5dca: $60
	ld   hl, sp-$50                                  ; $5dcb: $f8 $b0
	add  b                                           ; $5dcd: $80
	ret  nc                                          ; $5dce: $d0

	ld   bc, $585c                                   ; $5dcf: $01 $5c $58
	add  b                                           ; $5dd2: $80
	jr   z, jr_09a_5dd5                              ; $5dd3: $28 $00

jr_09a_5dd5:
	ld   l, $81                                      ; $5dd5: $2e $81
	inc  l                                           ; $5dd7: $2c
	nop                                              ; $5dd8: $00
	sub  a                                           ; $5dd9: $97
	add  e                                           ; $5dda: $83
	sub  [hl]                                        ; $5ddb: $96
	add  d                                           ; $5ddc: $82
	ld   d, [hl]                                     ; $5ddd: $56
	nop                                              ; $5dde: $00
	ld   d, l                                        ; $5ddf: $55
	add  c                                           ; $5de0: $81
	ld   d, h                                        ; $5de1: $54
	ld   bc, $080a                                   ; $5de2: $01 $0a $08
	add  b                                           ; $5de5: $80
	adc  b                                           ; $5de6: $88
	ld   bc, $8084                                   ; $5de7: $01 $84 $80
	add  d                                           ; $5dea: $82
	ret  nz                                          ; $5deb: $c0

	nop                                              ; $5dec: $00
	ret  z                                           ; $5ded: $c8

	add  c                                           ; $5dee: $81
	ret  nz                                          ; $5def: $c0

jr_09a_5df0:
	dec  c                                           ; $5df0: $0d
	ret  nc                                          ; $5df1: $d0

	ret  nz                                          ; $5df2: $c0

	pop  bc                                          ; $5df3: $c1
	ret  nz                                          ; $5df4: $c0

	rst  ToBoot                                         ; $5df5: $c7
	pop  bc                                          ; $5df6: $c1
	adc  $c6                                         ; $5df7: $ce $c6
	cp   b                                           ; $5df9: $b8
	adc  h                                           ; $5dfa: $8c
	or   h                                           ; $5dfb: $b4
	sbc  b                                           ; $5dfc: $98
	ld   [$8090], sp                                 ; $5dfd: $08 $90 $80
	or   c                                           ; $5e00: $b1
	nop                                              ; $5e01: $00
	ld   l, a                                        ; $5e02: $6f
	adc  c                                           ; $5e03: $89
	nop                                              ; $5e04: $00
	add  hl, bc                                      ; $5e05: $09
	ldh  [rP1], a                                    ; $5e06: $e0 $00
	ld   hl, sp-$20                                  ; $5e08: $f8 $e0
	inc  e                                           ; $5e0a: $1c
	jr   jr_09a_5e1b                                 ; $5e0b: $18 $0e

	inc  c                                           ; $5e0d: $0c
	inc  bc                                          ; $5e0e: $03
	ld   [bc], a                                     ; $5e0f: $02
	add  b                                           ; $5e10: $80
	pop  bc                                          ; $5e11: $c1
	add  b                                           ; $5e12: $80
	pop  af                                          ; $5e13: $f1
	add  b                                           ; $5e14: $80
	jr   jr_09a_5d97                                 ; $5e15: $18 $80

	ld   [$2480], sp                                 ; $5e17: $08 $80 $24
	nop                                              ; $5e1a: $00

jr_09a_5e1b:
	rst  $38                                         ; $5e1b: $ff
	add  e                                           ; $5e1c: $83
	nop                                              ; $5e1d: $00
	inc  b                                           ; $5e1e: $04
	add  b                                           ; $5e1f: $80
	nop                                              ; $5e20: $00
	ld   b, b                                        ; $5e21: $40
	nop                                              ; $5e22: $00
	and  b                                           ; $5e23: $a0
	add  c                                           ; $5e24: $81
	add  b                                           ; $5e25: $80
	nop                                              ; $5e26: $00
	or   b                                           ; $5e27: $b0
	add  e                                           ; $5e28: $83
	and  b                                           ; $5e29: $a0
	add  d                                           ; $5e2a: $82
	jr   nz, jr_09a_5e2d                             ; $5e2b: $20 $00

jr_09a_5e2d:
	ld   d, b                                        ; $5e2d: $50
	add  c                                           ; $5e2e: $81
	ld   b, b                                        ; $5e2f: $40
	dec  b                                           ; $5e30: $05
	and  b                                           ; $5e31: $a0
	add  b                                           ; $5e32: $80
	ld   b, b                                        ; $5e33: $40
	nop                                              ; $5e34: $00
	cp   e                                           ; $5e35: $bb
	call nz, $0880                                   ; $5e36: $c4 $80 $08
	add  b                                           ; $5e39: $80
	ld   a, [de]                                     ; $5e3a: $1a
	add  b                                           ; $5e3b: $80
	ldh  a, [c]                                      ; $5e3c: $f2
	add  b                                           ; $5e3d: $80
	call nz, $2c80                                   ; $5e3e: $c4 $80 $2c
	add  b                                           ; $5e41: $80
	ld   e, b                                        ; $5e42: $58
	add  b                                           ; $5e43: $80
	or   c                                           ; $5e44: $b1
	add  b                                           ; $5e45: $80
	ld   b, $06                                      ; $5e46: $06 $06
	ld   a, c                                        ; $5e48: $79
	ld   a, b                                        ; $5e49: $78
	ld   b, $00                                      ; $5e4a: $06 $00
	jr   c, jr_09a_5e4e                              ; $5e4c: $38 $00

jr_09a_5e4e:
	ret  nz                                          ; $5e4e: $c0

jr_09a_5e4f:
	add  l                                           ; $5e4f: $85
	nop                                              ; $5e50: $00
	ld   bc, $23fc                                   ; $5e51: $01 $fc $23
	add  b                                           ; $5e54: $80
	ld   a, [hl+]                                    ; $5e55: $2a
	add  b                                           ; $5e56: $80
	dec  hl                                          ; $5e57: $2b
	ld   bc, $2909                                   ; $5e58: $01 $09 $29
	add  b                                           ; $5e5b: $80
	inc  l                                           ; $5e5c: $2c
	add  b                                           ; $5e5d: $80
	ld   h, $80                                      ; $5e5e: $26 $80
	inc  de                                          ; $5e60: $13
	ld   bc, $9919                                   ; $5e61: $01 $19 $99
	add  b                                           ; $5e64: $80
	add  h                                           ; $5e65: $84
	ld   bc, $8000                                   ; $5e66: $01 $00 $80
	add  b                                           ; $5e69: $80
	pop  bc                                          ; $5e6a: $c1
	add  b                                           ; $5e6b: $80
	ld   h, b                                        ; $5e6c: $60
	add  b                                           ; $5e6d: $80
	jr   nc, jr_09a_5df0                             ; $5e6e: $30 $80

	ld   c, $80                                      ; $5e70: $0e $80
	nop                                              ; $5e72: $00
	ld   [bc], a                                     ; $5e73: $02
	ldh  [rP1], a                                    ; $5e74: $e0 $00
	rra                                              ; $5e76: $1f
	adc  a                                           ; $5e77: $8f
	nop                                              ; $5e78: $00
	nop                                              ; $5e79: $00
	add  b                                           ; $5e7a: $80
	add  e                                           ; $5e7b: $83
	nop                                              ; $5e7c: $00
	dec  b                                           ; $5e7d: $05
	ld   b, b                                        ; $5e7e: $40
	nop                                              ; $5e7f: $00
	jr   nc, jr_09a_5e82                             ; $5e80: $30 $00

jr_09a_5e82:
	ld   l, b                                        ; $5e82: $68
	ld   h, b                                        ; $5e83: $60
	add  b                                           ; $5e84: $80
	add  b                                           ; $5e85: $80
	nop                                              ; $5e86: $00
	rlca                                             ; $5e87: $07
	add  c                                           ; $5e88: $81
	nop                                              ; $5e89: $00
	inc  c                                           ; $5e8a: $0c
	ldh  a, [rP1]                                    ; $5e8b: $f0 $00
	inc  c                                           ; $5e8d: $0c
	nop                                              ; $5e8e: $00
	inc  bc                                          ; $5e8f: $03
	nop                                              ; $5e90: $00
	ret  nz                                          ; $5e91: $c0

	nop                                              ; $5e92: $00
	ldh  [$c0], a                                    ; $5e93: $e0 $c0
	ret  nc                                          ; $5e95: $d0

	ldh  [$c8], a                                    ; $5e96: $e0 $c8
	add  c                                           ; $5e98: $81
	ldh  a, [rP1]                                    ; $5e99: $f0 $00
	db   $e4                                         ; $5e9b: $e4
	add  c                                           ; $5e9c: $81
	ld   hl, sp+$00                                  ; $5e9d: $f8 $00
	ld   a, [$fc85]                                  ; $5e9f: $fa $85 $fc
	ld   bc, $c8c5                                   ; $5ea2: $01 $c5 $c8
	add  d                                           ; $5ea5: $82
	call nz, $a412                                   ; $5ea6: $c4 $12 $a4
	add  h                                           ; $5ea9: $84
	or   h                                           ; $5eaa: $b4
	add  h                                           ; $5eab: $84
	inc  b                                           ; $5eac: $04
	ld   b, h                                        ; $5ead: $44
	ld   c, d                                        ; $5eae: $4a
	ld   [bc], a                                     ; $5eaf: $02
	ld   [hl+], a                                    ; $5eb0: $22
	ld   [bc], a                                     ; $5eb1: $02
	inc  h                                           ; $5eb2: $24
	ret  nz                                          ; $5eb3: $c0

	db   $d3                                         ; $5eb4: $d3
	ldh  [$e8], a                                    ; $5eb5: $e0 $e8
	ldh  a, [$f4]                                    ; $5eb7: $f0 $f4
	ld   hl, sp-$05                                  ; $5eb9: $f8 $fb
	add  b                                           ; $5ebb: $80
	db   $fc                                         ; $5ebc: $fc
	add  e                                           ; $5ebd: $83
	rst  $38                                         ; $5ebe: $ff
	add  b                                           ; $5ebf: $80
	ld   b, $80                                      ; $5ec0: $06 $80
	rrca                                             ; $5ec2: $0f
	add  b                                           ; $5ec3: $80
	rlca                                             ; $5ec4: $07
	add  b                                           ; $5ec5: $80
	inc  bc                                          ; $5ec6: $03
	adc  b                                           ; $5ec7: $88
	nop                                              ; $5ec8: $00
	nop                                              ; $5ec9: $00
	jr   nz, jr_09a_5e4f                             ; $5eca: $20 $83

	nop                                              ; $5ecc: $00
	ld   [$005c], sp                                 ; $5ecd: $08 $5c $00
	rst  JumpTable                                         ; $5ed0: $df
	nop                                              ; $5ed1: $00
	ld   h, e                                        ; $5ed2: $63
	nop                                              ; $5ed3: $00
	and  e                                           ; $5ed4: $a3
	nop                                              ; $5ed5: $00
	ld   h, e                                        ; $5ed6: $63
	adc  e                                           ; $5ed7: $8b
	nop                                              ; $5ed8: $00
	ld   [bc], a                                     ; $5ed9: $02
	inc  bc                                          ; $5eda: $03
	nop                                              ; $5edb: $00
	rlca                                             ; $5edc: $07
	add  e                                           ; $5edd: $83
	inc  bc                                          ; $5ede: $03
	nop                                              ; $5edf: $00
	dec  b                                           ; $5ee0: $05
	add  e                                           ; $5ee1: $83
	ld   bc, $0000                                   ; $5ee2: $01 $00 $00
	add  l                                           ; $5ee5: $85
	ld   bc, $0000                                   ; $5ee6: $01 $00 $00
	add  a                                           ; $5ee9: $87
	ld   bc, $0701                                   ; $5eea: $01 $01 $07
	inc  bc                                          ; $5eed: $03
	add  b                                           ; $5eee: $80
	ld   [bc], a                                     ; $5eef: $02
	nop                                              ; $5ef0: $00
	ld   bc, $0083                                   ; $5ef1: $01 $83 $00
	nop                                              ; $5ef4: $00
	ld   a, [bc]                                     ; $5ef5: $0a
	add  e                                           ; $5ef6: $83
	nop                                              ; $5ef7: $00
	ld   [bc], a                                     ; $5ef8: $02
	inc  d                                           ; $5ef9: $14
	nop                                              ; $5efa: $00
	rst  $20                                         ; $5efb: $e7
	add  h                                           ; $5efc: $84
	rra                                              ; $5efd: $1f
	add  a                                           ; $5efe: $87
	ccf                                              ; $5eff: $3f
	ld   [bc], a                                     ; $5f00: $02
	cp   a                                           ; $5f01: $bf
	ccf                                              ; $5f02: $3f
	ld   a, a                                        ; $5f03: $7f
	adc  e                                           ; $5f04: $8b
	rra                                              ; $5f05: $1f
	ld   [bc], a                                     ; $5f06: $02
	jr   c, jr_09a_5f09                              ; $5f07: $38 $00

jr_09a_5f09:
	jr   nc, @-$7d                                   ; $5f09: $30 $81

	stop                                             ; $5f0b: $10 $00
	ld   [$0081], sp                                 ; $5f0d: $08 $81 $00
	inc  h                                           ; $5f10: $24
	ld   h, b                                        ; $5f11: $60
	jr   nz, jr_09a_5f35                             ; $5f12: $20 $21

	jr   nz, jr_09a_5f37                             ; $5f14: $20 $21

	jr   nz, jr_09a_5f50                             ; $5f16: $20 $38

	jr   nc, jr_09a_5f6e                             ; $5f18: $30 $54

	db   $10                                         ; $5f1a: $10
	ld   a, [de]                                     ; $5f1b: $1a
	jr   jr_09a_5f4d                                 ; $5f1c: $18 $2f

	ld   c, $17                                      ; $5f1e: $0e $17
	rlca                                             ; $5f20: $07
	stop                                             ; $5f21: $10 $00
	jr   nz, @+$1e                                   ; $5f23: $20 $1c

jr_09a_5f25:
	ld   e, h                                        ; $5f25: $5c
	ccf                                              ; $5f26: $3f

jr_09a_5f27:
	ld   [hl], b                                     ; $5f27: $70
	rra                                              ; $5f28: $1f
	ccf                                              ; $5f29: $3f
	rrca                                             ; $5f2a: $0f

jr_09a_5f2b:
	rlca                                             ; $5f2b: $07
	rrca                                             ; $5f2c: $0f
	rra                                              ; $5f2d: $1f
	rlca                                             ; $5f2e: $07
	ld   l, e                                        ; $5f2f: $6b
	inc  bc                                          ; $5f30: $03
	sub  h                                           ; $5f31: $94
	ld   bc, $00eb                                   ; $5f32: $01 $eb $00

jr_09a_5f35:
	dec  d                                           ; $5f35: $15
	add  e                                           ; $5f36: $83

jr_09a_5f37:
	nop                                              ; $5f37: $00
	ld   a, [bc]                                     ; $5f38: $0a
	inc  d                                           ; $5f39: $14
	nop                                              ; $5f3a: $00
	ldh  [rP1], a                                    ; $5f3b: $e0 $00
	ld   b, $08                                      ; $5f3d: $06 $08
	dec  b                                           ; $5f3f: $05
	ld   e, $2d                                      ; $5f40: $1e $2d
	ld   a, a                                        ; $5f42: $7f
	cp   a                                           ; $5f43: $bf
	adc  e                                           ; $5f44: $8b
	rst  $38                                         ; $5f45: $ff
	inc  d                                           ; $5f46: $14
	ld   a, [hl]                                     ; $5f47: $7e
	rst  $38                                         ; $5f48: $ff
	cp   c                                           ; $5f49: $b9
	ld   a, [hl]                                     ; $5f4a: $7e
	add  $33                                         ; $5f4b: $c6 $33

jr_09a_5f4d:
	ld   [hl], e                                     ; $5f4d: $73
	ld   c, $2e                                      ; $5f4e: $0e $2e

jr_09a_5f50:
	inc  c                                           ; $5f50: $0c
	ld   l, h                                        ; $5f51: $6c
	dec  c                                           ; $5f52: $0d
	db   $e4                                         ; $5f53: $e4
	dec  c                                           ; $5f54: $0d
	add  hl, hl                                      ; $5f55: $29
	dec  c                                           ; $5f56: $0d
	ld   [hl], b                                     ; $5f57: $70
	add  b                                           ; $5f58: $80
	sbc  h                                           ; $5f59: $9c
	add  b                                           ; $5f5a: $80
	add  c                                           ; $5f5b: $81
	add  c                                           ; $5f5c: $81
	nop                                              ; $5f5d: $00
	jr   nz, jr_09a_5fde                             ; $5f5e: $20 $7e

	nop                                              ; $5f60: $00
	ret  nz                                          ; $5f61: $c0

	nop                                              ; $5f62: $00
	ld   a, $00                                      ; $5f63: $3e $00
	rst  $28                                         ; $5f65: $ef
	nop                                              ; $5f66: $00
	ld   d, a                                        ; $5f67: $57
	nop                                              ; $5f68: $00
	cp   b                                           ; $5f69: $b8

jr_09a_5f6a:
	add  b                                           ; $5f6a: $80
	add  c                                           ; $5f6b: $81
	add  b                                           ; $5f6c: $80
	pop  af                                          ; $5f6d: $f1

jr_09a_5f6e:
	ret  nz                                          ; $5f6e: $c0

	jp   $f0c0                                       ; $5f6f: $c3 $c0 $f0


	ldh  [$e1], a                                    ; $5f72: $e0 $e1
	ldh  [$f8], a                                    ; $5f74: $e0 $f8
	ldh  a, [$7c]                                    ; $5f76: $f0 $7c
	ld   a, b                                        ; $5f78: $78
	ld   a, [hl]                                     ; $5f79: $7e
	ld   a, h                                        ; $5f7a: $7c
	cp   $00                                         ; $5f7b: $fe $00
	inc  bc                                          ; $5f7d: $03
	nop                                              ; $5f7e: $00

jr_09a_5f7f:
	inc  b                                           ; $5f7f: $04
	add  b                                           ; $5f80: $80
	ld   [bc], a                                     ; $5f81: $02
	inc  bc                                          ; $5f82: $03
	ld   bc, $0179                                   ; $5f83: $01 $79 $01
	pop  bc                                          ; $5f86: $c1
	add  b                                           ; $5f87: $80
	ld   b, d                                        ; $5f88: $42
	ld   b, $4a                                      ; $5f89: $06 $4a
	ld   l, d                                        ; $5f8b: $6a
	ld   l, e                                        ; $5f8c: $6b
	ei                                               ; $5f8d: $fb
	di                                               ; $5f8e: $f3
	ei                                               ; $5f8f: $fb
	ld   sp, hl                                      ; $5f90: $f9
	add  b                                           ; $5f91: $80
	db   $fd                                         ; $5f92: $fd
	ld   bc, $f6f7                                   ; $5f93: $01 $f7 $f6
	add  b                                           ; $5f96: $80
	ld   a, d                                        ; $5f97: $7a
	add  b                                           ; $5f98: $80
	cp   c                                           ; $5f99: $b9
	add  b                                           ; $5f9a: $80
	sbc  c                                           ; $5f9b: $99
	add  b                                           ; $5f9c: $80
	ret  z                                           ; $5f9d: $c8

	add  b                                           ; $5f9e: $80
	ld   b, b                                        ; $5f9f: $40
	add  b                                           ; $5fa0: $80
	ld   h, b                                        ; $5fa1: $60
	add  b                                           ; $5fa2: $80
	jr   nz, jr_09a_5f25                             ; $5fa3: $20 $80

	jr   nc, jr_09a_5f27                             ; $5fa5: $30 $80

	db   $10                                         ; $5fa7: $10
	add  b                                           ; $5fa8: $80
	jr   jr_09a_5f2b                                 ; $5fa9: $18 $80

	inc  c                                           ; $5fab: $0c
	add  b                                           ; $5fac: $80
	add  [hl]                                        ; $5fad: $86
	nop                                              ; $5fae: $00
	rst  $38                                         ; $5faf: $ff
	adc  l                                           ; $5fb0: $8d
	nop                                              ; $5fb1: $00
	ld   [bc], a                                     ; $5fb2: $02
	rlca                                             ; $5fb3: $07
	nop                                              ; $5fb4: $00
	inc  c                                           ; $5fb5: $0c
	add  c                                           ; $5fb6: $81
	inc  b                                           ; $5fb7: $04
	inc  b                                           ; $5fb8: $04
	ld   e, $0e                                      ; $5fb9: $1e $0e
	ld   l, a                                        ; $5fbb: $6f
	rrca                                             ; $5fbc: $0f
	rst  JumpTable                                         ; $5fbd: $df
	add  c                                           ; $5fbe: $81
	ld   e, a                                        ; $5fbf: $5f
	add  b                                           ; $5fc0: $80
	ld   l, a                                        ; $5fc1: $6f
	add  b                                           ; $5fc2: $80
	rst  $28                                         ; $5fc3: $ef
	add  b                                           ; $5fc4: $80
	rst  $30                                         ; $5fc5: $f7
	add  d                                           ; $5fc6: $82
	ei                                               ; $5fc7: $fb
	add  b                                           ; $5fc8: $80
	db   $fd                                         ; $5fc9: $fd
	add  b                                           ; $5fca: $80
	cp   $80                                         ; $5fcb: $fe $80
	ccf                                              ; $5fcd: $3f
	add  b                                           ; $5fce: $80
	rrca                                             ; $5fcf: $0f
	nop                                              ; $5fd0: $00
	rst  $38                                         ; $5fd1: $ff
	adc  l                                           ; $5fd2: $8d
	nop                                              ; $5fd3: $00
	ld   [bc], a                                     ; $5fd4: $02
	ld   bc, $0300                                   ; $5fd5: $01 $00 $03
	add  c                                           ; $5fd8: $81
	ld   bc, $0703                                   ; $5fd9: $01 $03 $07
	inc  bc                                          ; $5fdc: $03
	rrca                                             ; $5fdd: $0f

jr_09a_5fde:
	rlca                                             ; $5fde: $07
	add  d                                           ; $5fdf: $82
	inc  b                                           ; $5fe0: $04
	add  b                                           ; $5fe1: $80
	nop                                              ; $5fe2: $00
	nop                                              ; $5fe3: $00
	rrca                                             ; $5fe4: $0f
	adc  e                                           ; $5fe5: $8b
	nop                                              ; $5fe6: $00
	add  b                                           ; $5fe7: $80
	jr   c, jr_09a_5f6a                              ; $5fe8: $38 $80

	ld   a, h                                        ; $5fea: $7c
	add  b                                           ; $5feb: $80
	db   $fc                                         ; $5fec: $fc
	rrca                                             ; $5fed: $0f
	db   $fd                                         ; $5fee: $fd
	db   $10                                         ; $5fef: $10
	inc  de                                          ; $5ff0: $13
	db   $ec                                         ; $5ff1: $ec
	rst  $28                                         ; $5ff2: $ef
	db   $10                                         ; $5ff3: $10
	inc  de                                          ; $5ff4: $13
	db   $ec                                         ; $5ff5: $ec
	ld   l, l                                        ; $5ff6: $6d

jr_09a_5ff7:
	ld   a, b                                        ; $5ff7: $78
	rst  $38                                         ; $5ff8: $ff
	nop                                              ; $5ff9: $00
	ld   h, h                                        ; $5ffa: $64
	inc  e                                           ; $5ffb: $1c
	or   b                                           ; $5ffc: $b0
	jr   nc, jr_09a_5f7f                             ; $5ffd: $30 $80

	ld   h, b                                        ; $5fff: $60
	nop                                              ; $6000: $00
	add  b                                           ; $6001: $80
	add  c                                           ; $6002: $81
	nop                                              ; $6003: $00
	ld   b, $c0                                      ; $6004: $06 $c0
	nop                                              ; $6006: $00
	ld   [bc], a                                     ; $6007: $02
	nop                                              ; $6008: $00

jr_09a_6009:
	ldh  [rP1], a                                    ; $6009: $e0 $00
	ld   [hl], b                                     ; $600b: $70
	add  c                                           ; $600c: $81
	nop                                              ; $600d: $00
	inc  c                                           ; $600e: $0c
	ld   a, a                                        ; $600f: $7f
	inc  bc                                          ; $6010: $03
	pop  bc                                          ; $6011: $c1
	inc  bc                                          ; $6012: $03
	ld   [hl-], a                                    ; $6013: $32
	inc  c                                           ; $6014: $0c
	db   $ed                                         ; $6015: $ed
	ld   [bc], a                                     ; $6016: $02
	ld   b, e                                        ; $6017: $43
	inc  d                                           ; $6018: $14
	sub  b                                           ; $6019: $90
	jr   z, jr_09a_606e                              ; $601a: $28 $52

	adc  e                                           ; $601c: $8b
	nop                                              ; $601d: $00
	ld   a, [bc]                                     ; $601e: $0a
	add  c                                           ; $601f: $81
	nop                                              ; $6020: $00
	call Call_09a_7d00                               ; $6021: $cd $00 $7d
	nop                                              ; $6024: $00
	ld   [hl+], a                                    ; $6025: $22
	nop                                              ; $6026: $00
	ld   h, c                                        ; $6027: $61
	nop                                              ; $6028: $00
	add  b                                           ; $6029: $80
	add  b                                           ; $602a: $80
	ld   h, b                                        ; $602b: $60
	ld   bc, $cd40                                   ; $602c: $01 $40 $cd
	add  b                                           ; $602f: $80
	jr   nc, jr_09a_6033                             ; $6030: $30 $01

	inc  l                                           ; $6032: $2c

jr_09a_6033:
	ld   d, e                                        ; $6033: $53
	db   $dd                                         ; $6034: $dd
	nop                                              ; $6035: $00
	ld   de, $008f                                   ; $6036: $11 $8f $00
	rla                                              ; $6039: $17
	nop                                              ; $603a: $00
	rst  $28                                         ; $603b: $ef
	nop                                              ; $603c: $00
	cp   e                                           ; $603d: $bb
	nop                                              ; $603e: $00
	dec  sp                                          ; $603f: $3b
	inc  b                                           ; $6040: $04
	add  sp, $00                                     ; $6041: $e8 $00
	ld   h, [hl]                                     ; $6043: $66
	ld   bc, $00ba                                   ; $6044: $01 $ba $00
	db   $ec                                         ; $6047: $ec
	ret  nc                                          ; $6048: $d0

	add  b                                           ; $6049: $80
	ld   h, b                                        ; $604a: $60
	ld   bc, $9590                                   ; $604b: $01 $90 $95
	add  b                                           ; $604e: $80
	add  l                                           ; $604f: $85
	nop                                              ; $6050: $00
	add  b                                           ; $6051: $80
	add  b                                           ; $6052: $80
	ld   [$0c80], sp                                 ; $6053: $08 $80 $0c
	add  b                                           ; $6056: $80
	ld   e, $01                                      ; $6057: $1e $01
	sbc  a                                           ; $6059: $9f
	ld   l, $80                                      ; $605a: $2e $80
	ld   de, $1004                                   ; $605c: $11 $04 $10
	ld   b, d                                        ; $605f: $42

jr_09a_6060:
	ld   h, d                                        ; $6060: $62
	ld   b, [hl]                                     ; $6061: $46
	ld   b, a                                        ; $6062: $47
	add  b                                           ; $6063: $80
	ld   b, [hl]                                     ; $6064: $46

jr_09a_6065:
	add  c                                           ; $6065: $81
	ld   b, h                                        ; $6066: $44
	ld   [$0145], sp                                 ; $6067: $08 $45 $01
	sub  a                                           ; $606a: $97
	ld   [hl], a                                     ; $606b: $77
	jr   nz, jr_09a_607d                             ; $606c: $20 $0f

jr_09a_606e:
	ld   c, a                                        ; $606e: $4f
	jr   jr_09a_6009                                 ; $606f: $18 $98

	add  b                                           ; $6071: $80
	jr   nz, jr_09a_5ff7                             ; $6072: $20 $83

	nop                                              ; $6074: $00
	add  b                                           ; $6075: $80
	db   $fc                                         ; $6076: $fc
	rlca                                             ; $6077: $07
	cp   $8c                                         ; $6078: $fe $8c
	ld   [hl], d                                     ; $607a: $72
	and  [hl]                                        ; $607b: $a6
	and  d                                           ; $607c: $a2

jr_09a_607d:
	jp   z, Jump_09a_55c6                            ; $607d: $ca $c6 $55

	add  b                                           ; $6080: $80

jr_09a_6081:
	ld   b, l                                        ; $6081: $45
	db   $10                                         ; $6082: $10
	ld   d, c                                        ; $6083: $51
	sub  $d2                                         ; $6084: $d6 $d2
	cp   d                                           ; $6086: $ba
	and  d                                           ; $6087: $a2
	sub  h                                           ; $6088: $94
	add  h                                           ; $6089: $84
	ld   sp, Func_1d30                                   ; $608a: $31 $30 $1d
	sbc  b                                           ; $608d: $98
	adc  d                                           ; $608e: $8a
	adc  h                                           ; $608f: $8c
	add  h                                           ; $6090: $84
	inc  b                                           ; $6091: $04
	ld   b, b                                        ; $6092: $40
	ld   b, d                                        ; $6093: $42
	add  b                                           ; $6094: $80
	ld   c, c                                        ; $6095: $49
	add  b                                           ; $6096: $80
	push bc                                          ; $6097: $c5
	add  b                                           ; $6098: $80
	call nz, $fe00                                   ; $6099: $c4 $00 $fe
	add  c                                           ; $609c: $81
	nop                                              ; $609d: $00
	nop                                              ; $609e: $00
	inc  bc                                          ; $609f: $03
	add  c                                           ; $60a0: $81
	nop                                              ; $60a1: $00
	nop                                              ; $60a2: $00
	ld   b, $81                                      ; $60a3: $06 $81
	ld   bc, $0c00                                   ; $60a5: $01 $00 $0c
	add  c                                           ; $60a8: $81
	ld   [bc], a                                     ; $60a9: $02
	dec  bc                                          ; $60aa: $0b
	ld   a, c                                        ; $60ab: $79
	adc  c                                           ; $60ac: $89
	sbc  l                                           ; $60ad: $9d
	sub  c                                           ; $60ae: $91
	xor  e                                           ; $60af: $ab
	and  d                                           ; $60b0: $a2
	add  [hl]                                        ; $60b1: $86
	add  l                                           ; $60b2: $85
	inc  c                                           ; $60b3: $0c
	ld   [bc], a                                     ; $60b4: $02
	inc  [hl]                                        ; $60b5: $34
	jr   c, @-$7e                                    ; $60b6: $38 $80

	nop                                              ; $60b8: $00
	add  b                                           ; $60b9: $80
	add  hl, bc                                      ; $60ba: $09
	add  b                                           ; $60bb: $80
	jp   nz, $9280                                   ; $60bc: $c2 $80 $92

	add  b                                           ; $60bf: $80
	sub  c                                           ; $60c0: $91
	add  d                                           ; $60c1: $82
	add  hl, de                                      ; $60c2: $19
	add  b                                           ; $60c3: $80
	ld   c, c                                        ; $60c4: $49
	add  b                                           ; $60c5: $80
	adc  c                                           ; $60c6: $89
	add  b                                           ; $60c7: $80
	adc  b                                           ; $60c8: $88
	nop                                              ; $60c9: $00
	or   $83                                         ; $60ca: $f6 $83
	ld   [bc], a                                     ; $60cc: $02
	add  c                                           ; $60cd: $81
	inc  bc                                          ; $60ce: $03
	inc  bc                                          ; $60cf: $03
	dec  b                                           ; $60d0: $05
	add  hl, bc                                      ; $60d1: $09
	ld   bc, $8103                                   ; $60d2: $01 $03 $81
	ld   bc, $cb01                                   ; $60d5: $01 $01 $cb
	inc  sp                                          ; $60d8: $33
	add  b                                           ; $60d9: $80
	inc  b                                           ; $60da: $04
	add  c                                           ; $60db: $81
	nop                                              ; $60dc: $00
	add  b                                           ; $60dd: $80
	jr   nz, jr_09a_6060                             ; $60de: $20 $80

	ld   d, b                                        ; $60e0: $50
	add  b                                           ; $60e1: $80
	jr   nc, jr_09a_6065                             ; $60e2: $30 $81

	ld   d, b                                        ; $60e4: $50
	nop                                              ; $60e5: $00
	ld   e, b                                        ; $60e6: $58
	add  c                                           ; $60e7: $81
	ld   [$4c82], sp                                 ; $60e8: $08 $82 $4c
	add  h                                           ; $60eb: $84
	inc  l                                           ; $60ec: $2c
	add  b                                           ; $60ed: $80
	ld   l, h                                        ; $60ee: $6c
	nop                                              ; $60ef: $00
	ldh  [$81], a                                    ; $60f0: $e0 $81
	db   $fc                                         ; $60f2: $fc
	ld   b, $dc                                      ; $60f3: $06 $dc
	ld   hl, sp-$04                                  ; $60f5: $f8 $fc
	ldh  a, [$b6]                                    ; $60f7: $f0 $b6
	ld   hl, sp+$7a                                  ; $60f9: $f8 $7a
	add  h                                           ; $60fb: $84
	db   $fc                                         ; $60fc: $fc
	nop                                              ; $60fd: $00
	jr   nz, jr_09a_6081                             ; $60fe: $20 $81

	and  c                                           ; $6100: $a1
	nop                                              ; $6101: $00
	add  c                                           ; $6102: $81
	add  b                                           ; $6103: $80
	adc  c                                           ; $6104: $89
	add  b                                           ; $6105: $80
	adc  e                                           ; $6106: $8b
	add  b                                           ; $6107: $80
	res  0, d                                        ; $6108: $cb $82
	ret                                              ; $610a: $c9


	add  b                                           ; $610b: $80
	ld   l, h                                        ; $610c: $6c
	add  b                                           ; $610d: $80
	ld   e, h                                        ; $610e: $5c
	add  e                                           ; $610f: $83
	ld   e, c                                        ; $6110: $59
	ld   bc, $5351                                   ; $6111: $01 $51 $53
	add  b                                           ; $6114: $80
	ld   [de], a                                     ; $6115: $12
	ld   bc, $0a02                                   ; $6116: $01 $02 $0a
	add  b                                           ; $6119: $80
	ld   [bc], a                                     ; $611a: $02
	add  d                                           ; $611b: $82
	ld   b, b                                        ; $611c: $40
	inc  b                                           ; $611d: $04
	ld   d, b                                        ; $611e: $50
	ld   c, b                                        ; $611f: $48
	ld   c, d                                        ; $6120: $4a
	ld   a, [hl+]                                    ; $6121: $2a
	dec  hl                                          ; $6122: $2b
	add  b                                           ; $6123: $80
	inc  hl                                          ; $6124: $23
	add  b                                           ; $6125: $80
	ld   de, $0180                                   ; $6126: $11 $80 $01
	nop                                              ; $6129: $00
	nop                                              ; $612a: $00
	add  b                                           ; $612b: $80
	inc  e                                           ; $612c: $1c
	dec  b                                           ; $612d: $05
	inc  c                                           ; $612e: $0c
	inc  l                                           ; $612f: $2c
	db   $f4                                         ; $6130: $f4
	or   h                                           ; $6131: $b4
	or   $56                                         ; $6132: $f6 $56
	add  b                                           ; $6134: $80
	cp   $04                                         ; $6135: $fe $04
	ld   hl, sp-$44                                  ; $6137: $f8 $bc
	ret  nz                                          ; $6139: $c0

	ld   [hl], h                                     ; $613a: $74
	nop                                              ; $613b: $00
	add  b                                           ; $613c: $80
	ld   c, a                                        ; $613d: $4f
	nop                                              ; $613e: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $613f: $cf
	add  b                                           ; $6140: $80
	cp   a                                           ; $6141: $bf
	inc  de                                          ; $6142: $13
	ld   a, a                                        ; $6143: $7f
	rst  $38                                         ; $6144: $ff
	ld   a, a                                        ; $6145: $7f
	dec  a                                           ; $6146: $3d
	ld   a, a                                        ; $6147: $7f
	db   $db                                         ; $6148: $db
	ccf                                              ; $6149: $3f
	daa                                              ; $614a: $27
	dec  a                                           ; $614b: $3d
	db   $fd                                         ; $614c: $fd
	dec  e                                           ; $614d: $1d
	and  e                                           ; $614e: $a3
	rst  $38                                         ; $614f: $ff
	ld   hl, sp-$01                                  ; $6150: $f8 $ff
	ei                                               ; $6152: $fb
	cp   $fc                                         ; $6153: $fe $fc
	rst  $38                                         ; $6155: $ff
	cp   $85                                         ; $6156: $fe $85
	rst  $38                                         ; $6158: $ff
	inc  b                                           ; $6159: $04
	adc  l                                           ; $615a: $8d
	ret  nz                                          ; $615b: $c0

	ld   c, h                                        ; $615c: $4c
	ldh  [$e1], a                                    ; $615d: $e0 $e1
	add  b                                           ; $615f: $80
	xor  $19                                         ; $6160: $ee $19
	ld   a, a                                        ; $6162: $7f
	ld   l, a                                        ; $6163: $6f
	cp   a                                           ; $6164: $bf
	rra                                              ; $6165: $1f
	cp   a                                           ; $6166: $bf
	xor  a                                           ; $6167: $af
	ld   hl, sp-$45                                  ; $6168: $f8 $bb
	rst  $30                                         ; $616a: $f7
	inc  d                                           ; $616b: $14
	nop                                              ; $616c: $00
	add  c                                           ; $616d: $81
	inc  bc                                          ; $616e: $03
	add  c                                           ; $616f: $81
	ld   a, a                                        ; $6170: $7f
	ld   h, e                                        ; $6171: $63
	rst  $38                                         ; $6172: $ff
	rst  $20                                         ; $6173: $e7
	rst  $38                                         ; $6174: $ff
	ld   hl, sp-$01                                  ; $6175: $f8 $ff
	ld   hl, sp+$0f                                  ; $6177: $f8 $0f
	rst  $30                                         ; $6179: $f7
	rst  $38                                         ; $617a: $ff
	ld   hl, $0d81                                   ; $617b: $21 $81 $0d
	inc  c                                           ; $617e: $0c
	ld   a, a                                        ; $617f: $7f
	ld   [bc], a                                     ; $6180: $02
	jp   nz, $3e00                                   ; $6181: $c2 $00 $3e

	ld   bc, $00ee                                   ; $6184: $01 $ee $00
	ld   d, a                                        ; $6187: $57
	nop                                              ; $6188: $00
	cp   b                                           ; $6189: $b8
	nop                                              ; $618a: $00
	ld   d, d                                        ; $618b: $52
	adc  c                                           ; $618c: $89
	rst  $38                                         ; $618d: $ff
	add  b                                           ; $618e: $80
	ld   a, a                                        ; $618f: $7f
	ld   b, $18                                      ; $6190: $06 $18
	ccf                                              ; $6192: $3f
	db   $db                                         ; $6193: $db
	rst  $38                                         ; $6194: $ff
	di                                               ; $6195: $f3
	rst  $38                                         ; $6196: $ff
	ldh  a, [$88]                                    ; $6197: $f0 $88
	rst  $38                                         ; $6199: $ff
	add  b                                           ; $619a: $80
	rst  ToBoot                                         ; $619b: $c7
	adc  [hl]                                        ; $619c: $8e
	rst  $38                                         ; $619d: $ff
	add  b                                           ; $619e: $80
	ld   sp, hl                                      ; $619f: $f9
	add  b                                           ; $61a0: $80
	ldh  a, [$80]                                    ; $61a1: $f0 $80
	ld   hl, sp+$1e                                  ; $61a3: $f8 $1e
	db   $fc                                         ; $61a5: $fc
	db   $e4                                         ; $61a6: $e4
	rst  $38                                         ; $61a7: $ff
	db   $db                                         ; $61a8: $db
	rst  $38                                         ; $61a9: $ff
	cp   l                                           ; $61aa: $bd
	rst  $38                                         ; $61ab: $ff
	ld   a, a                                        ; $61ac: $7f
	rst  $38                                         ; $61ad: $ff
	ld   d, d                                        ; $61ae: $52
	nop                                              ; $61af: $00
	ld   [hl], c                                     ; $61b0: $71
	nop                                              ; $61b1: $00
	inc  bc                                          ; $61b2: $03
	nop                                              ; $61b3: $00
	jr   nc, jr_09a_61b6                             ; $61b4: $30 $00

jr_09a_61b6:
	ld   bc, $1800                                   ; $61b6: $01 $00 $18
	nop                                              ; $61b9: $00
	adc  h                                           ; $61ba: $8c
	nop                                              ; $61bb: $00
	ld   b, $00                                      ; $61bc: $06 $00
	cp   h                                           ; $61be: $bc
	rra                                              ; $61bf: $1f
	rst  $38                                         ; $61c0: $ff
	rrca                                             ; $61c1: $0f
	adc  l                                           ; $61c2: $8d
	rrca                                             ; $61c3: $0f
	add  b                                           ; $61c4: $80
	inc  c                                           ; $61c5: $0c
	ld   [$00ff], sp                                 ; $61c6: $08 $ff $00
	ccf                                              ; $61c9: $3f
	nop                                              ; $61ca: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $61cb: $cf
	nop                                              ; $61cc: $00
	ld   l, h                                        ; $61cd: $6c
	nop                                              ; $61ce: $00
	jr   nc, @-$7e                                   ; $61cf: $30 $80

	add  e                                           ; $61d1: $83
	inc  c                                           ; $61d2: $0c
	inc  bc                                          ; $61d3: $03
	xor  $02                                         ; $61d4: $ee $02
	db   $fd                                         ; $61d6: $fd
	nop                                              ; $61d7: $00
	rst  $38                                         ; $61d8: $ff
	nop                                              ; $61d9: $00
	rst  $38                                         ; $61da: $ff
	nop                                              ; $61db: $00
	dec  d                                           ; $61dc: $15
	nop                                              ; $61dd: $00
	rst  $38                                         ; $61de: $ff
	nop                                              ; $61df: $00
	add  b                                           ; $61e0: $80
	rst  $38                                         ; $61e1: $ff
	ld   bc, $fff7                                   ; $61e2: $01 $f7 $ff
	add  b                                           ; $61e5: $80
	rrca                                             ; $61e6: $0f
	ld   a, [bc]                                     ; $61e7: $0a
	rst  $38                                         ; $61e8: $ff
	rlca                                             ; $61e9: $07
	rst  $38                                         ; $61ea: $ff
	nop                                              ; $61eb: $00
	adc  a                                           ; $61ec: $8f
	nop                                              ; $61ed: $00
	rst  $38                                         ; $61ee: $ff
	nop                                              ; $61ef: $00
	adc  c                                           ; $61f0: $89
	nop                                              ; $61f1: $00
	pop  af                                          ; $61f2: $f1
	add  b                                           ; $61f3: $80
	rst  $38                                         ; $61f4: $ff
	add  h                                           ; $61f5: $84
	rst  JumpTable                                         ; $61f6: $df
	rla                                              ; $61f7: $17
	add  e                                           ; $61f8: $83
	rst  JumpTable                                         ; $61f9: $df
	nop                                              ; $61fa: $00
	ld   a, a                                        ; $61fb: $7f
	nop                                              ; $61fc: $00
	or   a                                           ; $61fd: $b7
	nop                                              ; $61fe: $00
	ld   [hl], h                                     ; $61ff: $74
	db   $fc                                         ; $6200: $fc
	ld   a, l                                        ; $6201: $7d
	db   $fc                                         ; $6202: $fc
	sbc  h                                           ; $6203: $9c
	db   $fc                                         ; $6204: $fc
	db   $fd                                         ; $6205: $fd
	ret  nz                                          ; $6206: $c0

	db   $fd                                         ; $6207: $fd
	nop                                              ; $6208: $00
	rst  $38                                         ; $6209: $ff
	nop                                              ; $620a: $00
	ldh  a, [c]                                      ; $620b: $f2
	nop                                              ; $620c: $00
	ldh  a, [rP1]                                    ; $620d: $f0 $00
	ccf                                              ; $620f: $3f
	rst  $38                                         ; $6210: $ff
	nop                                              ; $6211: $00
	rst  $38                                         ; $6212: $ff
	nop                                              ; $6213: $00
	rst  $38                                         ; $6214: $ff
	nop                                              ; $6215: $00
	ld   a, [$3e00]                                  ; $6216: $fa $00 $3e
	ld   bc, $0104                              ; $6219: $01 $04 $01
	nop                                              ; $621c: $00
	inc  bc                                          ; $621d: $03
	ld   bc, $8107                                   ; $621e: $01 $07 $81
	inc  bc                                          ; $6221: $03
	ld   bc, $070f                                   ; $6222: $01 $0f $07
	add  b                                           ; $6225: $80
	ld   b, $0c                                      ; $6226: $06 $0c
	dec  e                                           ; $6228: $1d
	inc  c                                           ; $6229: $0c
	ld   a, [bc]                                     ; $622a: $0a
	ld   [$1035], sp                                 ; $622b: $08 $35 $10
	ld   [$5000], sp                                 ; $622e: $08 $00 $50
	nop                                              ; $6231: $00
	inc  hl                                          ; $6232: $23
	ld   bc, $8341                                   ; $6233: $01 $41 $83
	ld   bc, $0600                                   ; $6236: $01 $00 $06
	add  c                                           ; $6239: $81
	ld   [bc], a                                     ; $623a: $02
	nop                                              ; $623b: $00
	ld   bc, $0081                                   ; $623c: $01 $81 $00
	ld   [bc], a                                     ; $623f: $02
	ld   [bc], a                                     ; $6240: $02
	nop                                              ; $6241: $00
	inc  b                                           ; $6242: $04
	add  a                                           ; $6243: $87
	nop                                              ; $6244: $00
	dec  b                                           ; $6245: $05
	ld   bc, $3f00                                   ; $6246: $01 $00 $3f
	ld   bc, $38f8                                   ; $6249: $01 $f8 $38
	add  b                                           ; $624c: $80
	ld   a, h                                        ; $624d: $7c
	ld   bc, $fdfc                                   ; $624e: $01 $fc $fd
	add  b                                           ; $6251: $80
	ld   h, c                                        ; $6252: $61
	inc  bc                                          ; $6253: $03
	ld   bc, $8c1d                                   ; $6254: $01 $1d $8c
	ld   de, $1080                                   ; $6257: $11 $80 $10
	inc  b                                           ; $625a: $04
	sub  b                                           ; $625b: $90
	db   $10                                         ; $625c: $10
	jr   nz, jr_09a_625f                             ; $625d: $20 $00

jr_09a_625f:
	ld   c, c                                        ; $625f: $49
	add  c                                           ; $6260: $81
	ld   [$8b00], sp                                 ; $6261: $08 $00 $8b
	add  c                                           ; $6264: $81
	ld   [$1707], sp                                 ; $6265: $08 $07 $17
	ld   bc, $03e7                                   ; $6268: $01 $e7 $03
	sbc  e                                           ; $626b: $9b
	add  e                                           ; $626c: $83
	rrca                                             ; $626d: $0f
	rlca                                             ; $626e: $07
	add  b                                           ; $626f: $80
	rst  $20                                         ; $6270: $e7
	add  b                                           ; $6271: $80
	or   $04                                         ; $6272: $f6 $04
	ldh  a, [$f1]                                    ; $6274: $f0 $f1
	ld   sp, $38f7                                   ; $6276: $31 $f7 $38
	add  l                                           ; $6279: $85
	nop                                              ; $627a: $00
	rlca                                             ; $627b: $07
	inc  bc                                          ; $627c: $03
	nop                                              ; $627d: $00
	rrca                                             ; $627e: $0f
	inc  bc                                          ; $627f: $03
	rra                                              ; $6280: $1f
	rrca                                             ; $6281: $0f
	ccf                                              ; $6282: $3f
	rra                                              ; $6283: $1f
	add  b                                           ; $6284: $80
	inc  de                                          ; $6285: $13
	ld   bc, $1353                                   ; $6286: $01 $53 $13
	add  b                                           ; $6289: $80
	ld   a, [de]                                     ; $628a: $1a
	nop                                              ; $628b: $00
	add  b                                           ; $628c: $80
	add  b                                           ; $628d: $80
	ld   bc, $0b80                                   ; $628e: $01 $80 $0b
	add  b                                           ; $6291: $80
	nop                                              ; $6292: $00
	add  c                                           ; $6293: $81
	rst  $38                                         ; $6294: $ff
	add  h                                           ; $6295: $84
	nop                                              ; $6296: $00
	nop                                              ; $6297: $00
	rlca                                             ; $6298: $07
	add  b                                           ; $6299: $80
	nop                                              ; $629a: $00
	add  c                                           ; $629b: $81
	inc  bc                                          ; $629c: $03
	ld   [bc], a                                     ; $629d: $02
	ld   [$0307], sp                                 ; $629e: $08 $07 $03
	add  l                                           ; $62a1: $85
	rlca                                             ; $62a2: $07
	inc  b                                           ; $62a3: $04
	rla                                              ; $62a4: $17
	rrca                                             ; $62a5: $0f
	rlca                                             ; $62a6: $07
	rrca                                             ; $62a7: $0f
	nop                                              ; $62a8: $00
	add  b                                           ; $62a9: $80
	rrca                                             ; $62aa: $0f
	ld   bc, $1f00                                   ; $62ab: $01 $00 $1f
	adc  l                                           ; $62ae: $8d
	nop                                              ; $62af: $00
	ld   bc, $fe01                                   ; $62b0: $01 $01 $fe
	add  b                                           ; $62b3: $80
	nop                                              ; $62b4: $00
	add  b                                           ; $62b5: $80
	ld   a, a                                        ; $62b6: $7f
	ld   c, $bf                                      ; $62b7: $0e $bf
	ccf                                              ; $62b9: $3f
	ld   c, a                                        ; $62ba: $4f
	rrca                                             ; $62bb: $0f
	scf                                              ; $62bc: $37
	rlca                                             ; $62bd: $07
	add  hl, bc                                      ; $62be: $09
	ld   bc, $0006                                   ; $62bf: $01 $06 $00
	ld   bc, $3000                                   ; $62c2: $01 $00 $30
	rrca                                             ; $62c5: $0f
	ld   [hl], $83                                   ; $62c6: $36 $83
	ld   b, $00                                      ; $62c8: $06 $00
	dec  bc                                          ; $62ca: $0b
	add  c                                           ; $62cb: $81
	inc  bc                                          ; $62cc: $03
	nop                                              ; $62cd: $00
	dec  b                                           ; $62ce: $05
	add  c                                           ; $62cf: $81
	ld   bc, $0200                                   ; $62d0: $01 $00 $02
	add  e                                           ; $62d3: $83
	nop                                              ; $62d4: $00
	nop                                              ; $62d5: $00
	ld   bc, $0087                                   ; $62d6: $01 $87 $00
	ld   bc, $7f80                                   ; $62d9: $01 $80 $7f
	add  b                                           ; $62dc: $80
	ld   l, a                                        ; $62dd: $6f
	add  d                                           ; $62de: $82
	ld   [hl], a                                     ; $62df: $77
	add  b                                           ; $62e0: $80
	ld   a, e                                        ; $62e1: $7b
	add  b                                           ; $62e2: $80
	ld   a, l                                        ; $62e3: $7d
	ld   [bc], a                                     ; $62e4: $02
	sbc  h                                           ; $62e5: $9c
	inc  e                                           ; $62e6: $1c
	ld   b, b                                        ; $62e7: $40
	add  b                                           ; $62e8: $80
	nop                                              ; $62e9: $00
	add  b                                           ; $62ea: $80
	db   $10                                         ; $62eb: $10
	add  b                                           ; $62ec: $80
	inc  e                                           ; $62ed: $1c
	add  c                                           ; $62ee: $81
	rra                                              ; $62ef: $1f
	inc  bc                                          ; $62f0: $03
	ld   e, a                                        ; $62f1: $5f
	ld   b, $fe                                      ; $62f2: $06 $fe
	ld   a, b                                        ; $62f4: $78
	add  e                                           ; $62f5: $83

jr_09a_62f6:
	ld   a, a                                        ; $62f6: $7f
	ld   bc, $c000                                   ; $62f7: $01 $00 $c0
	add  c                                           ; $62fa: $81
	add  b                                           ; $62fb: $80
	nop                                              ; $62fc: $00
	ldh  [$81], a                                    ; $62fd: $e0 $81
	ret  nz                                          ; $62ff: $c0

	nop                                              ; $6300: $00
	ld   [hl], b                                     ; $6301: $70
	add  c                                           ; $6302: $81
	ld   h, b                                        ; $6303: $60
	nop                                              ; $6304: $00
	jr   c, @-$7d                                    ; $6305: $38 $81

	jr   nc, @+$06                                   ; $6307: $30 $04

	ld   d, b                                        ; $6309: $50
	db   $10                                         ; $630a: $10
	inc  e                                           ; $630b: $1c
	jr   jr_09a_62f6                                 ; $630c: $18 $e8

	add  c                                           ; $630e: $81
	adc  b                                           ; $630f: $88
	nop                                              ; $6310: $00
	sub  b                                           ; $6311: $90
	add  c                                           ; $6312: $81
	add  b                                           ; $6313: $80
	dec  b                                           ; $6314: $05
	adc  b                                           ; $6315: $88
	add  b                                           ; $6316: $80
	and  [hl]                                        ; $6317: $a6
	cp   a                                           ; $6318: $bf
	cp   l                                           ; $6319: $bd
	sbc  a                                           ; $631a: $9f
	add  b                                           ; $631b: $80
	cp   a                                           ; $631c: $bf
	add  d                                           ; $631d: $82
	rst  $38                                         ; $631e: $ff
	nop                                              ; $631f: $00
	cp   $80                                         ; $6320: $fe $80
	rst  $38                                         ; $6322: $ff
	add  hl, bc                                      ; $6323: $09
	cp   $f8                                         ; $6324: $fe $f8
	db   $fc                                         ; $6326: $fc
	db   $f4                                         ; $6327: $f4
	ld   hl, sp-$18                                  ; $6328: $f8 $e8
	db   $f4                                         ; $632a: $f4
	push de                                          ; $632b: $d5
	call z, $800c                                    ; $632c: $cc $0c $80
	inc  e                                           ; $632f: $1c
	ld   bc, $fdfc                                   ; $6330: $01 $fc $fd
	add  b                                           ; $6333: $80
	db   $fc                                         ; $6334: $fc
	add  c                                           ; $6335: $81
	rst  $38                                         ; $6336: $ff
	ld   [bc], a                                     ; $6337: $02
	or   e                                           ; $6338: $b3
	call z, $800c                                    ; $6339: $cc $0c $80
	call z, $8c08                                    ; $633c: $cc $08 $8c
	ld   [$9888], sp                                 ; $633f: $08 $88 $98
	jr   jr_09a_6398                                 ; $6342: $18 $54

	ld   d, b                                        ; $6344: $50
	ld   d, d                                        ; $6345: $52
	ld   d, b                                        ; $6346: $50
	add  b                                           ; $6347: $80
	sub  b                                           ; $6348: $90
	nop                                              ; $6349: $00
	xor  c                                           ; $634a: $a9
	add  c                                           ; $634b: $81
	and  b                                           ; $634c: $a0
	nop                                              ; $634d: $00
	ld   a, b                                        ; $634e: $78
	add  e                                           ; $634f: $83
	ld   [hl], b                                     ; $6350: $70
	ld   [$787c], sp                                 ; $6351: $08 $7c $78
	ld   [hl-], a                                    ; $6354: $32
	jr   nc, @+$03                                   ; $6355: $30 $01

	jp   nz, $8079                                   ; $6357: $c2 $79 $80

	inc  b                                           ; $635a: $04
	add  c                                           ; $635b: $81
	nop                                              ; $635c: $00
	nop                                              ; $635d: $00
	add  b                                           ; $635e: $80
	add  c                                           ; $635f: $81
	nop                                              ; $6360: $00
	nop                                              ; $6361: $00
	ld   b, b                                        ; $6362: $40
	sub  c                                           ; $6363: $91
	nop                                              ; $6364: $00
	ld   a, [bc]                                     ; $6365: $0a
	add  b                                           ; $6366: $80
	nop                                              ; $6367: $00
	add  b                                           ; $6368: $80
	nop                                              ; $6369: $00
	ret  nz                                          ; $636a: $c0

	nop                                              ; $636b: $00
	jr   nz, @-$3e                                   ; $636c: $20 $c0

	ret  nc                                          ; $636e: $d0

	ldh  [$e8], a                                    ; $636f: $e0 $e8
	add  c                                           ; $6371: $81
	ldh  a, [rDIV]                                   ; $6372: $f0 $04
	db   $f4                                         ; $6374: $f4
	ld   hl, sp-$06                                  ; $6375: $f8 $fa
	db   $fc                                         ; $6377: $fc
	db   $fd                                         ; $6378: $fd
	add  d                                           ; $6379: $82
	cp   $81                                         ; $637a: $fe $81
	rst  $38                                         ; $637c: $ff
	ld   [$ff1e], sp                                 ; $637d: $08 $1e $ff
	pop  hl                                          ; $6380: $e1
	rst  $38                                         ; $6381: $ff
	ldh  [$e1], a                                    ; $6382: $e0 $e1
	ld   bc, $e01f                                   ; $6384: $01 $1f $e0
	add  c                                           ; $6387: $81
	nop                                              ; $6388: $00
	nop                                              ; $6389: $00
	add  b                                           ; $638a: $80
	add  c                                           ; $638b: $81
	nop                                              ; $638c: $00
	inc  b                                           ; $638d: $04
	ret  nz                                          ; $638e: $c0

	add  b                                           ; $638f: $80
	and  b                                           ; $6390: $a0
	add  b                                           ; $6391: $80
	db   $10                                         ; $6392: $10
	add  c                                           ; $6393: $81
	ldh  [rTMA], a                                   ; $6394: $e0 $06
	add  sp, $00                                     ; $6396: $e8 $00

jr_09a_6398:
	cp   $f8                                         ; $6398: $fe $f8
	add  c                                           ; $639a: $81
	cp   $7e                                         ; $639b: $fe $7e
	add  a                                           ; $639d: $87
	rst  $38                                         ; $639e: $ff
	add  h                                           ; $639f: $84
	nop                                              ; $63a0: $00
	ld   d, $80                                      ; $63a1: $16 $80
	nop                                              ; $63a3: $00
	ld   b, b                                        ; $63a4: $40
	add  b                                           ; $63a5: $80
	and  b                                           ; $63a6: $a0
	ret  nz                                          ; $63a7: $c0

	ret  nc                                          ; $63a8: $d0

	ldh  [$e8], a                                    ; $63a9: $e0 $e8
	ldh  a, [$f4]                                    ; $63ab: $f0 $f4
	ld   hl, sp-$7e                                  ; $63ad: $f8 $82
	db   $fc                                         ; $63af: $fc
	adc  c                                           ; $63b0: $89
	ld   c, $84                                      ; $63b1: $0e $84
	rst  $38                                         ; $63b3: $ff
	cp   c                                           ; $63b4: $b9
	rst  JumpTable                                         ; $63b5: $df
	sbc  a                                           ; $63b6: $9f
	cp   a                                           ; $63b7: $bf
	ccf                                              ; $63b8: $3f
	add  b                                           ; $63b9: $80
	ld   a, a                                        ; $63ba: $7f
	nop                                              ; $63bb: $00
	rst  $38                                         ; $63bc: $ff
	add  b                                           ; $63bd: $80
	nop                                              ; $63be: $00
	inc  b                                           ; $63bf: $04
	add  b                                           ; $63c0: $80
	nop                                              ; $63c1: $00
	ld   b, b                                        ; $63c2: $40
	add  b                                           ; $63c3: $80
	and  b                                           ; $63c4: $a0
	add  c                                           ; $63c5: $81
	ret  nz                                          ; $63c6: $c0

	nop                                              ; $63c7: $00
	ldh  a, [$83]                                    ; $63c8: $f0 $83
	ldh  [rP1], a                                    ; $63ca: $e0 $00
	db   $10                                         ; $63cc: $10
	add  c                                           ; $63cd: $81
	ret  nz                                          ; $63ce: $c0

	nop                                              ; $63cf: $00
	and  b                                           ; $63d0: $a0
	add  a                                           ; $63d1: $87
	add  b                                           ; $63d2: $80
	ld   [bc], a                                     ; $63d3: $02
	ld   b, b                                        ; $63d4: $40
	nop                                              ; $63d5: $00
	ld   a, a                                        ; $63d6: $7f
	add  c                                           ; $63d7: $81
	rst  $38                                         ; $63d8: $ff
	ld   [bc], a                                     ; $63d9: $02
	cp   $ff                                         ; $63da: $fe $ff
	db   $fd                                         ; $63dc: $fd
	add  c                                           ; $63dd: $81
	rst  $38                                         ; $63de: $ff
	add  hl, bc                                      ; $63df: $09
	ei                                               ; $63e0: $fb
	rst  $38                                         ; $63e1: $ff
	rst  $30                                         ; $63e2: $f7
	rst  $38                                         ; $63e3: $ff
	rst  $28                                         ; $63e4: $ef
	rst  $38                                         ; $63e5: $ff
	sbc  a                                           ; $63e6: $9f
	rst  $38                                         ; $63e7: $ff
	ld   a, a                                        ; $63e8: $7f
	rst  $38                                         ; $63e9: $ff
	add  b                                           ; $63ea: $80
	db   $fc                                         ; $63eb: $fc
	ld   a, [bc]                                     ; $63ec: $0a
	ei                                               ; $63ed: $fb
	ld   hl, sp-$1c                                  ; $63ee: $f8 $e4
	ldh  [$d8], a                                    ; $63f0: $e0 $d8
	ret  nz                                          ; $63f2: $c0

	and  b                                           ; $63f3: $a0
	add  b                                           ; $63f4: $80
	ld   b, b                                        ; $63f5: $40
	nop                                              ; $63f6: $00
	ld   a, a                                        ; $63f7: $7f
	add  e                                           ; $63f8: $83
	or   a                                           ; $63f9: $b7
	nop                                              ; $63fa: $00
	or   e                                           ; $63fb: $b3
	add  c                                           ; $63fc: $81
	ld   [hl], a                                     ; $63fd: $77
	ld   [bc], a                                     ; $63fe: $02
	ld   [hl], c                                     ; $63ff: $71
	ld   a, e                                        ; $6400: $7b
	ld   a, d                                        ; $6401: $7a
	add  e                                           ; $6402: $83
	ei                                               ; $6403: $fb
	add  b                                           ; $6404: $80
	ld   sp, hl                                      ; $6405: $f9
	ld   [de], a                                     ; $6406: $12
	cp   $f0                                         ; $6407: $fe $f0
	pop  af                                          ; $6409: $f1
	ldh  a, [$f8]                                    ; $640a: $f0 $f8
	ldh  [rAUD4LEN], a                               ; $640c: $e0 $20
	ldh  [$f0], a                                    ; $640e: $e0 $f0
	ret  nz                                          ; $6410: $c0

	and  b                                           ; $6411: $a0
	add  b                                           ; $6412: $80
	ccf                                              ; $6413: $3f
	ldh  a, [rIF]                                    ; $6414: $f0 $0f
	rst  $38                                         ; $6416: $ff
	ccf                                              ; $6417: $3f
	rst  $38                                         ; $6418: $ff
	ret  nz                                          ; $6419: $c0

	add  l                                           ; $641a: $85
	rst  $38                                         ; $641b: $ff
	inc  de                                          ; $641c: $13
	ccf                                              ; $641d: $3f
	rst  $38                                         ; $641e: $ff
	rst  JumpTable                                         ; $641f: $df
	rst  $38                                         ; $6420: $ff
	rst  $20                                         ; $6421: $e7
	rst  $38                                         ; $6422: $ff
	ld   a, e                                        ; $6423: $7b
	ld   a, a                                        ; $6424: $7f
	cp   h                                           ; $6425: $bc
	ccf                                              ; $6426: $3f
	ld   e, a                                        ; $6427: $5f
	rra                                              ; $6428: $1f
	cpl                                              ; $6429: $2f
	rrca                                             ; $642a: $0f
	rla                                              ; $642b: $17
	rlca                                             ; $642c: $07
	dec  bc                                          ; $642d: $0b
	inc  bc                                          ; $642e: $03
	ld   b, a                                        ; $642f: $47
	cp   a                                           ; $6430: $bf
	add  b                                           ; $6431: $80
	ld   a, a                                        ; $6432: $7f
	add  b                                           ; $6433: $80
	ld   a, [hl]                                     ; $6434: $7e
	add  b                                           ; $6435: $80
	db   $fc                                         ; $6436: $fc
	add  b                                           ; $6437: $80
	ld   a, [$7e80]                                  ; $6438: $fa $80 $7e

jr_09a_643b:
	inc  b                                           ; $643b: $04
	db   $fd                                         ; $643c: $fd
	db   $fc                                         ; $643d: $fc
	ld   [bc], a                                     ; $643e: $02
	nop                                              ; $643f: $00
	inc  b                                           ; $6440: $04
	add  b                                           ; $6441: $80
	nop                                              ; $6442: $00
	add  b                                           ; $6443: $80
	db   $10                                         ; $6444: $10
	ld   b, $30                                      ; $6445: $06 $30
	inc  sp                                          ; $6447: $33
	ld   [hl], b                                     ; $6448: $70
	ld   [hl], l                                     ; $6449: $75
	ld   [hl], c                                     ; $644a: $71
	ld   a, l                                        ; $644b: $7d
	dec  c                                           ; $644c: $0d
	add  b                                           ; $644d: $80
	db   $fc                                         ; $644e: $fc
	add  b                                           ; $644f: $80
	cp   $04                                         ; $6450: $fe $04
	ccf                                              ; $6452: $3f
	add  b                                           ; $6453: $80
	ret  nz                                          ; $6454: $c0

	nop                                              ; $6455: $00
	add  b                                           ; $6456: $80
	adc  e                                           ; $6457: $8b
	nop                                              ; $6458: $00
	dec  de                                          ; $6459: $1b
	ld   bc, wType0AnimSpriteXPosRelativeTo                                   ; $645a: $01 $00 $c6
	nop                                              ; $645d: $00
	ld   hl, sp-$3f                                  ; $645e: $f8 $c1
	dec  a                                           ; $6460: $3d
	db   $fc                                         ; $6461: $fc
	cp   [hl]                                        ; $6462: $be
	ld   a, [hl]                                     ; $6463: $7e

jr_09a_6464:
	ld   hl, sp-$01                                  ; $6464: $f8 $ff
	rst  $20                                         ; $6466: $e7
	rst  $38                                         ; $6467: $ff
	db   $e3                                         ; $6468: $e3
	nop                                              ; $6469: $00
	inc  bc                                          ; $646a: $03
	nop                                              ; $646b: $00
	ld   bc, $0300                                   ; $646c: $01 $00 $03
	nop                                              ; $646f: $00
	ld   b, $00                                      ; $6470: $06 $00
	rrca                                             ; $6472: $0f
	nop                                              ; $6473: $00
	inc  b                                           ; $6474: $04
	nop                                              ; $6475: $00
	add  b                                           ; $6476: $80
	rlca                                             ; $6477: $07
	ld   b, $7f                                      ; $6478: $06 $7f
	rrca                                             ; $647a: $0f
	sub  a                                           ; $647b: $97
	rlca                                             ; $647c: $07
	ld   l, e                                        ; $647d: $6b
	inc  bc                                          ; $647e: $03
	add  h                                           ; $647f: $84
	add  c                                           ; $6480: $81
	ld   bc, $8d07                                   ; $6481: $01 $07 $8d
	nop                                              ; $6484: $00
	jr   nc, jr_09a_6487                             ; $6485: $30 $00

jr_09a_6487:
	ld   b, b                                        ; $6487: $40
	nop                                              ; $6488: $00
	sub  c                                           ; $6489: $91
	ld   de, $1080                                   ; $648a: $11 $80 $10
	inc  b                                           ; $648d: $04
	sub  b                                           ; $648e: $90
	db   $10                                         ; $648f: $10
	jr   nz, jr_09a_6492                             ; $6490: $20 $00

jr_09a_6492:
	ld   c, c                                        ; $6492: $49
	add  c                                           ; $6493: $81
	ld   [$8b00], sp                                 ; $6494: $08 $00 $8b
	add  c                                           ; $6497: $81
	ld   [$170f], sp                                 ; $6498: $08 $0f $17
	nop                                              ; $649b: $00
	db   $e4                                         ; $649c: $e4
	ld   [bc], a                                     ; $649d: $02
	sbc  d                                           ; $649e: $9a
	add  d                                           ; $649f: $82
	add  hl, bc                                      ; $64a0: $09
	dec  b                                           ; $64a1: $05
	rst  $20                                         ; $64a2: $e7
	rlca                                             ; $64a3: $07
	rla                                              ; $64a4: $17
	ld   b, $07                                      ; $64a5: $06 $07
	nop                                              ; $64a7: $00
	ld   b, $00                                      ; $64a8: $06 $00
	add  c                                           ; $64aa: $81
	inc  b                                           ; $64ab: $04
	ld   a, [bc]                                     ; $64ac: $0a
	nop                                              ; $64ad: $00
	inc  b                                           ; $64ae: $04
	nop                                              ; $64af: $00
	ld   l, b                                        ; $64b0: $68
	jr   nz, jr_09a_64b9                             ; $64b1: $20 $06

	inc  b                                           ; $64b3: $04
	ld   a, [hl]                                     ; $64b4: $7e
	jr   jr_09a_64db                                 ; $64b5: $18 $24

	nop                                              ; $64b7: $00
	add  b                                           ; $64b8: $80

jr_09a_64b9:
	jr   jr_09a_643b                                 ; $64b9: $18 $80

	ld   bc, $8304                                   ; $64bb: $01 $04 $83
	ld   [bc], a                                     ; $64be: $02
	ld   b, [hl]                                     ; $64bf: $46
	ld   bc, $8039                                   ; $64c0: $01 $39 $80
	jp   $ff81                                       ; $64c3: $c3 $81 $ff


	add  b                                           ; $64c6: $80
	ld   a, a                                        ; $64c7: $7f
	add  b                                           ; $64c8: $80
	rra                                              ; $64c9: $1f
	nop                                              ; $64ca: $00
	inc  sp                                          ; $64cb: $33
	add  c                                           ; $64cc: $81
	inc  c                                           ; $64cd: $0c
	ld   bc, $0c4c                                   ; $64ce: $01 $4c $0c
	add  b                                           ; $64d1: $80
	ld   [$9805], sp                                 ; $64d2: $08 $05 $98
	jr   jr_09a_652b                                 ; $64d5: $18 $54

	ld   d, b                                        ; $64d7: $50
	ld   d, d                                        ; $64d8: $52
	ld   d, b                                        ; $64d9: $50
	add  b                                           ; $64da: $80

jr_09a_64db:
	sub  b                                           ; $64db: $90
	nop                                              ; $64dc: $00

jr_09a_64dd:
	xor  c                                           ; $64dd: $a9
	add  c                                           ; $64de: $81
	add  b                                           ; $64df: $80
	nop                                              ; $64e0: $00
	jr   jr_09a_6464                                 ; $64e1: $18 $81

	ld   b, b                                        ; $64e3: $40
	add  b                                           ; $64e4: $80
	ld   h, b                                        ; $64e5: $60
	ld   b, $74                                      ; $64e6: $06 $74
	ld   a, b                                        ; $64e8: $78
	ld   a, d                                        ; $64e9: $7a
	jr   nc, jr_09a_64dd                             ; $64ea: $30 $f1

	ld   [bc], a                                     ; $64ec: $02
	ld   a, [de]                                     ; $64ed: $1a
	sub  l                                           ; $64ee: $95
	inc  bc                                          ; $64ef: $03
	nop                                              ; $64f0: $00
	ld   h, e                                        ; $64f1: $63
	add  e                                           ; $64f2: $83
	inc  bc                                          ; $64f3: $03
	inc  b                                           ; $64f4: $04
	jp   $0b03                                       ; $64f5: $c3 $03 $0b


	rlca                                             ; $64f8: $07
	add  a                                           ; $64f9: $87
	add  c                                           ; $64fa: $81
	rlca                                             ; $64fb: $07
	nop                                              ; $64fc: $00
	rla                                              ; $64fd: $17
	add  c                                           ; $64fe: $81
	rrca                                             ; $64ff: $0f
	nop                                              ; $6500: $00
	cpl                                              ; $6501: $2f
	add  b                                           ; $6502: $80
	rra                                              ; $6503: $1f
	inc  bc                                          ; $6504: $03
	ld   e, $5e                                      ; $6505: $1e $5e
	ld   a, $be                                      ; $6507: $3e $be
	add  b                                           ; $6509: $80
	ld   a, l                                        ; $650a: $7d
	add  b                                           ; $650b: $80
	ld   a, e                                        ; $650c: $7b
	add  b                                           ; $650d: $80
	ei                                               ; $650e: $fb
	add  b                                           ; $650f: $80
	rst  $30                                         ; $6510: $f7
	ld   de, $ccef                                   ; $6511: $11 $ef $cc
	rst  $28                                         ; $6514: $ef
	adc  e                                           ; $6515: $8b
	rst  JumpTable                                         ; $6516: $df
	daa                                              ; $6517: $27
	cp   a                                           ; $6518: $bf
	cpl                                              ; $6519: $2f
	add  b                                           ; $651a: $80
	cp   b                                           ; $651b: $b8
	ret  nz                                          ; $651c: $c0

	adc  $c0                                         ; $651d: $ce $c0
	rst  $10                                         ; $651f: $d7
	ldh  [$e1], a                                    ; $6520: $e0 $e1
	ldh  [$e8], a                                    ; $6522: $e0 $e8
	add  c                                           ; $6524: $81
	ldh  a, [rSC]                                    ; $6525: $f0 $02
	db   $f4                                         ; $6527: $f4
	ld   hl, sp-$05                                  ; $6528: $f8 $fb
	add  b                                           ; $652a: $80

jr_09a_652b:
	ld   a, h                                        ; $652b: $7c
	add  b                                           ; $652c: $80
	ld   a, a                                        ; $652d: $7f
	ld   b, $bf                                      ; $652e: $06 $bf
	and  e                                           ; $6530: $a3
	rst  JumpTable                                         ; $6531: $df
	dec  h                                           ; $6532: $25
	rst  $20                                         ; $6533: $e7
	ld   a, [$80fb]                                  ; $6534: $fa $fb $80
	db   $fc                                         ; $6537: $fc
	add  b                                           ; $6538: $80
	rst  $38                                         ; $6539: $ff
	ld   a, [bc]                                     ; $653a: $0a
	db   $fc                                         ; $653b: $fc
	nop                                              ; $653c: $00
	inc  bc                                          ; $653d: $03
	nop                                              ; $653e: $00
	ld   bc, $0200                                   ; $653f: $01 $00 $02
	ld   bc, $0305                                   ; $6542: $01 $05 $03
	dec  bc                                          ; $6545: $0b
	add  b                                           ; $6546: $80
	inc  b                                           ; $6547: $04
	add  hl, bc                                      ; $6548: $09
	nop                                              ; $6549: $00
	rlca                                             ; $654a: $07
	nop                                              ; $654b: $00
	ld   a, b                                        ; $654c: $78
	nop                                              ; $654d: $00
	sbc  b                                           ; $654e: $98
	db   $10                                         ; $654f: $10
	ld   a, h                                        ; $6550: $7c
	ld   a, b                                        ; $6551: $78
	cp   $81                                         ; $6552: $fe $81
	db   $fc                                         ; $6554: $fc
	ld   bc, $7071                                   ; $6555: $01 $71 $70
	add  b                                           ; $6558: $80
	ld   b, b                                        ; $6559: $40
	add  b                                           ; $655a: $80
	nop                                              ; $655b: $00
	ld   [bc], a                                     ; $655c: $02
	ldh  [$e7], a                                    ; $655d: $e0 $e7
	rlca                                             ; $655f: $07
	add  b                                           ; $6560: $80
	rra                                              ; $6561: $1f
	add  b                                           ; $6562: $80
	ld   a, a                                        ; $6563: $7f
	add  h                                           ; $6564: $84
	rst  $38                                         ; $6565: $ff
	inc  bc                                          ; $6566: $03
	ld   a, a                                        ; $6567: $7f
	rst  $38                                         ; $6568: $ff
	ccf                                              ; $6569: $3f
	ld   a, a                                        ; $656a: $7f
	add  c                                           ; $656b: $81
	rra                                              ; $656c: $1f
	ld   [bc], a                                     ; $656d: $02
	inc  a                                           ; $656e: $3c
	rrca                                             ; $656f: $0f
	inc  bc                                          ; $6570: $03
	add  c                                           ; $6571: $81
	rrca                                             ; $6572: $0f
	ld   [$0717], sp                                 ; $6573: $08 $17 $07
	scf                                              ; $6576: $37
	rlca                                             ; $6577: $07
	rst  $10                                         ; $6578: $d7
	rla                                              ; $6579: $17
	ei                                               ; $657a: $fb
	ld   hl, sp-$0b                                  ; $657b: $f8 $f5
	add  b                                           ; $657d: $80
	ret  nc                                          ; $657e: $d0

	dec  b                                           ; $657f: $05
	or   b                                           ; $6580: $b0
	xor  b                                           ; $6581: $a8
	and  b                                           ; $6582: $a0
	xor  [hl]                                        ; $6583: $ae
	ld   h, b                                        ; $6584: $60
	ld   b, [hl]                                     ; $6585: $46
	add  b                                           ; $6586: $80
	ld   e, b                                        ; $6587: $58
	ld   c, $d8                                      ; $6588: $0e $d8
	sbc  h                                           ; $658a: $9c
	add  b                                           ; $658b: $80
	ld   a, [bc]                                     ; $658c: $0a
	ld   [hl], b                                     ; $658d: $70
	ld   a, b                                        ; $658e: $78
	ld   b, $67                                      ; $658f: $06 $67
	ld   [bc], a                                     ; $6591: $02
	inc  h                                           ; $6592: $24
	sub  b                                           ; $6593: $90
	ldh  a, [$88]                                    ; $6594: $f0 $88
	ret  nc                                          ; $6596: $d0

	add  b                                           ; $6597: $80
	add  b                                           ; $6598: $80
	ld   d, b                                        ; $6599: $50
	add  b                                           ; $659a: $80
	jr   z, jr_09a_659f                              ; $659b: $28 $02

	add  e                                           ; $659d: $83
	nop                                              ; $659e: $00

jr_09a_659f:
	ld   [bc], a                                     ; $659f: $02
	add  c                                           ; $65a0: $81
	nop                                              ; $65a1: $00
	ld   b, $80                                      ; $65a2: $06 $80
	nop                                              ; $65a4: $00
	ldh  a, [rP1]                                    ; $65a5: $f0 $00
	ld   l, $d0                                      ; $65a7: $2e $d0
	ld   c, h                                        ; $65a9: $4c
	add  c                                           ; $65aa: $81
	ld   b, d                                        ; $65ab: $42
	dec  c                                           ; $65ac: $0d
	ld   c, [hl]                                     ; $65ad: $4e
	ld   b, b                                        ; $65ae: $40
	ld   de, $2504                                   ; $65af: $11 $04 $25
	jr   jr_09a_65f0                                 ; $65b2: $18 $3c

	db   $10                                         ; $65b4: $10
	inc  c                                           ; $65b5: $0c
	ld   [bc], a                                     ; $65b6: $02
	inc  bc                                          ; $65b7: $03
	inc  b                                           ; $65b8: $04
	ld   [bc], a                                     ; $65b9: $02
	nop                                              ; $65ba: $00
	add  b                                           ; $65bb: $80
	ld   b, l                                        ; $65bc: $45
	add  hl, bc                                      ; $65bd: $09
	nop                                              ; $65be: $00
	cp   c                                           ; $65bf: $b9
	add  hl, sp                                      ; $65c0: $39
	ld   d, d                                        ; $65c1: $52
	ld   d, [hl]                                     ; $65c2: $56
	ld   c, e                                        ; $65c3: $4b
	dec  c                                           ; $65c4: $0d
	dec  l                                           ; $65c5: $2d
	xor  h                                           ; $65c6: $ac
	inc  l                                           ; $65c7: $2c
	add  b                                           ; $65c8: $80
	ld   l, $00                                      ; $65c9: $2e $00
	and  [hl]                                        ; $65cb: $a6
	add  b                                           ; $65cc: $80
	ld   [hl], $01                                   ; $65cd: $36 $01
	or   [hl]                                        ; $65cf: $b6
	sbc  e                                           ; $65d0: $9b
	add  b                                           ; $65d1: $80
	dec  de                                          ; $65d2: $1b
	add  b                                           ; $65d3: $80
	sbc  e                                           ; $65d4: $9b
	rlca                                             ; $65d5: $07
	ld   e, e                                        ; $65d6: $5b
	db   $db                                         ; $65d7: $db
	dec  de                                          ; $65d8: $1b
	dec  e                                           ; $65d9: $1d
	ld   e, l                                        ; $65da: $5d
	call $ac6d                                       ; $65db: $cd $6d $ac
	add  b                                           ; $65de: $80
	inc  l                                           ; $65df: $2c
	inc  bc                                          ; $65e0: $03
	inc  c                                           ; $65e1: $0c
	dec  sp                                          ; $65e2: $3b
	ld   hl, sp-$0b                                  ; $65e3: $f8 $f5
	add  b                                           ; $65e5: $80
	ret  nc                                          ; $65e6: $d0

	dec  b                                           ; $65e7: $05
	or   b                                           ; $65e8: $b0
	xor  b                                           ; $65e9: $a8
	and  b                                           ; $65ea: $a0
	xor  [hl]                                        ; $65eb: $ae
	ld   h, b                                        ; $65ec: $60
	ld   b, [hl]                                     ; $65ed: $46
	add  b                                           ; $65ee: $80
	ld   e, b                                        ; $65ef: $58

jr_09a_65f0:
	ld   c, $d8                                      ; $65f0: $0e $d8
	sbc  h                                           ; $65f2: $9c
	add  b                                           ; $65f3: $80
	ld   a, [bc]                                     ; $65f4: $0a
	ld   [hl], b                                     ; $65f5: $70
	ld   h, b                                        ; $65f6: $60
	ld   h, [hl]                                     ; $65f7: $66
	ld   a, a                                        ; $65f8: $7f
	ld   b, $44                                      ; $65f9: $06 $44
	sub  b                                           ; $65fb: $90
	db   $f4                                         ; $65fc: $f4
	adc  b                                           ; $65fd: $88
	ret  nc                                          ; $65fe: $d0

	add  b                                           ; $65ff: $80
	add  b                                           ; $6600: $80
	ld   d, b                                        ; $6601: $50
	add  b                                           ; $6602: $80
	jr   z, jr_09a_6607                              ; $6603: $28 $02

	add  e                                           ; $6605: $83
	nop                                              ; $6606: $00

jr_09a_6607:
	ld   [bc], a                                     ; $6607: $02
	add  c                                           ; $6608: $81
	nop                                              ; $6609: $00
	ld   b, $80                                      ; $660a: $06 $80
	nop                                              ; $660c: $00
	ldh  a, [rP1]                                    ; $660d: $f0 $00
	ld   l, $d0                                      ; $660f: $2e $d0
	ld   c, h                                        ; $6611: $4c
	add  c                                           ; $6612: $81
	ld   b, d                                        ; $6613: $42
	dec  c                                           ; $6614: $0d
	ld   c, [hl]                                     ; $6615: $4e
	ld   b, b                                        ; $6616: $40
	db   $10                                         ; $6617: $10
	dec  b                                           ; $6618: $05
	inc  hl                                          ; $6619: $23
	add  hl, de                                      ; $661a: $19
	ccf                                              ; $661b: $3f
	stop                                             ; $661c: $10 $00
	ld   a, [bc]                                     ; $661e: $0a
	inc  bc                                          ; $661f: $03
	inc  b                                           ; $6620: $04
	ld   [bc], a                                     ; $6621: $02
	nop                                              ; $6622: $00
	add  b                                           ; $6623: $80
	ld   b, l                                        ; $6624: $45
	add  hl, bc                                      ; $6625: $09
	nop                                              ; $6626: $00
	cp   c                                           ; $6627: $b9
	add  hl, sp                                      ; $6628: $39
	ld   d, d                                        ; $6629: $52
	ld   d, [hl]                                     ; $662a: $56
	ld   c, e                                        ; $662b: $4b
	dec  c                                           ; $662c: $0d
	dec  l                                           ; $662d: $2d
	xor  h                                           ; $662e: $ac
	inc  l                                           ; $662f: $2c
	add  b                                           ; $6630: $80
	ld   l, $00                                      ; $6631: $2e $00
	and  [hl]                                        ; $6633: $a6
	add  b                                           ; $6634: $80
	ld   [hl], $01                                   ; $6635: $36 $01
	or   [hl]                                        ; $6637: $b6
	sbc  e                                           ; $6638: $9b
	add  b                                           ; $6639: $80
	dec  de                                          ; $663a: $1b
	add  b                                           ; $663b: $80
	sbc  e                                           ; $663c: $9b
	add  b                                           ; $663d: $80
	db   $db                                         ; $663e: $db

jr_09a_663f:
	dec  b                                           ; $663f: $05
	dec  de                                          ; $6640: $1b
	sbc  l                                           ; $6641: $9d
	ld   e, l                                        ; $6642: $5d
	call $ac6d                                       ; $6643: $cd $6d $ac
	add  b                                           ; $6646: $80
	inc  l                                           ; $6647: $2c
	inc  bc                                          ; $6648: $03
	inc  c                                           ; $6649: $0c
	dec  sp                                          ; $664a: $3b
	ld   hl, sp-$0b                                  ; $664b: $f8 $f5
	add  b                                           ; $664d: $80
	ret  nc                                          ; $664e: $d0

	dec  b                                           ; $664f: $05
	or   b                                           ; $6650: $b0
	xor  b                                           ; $6651: $a8
	and  b                                           ; $6652: $a0
	xor  [hl]                                        ; $6653: $ae
	ld   h, b                                        ; $6654: $60
	ld   b, [hl]                                     ; $6655: $46
	add  b                                           ; $6656: $80
	ld   e, b                                        ; $6657: $58
	dec  bc                                          ; $6658: $0b
	ret  c                                           ; $6659: $d8

	sbc  h                                           ; $665a: $9c
	add  b                                           ; $665b: $80
	ld   a, [bc]                                     ; $665c: $0a
	ld   [hl], b                                     ; $665d: $70
	nop                                              ; $665e: $00
	ld   b, $47                                      ; $665f: $06 $47
	ld   b, $3c                                      ; $6661: $06 $3c
	add  b                                           ; $6663: $80
	db   $fc                                         ; $6664: $fc
	add  c                                           ; $6665: $81
	add  b                                           ; $6666: $80
	add  b                                           ; $6667: $80
	ld   d, b                                        ; $6668: $50
	add  b                                           ; $6669: $80
	jr   z, jr_09a_666e                              ; $666a: $28 $02

	add  e                                           ; $666c: $83
	nop                                              ; $666d: $00

jr_09a_666e:
	ld   [bc], a                                     ; $666e: $02
	add  c                                           ; $666f: $81
	nop                                              ; $6670: $00
	ld   b, $80                                      ; $6671: $06 $80
	nop                                              ; $6673: $00
	ldh  a, [rP1]                                    ; $6674: $f0 $00
	ld   l, $d0                                      ; $6676: $2e $d0
	ld   c, h                                        ; $6678: $4c
	add  c                                           ; $6679: $81
	ld   b, d                                        ; $667a: $42
	ld   a, [bc]                                     ; $667b: $0a
	ld   c, [hl]                                     ; $667c: $4e
	ld   b, b                                        ; $667d: $40
	db   $10                                         ; $667e: $10
	dec  b                                           ; $667f: $05
	inc  hl                                          ; $6680: $23
	add  hl, de                                      ; $6681: $19
	dec  a                                           ; $6682: $3d
	dec  d                                           ; $6683: $15
	rlca                                             ; $6684: $07
	ld   [$8107], sp                                 ; $6685: $08 $07 $81
	nop                                              ; $6688: $00
	add  b                                           ; $6689: $80
	ld   b, l                                        ; $668a: $45
	add  hl, bc                                      ; $668b: $09
	nop                                              ; $668c: $00
	cp   c                                           ; $668d: $b9
	add  hl, sp                                      ; $668e: $39
	ld   d, d                                        ; $668f: $52
	ld   d, [hl]                                     ; $6690: $56
	ld   c, e                                        ; $6691: $4b
	dec  c                                           ; $6692: $0d
	dec  l                                           ; $6693: $2d
	xor  h                                           ; $6694: $ac
	inc  l                                           ; $6695: $2c
	add  b                                           ; $6696: $80
	ld   l, $00                                      ; $6697: $2e $00
	and  [hl]                                        ; $6699: $a6
	add  b                                           ; $669a: $80
	ld   [hl], $01                                   ; $669b: $36 $01
	or   [hl]                                        ; $669d: $b6
	sbc  e                                           ; $669e: $9b
	add  b                                           ; $669f: $80
	dec  de                                          ; $66a0: $1b
	add  b                                           ; $66a1: $80
	sbc  e                                           ; $66a2: $9b
	add  b                                           ; $66a3: $80
	db   $db                                         ; $66a4: $db
	inc  b                                           ; $66a5: $04
	dec  de                                          ; $66a6: $1b
	dec  e                                           ; $66a7: $1d
	ld   e, l                                        ; $66a8: $5d
	call $816d                                       ; $66a9: $cd $6d $81
	inc  l                                           ; $66ac: $2c
	ld   bc, $330c                                   ; $66ad: $01 $0c $33
	add  b                                           ; $66b0: $80
	inc  b                                           ; $66b1: $04
	ld   [$0400], sp                                 ; $66b2: $08 $00 $04
	nop                                              ; $66b5: $00
	ld   c, b                                        ; $66b6: $48
	nop                                              ; $66b7: $00
	ld   h, $64                                      ; $66b8: $26 $64
	ld   [bc], a                                     ; $66ba: $02
	nop                                              ; $66bb: $00
	add  b                                           ; $66bc: $80
	jr   jr_09a_663f                                 ; $66bd: $18 $80

	nop                                              ; $66bf: $00
	add  b                                           ; $66c0: $80
	ld   bc, $8304                                   ; $66c1: $01 $04 $83
	ld   [bc], a                                     ; $66c4: $02
	ld   b, [hl]                                     ; $66c5: $46
	ld   bc, $8039                                   ; $66c6: $01 $39 $80
	jp   $ff81                                       ; $66c9: $c3 $81 $ff


	add  b                                           ; $66cc: $80
	ld   a, a                                        ; $66cd: $7f
	add  b                                           ; $66ce: $80
	rra                                              ; $66cf: $1f
	rst  $38                                         ; $66d0: $ff
	nop                                              ; $66d1: $00
	rst  $38                                         ; $66d2: $ff
	nop                                              ; $66d3: $00
	rst  $38                                         ; $66d4: $ff
	nop                                              ; $66d5: $00
	rst  $38                                         ; $66d6: $ff
	nop                                              ; $66d7: $00
	rst  $38                                         ; $66d8: $ff
	nop                                              ; $66d9: $00
	ld   sp, hl                                      ; $66da: $f9
	nop                                              ; $66db: $00
	sbc  l                                           ; $66dc: $9d
	ld   bc, $0087                                   ; $66dd: $01 $87 $00
	add  b                                           ; $66e0: $80
	ld   [bc], a                                     ; $66e1: $02
	add  b                                           ; $66e2: $80
	ld   b, d                                        ; $66e3: $42
	rlca                                             ; $66e4: $07
	ld   b, [hl]                                     ; $66e5: $46
	ld   b, h                                        ; $66e6: $44
	ld   h, a                                        ; $66e7: $67
	ld   b, d                                        ; $66e8: $42
	ld   a, a                                        ; $66e9: $7f
	scf                                              ; $66ea: $37
	rst  $38                                         ; $66eb: $ff
	rst  $28                                         ; $66ec: $ef
	add  l                                           ; $66ed: $85
	rst  $38                                         ; $66ee: $ff
	nop                                              ; $66ef: $00
	cp   a                                           ; $66f0: $bf
	add  d                                           ; $66f1: $82
	ld   a, a                                        ; $66f2: $7f
	inc  bc                                          ; $66f3: $03
	ccf                                              ; $66f4: $3f
	ld   c, $0f                                      ; $66f5: $0e $0f
	ld   bc, $0280                                   ; $66f7: $01 $80 $02
	and  d                                           ; $66fa: $a2
	nop                                              ; $66fb: $00
	add  b                                           ; $66fc: $80
	db   $10                                         ; $66fd: $10
	dec  b                                           ; $66fe: $05
	ld   [hl], b                                     ; $66ff: $70
	ld   d, b                                        ; $6700: $50
	ldh  a, [$b0]                                    ; $6701: $f0 $b0
	ldh  a, [rSVBK]                                  ; $6703: $f0 $70
	add  b                                           ; $6705: $80
	ldh  a, [rSB]                                    ; $6706: $f0 $01
	ldh  a, [c]                                      ; $6708: $f2
	jp   nc, $fe80                                   ; $6709: $d2 $80 $fe

	add  b                                           ; $670c: $80
	db   $fc                                         ; $670d: $fc
	ld   bc, $b8f8                                   ; $670e: $01 $f8 $b8
	add  b                                           ; $6711: $80
	ldh  a, [rSB]                                    ; $6712: $f0 $01
	ldh  [$60], a                                    ; $6714: $e0 $60
	add  b                                           ; $6716: $80
	ret  nz                                          ; $6717: $c0

	add  b                                           ; $6718: $80
	add  b                                           ; $6719: $80
	sbc  [hl]                                        ; $671a: $9e
	nop                                              ; $671b: $00
	add  b                                           ; $671c: $80
	ld   [bc], a                                     ; $671d: $02
	inc  bc                                          ; $671e: $03
	rlca                                             ; $671f: $07
	dec  b                                           ; $6720: $05
	cpl                                              ; $6721: $2f
	ld   a, [hl+]                                    ; $6722: $2a
	add  b                                           ; $6723: $80
	cpl                                              ; $6724: $2f
	dec  b                                           ; $6725: $05
	ld   a, a                                        ; $6726: $7f
	ld   d, a                                        ; $6727: $57
	ld   a, a                                        ; $6728: $7f
	ld   l, a                                        ; $6729: $6f
	ld   a, a                                        ; $672a: $7f
	ccf                                              ; $672b: $3f
	sub  e                                           ; $672c: $93
	rst  $38                                         ; $672d: $ff
	ld   bc, $7fbf                                   ; $672e: $01 $bf $7f
	add  b                                           ; $6731: $80
	ld   l, a                                        ; $6732: $6f
	add  b                                           ; $6733: $80
	ld   d, l                                        ; $6734: $55
	add  b                                           ; $6735: $80
	ld   c, d                                        ; $6736: $4a
	nop                                              ; $6737: $00
	ld   b, b                                        ; $6738: $40
	sub  d                                           ; $6739: $92
	nop                                              ; $673a: $00
	add  b                                           ; $673b: $80
	ld   h, b                                        ; $673c: $60
	ld   bc, $60e0                                   ; $673d: $01 $e0 $60
	add  b                                           ; $6740: $80
	ldh  a, [$80]                                    ; $6741: $f0 $80
	ld   hl, sp+$03                                  ; $6743: $f8 $03
	ld   sp, hl                                      ; $6745: $f9
	adc  c                                           ; $6746: $89
	rst  $38                                         ; $6747: $ff
	rst  $30                                         ; $6748: $f7
	add  c                                           ; $6749: $81
	rst  $38                                         ; $674a: $ff
	nop                                              ; $674b: $00
	ei                                               ; $674c: $fb
	add  e                                           ; $674d: $83
	rst  $38                                         ; $674e: $ff
	inc  b                                           ; $674f: $04
	ei                                               ; $6750: $fb
	rst  $38                                         ; $6751: $ff
	rst  ToBoot                                         ; $6752: $c7
	cp   $de                                         ; $6753: $fe $de
	add  d                                           ; $6755: $82
	cp   $01                                         ; $6756: $fe $01
	db   $fc                                         ; $6758: $fc
	call c, $fc80                                    ; $6759: $dc $80 $fc
	ld   bc, $b8f8                                   ; $675c: $01 $f8 $b8
	add  b                                           ; $675f: $80
	ldh  a, [rSB]                                    ; $6760: $f0 $01
	ldh  [$60], a                                    ; $6762: $e0 $60
	add  b                                           ; $6764: $80
	ret  nz                                          ; $6765: $c0

	add  b                                           ; $6766: $80
	add  b                                           ; $6767: $80
	sub  b                                           ; $6768: $90
	nop                                              ; $6769: $00
	inc  bc                                          ; $676a: $03
	ld   bc, $0700                                   ; $676b: $01 $00 $07
	dec  b                                           ; $676e: $05
	add  b                                           ; $676f: $80
	rlca                                             ; $6770: $07
	inc  bc                                          ; $6771: $03
	rrca                                             ; $6772: $0f
	inc  bc                                          ; $6773: $03
	ccf                                              ; $6774: $3f
	cpl                                              ; $6775: $2f
	add  l                                           ; $6776: $85
	ccf                                              ; $6777: $3f
	nop                                              ; $6778: $00
	cpl                                              ; $6779: $2f
	add  d                                           ; $677a: $82
	ccf                                              ; $677b: $3f
	add  l                                           ; $677c: $85
	rra                                              ; $677d: $1f
	nop                                              ; $677e: $00
	rla                                              ; $677f: $17

Jump_09a_6780:
	add  c                                           ; $6780: $81
	rrca                                             ; $6781: $0f
	nop                                              ; $6782: $00
	ld   [$0f82], sp                                 ; $6783: $08 $82 $0f
	add  b                                           ; $6786: $80
	rlca                                             ; $6787: $07
	add  b                                           ; $6788: $80
	inc  b                                           ; $6789: $04
	sub  h                                           ; $678a: $94
	nop                                              ; $678b: $00
	ld   bc, $00c0                                   ; $678c: $01 $c0 $00
	add  b                                           ; $678f: $80
	ldh  [$03], a                                    ; $6790: $e0 $03
	db   $fc                                         ; $6792: $fc
	call z, $f4fc                                    ; $6793: $cc $fc $f4
	add  c                                           ; $6796: $81
	cp   $02                                         ; $6797: $fe $02
	and  $fe                                         ; $6799: $e6 $fe
	xor  $84                                         ; $679b: $ee $84
	cp   $03                                         ; $679d: $fe $03
	db   $fc                                         ; $679f: $fc
	db   $ec                                         ; $67a0: $ec
	db   $fc                                         ; $67a1: $fc
	sbc  h                                           ; $67a2: $9c
	add  d                                           ; $67a3: $82
	ld   hl, sp-$7f                                  ; $67a4: $f8 $81
	ldh  a, [rP1]                                    ; $67a6: $f0 $00
	ld   [hl], b                                     ; $67a8: $70
	add  d                                           ; $67a9: $82
	ldh  [$80], a                                    ; $67aa: $e0 $80
	ret  nz                                          ; $67ac: $c0

	sub  l                                           ; $67ad: $95
	nop                                              ; $67ae: $00
	add  c                                           ; $67af: $81
	inc  bc                                          ; $67b0: $03
	ld   bc, $0b07                                   ; $67b1: $01 $07 $0b
	add  c                                           ; $67b4: $81
	rra                                              ; $67b5: $1f
	ld   b, $14                                      ; $67b6: $06 $14
	rra                                              ; $67b8: $1f
	dec  de                                          ; $67b9: $1b
	rrca                                             ; $67ba: $0f
	ld   c, $07                                      ; $67bb: $0e $07
	dec  b                                           ; $67bd: $05
	add  c                                           ; $67be: $81
	rlca                                             ; $67bf: $07
	ld   [bc], a                                     ; $67c0: $02
	ld   b, $07                                      ; $67c1: $06 $07
	dec  b                                           ; $67c3: $05
	add  b                                           ; $67c4: $80
	rlca                                             ; $67c5: $07
	add  b                                           ; $67c6: $80
	dec  b                                           ; $67c7: $05
	add  [hl]                                        ; $67c8: $86
	nop                                              ; $67c9: $00
	inc  bc                                          ; $67ca: $03
	ret  nz                                          ; $67cb: $c0

	nop                                              ; $67cc: $00
	ldh  [$c0], a                                    ; $67cd: $e0 $c0
	add  b                                           ; $67cf: $80
	ldh  a, [$09]                                    ; $67d0: $f0 $09
	db   $fc                                         ; $67d2: $fc
	ld   h, h                                        ; $67d3: $64
	cp   $7e                                         ; $67d4: $fe $7e
	cp   $b6                                         ; $67d6: $fe $b6
	db   $fc                                         ; $67d8: $fc
	call z, $7cfc                                    ; $67d9: $cc $fc $7c
	add  b                                           ; $67dc: $80
	ret  nz                                          ; $67dd: $c0

	dec  b                                           ; $67de: $05
	call z, $9ec0                                    ; $67df: $cc $c0 $9e
	sbc  d                                           ; $67e2: $9a
	ld   e, $16                                      ; $67e3: $1e $16
	add  b                                           ; $67e5: $80

jr_09a_67e6:
	ld   c, $97                                      ; $67e6: $0e $97
	nop                                              ; $67e8: $00
	nop                                              ; $67e9: $00
	rst  $38                                         ; $67ea: $ff
	add  b                                           ; $67eb: $80
	nop                                              ; $67ec: $00
	rlca                                             ; $67ed: $07
	ld   a, [hl]                                     ; $67ee: $7e
	rst  $38                                         ; $67ef: $ff
	inc  a                                           ; $67f0: $3c
	ld   a, [hl]                                     ; $67f1: $7e
	jr   jr_09a_6830                                 ; $67f2: $18 $3c

	nop                                              ; $67f4: $00
	jr   @+$01                                       ; $67f5: $18 $ff

	nop                                              ; $67f7: $00
	rst  $38                                         ; $67f8: $ff
	nop                                              ; $67f9: $00
	rst  $38                                         ; $67fa: $ff
	nop                                              ; $67fb: $00
	rst  $38                                         ; $67fc: $ff
	nop                                              ; $67fd: $00
	sbc  e                                           ; $67fe: $9b
	nop                                              ; $67ff: $00
	nop                                              ; $6800: $00
	rst  $38                                         ; $6801: $ff
	add  b                                           ; $6802: $80
	nop                                              ; $6803: $00
	add  b                                           ; $6804: $80
	ld   a, a                                        ; $6805: $7f
	ld   bc, $5f40                                   ; $6806: $01 $40 $5f
	add  c                                           ; $6809: $81
	ld   b, b                                        ; $680a: $40
	nop                                              ; $680b: $00
	ld   b, a                                        ; $680c: $47

jr_09a_680d:
	add  b                                           ; $680d: $80
	ld   b, b                                        ; $680e: $40
	add  b                                           ; $680f: $80
	ld   b, e                                        ; $6810: $43
	dec  bc                                          ; $6811: $0b
	ld   b, d                                        ; $6812: $42
	ld   b, l                                        ; $6813: $45
	nop                                              ; $6814: $00
	db   $10                                         ; $6815: $10
	ldh  [$ef], a                                    ; $6816: $e0 $ef
	jr   nc, jr_09a_680d                             ; $6818: $30 $f3

	jr   jr_09a_6856                                 ; $681a: $18 $3a

	inc  c                                           ; $681c: $0c
	db   $ed                                         ; $681d: $ed
	add  b                                           ; $681e: $80
	ld   b, $80                                      ; $681f: $06 $80
	ei                                               ; $6821: $fb
	dec  bc                                          ; $6822: $0b
	nop                                              ; $6823: $00
	ld   hl, sp+$00                                  ; $6824: $f8 $00
	ld   [$f707], sp                                 ; $6826: $08 $07 $f7
	inc  c                                           ; $6829: $0c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $682a: $cf
	jr   jr_09a_6889                                 ; $682b: $18 $5c

	jr   nc, jr_09a_67e6                             ; $682d: $30 $b7

	add  b                                           ; $682f: $80

jr_09a_6830:
	ld   h, b                                        ; $6830: $60
	add  b                                           ; $6831: $80
	rst  JumpTable                                         ; $6832: $df
	inc  bc                                          ; $6833: $03
	nop                                              ; $6834: $00
	ld   bc, $0100                                   ; $6835: $01 $00 $01
	add  b                                           ; $6838: $80
	cp   $01                                         ; $6839: $fe $01
	nop                                              ; $683b: $00
	rst  $38                                         ; $683c: $ff
	add  c                                           ; $683d: $81
	nop                                              ; $683e: $00
	nop                                              ; $683f: $00
	rst  $38                                         ; $6840: $ff
	add  b                                           ; $6841: $80
	nop                                              ; $6842: $00
	add  b                                           ; $6843: $80
	rst  $38                                         ; $6844: $ff
	ld   bc, $ff00                                   ; $6845: $01 $00 $ff
	add  c                                           ; $6848: $81
	nop                                              ; $6849: $00
	ld   [bc], a                                     ; $684a: $02
	rst  $38                                         ; $684b: $ff
	nop                                              ; $684c: $00
	rst  $38                                         ; $684d: $ff
	add  c                                           ; $684e: $81
	nop                                              ; $684f: $00
	nop                                              ; $6850: $00
	rst  $38                                         ; $6851: $ff
	add  b                                           ; $6852: $80
	nop                                              ; $6853: $00
	add  b                                           ; $6854: $80
	rst  $38                                         ; $6855: $ff

jr_09a_6856:
	ld   bc, $ff00                                   ; $6856: $01 $00 $ff
	add  c                                           ; $6859: $81
	nop                                              ; $685a: $00
	ld   [bc], a                                     ; $685b: $02
	rst  $38                                         ; $685c: $ff
	nop                                              ; $685d: $00
	rst  $38                                         ; $685e: $ff
	add  c                                           ; $685f: $81
	nop                                              ; $6860: $00
	nop                                              ; $6861: $00
	rst  $38                                         ; $6862: $ff
	add  b                                           ; $6863: $80
	nop                                              ; $6864: $00
	add  b                                           ; $6865: $80
	rst  $38                                         ; $6866: $ff
	ld   bc, $ff00                                   ; $6867: $01 $00 $ff
	add  c                                           ; $686a: $81
	nop                                              ; $686b: $00
	ld   [bc], a                                     ; $686c: $02
	rst  $38                                         ; $686d: $ff
	nop                                              ; $686e: $00
	rst  $38                                         ; $686f: $ff
	add  c                                           ; $6870: $81
	nop                                              ; $6871: $00
	nop                                              ; $6872: $00
	rst  $38                                         ; $6873: $ff
	add  b                                           ; $6874: $80
	nop                                              ; $6875: $00
	add  b                                           ; $6876: $80
	rst  $38                                         ; $6877: $ff
	ld   bc, $ff00                                   ; $6878: $01 $00 $ff
	add  c                                           ; $687b: $81
	nop                                              ; $687c: $00
	ld   [bc], a                                     ; $687d: $02
	rst  $38                                         ; $687e: $ff
	nop                                              ; $687f: $00
	rst  $38                                         ; $6880: $ff
	add  c                                           ; $6881: $81
	nop                                              ; $6882: $00
	nop                                              ; $6883: $00
	rst  $38                                         ; $6884: $ff
	add  b                                           ; $6885: $80
	nop                                              ; $6886: $00
	add  b                                           ; $6887: $80
	rst  $38                                         ; $6888: $ff

jr_09a_6889:
	ld   bc, $ff00                                   ; $6889: $01 $00 $ff
	add  c                                           ; $688c: $81
	nop                                              ; $688d: $00
	ld   [bc], a                                     ; $688e: $02
	rst  $38                                         ; $688f: $ff
	nop                                              ; $6890: $00
	rst  $38                                         ; $6891: $ff
	add  c                                           ; $6892: $81
	nop                                              ; $6893: $00
	nop                                              ; $6894: $00
	rst  $38                                         ; $6895: $ff
	add  b                                           ; $6896: $80
	nop                                              ; $6897: $00
	add  b                                           ; $6898: $80
	rst  $38                                         ; $6899: $ff
	ld   bc, $ff00                                   ; $689a: $01 $00 $ff
	add  c                                           ; $689d: $81
	nop                                              ; $689e: $00
	ld   [bc], a                                     ; $689f: $02
	rst  $38                                         ; $68a0: $ff
	nop                                              ; $68a1: $00
	rst  $38                                         ; $68a2: $ff
	add  c                                           ; $68a3: $81
	nop                                              ; $68a4: $00
	nop                                              ; $68a5: $00
	rst  $38                                         ; $68a6: $ff
	add  b                                           ; $68a7: $80
	nop                                              ; $68a8: $00
	add  b                                           ; $68a9: $80
	rst  $38                                         ; $68aa: $ff
	ld   bc, $ff00                                   ; $68ab: $01 $00 $ff
	add  c                                           ; $68ae: $81
	nop                                              ; $68af: $00
	ld   [bc], a                                     ; $68b0: $02
	rst  $38                                         ; $68b1: $ff
	nop                                              ; $68b2: $00
	rst  $38                                         ; $68b3: $ff
	add  c                                           ; $68b4: $81
	nop                                              ; $68b5: $00
	nop                                              ; $68b6: $00
	rst  $38                                         ; $68b7: $ff
	add  b                                           ; $68b8: $80
	nop                                              ; $68b9: $00
	add  b                                           ; $68ba: $80
	rst  $38                                         ; $68bb: $ff
	ld   bc, $ff00                                   ; $68bc: $01 $00 $ff
	add  c                                           ; $68bf: $81
	nop                                              ; $68c0: $00
	ld   [bc], a                                     ; $68c1: $02
	rst  $38                                         ; $68c2: $ff
	nop                                              ; $68c3: $00
	rst  $38                                         ; $68c4: $ff
	add  c                                           ; $68c5: $81
	nop                                              ; $68c6: $00
	nop                                              ; $68c7: $00
	rst  $38                                         ; $68c8: $ff
	add  b                                           ; $68c9: $80
	nop                                              ; $68ca: $00
	add  b                                           ; $68cb: $80
	rst  $38                                         ; $68cc: $ff
	ld   bc, $ff00                                   ; $68cd: $01 $00 $ff
	add  c                                           ; $68d0: $81
	nop                                              ; $68d1: $00
	ld   [bc], a                                     ; $68d2: $02
	rst  $38                                         ; $68d3: $ff
	nop                                              ; $68d4: $00
	rst  $38                                         ; $68d5: $ff
	add  c                                           ; $68d6: $81
	nop                                              ; $68d7: $00
	nop                                              ; $68d8: $00
	rst  $38                                         ; $68d9: $ff
	add  b                                           ; $68da: $80
	nop                                              ; $68db: $00
	add  b                                           ; $68dc: $80
	rst  $38                                         ; $68dd: $ff
	ld   bc, $ff00                                   ; $68de: $01 $00 $ff
	add  c                                           ; $68e1: $81
	nop                                              ; $68e2: $00
	ld   [bc], a                                     ; $68e3: $02
	rst  $38                                         ; $68e4: $ff
	nop                                              ; $68e5: $00
	rst  $38                                         ; $68e6: $ff
	add  c                                           ; $68e7: $81
	nop                                              ; $68e8: $00
	nop                                              ; $68e9: $00
	rst  $38                                         ; $68ea: $ff
	add  b                                           ; $68eb: $80
	nop                                              ; $68ec: $00
	add  b                                           ; $68ed: $80
	rst  $38                                         ; $68ee: $ff
	rlca                                             ; $68ef: $07
	nop                                              ; $68f0: $00
	ldh  [rP1], a                                    ; $68f1: $e0 $00
	jr   nz, @+$21                                   ; $68f3: $20 $1f

	rst  JumpTable                                         ; $68f5: $df
	nop                                              ; $68f6: $00
	rst  $38                                         ; $68f7: $ff
	add  c                                           ; $68f8: $81
	nop                                              ; $68f9: $00
	nop                                              ; $68fa: $00
	rst  $38                                         ; $68fb: $ff
	add  b                                           ; $68fc: $80
	nop                                              ; $68fd: $00
	add  b                                           ; $68fe: $80
	rst  $38                                         ; $68ff: $ff
	dec  bc                                          ; $6900: $0b
	nop                                              ; $6901: $00
	rlca                                             ; $6902: $07
	nop                                              ; $6903: $00
	inc  b                                           ; $6904: $04
	ld   hl, sp-$05                                  ; $6905: $f8 $fb
	inc  c                                           ; $6907: $0c
	db   $fc                                         ; $6908: $fc
	ld   b, $0e                                      ; $6909: $06 $0e
	inc  bc                                          ; $690b: $03
	ei                                               ; $690c: $fb
	add  b                                           ; $690d: $80
	ld   bc, $fe80                                   ; $690e: $01 $80 $fe
	dec  bc                                          ; $6911: $0b
	nop                                              ; $6912: $00
	cp   $00                                         ; $6913: $fe $00
	ld   [bc], a                                     ; $6915: $02
	ld   bc, $03fd                                   ; $6916: $01 $fd $03
	di                                               ; $6919: $f3
	ld   b, $97                                      ; $691a: $06 $97
	inc  c                                           ; $691c: $0c
	ld   l, l                                        ; $691d: $6d
	add  b                                           ; $691e: $80
	sbc  b                                           ; $691f: $98
	add  b                                           ; $6920: $80
	rst  $30                                         ; $6921: $f7
	add  d                                           ; $6922: $82
	nop                                              ; $6923: $00
	add  b                                           ; $6924: $80
	rst  $38                                         ; $6925: $ff
	dec  b                                           ; $6926: $05
	ld   bc, $00ff                                   ; $6927: $01 $ff $00
	ld   bc, $ff00                                   ; $692a: $01 $00 $ff
	add  b                                           ; $692d: $80
	nop                                              ; $692e: $00
	add  b                                           ; $692f: $80
	rst  $38                                         ; $6930: $ff
	dec  bc                                          ; $6931: $0b
	nop                                              ; $6932: $00
	rst  $38                                         ; $6933: $ff
	nop                                              ; $6934: $00
	add  b                                           ; $6935: $80
	nop                                              ; $6936: $00
	ld   a, b                                        ; $6937: $78
	add  h                                           ; $6938: $84
	sbc  b                                           ; $6939: $98
	ret  nz                                          ; $693a: $c0

	ret  nc                                          ; $693b: $d0

	ld   h, b                                        ; $693c: $60
	ld   l, b                                        ; $693d: $68
	add  b                                           ; $693e: $80
	jr   nc, jr_09a_6946                             ; $693f: $30 $05

	ret  c                                           ; $6941: $d8

	jp   c, $5d4c                                    ; $6942: $da $4c $5d

	ld   b, [hl]                                     ; $6945: $46

jr_09a_6946:
	ld   c, [hl]                                     ; $6946: $4e
	reti                                             ; $6947: $d9


	ld   b, d                                        ; $6948: $42
	inc  b                                           ; $6949: $04
	ld   c, d                                        ; $694a: $4a
	ld   b, [hl]                                     ; $694b: $46
	ld   d, a                                        ; $694c: $57
	ld   c, h                                        ; $694d: $4c
	ld   c, [hl]                                     ; $694e: $4e
	add  b                                           ; $694f: $80
	ret  c                                           ; $6950: $d8

	dec  bc                                          ; $6951: $0b
	jr   nc, jr_09a_698c                             ; $6952: $30 $38

	ld   h, b                                        ; $6954: $60
	ld   [hl], b                                     ; $6955: $70
	ret  nz                                          ; $6956: $c0

	call c, $fc84                                    ; $6957: $dc $84 $fc

Jump_09a_695a:
	nop                                              ; $695a: $00
	add  b                                           ; $695b: $80
	nop                                              ; $695c: $00
	rst  $38                                         ; $695d: $ff
	add  b                                           ; $695e: $80
	nop                                              ; $695f: $00
	add  b                                           ; $6960: $80
	rst  $38                                         ; $6961: $ff
	dec  b                                           ; $6962: $05
	nop                                              ; $6963: $00
	rst  $38                                         ; $6964: $ff
	nop                                              ; $6965: $00
	ld   bc, $fe00                                   ; $6966: $01 $00 $fe
	add  b                                           ; $6969: $80
	ld   bc, $ff80                                   ; $696a: $01 $80 $ff
	add  d                                           ; $696d: $82
	nop                                              ; $696e: $00
	add  b                                           ; $696f: $80
	rst  $38                                         ; $6970: $ff
	ld   bc, $ff00                                   ; $6971: $01 $00 $ff
	add  c                                           ; $6974: $81
	nop                                              ; $6975: $00
	nop                                              ; $6976: $00
	rst  $38                                         ; $6977: $ff
	add  b                                           ; $6978: $80
	nop                                              ; $6979: $00
	add  b                                           ; $697a: $80
	rst  $38                                         ; $697b: $ff
	add  d                                           ; $697c: $82
	nop                                              ; $697d: $00
	add  b                                           ; $697e: $80
	cp   a                                           ; $697f: $bf
	dec  bc                                          ; $6980: $0b

jr_09a_6981:
	ret  nz                                          ; $6981: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6982: $cf
	ld   h, b                                        ; $6983: $60
	add  sp, $30                                     ; $6984: $e8 $30
	or   a                                           ; $6986: $b7
	jr   jr_09a_6981                                 ; $6987: $18 $f8

	rrca                                             ; $6989: $0f
	rra                                              ; $698a: $1f
	nop                                              ; $698b: $00

jr_09a_698c:
	ldh  a, [$80]                                    ; $698c: $f0 $80
	nop                                              ; $698e: $00
	add  b                                           ; $698f: $80
	db   $fd                                         ; $6990: $fd
	ld   bc, $ff00                                   ; $6991: $01 $00 $ff
	add  c                                           ; $6994: $81
	nop                                              ; $6995: $00
	ld   [bc], a                                     ; $6996: $02
	rst  $38                                         ; $6997: $ff
	nop                                              ; $6998: $00
	rst  $38                                         ; $6999: $ff
	add  l                                           ; $699a: $85
	nop                                              ; $699b: $00
	ld   [bc], a                                     ; $699c: $02
	rst  $38                                         ; $699d: $ff
	nop                                              ; $699e: $00
	rst  $38                                         ; $699f: $ff
	add  c                                           ; $69a0: $81
	nop                                              ; $69a1: $00
	nop                                              ; $69a2: $00
	rst  $38                                         ; $69a3: $ff
	add  b                                           ; $69a4: $80
	nop                                              ; $69a5: $00
	add  b                                           ; $69a6: $80
	rst  $38                                         ; $69a7: $ff
	ld   bc, $ff00                                   ; $69a8: $01 $00 $ff
	add  c                                           ; $69ab: $81
	nop                                              ; $69ac: $00
	ld   [bc], a                                     ; $69ad: $02
	rst  $38                                         ; $69ae: $ff
	nop                                              ; $69af: $00
	rst  $38                                         ; $69b0: $ff
	add  c                                           ; $69b1: $81
	nop                                              ; $69b2: $00
	nop                                              ; $69b3: $00
	rst  $38                                         ; $69b4: $ff
	add  b                                           ; $69b5: $80
	nop                                              ; $69b6: $00
	add  b                                           ; $69b7: $80
	rst  $38                                         ; $69b8: $ff
	ld   bc, $ff00                                   ; $69b9: $01 $00 $ff
	add  c                                           ; $69bc: $81
	nop                                              ; $69bd: $00
	ld   [bc], a                                     ; $69be: $02
	rst  $38                                         ; $69bf: $ff
	nop                                              ; $69c0: $00
	rst  $38                                         ; $69c1: $ff
	add  c                                           ; $69c2: $81
	nop                                              ; $69c3: $00
	nop                                              ; $69c4: $00
	rst  $38                                         ; $69c5: $ff
	add  b                                           ; $69c6: $80
	nop                                              ; $69c7: $00
	add  b                                           ; $69c8: $80
	rst  $38                                         ; $69c9: $ff
	ld   bc, $ff00                                   ; $69ca: $01 $00 $ff
	add  c                                           ; $69cd: $81
	nop                                              ; $69ce: $00
	ld   [bc], a                                     ; $69cf: $02
	rst  $38                                         ; $69d0: $ff
	nop                                              ; $69d1: $00
	rst  $38                                         ; $69d2: $ff
	add  c                                           ; $69d3: $81
	nop                                              ; $69d4: $00
	nop                                              ; $69d5: $00
	rst  $38                                         ; $69d6: $ff
	add  b                                           ; $69d7: $80
	nop                                              ; $69d8: $00
	add  b                                           ; $69d9: $80
	rst  $38                                         ; $69da: $ff
	ld   bc, $ff00                                   ; $69db: $01 $00 $ff
	add  c                                           ; $69de: $81
	nop                                              ; $69df: $00
	ld   [bc], a                                     ; $69e0: $02
	rst  $38                                         ; $69e1: $ff
	nop                                              ; $69e2: $00
	rst  $38                                         ; $69e3: $ff
	add  c                                           ; $69e4: $81
	nop                                              ; $69e5: $00
	nop                                              ; $69e6: $00
	rst  $38                                         ; $69e7: $ff
	add  b                                           ; $69e8: $80
	nop                                              ; $69e9: $00
	add  b                                           ; $69ea: $80
	rst  $38                                         ; $69eb: $ff
	ld   bc, $ff00                                   ; $69ec: $01 $00 $ff
	add  c                                           ; $69ef: $81
	nop                                              ; $69f0: $00
	ld   [bc], a                                     ; $69f1: $02
	rst  $38                                         ; $69f2: $ff
	nop                                              ; $69f3: $00
	rst  $38                                         ; $69f4: $ff
	add  c                                           ; $69f5: $81
	nop                                              ; $69f6: $00
	nop                                              ; $69f7: $00
	rst  $38                                         ; $69f8: $ff
	add  b                                           ; $69f9: $80
	nop                                              ; $69fa: $00
	add  b                                           ; $69fb: $80
	rst  $38                                         ; $69fc: $ff
	ld   bc, $ff00                                   ; $69fd: $01 $00 $ff
	add  c                                           ; $6a00: $81
	nop                                              ; $6a01: $00
	ld   [bc], a                                     ; $6a02: $02
	rst  $38                                         ; $6a03: $ff
	nop                                              ; $6a04: $00
	rst  $38                                         ; $6a05: $ff
	add  c                                           ; $6a06: $81
	nop                                              ; $6a07: $00
	nop                                              ; $6a08: $00
	rst  $38                                         ; $6a09: $ff
	add  b                                           ; $6a0a: $80
	nop                                              ; $6a0b: $00
	add  b                                           ; $6a0c: $80
	rst  $38                                         ; $6a0d: $ff
	ld   bc, $ff00                                   ; $6a0e: $01 $00 $ff
	add  c                                           ; $6a11: $81
	nop                                              ; $6a12: $00
	ld   [bc], a                                     ; $6a13: $02
	rst  $38                                         ; $6a14: $ff
	nop                                              ; $6a15: $00
	rst  $38                                         ; $6a16: $ff
	add  c                                           ; $6a17: $81
	nop                                              ; $6a18: $00
	nop                                              ; $6a19: $00
	rst  $38                                         ; $6a1a: $ff
	add  b                                           ; $6a1b: $80
	nop                                              ; $6a1c: $00
	add  b                                           ; $6a1d: $80
	rst  $38                                         ; $6a1e: $ff
	ld   bc, $ff00                                   ; $6a1f: $01 $00 $ff
	add  c                                           ; $6a22: $81
	nop                                              ; $6a23: $00
	ld   [bc], a                                     ; $6a24: $02
	rst  $38                                         ; $6a25: $ff
	nop                                              ; $6a26: $00
	rst  $38                                         ; $6a27: $ff
	add  c                                           ; $6a28: $81
	nop                                              ; $6a29: $00
	nop                                              ; $6a2a: $00
	rst  $38                                         ; $6a2b: $ff
	add  b                                           ; $6a2c: $80
	nop                                              ; $6a2d: $00
	add  b                                           ; $6a2e: $80
	rst  $38                                         ; $6a2f: $ff
	ld   bc, $ff00                                   ; $6a30: $01 $00 $ff
	add  c                                           ; $6a33: $81
	nop                                              ; $6a34: $00
	ld   [bc], a                                     ; $6a35: $02
	rst  $38                                         ; $6a36: $ff
	nop                                              ; $6a37: $00
	rst  $38                                         ; $6a38: $ff
	add  c                                           ; $6a39: $81
	nop                                              ; $6a3a: $00
	nop                                              ; $6a3b: $00
	rst  $38                                         ; $6a3c: $ff
	add  b                                           ; $6a3d: $80
	nop                                              ; $6a3e: $00
	add  b                                           ; $6a3f: $80

jr_09a_6a40:
	rst  $38                                         ; $6a40: $ff
	add  d                                           ; $6a41: $82
	nop                                              ; $6a42: $00
	add  b                                           ; $6a43: $80
	cp   a                                           ; $6a44: $bf
	ld   bc, $ff00                                   ; $6a45: $01 $00 $ff
	add  c                                           ; $6a48: $81
	nop                                              ; $6a49: $00
	ld   [bc], a                                     ; $6a4a: $02
	rst  $38                                         ; $6a4b: $ff
	nop                                              ; $6a4c: $00
	rst  $38                                         ; $6a4d: $ff
	add  c                                           ; $6a4e: $81
	nop                                              ; $6a4f: $00
	nop                                              ; $6a50: $00
	rst  $38                                         ; $6a51: $ff
	add  b                                           ; $6a52: $80
	nop                                              ; $6a53: $00
	add  b                                           ; $6a54: $80
	db   $fd                                         ; $6a55: $fd
	dec  bc                                          ; $6a56: $0b
	inc  bc                                          ; $6a57: $03
	di                                               ; $6a58: $f3
	ld   b, $17                                      ; $6a59: $06 $17
	inc  c                                           ; $6a5b: $0c
	db   $ed                                         ; $6a5c: $ed
	jr   jr_09a_6a7e                                 ; $6a5d: $18 $1f

	ldh  a, [$f8]                                    ; $6a5f: $f0 $f8
	nop                                              ; $6a61: $00
	rrca                                             ; $6a62: $0f
	add  b                                           ; $6a63: $80
	nop                                              ; $6a64: $00
	add  b                                           ; $6a65: $80
	rst  $38                                         ; $6a66: $ff
	ld   bc, $ff00                                   ; $6a67: $01 $00 $ff
	add  c                                           ; $6a6a: $81
	nop                                              ; $6a6b: $00
	nop                                              ; $6a6c: $00
	rst  $38                                         ; $6a6d: $ff
	add  b                                           ; $6a6e: $80
	nop                                              ; $6a6f: $00
	add  b                                           ; $6a70: $80
	rst  $38                                         ; $6a71: $ff
	ld   bc, $d800                                   ; $6a72: $01 $00 $d8
	add  b                                           ; $6a75: $80
	ld   [bc], a                                     ; $6a76: $02
	add  b                                           ; $6a77: $80
	inc  bc                                          ; $6a78: $03
	ld   bc, $0700                                   ; $6a79: $01 $00 $07
	add  c                                           ; $6a7c: $81
	nop                                              ; $6a7d: $00

jr_09a_6a7e:
	nop                                              ; $6a7e: $00
	rst  JumpTable                                         ; $6a7f: $df
	add  b                                           ; $6a80: $80
	nop                                              ; $6a81: $00
	add  b                                           ; $6a82: $80
	rst  $38                                         ; $6a83: $ff
	inc  bc                                          ; $6a84: $03
	nop                                              ; $6a85: $00
	ld   bc, $5d5c                                   ; $6a86: $01 $5c $5d
	add  b                                           ; $6a89: $80
	ld   e, [hl]                                     ; $6a8a: $5e
	add  d                                           ; $6a8b: $82
	ld   d, d                                        ; $6a8c: $52
	add  b                                           ; $6a8d: $80
	ld   e, [hl]                                     ; $6a8e: $5e
	add  b                                           ; $6a8f: $80
	ld   b, b                                        ; $6a90: $40
	add  b                                           ; $6a91: $80
	ld   a, a                                        ; $6a92: $7f
	dec  b                                           ; $6a93: $05
	nop                                              ; $6a94: $00
	ccf                                              ; $6a95: $3f
	ld   bc, $4331                                   ; $6a96: $01 $31 $43
	ld   c, a                                        ; $6a99: $4f
	add  b                                           ; $6a9a: $80
	ld   [hl], e                                     ; $6a9b: $73
	add  c                                           ; $6a9c: $81
	ld   a, e                                        ; $6a9d: $7b
	nop                                              ; $6a9e: $00
	ld   a, a                                        ; $6a9f: $7f
	add  c                                           ; $6aa0: $81
	ld   [hl], e                                     ; $6aa1: $73
	ld   [bc], a                                     ; $6aa2: $02
	ld   a, e                                        ; $6aa3: $7b
	inc  bc                                          ; $6aa4: $03
	di                                               ; $6aa5: $f3
	add  d                                           ; $6aa6: $82
	rst  $38                                         ; $6aa7: $ff
	add  b                                           ; $6aa8: $80
	ld   e, a                                        ; $6aa9: $5f
	add  b                                           ; $6aaa: $80
	rlca                                             ; $6aab: $07
	add  b                                           ; $6aac: $80
	ld   e, l                                        ; $6aad: $5d
	add  b                                           ; $6aae: $80
	db   $dd                                         ; $6aaf: $dd
	add  b                                           ; $6ab0: $80
	dec  b                                           ; $6ab1: $05
	add  b                                           ; $6ab2: $80
	db   $dd                                         ; $6ab3: $dd
	add  b                                           ; $6ab4: $80
	ldh  [$80], a                                    ; $6ab5: $e0 $80
	ldh  a, [$89]                                    ; $6ab7: $f0 $89
	or   b                                           ; $6ab9: $b0
	nop                                              ; $6aba: $00
	jr   nz, jr_09a_6a40                             ; $6abb: $20 $83

	ld   h, e                                        ; $6abd: $63
	add  b                                           ; $6abe: $80
	inc  bc                                          ; $6abf: $03
	nop                                              ; $6ac0: $00
	dec  bc                                          ; $6ac1: $0b
	add  b                                           ; $6ac2: $80
	ld   [hl], e                                     ; $6ac3: $73
	add  b                                           ; $6ac4: $80
	inc  bc                                          ; $6ac5: $03
	add  b                                           ; $6ac6: $80
	ld   [hl], e                                     ; $6ac7: $73
	ld   bc, $8971                                   ; $6ac8: $01 $71 $89
	add  b                                           ; $6acb: $80
	dec  b                                           ; $6acc: $05
	add  d                                           ; $6acd: $82
	ld   d, l                                        ; $6ace: $55
	add  d                                           ; $6acf: $82
	ld   d, a                                        ; $6ad0: $57
	ld   [bc], a                                     ; $6ad1: $02
	rst  JumpTable                                         ; $6ad2: $df
	ldh  [$c0], a                                    ; $6ad3: $e0 $c0
	add  b                                           ; $6ad5: $80
	nop                                              ; $6ad6: $00
	nop                                              ; $6ad7: $00
	rst  $38                                         ; $6ad8: $ff
	adc  b                                           ; $6ad9: $88
	or   b                                           ; $6ada: $b0
	add  b                                           ; $6adb: $80
	jr   nc, jr_09a_6ae7                             ; $6adc: $30 $09

	ldh  a, [$30]                                    ; $6ade: $f0 $30
	jr   nz, jr_09a_6afd                             ; $6ae0: $20 $1b

	ld   [hl], b                                     ; $6ae2: $70
	ld   [hl], h                                     ; $6ae3: $74
	ld   h, b                                        ; $6ae4: $60

jr_09a_6ae5:
	ld   h, c                                        ; $6ae5: $61
	ld   e, b                                        ; $6ae6: $58

jr_09a_6ae7:
	jp   c, $3081                                    ; $6ae7: $da $81 $30

	db   $10                                         ; $6aea: $10
	ld   [hl], l                                     ; $6aeb: $75
	nop                                              ; $6aec: $00
	jr   nz, jr_09a_6aef                             ; $6aed: $20 $00

jr_09a_6aef:
	ld   h, b                                        ; $6aef: $60
	nop                                              ; $6af0: $00
	cp   c                                           ; $6af1: $b9
	nop                                              ; $6af2: $00
	call nz, $3b00                                   ; $6af3: $c4 $00 $3b
	nop                                              ; $6af6: $00
	ld   a, e                                        ; $6af7: $7b
	nop                                              ; $6af8: $00
	ret  nz                                          ; $6af9: $c0

	nop                                              ; $6afa: $00
	adc  b                                           ; $6afb: $88
	add  c                                           ; $6afc: $81

jr_09a_6afd:
	nop                                              ; $6afd: $00
	inc  c                                           ; $6afe: $0c
	ld   a, [de]                                     ; $6aff: $1a
	nop                                              ; $6b00: $00
	and  $00                                         ; $6b01: $e6 $00
	ret  z                                           ; $6b03: $c8

	nop                                              ; $6b04: $00
	jr   nz, jr_09a_6b07                             ; $6b05: $20 $00

jr_09a_6b07:
	sub  h                                           ; $6b07: $94
	nop                                              ; $6b08: $00
	ret  nz                                          ; $6b09: $c0

	nop                                              ; $6b0a: $00
	ld   c, d                                        ; $6b0b: $4a
	add  e                                           ; $6b0c: $83

jr_09a_6b0d:
	jr   nz, @+$22                                   ; $6b0d: $20 $20

	ld   e, a                                        ; $6b0f: $5f
	nop                                              ; $6b10: $00
	jr   nz, jr_09a_6b13                             ; $6b11: $20 $00

jr_09a_6b13:
	ld   bc, $4400                                   ; $6b13: $01 $00 $44
	nop                                              ; $6b16: $00
	jr   nc, jr_09a_6b29                             ; $6b17: $30 $10

	ld   a, d                                        ; $6b19: $7a
	jr   c, jr_09a_6b4d                              ; $6b1a: $38 $31

	jr   nc, @-$52                                   ; $6b1c: $30 $ac

	jr   nz, jr_09a_6b0d                             ; $6b1e: $20 $ed

	nop                                              ; $6b20: $00
	ld   [de], a                                     ; $6b21: $12
	nop                                              ; $6b22: $00
	adc  h                                           ; $6b23: $8c
	nop                                              ; $6b24: $00
	ret  nz                                          ; $6b25: $c0

	nop                                              ; $6b26: $00
	ld   b, b                                        ; $6b27: $40
	nop                                              ; $6b28: $00

jr_09a_6b29:
	ld   e, $00                                      ; $6b29: $1e $00
	ld   [de], a                                     ; $6b2b: $12
	nop                                              ; $6b2c: $00
	call z, wType0AnimSpriteXPosRelativeTo                                    ; $6b2d: $cc $00 $c6
	add  d                                           ; $6b30: $82
	jr   nz, jr_09a_6b34                             ; $6b31: $20 $01

	ld   b, b                                        ; $6b33: $40

jr_09a_6b34:
	ld   c, d                                        ; $6b34: $4a
	add  b                                           ; $6b35: $80
	add  b                                           ; $6b36: $80
	add  hl, bc                                      ; $6b37: $09
	nop                                              ; $6b38: $00
	inc  d                                           ; $6b39: $14
	nop                                              ; $6b3a: $00
	jr   nz, jr_09a_6b3d                             ; $6b3b: $20 $00

jr_09a_6b3d:
	ret  z                                           ; $6b3d: $c8

	nop                                              ; $6b3e: $00
	ld   bc, $4140                                   ; $6b3f: $01 $40 $41
	add  b                                           ; $6b42: $80
	ld   h, c                                        ; $6b43: $61
	adc  b                                           ; $6b44: $88
	ld   h, e                                        ; $6b45: $63
	ld   [bc], a                                     ; $6b46: $02
	inc  bc                                          ; $6b47: $03
	inc  c                                           ; $6b48: $0c
	nop                                              ; $6b49: $00
	add  b                                           ; $6b4a: $80
	ret  nz                                          ; $6b4b: $c0

	nop                                              ; $6b4c: $00

jr_09a_6b4d:
	rst  $38                                         ; $6b4d: $ff
	add  b                                           ; $6b4e: $80
	ld   [$6b80], sp                                 ; $6b4f: $08 $80 $6b
	add  b                                           ; $6b52: $80
	ld   l, b                                        ; $6b53: $68
	add  d                                           ; $6b54: $82
	ld   e, e                                        ; $6b55: $5b
	ld   [bc], a                                     ; $6b56: $02
	ld   l, b                                        ; $6b57: $68
	adc  b                                           ; $6b58: $88
	nop                                              ; $6b59: $00
	add  c                                           ; $6b5a: $81
	ldh  [$80], a                                    ; $6b5b: $e0 $80
	jr   nc, @-$7e                                   ; $6b5d: $30 $80

	or   b                                           ; $6b5f: $b0
	add  b                                           ; $6b60: $80
	jr   nc, jr_09a_6ae5                             ; $6b61: $30 $82

	or   b                                           ; $6b63: $b0
	ld   bc, $9030                                   ; $6b64: $01 $30 $90
	add  c                                           ; $6b67: $81
	ld   b, e                                        ; $6b68: $43
	add  c                                           ; $6b69: $81
	inc  bc                                          ; $6b6a: $03
	add  e                                           ; $6b6b: $83
	ld   b, e                                        ; $6b6c: $43
	inc  b                                           ; $6b6d: $04
	ld   e, e                                        ; $6b6e: $5b
	ld   b, e                                        ; $6b6f: $43
	ld   b, a                                        ; $6b70: $47
	ld   e, c                                        ; $6b71: $59
	and  l                                           ; $6b72: $a5
	add  b                                           ; $6b73: $80
	ld   l, e                                        ; $6b74: $6b
	add  b                                           ; $6b75: $80
	ld   l, d                                        ; $6b76: $6a
	add  b                                           ; $6b77: $80
	ld   l, e                                        ; $6b78: $6b
	add  b                                           ; $6b79: $80
	ld   e, e                                        ; $6b7a: $5b
	add  b                                           ; $6b7b: $80
	ld   a, d                                        ; $6b7c: $7a
	add  b                                           ; $6b7d: $80
	ld   [hl], c                                     ; $6b7e: $71
	add  d                                           ; $6b7f: $82
	rst  $38                                         ; $6b80: $ff
	add  b                                           ; $6b81: $80
	ldh  a, [$80]                                    ; $6b82: $f0 $80
	or   b                                           ; $6b84: $b0
	add  d                                           ; $6b85: $82
	ld   [hl], b                                     ; $6b86: $70
	add  d                                           ; $6b87: $82
	or   b                                           ; $6b88: $b0
	add  b                                           ; $6b89: $80
	ldh  a, [$80]                                    ; $6b8a: $f0 $80
	ldh  [$8d], a                                    ; $6b8c: $e0 $8d
	nop                                              ; $6b8e: $00
	inc  bc                                          ; $6b8f: $03
	ld   bc, $0084                                   ; $6b90: $01 $84 $00

jr_09a_6b93:
	nop                                              ; $6b93: $00
	ld   bc, $0083                                   ; $6b94: $01 $83 $00
	nop                                              ; $6b97: $00
	ld   [bc], a                                     ; $6b98: $02
	add  c                                           ; $6b99: $81
	ld   bc, $0404                                   ; $6b9a: $01 $04 $04
	inc  bc                                          ; $6b9d: $03
	ld   [bc], a                                     ; $6b9e: $02
	inc  bc                                          ; $6b9f: $03
	dec  bc                                          ; $6ba0: $0b
	add  c                                           ; $6ba1: $81
	rlca                                             ; $6ba2: $07
	ld   [$0706], sp                                 ; $6ba3: $08 $06 $07
	inc  d                                           ; $6ba6: $14
	rrca                                             ; $6ba7: $0f
	dec  c                                           ; $6ba8: $0d
	rrca                                             ; $6ba9: $0f
	rst  $28                                         ; $6baa: $ef
	rrca                                             ; $6bab: $0f
	ldh  a, [$83]                                    ; $6bac: $f0 $83
	nop                                              ; $6bae: $00
	inc  b                                           ; $6baf: $04
	ldh  [rP1], a                                    ; $6bb0: $e0 $00
	inc  e                                           ; $6bb2: $1c
	ldh  [$e3], a                                    ; $6bb3: $e0 $e3
	add  b                                           ; $6bb5: $80
	db   $fc                                         ; $6bb6: $fc
	add  c                                           ; $6bb7: $81
	rst  $38                                         ; $6bb8: $ff
	ld   a, [bc]                                     ; $6bb9: $0a
	ccf                                              ; $6bba: $3f
	rst  $38                                         ; $6bbb: $ff
	ld   c, a                                        ; $6bbc: $4f
	rst  $38                                         ; $6bbd: $ff
	sub  a                                           ; $6bbe: $97
	db   $fc                                         ; $6bbf: $fc
	add  h                                           ; $6bc0: $84
	rst  $38                                         ; $6bc1: $ff
	rra                                              ; $6bc2: $1f
	rst  $38                                         ; $6bc3: $ff
	ld   a, a                                        ; $6bc4: $7f
	add  b                                           ; $6bc5: $80
	ldh  a, [$03]                                    ; $6bc6: $f0 $03
	adc  $cf                                         ; $6bc8: $ce $cf
	cp   c                                           ; $6bca: $b9
	ld   b, a                                        ; $6bcb: $47
	adc  c                                           ; $6bcc: $89
	nop                                              ; $6bcd: $00
	ld   b, $c0                                      ; $6bce: $06 $c0
	nop                                              ; $6bd0: $00
	jr   nz, jr_09a_6b93                             ; $6bd1: $20 $c0

	ret  nc                                          ; $6bd3: $d0

	ldh  [$e8], a                                    ; $6bd4: $e0 $e8
	add  b                                           ; $6bd6: $80
	ret  nc                                          ; $6bd7: $d0

	ld   bc, $e4e0                                   ; $6bd8: $01 $e0 $e4
	add  b                                           ; $6bdb: $80
	jr   nc, @+$09                                   ; $6bdc: $30 $07

	ret  z                                           ; $6bde: $c8

	jp   z, $f1f0                                    ; $6bdf: $ca $f0 $f1

	ld   a, [hl-]                                    ; $6be2: $3a
	ld   a, [$f9c6]                                  ; $6be3: $fa $c6 $f9
	adc  e                                           ; $6be6: $8b
	nop                                              ; $6be7: $00
	ld   [de], a                                     ; $6be8: $12
	ld   bc, $0200                                   ; $6be9: $01 $00 $02
	ld   bc, $0304                                   ; $6bec: $01 $04 $03
	add  hl, bc                                      ; $6bef: $09
	rlca                                             ; $6bf0: $07
	db   $10                                         ; $6bf1: $10
	rrca                                             ; $6bf2: $0f
	dec  bc                                          ; $6bf3: $0b
	ld   c, $ee                                      ; $6bf4: $0e $ee
	add  hl, de                                      ; $6bf6: $19
	ld   e, c                                        ; $6bf7: $59
	rst  $10                                         ; $6bf8: $d7
	rla                                              ; $6bf9: $17
	ret  nz                                          ; $6bfa: $c0

jr_09a_6bfb:
	cp   a                                           ; $6bfb: $bf
	add  e                                           ; $6bfc: $83
	nop                                              ; $6bfd: $00
	ld   a, [de]                                     ; $6bfe: $1a
	inc  bc                                          ; $6bff: $03
	nop                                              ; $6c00: $00
	inc  c                                           ; $6c01: $0c
	inc  bc                                          ; $6c02: $03
	inc  sp                                          ; $6c03: $33
	rrca                                             ; $6c04: $0f
	ret  nz                                          ; $6c05: $c0

	ccf                                              ; $6c06: $3f
	ld   [$27ff], sp                                 ; $6c07: $08 $ff $27
	rst  $38                                         ; $6c0a: $ff
	sbc  a                                           ; $6c0b: $9f
	rst  $38                                         ; $6c0c: $ff
	ld   a, a                                        ; $6c0d: $7f
	rst  $38                                         ; $6c0e: $ff
	ldh  [rIE], a                                    ; $6c0f: $e0 $ff
	db   $e3                                         ; $6c11: $e3
	ccf                                              ; $6c12: $3f
	ld   a, [hl-]                                    ; $6c13: $3a
	rst  JumpTable                                         ; $6c14: $df
	pop  de                                          ; $6c15: $d1
	sbc  a                                           ; $6c16: $9f
	sub  a                                           ; $6c17: $97
	ccf                                              ; $6c18: $3f
	ret  nz                                          ; $6c19: $c0

	add  l                                           ; $6c1a: $85
	nop                                              ; $6c1b: $00
	ld   [bc], a                                     ; $6c1c: $02
	add  b                                           ; $6c1d: $80
	nop                                              ; $6c1e: $00
	ld   b, b                                        ; $6c1f: $40
	add  c                                           ; $6c20: $81
	add  b                                           ; $6c21: $80
	inc  b                                           ; $6c22: $04
	jr   nz, @-$3e                                   ; $6c23: $20 $c0

	ld   b, b                                        ; $6c25: $40
	ret  nz                                          ; $6c26: $c0

	ret  nc                                          ; $6c27: $d0

	add  e                                           ; $6c28: $83
	ldh  [rSC], a                                    ; $6c29: $e0 $02
	ld   l, b                                        ; $6c2b: $68
	ldh  a, [rSVBK]                                  ; $6c2c: $f0 $70
	add  c                                           ; $6c2e: $81
	ldh  a, [rSC]                                    ; $6c2f: $f0 $02
	rst  $30                                         ; $6c31: $f7
	ld   hl, sp+$07                                  ; $6c32: $f8 $07
	adc  e                                           ; $6c34: $8b
	nop                                              ; $6c35: $00
	ld   a, [bc]                                     ; $6c36: $0a
	ret  nz                                          ; $6c37: $c0

	nop                                              ; $6c38: $00
	jr   c, jr_09a_6bfb                              ; $6c39: $38 $c0

	ld   b, $f8                                      ; $6c3b: $06 $f8
	ld   c, c                                        ; $6c3d: $49
	cp   $92                                         ; $6c3e: $fe $92
	db   $fc                                         ; $6c40: $fc
	ldh  [$80], a                                    ; $6c41: $e0 $80
	ld   a, d                                        ; $6c43: $7a
	dec  bc                                          ; $6c44: $0b
	sub  [hl]                                        ; $6c45: $96
	rla                                              ; $6c46: $17
	db   $e4                                         ; $6c47: $e4
	sub  h                                           ; $6c48: $94
	ld   hl, sp-$0f                                  ; $6c49: $f8 $f1
	nop                                              ; $6c4b: $00
	ccf                                              ; $6c4c: $3f
	rlca                                             ; $6c4d: $07
	ld   a, h                                        ; $6c4e: $7c
	ccf                                              ; $6c4f: $3f
	add  e                                           ; $6c50: $83
	add  b                                           ; $6c51: $80
	ld   e, a                                        ; $6c52: $5f
	ld   bc, $ef6f                                   ; $6c53: $01 $6f $ef
	add  b                                           ; $6c56: $80
	cpl                                              ; $6c57: $2f
	inc  d                                           ; $6c58: $14
	inc  [hl]                                        ; $6c59: $34
	ld   [hl], a                                     ; $6c5a: $77

jr_09a_6c5b:
	inc  de                                          ; $6c5b: $13
	inc  a                                           ; $6c5c: $3c
	rrca                                             ; $6c5d: $0f
	dec  sp                                          ; $6c5e: $3b
	rra                                              ; $6c5f: $1f
	ld   [hl], a                                     ; $6c60: $77
	ld   a, $ee                                      ; $6c61: $3e $ee
	ld   a, l                                        ; $6c63: $7d
	ld   e, h                                        ; $6c64: $5c
	ld   a, a                                        ; $6c65: $7f
	jr   c, jr_09a_6ce7                              ; $6c66: $38 $7f

	ld   [hl], l                                     ; $6c68: $75
	ld   a, a                                        ; $6c69: $7f
	db   $eb                                         ; $6c6a: $eb
	ld   a, $46                                      ; $6c6b: $3e $46
	rrca                                             ; $6c6d: $0f
	add  b                                           ; $6c6e: $80
	ld   l, h                                        ; $6c6f: $6c
	add  c                                           ; $6c70: $81
	rst  $28                                         ; $6c71: $ef

jr_09a_6c72:
	add  b                                           ; $6c72: $80
	rst  $30                                         ; $6c73: $f7
	add  b                                           ; $6c74: $80
	rst  ToBoot                                         ; $6c75: $c7
	inc  bc                                          ; $6c76: $03
	rla                                              ; $6c77: $17
	rst  $10                                         ; $6c78: $d7
	inc  h                                           ; $6c79: $24
	db   $e4                                         ; $6c7a: $e4
	add  b                                           ; $6c7b: $80
	ret  nc                                          ; $6c7c: $d0

	add  b                                           ; $6c7d: $80
	xor  l                                           ; $6c7e: $ad
	dec  b                                           ; $6c7f: $05
	ld   e, d                                        ; $6c80: $5a
	ld   e, e                                        ; $6c81: $5b
	or   h                                           ; $6c82: $b4
	or   [hl]                                        ; $6c83: $b6
	add  sp, -$14                                    ; $6c84: $e8 $ec
	add  b                                           ; $6c86: $80
	db   $d3                                         ; $6c87: $d3
	ld   bc, $beb6                                   ; $6c88: $01 $b6 $be
	add  b                                           ; $6c8b: $80
	ld   h, h                                        ; $6c8c: $64
	inc  b                                           ; $6c8d: $04
	db   $ed                                         ; $6c8e: $ed
	db   $e3                                         ; $6c8f: $e3
	add  h                                           ; $6c90: $84
	ld   b, $78                                      ; $6c91: $06 $78
	add  b                                           ; $6c93: $80
	jr   @+$0e                                       ; $6c94: $18 $0c

	ld   sp, hl                                      ; $6c96: $f9
	ld   hl, sp-$01                                  ; $6c97: $f8 $ff
	ldh  a, [$f6]                                    ; $6c99: $f0 $f6
	ld   bc, $030d                                   ; $6c9b: $01 $0d $03
	inc  de                                          ; $6c9e: $13
	ld   c, $6e                                      ; $6c9f: $0e $6e
	jr   c, jr_09a_6c5b                              ; $6ca1: $38 $b8

	add  b                                           ; $6ca3: $80
	ld   h, e                                        ; $6ca4: $63
	inc  bc                                          ; $6ca5: $03
	rlca                                             ; $6ca6: $07
	ld   b, $1e                                      ; $6ca7: $06 $1e
	dec  e                                           ; $6ca9: $1d
	add  b                                           ; $6caa: $80
	dec  a                                           ; $6cab: $3d
	ld   a, [de]                                     ; $6cac: $1a
	ld   a, l                                        ; $6cad: $7d
	ld   a, e                                        ; $6cae: $7b
	ld   sp, hl                                      ; $6caf: $f9
	push af                                          ; $6cb0: $f5
	di                                               ; $6cb1: $f3
	db   $fc                                         ; $6cb2: $fc
	ret  nz                                          ; $6cb3: $c0

	add  $f8                                         ; $6cb4: $c6 $f8
	ld   sp, hl                                      ; $6cb6: $f9
	db   $fc                                         ; $6cb7: $fc
	db   $fd                                         ; $6cb8: $fd
	rst  $38                                         ; $6cb9: $ff
	ldh  a, [c]                                      ; $6cba: $f2
	di                                               ; $6cbb: $f3
	ldh  [$e5], a                                    ; $6cbc: $e0 $e5
	rst  $20                                         ; $6cbe: $e7
	xor  d                                           ; $6cbf: $aa
	xor  c                                           ; $6cc0: $a9
	ld   h, l                                        ; $6cc1: $65
	ld   l, [hl]                                     ; $6cc2: $6e
	ld   [$afa0], a                                  ; $6cc3: $ea $a0 $af
	ld   l, a                                        ; $6cc6: $6f
	ld   h, a                                        ; $6cc7: $67
	add  b                                           ; $6cc8: $80
	and  $82                                         ; $6cc9: $e6 $82
	sub  $01                                         ; $6ccb: $d6 $01
	and  [hl]                                        ; $6ccd: $a6
	xor  [hl]                                        ; $6cce: $ae
	add  b                                           ; $6ccf: $80
	xor  h                                           ; $6cd0: $ac
	rla                                              ; $6cd1: $17
	add  b                                           ; $6cd2: $80
	nop                                              ; $6cd3: $00
	or   b                                           ; $6cd4: $b0
	rrca                                             ; $6cd5: $0f
	ld   c, a                                        ; $6cd6: $4f
	ccf                                              ; $6cd7: $3f
	ld   a, $fe                                      ; $6cd8: $3e $fe
	adc  a                                           ; $6cda: $8f
	adc  $c6                                         ; $6cdb: $ce $c6
	and  a                                           ; $6cdd: $a7
	rst  $20                                         ; $6cde: $e7
	ld   d, a                                        ; $6cdf: $57
	rla                                              ; $6ce0: $17
	inc  h                                           ; $6ce1: $24
	ld   [hl], h                                     ; $6ce2: $74
	ld   d, h                                        ; $6ce3: $54
	call nz, $1131                                   ; $6ce4: $c4 $31 $11

jr_09a_6ce7:
	inc  de                                          ; $6ce7: $13
	ld   b, $0a                                      ; $6ce8: $06 $0a
	add  e                                           ; $6cea: $83
	dec  bc                                          ; $6ceb: $0b
	inc  bc                                          ; $6cec: $03
	ld   a, [bc]                                     ; $6ced: $0a
	ld   c, $07                                      ; $6cee: $0e $07
	jr   nc, jr_09a_6c72                             ; $6cf0: $30 $80

	ld   b, a                                        ; $6cf2: $47
	add  b                                           ; $6cf3: $80
	reti                                             ; $6cf4: $d9


	ld   [bc], a                                     ; $6cf5: $02
	rst  JumpTable                                         ; $6cf6: $df
	ld   sp, hl                                      ; $6cf7: $f9
	jp   hl                                          ; $6cf8: $e9


	add  b                                           ; $6cf9: $80
	inc  l                                           ; $6cfa: $2c
	ld   [$0fcf], sp                                 ; $6cfb: $08 $cf $0f
	ccf                                              ; $6cfe: $3f
	rst  ToBoot                                         ; $6cff: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d00: $cf
	pop  hl                                          ; $6d01: $e1
	rst  $20                                         ; $6d02: $e7
	ld   b, b                                        ; $6d03: $40
	ld   b, c                                        ; $6d04: $41
	add  b                                           ; $6d05: $80
	nop                                              ; $6d06: $00
	add  b                                           ; $6d07: $80
	rst  ToBoot                                         ; $6d08: $c7
	ld   a, [bc]                                     ; $6d09: $0a
	db   $e3                                         ; $6d0a: $e3
	inc  hl                                          ; $6d0b: $23
	add  hl, sp                                      ; $6d0c: $39
	reti                                             ; $6d0d: $d9


	inc  e                                           ; $6d0e: $1c
	inc  l                                           ; $6d0f: $2c
	adc  a                                           ; $6d10: $8f
	sub  a                                           ; $6d11: $97
	rlca                                             ; $6d12: $07
	ldh  a, [$fb]                                    ; $6d13: $f0 $fb
	add  b                                           ; $6d15: $80
	ld   a, [$fb81]                                  ; $6d16: $fa $81 $fb
	add  b                                           ; $6d19: $80
	pop  af                                          ; $6d1a: $f1
	dec  b                                           ; $6d1b: $05
	or   $76                                         ; $6d1c: $f6 $76
	ld   [hl], a                                     ; $6d1e: $77
	or   h                                           ; $6d1f: $b4
	xor  h                                           ; $6d20: $ac
	rst  $28                                         ; $6d21: $ef
	add  b                                           ; $6d22: $80
	rst  ToBoot                                         ; $6d23: $c7
	add  b                                           ; $6d24: $80
	add  hl, hl                                      ; $6d25: $29
	inc  de                                          ; $6d26: $13
	halt                                             ; $6d27: $76
	or   $3b                                         ; $6d28: $f6 $3b
	ld   a, e                                        ; $6d2a: $7b
	sbc  l                                           ; $6d2b: $9d
	cp   l                                           ; $6d2c: $bd
	adc  $cc                                         ; $6d2d: $ce $cc
	call $66de                                       ; $6d2f: $cd $de $66
	ld   h, a                                        ; $6d32: $67
	rst  $20                                         ; $6d33: $e7
	ld   a, [hl+]                                    ; $6d34: $2a
	db   $fc                                         ; $6d35: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d36: $cf
	cp   $f2                                         ; $6d37: $fe $f2
	ld   a, [hl]                                     ; $6d39: $7e
	ld   a, h                                        ; $6d3a: $7c
	add  c                                           ; $6d3b: $81
	ld   a, [hl]                                     ; $6d3c: $7e
	nop                                              ; $6d3d: $00

jr_09a_6d3e:
	ld   a, a                                        ; $6d3e: $7f
	add  c                                           ; $6d3f: $81
	db   $fc                                         ; $6d40: $fc
	inc  c                                           ; $6d41: $0c
	ld   a, [hl]                                     ; $6d42: $7e
	ld   hl, sp-$44                                  ; $6d43: $f8 $bc
	ldh  a, [$50]                                    ; $6d45: $f0 $50
	ldh  a, [$b8]                                    ; $6d47: $f0 $b8
	ldh  [$c0], a                                    ; $6d49: $e0 $c0
	ld   h, b                                        ; $6d4b: $60
	ld   [hl], b                                     ; $6d4c: $70
	nop                                              ; $6d4d: $00
	ldh  [$83], a                                    ; $6d4e: $e0 $83
	nop                                              ; $6d50: $00
	ld   b, $4f                                      ; $6d51: $06 $4f
	ld   a, $4e                                      ; $6d53: $3e $4e
	dec  e                                           ; $6d55: $1d
	dec  a                                           ; $6d56: $3d
	inc  c                                           ; $6d57: $0c
	rrca                                             ; $6d58: $0f
	add  c                                           ; $6d59: $81
	ld   [$1c02], sp                                 ; $6d5a: $08 $02 $1c
	nop                                              ; $6d5d: $00
	ld   [$008d], sp                                 ; $6d5e: $08 $8d $00
	nop                                              ; $6d61: $00

jr_09a_6d62:
	ld   bc, $0081                                   ; $6d62: $01 $81 $00
	ld   [bc], a                                     ; $6d65: $02
	pop  af                                          ; $6d66: $f1
	rst  $28                                         ; $6d67: $ef
	rst  $20                                         ; $6d68: $e7
	add  c                                           ; $6d69: $81
	rst  $30                                         ; $6d6a: $f7
	rlca                                             ; $6d6b: $07
	ei                                               ; $6d6c: $fb
	ld   l, e                                        ; $6d6d: $6b
	ld   l, d                                        ; $6d6e: $6a
	ld   c, d                                        ; $6d6f: $4a
	db   $ed                                         ; $6d70: $ed
	dec  c                                           ; $6d71: $0d
	ld   c, l                                        ; $6d72: $4d
	dec  c                                           ; $6d73: $0d
	add  b                                           ; $6d74: $80
	dec  bc                                          ; $6d75: $0b
	ld   bc, $1b3b                                   ; $6d76: $01 $3b $1b
	add  d                                           ; $6d79: $82
	ld   a, [de]                                     ; $6d7a: $1a
	ld   bc, $3d7d                                   ; $6d7b: $01 $7d $3d
	add  b                                           ; $6d7e: $80
	dec  l                                           ; $6d7f: $2d
	ld   bc, $5ada                                   ; $6d80: $01 $da $5a
	add  b                                           ; $6d83: $80
	sub  $80                                         ; $6d84: $d6 $80
	or   h                                           ; $6d86: $b4
	ld   [bc], a                                     ; $6d87: $02
	ldh  a, [$f3]                                    ; $6d88: $f0 $f3
	db   $e3                                         ; $6d8a: $e3
	add  b                                           ; $6d8b: $80
	db   $ed                                         ; $6d8c: $ed
	inc  bc                                          ; $6d8d: $03
	xor  $ce                                         ; $6d8e: $ee $ce
	rst  JumpTable                                         ; $6d90: $df
	ld   e, a                                        ; $6d91: $5f
	add  b                                           ; $6d92: $80
	ld   b, a                                        ; $6d93: $47
	ld   b, $42                                      ; $6d94: $06 $42
	or   a                                           ; $6d96: $b7
	or   b                                           ; $6d97: $b0
	or   d                                           ; $6d98: $b2
	or   b                                           ; $6d99: $b0
	cp   h                                           ; $6d9a: $bc
	cp   b                                           ; $6d9b: $b8
	add  b                                           ; $6d9c: $80
	ret  c                                           ; $6d9d: $d8

	inc  bc                                          ; $6d9e: $03
	ld   e, [hl]                                     ; $6d9f: $5e
	ld   e, h                                        ; $6da0: $5c
	ld   e, a                                        ; $6da1: $5f
	ld   e, [hl]                                     ; $6da2: $5e
	add  b                                           ; $6da3: $80
	sbc  a                                           ; $6da4: $9f
	add  b                                           ; $6da5: $80
	xor  e                                           ; $6da6: $ab
	add  b                                           ; $6da7: $80
	call nc, $5a80                                   ; $6da8: $d4 $80 $5a
	nop                                              ; $6dab: $00
	rst  $38                                         ; $6dac: $ff
	add  l                                           ; $6dad: $85
	nop                                              ; $6dae: $00
	dec  b                                           ; $6daf: $05
	add  b                                           ; $6db0: $80
	nop                                              ; $6db1: $00
	ret  nz                                          ; $6db2: $c0

	add  b                                           ; $6db3: $80
	ldh  [$c0], a                                    ; $6db4: $e0 $c0
	add  b                                           ; $6db6: $80
	ld   b, b                                        ; $6db7: $40
	ld   bc, $6070                                   ; $6db8: $01 $70 $60
	add  b                                           ; $6dbb: $80
	jr   nz, jr_09a_6d3e                             ; $6dbc: $20 $80

	and  b                                           ; $6dbe: $a0
	ld   [bc], a                                     ; $6dbf: $02
	jr   nz, jr_09a_6d62                             ; $6dc0: $20 $a0

	ret  nc                                          ; $6dc2: $d0

	add  c                                           ; $6dc3: $81
	ret  nz                                          ; $6dc4: $c0

	inc  b                                           ; $6dc5: $04
	and  b                                           ; $6dc6: $a0
	add  b                                           ; $6dc7: $80
	nop                                              ; $6dc8: $00
	add  b                                           ; $6dc9: $80
	jp   $0181                                       ; $6dca: $c3 $81 $01


	nop                                              ; $6dcd: $00
	dec  b                                           ; $6dce: $05
	add  b                                           ; $6dcf: $80
	inc  bc                                          ; $6dd0: $03
	add  l                                           ; $6dd1: $85
	ld   [bc], a                                     ; $6dd2: $02
	inc  b                                           ; $6dd3: $04
	ld   b, $01                                      ; $6dd4: $06 $01
	inc  bc                                          ; $6dd6: $03
	nop                                              ; $6dd7: $00
	ld   bc, $0081                                   ; $6dd8: $01 $81 $00
	inc  c                                           ; $6ddb: $0c
	rlca                                             ; $6ddc: $07
	nop                                              ; $6ddd: $00
	rrca                                             ; $6dde: $0f
	rlca                                             ; $6ddf: $07
	inc  a                                           ; $6de0: $3c
	inc  c                                           ; $6de1: $0c
	ld   e, b                                        ; $6de2: $58
	dec  de                                          ; $6de3: $1b
	inc  de                                          ; $6de4: $13
	rla                                              ; $6de5: $17
	db   $ed                                         ; $6de6: $ed
	ld   h, d                                        ; $6de7: $62
	ld   d, d                                        ; $6de8: $52
	add  e                                           ; $6de9: $83
	ld   c, e                                        ; $6dea: $4b
	inc  e                                           ; $6deb: $1c
	ld   e, h                                        ; $6dec: $5c
	ld   h, l                                        ; $6ded: $65
	dec  h                                           ; $6dee: $25
	and  l                                           ; $6def: $a5
	adc  [hl]                                        ; $6df0: $8e
	or   d                                           ; $6df1: $b2
	add  a                                           ; $6df2: $87
	dec  de                                          ; $6df3: $1b
	add  sp, $04                                     ; $6df4: $e8 $04
	inc  e                                           ; $6df6: $1c
	inc  bc                                          ; $6df7: $03
	ei                                               ; $6df8: $fb
	nop                                              ; $6df9: $00
	ld   [hl], c                                     ; $6dfa: $71
	nop                                              ; $6dfb: $00
	ld   sp, hl                                      ; $6dfc: $f9
	rlca                                             ; $6dfd: $07
	ld   a, a                                        ; $6dfe: $7f
	rrca                                             ; $6dff: $0f
	adc  a                                           ; $6e00: $8f
	rrca                                             ; $6e01: $0f
	rlca                                             ; $6e02: $07
	add  a                                           ; $6e03: $87
	inc  e                                           ; $6e04: $1c
	inc  h                                           ; $6e05: $24
	and  h                                           ; $6e06: $a4
	inc  h                                           ; $6e07: $24
	ld   h, $80                                      ; $6e08: $26 $80
	ld   a, [hl+]                                    ; $6e0a: $2a
	ld   bc, $7928                                   ; $6e0b: $01 $28 $79
	add  b                                           ; $6e0e: $80
	sub  h                                           ; $6e0f: $94
	dec  bc                                          ; $6e10: $0b
	sub  l                                           ; $6e11: $95
	dec  a                                           ; $6e12: $3d
	jp   z, Jump_09a_695a                            ; $6e13: $ca $5a $69

	ld   h, l                                        ; $6e16: $65
	or   h                                           ; $6e17: $b4
	cp   l                                           ; $6e18: $bd
	inc  b                                           ; $6e19: $04
	ld   [de], a                                     ; $6e1a: $12
	ld   [$8004], sp                                 ; $6e1b: $08 $04 $80
	ret  nz                                          ; $6e1e: $c0

	rlca                                             ; $6e1f: $07
	ret  nc                                          ; $6e20: $d0

	call z, $d0e8                                    ; $6e21: $cc $e8 $d0
	ret  nz                                          ; $6e24: $c0

	inc  c                                           ; $6e25: $0c
	nop                                              ; $6e26: $00
	ld   [hl], d                                     ; $6e27: $72
	add  c                                           ; $6e28: $81
	ld   h, l                                        ; $6e29: $65
	ld   [bc], a                                     ; $6e2a: $02
	ld   [hl], h                                     ; $6e2b: $74
	ld   c, l                                        ; $6e2c: $4d
	ret                                              ; $6e2d: $c9


	add  b                                           ; $6e2e: $80
	adc  d                                           ; $6e2f: $8a
	rra                                              ; $6e30: $1f
	ld   c, d                                        ; $6e31: $4a
	ld   b, e                                        ; $6e32: $43
	ld   d, l                                        ; $6e33: $55
	ld   [hl], h                                     ; $6e34: $74
	dec  [hl]                                        ; $6e35: $35
	or   l                                           ; $6e36: $b5
	ld   [hl-], a                                    ; $6e37: $32
	ld   [hl+], a                                    ; $6e38: $22
	dec  h                                           ; $6e39: $25
	and  l                                           ; $6e3a: $a5
	jr   nz, jr_09a_6e6e                             ; $6e3b: $20 $31

	jr   nc, @-$28                                   ; $6e3d: $30 $d6

	db   $10                                         ; $6e3f: $10
	add  hl, bc                                      ; $6e40: $09
	nop                                              ; $6e41: $00
	ld   [de], a                                     ; $6e42: $12
	nop                                              ; $6e43: $00
	ld   h, b                                        ; $6e44: $60
	nop                                              ; $6e45: $00
	inc  bc                                          ; $6e46: $03
	nop                                              ; $6e47: $00
	or   $43                                         ; $6e48: $f6 $43
	ld   b, [hl]                                     ; $6e4a: $46
	ld   c, c                                        ; $6e4b: $49
	ld   b, c                                        ; $6e4c: $41
	ld   d, c                                        ; $6e4d: $51
	db   $d3                                         ; $6e4e: $d3
	call nc, $8194                                   ; $6e4f: $d4 $94 $81
	and  h                                           ; $6e52: $a4
	ld   d, $26                                      ; $6e53: $16 $26
	ld   d, h                                        ; $6e55: $54
	ld   e, b                                        ; $6e56: $58
	xor  l                                           ; $6e57: $ad
	and  l                                           ; $6e58: $a5
	adc  c                                           ; $6e59: $89
	jp   hl                                          ; $6e5a: $e9


	ld   [bc], a                                     ; $6e5b: $02
	ldh  [c], a                                      ; $6e5c: $e2
	jr   nc, @-$40                                   ; $6e5d: $30 $be

	jr   nz, jr_09a_6e92                             ; $6e5f: $20 $31

	nop                                              ; $6e61: $00
	and  $00                                         ; $6e62: $e6 $00
	ccf                                              ; $6e64: $3f
	nop                                              ; $6e65: $00
	cp   a                                           ; $6e66: $bf
	nop                                              ; $6e67: $00
	ld   b, $00                                      ; $6e68: $06 $00
	add  b                                           ; $6e6a: $80
	add  e                                           ; $6e6b: $83
	nop                                              ; $6e6c: $00
	ld   a, [bc]                                     ; $6e6d: $0a

jr_09a_6e6e:
	add  b                                           ; $6e6e: $80
	nop                                              ; $6e6f: $00
	ld   h, b                                        ; $6e70: $60
	add  b                                           ; $6e71: $80
	sub  b                                           ; $6e72: $90
	ldh  [$e8], a                                    ; $6e73: $e0 $e8
	ldh  a, [$f4]                                    ; $6e75: $f0 $f4
	ld   hl, sp-$06                                  ; $6e77: $f8 $fa
	add  d                                           ; $6e79: $82
	db   $fc                                         ; $6e7a: $fc
	ld   bc, $7d7c                                   ; $6e7b: $01 $7c $7d
	add  b                                           ; $6e7e: $80
	cp   [hl]                                        ; $6e7f: $be
	add  e                                           ; $6e80: $83
	cp   $00                                         ; $6e81: $fe $00
	ld   bc, $008d                                   ; $6e83: $01 $8d $00
	nop                                              ; $6e86: $00
	add  b                                           ; $6e87: $80
	add  c                                           ; $6e88: $81
	nop                                              ; $6e89: $00
	nop                                              ; $6e8a: $00
	ld   b, b                                        ; $6e8b: $40
	add  e                                           ; $6e8c: $83
	add  b                                           ; $6e8d: $80
	nop                                              ; $6e8e: $00
	and  b                                           ; $6e8f: $a0
	add  c                                           ; $6e90: $81
	ret  nz                                          ; $6e91: $c0

jr_09a_6e92:
	ld   [bc], a                                     ; $6e92: $02
	ldh  [$80], a                                    ; $6e93: $e0 $80
	ld   b, b                                        ; $6e95: $40
	add  c                                           ; $6e96: $81
	nop                                              ; $6e97: $00
	nop                                              ; $6e98: $00
	ld   bc, $0083                                   ; $6e99: $01 $83 $00
	nop                                              ; $6e9c: $00
	ld   [bc], a                                     ; $6e9d: $02
	add  c                                           ; $6e9e: $81
	ld   bc, $0500                                   ; $6e9f: $01 $00 $05
	add  c                                           ; $6ea2: $81
	inc  bc                                          ; $6ea3: $03
	nop                                              ; $6ea4: $00
	dec  bc                                          ; $6ea5: $0b
	add  e                                           ; $6ea6: $83
	rlca                                             ; $6ea7: $07
	ld   [bc], a                                     ; $6ea8: $02
	rrca                                             ; $6ea9: $0f
	inc  bc                                          ; $6eaa: $03
	rlca                                             ; $6eab: $07
	add  c                                           ; $6eac: $81
	ld   bc, $0304                                   ; $6ead: $01 $04 $03
	nop                                              ; $6eb0: $00
	sub  h                                           ; $6eb1: $94
	nop                                              ; $6eb2: $00
	ld   sp, $0083                                   ; $6eb3: $31 $83 $00
	inc  de                                          ; $6eb6: $13
	ld   [hl], $00                                   ; $6eb7: $36 $00
	ret  nz                                          ; $6eb9: $c0

	nop                                              ; $6eba: $00
	dec  de                                          ; $6ebb: $1b
	nop                                              ; $6ebc: $00
	xor  l                                           ; $6ebd: $ad
	nop                                              ; $6ebe: $00
	rst  $38                                         ; $6ebf: $ff
	nop                                              ; $6ec0: $00
	rra                                              ; $6ec1: $1f
	nop                                              ; $6ec2: $00
	ei                                               ; $6ec3: $fb
	nop                                              ; $6ec4: $00
	ld   bc, $ff71                                   ; $6ec5: $01 $71 $ff
	adc  b                                           ; $6ec8: $88
	ld   hl, sp-$10                                  ; $6ec9: $f8 $f0
	add  b                                           ; $6ecb: $80
	ld   [hl], b                                     ; $6ecc: $70
	nop                                              ; $6ecd: $00
	ldh  a, [$80]                                    ; $6ece: $f0 $80
	ld   a, b                                        ; $6ed0: $78
	db   $fd                                         ; $6ed1: $fd
	nop                                              ; $6ed2: $00
	ld   b, $4b                                      ; $6ed3: $06 $4b
	nop                                              ; $6ed5: $00
	cp   c                                           ; $6ed6: $b9
	ld   bc, $0017                                   ; $6ed7: $01 $17 $00
	call z, $0480                                    ; $6eda: $cc $80 $04
	rra                                              ; $6edd: $1f
	ld   b, $3a                                      ; $6ede: $06 $3a
	inc  bc                                          ; $6ee0: $03
	dec  de                                          ; $6ee1: $1b
	inc  sp                                          ; $6ee2: $33
	ccf                                              ; $6ee3: $3f
	rst  $38                                         ; $6ee4: $ff
	and  l                                           ; $6ee5: $a5
	nop                                              ; $6ee6: $00
	add  l                                           ; $6ee7: $85
	nop                                              ; $6ee8: $00
	ld   de, $2600                                   ; $6ee9: $11 $00 $26
	ret  nz                                          ; $6eec: $c0

	add  hl, de                                      ; $6eed: $19
	ret  nz                                          ; $6eee: $c0

	jp   nc, $a0c0                                   ; $6eef: $d2 $c0 $a0

	add  b                                           ; $6ef2: $80
	adc  h                                           ; $6ef3: $8c
	adc  a                                           ; $6ef4: $8f
	or   [hl]                                        ; $6ef5: $b6
	nop                                              ; $6ef6: $00
	db   $eb                                         ; $6ef7: $eb
	nop                                              ; $6ef8: $00
	jp   nc, $9000                                   ; $6ef9: $d2 $00 $90

	ld   c, $2e                                      ; $6efc: $0e $2e
	add  b                                           ; $6efe: $80
	rra                                              ; $6eff: $1f
	add  b                                           ; $6f00: $80
	ld   sp, hl                                      ; $6f01: $f9
	add  b                                           ; $6f02: $80
	add  $01                                         ; $6f03: $c6 $01
	ld   a, c                                        ; $6f05: $79
	ld   l, [hl]                                     ; $6f06: $6e
	add  b                                           ; $6f07: $80
	ld   d, b                                        ; $6f08: $50
	add  hl, bc                                      ; $6f09: $09
	ld   d, c                                        ; $6f0a: $51
	ld   e, l                                        ; $6f0b: $5d
	db   $db                                         ; $6f0c: $db
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f0d: $cf
	rst  $28                                         ; $6f0e: $ef
	rst  $20                                         ; $6f0f: $e7
	rst  $30                                         ; $6f10: $f7
	pop  af                                          ; $6f11: $f1
	pop  hl                                          ; $6f12: $e1
	ldh  [$80], a                                    ; $6f13: $e0 $80
	sbc  b                                           ; $6f15: $98
	ld   bc, $01fe                                   ; $6f16: $01 $fe $01
	adc  e                                           ; $6f19: $8b
	rst  $38                                         ; $6f1a: $ff
	add  b                                           ; $6f1b: $80
	ld   a, a                                        ; $6f1c: $7f
	add  h                                           ; $6f1d: $84
	rst  $38                                         ; $6f1e: $ff
	ld   [bc], a                                     ; $6f1f: $02
	ld   e, a                                        ; $6f20: $5f
	rra                                              ; $6f21: $1f
	ld   e, a                                        ; $6f22: $5f
	add  b                                           ; $6f23: $80
	rra                                              ; $6f24: $1f
	dec  bc                                          ; $6f25: $0b
	inc  e                                           ; $6f26: $1c
	db   $fd                                         ; $6f27: $fd
	ld   hl, sp-$07                                  ; $6f28: $f8 $f9
	pop  hl                                          ; $6f2a: $e1
	ldh  a, [c]                                      ; $6f2b: $f2
	db   $ed                                         ; $6f2c: $ed
	pop  af                                          ; $6f2d: $f1
	di                                               ; $6f2e: $f3
	or   e                                           ; $6f2f: $b3
	inc  sp                                          ; $6f30: $33
	or   e                                           ; $6f31: $b3
	add  c                                           ; $6f32: $81
	scf                                              ; $6f33: $37
	rrca                                             ; $6f34: $0f
	rst  $30                                         ; $6f35: $f7
	ld   [hl], a                                     ; $6f36: $77
	rst  $20                                         ; $6f37: $e7

jr_09a_6f38:
	rlca                                             ; $6f38: $07
	rla                                              ; $6f39: $17
	rlca                                             ; $6f3a: $07
	ld   b, b                                        ; $6f3b: $40
	or   a                                           ; $6f3c: $b7
	dec  de                                          ; $6f3d: $1b
	ld   e, e                                        ; $6f3e: $5b
	inc  c                                           ; $6f3f: $0c
	inc  l                                           ; $6f40: $2c
	add  b                                           ; $6f41: $80
	sub  b                                           ; $6f42: $90
	di                                               ; $6f43: $f3
	ldh  a, [$80]                                    ; $6f44: $f0 $80
	or   b                                           ; $6f46: $b0
	nop                                              ; $6f47: $00
	inc  d                                           ; $6f48: $14
	add  b                                           ; $6f49: $80
	ld   d, $1f                                      ; $6f4a: $16 $1f
	db   $10                                         ; $6f4c: $10
	or   a                                           ; $6f4d: $b7
	inc  sp                                          ; $6f4e: $33
	ccf                                              ; $6f4f: $3f
	nop                                              ; $6f50: $00
	or   h                                           ; $6f51: $b4
	nop                                              ; $6f52: $00
	ret  nz                                          ; $6f53: $c0

	pop  bc                                          ; $6f54: $c1
	ld   hl, sp+$3a                                  ; $6f55: $f8 $3a
	ld   a, [$3d0c]                                  ; $6f57: $fa $0c $3d
	ld   b, $0e                                      ; $6f5a: $06 $0e
	ld   bc, $67f9                                   ; $6f5c: $01 $f9 $67
	ld   [hl], b                                     ; $6f5f: $70
	ld   [$187f], sp                                 ; $6f60: $08 $7f $18
	cp   b                                           ; $6f63: $b8
	ld   a, $7e                                      ; $6f64: $3e $7e
	ld   c, a                                        ; $6f66: $4f
	rst  $38                                         ; $6f67: $ff
	inc  bc                                          ; $6f68: $03
	ld   [hl], e                                     ; $6f69: $73
	cp   a                                           ; $6f6a: $bf
	rst  $38                                         ; $6f6b: $ff
	add  b                                           ; $6f6c: $80
	rra                                              ; $6f6d: $1f
	add  b                                           ; $6f6e: $80
	ld   hl, sp+$05                                  ; $6f6f: $f8 $05
	rst  $20                                         ; $6f71: $e7
	jp   hl                                          ; $6f72: $e9


	pop  de                                          ; $6f73: $d1
	sbc  $f2                                         ; $6f74: $de $f2
	di                                               ; $6f76: $f3
	add  b                                           ; $6f77: $80
	db   $fc                                         ; $6f78: $fc
	add  b                                           ; $6f79: $80
	rst  $20                                         ; $6f7a: $e7
	add  b                                           ; $6f7b: $80
	reti                                             ; $6f7c: $d9


	ld   [bc], a                                     ; $6f7d: $02
	cp   [hl]                                        ; $6f7e: $be
	pop  bc                                          ; $6f7f: $c1
	ld   a, a                                        ; $6f80: $7f
	add  b                                           ; $6f81: $80
	ccf                                              ; $6f82: $3f
	add  b                                           ; $6f83: $80
	rra                                              ; $6f84: $1f
	inc  b                                           ; $6f85: $04
	rrca                                             ; $6f86: $0f
	adc  a                                           ; $6f87: $8f
	inc  bc                                          ; $6f88: $03
	ld   b, e                                        ; $6f89: $43
	ret  nz                                          ; $6f8a: $c0

	add  b                                           ; $6f8b: $80
	ld   [hl], b                                     ; $6f8c: $70
	inc  bc                                          ; $6f8d: $03
	ld   hl, sp-$01                                  ; $6f8e: $f8 $ff
	ld   [hl], a                                     ; $6f90: $77
	adc  a                                           ; $6f91: $8f
	add  b                                           ; $6f92: $80
	ret  nz                                          ; $6f93: $c0

	add  d                                           ; $6f94: $82
	add  b                                           ; $6f95: $80
	add  b                                           ; $6f96: $80
	ret  nz                                          ; $6f97: $c0

	ld   bc, $1fe0                                   ; $6f98: $01 $e0 $1f
	add  b                                           ; $6f9b: $80
	nop                                              ; $6f9c: $00
	inc  b                                           ; $6f9d: $04
	dec  e                                           ; $6f9e: $1d
	db   $dd                                         ; $6f9f: $dd
	call c, $06ed                                    ; $6fa0: $dc $ed $06
	add  b                                           ; $6fa3: $80
	inc  b                                           ; $6fa4: $04
	ld   b, $10                                      ; $6fa5: $06 $10
	ld   [$002f], sp                                 ; $6fa7: $08 $2f $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6faa: $cf
	rrca                                             ; $6fab: $0f
	rra                                              ; $6fac: $1f
	add  b                                           ; $6fad: $80
	rst  JumpTable                                         ; $6fae: $df
	add  b                                           ; $6faf: $80
	ld   e, a                                        ; $6fb0: $5f
	inc  bc                                          ; $6fb1: $03
	rra                                              ; $6fb2: $1f
	rst  $28                                         ; $6fb3: $ef
	nop                                              ; $6fb4: $00
	jr   nc, jr_09a_6f38                             ; $6fb5: $30 $81

	nop                                              ; $6fb7: $00
	rlca                                             ; $6fb8: $07
	ret  nz                                          ; $6fb9: $c0

	ld   [$c0f0], sp                                 ; $6fba: $08 $f0 $c0
	sub  $80                                         ; $6fbd: $d6 $80
	add  l                                           ; $6fbf: $85
	add  d                                           ; $6fc0: $82
	add  b                                           ; $6fc1: $80
	add  [hl]                                        ; $6fc2: $86
	inc  b                                           ; $6fc3: $04
	adc  d                                           ; $6fc4: $8a
	nop                                              ; $6fc5: $00
	ld   bc, $0100                                   ; $6fc6: $01 $00 $01
	add  c                                           ; $6fc9: $81
	ld   [bc], a                                     ; $6fca: $02
	add  b                                           ; $6fcb: $80
	ld   b, $0e                                      ; $6fcc: $06 $0e
	ld   e, $18                                      ; $6fce: $1e $18
	rst  $38                                         ; $6fd0: $ff
	ld   [hl], b                                     ; $6fd1: $70
	ld   a, b                                        ; $6fd2: $78
	and  b                                           ; $6fd3: $a0
	xor  a                                           ; $6fd4: $af
	rst  $20                                         ; $6fd5: $e7
	db   $e4                                         ; $6fd6: $e4
	inc  l                                           ; $6fd7: $2c
	add  sp, $18                                     ; $6fd8: $e8 $18
	add  e                                           ; $6fda: $83
	inc  bc                                          ; $6fdb: $03
	sbc  a                                           ; $6fdc: $9f
	add  b                                           ; $6fdd: $80
	inc  e                                           ; $6fde: $1c
	ld   bc, $d313                                   ; $6fdf: $01 $13 $d3
	add  b                                           ; $6fe2: $80
	cpl                                              ; $6fe3: $2f
	add  b                                           ; $6fe4: $80
	ld   d, a                                        ; $6fe5: $57
	add  c                                           ; $6fe6: $81
	rst  $38                                         ; $6fe7: $ff
	add  b                                           ; $6fe8: $80
	ccf                                              ; $6fe9: $3f
	add  b                                           ; $6fea: $80
	adc  a                                           ; $6feb: $8f
	nop                                              ; $6fec: $00
	rst  $38                                         ; $6fed: $ff
	add  b                                           ; $6fee: $80
	ld   a, a                                        ; $6fef: $7f
	add  b                                           ; $6ff0: $80
	sbc  a                                           ; $6ff1: $9f
	add  b                                           ; $6ff2: $80
	rst  $28                                         ; $6ff3: $ef
	nop                                              ; $6ff4: $00
	rst  $38                                         ; $6ff5: $ff
	add  b                                           ; $6ff6: $80
	nop                                              ; $6ff7: $00
	add  b                                           ; $6ff8: $80
	ld   bc, $0084                                   ; $6ff9: $01 $84 $00
	rlca                                             ; $6ffc: $07
	add  b                                           ; $6ffd: $80
	nop                                              ; $6ffe: $00
	ld   h, b                                        ; $6fff: $60
	and  b                                           ; $7000: $a0
	cp   b                                           ; $7001: $b8
	ld   c, b                                        ; $7002: $48
	or   b                                           ; $7003: $b0
	add  b                                           ; $7004: $80
	add  b                                           ; $7005: $80
	ld   b, b                                        ; $7006: $40
	nop                                              ; $7007: $00
	add  b                                           ; $7008: $80
	add  e                                           ; $7009: $83
	nop                                              ; $700a: $00
	inc  de                                          ; $700b: $13
	ld   bc, $0600                                   ; $700c: $01 $00 $06
	inc  b                                           ; $700f: $04
	inc  e                                           ; $7010: $1c
	ld   [de], a                                     ; $7011: $12
	di                                               ; $7012: $f3
	ld   d, d                                        ; $7013: $52
	db   $d3                                         ; $7014: $d3
	add  h                                           ; $7015: $84
	call z, $4bc0                            ; $7016: $cc $c0 $4b
	ret  nc                                          ; $7019: $d0

	db   $d3                                         ; $701a: $d3
	call c, $dd40                                    ; $701b: $dc $40 $dd
	sbc  b                                           ; $701e: $98
	sbc  c                                           ; $701f: $99
	add  b                                           ; $7020: $80
	db   $e4                                         ; $7021: $e4
	db   $10                                         ; $7022: $10
	add  c                                           ; $7023: $81
	ld   c, h                                        ; $7024: $4c
	call z, $3d30                                    ; $7025: $cc $30 $3d
	ld   b, b                                        ; $7028: $40
	db   $fc                                         ; $7029: $fc
	inc  bc                                          ; $702a: $03
	or   b                                           ; $702b: $b0
	rrca                                             ; $702c: $0f
	ld   c, h                                        ; $702d: $4c
	rst  JumpTable                                         ; $702e: $df
	ld   d, d                                        ; $702f: $52
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7030: $cf
	dec  c                                           ; $7031: $0d
	rrca                                             ; $7032: $0f
	rst  $38                                         ; $7033: $ff
	rst  $38                                         ; $7034: $ff
	nop                                              ; $7035: $00
	rst  $38                                         ; $7036: $ff
	nop                                              ; $7037: $00
	rst  $38                                         ; $7038: $ff
	nop                                              ; $7039: $00
	rst  $38                                         ; $703a: $ff
	nop                                              ; $703b: $00
	rst  $38                                         ; $703c: $ff
	nop                                              ; $703d: $00
	sbc  b                                           ; $703e: $98
	nop                                              ; $703f: $00
	add  sp, $00                                     ; $7040: $e8 $00
	add  b                                           ; $7042: $80
	nop                                              ; $7043: $00
	rrca                                             ; $7044: $0f
	ld   bc, $0200                                   ; $7045: $01 $00 $02
	ld   bc, $0305                                   ; $7048: $01 $05 $03
	ld   [$1807], sp                                 ; $704b: $08 $07 $18
	inc  c                                           ; $704e: $0c
	add  hl, sp                                      ; $704f: $39
	add  hl, de                                      ; $7050: $19
	ld   [de], a                                     ; $7051: $12
	inc  de                                          ; $7052: $13
	ld   h, d                                        ; $7053: $62
	inc  hl                                          ; $7054: $23
	add  b                                           ; $7055: $80
	daa                                              ; $7056: $27
	add  d                                           ; $7057: $82
	rrca                                             ; $7058: $0f
	add  b                                           ; $7059: $80
	ld   e, $80                                      ; $705a: $1e $80

jr_09a_705c:
	inc  e                                           ; $705c: $1c
	add  b                                           ; $705d: $80
	inc  a                                           ; $705e: $3c
	nop                                              ; $705f: $00
	ld   e, c                                        ; $7060: $59
	add  e                                           ; $7061: $83
	add  hl, de                                      ; $7062: $19
	add  h                                           ; $7063: $84
	ld   de, $1506                                   ; $7064: $11 $06 $15
	ld   de, $0020                                   ; $7067: $11 $20 $00
	ld   [$0200], sp                                 ; $706a: $08 $00 $02
	add  c                                           ; $706d: $81
	nop                                              ; $706e: $00
	ld   [bc], a                                     ; $706f: $02
	add  hl, bc                                      ; $7070: $09
	nop                                              ; $7071: $00
	db   $10                                         ; $7072: $10
	add  c                                           ; $7073: $81
	nop                                              ; $7074: $00
	ld   [bc], a                                     ; $7075: $02

jr_09a_7076:
	inc  c                                           ; $7076: $0c
	nop                                              ; $7077: $00
	inc  b                                           ; $7078: $04
	add  e                                           ; $7079: $83
	nop                                              ; $707a: $00
	dec  d                                           ; $707b: $15
	inc  bc                                          ; $707c: $03
	nop                                              ; $707d: $00
	rlca                                             ; $707e: $07
	inc  bc                                          ; $707f: $03
	dec  c                                           ; $7080: $0d
	rlca                                             ; $7081: $07
	ld   b, $07                                      ; $7082: $06 $07
	dec  b                                           ; $7084: $05
	rlca                                             ; $7085: $07
	scf                                              ; $7086: $37
	rlca                                             ; $7087: $07
	ld   a, d                                        ; $7088: $7a
	dec  sp                                          ; $7089: $3b
	sbc  d                                           ; $708a: $9a
	ld   a, [hl-]                                    ; $708b: $3a
	jr   nz, jr_09a_70be                             ; $708c: $20 $30

	sbc  c                                           ; $708e: $99
	cp   c                                           ; $708f: $b9

jr_09a_7090:
	and  e                                           ; $7090: $a3
	or   e                                           ; $7091: $b3
	add  b                                           ; $7092: $80
	sub  [hl]                                        ; $7093: $96
	add  b                                           ; $7094: $80
	nop                                              ; $7095: $00
	inc  b                                           ; $7096: $04
	add  hl, bc                                      ; $7097: $09
	ld   [$0006], sp                                 ; $7098: $08 $06 $00
	ld   hl, sp-$7f                                  ; $709b: $f8 $81
	nop                                              ; $709d: $00
	inc  bc                                          ; $709e: $03
	ld   bc, $0300                                   ; $709f: $01 $00 $03
	ld   bc, $0080                                   ; $70a2: $01 $80 $00
	dec  c                                           ; $70a5: $0d
	inc  b                                           ; $70a6: $04
	nop                                              ; $70a7: $00
	ld   [$f202], sp                                 ; $70a8: $08 $02 $f2
	dec  b                                           ; $70ab: $05
	push hl                                          ; $70ac: $e5
	ld   [$f5fa], a                                  ; $70ad: $ea $fa $f5
	db   $dd                                         ; $70b0: $dd
	jp   c, $3c3e                                    ; $70b1: $da $3e $3c

	add  b                                           ; $70b4: $80
	ld   a, [hl]                                     ; $70b5: $7e
	add  d                                           ; $70b6: $82
	rst  $38                                         ; $70b7: $ff
	add  b                                           ; $70b8: $80
	ei                                               ; $70b9: $fb
	inc  bc                                          ; $70ba: $03
	ld   [hl], e                                     ; $70bb: $73
	di                                               ; $70bc: $f3
	ld   [hl], a                                     ; $70bd: $77

jr_09a_70be:
	rst  $30                                         ; $70be: $f7
	add  b                                           ; $70bf: $80
	and  $80                                         ; $70c0: $e6 $80
	adc  $01                                         ; $70c2: $ce $01
	adc  l                                           ; $70c4: $8d
	adc  h                                           ; $70c5: $8c
	add  b                                           ; $70c6: $80
	inc  e                                           ; $70c7: $1c
	inc  b                                           ; $70c8: $04
	ld   a, [hl-]                                    ; $70c9: $3a
	jr   c, jr_09a_7090                              ; $70ca: $38 $c4

	nop                                              ; $70cc: $00
	jr   c, jr_09a_705c                              ; $70cd: $38 $8d

	nop                                              ; $70cf: $00
	ld   hl, $0001                                   ; $70d0: $21 $01 $00
	rrca                                             ; $70d3: $0f
	ld   bc, $0737                                   ; $70d4: $01 $37 $07
	db   $d3                                         ; $70d7: $d3
	rra                                              ; $70d8: $1f
	xor  e                                           ; $70d9: $ab
	ccf                                              ; $70da: $3f
	jp   c, Jump_09a_557e                            ; $70db: $da $7e $55

	ld   a, c                                        ; $70de: $79
	ld   h, d                                        ; $70df: $62
	ld   [hl], e                                     ; $70e0: $73
	inc  h                                           ; $70e1: $24
	daa                                              ; $70e2: $27
	adc  d                                           ; $70e3: $8a
	rrca                                             ; $70e4: $0f
	ld   d, c                                        ; $70e5: $51
	rra                                              ; $70e6: $1f
	inc  d                                           ; $70e7: $14
	rra                                              ; $70e8: $1f
	dec  l                                           ; $70e9: $2d
	rrca                                             ; $70ea: $0f
	rla                                              ; $70eb: $17
	rlca                                             ; $70ec: $07
	add  hl, bc                                      ; $70ed: $09
	ld   bc, $0006                                   ; $70ee: $01 $06 $00
	ret                                              ; $70f1: $c9


	jr   nc, jr_09a_7076                             ; $70f2: $30 $82

	db   $10                                         ; $70f4: $10
	ld   de, $0480                                   ; $70f5: $11 $80 $04
	ld   c, d                                        ; $70f8: $4a
	ld   [$0a0b], sp                                 ; $70f9: $08 $0b $0a
	ld   c, e                                        ; $70fc: $4b
	ld   [$75f7], sp                                 ; $70fd: $08 $f7 $75
	ld   d, l                                        ; $7100: $55
	ld   [hl], l                                     ; $7101: $75
	ld   l, c                                        ; $7102: $69
	ld   a, b                                        ; $7103: $78
	sbc  b                                           ; $7104: $98
	cp   b                                           ; $7105: $b8
	and  [hl]                                        ; $7106: $a6
	or   [hl]                                        ; $7107: $b6
	add  b                                           ; $7108: $80
	and  h                                           ; $7109: $a4
	dec  b                                           ; $710a: $05
	ld   bc, $3200                                   ; $710b: $01 $00 $32
	jr   nc, jr_09a_7184                             ; $710e: $30 $74

	ld   [hl], b                                     ; $7110: $70
	add  b                                           ; $7111: $80
	nop                                              ; $7112: $00
	dec  bc                                          ; $7113: $0b
	ld   [$b700], sp                                 ; $7114: $08 $00 $b7
	add  b                                           ; $7117: $80
	rra                                              ; $7118: $1f
	nop                                              ; $7119: $00
	jr   c, jr_09a_711c                              ; $711a: $38 $00

jr_09a_711c:
	ld   l, h                                        ; $711c: $6c
	inc  c                                           ; $711d: $0c
	or   b                                           ; $711e: $b0
	jr   nc, @-$7e                                   ; $711f: $30 $80

	ret  nz                                          ; $7121: $c0

jr_09a_7122:
	add  h                                           ; $7122: $84
	nop                                              ; $7123: $00
	ld   a, [bc]                                     ; $7124: $0a
	add  b                                           ; $7125: $80
	nop                                              ; $7126: $00
	inc  sp                                          ; $7127: $33
	nop                                              ; $7128: $00
	ld   a, a                                        ; $7129: $7f
	nop                                              ; $712a: $00
	rla                                              ; $712b: $17
	nop                                              ; $712c: $00
	scf                                              ; $712d: $37
	nop                                              ; $712e: $00
	add  sp, -$7f                                    ; $712f: $e8 $81
	ld   hl, sp+$03                                  ; $7131: $f8 $03
	cp   $fc                                         ; $7133: $fe $fc
	rst  $38                                         ; $7135: $ff
	cp   $80                                         ; $7136: $fe $80
	rst  $38                                         ; $7138: $ff
	add  b                                           ; $7139: $80
	ei                                               ; $713a: $fb
	add  b                                           ; $713b: $80
	db   $fd                                         ; $713c: $fd
	add  b                                           ; $713d: $80
	cp   $80                                         ; $713e: $fe $80
	rst  $38                                         ; $7140: $ff
	ld   bc, $f7f6                                   ; $7141: $01 $f6 $f7
	add  b                                           ; $7144: $80
	ei                                               ; $7145: $fb
	ld   a, [bc]                                     ; $7146: $0a
	ld   a, d                                        ; $7147: $7a
	ld   a, e                                        ; $7148: $7b
	ld   [hl], l                                     ; $7149: $75
	ld   a, l                                        ; $714a: $7d
	ld   e, b                                        ; $714b: $58
	ld   a, h                                        ; $714c: $7c
	ld   c, h                                        ; $714d: $4c
	ld   a, h                                        ; $714e: $7c
	xor  b                                           ; $714f: $a8
	cp   [hl]                                        ; $7150: $be
	ei                                               ; $7151: $fb
	add  c                                           ; $7152: $81
	ld   bc, $0482                                   ; $7153: $01 $82 $04
	rlca                                             ; $7156: $07
	inc  d                                           ; $7157: $14
	add  h                                           ; $7158: $84
	and  c                                           ; $7159: $a1
	ld   bc, $03e3                                   ; $715a: $01 $e3 $03
	ld   a, [hl+]                                    ; $715d: $2a
	res  0, b                                        ; $715e: $cb $80
	adc  e                                           ; $7160: $8b
	nop                                              ; $7161: $00
	jp   z, $8b80                                    ; $7162: $ca $80 $8b

	ld   [bc], a                                     ; $7165: $02
	dec  bc                                          ; $7166: $0b
	pop  bc                                          ; $7167: $c1
	ld   bc, $0c80                                   ; $7168: $01 $80 $0c
	ld   b, $ae                                      ; $716b: $06 $ae
	ld   c, $10                                      ; $716d: $0e $10
	nop                                              ; $716f: $00
	dec  c                                           ; $7170: $0d
	ld   bc, $8583                                   ; $7171: $01 $83 $85
	nop                                              ; $7174: $00
	nop                                              ; $7175: $00
	add  b                                           ; $7176: $80
	add  c                                           ; $7177: $81
	nop                                              ; $7178: $00
	nop                                              ; $7179: $00
	ret  nz                                          ; $717a: $c0

	add  c                                           ; $717b: $81
	add  b                                           ; $717c: $80
	inc  bc                                          ; $717d: $03
	ld   h, b                                        ; $717e: $60
	ld   b, b                                        ; $717f: $40
	stop                                             ; $7180: $10 $00
	add  b                                           ; $7182: $80
	and  b                                           ; $7183: $a0

jr_09a_7184:
	ld   bc, $a028                                   ; $7184: $01 $28 $a0
	add  b                                           ; $7187: $80
	sub  b                                           ; $7188: $90
	ld   bc, $d050                                   ; $7189: $01 $50 $d0
	add  b                                           ; $718c: $80
	ret  nz                                          ; $718d: $c0

	add  d                                           ; $718e: $82
	ld   h, b                                        ; $718f: $60
	add  b                                           ; $7190: $80
	jr   nz, @+$03                                   ; $7191: $20 $01

	jr   z, jr_09a_71b5                              ; $7193: $28 $20

	add  b                                           ; $7195: $80
	nop                                              ; $7196: $00
	add  d                                           ; $7197: $82
	add  b                                           ; $7198: $80
	ld   bc, $8090                                   ; $7199: $01 $90 $80
	add  b                                           ; $719c: $80
	nop                                              ; $719d: $00
	nop                                              ; $719e: $00
	jr   nz, jr_09a_7122                             ; $719f: $20 $81

	nop                                              ; $71a1: $00
	nop                                              ; $71a2: $00
	ld   b, b                                        ; $71a3: $40
	add  e                                           ; $71a4: $83
	nop                                              ; $71a5: $00
	ld   h, $c0                                      ; $71a6: $26 $c0
	add  b                                           ; $71a8: $80
	ldh  [$c0], a                                    ; $71a9: $e0 $c0
	add  b                                           ; $71ab: $80
	ret  nz                                          ; $71ac: $c0

	ld   b, b                                        ; $71ad: $40
	ret  nz                                          ; $71ae: $c0

	sbc  b                                           ; $71af: $98
	ret  nz                                          ; $71b0: $c0

	inc  a                                           ; $71b1: $3c
	cp   b                                           ; $71b2: $b8
	cp   [hl]                                        ; $71b3: $be
	cp   h                                           ; $71b4: $bc

jr_09a_71b5:
	xor  b                                           ; $71b5: $a8
	cp   h                                           ; $71b6: $bc
	inc  [hl]                                        ; $71b7: $34
	inc  a                                           ; $71b8: $3c
	add  hl, sp                                      ; $71b9: $39
	inc  a                                           ; $71ba: $3c
	xor  e                                           ; $71bb: $ab
	cp   e                                           ; $71bc: $bb
	sub  e                                           ; $71bd: $93
	sbc  e                                           ; $71be: $9b
	ld   a, [de]                                     ; $71bf: $1a
	dec  de                                          ; $71c0: $1b
	rrc  e                                           ; $71c1: $cb $0b
	db   $e3                                         ; $71c3: $e3
	inc  bc                                          ; $71c4: $03
	ld   [hl-], a                                    ; $71c5: $32
	add  e                                           ; $71c6: $83
	sub  e                                           ; $71c7: $93
	jp   $c1e5                                       ; $71c8: $c3 $e5 $c1


	ldh  a, [$e0]                                    ; $71cb: $f0 $e0
	dec  bc                                          ; $71cd: $0b
	adc  c                                           ; $71ce: $89
	nop                                              ; $71cf: $00
	nop                                              ; $71d0: $00
	add  b                                           ; $71d1: $80
	add  c                                           ; $71d2: $81
	nop                                              ; $71d3: $00
	nop                                              ; $71d4: $00
	ret  nz                                          ; $71d5: $c0

	add  c                                           ; $71d6: $81
	add  b                                           ; $71d7: $80
	ld   [$8000], sp                                 ; $71d8: $08 $00 $80
	and  b                                           ; $71db: $a0
	add  b                                           ; $71dc: $80
	sub  b                                           ; $71dd: $90
	add  b                                           ; $71de: $80
	jr   nz, @-$5e                                   ; $71df: $20 $a0

	ld   a, b                                        ; $71e1: $78
	add  c                                           ; $71e2: $81
	ld   [hl], b                                     ; $71e3: $70
	add  d                                           ; $71e4: $82
	ld   h, b                                        ; $71e5: $60
	dec  c                                           ; $71e6: $0d
	inc  b                                           ; $71e7: $04
	db   $10                                         ; $71e8: $10
	ld   [de], a                                     ; $71e9: $12
	ld   l, b                                        ; $71ea: $68
	ld   l, c                                        ; $71eb: $69
	sub  h                                           ; $71ec: $94
	sub  l                                           ; $71ed: $95
	add  hl, hl                                      ; $71ee: $29
	dec  hl                                          ; $71ef: $2b
	ld   d, e                                        ; $71f0: $53
	rst  $10                                         ; $71f1: $d7
	daa                                              ; $71f2: $27
	ld   l, a                                        ; $71f3: $6f
	rrca                                             ; $71f4: $0f
	add  d                                           ; $71f5: $82
	rra                                              ; $71f6: $1f
	add  h                                           ; $71f7: $84
	dec  de                                          ; $71f8: $1b
	add  d                                           ; $71f9: $82
	dec  c                                           ; $71fa: $0d
	ld   bc, $0c2c                                   ; $71fb: $01 $2c $0c
	add  b                                           ; $71fe: $80
	ld   b, $01                                      ; $71ff: $06 $01
	ld   d, $06                                      ; $7201: $16 $06
	add  b                                           ; $7203: $80
	inc  bc                                          ; $7204: $03
	ld   [bc], a                                     ; $7205: $02
	ld   [$0700], sp                                 ; $7206: $08 $00 $07
	sub  e                                           ; $7209: $93
	nop                                              ; $720a: $00
	rla                                              ; $720b: $17
	ret  nz                                          ; $720c: $c0

	nop                                              ; $720d: $00
	ld   hl, sp-$40                                  ; $720e: $f8 $c0
	or   $f8                                         ; $7210: $f6 $f8
	pop  af                                          ; $7212: $f1
	cp   $fa                                         ; $7213: $fe $fa
	rst  $38                                         ; $7215: $ff
	xor  d                                           ; $7216: $aa
	cp   a                                           ; $7217: $bf
	ret  nc                                          ; $7218: $d0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7219: $cf
	xor  d                                           ; $721a: $aa
	rst  $20                                         ; $721b: $e7
	rst  $10                                         ; $721c: $d7
	di                                               ; $721d: $f3
	xor  c                                           ; $721e: $a9
	ld   sp, hl                                      ; $721f: $f9
	call c, $eefc                                    ; $7220: $dc $fc $ee
	cp   $80                                         ; $7223: $fe $80
	ld   hl, sp+$0c                                  ; $7225: $f8 $0c
	ld   sp, hl                                      ; $7227: $f9
	ld   hl, sp+$62                                  ; $7228: $f8 $62
	ld   h, b                                        ; $722a: $60
	inc  c                                           ; $722b: $0c
	nop                                              ; $722c: $00
	ld   [hl], b                                     ; $722d: $70
	nop                                              ; $722e: $00
	ret  nz                                          ; $722f: $c0

	add  b                                           ; $7230: $80
	ldh  [$c0], a                                    ; $7231: $e0 $c0
	ldh  a, [$81]                                    ; $7233: $f0 $81
	ldh  [rTMA], a                                   ; $7235: $e0 $06
	sub  b                                           ; $7237: $90
	add  b                                           ; $7238: $80
	jr   nz, jr_09a_723b                             ; $7239: $20 $00

jr_09a_723b:
	ld   b, b                                        ; $723b: $40
	nop                                              ; $723c: $00
	add  b                                           ; $723d: $80
	adc  l                                           ; $723e: $8d
	nop                                              ; $723f: $00
	ld   bc, $0222                                   ; $7240: $01 $22 $02
	add  b                                           ; $7243: $80
	nop                                              ; $7244: $00
	ld   [bc], a                                     ; $7245: $02
	ld   [hl], b                                     ; $7246: $70
	nop                                              ; $7247: $00
	ld   bc, $0081                                   ; $7248: $01 $81 $00
	ld   [bc], a                                     ; $724b: $02
	jr   jr_09a_724e                                 ; $724c: $18 $00

jr_09a_724e:
	ld   h, b                                        ; $724e: $60
	add  c                                           ; $724f: $81
	nop                                              ; $7250: $00
	inc  b                                           ; $7251: $04
	dec  a                                           ; $7252: $3d
	nop                                              ; $7253: $00
	ld   bc, $0e00                                   ; $7254: $01 $00 $0e
	add  c                                           ; $7257: $81
	nop                                              ; $7258: $00
	ld   [bc], a                                     ; $7259: $02
	ld   b, $08                                      ; $725a: $06 $08
	ld   a, [bc]                                     ; $725c: $0a
	add  b                                           ; $725d: $80
	inc  c                                           ; $725e: $0c
	add  c                                           ; $725f: $81
	ld   c, $00                                      ; $7260: $0e $00
	rrca                                             ; $7262: $0f
	sub  c                                           ; $7263: $91
	ld   c, $86                                      ; $7264: $0e $86
	rrca                                             ; $7266: $0f
	nop                                              ; $7267: $00
	cpl                                              ; $7268: $2f
	add  c                                           ; $7269: $81
	rra                                              ; $726a: $1f
	dec  b                                           ; $726b: $05
	rst  $10                                         ; $726c: $d7
	ld   bc, $0709                                   ; $726d: $01 $09 $07
	and  [hl]                                        ; $7270: $a6
	xor  [hl]                                        ; $7271: $ae
	add  b                                           ; $7272: $80
	cpl                                              ; $7273: $2f
	ld   [bc], a                                     ; $7274: $02
	rra                                              ; $7275: $1f
	rla                                              ; $7276: $17
	ld   d, a                                        ; $7277: $57
	add  c                                           ; $7278: $81
	rla                                              ; $7279: $17
	ld   [bc], a                                     ; $727a: $02
	rra                                              ; $727b: $1f
	dec  de                                          ; $727c: $1b
	dec  hl                                          ; $727d: $2b
	add  c                                           ; $727e: $81
	dec  bc                                          ; $727f: $0b
	nop                                              ; $7280: $00
	rla                                              ; $7281: $17
	add  c                                           ; $7282: $81
	dec  b                                           ; $7283: $05
	nop                                              ; $7284: $00
	add  e                                           ; $7285: $83
	add  c                                           ; $7286: $81
	ld   [bc], a                                     ; $7287: $02
	inc  b                                           ; $7288: $04
	dec  b                                           ; $7289: $05
	ld   bc, $0002                                   ; $728a: $01 $02 $00
	ret                                              ; $728d: $c9


	add  e                                           ; $728e: $83
	add  b                                           ; $728f: $80
	nop                                              ; $7290: $00
	and  b                                           ; $7291: $a0
	add  c                                           ; $7292: $81
	ret  nz                                          ; $7293: $c0

	nop                                              ; $7294: $00
	ret  nc                                          ; $7295: $d0

	add  c                                           ; $7296: $81
	ldh  [rP1], a                                    ; $7297: $e0 $00
	add  sp, -$7d                                    ; $7299: $e8 $83
	ldh  a, [$88]                                    ; $729b: $f0 $88
	ld   [hl], b                                     ; $729d: $70
	rrca                                             ; $729e: $0f
	ld   a, d                                        ; $729f: $7a
	ld   h, b                                        ; $72a0: $60
	ld   [$0800], a                                  ; $72a1: $ea $00 $08
	nop                                              ; $72a4: $00
	or   a                                           ; $72a5: $b7
	nop                                              ; $72a6: $00
	sbc  b                                           ; $72a7: $98
	rlca                                             ; $72a8: $07
	daa                                              ; $72a9: $27
	rra                                              ; $72aa: $1f
	inc  de                                          ; $72ab: $13
	ld   [hl], e                                     ; $72ac: $73
	ld   c, a                                        ; $72ad: $4f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72ae: $cf
	add  b                                           ; $72af: $80
	ccf                                              ; $72b0: $3f
	add  l                                           ; $72b1: $85
	rst  $38                                         ; $72b2: $ff
	add  b                                           ; $72b3: $80
	ld   a, a                                        ; $72b4: $7f
	ld   [bc], a                                     ; $72b5: $02
	ld   c, h                                        ; $72b6: $4c
	ld   a, a                                        ; $72b7: $7f
	inc  sp                                          ; $72b8: $33
	add  b                                           ; $72b9: $80
	inc  h                                           ; $72ba: $24
	inc  bc                                          ; $72bb: $03
	db   $10                                         ; $72bc: $10
	inc  de                                          ; $72bd: $13
	jp   $80c0                                       ; $72be: $c3 $c0 $80


	add  b                                           ; $72c1: $80
	ld   [bc], a                                     ; $72c2: $02
	nop                                              ; $72c3: $00
	ld   [bc], a                                     ; $72c4: $02
	inc  bc                                          ; $72c5: $03
	add  b                                           ; $72c6: $80
	call z, $fc81                                    ; $72c7: $cc $81 $fc
	nop                                              ; $72ca: $00
	cp   [hl]                                        ; $72cb: $be
	add  c                                           ; $72cc: $81
	ld   hl, sp+$00                                  ; $72cd: $f8 $00
	ld   a, h                                        ; $72cf: $7c
	add  c                                           ; $72d0: $81
	ldh  a, [rTMA]                                   ; $72d1: $f0 $06
	or   b                                           ; $72d3: $b0
	ldh  a, [$f8]                                    ; $72d4: $f0 $f8
	ldh  [$60], a                                    ; $72d6: $e0 $60
	ldh  [$f0], a                                    ; $72d8: $e0 $f0
	add  e                                           ; $72da: $83
	ret  nz                                          ; $72db: $c0

	nop                                              ; $72dc: $00
	rst  JumpTable                                         ; $72dd: $df
	add  b                                           ; $72de: $80
	or   b                                           ; $72df: $b0
	add  b                                           ; $72e0: $80
	ld   d, b                                        ; $72e1: $50
	add  b                                           ; $72e2: $80
	jr   nc, @-$7e                                   ; $72e3: $30 $80

	jr   c, jr_09a_72f4                              ; $72e5: $38 $0d

	ret  c                                           ; $72e7: $d8

	cp   b                                           ; $72e8: $b8
	add  sp, $69                                     ; $72e9: $e8 $69
	ldh  a, [$60]                                    ; $72eb: $f0 $60
	ld   a, b                                        ; $72ed: $78
	xor  d                                           ; $72ee: $aa
	or   b                                           ; $72ef: $b0
	call nc, $08c0                                   ; $72f0: $d4 $c0 $08
	add  b                                           ; $72f3: $80

jr_09a_72f4:
	or   b                                           ; $72f4: $b0
	add  c                                           ; $72f5: $81
	nop                                              ; $72f6: $00
	nop                                              ; $72f7: $00
	ld   b, b                                        ; $72f8: $40
	add  e                                           ; $72f9: $83
	nop                                              ; $72fa: $00
	nop                                              ; $72fb: $00
	db   $f4                                         ; $72fc: $f4
	add  b                                           ; $72fd: $80
	ld   b, b                                        ; $72fe: $40
	inc  h                                           ; $72ff: $24
	nop                                              ; $7300: $00
	add  b                                           ; $7301: $80
	nop                                              ; $7302: $00
	jp   z, $0d00                                    ; $7303: $ca $00 $0d

	nop                                              ; $7306: $00
	and  d                                           ; $7307: $a2
	nop                                              ; $7308: $00
	ld   e, $00                                      ; $7309: $1e $00
	dec  c                                           ; $730b: $0d
	nop                                              ; $730c: $00
	ld   a, l                                        ; $730d: $7d
	nop                                              ; $730e: $00
	ld   e, h                                        ; $730f: $5c
	nop                                              ; $7310: $00
	rst  $20                                         ; $7311: $e7
	nop                                              ; $7312: $00
	ld   e, a                                        ; $7313: $5f
	nop                                              ; $7314: $00
	scf                                              ; $7315: $37
	inc  bc                                          ; $7316: $03
	rra                                              ; $7317: $1f
	rrca                                             ; $7318: $0f
	ld   l, a                                        ; $7319: $6f
	rrca                                             ; $731a: $0f
	db   $e3                                         ; $731b: $e3
	rla                                              ; $731c: $17
	ret  nc                                          ; $731d: $d0

	ld   sp, $3035                                   ; $731e: $31 $35 $30
	or   b                                           ; $7321: $b0
	ld   c, c                                        ; $7322: $49
	ld   a, c                                        ; $7323: $79
	ld   [hl], b                                     ; $7324: $70
	add  b                                           ; $7325: $80
	ld   b, b                                        ; $7326: $40
	ld   d, $44                                      ; $7327: $16 $44
	inc  h                                           ; $7329: $24
	jr   nz, @+$52                                   ; $732a: $20 $50

	ld   b, b                                        ; $732c: $40
	ret  nc                                          ; $732d: $d0

	sub  b                                           ; $732e: $90
	reti                                             ; $732f: $d9


	ld   sp, hl                                      ; $7330: $f9
	cp   $ee                                         ; $7331: $fe $ee
	ldh  [$3f], a                                    ; $7333: $e0 $3f
	ld   a, a                                        ; $7335: $7f
	rst  $38                                         ; $7336: $ff
	dec  l                                           ; $7337: $2d
	ld   d, [hl]                                     ; $7338: $56
	dec  de                                          ; $7339: $1b
	ld   e, a                                        ; $733a: $5f
	ld   h, b                                        ; $733b: $60
	srl  a                                           ; $733c: $cb $3f
	xor  $80                                         ; $733e: $ee $80
	inc  de                                          ; $7340: $13
	ld   [$4b02], sp                                 ; $7341: $08 $02 $4b
	rlca                                             ; $7344: $07
	inc  bc                                          ; $7345: $03
	add  a                                           ; $7346: $87
	add  [hl]                                        ; $7347: $86
	ld   b, $a5                                      ; $7348: $06 $a5
	add  l                                           ; $734a: $85
	add  b                                           ; $734b: $80
	add  c                                           ; $734c: $81
	ld   [bc], a                                     ; $734d: $02
	sub  e                                           ; $734e: $93
	jp   $8083                                       ; $734f: $c3 $83 $80


	db   $db                                         ; $7352: $db
	nop                                              ; $7353: $00
	jp   $db80                                       ; $7354: $c3 $80 $db


	ld   a, [bc]                                     ; $7357: $0a
	sbc  c                                           ; $7358: $99
	db   $db                                         ; $7359: $db
	rst  $38                                         ; $735a: $ff
	cp   l                                           ; $735b: $bd
	ld   l, [hl]                                     ; $735c: $6e
	inc  a                                           ; $735d: $3c
	sbc  l                                           ; $735e: $9d
	rst  $28                                         ; $735f: $ef
	rst  JumpTable                                         ; $7360: $df
	nop                                              ; $7361: $00
	call z, $8080                                    ; $7362: $cc $80 $80
	add  hl, bc                                      ; $7365: $09
	nop                                              ; $7366: $00
	ld   a, [hl+]                                    ; $7367: $2a
	ret  nz                                          ; $7368: $c0

	pop  de                                          ; $7369: $d1
	ld   [bc], a                                     ; $736a: $02
	ld   a, [bc]                                     ; $736b: $0a
	ld   [bc], a                                     ; $736c: $02
	jp   nz, $09c1                                   ; $736d: $c2 $c1 $09

	add  b                                           ; $7370: $80
	ld   [$0a80], sp                                 ; $7371: $08 $80 $0a
	inc  b                                           ; $7374: $04
	sbc  d                                           ; $7375: $9a
	sbc  [hl]                                        ; $7376: $9e
	ld   a, [hl]                                     ; $7377: $7e
	halt                                             ; $7378: $76
	ld   b, $80                                      ; $7379: $06 $80
	cp   $6d                                         ; $737b: $fe $6d
	ld   a, [$14ac]                                  ; $737d: $fa $ac $14
	ld   hl, sp-$48                                  ; $7380: $f8 $b8
	inc  b                                           ; $7382: $04
	xor  l                                           ; $7383: $ad
	ld   hl, sp-$54                                  ; $7384: $f8 $ac
	rst  $38                                         ; $7386: $ff
	cp   $fd                                         ; $7387: $fe $fd
	cp   $ff                                         ; $7389: $fe $ff
	ccf                                              ; $738b: $3f
	ld   a, a                                        ; $738c: $7f
	rst  JumpTable                                         ; $738d: $df
	rra                                              ; $738e: $1f
	ld   h, a                                        ; $738f: $67
	rlca                                             ; $7390: $07
	ld   bc, $6809                                   ; $7391: $01 $09 $68
	ld   c, $ee                                      ; $7394: $0e $ee
	ld   h, a                                        ; $7396: $67
	rra                                              ; $7397: $1f
	inc  bc                                          ; $7398: $03
	ld   a, a                                        ; $7399: $7f
	ld   bc, $0191                                   ; $739a: $01 $91 $01
	rrca                                             ; $739d: $0f
	nop                                              ; $739e: $00
	add  b                                           ; $739f: $80
	nop                                              ; $73a0: $00
	ret  c                                           ; $73a1: $d8

	nop                                              ; $73a2: $00
	ld   c, e                                        ; $73a3: $4b
	nop                                              ; $73a4: $00
	ld   [hl], $ff                                   ; $73a5: $36 $ff
	cp   a                                           ; $73a7: $bf
	rst  JumpTable                                         ; $73a8: $df
	ld   a, a                                        ; $73a9: $7f
	rst  $38                                         ; $73aa: $ff
	cp   [hl]                                        ; $73ab: $be
	rst  $38                                         ; $73ac: $ff
	ld   a, l                                        ; $73ad: $7d
	db   $fc                                         ; $73ae: $fc
	pop  af                                          ; $73af: $f1
	ldh  a, [$c1]                                    ; $73b0: $f0 $c1
	call z, $310d                                    ; $73b2: $cc $0d $31
	ld   a, $ce                                      ; $73b5: $3e $ce
	pop  af                                          ; $73b7: $f1
	add  b                                           ; $73b8: $80
	cp   $00                                         ; $73b9: $fe $00
	ld   [de], a                                     ; $73bb: $12
	nop                                              ; $73bc: $00
	inc  b                                           ; $73bd: $04
	nop                                              ; $73be: $00
	xor  $00                                         ; $73bf: $ee $00
	ld   [$c000], sp                                 ; $73c1: $08 $00 $c0
	nop                                              ; $73c4: $00
	add  b                                           ; $73c5: $80
	rst  $38                                         ; $73c6: $ff
	db   $fc                                         ; $73c7: $fc
	db   $fd                                         ; $73c8: $fd
	db   $fc                                         ; $73c9: $fc
	db   $fd                                         ; $73ca: $fd
	inc  a                                           ; $73cb: $3c
	ld   a, a                                        ; $73cc: $7f
	db   $dd                                         ; $73cd: $dd
	rra                                              ; $73ce: $1f
	ld   h, a                                        ; $73cf: $67
	rlca                                             ; $73d0: $07
	nop                                              ; $73d1: $00
	add  hl, bc                                      ; $73d2: $09
	ld   l, b                                        ; $73d3: $68
	ld   c, $ee                                      ; $73d4: $0e $ee
	ld   h, a                                        ; $73d6: $67
	rra                                              ; $73d7: $1f
	inc  bc                                          ; $73d8: $03
	ld   a, a                                        ; $73d9: $7f
	ld   bc, $0191                                   ; $73da: $01 $91 $01
	rrca                                             ; $73dd: $0f
	nop                                              ; $73de: $00
	add  b                                           ; $73df: $80
	nop                                              ; $73e0: $00
	ret  c                                           ; $73e1: $d8

	nop                                              ; $73e2: $00
	ld   c, e                                        ; $73e3: $4b
	nop                                              ; $73e4: $00
	ld   l, l                                        ; $73e5: $6d
	ld   sp, $3035                                   ; $73e6: $31 $35 $30
	or   b                                           ; $73e9: $b0
	ld   c, c                                        ; $73ea: $49
	add  b                                           ; $73eb: $80
	ld   a, c                                        ; $73ec: $79
	inc  b                                           ; $73ed: $04
	ld   c, c                                        ; $73ee: $49
	ld   b, b                                        ; $73ef: $40
	ld   c, [hl]                                     ; $73f0: $4e
	ccf                                              ; $73f1: $3f
	ld   sp, $6080                                   ; $73f2: $31 $80 $60
	ld   de, $90c0                                   ; $73f5: $11 $c0 $90
	reti                                             ; $73f8: $d9


	ld   sp, hl                                      ; $73f9: $f9
	or   $e6                                         ; $73fa: $f6 $e6
	ldh  [$3f], a                                    ; $73fc: $e0 $3f
	ld   a, a                                        ; $73fe: $7f
	rst  $38                                         ; $73ff: $ff
	dec  l                                           ; $7400: $2d
	ld   d, [hl]                                     ; $7401: $56
	dec  de                                          ; $7402: $1b
	ld   e, a                                        ; $7403: $5f
	ld   h, b                                        ; $7404: $60
	srl  a                                           ; $7405: $cb $3f
	xor  $80                                         ; $7407: $ee $80
	inc  de                                          ; $7409: $13
	dec  c                                           ; $740a: $0d
	ld   [bc], a                                     ; $740b: $02
	ld   c, e                                        ; $740c: $4b
	rlca                                             ; $740d: $07
	inc  bc                                          ; $740e: $03
	add  a                                           ; $740f: $87
	add  [hl]                                        ; $7410: $86
	ld   b, $24                                      ; $7411: $06 $24
	add  l                                           ; $7413: $85
	add  c                                           ; $7414: $81
	nop                                              ; $7415: $00
	sub  e                                           ; $7416: $93
	jp   $8083                                       ; $7417: $c3 $83 $80


	db   $db                                         ; $741a: $db
	nop                                              ; $741b: $00
	jp   $db80                                       ; $741c: $c3 $80 $db


	ld   a, [bc]                                     ; $741f: $0a
	sbc  c                                           ; $7420: $99
	db   $db                                         ; $7421: $db
	rst  $38                                         ; $7422: $ff
	cp   l                                           ; $7423: $bd
	ld   l, [hl]                                     ; $7424: $6e
	inc  a                                           ; $7425: $3c
	sbc  l                                           ; $7426: $9d
	rst  $28                                         ; $7427: $ef
	rst  JumpTable                                         ; $7428: $df
	nop                                              ; $7429: $00
	call z, $8080                                    ; $742a: $cc $80 $80
	dec  b                                           ; $742d: $05
	nop                                              ; $742e: $00
	ld   a, [hl+]                                    ; $742f: $2a
	ret  nz                                          ; $7430: $c0

	ld   d, c                                        ; $7431: $51
	ldh  [c], a                                      ; $7432: $e2
	ld   l, d                                        ; $7433: $6a
	add  b                                           ; $7434: $80
	ld   [bc], a                                     ; $7435: $02
	add  b                                           ; $7436: $80
	ld   sp, hl                                      ; $7437: $f9
	add  b                                           ; $7438: $80
	nop                                              ; $7439: $00
	ld   b, $02                                      ; $743a: $06 $02
	ld   a, [bc]                                     ; $743c: $0a
	sbc  d                                           ; $743d: $9a
	sbc  [hl]                                        ; $743e: $9e
	ld   l, [hl]                                     ; $743f: $6e
	ld   h, [hl]                                     ; $7440: $66
	ld   b, $80                                      ; $7441: $06 $80
	cp   $0d                                         ; $7443: $fe $0d
	ld   a, [$14ac]                                  ; $7445: $fa $ac $14
	ld   hl, sp-$48                                  ; $7448: $f8 $b8
	inc  b                                           ; $744a: $04
	xor  l                                           ; $744b: $ad
	ld   hl, sp-$2b                                  ; $744c: $f8 $d5
	ld   sp, $3035                                   ; $744e: $31 $35 $30
	or   b                                           ; $7451: $b0
	ld   c, c                                        ; $7452: $49
	add  b                                           ; $7453: $80
	ld   a, c                                        ; $7454: $79
	inc  b                                           ; $7455: $04
	ld   c, c                                        ; $7456: $49
	ld   b, b                                        ; $7457: $40
	ld   c, a                                        ; $7458: $4f
	ccf                                              ; $7459: $3f
	rrca                                             ; $745a: $0f
	add  b                                           ; $745b: $80
	ld   a, a                                        ; $745c: $7f
	ld   de, $ceff                                   ; $745d: $11 $ff $ce
	sbc  a                                           ; $7460: $9f
	sub  c                                           ; $7461: $91
	adc  $8e                                         ; $7462: $ce $8e
	ldh  [$1f], a                                    ; $7464: $e0 $1f
	ld   a, a                                        ; $7466: $7f
	rst  $38                                         ; $7467: $ff
	dec  l                                           ; $7468: $2d
	ld   d, [hl]                                     ; $7469: $56
	dec  de                                          ; $746a: $1b
	ld   e, a                                        ; $746b: $5f
	ld   h, b                                        ; $746c: $60
	srl  a                                           ; $746d: $cb $3f
	xor  $80                                         ; $746f: $ee $80
	inc  de                                          ; $7471: $13
	ld   [$4b02], sp                                 ; $7472: $08 $02 $4b
	rlca                                             ; $7475: $07
	inc  bc                                          ; $7476: $03
	add  a                                           ; $7477: $87
	add  [hl]                                        ; $7478: $86
	ld   b, $a5                                      ; $7479: $06 $a5
	add  l                                           ; $747b: $85
	add  b                                           ; $747c: $80
	add  c                                           ; $747d: $81
	ld   [bc], a                                     ; $747e: $02
	ld   [de], a                                     ; $747f: $12
	jp   $8083                                       ; $7480: $c3 $83 $80


	db   $db                                         ; $7483: $db
	nop                                              ; $7484: $00
	ld   b, d                                        ; $7485: $42
	add  b                                           ; $7486: $80
	ld   e, d                                        ; $7487: $5a
	ld   a, [bc]                                     ; $7488: $0a
	sbc  c                                           ; $7489: $99
	db   $db                                         ; $748a: $db
	rst  $38                                         ; $748b: $ff
	cp   l                                           ; $748c: $bd
	ld   l, [hl]                                     ; $748d: $6e
	inc  a                                           ; $748e: $3c
	sbc  l                                           ; $748f: $9d
	rst  $28                                         ; $7490: $ef
	rst  JumpTable                                         ; $7491: $df
	nop                                              ; $7492: $00
	call z, $8080                                    ; $7493: $cc $80 $80
	rrca                                             ; $7496: $0f
	nop                                              ; $7497: $00
	ld   a, [hl+]                                    ; $7498: $2a
	ret  nz                                          ; $7499: $c0

	ld   d, c                                        ; $749a: $51
	ldh  [c], a                                      ; $749b: $e2
	ld   l, d                                        ; $749c: $6a
	ld   [bc], a                                     ; $749d: $02
	jp   nz, $c9f9                                   ; $749e: $c2 $f9 $c9

	db   $fc                                         ; $74a1: $fc
	db   $f4                                         ; $74a2: $f4
	cp   $76                                         ; $74a3: $fe $76
	ld   hl, sp-$78                                  ; $74a5: $f8 $88
	add  b                                           ; $74a7: $80
	ld   [hl], d                                     ; $74a8: $72
	dec  hl                                          ; $74a9: $2b
	ld   b, $fa                                      ; $74aa: $06 $fa
	cp   $fa                                         ; $74ac: $fe $fa
	xor  h                                           ; $74ae: $ac
	inc  d                                           ; $74af: $14
	ld   hl, sp-$48                                  ; $74b0: $f8 $b8
	inc  b                                           ; $74b2: $04
	xor  l                                           ; $74b3: $ad
	ld   hl, sp-$52                                  ; $74b4: $f8 $ae
	rst  $38                                         ; $74b6: $ff
	rra                                              ; $74b7: $1f
	rst  JumpTable                                         ; $74b8: $df
	rra                                              ; $74b9: $1f
	rst  JumpTable                                         ; $74ba: $df
	sbc  [hl]                                        ; $74bb: $9e
	rst  $38                                         ; $74bc: $ff
	ld   e, l                                        ; $74bd: $5d
	ld   a, h                                        ; $74be: $7c
	ld   sp, $41f0                                   ; $74bf: $31 $f0 $41
	call z, $310d                                    ; $74c2: $cc $0d $31
	ld   a, $ce                                      ; $74c5: $3e $ce
	pop  af                                          ; $74c7: $f1
	add  b                                           ; $74c8: $80
	cp   $00                                         ; $74c9: $fe $00
	ld   [de], a                                     ; $74cb: $12
	nop                                              ; $74cc: $00
	inc  b                                           ; $74cd: $04
	nop                                              ; $74ce: $00
	xor  $00                                         ; $74cf: $ee $00
	ld   [$c000], sp                                 ; $74d1: $08 $00 $c0
	nop                                              ; $74d4: $00
	add  b                                           ; $74d5: $80
	rst  $38                                         ; $74d6: $ff
	nop                                              ; $74d7: $00
	rst  $38                                         ; $74d8: $ff
	nop                                              ; $74d9: $00
	rst  $38                                         ; $74da: $ff
	nop                                              ; $74db: $00
	rst  $38                                         ; $74dc: $ff
	nop                                              ; $74dd: $00
	rst  $38                                         ; $74de: $ff
	nop                                              ; $74df: $00
	rst  $38                                         ; $74e0: $ff
	nop                                              ; $74e1: $00
	sub  a                                           ; $74e2: $97
	nop                                              ; $74e3: $00
	ld   l, $01                                      ; $74e4: $2e $01
	add  [hl]                                        ; $74e6: $86
	nop                                              ; $74e7: $00
	nop                                              ; $74e8: $00
	ld   bc, $0087                                   ; $74e9: $01 $87 $00
	ld   c, $02                                      ; $74ec: $0e $02
	ld   bc, $0304                                   ; $74ee: $01 $04 $03
	dec  bc                                          ; $74f1: $0b
	rlca                                             ; $74f2: $07
	inc  b                                           ; $74f3: $04
	rlca                                             ; $74f4: $07
	dec  d                                           ; $74f5: $15
	rrca                                             ; $74f6: $0f
	ld   c, $0b                                      ; $74f7: $0e $0b
	ld   [hl+], a                                    ; $74f9: $22
	dec  de                                          ; $74fa: $1b
	inc  l                                           ; $74fb: $2c
	add  a                                           ; $74fc: $87
	nop                                              ; $74fd: $00
	nop                                              ; $74fe: $00
	ld   a, a                                        ; $74ff: $7f
	add  b                                           ; $7500: $80
	nop                                              ; $7501: $00
	add  b                                           ; $7502: $80
	rra                                              ; $7503: $1f
	ld   bc, $af2f                                   ; $7504: $01 $2f $af
	add  b                                           ; $7507: $80
	ld   [hl], b                                     ; $7508: $70
	dec  c                                           ; $7509: $0d
	ld   a, a                                        ; $750a: $7f
	ld   l, a                                        ; $750b: $6f
	ld   l, [hl]                                     ; $750c: $6e
	ld   c, [hl]                                     ; $750d: $4e
	ld   c, h                                        ; $750e: $4c
	ld   e, a                                        ; $750f: $5f
	db   $d3                                         ; $7510: $d3
	rst  $38                                         ; $7511: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7512: $cf
	rst  $38                                         ; $7513: $ff
	cp   a                                           ; $7514: $bf
	rst  $38                                         ; $7515: $ff
	ld   a, a                                        ; $7516: $7f
	rst  $38                                         ; $7517: $ff
	adc  c                                           ; $7518: $89
	nop                                              ; $7519: $00
	dec  bc                                          ; $751a: $0b
	ldh  [rP1], a                                    ; $751b: $e0 $00
	db   $10                                         ; $751d: $10
	ldh  [$e8], a                                    ; $751e: $e0 $e8
	ldh  a, [$f4]                                    ; $7520: $f0 $f4
	nop                                              ; $7522: $00
	cp   $fc                                         ; $7523: $fe $fc
	rrca                                             ; $7525: $0f
	ld   c, $80                                      ; $7526: $0e $80
	di                                               ; $7528: $f3
	add  b                                           ; $7529: $80
	db   $fd                                         ; $752a: $fd
	add  b                                           ; $752b: $80
	cp   $8a                                         ; $752c: $fe $8a
	rst  $38                                         ; $752e: $ff
	add  b                                           ; $752f: $80
	db   $fd                                         ; $7530: $fd
	dec  b                                           ; $7531: $05
	ei                                               ; $7532: $fb
	db   $db                                         ; $7533: $db
	db   $d3                                         ; $7534: $d3
	inc  sp                                          ; $7535: $33
	ld   h, $66                                      ; $7536: $26 $66
	add  b                                           ; $7538: $80
	ld   b, [hl]                                     ; $7539: $46
	ld   [bc], a                                     ; $753a: $02
	ld   b, $a6                                      ; $753b: $06 $a6
	ld   h, $81                                      ; $753d: $26 $81
	ld   d, [hl]                                     ; $753f: $56
	ld   [bc], a                                     ; $7540: $02
	ld   d, d                                        ; $7541: $52
	ld   e, d                                        ; $7542: $5a
	ld   c, d                                        ; $7543: $4a
	add  c                                           ; $7544: $81
	xor  d                                           ; $7545: $aa
	dec  b                                           ; $7546: $05
	ld   b, a                                        ; $7547: $47
	nop                                              ; $7548: $00
	ccf                                              ; $7549: $3f
	nop                                              ; $754a: $00
	rst  $38                                         ; $754b: $ff
	ccf                                              ; $754c: $3f
	add  b                                           ; $754d: $80
	adc  a                                           ; $754e: $8f
	add  b                                           ; $754f: $80
	rlca                                             ; $7550: $07
	add  b                                           ; $7551: $80
	ccf                                              ; $7552: $3f
	adc  e                                           ; $7553: $8b
	rst  $38                                         ; $7554: $ff
	add  d                                           ; $7555: $82
	rst  JumpTable                                         ; $7556: $df
	add  b                                           ; $7557: $80
	db   $ed                                         ; $7558: $ed
	add  b                                           ; $7559: $80
	and  $87                                         ; $755a: $e6 $87
	nop                                              ; $755c: $00
	inc  de                                          ; $755d: $13
	ld   bc, $0e00                                   ; $755e: $01 $00 $0e
	ld   bc, $0f31                                   ; $7561: $01 $31 $0f
	ld   c, a                                        ; $7564: $4f
	ccf                                              ; $7565: $3f
	cp   a                                           ; $7566: $bf
	ld   a, a                                        ; $7567: $7f
	rst  $38                                         ; $7568: $ff
	sbc  a                                           ; $7569: $9f
	rst  $38                                         ; $756a: $ff
	rst  $20                                         ; $756b: $e7
	rst  $38                                         ; $756c: $ff
	ei                                               ; $756d: $fb
	rst  $38                                         ; $756e: $ff
	db   $fd                                         ; $756f: $fd
	rst  $38                                         ; $7570: $ff
	cp   $81                                         ; $7571: $fe $81
	rst  $38                                         ; $7573: $ff
	add  a                                           ; $7574: $87
	nop                                              ; $7575: $00
	nop                                              ; $7576: $00
	ld   hl, sp-$80                                  ; $7577: $f8 $80
	nop                                              ; $7579: $00
	inc  bc                                          ; $757a: $03
	ldh  a, [rSVBK]                                  ; $757b: $f0 $70
	ldh  a, [$30]                                    ; $757d: $f0 $30
	add  c                                           ; $757f: $81
	ldh  a, [rDIV]                                   ; $7580: $f0 $04
	ld   d, h                                        ; $7582: $54
	ld   hl, sp+$28                                  ; $7583: $f8 $28
	ld   hl, sp-$26                                  ; $7585: $f8 $da
	add  c                                           ; $7587: $81
	db   $fc                                         ; $7588: $fc
	inc  bc                                          ; $7589: $03
	call z, $9efc                                    ; $758a: $cc $fc $9e
	ld   a, b                                        ; $758d: $78
	add  b                                           ; $758e: $80
	cp   b                                           ; $758f: $b8
	ld   [$d0fa], sp                                 ; $7590: $08 $fa $d0
	pop  de                                          ; $7593: $d1
	sub  $f6                                         ; $7594: $d6 $f6
	rst  $20                                         ; $7596: $e7
	ld   h, a                                        ; $7597: $67
	ld   l, a                                        ; $7598: $6f
	cp   a                                           ; $7599: $bf
	add  c                                           ; $759a: $81
	or   a                                           ; $759b: $b7
	nop                                              ; $759c: $00
	rst  JumpTable                                         ; $759d: $df
	add  c                                           ; $759e: $81
	db   $db                                         ; $759f: $db
	nop                                              ; $75a0: $00
	db   $eb                                         ; $75a1: $eb
	add  b                                           ; $75a2: $80
	ld   l, b                                        ; $75a3: $68
	nop                                              ; $75a4: $00
	db   $eb                                         ; $75a5: $eb
	add  b                                           ; $75a6: $80
	ld   l, e                                        ; $75a7: $6b
	ld   bc, $7577                                   ; $75a8: $01 $77 $75
	add  d                                           ; $75ab: $82
	or   l                                           ; $75ac: $b5
	add  b                                           ; $75ad: $80
	push bc                                          ; $75ae: $c5
	nop                                              ; $75af: $00
	cp   $81                                         ; $75b0: $fe $81
	nop                                              ; $75b2: $00
	db   $10                                         ; $75b3: $10
	add  b                                           ; $75b4: $80
	nop                                              ; $75b5: $00
	ldh  [$80], a                                    ; $75b6: $e0 $80
	ld   a, b                                        ; $75b8: $78
	ldh  [$9c], a                                    ; $75b9: $e0 $9c
	ld   hl, sp-$1a                                  ; $75bb: $f8 $e6
	db   $fc                                         ; $75bd: $fc
	ld   hl, sp-$04                                  ; $75be: $f8 $fc
	cp   $f8                                         ; $75c0: $fe $f8
	db   $fc                                         ; $75c2: $fc
	ldh  a, [$f8]                                    ; $75c3: $f0 $f8
	add  b                                           ; $75c5: $80
	jr   nz, @+$0e                                   ; $75c6: $20 $0c

	ret  nz                                          ; $75c8: $c0

	call z, $f2f0                                    ; $75c9: $cc $f0 $f2
	db   $fc                                         ; $75cc: $fc
	dec  e                                           ; $75cd: $1d
	cp   $ee                                         ; $75ce: $fe $ee
	db   $fc                                         ; $75d0: $fc
	ret  nz                                          ; $75d1: $c0

	call $8b89                                       ; $75d2: $cd $89 $8b
	add  b                                           ; $75d5: $80
	dec  bc                                          ; $75d6: $0b
	ld   b, $13                                      ; $75d7: $06 $13
	rla                                              ; $75d9: $17
	rst  $10                                         ; $75da: $d7
	rla                                              ; $75db: $17
	and  a                                           ; $75dc: $a7
	rlca                                             ; $75dd: $07
	rst  ToBoot                                         ; $75de: $c7
	add  b                                           ; $75df: $80
	inc  bc                                          ; $75e0: $03
	add  b                                           ; $75e1: $80
	ld   bc, $0000                                   ; $75e2: $01 $00 $00
	add  b                                           ; $75e5: $80
	inc  b                                           ; $75e6: $04
	ld   b, $e4                                      ; $75e7: $06 $e4
	inc  b                                           ; $75e9: $04
	add  [hl]                                        ; $75ea: $86
	ld   b, $42                                      ; $75eb: $06 $42
	ld   [bc], a                                     ; $75ed: $02
	adc  e                                           ; $75ee: $8b
	add  c                                           ; $75ef: $81
	dec  bc                                          ; $75f0: $0b
	add  b                                           ; $75f1: $80
	ld   c, e                                        ; $75f2: $4b
	nop                                              ; $75f3: $00
	ld   a, b                                        ; $75f4: $78
	add  c                                           ; $75f5: $81

jr_09a_75f6:
	ld   a, [$b300]                                  ; $75f6: $fa $00 $b3
	add  c                                           ; $75f9: $81
	db   $f4                                         ; $75fa: $f4
	ld   [bc], a                                     ; $75fb: $02
	add  $e8                                         ; $75fc: $c6 $e8
	db   $ec                                         ; $75fe: $ec
	add  b                                           ; $75ff: $80
	ldh  [$81], a                                    ; $7600: $e0 $81
	ldh  a, [rSC]                                    ; $7602: $f0 $02
	ld   hl, sp-$40                                  ; $7604: $f8 $c0
	ldh  a, [$80]                                    ; $7606: $f0 $80
	add  b                                           ; $7608: $80
	ld   bc, $4000                                   ; $7609: $01 $00 $40
	add  e                                           ; $760c: $83
	nop                                              ; $760d: $00
	nop                                              ; $760e: $00
	ld   b, b                                        ; $760f: $40
	add  c                                           ; $7610: $81
	nop                                              ; $7611: $00
	inc  b                                           ; $7612: $04
	cp   c                                           ; $7613: $b9
	ld   h, d                                        ; $7614: $62
	ldh  [c], a                                      ; $7615: $e2
	jp   nz, $80ca                                   ; $7616: $c2 $ca $80

	xor  d                                           ; $7619: $aa
	add  b                                           ; $761a: $80
	ld   h, d                                        ; $761b: $62
	add  d                                           ; $761c: $82
	ldh  [c], a                                      ; $761d: $e2
	dec  b                                           ; $761e: $05
	add  $c4                                         ; $761f: $c6 $c4
	inc  b                                           ; $7621: $04
	call nz, $1504                                   ; $7622: $c4 $04 $15
	add  c                                           ; $7625: $81
	inc  b                                           ; $7626: $04
	ld   c, $05                                      ; $7627: $0e $05
	inc  c                                           ; $7629: $0c
	dec  c                                           ; $762a: $0d
	inc  c                                           ; $762b: $0c
	ld   c, b                                        ; $762c: $48
	ld   [$18c8], sp                                 ; $762d: $08 $c8 $18
	sbc  b                                           ; $7630: $98
	jr   @+$80                                       ; $7631: $18 $7e

	add  b                                           ; $7633: $80
	ldh  [$c0], a                                    ; $7634: $e0 $c0

jr_09a_7636:
	ld   b, b                                        ; $7636: $40
	add  c                                           ; $7637: $81
	ret  nz                                          ; $7638: $c0

jr_09a_7639:
	nop                                              ; $7639: $00
	or   b                                           ; $763a: $b0
	add  b                                           ; $763b: $80
	ldh  [$81], a                                    ; $763c: $e0 $81
	ld   h, b                                        ; $763e: $60
	dec  bc                                          ; $763f: $0b
	ld   e, b                                        ; $7640: $58
	ld   [hl], b                                     ; $7641: $70
	ldh  a, [$b0]                                    ; $7642: $f0 $b0
	jr   nc, jr_09a_75f6                             ; $7644: $30 $b0

	xor  h                                           ; $7646: $ac
	cp   b                                           ; $7647: $b8
	ld   hl, sp-$28                                  ; $7648: $f8 $d8
	ld   b, $dc                                      ; $764a: $06 $dc
	add  b                                           ; $764c: $80
	db   $ec                                         ; $764d: $ec
	ld   b, $87                                      ; $764e: $06 $87
	xor  $d6                                         ; $7650: $ee $d6
	or   $7f                                         ; $7652: $f6 $7f
	nop                                              ; $7654: $00
	ret  nz                                          ; $7655: $c0

	add  c                                           ; $7656: $81
	add  b                                           ; $7657: $80
	inc  bc                                          ; $7658: $03
	ldh  [$c0], a                                    ; $7659: $e0 $c0
	ld   [hl], b                                     ; $765b: $70
	ld   h, b                                        ; $765c: $60
	add  b                                           ; $765d: $80
	and  b                                           ; $765e: $a0
	ld   bc, $b0b8                                   ; $765f: $01 $b8 $b0
	add  d                                           ; $7662: $82
	ret  nc                                          ; $7663: $d0

	nop                                              ; $7664: $00
	ld   l, h                                        ; $7665: $6c
	add  c                                           ; $7666: $81
	ld   l, b                                        ; $7667: $68
	add  b                                           ; $7668: $80
	jr   z, jr_09a_766b                              ; $7669: $28 $00

jr_09a_766b:
	ld   [hl], $85                                   ; $766b: $36 $85
	inc  [hl]                                        ; $766d: $34
	rlca                                             ; $766e: $07
	pop  bc                                          ; $766f: $c1
	rla                                              ; $7670: $17
	inc  b                                           ; $7671: $04
	rla                                              ; $7672: $17
	ld   l, [hl]                                     ; $7673: $6e
	ld   l, $22                                      ; $7674: $2e $22
	ld   l, $80                                      ; $7676: $2e $80
	inc  c                                           ; $7678: $0c
	ld   bc, $0c04                                   ; $7679: $01 $04 $0c
	add  d                                           ; $767c: $82
	inc  b                                           ; $767d: $04
	ld   bc, $0424                                   ; $767e: $01 $24 $04
	add  b                                           ; $7681: $80
	nop                                              ; $7682: $00
	nop                                              ; $7683: $00
	ld   [hl], b                                     ; $7684: $70
	add  c                                           ; $7685: $81
	nop                                              ; $7686: $00
	inc  b                                           ; $7687: $04
	ld   [hl+], a                                    ; $7688: $22
	nop                                              ; $7689: $00
	add  hl, bc                                      ; $768a: $09
	nop                                              ; $768b: $00
	inc  b                                           ; $768c: $04
	add  c                                           ; $768d: $81
	nop                                              ; $768e: $00
	nop                                              ; $768f: $00
	ld   b, l                                        ; $7690: $45
	add  c                                           ; $7691: $81
	cp   d                                           ; $7692: $ba
	add  b                                           ; $7693: $80
	ret  nc                                          ; $7694: $d0

	inc  b                                           ; $7695: $04
	ld   e, b                                        ; $7696: $58
	ld   e, e                                        ; $7697: $5b
	inc  hl                                          ; $7698: $23
	daa                                              ; $7699: $27
	rlca                                             ; $769a: $07
	add  b                                           ; $769b: $80
	rrca                                             ; $769c: $0f
	add  l                                           ; $769d: $85
	ld   c, a                                        ; $769e: $4f
	inc  b                                           ; $769f: $04
	ld   e, a                                        ; $76a0: $5f
	ld   d, a                                        ; $76a1: $57
	rst  $10                                         ; $76a2: $d7
	rla                                              ; $76a3: $17
	ld   d, a                                        ; $76a4: $57
	add  e                                           ; $76a5: $83
	rla                                              ; $76a6: $17
	nop                                              ; $76a7: $00
	rra                                              ; $76a8: $1f
	add  e                                           ; $76a9: $83
	dec  de                                          ; $76aa: $1b
	nop                                              ; $76ab: $00
	dec  bc                                          ; $76ac: $0b
	add  b                                           ; $76ad: $80
	add  hl, de                                      ; $76ae: $19
	ld   [bc], a                                     ; $76af: $02
	jr   jr_09a_76cb                                 ; $76b0: $18 $19

	jr   jr_09a_7636                                 ; $76b2: $18 $82

	inc  e                                           ; $76b4: $1c
	nop                                              ; $76b5: $00
	jr   jr_09a_7639                                 ; $76b6: $18 $81

	inc  e                                           ; $76b8: $1c
	nop                                              ; $76b9: $00
	inc  d                                           ; $76ba: $14
	add  c                                           ; $76bb: $81
	inc  e                                           ; $76bc: $1c
	ld   b, $18                                      ; $76bd: $06 $18
	inc  e                                           ; $76bf: $1c
	dec  e                                           ; $76c0: $1d
	inc  e                                           ; $76c1: $1c
	sbc  h                                           ; $76c2: $9c
	dec  e                                           ; $76c3: $1d
	ld   d, l                                        ; $76c4: $55
	add  b                                           ; $76c5: $80
	sbc  l                                           ; $76c6: $9d
	ld   bc, $d1dd                                   ; $76c7: $01 $dd $d1
	add  b                                           ; $76ca: $80

jr_09a_76cb:
	rst  $38                                         ; $76cb: $ff
	add  b                                           ; $76cc: $80
	ei                                               ; $76cd: $fb
	add  d                                           ; $76ce: $82
	rst  $38                                         ; $76cf: $ff
	rrca                                             ; $76d0: $0f
	ccf                                              ; $76d1: $3f
	rst  $38                                         ; $76d2: $ff
	rra                                              ; $76d3: $1f
	ccf                                              ; $76d4: $3f
	rlca                                             ; $76d5: $07
	rra                                              ; $76d6: $1f
	ld   bc, $0005                                   ; $76d7: $01 $05 $00
	inc  b                                           ; $76da: $04
	ld   bc, $0409                                   ; $76db: $01 $09 $04
	ld   [hl], h                                     ; $76de: $74
	rlca                                             ; $76df: $07
	add  a                                           ; $76e0: $87
	add  b                                           ; $76e1: $80
	ld   [hl], a                                     ; $76e2: $77
	add  b                                           ; $76e3: $80
	or   $80                                         ; $76e4: $f6 $80
	jp   $3a0b                                       ; $76e6: $c3 $0b $3a


	and  $1c                                         ; $76e9: $e6 $1c
	sbc  l                                           ; $76eb: $9d
	inc  e                                           ; $76ec: $1c
	ld   e, h                                        ; $76ed: $5c
	inc  e                                           ; $76ee: $1c
	ld   d, h                                        ; $76ef: $54
	inc  d                                           ; $76f0: $14
	sub  l                                           ; $76f1: $95
	inc  d                                           ; $76f2: $14
	ld   [hl], l                                     ; $76f3: $75
	add  e                                           ; $76f4: $83
	inc  [hl]                                        ; $76f5: $34
	nop                                              ; $76f6: $00
	ld   a, [hl+]                                    ; $76f7: $2a
	add  c                                           ; $76f8: $81
	jr   z, jr_09a_76fb                              ; $76f9: $28 $00

jr_09a_76fb:
	or   l                                           ; $76fb: $b5
	add  c                                           ; $76fc: $81
	jr   nc, jr_09a_76ff                             ; $76fd: $30 $00

jr_09a_76ff:
	or   e                                           ; $76ff: $b3
	add  c                                           ; $7700: $81
	jr   nc, jr_09a_7707                             ; $7701: $30 $04

	or   b                                           ; $7703: $b0
	jr   nc, @+$52                                   ; $7704: $30 $50

	db   $10                                         ; $7706: $10

jr_09a_7707:
	cp   d                                           ; $7707: $ba
	sub  e                                           ; $7708: $93
	nop                                              ; $7709: $00
	inc  b                                           ; $770a: $04
	jr   c, jr_09a_770d                              ; $770b: $38 $00

jr_09a_770d:
	add  $38                                         ; $770d: $c6 $38
	add  hl, sp                                      ; $770f: $39
	add  b                                           ; $7710: $80
	cp   $80                                         ; $7711: $fe $80
	db   $ed                                         ; $7713: $ed
	ld   bc, $0af5                                   ; $7714: $01 $f5 $0a
	add  a                                           ; $7717: $87
	nop                                              ; $7718: $00
	ld   [$0003], sp                                 ; $7719: $08 $03 $00
	inc  c                                           ; $771c: $0c
	ld   bc, $0b31                                   ; $771d: $01 $31 $0b
	ld   c, e                                        ; $7720: $4b
	dec  hl                                          ; $7721: $2b
	xor  e                                           ; $7722: $ab
	add  d                                           ; $7723: $82
	ld   d, a                                        ; $7724: $57
	add  b                                           ; $7725: $80
	ld   c, $82                                      ; $7726: $0e $82
	ld   a, a                                        ; $7728: $7f
	add  b                                           ; $7729: $80
	or   [hl]                                        ; $772a: $b6
	ld   bc, $3fc0                                   ; $772b: $01 $c0 $3f
	add  c                                           ; $772e: $81
	nop                                              ; $772f: $00
	ld   [$0001], sp                                 ; $7730: $08 $01 $00
	ld   [bc], a                                     ; $7733: $02
	ld   bc, $031d                                   ; $7734: $01 $1d $03
	inc  hl                                          ; $7737: $23
	dec  de                                          ; $7738: $1b
	ld   e, e                                        ; $7739: $5b
	add  b                                           ; $773a: $80
	dec  sp                                          ; $773b: $3b
	add  b                                           ; $773c: $80
	ld   a, [bc]                                     ; $773d: $0a
	ld   bc, $7333                                   ; $773e: $01 $33 $73
	add  b                                           ; $7741: $80
	inc  e                                           ; $7742: $1c
	inc  bc                                          ; $7743: $03
	rra                                              ; $7744: $1f
	ccf                                              ; $7745: $3f
	rrca                                             ; $7746: $0f
	cpl                                              ; $7747: $2f
	add  b                                           ; $7748: $80
	rrca                                             ; $7749: $0f
	ld   bc, $5717                                   ; $774a: $01 $17 $57
	add  b                                           ; $774d: $80
	nop                                              ; $774e: $00
	ld   bc, $403f                                   ; $774f: $01 $3f $40
	add  c                                           ; $7752: $81
	nop                                              ; $7753: $00
	rra                                              ; $7754: $1f
	ld   bc, $0200                                   ; $7755: $01 $00 $02
	ld   bc, $021c                                   ; $7758: $01 $1c $02
	ld   a, [hl-]                                    ; $775b: $3a
	ld   [bc], a                                     ; $775c: $02
	ld   h, d                                        ; $775d: $62
	ld   [bc], a                                     ; $775e: $02
	inc  sp                                          ; $775f: $33
	ld   [bc], a                                     ; $7760: $02
	ld   a, [hl-]                                    ; $7761: $3a
	inc  bc                                          ; $7762: $03
	ld   l, a                                        ; $7763: $6f
	nop                                              ; $7764: $00
	inc  bc                                          ; $7765: $03
	nop                                              ; $7766: $00
	jr   nc, jr_09a_7769                             ; $7767: $30 $00

jr_09a_7769:
	jr   nz, jr_09a_776b                             ; $7769: $20 $00

jr_09a_776b:
	jr   @+$12                                       ; $776b: $18 $10

	ld   b, a                                        ; $776d: $47
	nop                                              ; $776e: $00
	ccf                                              ; $776f: $3f
	jr   c, jr_09a_77bc                              ; $7770: $38 $4a

	call z, $888a                                    ; $7772: $cc $8a $88
	add  b                                           ; $7775: $80
	ld   [$140b], sp                                 ; $7776: $08 $0b $14
	db   $10                                         ; $7779: $10
	ld   d, b                                        ; $777a: $50
	sub  b                                           ; $777b: $90
	ldh  [rLCDC], a                                  ; $777c: $e0 $40
	ld   b, h                                        ; $777e: $44
	add  b                                           ; $777f: $80
	add  d                                           ; $7780: $82
	add  b                                           ; $7781: $80
	and  c                                           ; $7782: $a1
	and  b                                           ; $7783: $a0
	add  b                                           ; $7784: $80
	and  h                                           ; $7785: $a4
	ld   b, $e4                                      ; $7786: $06 $e4
	inc  b                                           ; $7788: $04
	add  $46                                         ; $7789: $c6 $46
	jp   nz, $8b82                                   ; $778b: $c2 $82 $8b

	add  c                                           ; $778e: $81
	dec  bc                                          ; $778f: $0b
	add  b                                           ; $7790: $80
	ld   c, e                                        ; $7791: $4b
	nop                                              ; $7792: $00
	rst  $38                                         ; $7793: $ff
	add  e                                           ; $7794: $83
	nop                                              ; $7795: $00
	inc  de                                          ; $7796: $13
	add  b                                           ; $7797: $80
	nop                                              ; $7798: $00
	ldh  [rP1], a                                    ; $7799: $e0 $00
	ld   a, b                                        ; $779b: $78
	ld   [$021e], sp                                 ; $779c: $08 $1e $02
	rrca                                             ; $779f: $0f
	nop                                              ; $77a0: $00
	ld   [bc], a                                     ; $77a1: $02
	nop                                              ; $77a2: $00
	ld   [bc], a                                     ; $77a3: $02
	nop                                              ; $77a4: $00
	ld   b, $00                                      ; $77a5: $06 $00
	add  hl, sp                                      ; $77a7: $39
	nop                                              ; $77a8: $00
	ld   hl, sp+$38                                  ; $77a9: $f8 $38
	add  b                                           ; $77ab: $80
	ld   hl, sp+$04                                  ; $77ac: $f8 $04
	ldh  [c], a                                      ; $77ae: $e2
	ldh  [$9c], a                                    ; $77af: $e0 $9c
	add  b                                           ; $77b1: $80
	add  $80                                         ; $77b2: $c6 $80
	ld   bc, $0380                                   ; $77b4: $01 $80 $03
	add  b                                           ; $77b7: $80
	ld   b, e                                        ; $77b8: $43
	ld   bc, $a0c0                                   ; $77b9: $01 $c0 $a0

jr_09a_77bc:
	add  a                                           ; $77bc: $87
	nop                                              ; $77bd: $00
	ld   c, $01                                      ; $77be: $0e $01
	nop                                              ; $77c0: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $77c1: $cf
	nop                                              ; $77c2: $00
	ld   b, $00                                      ; $77c3: $06 $00
	sub  l                                           ; $77c5: $95

jr_09a_77c6:
	nop                                              ; $77c6: $00
	dec  bc                                          ; $77c7: $0b
	ld   bc, $0337                                   ; $77c8: $01 $37 $03
	rrca                                             ; $77cb: $0f
	ld   b, $29                                      ; $77cc: $06 $29
	add  b                                           ; $77ce: $80
	ldh  a, [rP1]                                    ; $77cf: $f0 $00
	ld   hl, sp-$7f                                  ; $77d1: $f8 $81
	db   $fc                                         ; $77d3: $fc
	ld   bc, $1e1c                                   ; $77d4: $01 $1c $1e
	add  b                                           ; $77d7: $80
	ld   b, $0d                                      ; $77d8: $06 $0d
	nop                                              ; $77da: $00
	ld   e, $00                                      ; $77db: $1e $00
	ld   a, a                                        ; $77dd: $7f
	nop                                              ; $77de: $00
	rst  $28                                         ; $77df: $ef
	nop                                              ; $77e0: $00
	cp   a                                           ; $77e1: $bf
	nop                                              ; $77e2: $00
	ld   [hl], b                                     ; $77e3: $70
	jr   nz, jr_09a_77c6                             ; $77e4: $20 $e0

	ld   b, b                                        ; $77e6: $40
	ret  nz                                          ; $77e7: $c0

	add  b                                           ; $77e8: $80
	adc  a                                           ; $77e9: $8f
	add  b                                           ; $77ea: $80
	rra                                              ; $77eb: $1f
	add  b                                           ; $77ec: $80
	ccf                                              ; $77ed: $3f
	dec  c                                           ; $77ee: $0d
	ld   a, a                                        ; $77ef: $7f
	scf                                              ; $77f0: $37
	nop                                              ; $77f1: $00
	inc  c                                           ; $77f2: $0c
	nop                                              ; $77f3: $00
	ld   h, b                                        ; $77f4: $60
	nop                                              ; $77f5: $00
	add  [hl]                                        ; $77f6: $86
	nop                                              ; $77f7: $00
	stop                                             ; $77f8: $10 $00
	jr   nz, jr_09a_77fc                             ; $77fa: $20 $00

jr_09a_77fc:
	ld   c, c                                        ; $77fc: $49
	add  c                                           ; $77fd: $81
	nop                                              ; $77fe: $00
	ld   [$0002], sp                                 ; $77ff: $08 $02 $00
	add  h                                           ; $7802: $84
	add  b                                           ; $7803: $80
	ldh  a, [rLCDC]                                  ; $7804: $f0 $40
	ld   b, c                                        ; $7806: $41
	ld   b, b                                        ; $7807: $40
	ld   [hl], d                                     ; $7808: $72
	add  l                                           ; $7809: $85
	ldh  [rP1], a                                    ; $780a: $e0 $00
	cp   $fe                                         ; $780c: $fe $fe
	nop                                              ; $780e: $00
	add  c                                           ; $780f: $81
	rst  $38                                         ; $7810: $ff
	inc  bc                                          ; $7811: $03
	rst  $30                                         ; $7812: $f7
	or   a                                           ; $7813: $b7
	xor  a                                           ; $7814: $af
	ld   l, a                                        ; $7815: $6f
	add  b                                           ; $7816: $80
	ld   e, l                                        ; $7817: $5d
	rlca                                             ; $7818: $07
	inc  sp                                          ; $7819: $33
	sub  d                                           ; $781a: $92
	add  [hl]                                        ; $781b: $86
	add  l                                           ; $781c: $85
	ld   c, l                                        ; $781d: $4d
	add  hl, hl                                      ; $781e: $29
	cp   c                                           ; $781f: $b9
	rst  $38                                         ; $7820: $ff
	add  b                                           ; $7821: $80
	ei                                               ; $7822: $fb
	add  b                                           ; $7823: $80
	db   $fd                                         ; $7824: $fd
	add  b                                           ; $7825: $80
	cp   $81                                         ; $7826: $fe $81
	rst  $38                                         ; $7828: $ff
	add  b                                           ; $7829: $80
	cp   e                                           ; $782a: $bb
	add  b                                           ; $782b: $80
	call $e003                                       ; $782c: $cd $03 $e0
	ld   [hl], b                                     ; $782f: $70
	nop                                              ; $7830: $00
	and  b                                           ; $7831: $a0
	add  b                                           ; $7832: $80
	ld   [bc], a                                     ; $7833: $02
	ld   bc, $1646                                   ; $7834: $01 $46 $16
	add  b                                           ; $7837: $80
	inc  b                                           ; $7838: $04
	nop                                              ; $7839: $00
	adc  l                                           ; $783a: $8d
	add  c                                           ; $783b: $81
	inc  c                                           ; $783c: $0c
	nop                                              ; $783d: $00
	ld   e, $80                                      ; $783e: $1e $80
	sbc  [hl]                                        ; $7840: $9e
	rlca                                             ; $7841: $07
	rst  JumpTable                                         ; $7842: $df
	ld   d, [hl]                                     ; $7843: $56
	ld   b, [hl]                                     ; $7844: $46
	adc  e                                           ; $7845: $8b
	and  d                                           ; $7846: $a2
	call nz, $f3d1                                   ; $7847: $c4 $d1 $f3
	add  b                                           ; $784a: $80
	sub  e                                           ; $784b: $93
	inc  bc                                          ; $784c: $03
	ret                                              ; $784d: $c9


	ld   c, c                                        ; $784e: $49
	ld   l, c                                        ; $784f: $69
	jp   hl                                          ; $7850: $e9


	add  b                                           ; $7851: $80
	push hl                                          ; $7852: $e5
	add  h                                           ; $7853: $84
	ld   d, l                                        ; $7854: $55
	add  b                                           ; $7855: $80
	ld   e, [hl]                                     ; $7856: $5e
	add  b                                           ; $7857: $80
	sbc  $83                                         ; $7858: $de $83
	xor  a                                           ; $785a: $af
	inc  de                                          ; $785b: $13
	xor  [hl]                                        ; $785c: $ae
	ld   [hl], c                                     ; $785d: $71
	ld   [$00bf], sp                                 ; $785e: $08 $bf $00
	ld   hl, sp+$03                                  ; $7861: $f8 $03
	ret  nz                                          ; $7863: $c0

	inc  e                                           ; $7864: $1c
	inc  bc                                          ; $7865: $03
	db   $e3                                         ; $7866: $e3
	rra                                              ; $7867: $1f
	ld   bc, $03e1                                   ; $7868: $01 $e1 $03
	adc  h                                           ; $786b: $8c
	nop                                              ; $786c: $00
	cp   h                                           ; $786d: $bc
	nop                                              ; $786e: $00
	ld   de, $4180                                   ; $786f: $11 $80 $41
	nop                                              ; $7872: $00
	pop  bc                                          ; $7873: $c1
	add  b                                           ; $7874: $80
	ret  nz                                          ; $7875: $c0

	inc  b                                           ; $7876: $04
	pop  bc                                          ; $7877: $c1
	ret  nz                                          ; $7878: $c0

	add  h                                           ; $7879: $84
	add  b                                           ; $787a: $80
	ld   bc, $4180                                   ; $787b: $01 $80 $41
	inc  b                                           ; $787e: $04
	pop  bc                                          ; $787f: $c1
	xor  $36                                         ; $7880: $ee $36
	ld   d, [hl]                                     ; $7882: $56
	ld   d, l                                        ; $7883: $55
	add  b                                           ; $7884: $80
	ld   b, l                                        ; $7885: $45
	ld   b, $09                                      ; $7886: $06 $09
	ld   a, [bc]                                     ; $7888: $0a
	jp   nz, wIsDoubleSpeed                                   ; $7889: $c2 $02 $c2

	di                                               ; $788c: $f3
	pop  af                                          ; $788d: $f1
	add  c                                           ; $788e: $81
	ld   sp, hl                                      ; $788f: $f9
	ld   [de], a                                     ; $7890: $12
	add  b                                           ; $7891: $80
	nop                                              ; $7892: $00
	call z, Call_09a_5b21                            ; $7893: $cc $21 $5b
	nop                                              ; $7896: $00
	ld   l, $86                                      ; $7897: $2e $86
	ccf                                              ; $7899: $3f
	ld   b, b                                        ; $789a: $40
	ld   [hl+], a                                    ; $789b: $22
	nop                                              ; $789c: $00
	db   $fc                                         ; $789d: $fc
	db   $10                                         ; $789e: $10
	jr   jr_09a_78a2                                 ; $789f: $18 $01

	ld   [de], a                                     ; $78a1: $12

jr_09a_78a2:
	nop                                              ; $78a2: $00
	pop  bc                                          ; $78a3: $c1

jr_09a_78a4:
	add  b                                           ; $78a4: $80
	ld   b, b                                        ; $78a5: $40
	dec  b                                           ; $78a6: $05
	ld   bc, $0149                           ; $78a7: $01 $49 $01
	add  b                                           ; $78aa: $80
	nop                                              ; $78ab: $00
	ld   h, c                                        ; $78ac: $61
	add  b                                           ; $78ad: $80

jr_09a_78ae:
	nop                                              ; $78ae: $00
	add  c                                           ; $78af: $81
	add  b                                           ; $78b0: $80
	dec  c                                           ; $78b1: $0d
	call nz, $2c30                                   ; $78b2: $c4 $30 $2c
	db   $ec                                         ; $78b5: $ec
	sbc  d                                           ; $78b6: $9a
	adc  b                                           ; $78b7: $88
	ld   h, h                                        ; $78b8: $64
	db   $10                                         ; $78b9: $10
	adc  c                                           ; $78ba: $89
	jr   nz, jr_09a_78cd                             ; $78bb: $20 $10

	ld   b, b                                        ; $78bd: $40
	inc  hl                                          ; $78be: $23
	add  c                                           ; $78bf: $81
	add  b                                           ; $78c0: $80
	add  b                                           ; $78c1: $80
	ld   de, $0db0                                   ; $78c2: $11 $b0 $0d
	ld   sp, $c233                                   ; $78c5: $31 $33 $c2
	ld   b, [hl]                                     ; $78c8: $46
	ld   h, h                                        ; $78c9: $64
	inc  c                                           ; $78ca: $0c
	xor  c                                           ; $78cb: $a9
	sbc  c                                           ; $78cc: $99

jr_09a_78cd:
	db   $d3                                         ; $78cd: $d3
	inc  sp                                          ; $78ce: $33
	xor  a                                           ; $78cf: $af
	ld   l, a                                        ; $78d0: $6f
	ld   e, a                                        ; $78d1: $5f
	rst  JumpTable                                         ; $78d2: $df
	and  a                                           ; $78d3: $a7
	sbc  e                                           ; $78d4: $9b
	add  b                                           ; $78d5: $80
	dec  de                                          ; $78d6: $1b
	add  b                                           ; $78d7: $80
	ld   e, e                                        ; $78d8: $5b
	add  b                                           ; $78d9: $80
	db   $db                                         ; $78da: $db
	nop                                              ; $78db: $00
	ei                                               ; $78dc: $fb
	add  l                                           ; $78dd: $85
	cp   e                                           ; $78de: $bb
	nop                                              ; $78df: $00
	add  e                                           ; $78e0: $83
	add  d                                           ; $78e1: $82
	ld   hl, sp-$7e                                  ; $78e2: $f8 $82
	db   $fc                                         ; $78e4: $fc
	add  d                                           ; $78e5: $82
	cp   $04                                         ; $78e6: $fe $04
	ldh  [rIE], a                                    ; $78e8: $e0 $ff
	add  b                                           ; $78ea: $80
	jr   z, jr_09a_78a4                              ; $78eb: $28 $b7

	add  b                                           ; $78ed: $80
	cp   e                                           ; $78ee: $bb
	add  b                                           ; $78ef: $80
	db   $db                                         ; $78f0: $db
	add  b                                           ; $78f1: $80
	ld   e, l                                        ; $78f2: $5d
	add  b                                           ; $78f3: $80
	ld   c, l                                        ; $78f4: $4d
	add  b                                           ; $78f5: $80
	ld   l, l                                        ; $78f6: $6d
	add  d                                           ; $78f7: $82
	inc  h                                           ; $78f8: $24
	ld   [de], a                                     ; $78f9: $12
	ld   [bc], a                                     ; $78fa: $02
	ld   [hl-], a                                    ; $78fb: $32
	ld   a, $0e                                      ; $78fc: $3e $0e
	db   $fc                                         ; $78fe: $fc
	dec  a                                           ; $78ff: $3d
	add  hl, sp                                      ; $7900: $39
	ld   a, e                                        ; $7901: $7b
	ld   h, e                                        ; $7902: $63
	ld   h, a                                        ; $7903: $67
	rlca                                             ; $7904: $07
	adc  [hl]                                        ; $7905: $8e
	ld   c, $7e                                      ; $7906: $0e $7e
	ld   a, a                                        ; $7908: $7f
	db   $fc                                         ; $7909: $fc
	ldh  [c], a                                      ; $790a: $e2
	rlca                                             ; $790b: $07
	daa                                              ; $790c: $27
	add  b                                           ; $790d: $80
	adc  a                                           ; $790e: $8f
	rlca                                             ; $790f: $07
	sbc  [hl]                                        ; $7910: $9e
	sbc  $1c                                         ; $7911: $de $1c
	dec  e                                           ; $7913: $1d
	jr   jr_09a_78ae                                 ; $7914: $18 $98

	jr   nc, jr_09a_794b                             ; $7916: $30 $33

	add  b                                           ; $7918: $80
	ld   hl, $0101                                   ; $7919: $21 $01 $01
	ld   d, a                                        ; $791c: $57
	add  b                                           ; $791d: $80
	add  c                                           ; $791e: $81
	ld   bc, $9c01                                   ; $791f: $01 $01 $9c
	add  c                                           ; $7922: $81
	ld   [bc], a                                     ; $7923: $02
	nop                                              ; $7924: $00
	add  c                                           ; $7925: $81
	add  c                                           ; $7926: $81
	add  h                                           ; $7927: $84
	add  b                                           ; $7928: $80
	inc  b                                           ; $7929: $04
	ld   b, $64                                      ; $792a: $06 $64
	inc  b                                           ; $792c: $04
	dec  l                                           ; $792d: $2d
	ld   bc, $0305                                   ; $792e: $01 $05 $03
	add  e                                           ; $7931: $83
	add  b                                           ; $7932: $80
	inc  bc                                          ; $7933: $03
	add  b                                           ; $7934: $80
	inc  hl                                          ; $7935: $23
	ld   bc, $6b63                                   ; $7936: $01 $63 $6b
	add  b                                           ; $7939: $80
	ld   h, a                                        ; $793a: $67
	add  c                                           ; $793b: $81
	rst  $20                                         ; $793c: $e7
	db   $10                                         ; $793d: $10
	rla                                              ; $793e: $17
	rst  $28                                         ; $793f: $ef
	rst  $38                                         ; $7940: $ff
	rst  ToBoot                                         ; $7941: $c7
	rst  $28                                         ; $7942: $ef
	add  e                                           ; $7943: $83
	sub  a                                           ; $7944: $97
	add  c                                           ; $7945: $81
	adc  c                                           ; $7946: $89
	add  b                                           ; $7947: $80
	add  d                                           ; $7948: $82
	add  b                                           ; $7949: $80
	add  h                                           ; $794a: $84

jr_09a_794b:
	adc  b                                           ; $794b: $88
	adc  d                                           ; $794c: $8a
	adc  b                                           ; $794d: $88
	sub  b                                           ; $794e: $90
	add  b                                           ; $794f: $80
	cp   e                                           ; $7950: $bb
	ld   d, $ba                                      ; $7951: $16 $ba
	di                                               ; $7953: $f3
	ld   [hl], h                                     ; $7954: $74
	halt                                             ; $7955: $76
	ld   [hl], b                                     ; $7956: $70
	push hl                                          ; $7957: $e5
	ldh  [$ea], a                                    ; $7958: $e0 $ea
	pop  hl                                          ; $795a: $e1
	push de                                          ; $795b: $d5
	jp   $c7cb                                       ; $795c: $c3 $cb $c7


	ld   h, a                                        ; $795f: $67
	nop                                              ; $7960: $00
	cp   h                                           ; $7961: $bc
	inc  bc                                          ; $7962: $03
	ld   d, c                                        ; $7963: $51
	ld   hl, $79b9                                   ; $7964: $21 $b9 $79
	ld   a, e                                        ; $7967: $7b
	ei                                               ; $7968: $fb
	add  h                                           ; $7969: $84
	rst  $38                                         ; $796a: $ff
	dec  b                                           ; $796b: $05
	reti                                             ; $796c: $d9


	ld   h, $22                                      ; $796d: $26 $22
	and  d                                           ; $796f: $a2
	sub  d                                           ; $7970: $92
	jp   nc, $d380                                   ; $7971: $d2 $80 $d3

	nop                                              ; $7974: $00
	pop  bc                                          ; $7975: $c1
	add  l                                           ; $7976: $85
	pop  hl                                          ; $7977: $e1
	nop                                              ; $7978: $00
	rra                                              ; $7979: $1f
	rst  $38                                         ; $797a: $ff
	nop                                              ; $797b: $00
	rst  $38                                         ; $797c: $ff
	nop                                              ; $797d: $00
	rst  $38                                         ; $797e: $ff
	nop                                              ; $797f: $00
	rst  $38                                         ; $7980: $ff
	nop                                              ; $7981: $00
	rst  $38                                         ; $7982: $ff
	nop                                              ; $7983: $00
	adc  b                                           ; $7984: $88
	nop                                              ; $7985: $00
	ld   c, b                                        ; $7986: $48
	ld   bc, $0090                                   ; $7987: $01 $90 $00
	ld   [bc], a                                     ; $798a: $02
	ld   bc, $0200                                   ; $798b: $01 $00 $02
	add  c                                           ; $798e: $81
	ld   bc, $0400                                   ; $798f: $01 $00 $04
	add  c                                           ; $7992: $81
	inc  bc                                          ; $7993: $03
	ld   [bc], a                                     ; $7994: $02
	add  hl, bc                                      ; $7995: $09
	rlca                                             ; $7996: $07
	inc  b                                           ; $7997: $04
	add  b                                           ; $7998: $80
	rlca                                             ; $7999: $07
	inc  b                                           ; $799a: $04
	ld   b, $12                                      ; $799b: $06 $12
	ld   c, $0c                                      ; $799d: $0e $0c
	ld   c, $80                                      ; $799f: $0e $80
	dec  c                                           ; $79a1: $0d
	nop                                              ; $79a2: $00
	dec  b                                           ; $79a3: $05
	add  c                                           ; $79a4: $81
	dec  c                                           ; $79a5: $0d
	ld   bc, $0515                                   ; $79a6: $01 $15 $05
	add  h                                           ; $79a9: $84
	ld   bc, $0800                                   ; $79aa: $01 $00 $08
	add  c                                           ; $79ad: $81
	nop                                              ; $79ae: $00
	nop                                              ; $79af: $00
	inc  b                                           ; $79b0: $04
	add  c                                           ; $79b1: $81
	nop                                              ; $79b2: $00
	ld   [bc], a                                     ; $79b3: $02
	ld   [bc], a                                     ; $79b4: $02
	nop                                              ; $79b5: $00
	ld   bc, $008d                                   ; $79b6: $01 $8d $00
	ld   [de], a                                     ; $79b9: $12
	inc  bc                                          ; $79ba: $03
	nop                                              ; $79bb: $00
	inc  c                                           ; $79bc: $0c
	nop                                              ; $79bd: $00
	rrca                                             ; $79be: $0f
	nop                                              ; $79bf: $00
	ld   bc, $0700                                   ; $79c0: $01 $00 $07
	ld   bc, $030b                                   ; $79c3: $01 $0b $03
	stop                                             ; $79c6: $10 $00
	cpl                                              ; $79c8: $2f
	rrca                                             ; $79c9: $0f
	ld   a, a                                        ; $79ca: $7f
	ccf                                              ; $79cb: $3f
	ld   a, a                                        ; $79cc: $7f
	adc  c                                           ; $79cd: $89
	nop                                              ; $79ce: $00
	inc  bc                                          ; $79cf: $03
	ld   a, h                                        ; $79d0: $7c
	nop                                              ; $79d1: $00
	rst  $38                                         ; $79d2: $ff
	ld   a, h                                        ; $79d3: $7c
	add  b                                           ; $79d4: $80
	ld   c, $09                                      ; $79d5: $0e $09
	rst  $30                                         ; $79d7: $f7
	rlca                                             ; $79d8: $07
	di                                               ; $79d9: $f3
	inc  bc                                          ; $79da: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $79db: $cf
	rst  $38                                         ; $79dc: $ff
	xor  a                                           ; $79dd: $af
	rst  $38                                         ; $79de: $ff
	ld   a, a                                        ; $79df: $7f
	rra                                              ; $79e0: $1f

jr_09a_79e1:
	add  e                                           ; $79e1: $83
	rst  $38                                         ; $79e2: $ff
	add  l                                           ; $79e3: $85
	nop                                              ; $79e4: $00
	dec  c                                           ; $79e5: $0d
	ret  nz                                          ; $79e6: $c0

	nop                                              ; $79e7: $00
	and  b                                           ; $79e8: $a0
	nop                                              ; $79e9: $00
	ld   d, b                                        ; $79ea: $50
	nop                                              ; $79eb: $00
	jr   z, jr_09a_79ee                              ; $79ec: $28 $00

jr_09a_79ee:
	adc  h                                           ; $79ee: $8c
	ld   [$88cb], sp                                 ; $79ef: $08 $cb $88
	xor  c                                           ; $79f2: $a9
	adc  c                                           ; $79f3: $89
	add  b                                           ; $79f4: $80
	res  0, b                                        ; $79f5: $cb $80
	ld   sp, hl                                      ; $79f7: $f9
	add  b                                           ; $79f8: $80
	ld   hl, sp-$7d                                  ; $79f9: $f8 $83
	rst  $38                                         ; $79fb: $ff
	adc  a                                           ; $79fc: $8f
	nop                                              ; $79fd: $00
	ld   c, $f8                                      ; $79fe: $0e $f8
	nop                                              ; $7a00: $00
	rst  $30                                         ; $7a01: $f7
	ldh  a, [$bf]                                    ; $7a02: $f0 $bf
	rst  $38                                         ; $7a04: $ff
	ld   e, a                                        ; $7a05: $5f
	rst  $38                                         ; $7a06: $ff
	daa                                              ; $7a07: $27
	rst  $38                                         ; $7a08: $ff
	and  a                                           ; $7a09: $a7
	rst  $38                                         ; $7a0a: $ff
	adc  a                                           ; $7a0b: $8f
	rst  $38                                         ; $7a0c: $ff
	rst  $28                                         ; $7a0d: $ef
	sub  c                                           ; $7a0e: $91
	nop                                              ; $7a0f: $00
	inc  c                                           ; $7a10: $0c
	add  b                                           ; $7a11: $80
	nop                                              ; $7a12: $00
	ld   h, b                                        ; $7a13: $60
	nop                                              ; $7a14: $00
	ret  c                                           ; $7a15: $d8

	ret  nz                                          ; $7a16: $c0

	db   $f4                                         ; $7a17: $f4
	ldh  a, [$fa]                                    ; $7a18: $f0 $fa
	ld   hl, sp-$03                                  ; $7a1a: $f8 $fd
	db   $fc                                         ; $7a1c: $fc
	ld   a, a                                        ; $7a1d: $7f
	add  c                                           ; $7a1e: $81
	nop                                              ; $7a1f: $00
	ld   bc, $0040                                   ; $7a20: $01 $40 $00
	add  b                                           ; $7a23: $80
	add  b                                           ; $7a24: $80
	ld   bc, $80a0                                   ; $7a25: $01 $a0 $80
	add  d                                           ; $7a28: $82
	ret  nz                                          ; $7a29: $c0

	ld   bc, $c0d0                                   ; $7a2a: $01 $d0 $c0
	add  b                                           ; $7a2d: $80
	ldh  [$82], a                                    ; $7a2e: $e0 $82
	ld   h, b                                        ; $7a30: $60
	add  [hl]                                        ; $7a31: $86
	and  b                                           ; $7a32: $a0
	add  b                                           ; $7a33: $80
	jr   nz, jr_09a_7a37                             ; $7a34: $20 $01

	ld   h, b                                        ; $7a36: $60

jr_09a_7a37:
	ld   l, a                                        ; $7a37: $6f
	add  d                                           ; $7a38: $82
	ld   c, [hl]                                     ; $7a39: $4e
	nop                                              ; $7a3a: $00
	adc  [hl]                                        ; $7a3b: $8e
	add  c                                           ; $7a3c: $81
	ld   c, $01                                      ; $7a3d: $0e $01
	ld   c, [hl]                                     ; $7a3f: $4e

jr_09a_7a40:
	ld   c, $80                                      ; $7a40: $0e $80
	ld   b, $03                                      ; $7a42: $06 $03
	or   [hl]                                        ; $7a44: $b6
	ld   b, $8a                                      ; $7a45: $06 $8a
	ld   [bc], a                                     ; $7a47: $02
	add  b                                           ; $7a48: $80
	nop                                              ; $7a49: $00
	nop                                              ; $7a4a: $00
	inc  b                                           ; $7a4b: $04
	add  e                                           ; $7a4c: $83
	nop                                              ; $7a4d: $00
	inc  bc                                          ; $7a4e: $03
	inc  b                                           ; $7a4f: $04
	nop                                              ; $7a50: $00
	inc  c                                           ; $7a51: $0c
	inc  b                                           ; $7a52: $04
	add  b                                           ; $7a53: $80
	ld   b, $00                                      ; $7a54: $06 $00
	rst  $38                                         ; $7a56: $ff
	add  c                                           ; $7a57: $81
	nop                                              ; $7a58: $00
	nop                                              ; $7a59: $00
	db   $10                                         ; $7a5a: $10
	add  e                                           ; $7a5b: $83
	nop                                              ; $7a5c: $00
	nop                                              ; $7a5d: $00
	jr   nz, jr_09a_79e1                             ; $7a5e: $20 $81

	nop                                              ; $7a60: $00
	nop                                              ; $7a61: $00
	ld   b, b                                        ; $7a62: $40
	add  l                                           ; $7a63: $85
	nop                                              ; $7a64: $00
	ld   [bc], a                                     ; $7a65: $02
	ret  nz                                          ; $7a66: $c0

	add  b                                           ; $7a67: $80
	ldh  [$81], a                                    ; $7a68: $e0 $81
	ret  nz                                          ; $7a6a: $c0

	nop                                              ; $7a6b: $00
	add  b                                           ; $7a6c: $80
	add  c                                           ; $7a6d: $81
	ret  nz                                          ; $7a6e: $c0

	nop                                              ; $7a6f: $00
	and  b                                           ; $7a70: $a0
	adc  l                                           ; $7a71: $8d
	nop                                              ; $7a72: $00
	add  hl, bc                                      ; $7a73: $09
	ld   h, b                                        ; $7a74: $60
	add  b                                           ; $7a75: $80
	ret  nc                                          ; $7a76: $d0

	ret  nz                                          ; $7a77: $c0

	adc  b                                           ; $7a78: $88
	add  b                                           ; $7a79: $80
	ld   c, $00                                      ; $7a7a: $0e $00
	push de                                          ; $7a7c: $d5
	ret  nz                                          ; $7a7d: $c0

	add  b                                           ; $7a7e: $80
	add  b                                           ; $7a7f: $80
	rlca                                             ; $7a80: $07
	add  hl, de                                      ; $7a81: $19
	nop                                              ; $7a82: $00
	inc  a                                           ; $7a83: $3c
	nop                                              ; $7a84: $00
	pop  bc                                          ; $7a85: $c1
	nop                                              ; $7a86: $00
	inc  c                                           ; $7a87: $0c
	inc  b                                           ; $7a88: $04
	add  d                                           ; $7a89: $82
	ld   b, $80                                      ; $7a8a: $06 $80
	dec  b                                           ; $7a8c: $05
	inc  bc                                          ; $7a8d: $03
	add  hl, de                                      ; $7a8e: $19
	add  hl, bc                                      ; $7a8f: $09
	inc  l                                           ; $7a90: $2c
	inc  e                                           ; $7a91: $1c
	add  b                                           ; $7a92: $80
	add  hl, de                                      ; $7a93: $19
	dec  de                                          ; $7a94: $1b
	add  hl, bc                                      ; $7a95: $09
	dec  de                                          ; $7a96: $1b
	ld   h, c                                        ; $7a97: $61
	daa                                              ; $7a98: $27
	inc  [hl]                                        ; $7a99: $34
	jr   nc, jr_09a_7a40                             ; $7a9a: $30 $a4

	ld   l, h                                        ; $7a9c: $6c
	add  hl, bc                                      ; $7a9d: $09
	ld   d, b                                        ; $7a9e: $50
	ld   d, $00                                      ; $7a9f: $16 $00
	ld   a, b                                        ; $7aa1: $78
	nop                                              ; $7aa2: $00
	add  b                                           ; $7aa3: $80
	nop                                              ; $7aa4: $00
	cp   $00                                         ; $7aa5: $fe $00
	ld   [bc], a                                     ; $7aa7: $02
	nop                                              ; $7aa8: $00
	inc  b                                           ; $7aa9: $04
	nop                                              ; $7aaa: $00
	ld   [rROMB1], sp                                 ; $7aab: $08 $00 $30
	nop                                              ; $7aae: $00
	ret  nz                                          ; $7aaf: $c0

	nop                                              ; $7ab0: $00
	add  b                                           ; $7ab1: $80
	ld   b, $05                                      ; $7ab2: $06 $05
	ld   e, $0e                                      ; $7ab4: $1e $0e
	db   $ec                                         ; $7ab6: $ec
	inc  c                                           ; $7ab7: $0c
	ld   b, d                                        ; $7ab8: $42
	or   d                                           ; $7ab9: $b2
	add  b                                           ; $7aba: $80
	ld   a, [hl]                                     ; $7abb: $7e
	inc  sp                                          ; $7abc: $33
	db   $fc                                         ; $7abd: $fc
	inc  e                                           ; $7abe: $1c
	ld   [de], a                                     ; $7abf: $12
	ldh  a, [c]                                      ; $7ac0: $f2
	dec  c                                           ; $7ac1: $0d
	inc  c                                           ; $7ac2: $0c
	jp   c, $d4d8                                    ; $7ac3: $da $d8 $d4

	sub  b                                           ; $7ac6: $90
	ld   b, [hl]                                     ; $7ac7: $46
	ld   bc, $0203                                   ; $7ac8: $01 $03 $02
	rlca                                             ; $7acb: $07
	inc  b                                           ; $7acc: $04
	inc  c                                           ; $7acd: $0c
	ld   [$2439], sp                                 ; $7ace: $08 $39 $24
	db   $e4                                         ; $7ad1: $e4
	sbc  b                                           ; $7ad2: $98
	sbc  [hl]                                        ; $7ad3: $9e
	ld   h, b                                        ; $7ad4: $60
	ld   a, b                                        ; $7ad5: $78
	nop                                              ; $7ad6: $00
	ldh  [c], a                                      ; $7ad7: $e2
	nop                                              ; $7ad8: $00
	ld   c, [hl]                                     ; $7ad9: $4e
	nop                                              ; $7ada: $00
	call z, $8200                                    ; $7adb: $cc $00 $82
	nop                                              ; $7ade: $00
	ld   c, $00                                      ; $7adf: $0e $00
	rst  $38                                         ; $7ae1: $ff
	nop                                              ; $7ae2: $00
	sub  $00                                         ; $7ae3: $d6 $00
	inc  c                                           ; $7ae5: $0c
	nop                                              ; $7ae6: $00
	ret  c                                           ; $7ae7: $d8

	rrca                                             ; $7ae8: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ae9: $cf
	rrca                                             ; $7aea: $0f
	daa                                              ; $7aeb: $27
	rlca                                             ; $7aec: $07
	stop                                             ; $7aed: $10 $00
	ld   [$8000], sp                                 ; $7aef: $08 $00 $80
	ld   bc, $0510                                   ; $7af2: $01 $10 $05
	ld   bc, $0002                                   ; $7af5: $01 $02 $00
	rrca                                             ; $7af8: $0f
	nop                                              ; $7af9: $00
	sbc  a                                           ; $7afa: $9f
	nop                                              ; $7afb: $00
	add  hl, sp                                      ; $7afc: $39
	nop                                              ; $7afd: $00
	db   $ec                                         ; $7afe: $ec
	nop                                              ; $7aff: $00
	ld   a, b                                        ; $7b00: $78
	nop                                              ; $7b01: $00
	jr   nc, jr_09a_7b04                             ; $7b02: $30 $00

jr_09a_7b04:
	ld   [$0081], sp                                 ; $7b04: $08 $81 $00
	dec  b                                           ; $7b07: $05
	or   h                                           ; $7b08: $b4
	ld   b, b                                        ; $7b09: $40
	ld   e, b                                        ; $7b0a: $58
	ld   d, b                                        ; $7b0b: $50
	db   $f4                                         ; $7b0c: $f4
	ld   hl, sp-$80                                  ; $7b0d: $f8 $80
	jr   c, @+$09                                    ; $7b0f: $38 $07

	sub  b                                           ; $7b11: $90
	ret  c                                           ; $7b12: $d8

	sbc  d                                           ; $7b13: $9a
	ld   hl, sp-$25                                  ; $7b14: $f8 $db
	ld   a, [$0706]                                  ; $7b16: $fa $06 $07
	add  b                                           ; $7b19: $80
	ld   [hl], a                                     ; $7b1a: $77
	rlca                                             ; $7b1b: $07
	ld   [hl], d                                     ; $7b1c: $72
	ld   a, e                                        ; $7b1d: $7b
	or   l                                           ; $7b1e: $b5
	dec  a                                           ; $7b1f: $3d
	ld   b, c                                        ; $7b20: $41
	ld   bc, $0222                                   ; $7b21: $01 $22 $02
	add  b                                           ; $7b24: $80
	rlca                                             ; $7b25: $07
	inc  b                                           ; $7b26: $04
	rla                                              ; $7b27: $17
	rlca                                             ; $7b28: $07
	ld   [$8700], sp                                 ; $7b29: $08 $00 $87
	add  e                                           ; $7b2c: $83
	nop                                              ; $7b2d: $00
	inc  bc                                          ; $7b2e: $03
	ld   b, b                                        ; $7b2f: $40
	nop                                              ; $7b30: $00
	ld   h, b                                        ; $7b31: $60
	ld   b, b                                        ; $7b32: $40
	add  b                                           ; $7b33: $80
	ret  nz                                          ; $7b34: $c0

	add  b                                           ; $7b35: $80
	ld   b, b                                        ; $7b36: $40
	add  b                                           ; $7b37: $80

jr_09a_7b38:
	add  b                                           ; $7b38: $80
	add  hl, bc                                      ; $7b39: $09
	db   $10                                         ; $7b3a: $10
	ld   h, b                                        ; $7b3b: $60
	ld   l, b                                        ; $7b3c: $68
	ldh  a, [$f6]                                    ; $7b3d: $f0 $f6
	ret  nz                                          ; $7b3f: $c0

	rst  JumpTable                                         ; $7b40: $df
	sbc  [hl]                                        ; $7b41: $9e
	cp   a                                           ; $7b42: $bf
	ccf                                              ; $7b43: $3f
	add  b                                           ; $7b44: $80
	ld   a, e                                        ; $7b45: $7b
	add  b                                           ; $7b46: $80
	ld   a, l                                        ; $7b47: $7d
	add  b                                           ; $7b48: $80
	cp   $00                                         ; $7b49: $fe $00
	rst  $38                                         ; $7b4b: $ff
	add  b                                           ; $7b4c: $80
	nop                                              ; $7b4d: $00
	add  b                                           ; $7b4e: $80
	ld   c, $04                                      ; $7b4f: $0e $04
	rla                                              ; $7b51: $17
	sub  a                                           ; $7b52: $97
	cp   e                                           ; $7b53: $bb
	ei                                               ; $7b54: $fb
	jp   $f280                                       ; $7b55: $c3 $80 $f2


	nop                                              ; $7b58: $00
	ld   a, [$7a81]                                  ; $7b59: $fa $81 $7a
	nop                                              ; $7b5c: $00
	add  e                                           ; $7b5d: $83
	adc  l                                           ; $7b5e: $8d
	nop                                              ; $7b5f: $00
	db   $10                                         ; $7b60: $10
	ld   h, b                                        ; $7b61: $60
	rra                                              ; $7b62: $1f
	ld   c, a                                        ; $7b63: $4f
	rrca                                             ; $7b64: $0f
	ld   b, a                                        ; $7b65: $47
	rlca                                             ; $7b66: $07
	adc  c                                           ; $7b67: $89
	ld   bc, $00d4                                   ; $7b68: $01 $d4 $00
	ld   b, b                                        ; $7b6b: $40
	nop                                              ; $7b6c: $00
	sbc  c                                           ; $7b6d: $99
	ld   bc, $3905                                   ; $7b6e: $01 $05 $39
	rst  ToBoot                                         ; $7b71: $c7
	sub  c                                           ; $7b72: $91
	nop                                              ; $7b73: $00
	inc  bc                                          ; $7b74: $03
	ld   bc, $0600                                   ; $7b75: $01 $00 $06
	nop                                              ; $7b78: $00
	add  b                                           ; $7b79: $80
	ld   [bc], a                                     ; $7b7a: $02
	ld   b, $1a                                      ; $7b7b: $06 $1a
	ld   [bc], a                                     ; $7b7d: $02
	ld   [hl+], a                                    ; $7b7e: $22
	ld   a, [de]                                     ; $7b7f: $1a
	ld   e, h                                        ; $7b80: $5c
	dec  [hl]                                        ; $7b81: $35
	ld   c, [hl]                                     ; $7b82: $4e
	adc  a                                           ; $7b83: $8f
	nop                                              ; $7b84: $00
	rrca                                             ; $7b85: $0f
	ld   bc, $0200                                   ; $7b86: $01 $00 $02
	nop                                              ; $7b89: $00
	dec  b                                           ; $7b8a: $05
	ld   bc, $060e                                   ; $7b8b: $01 $0e $06
	inc  b                                           ; $7b8e: $04
	dec  b                                           ; $7b8f: $05

jr_09a_7b90:
	ld   de, $6303                                   ; $7b90: $11 $03 $63
	rra                                              ; $7b93: $1f

jr_09a_7b94:
	ccf                                              ; $7b94: $3f
	rra                                              ; $7b95: $1f
	add  b                                           ; $7b96: $80
	ld   c, $02                                      ; $7b97: $0e $02
	add  c                                           ; $7b99: $81
	nop                                              ; $7b9a: $00
	ld   a, $80                                      ; $7b9b: $3e $80
	add  b                                           ; $7b9d: $80
	add  b                                           ; $7b9e: $80
	rst  $38                                         ; $7b9f: $ff
	ld   bc, $bfbe                                   ; $7ba0: $01 $be $bf
	add  b                                           ; $7ba3: $80
	add  b                                           ; $7ba4: $80
	nop                                              ; $7ba5: $00
	cp   $94                                         ; $7ba6: $fe $94
	nop                                              ; $7ba8: $00
	ld   a, [bc]                                     ; $7ba9: $0a
	ld   bc, $0200                                   ; $7baa: $01 $00 $02
	ld   bc, $0305                                   ; $7bad: $01 $05 $03
	dec  bc                                          ; $7bb0: $0b
	rlca                                             ; $7bb1: $07
	rla                                              ; $7bb2: $17
	rrca                                             ; $7bb3: $0f
	db   $10                                         ; $7bb4: $10
	add  b                                           ; $7bb5: $80
	jr   nz, jr_09a_7b38                             ; $7bb6: $20 $80

	ld   sp, $3e80                                   ; $7bb8: $31 $80 $3e
	add  h                                           ; $7bbb: $84
	nop                                              ; $7bbc: $00
	add  d                                           ; $7bbd: $82
	ld   bc, $008d                                   ; $7bbe: $01 $8d $00
	rlca                                             ; $7bc1: $07
	stop                                             ; $7bc2: $10 $00

jr_09a_7bc4:
	ld   l, $00                                      ; $7bc4: $2e $00
	ld   e, a                                        ; $7bc6: $5f
	ld   e, $bf                                      ; $7bc7: $1e $bf
	ccf                                              ; $7bc9: $3f
	add  b                                           ; $7bca: $80
	ld   a, e                                        ; $7bcb: $7b

jr_09a_7bcc:
	add  b                                           ; $7bcc: $80
	ld   a, l                                        ; $7bcd: $7d
	add  b                                           ; $7bce: $80
	cp   $80                                         ; $7bcf: $fe $80
	rst  $38                                         ; $7bd1: $ff
	ld   [bc], a                                     ; $7bd2: $02
	ld   a, [$f8ff]                                  ; $7bd3: $fa $ff $f8
	add  c                                           ; $7bd6: $81
	rst  $38                                         ; $7bd7: $ff
	ld   bc, $7e7c                                   ; $7bd8: $01 $7c $7e
	add  b                                           ; $7bdb: $80
	ld   l, [hl]                                     ; $7bdc: $6e
	add  d                                           ; $7bdd: $82

jr_09a_7bde:
	ld   l, a                                        ; $7bde: $6f
	add  b                                           ; $7bdf: $80
	ld   b, h                                        ; $7be0: $44
	nop                                              ; $7be1: $00
	rst  $38                                         ; $7be2: $ff
	add  c                                           ; $7be3: $81
	nop                                              ; $7be4: $00
	dec  bc                                          ; $7be5: $0b
	add  b                                           ; $7be6: $80
	nop                                              ; $7be7: $00
	ld   h, b                                        ; $7be8: $60
	add  b                                           ; $7be9: $80
	jr   nc, jr_09a_7bcc                             ; $7bea: $30 $e0

	jr   jr_09a_7bde                                 ; $7bec: $18 $f0

	inc  a                                           ; $7bee: $3c
	ret  c                                           ; $7bef: $d8

	ld   h, $64                                      ; $7bf0: $26 $64
	add  b                                           ; $7bf2: $80
	or   b                                           ; $7bf3: $b0
	dec  b                                           ; $7bf4: $05
	dec  [hl]                                        ; $7bf5: $35
	or   b                                           ; $7bf6: $b0
	ld   e, [hl]                                     ; $7bf7: $5e
	ret  c                                           ; $7bf8: $d8

	ret                                              ; $7bf9: $c9


	ret  z                                           ; $7bfa: $c8

	add  b                                           ; $7bfb: $80
	ret  nz                                          ; $7bfc: $c0

	ld   b, $4c                                      ; $7bfd: $06 $4c
	ld   b, b                                        ; $7bff: $40
	stop                                             ; $7c00: $10 $00
	ld   h, b                                        ; $7c02: $60
	nop                                              ; $7c03: $00
	add  b                                           ; $7c04: $80
	add  e                                           ; $7c05: $83
	nop                                              ; $7c06: $00
	add  b                                           ; $7c07: $80
	ld   b, $80                                      ; $7c08: $06 $80
	inc  e                                           ; $7c0a: $1c
	add  b                                           ; $7c0b: $80
	jr   jr_09a_7b90                                 ; $7c0c: $18 $82

	jr   nc, jr_09a_7b94                             ; $7c0e: $30 $84

	jr   nz, @-$7e                                   ; $7c10: $20 $80

	ld   h, b                                        ; $7c12: $60
	add  [hl]                                        ; $7c13: $86
	ld   b, b                                        ; $7c14: $40
	add  h                                           ; $7c15: $84
	nop                                              ; $7c16: $00
	add  d                                           ; $7c17: $82
	ld   bc, $0082                                   ; $7c18: $01 $82 $00
	add  b                                           ; $7c1b: $80
	ld   [bc], a                                     ; $7c1c: $02
	sub  b                                           ; $7c1d: $90
	nop                                              ; $7c1e: $00
	add  b                                           ; $7c1f: $80
	rrca                                             ; $7c20: $0f
	add  [hl]                                        ; $7c21: $86
	nop                                              ; $7c22: $00
	add  b                                           ; $7c23: $80
	ld   b, $84                                      ; $7c24: $06 $84
	nop                                              ; $7c26: $00
	add  d                                           ; $7c27: $82
	ld   bc, $4180                                   ; $7c28: $01 $80 $41
	add  b                                           ; $7c2b: $80
	ld   b, e                                        ; $7c2c: $43
	add  b                                           ; $7c2d: $80
	dec  bc                                          ; $7c2e: $0b
	add  b                                           ; $7c2f: $80
	adc  e                                           ; $7c30: $8b
	add  b                                           ; $7c31: $80
	dec  bc                                          ; $7c32: $0b
	add  b                                           ; $7c33: $80
	ld   a, [bc]                                     ; $7c34: $0a
	add  b                                           ; $7c35: $80
	ld   a, [de]                                     ; $7c36: $1a
	add  h                                           ; $7c37: $84
	ld   [de], a                                     ; $7c38: $12
	add  d                                           ; $7c39: $82
	ld   [hl-], a                                    ; $7c3a: $32
	adc  [hl]                                        ; $7c3b: $8e
	nop                                              ; $7c3c: $00
	add  h                                           ; $7c3d: $84
	jr   c, @-$76                                    ; $7c3e: $38 $88

	db   $10                                         ; $7c40: $10
	add  h                                           ; $7c41: $84
	jr   nz, jr_09a_7bc4                             ; $7c42: $20 $80

	nop                                              ; $7c44: $00
	add  d                                           ; $7c45: $82
	ld   b, b                                        ; $7c46: $40
	add  b                                           ; $7c47: $80
	nop                                              ; $7c48: $00
	add  b                                           ; $7c49: $80
	add  b                                           ; $7c4a: $80
	cp   [hl]                                        ; $7c4b: $be
	nop                                              ; $7c4c: $00

jr_09a_7c4d:
	ld   [bc], a                                     ; $7c4d: $02
	add  b                                           ; $7c4e: $80
	ld   a, a                                        ; $7c4f: $7f
	rst  $38                                         ; $7c50: $ff
	add  b                                           ; $7c51: $80
	ld   a, a                                        ; $7c52: $7f
	nop                                              ; $7c53: $00
	rst  $38                                         ; $7c54: $ff
	add  b                                           ; $7c55: $80
	ei                                               ; $7c56: $fb
	add  b                                           ; $7c57: $80
	rst  $30                                         ; $7c58: $f7
	add  c                                           ; $7c59: $81
	rst  $28                                         ; $7c5a: $ef
	ld   [bc], a                                     ; $7c5b: $02
	ld   l, a                                        ; $7c5c: $6f
	sbc  $5e                                         ; $7c5d: $de $5e
	adc  b                                           ; $7c5f: $88
	rst  $38                                         ; $7c60: $ff
	add  b                                           ; $7c61: $80
	cp   $80                                         ; $7c62: $fe $80
	db   $fc                                         ; $7c64: $fc
	add  b                                           ; $7c65: $80
	db   $f4                                         ; $7c66: $f4
	add  b                                           ; $7c67: $80
	rst  $38                                         ; $7c68: $ff
	add  b                                           ; $7c69: $80
	rst  JumpTable                                         ; $7c6a: $df
	add  b                                           ; $7c6b: $80
	cp   a                                           ; $7c6c: $bf
	add  d                                           ; $7c6d: $82
	ld   a, a                                        ; $7c6e: $7f
	add  b                                           ; $7c6f: $80
	rst  $38                                         ; $7c70: $ff
	add  b                                           ; $7c71: $80
	ei                                               ; $7c72: $fb
	add  b                                           ; $7c73: $80
	ld   a, [$ff86]                                  ; $7c74: $fa $86 $ff
	add  b                                           ; $7c77: $80
	cp   $80                                         ; $7c78: $fe $80
	rst  $38                                         ; $7c7a: $ff
	add  b                                           ; $7c7b: $80
	cp   $80                                         ; $7c7c: $fe $80
	rst  $38                                         ; $7c7e: $ff
	add  b                                           ; $7c7f: $80
	cp   $84                                         ; $7c80: $fe $84
	rst  $38                                         ; $7c82: $ff
	add  b                                           ; $7c83: $80
	ccf                                              ; $7c84: $3f
	add  b                                           ; $7c85: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c86: $cf
	add  b                                           ; $7c87: $80
	ld   [hl], e                                     ; $7c88: $73
	add  b                                           ; $7c89: $80
	sbc  l                                           ; $7c8a: $9d
	add  b                                           ; $7c8b: $80
	db   $dd                                         ; $7c8c: $dd
	add  b                                           ; $7c8d: $80
	cp   l                                           ; $7c8e: $bd
	add  b                                           ; $7c8f: $80
	cp   e                                           ; $7c90: $bb
	nop                                              ; $7c91: $00
	ld   a, e                                        ; $7c92: $7b
	add  b                                           ; $7c93: $80
	dec  sp                                          ; $7c94: $3b
	inc  bc                                          ; $7c95: $03
	add  hl, hl                                      ; $7c96: $29
	dec  h                                           ; $7c97: $25
	inc  d                                           ; $7c98: $14
	inc  b                                           ; $7c99: $04
	add  b                                           ; $7c9a: $80
	ld   b, d                                        ; $7c9b: $42
	ld   bc, $ec63                                   ; $7c9c: $01 $63 $ec
	add  b                                           ; $7c9f: $80
	add  sp, $00                                     ; $7ca0: $e8 $00
	ld   [$d280], a                                  ; $7ca2: $ea $80 $d2
	nop                                              ; $7ca5: $00
	ret  nc                                          ; $7ca6: $d0

	add  c                                           ; $7ca7: $81
	ld   d, h                                        ; $7ca8: $54
	nop                                              ; $7ca9: $00
	nop                                              ; $7caa: $00
	add  c                                           ; $7cab: $81
	adc  b                                           ; $7cac: $88
	inc  bc                                          ; $7cad: $03
	ld   [$b549], sp                                 ; $7cae: $08 $49 $b5
	ld   a, [$f281]                                  ; $7cb1: $fa $81 $f2
	ld   bc, $6272                                   ; $7cb4: $01 $72 $62
	add  c                                           ; $7cb7: $81
	ld   [hl+], a                                    ; $7cb8: $22
	nop                                              ; $7cb9: $00
	ld   hl, $8580                                   ; $7cba: $21 $80 $85
	inc  bc                                          ; $7cbd: $03
	and  l                                           ; $7cbe: $a5
	inc  h                                           ; $7cbf: $24
	ld   b, [hl]                                     ; $7cc0: $46
	sbc  c                                           ; $7cc1: $99
	add  c                                           ; $7cc2: $81
	cp   a                                           ; $7cc3: $bf
	add  b                                           ; $7cc4: $80
	ld   e, l                                        ; $7cc5: $5d
	inc  b                                           ; $7cc6: $04
	ld   e, [hl]                                     ; $7cc7: $5e
	ld   d, h                                        ; $7cc8: $54
	ld   b, l                                        ; $7cc9: $45
	ld   c, b                                        ; $7cca: $48
	jr   nz, jr_09a_7c4d                             ; $7ccb: $20 $80

	dec  h                                           ; $7ccd: $25
	ld   de, $0327                                   ; $7cce: $11 $27 $03
	ld   c, e                                        ; $7cd1: $4b
	and  [hl]                                        ; $7cd2: $a6
	db   $ec                                         ; $7cd3: $ec
	push af                                          ; $7cd4: $f5
	or   $fa                                         ; $7cd5: $f6 $fa
	ld   hl, sp+$7e                                  ; $7cd7: $f8 $7e
	ld   d, h                                        ; $7cd9: $54
	inc  d                                           ; $7cda: $14
	dec  h                                           ; $7cdb: $25
	and  [hl]                                        ; $7cdc: $a6
	ld   [hl-], a                                    ; $7cdd: $32
	ld   [de], a                                     ; $7cde: $12
	sbc  d                                           ; $7cdf: $9a
	jp   z, $cc80                                    ; $7ce0: $ca $80 $cc

	nop                                              ; $7ce3: $00
	adc  $80                                         ; $7ce4: $ce $80
	and  $80                                         ; $7ce6: $e6 $80
	ld   h, [hl]                                     ; $7ce8: $66
	add  d                                           ; $7ce9: $82
	ld   [hl-], a                                    ; $7cea: $32
	ld   [bc], a                                     ; $7ceb: $02
	ld   [de], a                                     ; $7cec: $12
	sub  d                                           ; $7ced: $92
	add  b                                           ; $7cee: $80
	add  c                                           ; $7cef: $81
	add  h                                           ; $7cf0: $84
	add  c                                           ; $7cf1: $81
	sub  h                                           ; $7cf2: $94
	add  b                                           ; $7cf3: $80
	ld   e, h                                        ; $7cf4: $5c
	add  b                                           ; $7cf5: $80
	call c, $d804                                    ; $7cf6: $dc $04 $d8
	sbc  $d6                                         ; $7cf9: $de $d6
	call z, $808c                                    ; $7cfb: $cc $8c $80
	add  b                                           ; $7cfe: $80
	ld   [bc], a                                     ; $7cff: $02

Call_09a_7d00:
	adc  [hl]                                        ; $7d00: $8e
	ld   c, $ff                                      ; $7d01: $0e $ff
	sub  l                                           ; $7d03: $95
	nop                                              ; $7d04: $00
	add  b                                           ; $7d05: $80
	add  b                                           ; $7d06: $80
	inc  c                                           ; $7d07: $0c
	ldh  [rAUD4LEN], a                               ; $7d08: $e0 $20
	ccf                                              ; $7d0a: $3f
	ld   c, [hl]                                     ; $7d0b: $4e
	adc  $00                                         ; $7d0c: $ce $00
	db   $ec                                         ; $7d0e: $ec
	nop                                              ; $7d0f: $00
	inc  a                                           ; $7d10: $3c
	ld   bc, $0553                                   ; $7d11: $01 $53 $05
	inc  bc                                          ; $7d14: $03
	add  b                                           ; $7d15: $80
	ld   a, e                                        ; $7d16: $7b
	add  e                                           ; $7d17: $83
	ei                                               ; $7d18: $fb
	add  b                                           ; $7d19: $80
	rst  $30                                         ; $7d1a: $f7
	nop                                              ; $7d1b: $00
	ei                                               ; $7d1c: $fb
	add  b                                           ; $7d1d: $80
	db   $fc                                         ; $7d1e: $fc
	add  hl, bc                                      ; $7d1f: $09
	push af                                          ; $7d20: $f5
	ret  c                                           ; $7d21: $d8

	add  sp, -$19                                    ; $7d22: $e8 $e7
	ldh  [$d9], a                                    ; $7d24: $e0 $d9
	ret  nz                                          ; $7d26: $c0

	add  b                                           ; $7d27: $80
	ret  nz                                          ; $7d28: $c0

	and  b                                           ; $7d29: $a0
	add  c                                           ; $7d2a: $81
	add  b                                           ; $7d2b: $80
	dec  de                                          ; $7d2c: $1b
	ret  nz                                          ; $7d2d: $c0

	nop                                              ; $7d2e: $00
	ldh  [rP1], a                                    ; $7d2f: $e0 $00
	ld   a, a                                        ; $7d31: $7f
	nop                                              ; $7d32: $00
	rra                                              ; $7d33: $1f
	nop                                              ; $7d34: $00
	ret  nz                                          ; $7d35: $c0

	nop                                              ; $7d36: $00
	cp   a                                           ; $7d37: $bf
	nop                                              ; $7d38: $00
	ld   [hl], $00                                   ; $7d39: $36 $00
	jp   nz, $0300                                   ; $7d3b: $c2 $00 $03

	nop                                              ; $7d3e: $00
	inc  c                                           ; $7d3f: $0c
	nop                                              ; $7d40: $00
	add  $80                                         ; $7d41: $c6 $80
	db   $fc                                         ; $7d43: $fc
	ret  nz                                          ; $7d44: $c0

	db   $e3                                         ; $7d45: $e3
	ldh  [$e5], a                                    ; $7d46: $e0 $e5
	ldh  [$80], a                                    ; $7d48: $e0 $80
	ldh  a, [rDIV]                                   ; $7d4a: $f0 $04
	rst  $38                                         ; $7d4c: $ff
	ld   hl, sp+$04                                  ; $7d4d: $f8 $04
	ld   [hl], c                                     ; $7d4f: $71
	ld   a, l                                        ; $7d50: $7d
	add  b                                           ; $7d51: $80
	ld   h, c                                        ; $7d52: $61
	inc  bc                                          ; $7d53: $03
	ld   h, e                                        ; $7d54: $63
	db   $e3                                         ; $7d55: $e3
	inc  bc                                          ; $7d56: $03
	sbc  e                                           ; $7d57: $9b
	add  b                                           ; $7d58: $80
	ld   b, a                                        ; $7d59: $47
	add  b                                           ; $7d5a: $80
	rst  ToBoot                                         ; $7d5b: $c7
	inc  bc                                          ; $7d5c: $03
	call nz, $80f7                                   ; $7d5d: $c4 $f7 $80
	xor  e                                           ; $7d60: $ab
	add  e                                           ; $7d61: $83
	rst  $30                                         ; $7d62: $f7
	add  b                                           ; $7d63: $80
	rst  $38                                         ; $7d64: $ff
	nop                                              ; $7d65: $00
	cp   $82                                         ; $7d66: $fe $82
	rst  $38                                         ; $7d68: $ff
	dec  b                                           ; $7d69: $05
	rlca                                             ; $7d6a: $07
	rst  $38                                         ; $7d6b: $ff
	inc  bc                                          ; $7d6c: $03
	ld   b, l                                        ; $7d6d: $45
	add  b                                           ; $7d6e: $80
	add  c                                           ; $7d6f: $81
	add  c                                           ; $7d70: $81
	add  b                                           ; $7d71: $80
	nop                                              ; $7d72: $00
	ld   b, e                                        ; $7d73: $43
	add  e                                           ; $7d74: $83
	nop                                              ; $7d75: $00
	nop                                              ; $7d76: $00
	ld   b, $81                                      ; $7d77: $06 $81
	nop                                              ; $7d79: $00
	ld   b, $17                                      ; $7d7a: $06 $17
	nop                                              ; $7d7c: $00
	add  b                                           ; $7d7d: $80
	nop                                              ; $7d7e: $00
	ld   sp, $0400                                   ; $7d7f: $31 $00 $04
	add  c                                           ; $7d82: $81
	nop                                              ; $7d83: $00
	ld   [bc], a                                     ; $7d84: $02
	ld   [bc], a                                     ; $7d85: $02
	nop                                              ; $7d86: $00
	ld   h, b                                        ; $7d87: $60
	add  c                                           ; $7d88: $81
	nop                                              ; $7d89: $00
	inc  b                                           ; $7d8a: $04
	ld   [hl], h                                     ; $7d8b: $74
	nop                                              ; $7d8c: $00
	jr   nz, jr_09a_7d8f                             ; $7d8d: $20 $00

jr_09a_7d8f:
	add  b                                           ; $7d8f: $80
	add  a                                           ; $7d90: $87
	nop                                              ; $7d91: $00
	ld   [bc], a                                     ; $7d92: $02
	jr   jr_09a_7d95                                 ; $7d93: $18 $00

jr_09a_7d95:
	adc  [hl]                                        ; $7d95: $8e

jr_09a_7d96:
	add  e                                           ; $7d96: $83
	ld   [bc], a                                     ; $7d97: $02
	nop                                              ; $7d98: $00
	ld   a, [bc]                                     ; $7d99: $0a
	add  e                                           ; $7d9a: $83
	ld   b, $82                                      ; $7d9b: $06 $82
	dec  b                                           ; $7d9d: $05
	ld   b, $8b                                      ; $7d9e: $06 $8b
	db   $fc                                         ; $7da0: $fc
	cp   l                                           ; $7da1: $bd
	db   $fc                                         ; $7da2: $fc
	rst  JumpTable                                         ; $7da3: $df
	cp   $ef                                         ; $7da4: $fe $ef
	add  c                                           ; $7da6: $81
	rst  $38                                         ; $7da7: $ff
	nop                                              ; $7da8: $00
	or   $81                                         ; $7da9: $f6 $81
	cp   $1e                                         ; $7dab: $fe $1e
	ld   a, [$d0fe]                                  ; $7dad: $fa $fe $d0
	add  b                                           ; $7db0: $80
	sbc  $02                                         ; $7db1: $de $02
	ld   a, l                                        ; $7db3: $7d
	inc  c                                           ; $7db4: $0c
	dec  sp                                          ; $7db5: $3b
	cp   b                                           ; $7db6: $b8
	and  a                                           ; $7db7: $a7
	jr   nz, jr_09a_7dbb                             ; $7db8: $20 $01

	nop                                              ; $7dba: $00

jr_09a_7dbb:
	add  e                                           ; $7dbb: $83
	sub  b                                           ; $7dbc: $90
	sbc  a                                           ; $7dbd: $9f
	cp   b                                           ; $7dbe: $b8
	inc  a                                           ; $7dbf: $3c
	nop                                              ; $7dc0: $00
	ld   a, [hl-]                                    ; $7dc1: $3a
	jr   nc, jr_09a_7d96                             ; $7dc2: $30 $d2

	ld   de, $038d                                   ; $7dc4: $11 $8d $03
	dec  de                                          ; $7dc7: $1b
	rlca                                             ; $7dc8: $07
	rst  $30                                         ; $7dc9: $f7
	rrca                                             ; $7dca: $0f
	rst  $28                                         ; $7dcb: $ef
	add  c                                           ; $7dcc: $81
	rra                                              ; $7dcd: $1f
	ld   bc, $80e4                                   ; $7dce: $01 $e4 $80
	add  b                                           ; $7dd1: $80
	nop                                              ; $7dd2: $00
	ld   [bc], a                                     ; $7dd3: $02
	db   $ec                                         ; $7dd4: $ec
	ret  nz                                          ; $7dd5: $c0

	ld   b, b                                        ; $7dd6: $40
	add  c                                           ; $7dd7: $81
	ret  nz                                          ; $7dd8: $c0

	nop                                              ; $7dd9: $00
	cp   c                                           ; $7dda: $b9
	add  c                                           ; $7ddb: $81
	ldh  [rSC], a                                    ; $7ddc: $e0 $02
	ret  nz                                          ; $7dde: $c0

	ldh  [$95], a                                    ; $7ddf: $e0 $95
	add  e                                           ; $7de1: $83
	nop                                              ; $7de2: $00
	nop                                              ; $7de3: $00
	ld   [$0081], sp                                 ; $7de4: $08 $81 $00
	nop                                              ; $7de7: $00
	add  b                                           ; $7de8: $80
	add  e                                           ; $7de9: $83
	nop                                              ; $7dea: $00
	inc  b                                           ; $7deb: $04
	add  h                                           ; $7dec: $84
	nop                                              ; $7ded: $00
	ret  nz                                          ; $7dee: $c0

	nop                                              ; $7def: $00
	inc  c                                           ; $7df0: $0c
	add  c                                           ; $7df1: $81
	nop                                              ; $7df2: $00
	nop                                              ; $7df3: $00
	ld   b, $81                                      ; $7df4: $06 $81
	nop                                              ; $7df6: $00
	inc  b                                           ; $7df7: $04
	ld   h, c                                        ; $7df8: $61
	nop                                              ; $7df9: $00
	ld   [bc], a                                     ; $7dfa: $02
	nop                                              ; $7dfb: $00
	ld   a, $82                                      ; $7dfc: $3e $82
	rrca                                             ; $7dfe: $0f
	rlca                                             ; $7dff: $07
	inc  c                                           ; $7e00: $0c
	cpl                                              ; $7e01: $2f
	jr   jr_09a_7e21                                 ; $7e02: $18 $1d

	db   $10                                         ; $7e04: $10
	inc  de                                          ; $7e05: $13
	db   $10                                         ; $7e06: $10
	ld   d, b                                        ; $7e07: $50
	add  c                                           ; $7e08: $81
	jr   nc, jr_09a_7e0b                             ; $7e09: $30 $00

jr_09a_7e0b:
	or   l                                           ; $7e0b: $b5
	add  d                                           ; $7e0c: $82
	cp   $0b                                         ; $7e0d: $fe $0b
	ld   a, [hl]                                     ; $7e0f: $7e
	cp   $03                                         ; $7e10: $fe $03
	rst  $38                                         ; $7e12: $ff
	nop                                              ; $7e13: $00
	rst  $38                                         ; $7e14: $ff
	nop                                              ; $7e15: $00
	dec  hl                                          ; $7e16: $2b
	nop                                              ; $7e17: $00
	inc  hl                                          ; $7e18: $23
	inc  bc                                          ; $7e19: $03
	ld   [hl], a                                     ; $7e1a: $77
	rst  $38                                         ; $7e1b: $ff
	nop                                              ; $7e1c: $00
	rst  $38                                         ; $7e1d: $ff
	nop                                              ; $7e1e: $00
	rst  $38                                         ; $7e1f: $ff
	nop                                              ; $7e20: $00

jr_09a_7e21:
	ld   a, [$6500]                                  ; $7e21: $fa $00 $65
	nop                                              ; $7e24: $00
	ld   [bc], a                                     ; $7e25: $02
	nop                                              ; $7e26: $00
	ld   bc, $ff81                                   ; $7e27: $01 $81 $ff
	nop                                              ; $7e2a: $00
	ld   a, [$0900]                                  ; $7e2b: $fa $00 $09
	add  b                                           ; $7e2e: $80
	ld   bc, $0103                                   ; $7e2f: $01 $03 $01
	rlca                                             ; $7e32: $07
	ld   bc, $0103                                   ; $7e33: $01 $03 $01
	rra                                              ; $7e36: $1f
	sbc  b                                           ; $7e37: $98
	add  h                                           ; $7e38: $84
	nop                                              ; $7e39: $00
	ld   [$0190], sp                                 ; $7e3a: $08 $90 $01
	inc  bc                                          ; $7e3d: $03
	ld   bc, $0107                                   ; $7e3e: $01 $07 $01
	inc  bc                                          ; $7e41: $03
	ld   bc, $8597                                   ; $7e42: $01 $97 $85
	nop                                              ; $7e45: $00
	ld   [$0188], sp                                 ; $7e46: $08 $88 $01
	inc  bc                                          ; $7e49: $03
	ld   bc, $0107                                   ; $7e4a: $01 $07 $01
	inc  bc                                          ; $7e4d: $03
	ld   bc, $858f                                   ; $7e4e: $01 $8f $85
	nop                                              ; $7e51: $00
	ld   [$0399], sp                                 ; $7e52: $08 $99 $03
	ld   bc, $0107                                   ; $7e55: $01 $07 $01
	inc  bc                                          ; $7e58: $03
	ld   bc, $a03f                                   ; $7e59: $01 $3f $a0
	rst  $38                                         ; $7e5c: $ff
	nop                                              ; $7e5d: $00
	call nz, $0900                                   ; $7e5e: $c4 $00 $09
	add  b                                           ; $7e61: $80
	ld   bc, $0103                                   ; $7e62: $01 $03 $01
	rlca                                             ; $7e65: $07
	ld   bc, $0103                                   ; $7e66: $01 $03 $01
	dec  e                                           ; $7e69: $1d
	sbc  d                                           ; $7e6a: $9a
	add  h                                           ; $7e6b: $84
	nop                                              ; $7e6c: $00
	ld   [$0389], sp                                 ; $7e6d: $08 $89 $03
	ld   bc, $0107                                   ; $7e70: $01 $07 $01
	inc  bc                                          ; $7e73: $03
	ld   bc, $901f                                   ; $7e74: $01 $1f $90
	add  l                                           ; $7e77: $85
	nop                                              ; $7e78: $00
	add  hl, bc                                      ; $7e79: $09
	add  b                                           ; $7e7a: $80
	ld   bc, $0103                                   ; $7e7b: $01 $03 $01
	rlca                                             ; $7e7e: $07
	ld   bc, $0103                                   ; $7e7f: $01 $03 $01
	rrca                                             ; $7e82: $0f
	adc  b                                           ; $7e83: $88
	add  h                                           ; $7e84: $84
	nop                                              ; $7e85: $00
	add  b                                           ; $7e86: $80
	sbc  c                                           ; $7e87: $99
	adc  h                                           ; $7e88: $8c
	nop                                              ; $7e89: $00
	ld   [$0391], sp                                 ; $7e8a: $08 $91 $03
	ld   bc, $0107                                   ; $7e8d: $01 $07 $01
	inc  bc                                          ; $7e90: $03
	ld   bc, $980f                                   ; $7e91: $01 $0f $98
	rst  $38                                         ; $7e94: $ff
	nop                                              ; $7e95: $00
	or   h                                           ; $7e96: $b4
	nop                                              ; $7e97: $00
	ld   [$0180], sp                                 ; $7e98: $08 $80 $01
	inc  bc                                          ; $7e9b: $03
	ld   bc, $0107                                   ; $7e9c: $01 $07 $01
	inc  bc                                          ; $7e9f: $03
	ld   bc, $8587                                   ; $7ea0: $01 $87 $85
	nop                                              ; $7ea3: $00
	ld   [$0188], sp                                 ; $7ea4: $08 $88 $01
	inc  bc                                          ; $7ea7: $03
	ld   bc, $0107                                   ; $7ea8: $01 $07 $01
	inc  bc                                          ; $7eab: $03
	ld   bc, $858f                                   ; $7eac: $01 $8f $85
	nop                                              ; $7eaf: $00
	ld   [$0190], sp                                 ; $7eb0: $08 $90 $01
	inc  bc                                          ; $7eb3: $03
	ld   bc, $0107                                   ; $7eb4: $01 $07 $01
	inc  bc                                          ; $7eb7: $03
	ld   bc, $ff97                                   ; $7eb8: $01 $97 $ff
	nop                                              ; $7ebb: $00
	call nc, $0800                                   ; $7ebc: $d4 $00 $08
	add  b                                           ; $7ebf: $80
	ld   bc, $0103                                   ; $7ec0: $01 $03 $01
	rlca                                             ; $7ec3: $07
	ld   bc, $0103                                   ; $7ec4: $01 $03 $01
	add  a                                           ; $7ec7: $87
	add  b                                           ; $7ec8: $80
	or   d                                           ; $7ec9: $b2
	add  e                                           ; $7eca: $83
	nop                                              ; $7ecb: $00
	ld   [$01a2], sp                                 ; $7ecc: $08 $a2 $01
	rlca                                             ; $7ecf: $07
	ld   bc, $0103                                   ; $7ed0: $01 $03 $01
	rrca                                             ; $7ed3: $0f
	ld   bc, $85a9                                   ; $7ed4: $01 $a9 $85
	nop                                              ; $7ed7: $00
	ld   [$0188], sp                                 ; $7ed8: $08 $88 $01
	inc  bc                                          ; $7edb: $03
	ld   bc, $0107                                   ; $7edc: $01 $07 $01
	inc  bc                                          ; $7edf: $03
	ld   bc, $858f                                   ; $7ee0: $01 $8f $85
	nop                                              ; $7ee3: $00
	ld   [$0190], sp                                 ; $7ee4: $08 $90 $01
	inc  bc                                          ; $7ee7: $03
	ld   bc, $0107                                   ; $7ee8: $01 $07 $01
	inc  bc                                          ; $7eeb: $03
	ld   bc, $8597                                   ; $7eec: $01 $97 $85
	nop                                              ; $7eef: $00
	ld   a, [bc]                                     ; $7ef0: $0a
	sbc  b                                           ; $7ef1: $98
	ld   bc, $0103                                   ; $7ef2: $01 $03 $01
	rlca                                             ; $7ef5: $07
	ld   bc, $0103                                   ; $7ef6: $01 $03 $01
	ccf                                              ; $7ef9: $3f
	ld   bc, $83a1                                   ; $7efa: $01 $a1 $83
	nop                                              ; $7efd: $00
	ld   [$01aa], sp                                 ; $7efe: $08 $aa $01
	rlca                                             ; $7f01: $07
	ld   bc, $0103                                   ; $7f02: $01 $03 $01
	rra                                              ; $7f05: $1f
	ld   bc, $ffb1                                   ; $7f06: $01 $b1 $ff
	nop                                              ; $7f09: $00
	and  h                                           ; $7f0a: $a4
	nop                                              ; $7f0b: $00
	ld   [$0180], sp                                 ; $7f0c: $08 $80 $01
	inc  bc                                          ; $7f0f: $03
	ld   bc, $0107                                   ; $7f10: $01 $07 $01
	inc  bc                                          ; $7f13: $03
	ld   bc, $8587                                   ; $7f14: $01 $87 $85
	nop                                              ; $7f17: $00
	ld   [$0389], sp                                 ; $7f18: $08 $89 $03
	ld   bc, $0107                                   ; $7f1b: $01 $07 $01
	inc  bc                                          ; $7f1e: $03
	ld   bc, $901f                                   ; $7f1f: $01 $1f $90
	add  l                                           ; $7f22: $85
	nop                                              ; $7f23: $00
	add  b                                           ; $7f24: $80
	adc  b                                           ; $7f25: $88
	adc  h                                           ; $7f26: $8c
	nop                                              ; $7f27: $00
	ld   [$0391], sp                                 ; $7f28: $08 $91 $03
	ld   bc, $0107                                   ; $7f2b: $01 $07 $01
	inc  bc                                          ; $7f2e: $03
	ld   bc, $980f                                   ; $7f2f: $01 $0f $98
	rst  $38                                         ; $7f32: $ff
	nop                                              ; $7f33: $00
	call nz, $0900                                   ; $7f34: $c4 $00 $09
	add  b                                           ; $7f37: $80
	ld   bc, $0103                                   ; $7f38: $01 $03 $01
	rlca                                             ; $7f3b: $07
	ld   bc, $0103                                   ; $7f3c: $01 $03 $01
	rrca                                             ; $7f3f: $0f
	adc  b                                           ; $7f40: $88
	add  h                                           ; $7f41: $84
	nop                                              ; $7f42: $00
	ld   [$0389], sp                                 ; $7f43: $08 $89 $03
	ld   bc, $0107                                   ; $7f46: $01 $07 $01
	inc  bc                                          ; $7f49: $03
	ld   bc, $901f                                   ; $7f4a: $01 $1f $90
	add  l                                           ; $7f4d: $85
	nop                                              ; $7f4e: $00
	ld   [$0391], sp                                 ; $7f4f: $08 $91 $03
	ld   bc, $0107                                   ; $7f52: $01 $07 $01
	inc  bc                                          ; $7f55: $03
	ld   bc, $980f                                   ; $7f56: $01 $0f $98
	rst  $38                                         ; $7f59: $ff
	nop                                              ; $7f5a: $00
	call nc, $0200                                   ; $7f5b: $d4 $00 $02
	add  b                                           ; $7f5e: $80
	ld   bc, $ff81                                   ; $7f5f: $01 $81 $ff
	nop                                              ; $7f62: $00
	ld   a, [$8000]                                  ; $7f63: $fa $00 $80
	add  b                                           ; $7f66: $80
	rst  $38                                         ; $7f67: $ff
	nop                                              ; $7f68: $00
	ei                                               ; $7f69: $fb
	nop                                              ; $7f6a: $00
	rlca                                             ; $7f6b: $07
	add  b                                           ; $7f6c: $80
	ld   bc, $0103                                   ; $7f6d: $01 $03 $01
	rlca                                             ; $7f70: $07
	ld   c, $01                                      ; $7f71: $0e $01
	adc  e                                           ; $7f73: $8b
	add  [hl]                                        ; $7f74: $86
	nop                                              ; $7f75: $00
	rlca                                             ; $7f76: $07
	add  l                                           ; $7f77: $85
	inc  bc                                          ; $7f78: $03
	ld   bc, $010f                                   ; $7f79: $01 $0f $01
	dec  b                                           ; $7f7c: $05
	ld   bc, $868d                                   ; $7f7d: $01 $8d $86
	nop                                              ; $7f80: $00
	rlca                                             ; $7f81: $07
	adc  [hl]                                        ; $7f82: $8e
	ld   bc, $011f                                   ; $7f83: $01 $1f $01
	inc  bc                                          ; $7f86: $03
	ld   bc, $9407                                   ; $7f87: $01 $07 $94
	rst  $38                                         ; $7f8a: $ff
	nop                                              ; $7f8b: $00
	push de                                          ; $7f8c: $d5
	nop                                              ; $7f8d: $00
	rlca                                             ; $7f8e: $07
	add  b                                           ; $7f8f: $80
	ld   bc, $0103                                   ; $7f90: $01 $03 $01
	rlca                                             ; $7f93: $07
	ld   c, $01                                      ; $7f94: $0e $01
	adc  e                                           ; $7f96: $8b
	add  [hl]                                        ; $7f97: $86
	nop                                              ; $7f98: $00
	dec  b                                           ; $7f99: $05
	add  l                                           ; $7f9a: $85
	inc  bc                                          ; $7f9b: $03
	ld   bc, $010f                                   ; $7f9c: $01 $0f $01
	adc  c                                           ; $7f9f: $89
	adc  b                                           ; $7fa0: $88
	nop                                              ; $7fa1: $00
	rlca                                             ; $7fa2: $07
	adc  h                                           ; $7fa3: $8c
	ld   bc, $0103                                   ; $7fa4: $01 $03 $01
	rra                                              ; $7fa7: $1f
	ld   bc, $9203                                   ; $7fa8: $01 $03 $92
	rst  $38                                         ; $7fab: $ff
	nop                                              ; $7fac: $00
	push de                                          ; $7fad: $d5
	nop                                              ; $7fae: $00
	ld   b, $80                                      ; $7faf: $06 $80
	ld   bc, $0103                                   ; $7fb1: $01 $03 $01
	rlca                                             ; $7fb4: $07
	ld   bc, $8785                                   ; $7fb5: $01 $85 $87
	nop                                              ; $7fb8: $00
	ld   b, $86                                      ; $7fb9: $06 $86
	ld   bc, $010f                                   ; $7fbb: $01 $0f $01
	inc  bc                                          ; $7fbe: $03
	ld   bc, $878b                                   ; $7fbf: $01 $8b $87
	nop                                              ; $7fc2: $00
	ld   b, $8c                                      ; $7fc3: $06 $8c
	ld   bc, $0103                                   ; $7fc5: $01 $03 $01
	rra                                              ; $7fc8: $1f
	ld   bc, $ff91                                   ; $7fc9: $01 $91 $ff
	nop                                              ; $7fcc: $00
	sub  $00                                         ; $7fcd: $d6 $00
	inc  b                                           ; $7fcf: $04
	add  b                                           ; $7fd0: $80
	ld   bc, $0103                                   ; $7fd1: $01 $03 $01
	add  e                                           ; $7fd4: $83
	rst  $38                                         ; $7fd5: $ff
	nop                                              ; $7fd6: $00
	ld   hl, sp+$00                                  ; $7fd7: $f8 $00
	dec  b                                           ; $7fd9: $05
	add  b                                           ; $7fda: $80
	ld   bc, $0103                                   ; $7fdb: $01 $03 $01
	rlca                                             ; $7fde: $07
	add  h                                           ; $7fdf: $84
	rst  $38                                         ; $7fe0: $ff
	nop                                              ; $7fe1: $00
	rst  $30                                         ; $7fe2: $f7
	nop                                              ; $7fe3: $00
	inc  b                                           ; $7fe4: $04
	add  b                                           ; $7fe5: $80
	ld   bc, $0103                                   ; $7fe6: $01 $03 $01
	add  e                                           ; $7fe9: $83
	rst  $38                                         ; $7fea: $ff
	nop                                              ; $7feb: $00
	ld   hl, sp+$00                                  ; $7fec: $f8 $00
	dec  b                                           ; $7fee: $05
	add  b                                           ; $7fef: $80
	ld   bc, $0103                                   ; $7ff0: $01 $03 $01
	rlca                                             ; $7ff3: $07
	add  h                                           ; $7ff4: $84
	adc  b                                           ; $7ff5: $88
	nop                                              ; $7ff6: $00
	add  b                                           ; $7ff7: $80
	add  b                                           ; $7ff8: $80
	rst  $38                                         ; $7ff9: $ff
	nop                                              ; $7ffa: $00
	db   $eb                                         ; $7ffb: $eb
	nop                                              ; $7ffc: $00
	nop                                              ; $7ffd: $00
	nop                                              ; $7ffe: $00
	nop                                              ; $7fff: $00
