; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $026", ROMX[$4000], BANK[$26]

	inc  bc                                          ; $4000: $03
	nop                                              ; $4001: $00
	rrca                                             ; $4002: $0f
	ld   [bc], a                                     ; $4003: $02
	add  hl, de                                      ; $4004: $19
	rrca                                             ; $4005: $0f
	ld   sp, $630f                                   ; $4006: $31 $0f $63
	ccf                                              ; $4009: $3f
	ld   b, l                                        ; $400a: $45
	ld   a, $ca                                      ; $400b: $3e $ca
	ld   a, h                                        ; $400d: $7c
	call z, $cc38                                    ; $400e: $cc $38 $cc
	db   $38, $ca                                    ; $4011: $38 $ca
	ld   a, h                                        ; $4013: $7c
	ld   b, l                                        ; $4014: $45
	ld   a, $63                                      ; $4015: $3e $63
	ccf                                              ; $4017: $3f
	ld   sp, $190f                                   ; $4018: $31 $0f $19

jr_026_401b:
	rrca                                             ; $401b: $0f
	rrca                                             ; $401c: $0f
	ld   [bc], a                                     ; $401d: $02
	inc  bc                                          ; $401e: $03
	nop                                              ; $401f: $00
	ret  nz                                          ; $4020: $c0

	nop                                              ; $4021: $00
	ldh  a, [rLCDC]                                  ; $4022: $f0 $40
	sbc  b                                           ; $4024: $98
	ldh  a, [$8c]                                    ; $4025: $f0 $8c
	ldh  a, [$c6]                                    ; $4027: $f0 $c6
	db   $fc                                         ; $4029: $fc
	and  d                                           ; $402a: $a2
	ld   a, h                                        ; $402b: $7c
	ld   d, e                                        ; $402c: $53
	ld   a, $33                                      ; $402d: $3e $33
	inc  e                                           ; $402f: $1c
	inc  sp                                          ; $4030: $33
	inc  e                                           ; $4031: $1c
	ld   d, e                                        ; $4032: $53
	ld   a, $a2                                      ; $4033: $3e $a2
	ld   a, h                                        ; $4035: $7c
	add  $fc                                         ; $4036: $c6 $fc
	adc  h                                           ; $4038: $8c
	ldh  a, [$98]                                    ; $4039: $f0 $98
	ldh  a, [$f0]                                    ; $403b: $f0 $f0
	ld   b, b                                        ; $403d: $40
	ret  nz                                          ; $403e: $c0

	nop                                              ; $403f: $00
	inc  bc                                          ; $4040: $03
	nop                                              ; $4041: $00
	rrca                                             ; $4042: $0f
	ld   bc, $051e                                   ; $4043: $01 $1e $05
	inc  sp                                          ; $4046: $33
	rra                                              ; $4047: $1f
	ld   [hl], e                                     ; $4048: $73
	rrca                                             ; $4049: $0f
	ld   h, l                                        ; $404a: $65
	ld   a, $ea                                      ; $404b: $3e $ea
	inc  e                                           ; $404d: $1c
	adc  h                                           ; $404e: $8c
	ld   a, b                                        ; $404f: $78
	call z, $ea78                                    ; $4050: $cc $78 $ea
	inc  e                                           ; $4053: $1c
	ld   h, l                                        ; $4054: $65
	ld   a, $63                                      ; $4055: $3e $63
	rra                                              ; $4057: $1f
	jr   c, jr_026_4071                              ; $4058: $38 $17

	ld   e, $05                                      ; $405a: $1e $05
	ld   c, $01                                      ; $405c: $0e $01
	inc  bc                                          ; $405e: $03
	nop                                              ; $405f: $00
	ret  nz                                          ; $4060: $c0

	nop                                              ; $4061: $00
	ld   [hl], b                                     ; $4062: $70
	add  b                                           ; $4063: $80
	ld   a, b                                        ; $4064: $78
	and  b                                           ; $4065: $a0
	inc  e                                           ; $4066: $1c
	add  sp, -$3a                                    ; $4067: $e8 $c6
	ld   hl, sp-$5a                                  ; $4069: $f8 $a6
	ld   a, h                                        ; $406b: $7c
	ld   d, a                                        ; $406c: $57
	jr   c, jr_026_40a2                              ; $406d: $38 $33

	ld   e, $31                                      ; $406f: $1e $31

jr_026_4071:
	ld   e, $57                                      ; $4071: $1e $57
	jr   c, jr_026_401b                              ; $4073: $38 $a6

	ld   a, h                                        ; $4075: $7c
	adc  $f0                                         ; $4076: $ce $f0
	call z, Call_026_78f8                            ; $4078: $cc $f8 $78
	and  b                                           ; $407b: $a0
	ldh  a, [$80]                                    ; $407c: $f0 $80
	ret  nz                                          ; $407e: $c0

	nop                                              ; $407f: $00
	nop                                              ; $4080: $00
	nop                                              ; $4081: $00
	nop                                              ; $4082: $00
	nop                                              ; $4083: $00
	nop                                              ; $4084: $00
	nop                                              ; $4085: $00
	nop                                              ; $4086: $00
	nop                                              ; $4087: $00
	nop                                              ; $4088: $00
	nop                                              ; $4089: $00
	nop                                              ; $408a: $00
	nop                                              ; $408b: $00
	nop                                              ; $408c: $00
	nop                                              ; $408d: $00
	nop                                              ; $408e: $00
	nop                                              ; $408f: $00
	nop                                              ; $4090: $00
	nop                                              ; $4091: $00
	ld   bc, $0100                                   ; $4092: $01 $00 $01
	nop                                              ; $4095: $00
	inc  bc                                          ; $4096: $03
	nop                                              ; $4097: $00
	inc  bc                                          ; $4098: $03
	nop                                              ; $4099: $00
	inc  b                                           ; $409a: $04
	inc  bc                                          ; $409b: $03
	rlca                                             ; $409c: $07
	inc  bc                                          ; $409d: $03
	ld   b, $01                                      ; $409e: $06 $01
	nop                                              ; $40a0: $00
	nop                                              ; $40a1: $00

jr_026_40a2:
	nop                                              ; $40a2: $00
	nop                                              ; $40a3: $00
	nop                                              ; $40a4: $00
	nop                                              ; $40a5: $00
	nop                                              ; $40a6: $00
	nop                                              ; $40a7: $00
	nop                                              ; $40a8: $00
	nop                                              ; $40a9: $00
	rlca                                             ; $40aa: $07
	nop                                              ; $40ab: $00
	add  hl, de                                      ; $40ac: $19
	ld   b, $7a                                      ; $40ad: $06 $7a
	rlca                                             ; $40af: $07
	rst  $20                                         ; $40b0: $e7
	ccf                                              ; $40b1: $3f
	db   $e3                                         ; $40b2: $e3
	ccf                                              ; $40b3: $3f
	ld   bc, $83ff                                   ; $40b4: $01 $ff $83
	db   $fc                                         ; $40b7: $fc
	rlca                                             ; $40b8: $07
	ei                                               ; $40b9: $fb
	dec  c                                           ; $40ba: $0d
	or   $1a                                         ; $40bb: $f6 $1a
	db   $ec                                         ; $40bd: $ec

jr_026_40be:
	inc  e                                           ; $40be: $1c
	add  sp, $00                                     ; $40bf: $e8 $00
	nop                                              ; $40c1: $00
	nop                                              ; $40c2: $00
	nop                                              ; $40c3: $00
	nop                                              ; $40c4: $00
	nop                                              ; $40c5: $00
	nop                                              ; $40c6: $00
	nop                                              ; $40c7: $00
	nop                                              ; $40c8: $00
	nop                                              ; $40c9: $00
	ldh  [rP1], a                                    ; $40ca: $e0 $00
	sbc  b                                           ; $40cc: $98
	ld   h, b                                        ; $40cd: $60
	ld   e, [hl]                                     ; $40ce: $5e
	ldh  [$eb], a                                    ; $40cf: $e0 $eb
	db   $fc                                         ; $40d1: $fc
	jp   $83fc                                       ; $40d2: $c3 $fc $83


	rst  $38                                         ; $40d5: $ff
	ret  nz                                          ; $40d6: $c0

	ccf                                              ; $40d7: $3f
	ldh  [$df], a                                    ; $40d8: $e0 $df
	or   b                                           ; $40da: $b0
	ld   l, a                                        ; $40db: $6f
	ld   e, b                                        ; $40dc: $58
	scf                                              ; $40dd: $37
	jr   c, jr_026_40f7                              ; $40de: $38 $17

	nop                                              ; $40e0: $00
	nop                                              ; $40e1: $00
	nop                                              ; $40e2: $00
	nop                                              ; $40e3: $00
	nop                                              ; $40e4: $00
	nop                                              ; $40e5: $00
	nop                                              ; $40e6: $00
	nop                                              ; $40e7: $00
	nop                                              ; $40e8: $00
	nop                                              ; $40e9: $00
	nop                                              ; $40ea: $00
	nop                                              ; $40eb: $00
	nop                                              ; $40ec: $00
	nop                                              ; $40ed: $00
	nop                                              ; $40ee: $00
	nop                                              ; $40ef: $00
	nop                                              ; $40f0: $00
	nop                                              ; $40f1: $00
	add  b                                           ; $40f2: $80
	nop                                              ; $40f3: $00
	add  b                                           ; $40f4: $80
	nop                                              ; $40f5: $00
	ret  nz                                          ; $40f6: $c0

jr_026_40f7:
	nop                                              ; $40f7: $00
	ret  nz                                          ; $40f8: $c0

	nop                                              ; $40f9: $00
	ldh  [$c0], a                                    ; $40fa: $e0 $c0
	jr   nz, jr_026_40be                             ; $40fc: $20 $c0

	ld   h, b                                        ; $40fe: $60
	add  b                                           ; $40ff: $80

Jump_026_4100:
	ld   b, $01                                      ; $4100: $06 $01
	inc  b                                           ; $4102: $04
	inc  bc                                          ; $4103: $03
	rlca                                             ; $4104: $07
	inc  bc                                          ; $4105: $03
	inc  bc                                          ; $4106: $03
	nop                                              ; $4107: $00
	inc  bc                                          ; $4108: $03
	nop                                              ; $4109: $00
	ld   bc, $0100                                   ; $410a: $01 $00 $01
	nop                                              ; $410d: $00
	nop                                              ; $410e: $00
	nop                                              ; $410f: $00
	nop                                              ; $4110: $00
	nop                                              ; $4111: $00
	nop                                              ; $4112: $00
	nop                                              ; $4113: $00
	nop                                              ; $4114: $00
	nop                                              ; $4115: $00
	nop                                              ; $4116: $00
	nop                                              ; $4117: $00
	nop                                              ; $4118: $00
	nop                                              ; $4119: $00
	nop                                              ; $411a: $00
	nop                                              ; $411b: $00
	nop                                              ; $411c: $00
	nop                                              ; $411d: $00
	nop                                              ; $411e: $00
	nop                                              ; $411f: $00
	inc  e                                           ; $4120: $1c
	add  sp, $1a                                     ; $4121: $e8 $1a
	db   $ec                                         ; $4123: $ec
	dec  c                                           ; $4124: $0d
	or   $07                                         ; $4125: $f6 $07
	ei                                               ; $4127: $fb
	inc  bc                                          ; $4128: $03
	db   $fc                                         ; $4129: $fc
	pop  bc                                          ; $412a: $c1
	rst  $38                                         ; $412b: $ff
	srl  a                                           ; $412c: $cb $3f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $412e: $cf
	ccf                                              ; $412f: $3f
	ld   a, d                                        ; $4130: $7a
	rlca                                             ; $4131: $07
	add  hl, de                                      ; $4132: $19
	ld   b, $07                                      ; $4133: $06 $07
	nop                                              ; $4135: $00
	nop                                              ; $4136: $00
	nop                                              ; $4137: $00
	nop                                              ; $4138: $00
	nop                                              ; $4139: $00
	nop                                              ; $413a: $00
	nop                                              ; $413b: $00
	nop                                              ; $413c: $00
	nop                                              ; $413d: $00
	nop                                              ; $413e: $00
	nop                                              ; $413f: $00
	jr   c, jr_026_4159                              ; $4140: $38 $17

	ld   e, b                                        ; $4142: $58
	scf                                              ; $4143: $37
	or   b                                           ; $4144: $b0
	ld   l, a                                        ; $4145: $6f
	ldh  [$df], a                                    ; $4146: $e0 $df
	pop  bc                                          ; $4148: $c1
	ccf                                              ; $4149: $3f
	add  b                                           ; $414a: $80
	rst  $38                                         ; $414b: $ff
	rst  ToBoot                                         ; $414c: $c7
	db   $fc                                         ; $414d: $fc
	rst  $20                                         ; $414e: $e7
	db   $fc                                         ; $414f: $fc
	ld   e, [hl]                                     ; $4150: $5e
	ldh  [$98], a                                    ; $4151: $e0 $98
	ld   h, b                                        ; $4153: $60
	ldh  [rP1], a                                    ; $4154: $e0 $00
	nop                                              ; $4156: $00
	nop                                              ; $4157: $00
	nop                                              ; $4158: $00

jr_026_4159:
	nop                                              ; $4159: $00
	nop                                              ; $415a: $00
	nop                                              ; $415b: $00
	nop                                              ; $415c: $00
	nop                                              ; $415d: $00
	nop                                              ; $415e: $00
	nop                                              ; $415f: $00
	ld   h, b                                        ; $4160: $60
	add  b                                           ; $4161: $80
	ldh  [$c0], a                                    ; $4162: $e0 $c0
	jr   nz, @-$3e                                   ; $4164: $20 $c0

	ret  nz                                          ; $4166: $c0

	nop                                              ; $4167: $00
	ret  nz                                          ; $4168: $c0

	nop                                              ; $4169: $00
	add  b                                           ; $416a: $80
	nop                                              ; $416b: $00
	add  b                                           ; $416c: $80
	nop                                              ; $416d: $00
	nop                                              ; $416e: $00
	nop                                              ; $416f: $00
	nop                                              ; $4170: $00
	nop                                              ; $4171: $00
	nop                                              ; $4172: $00
	nop                                              ; $4173: $00
	nop                                              ; $4174: $00
	nop                                              ; $4175: $00
	nop                                              ; $4176: $00
	nop                                              ; $4177: $00
	nop                                              ; $4178: $00
	nop                                              ; $4179: $00
	nop                                              ; $417a: $00
	nop                                              ; $417b: $00
	nop                                              ; $417c: $00
	nop                                              ; $417d: $00
	nop                                              ; $417e: $00
	nop                                              ; $417f: $00
	nop                                              ; $4180: $00
	nop                                              ; $4181: $00
	nop                                              ; $4182: $00
	nop                                              ; $4183: $00
	nop                                              ; $4184: $00
	nop                                              ; $4185: $00
	nop                                              ; $4186: $00
	nop                                              ; $4187: $00
	nop                                              ; $4188: $00
	nop                                              ; $4189: $00
	nop                                              ; $418a: $00
	nop                                              ; $418b: $00
	nop                                              ; $418c: $00
	nop                                              ; $418d: $00
	nop                                              ; $418e: $00
	nop                                              ; $418f: $00
	nop                                              ; $4190: $00
	nop                                              ; $4191: $00
	ld   bc, $0100                                   ; $4192: $01 $00 $01
	nop                                              ; $4195: $00
	inc  bc                                          ; $4196: $03
	nop                                              ; $4197: $00
	inc  bc                                          ; $4198: $03
	ld   bc, $0007                                   ; $4199: $01 $07 $00
	rlca                                             ; $419c: $07
	nop                                              ; $419d: $00
	rlca                                             ; $419e: $07
	inc  bc                                          ; $419f: $03
	nop                                              ; $41a0: $00
	nop                                              ; $41a1: $00
	nop                                              ; $41a2: $00
	nop                                              ; $41a3: $00
	nop                                              ; $41a4: $00
	nop                                              ; $41a5: $00
	nop                                              ; $41a6: $00
	nop                                              ; $41a7: $00
	nop                                              ; $41a8: $00
	nop                                              ; $41a9: $00
	rlca                                             ; $41aa: $07
	nop                                              ; $41ab: $00
	dec  de                                          ; $41ac: $1b
	inc  b                                           ; $41ad: $04
	ld   [hl], d                                     ; $41ae: $72
	rrca                                             ; $41af: $0f
	cp   e                                           ; $41b0: $bb
	ld   c, a                                        ; $41b1: $4f
	add  e                                           ; $41b2: $83
	rst  $38                                         ; $41b3: $ff
	pop  bc                                          ; $41b4: $c1
	ld   a, a                                        ; $41b5: $7f
	add  e                                           ; $41b6: $83
	ld   a, h                                        ; $41b7: $7c
	rlca                                             ; $41b8: $07
	ei                                               ; $41b9: $fb
	dec  c                                           ; $41ba: $0d
	or   $1a                                         ; $41bb: $f6 $1a
	db   $ec                                         ; $41bd: $ec
	inc  e                                           ; $41be: $1c
	add  sp, $00                                     ; $41bf: $e8 $00
	nop                                              ; $41c1: $00
	nop                                              ; $41c2: $00
	nop                                              ; $41c3: $00
	nop                                              ; $41c4: $00
	nop                                              ; $41c5: $00
	nop                                              ; $41c6: $00
	nop                                              ; $41c7: $00
	nop                                              ; $41c8: $00
	nop                                              ; $41c9: $00
	ldh  [rP1], a                                    ; $41ca: $e0 $00
	ld   hl, sp-$80                                  ; $41cc: $f8 $80
	cp   $90                                         ; $41ce: $fe $90
	adc  a                                           ; $41d0: $8f
	ldh  a, [c]                                      ; $41d1: $f2
	inc  b                                           ; $41d2: $04
	rst  $38                                         ; $41d3: $ff
	add  c                                           ; $41d4: $81
	cp   $c1                                         ; $41d5: $fe $c1
	ld   a, $e1                                      ; $41d7: $3e $e1
	rst  JumpTable                                         ; $41d9: $df
	or   b                                           ; $41da: $b0
	ld   l, a                                        ; $41db: $6f
	ld   e, b                                        ; $41dc: $58
	scf                                              ; $41dd: $37
	jr   c, jr_026_41f7                              ; $41de: $38 $17

	nop                                              ; $41e0: $00
	nop                                              ; $41e1: $00
	nop                                              ; $41e2: $00
	nop                                              ; $41e3: $00
	nop                                              ; $41e4: $00
	nop                                              ; $41e5: $00
	nop                                              ; $41e6: $00
	nop                                              ; $41e7: $00
	nop                                              ; $41e8: $00
	nop                                              ; $41e9: $00
	nop                                              ; $41ea: $00
	nop                                              ; $41eb: $00
	nop                                              ; $41ec: $00
	nop                                              ; $41ed: $00
	nop                                              ; $41ee: $00
	nop                                              ; $41ef: $00
	nop                                              ; $41f0: $00
	nop                                              ; $41f1: $00
	add  b                                           ; $41f2: $80
	nop                                              ; $41f3: $00
	add  b                                           ; $41f4: $80
	nop                                              ; $41f5: $00
	ret  nz                                          ; $41f6: $c0

jr_026_41f7:
	nop                                              ; $41f7: $00
	ld   b, b                                        ; $41f8: $40
	add  b                                           ; $41f9: $80
	jr   nz, @-$3e                                   ; $41fa: $20 $c0

	ld   h, b                                        ; $41fc: $60
	add  b                                           ; $41fd: $80
	ld   h, b                                        ; $41fe: $60
	add  b                                           ; $41ff: $80
	ld   b, $01                                      ; $4200: $06 $01
	ld   b, $01                                      ; $4202: $06 $01
	inc  b                                           ; $4204: $04
	inc  bc                                          ; $4205: $03
	ld   [bc], a                                     ; $4206: $02
	ld   bc, $0003                                   ; $4207: $01 $03 $00
	ld   bc, $0100                                   ; $420a: $01 $00 $01
	nop                                              ; $420d: $00
	nop                                              ; $420e: $00
	nop                                              ; $420f: $00
	nop                                              ; $4210: $00
	nop                                              ; $4211: $00
	nop                                              ; $4212: $00
	nop                                              ; $4213: $00
	nop                                              ; $4214: $00
	nop                                              ; $4215: $00
	nop                                              ; $4216: $00
	nop                                              ; $4217: $00
	nop                                              ; $4218: $00
	nop                                              ; $4219: $00
	nop                                              ; $421a: $00
	nop                                              ; $421b: $00
	nop                                              ; $421c: $00
	nop                                              ; $421d: $00
	nop                                              ; $421e: $00
	nop                                              ; $421f: $00
	inc  e                                           ; $4220: $1c
	add  sp, $1a                                     ; $4221: $e8 $1a
	db   $ec                                         ; $4223: $ec
	dec  c                                           ; $4224: $0d
	or   $87                                         ; $4225: $f6 $87
	ei                                               ; $4227: $fb
	add  e                                           ; $4228: $83
	ld   a, h                                        ; $4229: $7c
	add  c                                           ; $422a: $81
	ld   a, a                                        ; $422b: $7f
	jr   nz, @+$01                                   ; $422c: $20 $ff

	pop  af                                          ; $422e: $f1
	ld   c, a                                        ; $422f: $4f
	ld   a, a                                        ; $4230: $7f
	add  hl, bc                                      ; $4231: $09
	rra                                              ; $4232: $1f
	ld   bc, $0007                                   ; $4233: $01 $07 $00
	nop                                              ; $4236: $00
	nop                                              ; $4237: $00
	nop                                              ; $4238: $00
	nop                                              ; $4239: $00
	nop                                              ; $423a: $00
	nop                                              ; $423b: $00
	nop                                              ; $423c: $00
	nop                                              ; $423d: $00
	nop                                              ; $423e: $00
	nop                                              ; $423f: $00
	jr   c, jr_026_4259                              ; $4240: $38 $17

	ld   e, b                                        ; $4242: $58
	scf                                              ; $4243: $37
	or   b                                           ; $4244: $b0
	ld   l, a                                        ; $4245: $6f
	ldh  [$df], a                                    ; $4246: $e0 $df
	pop  bc                                          ; $4248: $c1
	ld   a, $83                                      ; $4249: $3e $83
	cp   $c1                                         ; $424b: $fe $c1
	rst  $38                                         ; $424d: $ff
	db   $dd                                         ; $424e: $dd
	ldh  a, [c]                                      ; $424f: $f2
	ld   c, [hl]                                     ; $4250: $4e
	ldh  a, [$d8]                                    ; $4251: $f0 $d8
	jr   nz, @-$1e                                   ; $4253: $20 $e0

	nop                                              ; $4255: $00
	nop                                              ; $4256: $00
	nop                                              ; $4257: $00
	nop                                              ; $4258: $00

jr_026_4259:
	nop                                              ; $4259: $00
	nop                                              ; $425a: $00
	nop                                              ; $425b: $00
	nop                                              ; $425c: $00
	nop                                              ; $425d: $00
	nop                                              ; $425e: $00
	nop                                              ; $425f: $00
	ldh  [$c0], a                                    ; $4260: $e0 $c0
	ldh  [rP1], a                                    ; $4262: $e0 $00
	ldh  [rP1], a                                    ; $4264: $e0 $00
	ret  nz                                          ; $4266: $c0

	add  b                                           ; $4267: $80
	ret  nz                                          ; $4268: $c0

	nop                                              ; $4269: $00
	add  b                                           ; $426a: $80
	nop                                              ; $426b: $00
	add  b                                           ; $426c: $80
	nop                                              ; $426d: $00
	nop                                              ; $426e: $00
	nop                                              ; $426f: $00
	nop                                              ; $4270: $00
	nop                                              ; $4271: $00
	nop                                              ; $4272: $00
	nop                                              ; $4273: $00
	nop                                              ; $4274: $00
	nop                                              ; $4275: $00
	nop                                              ; $4276: $00
	nop                                              ; $4277: $00
	nop                                              ; $4278: $00
	nop                                              ; $4279: $00
	nop                                              ; $427a: $00
	nop                                              ; $427b: $00
	nop                                              ; $427c: $00
	nop                                              ; $427d: $00
	nop                                              ; $427e: $00
	nop                                              ; $427f: $00
	nop                                              ; $4280: $00
	nop                                              ; $4281: $00
	nop                                              ; $4282: $00
	nop                                              ; $4283: $00
	nop                                              ; $4284: $00
	nop                                              ; $4285: $00
	nop                                              ; $4286: $00
	nop                                              ; $4287: $00
	nop                                              ; $4288: $00
	nop                                              ; $4289: $00
	ld   bc, $0300                                   ; $428a: $01 $00 $03
	nop                                              ; $428d: $00
	rlca                                             ; $428e: $07
	nop                                              ; $428f: $00
	ld   [$0c07], sp                                 ; $4290: $08 $07 $0c
	rlca                                             ; $4293: $07
	jr   jr_026_429d                                 ; $4294: $18 $07

	add  hl, de                                      ; $4296: $19
	ld   b, $21                                      ; $4297: $06 $21
	ld   e, $22                                      ; $4299: $1e $22
	dec  e                                           ; $429b: $1d
	ld   a, [hl-]                                    ; $429c: $3a

jr_026_429d:
	dec  e                                           ; $429d: $1d
	ld   [hl-], a                                    ; $429e: $32
	dec  c                                           ; $429f: $0d
	nop                                              ; $42a0: $00
	nop                                              ; $42a1: $00
	nop                                              ; $42a2: $00
	nop                                              ; $42a3: $00
	rrca                                             ; $42a4: $0f
	nop                                              ; $42a5: $00
	add  hl, sp                                      ; $42a6: $39
	ld   c, $f8                                      ; $42a7: $0e $f8
	rrca                                             ; $42a9: $0f
	nop                                              ; $42aa: $00
	rst  $38                                         ; $42ab: $ff
	add  a                                           ; $42ac: $87
	ld   hl, sp-$67                                  ; $42ad: $f8 $99
	rst  $20                                         ; $42af: $e7
	daa                                              ; $42b0: $27
	sbc  $43                                         ; $42b1: $de $43
	cp   [hl]                                        ; $42b3: $be
	add  c                                           ; $42b4: $81
	ld   a, a                                        ; $42b5: $7f
	ld   bc, $03ff                                   ; $42b6: $01 $ff $03
	rst  $38                                         ; $42b9: $ff
	dec  b                                           ; $42ba: $05
	cp   $0a                                         ; $42bb: $fe $0a
	db   $fc                                         ; $42bd: $fc
	call z, $0038                                   ; $42be: $cc $38 $00
	nop                                              ; $42c1: $00
	nop                                              ; $42c2: $00
	nop                                              ; $42c3: $00
	ldh  a, [rP1]                                    ; $42c4: $f0 $00
	call z, Call_026_4f70                            ; $42c6: $cc $70 $4f
	ldh  a, [rSC]                                    ; $42c9: $f0 $02
	rst  $38                                         ; $42cb: $ff
	ldh  [$1f], a                                    ; $42cc: $e0 $1f
	sbc  b                                           ; $42ce: $98
	rst  $20                                         ; $42cf: $e7
	db   $e4                                         ; $42d0: $e4
	ld   a, e                                        ; $42d1: $7b
	jp   nz, $817d                                   ; $42d2: $c2 $7d $81

	cp   $80                                         ; $42d5: $fe $80
	rst  $38                                         ; $42d7: $ff
	ret  nz                                          ; $42d8: $c0

	rst  $38                                         ; $42d9: $ff
	and  b                                           ; $42da: $a0
	ld   a, a                                        ; $42db: $7f
	ld   d, b                                        ; $42dc: $50
	ccf                                              ; $42dd: $3f
	inc  sp                                          ; $42de: $33
	inc  e                                           ; $42df: $1c
	nop                                              ; $42e0: $00
	nop                                              ; $42e1: $00
	nop                                              ; $42e2: $00
	nop                                              ; $42e3: $00
	nop                                              ; $42e4: $00
	nop                                              ; $42e5: $00
	nop                                              ; $42e6: $00
	nop                                              ; $42e7: $00
	nop                                              ; $42e8: $00
	nop                                              ; $42e9: $00
	add  b                                           ; $42ea: $80
	nop                                              ; $42eb: $00
	ret  nz                                          ; $42ec: $c0

	nop                                              ; $42ed: $00
	ldh  [rP1], a                                    ; $42ee: $e0 $00
	ld   [hl], b                                     ; $42f0: $70
	ldh  [rAUD1SWEEP], a                             ; $42f1: $e0 $10
	ldh  [rAUD2LOW], a                               ; $42f3: $e0 $18
	ldh  [$98], a                                    ; $42f5: $e0 $98
	ld   h, b                                        ; $42f7: $60
	sbc  h                                           ; $42f8: $9c
	ld   a, b                                        ; $42f9: $78
	ld   b, h                                        ; $42fa: $44
	cp   b                                           ; $42fb: $b8
	ld   b, h                                        ; $42fc: $44
	cp   b                                           ; $42fd: $b8
	ld   c, h                                        ; $42fe: $4c
	or   b                                           ; $42ff: $b0
	ld   [hl-], a                                    ; $4300: $32
	dec  c                                           ; $4301: $0d
	ld   [hl+], a                                    ; $4302: $22
	dec  e                                           ; $4303: $1d
	ld   [hl+], a                                    ; $4304: $22
	dec  e                                           ; $4305: $1d
	add  hl, sp                                      ; $4306: $39
	ld   e, $19                                      ; $4307: $1e $19
	ld   b, $18                                      ; $4309: $06 $18
	rlca                                             ; $430b: $07
	ld   [$0b07], sp                                 ; $430c: $08 $07 $0b
	rlca                                             ; $430f: $07
	rlca                                             ; $4310: $07
	nop                                              ; $4311: $00
	inc  bc                                          ; $4312: $03
	nop                                              ; $4313: $00
	ld   bc, $0000                                   ; $4314: $01 $00 $00
	nop                                              ; $4317: $00
	nop                                              ; $4318: $00
	nop                                              ; $4319: $00
	nop                                              ; $431a: $00
	nop                                              ; $431b: $00
	nop                                              ; $431c: $00
	nop                                              ; $431d: $00
	nop                                              ; $431e: $00
	nop                                              ; $431f: $00
	call z, $ca38                                    ; $4320: $cc $38 $ca
	db   $fc                                         ; $4323: $fc
	dec  b                                           ; $4324: $05
	cp   $03                                         ; $4325: $fe $03
	rst  $38                                         ; $4327: $ff
	ld   bc, $81ff                                   ; $4328: $01 $ff $81
	ld   a, a                                        ; $432b: $7f
	ld   b, e                                        ; $432c: $43
	cp   [hl]                                        ; $432d: $be
	daa                                              ; $432e: $27
	sbc  $19                                         ; $432f: $de $19
	rst  $20                                         ; $4331: $e7
	rlca                                             ; $4332: $07
	ld   hl, sp+$40                                  ; $4333: $f8 $40
	rst  $38                                         ; $4335: $ff
	ldh  a, [c]                                      ; $4336: $f2
	rrca                                             ; $4337: $0f
	inc  sp                                          ; $4338: $33
	ld   c, $0f                                      ; $4339: $0e $0f
	nop                                              ; $433b: $00
	nop                                              ; $433c: $00
	nop                                              ; $433d: $00
	nop                                              ; $433e: $00
	nop                                              ; $433f: $00
	inc  sp                                          ; $4340: $33
	inc  e                                           ; $4341: $1c
	ld   d, e                                        ; $4342: $53
	ccf                                              ; $4343: $3f
	and  b                                           ; $4344: $a0
	ld   a, a                                        ; $4345: $7f
	ret  nz                                          ; $4346: $c0

	rst  $38                                         ; $4347: $ff
	add  b                                           ; $4348: $80
	rst  $38                                         ; $4349: $ff
	add  c                                           ; $434a: $81
	cp   $c2                                         ; $434b: $fe $c2
	ld   a, l                                        ; $434d: $7d

jr_026_434e:
	db   $e4                                         ; $434e: $e4
	ld   a, e                                        ; $434f: $7b
	sbc  b                                           ; $4350: $98
	rst  $20                                         ; $4351: $e7
	pop  hl                                          ; $4352: $e1
	rra                                              ; $4353: $1f
	ld   bc, $1fff                                   ; $4354: $01 $ff $1f
	ldh  a, [$9c]                                    ; $4357: $f0 $9c
	ld   [hl], b                                     ; $4359: $70
	ldh  a, [rP1]                                    ; $435a: $f0 $00
	nop                                              ; $435c: $00
	nop                                              ; $435d: $00
	nop                                              ; $435e: $00
	nop                                              ; $435f: $00
	ld   c, h                                        ; $4360: $4c
	or   b                                           ; $4361: $b0
	ld   e, h                                        ; $4362: $5c
	cp   b                                           ; $4363: $b8
	ld   b, h                                        ; $4364: $44
	cp   b                                           ; $4365: $b8
	add  h                                           ; $4366: $84
	ld   a, b                                        ; $4367: $78
	sbc  b                                           ; $4368: $98
	ld   h, b                                        ; $4369: $60
	jr   @-$1e                                       ; $436a: $18 $e0

	jr   nc, jr_026_434e                             ; $436c: $30 $e0

	db   $10                                         ; $436e: $10
	ldh  [$e0], a                                    ; $436f: $e0 $e0
	nop                                              ; $4371: $00
	ret  nz                                          ; $4372: $c0

	nop                                              ; $4373: $00
	add  b                                           ; $4374: $80
	nop                                              ; $4375: $00
	nop                                              ; $4376: $00
	nop                                              ; $4377: $00
	nop                                              ; $4378: $00
	nop                                              ; $4379: $00
	nop                                              ; $437a: $00
	nop                                              ; $437b: $00
	nop                                              ; $437c: $00
	nop                                              ; $437d: $00
	nop                                              ; $437e: $00
	nop                                              ; $437f: $00
	nop                                              ; $4380: $00
	nop                                              ; $4381: $00
	nop                                              ; $4382: $00
	nop                                              ; $4383: $00
	nop                                              ; $4384: $00
	nop                                              ; $4385: $00
	nop                                              ; $4386: $00
	nop                                              ; $4387: $00
	nop                                              ; $4388: $00
	nop                                              ; $4389: $00
	ld   bc, $0300                                   ; $438a: $01 $00 $03
	ld   bc, $0107                                   ; $438d: $01 $07 $01
	ld   c, $01                                      ; $4390: $0e $01
	ld   [$1c07], sp                                 ; $4392: $08 $07 $1c
	rrca                                             ; $4395: $0f
	add  hl, de                                      ; $4396: $19
	ld   b, $39                                      ; $4397: $06 $39
	ld   b, $22                                      ; $4399: $06 $22
	dec  e                                           ; $439b: $1d
	ld   [hl+], a                                    ; $439c: $22
	dec  e                                           ; $439d: $1d
	ld   a, [hl-]                                    ; $439e: $3a
	dec  e                                           ; $439f: $1d
	nop                                              ; $43a0: $00
	nop                                              ; $43a1: $00
	nop                                              ; $43a2: $00
	nop                                              ; $43a3: $00
	rrca                                             ; $43a4: $0f
	nop                                              ; $43a5: $00
	inc  sp                                          ; $43a6: $33
	inc  c                                           ; $43a7: $0c
	ldh  a, [$1f]                                    ; $43a8: $f0 $1f
	ld   [hl], b                                     ; $43aa: $70
	sbc  a                                           ; $43ab: $9f
	rlca                                             ; $43ac: $07
	ld   hl, sp-$65                                  ; $43ad: $f8 $9b
	rst  $20                                         ; $43af: $e7
	inc  hl                                          ; $43b0: $23
	rst  JumpTable                                         ; $43b1: $df
	ld   b, e                                        ; $43b2: $43
	cp   a                                           ; $43b3: $bf
	add  e                                           ; $43b4: $83
	ld   a, a                                        ; $43b5: $7f

jr_026_43b6:
	inc  bc                                          ; $43b6: $03
	rst  $38                                         ; $43b7: $ff
	ld   h, e                                        ; $43b8: $63
	sbc  a                                           ; $43b9: $9f
	ld   h, l                                        ; $43ba: $65
	sbc  [hl]                                        ; $43bb: $9e
	ld   l, d                                        ; $43bc: $6a
	db   $fc                                         ; $43bd: $fc
	inc  c                                           ; $43be: $0c
	ld   hl, sp+$00                                  ; $43bf: $f8 $00
	nop                                              ; $43c1: $00
	nop                                              ; $43c2: $00
	nop                                              ; $43c3: $00
	ldh  a, [rP1]                                    ; $43c4: $f0 $00
	sbc  h                                           ; $43c6: $9c
	ldh  [$9f], a                                    ; $43c7: $e0 $9f
	db   $e4                                         ; $43c9: $e4
	dec  b                                           ; $43ca: $05
	cp   $e1                                         ; $43cb: $fe $e1
	ld   e, $58                                      ; $43cd: $1e $58
	rst  $20                                         ; $43cf: $e7
	add  h                                           ; $43d0: $84
	ei                                               ; $43d1: $fb
	ld   [hl], d                                     ; $43d2: $72
	call $ceb1                                       ; $43d3: $cd $b1 $ce
	jr   nc, @+$01                                   ; $43d6: $30 $ff

	ret  nz                                          ; $43d8: $c0

	rst  $38                                         ; $43d9: $ff
	and  b                                           ; $43da: $a0
	ld   a, a                                        ; $43db: $7f
	ld   d, b                                        ; $43dc: $50
	ccf                                              ; $43dd: $3f
	jr   nc, jr_026_43ff                             ; $43de: $30 $1f

	nop                                              ; $43e0: $00
	nop                                              ; $43e1: $00
	nop                                              ; $43e2: $00
	nop                                              ; $43e3: $00
	nop                                              ; $43e4: $00
	nop                                              ; $43e5: $00
	nop                                              ; $43e6: $00
	nop                                              ; $43e7: $00
	nop                                              ; $43e8: $00
	nop                                              ; $43e9: $00
	add  b                                           ; $43ea: $80
	nop                                              ; $43eb: $00
	ret  nz                                          ; $43ec: $c0

	nop                                              ; $43ed: $00
	ldh  [$c0], a                                    ; $43ee: $e0 $c0
	db   $10                                         ; $43f0: $10
	ldh  [$30], a                                    ; $43f1: $e0 $30
	ret  nz                                          ; $43f3: $c0

	jr   c, jr_026_43b6                              ; $43f4: $38 $c0

	cp   b                                           ; $43f6: $b8
	ld   [hl], b                                     ; $43f7: $70
	sub  h                                           ; $43f8: $94
	ld   a, b                                        ; $43f9: $78
	ld   b, h                                        ; $43fa: $44
	cp   b                                           ; $43fb: $b8
	ld   c, h                                        ; $43fc: $4c
	or   b                                           ; $43fd: $b0
	ld   c, h                                        ; $43fe: $4c

jr_026_43ff:
	or   b                                           ; $43ff: $b0
	ld   [hl-], a                                    ; $4400: $32
	dec  c                                           ; $4401: $0d
	ld   [hl-], a                                    ; $4402: $32
	dec  c                                           ; $4403: $0d
	ld   [hl+], a                                    ; $4404: $22
	dec  e                                           ; $4405: $1d
	ld   hl, $1d1e                                   ; $4406: $21 $1e $1d
	ld   c, $1c                                      ; $4409: $0e $1c
	inc  bc                                          ; $440b: $03
	inc  c                                           ; $440c: $0c
	inc  bc                                          ; $440d: $03
	add  hl, bc                                      ; $440e: $09
	rlca                                             ; $440f: $07
	dec  b                                           ; $4410: $05
	inc  bc                                          ; $4411: $03
	inc  bc                                          ; $4412: $03
	nop                                              ; $4413: $00
	ld   bc, $0000                                   ; $4414: $01 $00 $00
	nop                                              ; $4417: $00
	nop                                              ; $4418: $00
	nop                                              ; $4419: $00
	nop                                              ; $441a: $00
	nop                                              ; $441b: $00
	nop                                              ; $441c: $00
	nop                                              ; $441d: $00
	nop                                              ; $441e: $00
	nop                                              ; $441f: $00
	inc  c                                           ; $4420: $0c
	ld   hl, sp+$0a                                  ; $4421: $f8 $0a
	db   $fc                                         ; $4423: $fc
	dec  b                                           ; $4424: $05
	cp   $03                                         ; $4425: $fe $03
	rst  $38                                         ; $4427: $ff
	ld   bc, $8eff                                   ; $4428: $01 $ff $8e
	ld   [hl], e                                     ; $442b: $73
	ld   c, l                                        ; $442c: $4d
	or   e                                           ; $442d: $b3
	ld   l, $df                                      ; $442e: $2e $df
	sbc  c                                           ; $4430: $99
	rst  $20                                         ; $4431: $e7
	add  a                                           ; $4432: $87
	ld   a, b                                        ; $4433: $78
	and  b                                           ; $4434: $a0
	ld   a, a                                        ; $4435: $7f
	ld   sp, hl                                      ; $4436: $f9
	daa                                              ; $4437: $27
	add  hl, sp                                      ; $4438: $39
	rlca                                             ; $4439: $07
	rrca                                             ; $443a: $0f
	nop                                              ; $443b: $00
	nop                                              ; $443c: $00
	nop                                              ; $443d: $00
	nop                                              ; $443e: $00
	nop                                              ; $443f: $00
	jr   nc, jr_026_4461                             ; $4440: $30 $1f

	ld   d, b                                        ; $4442: $50
	ccf                                              ; $4443: $3f
	and  [hl]                                        ; $4444: $a6
	ld   a, c                                        ; $4445: $79
	add  $f9                                         ; $4446: $c6 $f9
	add  [hl]                                        ; $4448: $86
	rst  $38                                         ; $4449: $ff
	pop  bc                                          ; $444a: $c1

jr_026_444b:
	cp   $c2                                         ; $444b: $fe $c2
	db   $fd                                         ; $444d: $fd
	call nz, $d9fb                                   ; $444e: $c4 $fb $d9
	rst  $20                                         ; $4451: $e7
	ldh  [$1f], a                                    ; $4452: $e0 $1f
	ld   c, $f9                                      ; $4454: $0e $f9
	rrca                                             ; $4456: $0f
	ld   hl, sp-$34                                  ; $4457: $f8 $cc
	jr   nc, jr_026_444b                             ; $4459: $30 $f0

	nop                                              ; $445b: $00

jr_026_445c:
	nop                                              ; $445c: $00

jr_026_445d:
	nop                                              ; $445d: $00
	nop                                              ; $445e: $00
	nop                                              ; $445f: $00

jr_026_4460:
	ld   e, h                                        ; $4460: $5c

jr_026_4461:
	cp   b                                           ; $4461: $b8
	ld   b, h                                        ; $4462: $44
	cp   b                                           ; $4463: $b8
	ld   b, h                                        ; $4464: $44
	cp   b                                           ; $4465: $b8
	sbc  h                                           ; $4466: $9c
	ld   h, b                                        ; $4467: $60
	sbc  b                                           ; $4468: $98
	ld   h, b                                        ; $4469: $60
	jr   c, jr_026_445c                              ; $446a: $38 $f0

	db   $10                                         ; $446c: $10
	ldh  [rSVBK], a                                  ; $446d: $e0 $70
	add  b                                           ; $446f: $80
	ldh  [$80], a                                    ; $4470: $e0 $80
	ret  nz                                          ; $4472: $c0

	add  b                                           ; $4473: $80
	add  b                                           ; $4474: $80
	nop                                              ; $4475: $00
	nop                                              ; $4476: $00
	nop                                              ; $4477: $00
	nop                                              ; $4478: $00
	nop                                              ; $4479: $00
	nop                                              ; $447a: $00
	nop                                              ; $447b: $00
	nop                                              ; $447c: $00
	nop                                              ; $447d: $00
	nop                                              ; $447e: $00
	nop                                              ; $447f: $00
	inc  bc                                          ; $4480: $03
	nop                                              ; $4481: $00
	rrca                                             ; $4482: $0f
	ld   [bc], a                                     ; $4483: $02
	add  hl, de                                      ; $4484: $19
	rrca                                             ; $4485: $0f
	ld   sp, $630f                                   ; $4486: $31 $0f $63
	ccf                                              ; $4489: $3f
	ld   b, l                                        ; $448a: $45
	ld   a, $ca                                      ; $448b: $3e $ca
	ld   a, l                                        ; $448d: $7d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $448e: $cf
	jr   c, jr_026_4460                              ; $448f: $38 $cf

	jr   c, jr_026_445d                              ; $4491: $38 $ca

	ld   a, l                                        ; $4493: $7d
	ld   b, l                                        ; $4494: $45
	ld   a, $63                                      ; $4495: $3e $63
	ccf                                              ; $4497: $3f
	ld   sp, $190f                                   ; $4498: $31 $0f $19
	rrca                                             ; $449b: $0f
	rrca                                             ; $449c: $0f
	ld   [bc], a                                     ; $449d: $02
	inc  bc                                          ; $449e: $03
	nop                                              ; $449f: $00
	ret  nz                                          ; $44a0: $c0

	nop                                              ; $44a1: $00

jr_026_44a2:
	ldh  a, [rLCDC]                                  ; $44a2: $f0 $40
	sbc  b                                           ; $44a4: $98
	ldh  a, [$8c]                                    ; $44a5: $f0 $8c
	ldh  a, [$c6]                                    ; $44a7: $f0 $c6
	db   $fc                                         ; $44a9: $fc
	and  d                                           ; $44aa: $a2
	ld   a, h                                        ; $44ab: $7c
	ld   d, e                                        ; $44ac: $53
	cp   [hl]                                        ; $44ad: $be
	di                                               ; $44ae: $f3
	inc  e                                           ; $44af: $1c
	di                                               ; $44b0: $f3
	inc  e                                           ; $44b1: $1c
	ld   d, e                                        ; $44b2: $53
	cp   [hl]                                        ; $44b3: $be
	and  d                                           ; $44b4: $a2
	ld   a, h                                        ; $44b5: $7c
	add  $fc                                         ; $44b6: $c6 $fc
	adc  h                                           ; $44b8: $8c
	ldh  a, [$98]                                    ; $44b9: $f0 $98
	ldh  a, [$f0]                                    ; $44bb: $f0 $f0
	ld   b, b                                        ; $44bd: $40
	ret  nz                                          ; $44be: $c0

	nop                                              ; $44bf: $00
	inc  bc                                          ; $44c0: $03
	nop                                              ; $44c1: $00
	rrca                                             ; $44c2: $0f
	ld   bc, $051e                                   ; $44c3: $01 $1e $05
	inc  sp                                          ; $44c6: $33
	rra                                              ; $44c7: $1f
	ld   [hl], e                                     ; $44c8: $73
	rrca                                             ; $44c9: $0f
	ld   h, l                                        ; $44ca: $65
	ld   a, $ea                                      ; $44cb: $3e $ea
	dec  e                                           ; $44cd: $1d
	adc  l                                           ; $44ce: $8d
	ld   a, d                                        ; $44cf: $7a
	call $eb7a                                       ; $44d0: $cd $7a $eb
	inc  e                                           ; $44d3: $1c
	ld   h, l                                        ; $44d4: $65
	ld   a, $63                                      ; $44d5: $3e $63
	rra                                              ; $44d7: $1f
	jr   c, jr_026_44f1                              ; $44d8: $38 $17

	ld   e, $05                                      ; $44da: $1e $05
	ld   c, $01                                      ; $44dc: $0e $01
	inc  bc                                          ; $44de: $03
	nop                                              ; $44df: $00
	ret  nz                                          ; $44e0: $c0

	nop                                              ; $44e1: $00
	ld   [hl], b                                     ; $44e2: $70
	add  b                                           ; $44e3: $80
	ld   a, b                                        ; $44e4: $78
	and  b                                           ; $44e5: $a0
	inc  e                                           ; $44e6: $1c
	add  sp, -$3a                                    ; $44e7: $e8 $c6
	ld   hl, sp-$5a                                  ; $44e9: $f8 $a6
	ld   a, h                                        ; $44eb: $7c
	rst  $10                                         ; $44ec: $d7
	jr   c, jr_026_44a2                              ; $44ed: $38 $b3

	ld   e, [hl]                                     ; $44ef: $5e
	or   c                                           ; $44f0: $b1

jr_026_44f1:
	ld   e, [hl]                                     ; $44f1: $5e
	ld   d, a                                        ; $44f2: $57
	cp   b                                           ; $44f3: $b8
	and  [hl]                                        ; $44f4: $a6
	ld   a, h                                        ; $44f5: $7c
	adc  $f0                                         ; $44f6: $ce $f0
	call z, Call_026_78f8                            ; $44f8: $cc $f8 $78
	and  b                                           ; $44fb: $a0
	ldh  a, [$80]                                    ; $44fc: $f0 $80
	ret  nz                                          ; $44fe: $c0

	nop                                              ; $44ff: $00
	nop                                              ; $4500: $00
	nop                                              ; $4501: $00
	nop                                              ; $4502: $00
	nop                                              ; $4503: $00
	nop                                              ; $4504: $00
	nop                                              ; $4505: $00
	nop                                              ; $4506: $00
	nop                                              ; $4507: $00
	nop                                              ; $4508: $00
	nop                                              ; $4509: $00
	rlca                                             ; $450a: $07
	nop                                              ; $450b: $00
	add  hl, de                                      ; $450c: $19
	ld   b, $7a                                      ; $450d: $06 $7a
	rlca                                             ; $450f: $07
	rst  $20                                         ; $4510: $e7
	ccf                                              ; $4511: $3f
	db   $e3                                         ; $4512: $e3
	ccf                                              ; $4513: $3f
	ld   bc, $83ff                                   ; $4514: $01 $ff $83
	db   $fc                                         ; $4517: $fc
	rlca                                             ; $4518: $07
	ei                                               ; $4519: $fb
	dec  c                                           ; $451a: $0d
	or   $1a                                         ; $451b: $f6 $1a
	db   $ed                                         ; $451d: $ed
	rra                                              ; $451e: $1f
	add  sp, $00                                     ; $451f: $e8 $00
	nop                                              ; $4521: $00
	nop                                              ; $4522: $00
	nop                                              ; $4523: $00
	nop                                              ; $4524: $00
	nop                                              ; $4525: $00
	nop                                              ; $4526: $00
	nop                                              ; $4527: $00
	nop                                              ; $4528: $00
	nop                                              ; $4529: $00
	ldh  [rP1], a                                    ; $452a: $e0 $00
	sbc  b                                           ; $452c: $98
	ld   h, b                                        ; $452d: $60
	ld   e, [hl]                                     ; $452e: $5e
	ldh  [$eb], a                                    ; $452f: $e0 $eb
	db   $fc                                         ; $4531: $fc
	jp   $83fc                                       ; $4532: $c3 $fc $83


	rst  $38                                         ; $4535: $ff
	ret  nz                                          ; $4536: $c0

	ccf                                              ; $4537: $3f
	ldh  [$df], a                                    ; $4538: $e0 $df
	or   b                                           ; $453a: $b0
	ld   l, a                                        ; $453b: $6f
	ld   e, b                                        ; $453c: $58
	or   a                                           ; $453d: $b7
	ld   hl, sp+$17                                  ; $453e: $f8 $17
	rra                                              ; $4540: $1f
	add  sp, $1a                                     ; $4541: $e8 $1a
	db   $ed                                         ; $4543: $ed
	dec  c                                           ; $4544: $0d
	or   $07                                         ; $4545: $f6 $07
	ei                                               ; $4547: $fb
	inc  bc                                          ; $4548: $03
	db   $fc                                         ; $4549: $fc
	pop  bc                                          ; $454a: $c1
	rst  $38                                         ; $454b: $ff
	srl  a                                           ; $454c: $cb $3f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $454e: $cf
	ccf                                              ; $454f: $3f
	ld   a, d                                        ; $4550: $7a
	rlca                                             ; $4551: $07
	add  hl, de                                      ; $4552: $19
	ld   b, $07                                      ; $4553: $06 $07
	nop                                              ; $4555: $00
	nop                                              ; $4556: $00
	nop                                              ; $4557: $00
	nop                                              ; $4558: $00
	nop                                              ; $4559: $00
	nop                                              ; $455a: $00
	nop                                              ; $455b: $00
	nop                                              ; $455c: $00
	nop                                              ; $455d: $00
	nop                                              ; $455e: $00
	nop                                              ; $455f: $00
	ld   hl, sp+$17                                  ; $4560: $f8 $17
	ld   e, b                                        ; $4562: $58
	or   a                                           ; $4563: $b7
	or   b                                           ; $4564: $b0
	ld   l, a                                        ; $4565: $6f
	ldh  [$df], a                                    ; $4566: $e0 $df
	pop  bc                                          ; $4568: $c1
	ccf                                              ; $4569: $3f
	add  b                                           ; $456a: $80
	rst  $38                                         ; $456b: $ff
	rst  ToBoot                                         ; $456c: $c7
	db   $fc                                         ; $456d: $fc
	rst  $20                                         ; $456e: $e7
	db   $fc                                         ; $456f: $fc
	ld   e, [hl]                                     ; $4570: $5e
	ldh  [$98], a                                    ; $4571: $e0 $98
	ld   h, b                                        ; $4573: $60
	ldh  [rP1], a                                    ; $4574: $e0 $00
	nop                                              ; $4576: $00
	nop                                              ; $4577: $00
	nop                                              ; $4578: $00
	nop                                              ; $4579: $00
	nop                                              ; $457a: $00
	nop                                              ; $457b: $00
	nop                                              ; $457c: $00
	nop                                              ; $457d: $00
	nop                                              ; $457e: $00
	nop                                              ; $457f: $00
	nop                                              ; $4580: $00
	nop                                              ; $4581: $00
	nop                                              ; $4582: $00
	nop                                              ; $4583: $00
	nop                                              ; $4584: $00
	nop                                              ; $4585: $00
	nop                                              ; $4586: $00
	nop                                              ; $4587: $00
	nop                                              ; $4588: $00
	nop                                              ; $4589: $00
	rlca                                             ; $458a: $07
	nop                                              ; $458b: $00
	dec  de                                          ; $458c: $1b
	inc  b                                           ; $458d: $04
	ld   [hl], d                                     ; $458e: $72
	rrca                                             ; $458f: $0f
	cp   e                                           ; $4590: $bb
	ld   c, a                                        ; $4591: $4f
	add  e                                           ; $4592: $83
	rst  $38                                         ; $4593: $ff
	pop  bc                                          ; $4594: $c1
	ld   a, a                                        ; $4595: $7f
	add  e                                           ; $4596: $83
	ld   a, h                                        ; $4597: $7c
	rlca                                             ; $4598: $07
	ei                                               ; $4599: $fb
	dec  c                                           ; $459a: $0d
	or   $1a                                         ; $459b: $f6 $1a
	db   $ed                                         ; $459d: $ed
	dec  e                                           ; $459e: $1d
	ld   [rRAMG], a                                  ; $459f: $ea $00 $00
	nop                                              ; $45a2: $00
	nop                                              ; $45a3: $00
	nop                                              ; $45a4: $00
	nop                                              ; $45a5: $00
	nop                                              ; $45a6: $00
	nop                                              ; $45a7: $00
	nop                                              ; $45a8: $00
	nop                                              ; $45a9: $00
	ldh  [rP1], a                                    ; $45aa: $e0 $00
	ld   hl, sp-$80                                  ; $45ac: $f8 $80
	cp   $90                                         ; $45ae: $fe $90
	adc  a                                           ; $45b0: $8f
	ldh  a, [c]                                      ; $45b1: $f2
	inc  b                                           ; $45b2: $04
	rst  $38                                         ; $45b3: $ff
	add  c                                           ; $45b4: $81
	cp   $c1                                         ; $45b5: $fe $c1
	ld   a, $e1                                      ; $45b7: $3e $e1
	rst  JumpTable                                         ; $45b9: $df
	or   b                                           ; $45ba: $b0
	ld   l, a                                        ; $45bb: $6f
	ret  c                                           ; $45bc: $d8

	scf                                              ; $45bd: $37
	cp   b                                           ; $45be: $b8
	ld   d, a                                        ; $45bf: $57
	dec  e                                           ; $45c0: $1d
	ld   [$ec1b], a                                  ; $45c1: $ea $1b $ec
	dec  c                                           ; $45c4: $0d
	or   $87                                         ; $45c5: $f6 $87
	ei                                               ; $45c7: $fb
	add  e                                           ; $45c8: $83
	ld   a, h                                        ; $45c9: $7c
	add  c                                           ; $45ca: $81
	ld   a, a                                        ; $45cb: $7f
	jr   nz, @+$01                                   ; $45cc: $20 $ff

	pop  af                                          ; $45ce: $f1
	ld   c, a                                        ; $45cf: $4f
	ld   a, a                                        ; $45d0: $7f
	add  hl, bc                                      ; $45d1: $09
	rra                                              ; $45d2: $1f
	ld   bc, $0007                                   ; $45d3: $01 $07 $00
	nop                                              ; $45d6: $00
	nop                                              ; $45d7: $00
	nop                                              ; $45d8: $00
	nop                                              ; $45d9: $00
	nop                                              ; $45da: $00
	nop                                              ; $45db: $00
	nop                                              ; $45dc: $00
	nop                                              ; $45dd: $00
	nop                                              ; $45de: $00
	nop                                              ; $45df: $00
	cp   b                                           ; $45e0: $b8
	ld   d, a                                        ; $45e1: $57
	ld   e, b                                        ; $45e2: $58
	or   a                                           ; $45e3: $b7
	or   b                                           ; $45e4: $b0
	ld   l, a                                        ; $45e5: $6f
	ldh  [$df], a                                    ; $45e6: $e0 $df
	pop  bc                                          ; $45e8: $c1
	ld   a, $83                                      ; $45e9: $3e $83
	cp   $c1                                         ; $45eb: $fe $c1
	rst  $38                                         ; $45ed: $ff
	db   $dd                                         ; $45ee: $dd
	ldh  a, [c]                                      ; $45ef: $f2
	ld   c, [hl]                                     ; $45f0: $4e
	ldh  a, [$d8]                                    ; $45f1: $f0 $d8
	jr   nz, @-$1e                                   ; $45f3: $20 $e0

	nop                                              ; $45f5: $00
	nop                                              ; $45f6: $00
	nop                                              ; $45f7: $00
	nop                                              ; $45f8: $00
	nop                                              ; $45f9: $00
	nop                                              ; $45fa: $00
	nop                                              ; $45fb: $00
	nop                                              ; $45fc: $00
	nop                                              ; $45fd: $00
	nop                                              ; $45fe: $00
	nop                                              ; $45ff: $00
	nop                                              ; $4600: $00
	nop                                              ; $4601: $00
	nop                                              ; $4602: $00
	nop                                              ; $4603: $00
	rrca                                             ; $4604: $0f
	nop                                              ; $4605: $00
	add  hl, sp                                      ; $4606: $39
	ld   c, $f8                                      ; $4607: $0e $f8
	rrca                                             ; $4609: $0f
	nop                                              ; $460a: $00
	rst  $38                                         ; $460b: $ff
	add  a                                           ; $460c: $87

jr_026_460d:
	ld   hl, sp-$67                                  ; $460d: $f8 $99
	rst  $20                                         ; $460f: $e7
	daa                                              ; $4610: $27
	sbc  $43                                         ; $4611: $de $43
	cp   [hl]                                        ; $4613: $be
	add  c                                           ; $4614: $81
	ld   a, a                                        ; $4615: $7f
	ld   bc, $03ff                                   ; $4616: $01 $ff $03
	rst  $38                                         ; $4619: $ff
	dec  b                                           ; $461a: $05
	cp   $0a                                         ; $461b: $fe $0a
	db   $fd                                         ; $461d: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $461e: $cf
	jr   c, jr_026_4621                              ; $461f: $38 $00

jr_026_4621:
	nop                                              ; $4621: $00
	nop                                              ; $4622: $00
	nop                                              ; $4623: $00
	ldh  a, [rP1]                                    ; $4624: $f0 $00
	call z, Call_026_4f70                            ; $4626: $cc $70 $4f
	ldh  a, [rSC]                                    ; $4629: $f0 $02
	rst  $38                                         ; $462b: $ff
	ldh  [$1f], a                                    ; $462c: $e0 $1f
	sbc  b                                           ; $462e: $98
	rst  $20                                         ; $462f: $e7
	db   $e4                                         ; $4630: $e4
	ld   a, e                                        ; $4631: $7b
	jp   nz, $817d                                   ; $4632: $c2 $7d $81

	cp   $80                                         ; $4635: $fe $80
	rst  $38                                         ; $4637: $ff
	ret  nz                                          ; $4638: $c0

	rst  $38                                         ; $4639: $ff
	and  b                                           ; $463a: $a0
	ld   a, a                                        ; $463b: $7f
	ld   d, b                                        ; $463c: $50
	cp   a                                           ; $463d: $bf
	di                                               ; $463e: $f3
	inc  e                                           ; $463f: $1c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4640: $cf
	jr   c, jr_026_460d                              ; $4641: $38 $ca

	db   $fd                                         ; $4643: $fd
	dec  b                                           ; $4644: $05
	cp   $03                                         ; $4645: $fe $03
	rst  $38                                         ; $4647: $ff
	ld   bc, $81ff                                   ; $4648: $01 $ff $81
	ld   a, a                                        ; $464b: $7f
	ld   b, e                                        ; $464c: $43
	cp   [hl]                                        ; $464d: $be
	daa                                              ; $464e: $27
	sbc  $19                                         ; $464f: $de $19
	rst  $20                                         ; $4651: $e7
	rlca                                             ; $4652: $07
	ld   hl, sp+$40                                  ; $4653: $f8 $40
	rst  $38                                         ; $4655: $ff
	ldh  a, [c]                                      ; $4656: $f2
	rrca                                             ; $4657: $0f
	inc  sp                                          ; $4658: $33
	ld   c, $0f                                      ; $4659: $0e $0f
	nop                                              ; $465b: $00
	nop                                              ; $465c: $00
	nop                                              ; $465d: $00
	nop                                              ; $465e: $00
	nop                                              ; $465f: $00
	di                                               ; $4660: $f3
	inc  e                                           ; $4661: $1c
	ld   d, e                                        ; $4662: $53
	cp   a                                           ; $4663: $bf
	and  b                                           ; $4664: $a0
	ld   a, a                                        ; $4665: $7f
	ret  nz                                          ; $4666: $c0

	rst  $38                                         ; $4667: $ff
	add  b                                           ; $4668: $80
	rst  $38                                         ; $4669: $ff
	add  c                                           ; $466a: $81
	cp   $c2                                         ; $466b: $fe $c2
	ld   a, l                                        ; $466d: $7d
	db   $e4                                         ; $466e: $e4
	ld   a, e                                        ; $466f: $7b
	sbc  b                                           ; $4670: $98
	rst  $20                                         ; $4671: $e7
	pop  hl                                          ; $4672: $e1
	rra                                              ; $4673: $1f
	ld   bc, $1fff                                   ; $4674: $01 $ff $1f
	ldh  a, [$9c]                                    ; $4677: $f0 $9c
	ld   [hl], b                                     ; $4679: $70
	ldh  a, [rP1]                                    ; $467a: $f0 $00
	nop                                              ; $467c: $00
	nop                                              ; $467d: $00
	nop                                              ; $467e: $00
	nop                                              ; $467f: $00
	nop                                              ; $4680: $00
	nop                                              ; $4681: $00
	nop                                              ; $4682: $00
	nop                                              ; $4683: $00
	rrca                                             ; $4684: $0f
	nop                                              ; $4685: $00
	inc  sp                                          ; $4686: $33
	inc  c                                           ; $4687: $0c
	ldh  a, [$1f]                                    ; $4688: $f0 $1f
	ld   [hl], b                                     ; $468a: $70
	sbc  a                                           ; $468b: $9f
	rlca                                             ; $468c: $07
	ld   hl, sp-$65                                  ; $468d: $f8 $9b
	rst  $20                                         ; $468f: $e7
	inc  hl                                          ; $4690: $23
	rst  JumpTable                                         ; $4691: $df
	ld   b, e                                        ; $4692: $43
	cp   a                                           ; $4693: $bf
	add  e                                           ; $4694: $83
	ld   a, a                                        ; $4695: $7f
	inc  bc                                          ; $4696: $03
	rst  $38                                         ; $4697: $ff
	ld   h, e                                        ; $4698: $63
	sbc  a                                           ; $4699: $9f
	ld   h, l                                        ; $469a: $65
	sbc  [hl]                                        ; $469b: $9e
	ld   l, d                                        ; $469c: $6a
	db   $fd                                         ; $469d: $fd
	dec  c                                           ; $469e: $0d
	ld   a, [rRAMG]                                  ; $469f: $fa $00 $00
	nop                                              ; $46a2: $00
	nop                                              ; $46a3: $00
	ldh  a, [rP1]                                    ; $46a4: $f0 $00
	sbc  h                                           ; $46a6: $9c
	ldh  [$9f], a                                    ; $46a7: $e0 $9f
	db   $e4                                         ; $46a9: $e4
	dec  b                                           ; $46aa: $05
	cp   $e1                                         ; $46ab: $fe $e1
	ld   e, $58                                      ; $46ad: $1e $58
	rst  $20                                         ; $46af: $e7
	add  h                                           ; $46b0: $84
	ei                                               ; $46b1: $fb
	ld   [hl], d                                     ; $46b2: $72
	call $ceb1                                       ; $46b3: $cd $b1 $ce
	jr   nc, @+$01                                   ; $46b6: $30 $ff

	ret  nz                                          ; $46b8: $c0

	rst  $38                                         ; $46b9: $ff
	and  b                                           ; $46ba: $a0
	ld   a, a                                        ; $46bb: $7f
	ret  nc                                          ; $46bc: $d0

	ccf                                              ; $46bd: $3f
	or   b                                           ; $46be: $b0
	ld   e, a                                        ; $46bf: $5f
	dec  c                                           ; $46c0: $0d
	ld   a, [$fc0b]                                  ; $46c1: $fa $0b $fc
	dec  b                                           ; $46c4: $05
	cp   $03                                         ; $46c5: $fe $03
	rst  $38                                         ; $46c7: $ff
	ld   bc, $8eff                                   ; $46c8: $01 $ff $8e
	ld   [hl], e                                     ; $46cb: $73
	ld   c, l                                        ; $46cc: $4d
	or   e                                           ; $46cd: $b3
	ld   l, $df                                      ; $46ce: $2e $df
	sbc  c                                           ; $46d0: $99
	rst  $20                                         ; $46d1: $e7
	add  a                                           ; $46d2: $87
	ld   a, b                                        ; $46d3: $78
	and  b                                           ; $46d4: $a0
	ld   a, a                                        ; $46d5: $7f
	ld   sp, hl                                      ; $46d6: $f9
	daa                                              ; $46d7: $27
	add  hl, sp                                      ; $46d8: $39
	rlca                                             ; $46d9: $07
	rrca                                             ; $46da: $0f
	nop                                              ; $46db: $00
	nop                                              ; $46dc: $00
	nop                                              ; $46dd: $00
	nop                                              ; $46de: $00
	nop                                              ; $46df: $00
	or   b                                           ; $46e0: $b0
	ld   e, a                                        ; $46e1: $5f
	ld   d, b                                        ; $46e2: $50
	cp   a                                           ; $46e3: $bf
	and  [hl]                                        ; $46e4: $a6
	ld   a, c                                        ; $46e5: $79
	add  $f9                                         ; $46e6: $c6 $f9
	add  [hl]                                        ; $46e8: $86
	rst  $38                                         ; $46e9: $ff
	pop  bc                                          ; $46ea: $c1

jr_026_46eb:
	cp   $c2                                         ; $46eb: $fe $c2
	db   $fd                                         ; $46ed: $fd
	call nz, $d9fb                                   ; $46ee: $c4 $fb $d9
	rst  $20                                         ; $46f1: $e7
	ldh  [$1f], a                                    ; $46f2: $e0 $1f
	ld   c, $f9                                      ; $46f4: $0e $f9
	rrca                                             ; $46f6: $0f
	ld   hl, sp-$34                                  ; $46f7: $f8 $cc
	jr   nc, jr_026_46eb                             ; $46f9: $30 $f0

	nop                                              ; $46fb: $00
	nop                                              ; $46fc: $00
	nop                                              ; $46fd: $00
	nop                                              ; $46fe: $00
	nop                                              ; $46ff: $00
	nop                                              ; $4700: $00
	nop                                              ; $4701: $00
	nop                                              ; $4702: $00
	nop                                              ; $4703: $00
	ld   c, $0e                                      ; $4704: $0e $0e
	rra                                              ; $4706: $1f
	rra                                              ; $4707: $1f
	ccf                                              ; $4708: $3f
	ccf                                              ; $4709: $3f
	ld   [hl+], a                                    ; $470a: $22
	ld   [hl+], a                                    ; $470b: $22
	ld   b, h                                        ; $470c: $44
	ld   b, h                                        ; $470d: $44
	ld   a, b                                        ; $470e: $78
	ld   a, b                                        ; $470f: $78
	ld   [hl], b                                     ; $4710: $70
	ld   [hl], b                                     ; $4711: $70
	ld   h, b                                        ; $4712: $60
	ld   h, b                                        ; $4713: $60
	nop                                              ; $4714: $00
	nop                                              ; $4715: $00
	nop                                              ; $4716: $00
	nop                                              ; $4717: $00
	nop                                              ; $4718: $00
	nop                                              ; $4719: $00
	jr   nz, jr_026_473c                             ; $471a: $20 $20

	jr   nc, jr_026_474e                             ; $471c: $30 $30

	ld   h, b                                        ; $471e: $60
	ld   h, b                                        ; $471f: $60
	nop                                              ; $4720: $00
	nop                                              ; $4721: $00
	inc  a                                           ; $4722: $3c
	inc  a                                           ; $4723: $3c
	ld   [hl], b                                     ; $4724: $70
	ld   [hl], b                                     ; $4725: $70
	ld   a, b                                        ; $4726: $78
	ld   a, b                                        ; $4727: $78
	ld   a, [$a2fa]                                  ; $4728: $fa $fa $a2
	and  d                                           ; $472b: $a2
	sbc  b                                           ; $472c: $98
	sbc  b                                           ; $472d: $98
	sbc  h                                           ; $472e: $9c
	sbc  h                                           ; $472f: $9c
	add  [hl]                                        ; $4730: $86
	add  [hl]                                        ; $4731: $86
	ld   b, $06                                      ; $4732: $06 $06
	ld   [bc], a                                     ; $4734: $02
	ld   [bc], a                                     ; $4735: $02
	nop                                              ; $4736: $00
	nop                                              ; $4737: $00
	nop                                              ; $4738: $00
	nop                                              ; $4739: $00
	nop                                              ; $473a: $00
	nop                                              ; $473b: $00

jr_026_473c:
	nop                                              ; $473c: $00
	nop                                              ; $473d: $00
	inc  b                                           ; $473e: $04
	inc  b                                           ; $473f: $04
	ld   d, h                                        ; $4740: $54
	ld   b, b                                        ; $4741: $40
	ld   a, [hl-]                                    ; $4742: $3a
	nop                                              ; $4743: $00
	dec  a                                           ; $4744: $3d
	nop                                              ; $4745: $00
	ld   c, b                                        ; $4746: $48
	nop                                              ; $4747: $00
	rlca                                             ; $4748: $07
	nop                                              ; $4749: $00
	rlca                                             ; $474a: $07
	nop                                              ; $474b: $00
	nop                                              ; $474c: $00
	nop                                              ; $474d: $00

jr_026_474e:
	inc  bc                                          ; $474e: $03
	nop                                              ; $474f: $00
	rlca                                             ; $4750: $07
	nop                                              ; $4751: $00
	rrca                                             ; $4752: $0f
	nop                                              ; $4753: $00
	ld   c, $00                                      ; $4754: $0e $00
	nop                                              ; $4756: $00
	nop                                              ; $4757: $00
	nop                                              ; $4758: $00
	ld   c, $0e                                      ; $4759: $0e $0e
	nop                                              ; $475b: $00
	inc  c                                           ; $475c: $0c
	inc  bc                                          ; $475d: $03
	nop                                              ; $475e: $00
	nop                                              ; $475f: $00
	nop                                              ; $4760: $00
	nop                                              ; $4761: $00
	nop                                              ; $4762: $00
	nop                                              ; $4763: $00
	ld   c, b                                        ; $4764: $48
	nop                                              ; $4765: $00
	sbc  b                                           ; $4766: $98
	nop                                              ; $4767: $00
	ld   h, b                                        ; $4768: $60
	nop                                              ; $4769: $00
	ld   [hl], b                                     ; $476a: $70
	nop                                              ; $476b: $00
	nop                                              ; $476c: $00
	nop                                              ; $476d: $00
	ldh  a, [rP1]                                    ; $476e: $f0 $00
	ld   [hl], b                                     ; $4770: $70
	nop                                              ; $4771: $00
	ld   [hl], b                                     ; $4772: $70
	nop                                              ; $4773: $00
	ldh  a, [rP1]                                    ; $4774: $f0 $00
	nop                                              ; $4776: $00
	nop                                              ; $4777: $00
	nop                                              ; $4778: $00
	ldh  [$e0], a                                    ; $4779: $e0 $e0
	nop                                              ; $477b: $00
	ld   b, b                                        ; $477c: $40
	jr   nc, jr_026_477f                             ; $477d: $30 $00

jr_026_477f:
	nop                                              ; $477f: $00
	nop                                              ; $4780: $00
	nop                                              ; $4781: $00
	nop                                              ; $4782: $00
	nop                                              ; $4783: $00
	nop                                              ; $4784: $00
	nop                                              ; $4785: $00
	ld   c, $0e                                      ; $4786: $0e $0e
	ccf                                              ; $4788: $3f
	ccf                                              ; $4789: $3f
	cpl                                              ; $478a: $2f
	cpl                                              ; $478b: $2f
	ld   b, d                                        ; $478c: $42
	ld   b, d                                        ; $478d: $42
	ld   d, [hl]                                     ; $478e: $56
	ld   d, [hl]                                     ; $478f: $56
	ld   l, h                                        ; $4790: $6c
	ld   l, h                                        ; $4791: $6c
	inc  a                                           ; $4792: $3c
	inc  a                                           ; $4793: $3c
	db   $10                                         ; $4794: $10
	stop                                             ; $4795: $10 $00
	nop                                              ; $4797: $00
	nop                                              ; $4798: $00
	nop                                              ; $4799: $00
	nop                                              ; $479a: $00
	nop                                              ; $479b: $00
	jr   nz, jr_026_47be                             ; $479c: $20 $20

	ld   h, b                                        ; $479e: $60
	ld   h, b                                        ; $479f: $60
	nop                                              ; $47a0: $00
	nop                                              ; $47a1: $00
	nop                                              ; $47a2: $00
	nop                                              ; $47a3: $00
	inc  e                                           ; $47a4: $1c
	inc  e                                           ; $47a5: $1c
	ld   a, b                                        ; $47a6: $78
	ld   a, b                                        ; $47a7: $78
	ld   a, b                                        ; $47a8: $78
	ld   a, b                                        ; $47a9: $78
	cp   $fe                                         ; $47aa: $fe $fe
	and  d                                           ; $47ac: $a2
	and  d                                           ; $47ad: $a2
	ld   [$1c08], sp                                 ; $47ae: $08 $08 $1c
	inc  e                                           ; $47b1: $1c
	add  [hl]                                        ; $47b2: $86
	add  [hl]                                        ; $47b3: $86
	add  [hl]                                        ; $47b4: $86
	add  [hl]                                        ; $47b5: $86
	ld   [bc], a                                     ; $47b6: $02
	ld   [bc], a                                     ; $47b7: $02
	nop                                              ; $47b8: $00
	nop                                              ; $47b9: $00
	nop                                              ; $47ba: $00
	nop                                              ; $47bb: $00
	nop                                              ; $47bc: $00
	nop                                              ; $47bd: $00

jr_026_47be:
	nop                                              ; $47be: $00
	nop                                              ; $47bf: $00
	ld   d, b                                        ; $47c0: $50
	ld   b, b                                        ; $47c1: $40
	ld   a, [hl-]                                    ; $47c2: $3a
	nop                                              ; $47c3: $00
	dec  a                                           ; $47c4: $3d
	nop                                              ; $47c5: $00
	ld   c, b                                        ; $47c6: $48
	nop                                              ; $47c7: $00
	rlca                                             ; $47c8: $07
	nop                                              ; $47c9: $00
	rlca                                             ; $47ca: $07
	nop                                              ; $47cb: $00
	nop                                              ; $47cc: $00
	nop                                              ; $47cd: $00
	inc  bc                                          ; $47ce: $03
	nop                                              ; $47cf: $00
	rlca                                             ; $47d0: $07
	nop                                              ; $47d1: $00
	rrca                                             ; $47d2: $0f
	nop                                              ; $47d3: $00
	ld   c, $00                                      ; $47d4: $0e $00
	nop                                              ; $47d6: $00
	nop                                              ; $47d7: $00
	nop                                              ; $47d8: $00
	ld   c, $0e                                      ; $47d9: $0e $0e
	nop                                              ; $47db: $00
	inc  c                                           ; $47dc: $0c
	inc  bc                                          ; $47dd: $03
	nop                                              ; $47de: $00
	nop                                              ; $47df: $00
	inc  b                                           ; $47e0: $04
	inc  b                                           ; $47e1: $04
	nop                                              ; $47e2: $00
	nop                                              ; $47e3: $00
	ld   [$9800], sp                                 ; $47e4: $08 $00 $98
	nop                                              ; $47e7: $00
	ld   b, b                                        ; $47e8: $40
	nop                                              ; $47e9: $00
	ld   [hl], b                                     ; $47ea: $70
	nop                                              ; $47eb: $00
	nop                                              ; $47ec: $00
	nop                                              ; $47ed: $00
	ldh  a, [rP1]                                    ; $47ee: $f0 $00
	ld   [hl], b                                     ; $47f0: $70
	nop                                              ; $47f1: $00
	ld   [hl], b                                     ; $47f2: $70
	nop                                              ; $47f3: $00
	ldh  a, [rP1]                                    ; $47f4: $f0 $00
	nop                                              ; $47f6: $00
	nop                                              ; $47f7: $00
	nop                                              ; $47f8: $00
	ldh  [$e0], a                                    ; $47f9: $e0 $e0
	nop                                              ; $47fb: $00
	ld   b, b                                        ; $47fc: $40
	jr   nc, jr_026_47ff                             ; $47fd: $30 $00

jr_026_47ff:
	nop                                              ; $47ff: $00
	nop                                              ; $4800: $00
	nop                                              ; $4801: $00
	nop                                              ; $4802: $00
	nop                                              ; $4803: $00
	nop                                              ; $4804: $00
	nop                                              ; $4805: $00
	ld   c, $0e                                      ; $4806: $0e $0e
	ccf                                              ; $4808: $3f
	ccf                                              ; $4809: $3f
	cpl                                              ; $480a: $2f
	cpl                                              ; $480b: $2f
	ld   c, d                                        ; $480c: $4a
	ld   c, d                                        ; $480d: $4a
	ld   d, h                                        ; $480e: $54
	ld   d, h                                        ; $480f: $54
	ld   a, b                                        ; $4810: $78
	ld   a, b                                        ; $4811: $78
	ld   [hl], b                                     ; $4812: $70
	ld   [hl], b                                     ; $4813: $70
	ld   h, b                                        ; $4814: $60
	ld   h, b                                        ; $4815: $60
	ld   b, b                                        ; $4816: $40
	ld   b, b                                        ; $4817: $40
	nop                                              ; $4818: $00
	nop                                              ; $4819: $00
	nop                                              ; $481a: $00
	nop                                              ; $481b: $00
	nop                                              ; $481c: $00
	nop                                              ; $481d: $00
	nop                                              ; $481e: $00
	nop                                              ; $481f: $00
	nop                                              ; $4820: $00
	nop                                              ; $4821: $00
	nop                                              ; $4822: $00
	nop                                              ; $4823: $00
	inc  e                                           ; $4824: $1c
	inc  e                                           ; $4825: $1c
	ld   a, b                                        ; $4826: $78
	ld   a, b                                        ; $4827: $78
	ld   a, b                                        ; $4828: $78
	ld   a, b                                        ; $4829: $78
	and  $e6                                         ; $482a: $e6 $e6
	add  d                                           ; $482c: $82
	add  d                                           ; $482d: $82
	adc  b                                           ; $482e: $88
	adc  b                                           ; $482f: $88
	or   [hl]                                        ; $4830: $b6
	or   [hl]                                        ; $4831: $b6
	cp   h                                           ; $4832: $bc
	cp   h                                           ; $4833: $bc
	ld   [$0008], sp                                 ; $4834: $08 $08 $00
	nop                                              ; $4837: $00
	nop                                              ; $4838: $00
	nop                                              ; $4839: $00
	nop                                              ; $483a: $00
	nop                                              ; $483b: $00
	inc  b                                           ; $483c: $04
	inc  b                                           ; $483d: $04
	ld   b, $06                                      ; $483e: $06 $06
	stop                                             ; $4840: $10 $00
	ld   a, [hl-]                                    ; $4842: $3a
	nop                                              ; $4843: $00
	dec  a                                           ; $4844: $3d
	nop                                              ; $4845: $00
	ld   c, b                                        ; $4846: $48
	nop                                              ; $4847: $00
	rlca                                             ; $4848: $07
	nop                                              ; $4849: $00
	rlca                                             ; $484a: $07
	nop                                              ; $484b: $00
	nop                                              ; $484c: $00
	nop                                              ; $484d: $00
	inc  bc                                          ; $484e: $03
	nop                                              ; $484f: $00
	rlca                                             ; $4850: $07
	nop                                              ; $4851: $00
	rrca                                             ; $4852: $0f
	nop                                              ; $4853: $00
	ld   c, $00                                      ; $4854: $0e $00
	nop                                              ; $4856: $00
	nop                                              ; $4857: $00
	nop                                              ; $4858: $00
	ld   c, $0e                                      ; $4859: $0e $0e
	nop                                              ; $485b: $00
	inc  c                                           ; $485c: $0c
	inc  bc                                          ; $485d: $03
	nop                                              ; $485e: $00
	nop                                              ; $485f: $00
	inc  b                                           ; $4860: $04
	inc  b                                           ; $4861: $04
	nop                                              ; $4862: $00
	nop                                              ; $4863: $00
	nop                                              ; $4864: $00
	nop                                              ; $4865: $00
	adc  b                                           ; $4866: $88
	nop                                              ; $4867: $00
	ld   e, b                                        ; $4868: $58
	nop                                              ; $4869: $00
	ld   h, b                                        ; $486a: $60
	nop                                              ; $486b: $00
	nop                                              ; $486c: $00
	nop                                              ; $486d: $00
	ldh  a, [rP1]                                    ; $486e: $f0 $00
	ld   [hl], b                                     ; $4870: $70
	nop                                              ; $4871: $00
	ld   [hl], b                                     ; $4872: $70
	nop                                              ; $4873: $00
	ldh  a, [rP1]                                    ; $4874: $f0 $00
	nop                                              ; $4876: $00
	nop                                              ; $4877: $00
	nop                                              ; $4878: $00
	ldh  [$e0], a                                    ; $4879: $e0 $e0
	nop                                              ; $487b: $00
	ld   b, b                                        ; $487c: $40
	jr   nc, jr_026_487f                             ; $487d: $30 $00

jr_026_487f:
	nop                                              ; $487f: $00
	nop                                              ; $4880: $00
	nop                                              ; $4881: $00
	nop                                              ; $4882: $00
	nop                                              ; $4883: $00
	ld   e, $1e                                      ; $4884: $1e $1e
	ld   a, $3e                                      ; $4886: $3e $3e
	ld   sp, $2231                                   ; $4888: $31 $31 $22
	ld   [hl+], a                                    ; $488b: $22
	ld   e, b                                        ; $488c: $58
	ld   e, b                                        ; $488d: $58
	ld   [hl], b                                     ; $488e: $70
	ld   [hl], b                                     ; $488f: $70
	ld   [hl], b                                     ; $4890: $70
	ld   [hl], b                                     ; $4891: $70
	ld   h, b                                        ; $4892: $60
	ld   h, b                                        ; $4893: $60
	nop                                              ; $4894: $00
	nop                                              ; $4895: $00
	nop                                              ; $4896: $00
	nop                                              ; $4897: $00
	nop                                              ; $4898: $00
	nop                                              ; $4899: $00
	jr   nz, jr_026_48bc                             ; $489a: $20 $20

	db   $10                                         ; $489c: $10
	db   $10                                         ; $489d: $10
	jr   nz, jr_026_48c0                             ; $489e: $20 $20

	nop                                              ; $48a0: $00
	nop                                              ; $48a1: $00
	ld   a, b                                        ; $48a2: $78
	ld   a, b                                        ; $48a3: $78
	ld   [hl], b                                     ; $48a4: $70
	ld   [hl], b                                     ; $48a5: $70
	ld   d, b                                        ; $48a6: $50
	ld   d, b                                        ; $48a7: $50
	ld   h, h                                        ; $48a8: $64
	ld   h, h                                        ; $48a9: $64
	sub  [hl]                                        ; $48aa: $96
	sub  [hl]                                        ; $48ab: $96
	sbc  b                                           ; $48ac: $98
	sbc  b                                           ; $48ad: $98
	adc  h                                           ; $48ae: $8c
	adc  h                                           ; $48af: $8c
	ld   b, $06                                      ; $48b0: $06 $06
	ld   b, $06                                      ; $48b2: $06 $06
	ld   [bc], a                                     ; $48b4: $02
	ld   [bc], a                                     ; $48b5: $02
	nop                                              ; $48b6: $00
	nop                                              ; $48b7: $00
	nop                                              ; $48b8: $00
	nop                                              ; $48b9: $00
	nop                                              ; $48ba: $00
	nop                                              ; $48bb: $00

jr_026_48bc:
	nop                                              ; $48bc: $00
	nop                                              ; $48bd: $00
	nop                                              ; $48be: $00
	nop                                              ; $48bf: $00

jr_026_48c0:
	ld   d, h                                        ; $48c0: $54
	ld   b, b                                        ; $48c1: $40
	ld   a, [hl-]                                    ; $48c2: $3a
	nop                                              ; $48c3: $00
	dec  a                                           ; $48c4: $3d
	nop                                              ; $48c5: $00
	ld   c, b                                        ; $48c6: $48
	nop                                              ; $48c7: $00
	rlca                                             ; $48c8: $07
	nop                                              ; $48c9: $00
	rlca                                             ; $48ca: $07
	nop                                              ; $48cb: $00
	nop                                              ; $48cc: $00
	nop                                              ; $48cd: $00
	inc  bc                                          ; $48ce: $03
	nop                                              ; $48cf: $00
	rlca                                             ; $48d0: $07
	nop                                              ; $48d1: $00
	rrca                                             ; $48d2: $0f
	nop                                              ; $48d3: $00
	ld   c, $00                                      ; $48d4: $0e $00
	nop                                              ; $48d6: $00
	nop                                              ; $48d7: $00
	nop                                              ; $48d8: $00
	ld   c, $0e                                      ; $48d9: $0e $0e
	nop                                              ; $48db: $00
	inc  c                                           ; $48dc: $0c
	inc  bc                                          ; $48dd: $03
	nop                                              ; $48de: $00
	nop                                              ; $48df: $00
	stop                                             ; $48e0: $10 $00
	jr   jr_026_48e4                                 ; $48e2: $18 $00

jr_026_48e4:
	ld   e, h                                        ; $48e4: $5c
	nop                                              ; $48e5: $00
	sub  b                                           ; $48e6: $90
	nop                                              ; $48e7: $00
	ld   [hl], b                                     ; $48e8: $70
	nop                                              ; $48e9: $00
	ld   [hl], b                                     ; $48ea: $70
	nop                                              ; $48eb: $00
	nop                                              ; $48ec: $00
	nop                                              ; $48ed: $00
	ldh  a, [rP1]                                    ; $48ee: $f0 $00
	ld   [hl], b                                     ; $48f0: $70
	nop                                              ; $48f1: $00
	ld   [hl], b                                     ; $48f2: $70
	nop                                              ; $48f3: $00
	ldh  a, [rP1]                                    ; $48f4: $f0 $00
	nop                                              ; $48f6: $00
	nop                                              ; $48f7: $00
	nop                                              ; $48f8: $00
	ldh  [$e0], a                                    ; $48f9: $e0 $e0
	nop                                              ; $48fb: $00
	ld   b, b                                        ; $48fc: $40
	jr   nc, jr_026_48ff                             ; $48fd: $30 $00

jr_026_48ff:
	nop                                              ; $48ff: $00
	nop                                              ; $4900: $00
	nop                                              ; $4901: $00
	ld   c, $0e                                      ; $4902: $0e $0e
	ld   de, $2011                                   ; $4904: $11 $11 $20
	jr   nz, @+$42                                   ; $4907: $20 $40

	ld   b, b                                        ; $4909: $40
	ld   e, l                                        ; $490a: $5d
	ld   b, b                                        ; $490b: $40
	cp   e                                           ; $490c: $bb
	add  e                                           ; $490d: $83
	add  [hl]                                        ; $490e: $86
	add  a                                           ; $490f: $87
	adc  [hl]                                        ; $4910: $8e
	adc  a                                           ; $4911: $8f
	sbc  a                                           ; $4912: $9f
	sbc  e                                           ; $4913: $9b
	rst  $38                                         ; $4914: $ff
	ldh  a, [c]                                      ; $4915: $f2
	cp   a                                           ; $4916: $bf
	di                                               ; $4917: $f3
	xor  a                                           ; $4918: $af
	ld   sp, hl                                      ; $4919: $f9
	ld   d, [hl]                                     ; $491a: $56
	ld   e, a                                        ; $491b: $5f
	ld   c, b                                        ; $491c: $48
	ld   c, a                                        ; $491d: $4f
	sbc  a                                           ; $491e: $9f
	sbc  a                                           ; $491f: $9f
	inc  a                                           ; $4920: $3c
	inc  a                                           ; $4921: $3c
	ld   b, d                                        ; $4922: $42
	ld   b, d                                        ; $4923: $42
	adc  h                                           ; $4924: $8c
	adc  h                                           ; $4925: $8c
	add  [hl]                                        ; $4926: $86
	add  [hl]                                        ; $4927: $86
	dec  b                                           ; $4928: $05
	ld   bc, $4d5d                                   ; $4929: $01 $5d $4d
	ld   h, a                                        ; $492c: $67
	ld   h, a                                        ; $492d: $67
	ld   b, e                                        ; $492e: $43
	ld   h, e                                        ; $492f: $63
	ld   e, c                                        ; $4930: $59
	ld   a, c                                        ; $4931: $79
	ld   sp, hl                                      ; $4932: $f9
	ld   sp, hl                                      ; $4933: $f9
	db   $fd                                         ; $4934: $fd
	push de                                          ; $4935: $d5
	cp   $de                                         ; $4936: $fe $de
	inc  a                                           ; $4938: $3c
	db   $e4                                         ; $4939: $e4
	inc  e                                           ; $493a: $1c
	db   $fc                                         ; $493b: $fc
	ld   l, h                                        ; $493c: $6c
	db   $fc                                         ; $493d: $fc
	sbc  d                                           ; $493e: $9a
	ld   a, [$abaa]                                  ; $493f: $fa $aa $ab
	push bc                                          ; $4942: $c5
	push bc                                          ; $4943: $c5
	ld   b, d                                        ; $4944: $42
	ld   b, d                                        ; $4945: $42
	or   a                                           ; $4946: $b7
	or   a                                           ; $4947: $b7
	ld   hl, sp-$38                                  ; $4948: $f8 $c8
	add  sp, -$68                                    ; $494a: $e8 $98
	ld   b, a                                        ; $494c: $47
	ld   a, a                                        ; $494d: $7f
	inc  h                                           ; $494e: $24
	inc  a                                           ; $494f: $3c
	jr   jr_026_496a                                 ; $4950: $18 $18

	db   $10                                         ; $4952: $10
	db   $10                                         ; $4953: $10
	ld   de, $1f11                                   ; $4954: $11 $11 $1f
	rra                                              ; $4957: $1f
	ld   de, $1111                                   ; $4958: $11 $11 $11
	ld   de, $1010                                   ; $495b: $11 $10 $10
	rst  $38                                         ; $495e: $ff
	rst  $38                                         ; $495f: $ff
	sbc  [hl]                                        ; $4960: $9e
	cp   $c8                                         ; $4961: $fe $c8
	ld   hl, sp-$4c                                  ; $4963: $f8 $b4
	and  h                                           ; $4965: $a4
	ld   h, h                                        ; $4966: $64
	ld   h, h                                        ; $4967: $64
	sbc  b                                           ; $4968: $98
	sbc  b                                           ; $4969: $98

jr_026_496a:
	adc  b                                           ; $496a: $88
	adc  b                                           ; $496b: $88
	ld   hl, sp-$08                                  ; $496c: $f8 $f8
	ld   [$8808], sp                                 ; $496e: $08 $08 $88
	adc  b                                           ; $4971: $88
	adc  b                                           ; $4972: $88
	adc  b                                           ; $4973: $88
	ld   [$f008], sp                                 ; $4974: $08 $08 $f0
	ldh  a, [rAUD1SWEEP]                             ; $4977: $f0 $10
	db   $10                                         ; $4979: $10
	db   $10                                         ; $497a: $10
	db   $10                                         ; $497b: $10
	adc  b                                           ; $497c: $88
	adc  b                                           ; $497d: $88
	rst  $38                                         ; $497e: $ff
	rst  $38                                         ; $497f: $ff
	nop                                              ; $4980: $00
	nop                                              ; $4981: $00
	nop                                              ; $4982: $00
	nop                                              ; $4983: $00
	rrca                                             ; $4984: $0f
	rrca                                             ; $4985: $0f
	ld   sp, $4031                                   ; $4986: $31 $31 $40
	ld   b, b                                        ; $4989: $40
	ld   d, b                                        ; $498a: $50
	ld   b, b                                        ; $498b: $40
	cp   l                                           ; $498c: $bd
	add  b                                           ; $498d: $80
	xor  c                                           ; $498e: $a9
	add  c                                           ; $498f: $81
	sub  d                                           ; $4990: $92
	add  e                                           ; $4991: $83
	jp   $efc3                                       ; $4992: $c3 $c3 $ef


	db   $ed                                         ; $4995: $ed
	cp   a                                           ; $4996: $bf
	ldh  a, [c]                                      ; $4997: $f2
	cp   a                                           ; $4998: $bf
	di                                               ; $4999: $f3
	ld   l, a                                        ; $499a: $6f
	ld   a, c                                        ; $499b: $79
	ld   d, [hl]                                     ; $499c: $56
	ld   e, a                                        ; $499d: $5f
	sbc  c                                           ; $499e: $99
	sbc  a                                           ; $499f: $9f
	nop                                              ; $49a0: $00
	nop                                              ; $49a1: $00
	inc  e                                           ; $49a2: $1c
	inc  e                                           ; $49a3: $1c
	ld   [hl+], a                                    ; $49a4: $22
	ld   [hl+], a                                    ; $49a5: $22
	add  h                                           ; $49a6: $84
	add  h                                           ; $49a7: $84
	add  [hl]                                        ; $49a8: $86
	add  [hl]                                        ; $49a9: $86
	ld   bc, $5d01                                   ; $49aa: $01 $01 $5d
	ld   c, c                                        ; $49ad: $49
	rst  $30                                         ; $49ae: $f7
	ld   h, a                                        ; $49af: $67
	jp   Jump_026_5963                               ; $49b0: $c3 $63 $59


	ld   a, c                                        ; $49b3: $79
	ld   a, c                                        ; $49b4: $79
	ld   a, c                                        ; $49b5: $79
	db   $fd                                         ; $49b6: $fd
	push de                                          ; $49b7: $d5
	cp   $de                                         ; $49b8: $fe $de
	inc  a                                           ; $49ba: $3c
	db   $e4                                         ; $49bb: $e4
	inc  e                                           ; $49bc: $1c
	db   $fc                                         ; $49bd: $fc
	call z, $affc                                    ; $49be: $cc $fc $af
	xor  a                                           ; $49c1: $af
	ld   b, l                                        ; $49c2: $45
	ld   b, l                                        ; $49c3: $45
	ld   b, d                                        ; $49c4: $42
	ld   b, d                                        ; $49c5: $42
	or   a                                           ; $49c6: $b7
	or   a                                           ; $49c7: $b7
	ld   hl, sp-$38                                  ; $49c8: $f8 $c8
	add  sp, -$68                                    ; $49ca: $e8 $98
	ld   b, a                                        ; $49cc: $47
	ld   a, a                                        ; $49cd: $7f
	inc  h                                           ; $49ce: $24
	inc  a                                           ; $49cf: $3c
	jr   jr_026_49ea                                 ; $49d0: $18 $18

	db   $10                                         ; $49d2: $10
	db   $10                                         ; $49d3: $10
	ld   de, $1f11                                   ; $49d4: $11 $11 $1f
	rra                                              ; $49d7: $1f
	ld   de, $1111                                   ; $49d8: $11 $11 $11
	ld   de, $1010                                   ; $49db: $11 $10 $10
	rst  $38                                         ; $49de: $ff
	rst  $38                                         ; $49df: $ff
	ld   a, [hl-]                                    ; $49e0: $3a
	ld   a, [$ee9e]                                  ; $49e1: $fa $9e $ee
	call nc, Call_026_64e4                           ; $49e4: $d4 $e4 $64
	ld   h, h                                        ; $49e7: $64
	cp   h                                           ; $49e8: $bc
	cp   h                                           ; $49e9: $bc

jr_026_49ea:
	adc  b                                           ; $49ea: $88
	adc  b                                           ; $49eb: $88
	ld   hl, sp-$08                                  ; $49ec: $f8 $f8
	ld   [$8808], sp                                 ; $49ee: $08 $08 $88
	adc  b                                           ; $49f1: $88
	adc  b                                           ; $49f2: $88
	adc  b                                           ; $49f3: $88
	ld   [$f008], sp                                 ; $49f4: $08 $08 $f0
	ldh  a, [rAUD1SWEEP]                             ; $49f7: $f0 $10
	db   $10                                         ; $49f9: $10
	db   $10                                         ; $49fa: $10
	db   $10                                         ; $49fb: $10
	adc  b                                           ; $49fc: $88
	adc  b                                           ; $49fd: $88
	rst  $38                                         ; $49fe: $ff
	rst  $38                                         ; $49ff: $ff
	nop                                              ; $4a00: $00
	nop                                              ; $4a01: $00
	nop                                              ; $4a02: $00
	nop                                              ; $4a03: $00
	rrca                                             ; $4a04: $0f
	rrca                                             ; $4a05: $0f
	ld   sp, $4031                                   ; $4a06: $31 $31 $40
	ld   b, b                                        ; $4a09: $40
	ld   d, b                                        ; $4a0a: $50
	ld   b, b                                        ; $4a0b: $40
	or   l                                           ; $4a0c: $b5
	add  b                                           ; $4a0d: $80
	xor  e                                           ; $4a0e: $ab
	add  d                                           ; $4a0f: $82
	add  l                                           ; $4a10: $85
	add  a                                           ; $4a11: $87
	adc  c                                           ; $4a12: $89
	adc  a                                           ; $4a13: $8f
	sbc  a                                           ; $4a14: $9f
	sbc  a                                           ; $4a15: $9f
	cp   a                                           ; $4a16: $bf
	and  e                                           ; $4a17: $a3
	ld   a, a                                        ; $4a18: $7f
	ld   l, a                                        ; $4a19: $6f
	inc  a                                           ; $4a1a: $3c
	daa                                              ; $4a1b: $27
	jr   c, @+$41                                    ; $4a1c: $38 $3f

	ld   sp, $003f                                   ; $4a1e: $31 $3f $00
	nop                                              ; $4a21: $00
	inc  e                                           ; $4a22: $1c
	inc  e                                           ; $4a23: $1c
	ld   [hl+], a                                    ; $4a24: $22
	ld   [hl+], a                                    ; $4a25: $22
	add  h                                           ; $4a26: $84
	add  h                                           ; $4a27: $84
	add  [hl]                                        ; $4a28: $86
	add  [hl]                                        ; $4a29: $86
	add  hl, de                                      ; $4a2a: $19
	ld   bc, $417d                                   ; $4a2b: $01 $7d $41
	ld   [hl], a                                     ; $4a2e: $77
	ld   h, a                                        ; $4a2f: $67
	ld   c, c                                        ; $4a30: $49
	ld   b, c                                        ; $4a31: $41
	ld   b, e                                        ; $4a32: $43
	ld   b, e                                        ; $4a33: $43
	rst  $30                                         ; $4a34: $f7
	or   a                                           ; $4a35: $b7
	db   $fd                                         ; $4a36: $fd
	rrca                                             ; $4a37: $0f
	db   $fd                                         ; $4a38: $fd
	ld   a, a                                        ; $4a39: $7f
	or   $9e                                         ; $4a3a: $f6 $9e
	ld   [$39fa], a                                  ; $4a3c: $ea $fa $39
	ld   sp, hl                                      ; $4a3f: $f9
	cpl                                              ; $4a40: $2f
	cpl                                              ; $4a41: $2f
	ld   b, l                                        ; $4a42: $45
	ld   b, l                                        ; $4a43: $45
	ld   b, d                                        ; $4a44: $42
	ld   b, d                                        ; $4a45: $42
	or   a                                           ; $4a46: $b7
	or   a                                           ; $4a47: $b7
	ld   hl, sp-$38                                  ; $4a48: $f8 $c8
	add  sp, -$68                                    ; $4a4a: $e8 $98
	ld   b, a                                        ; $4a4c: $47
	ld   a, a                                        ; $4a4d: $7f
	inc  h                                           ; $4a4e: $24
	inc  a                                           ; $4a4f: $3c
	jr   jr_026_4a6a                                 ; $4a50: $18 $18

	db   $10                                         ; $4a52: $10
	db   $10                                         ; $4a53: $10
	ld   de, $1f11                                   ; $4a54: $11 $11 $1f
	rra                                              ; $4a57: $1f
	ld   de, $1111                                   ; $4a58: $11 $11 $11
	ld   de, $1010                                   ; $4a5b: $11 $10 $10
	rst  $38                                         ; $4a5e: $ff
	rst  $38                                         ; $4a5f: $ff
	sbc  d                                           ; $4a60: $9a
	ld   a, [$fe4e]                                  ; $4a61: $fa $4e $fe
	call z, Call_026_74f4                            ; $4a64: $cc $f4 $74
	ld   h, h                                        ; $4a67: $64
	and  h                                           ; $4a68: $a4
	and  h                                           ; $4a69: $a4

jr_026_4a6a:
	sbc  b                                           ; $4a6a: $98
	sbc  b                                           ; $4a6b: $98
	ld   hl, sp-$08                                  ; $4a6c: $f8 $f8
	ld   [$8808], sp                                 ; $4a6e: $08 $08 $88
	adc  b                                           ; $4a71: $88
	adc  b                                           ; $4a72: $88
	adc  b                                           ; $4a73: $88
	ld   [$f008], sp                                 ; $4a74: $08 $08 $f0
	ldh  a, [rAUD1SWEEP]                             ; $4a77: $f0 $10
	db   $10                                         ; $4a79: $10
	db   $10                                         ; $4a7a: $10
	db   $10                                         ; $4a7b: $10
	adc  b                                           ; $4a7c: $88
	adc  b                                           ; $4a7d: $88
	rst  $38                                         ; $4a7e: $ff
	rst  $38                                         ; $4a7f: $ff
	nop                                              ; $4a80: $00
	nop                                              ; $4a81: $00
	ld   e, $1e                                      ; $4a82: $1e $1e
	ld   hl, $4121                                   ; $4a84: $21 $21 $41
	ld   b, b                                        ; $4a87: $40
	ld   c, [hl]                                     ; $4a88: $4e
	ld   b, b                                        ; $4a89: $40
	db   $dd                                         ; $4a8a: $dd
	ret  nz                                          ; $4a8b: $c0

	and  a                                           ; $4a8c: $a7
	add  a                                           ; $4a8d: $87
	adc  [hl]                                        ; $4a8e: $8e
	adc  a                                           ; $4a8f: $8f
	adc  a                                           ; $4a90: $8f
	adc  c                                           ; $4a91: $89
	sbc  a                                           ; $4a92: $9f
	sbc  b                                           ; $4a93: $98
	rst  $38                                         ; $4a94: $ff
	ldh  a, [$af]                                    ; $4a95: $f0 $af
	ld   sp, hl                                      ; $4a97: $f9
	and  [hl]                                        ; $4a98: $a6
	rst  $38                                         ; $4a99: $ff
	ld   d, c                                        ; $4a9a: $51
	ld   e, a                                        ; $4a9b: $5f
	inc  l                                           ; $4a9c: $2c
	cpl                                              ; $4a9d: $2f
	ld   e, a                                        ; $4a9e: $5f
	ld   e, a                                        ; $4a9f: $5f
	ld   a, h                                        ; $4aa0: $7c
	ld   a, h                                        ; $4aa1: $7c
	add  h                                           ; $4aa2: $84
	add  h                                           ; $4aa3: $84
	adc  b                                           ; $4aa4: $88
	adc  b                                           ; $4aa5: $88
	xor  h                                           ; $4aa6: $ac
	add  h                                           ; $4aa7: $84
	sbc  d                                           ; $4aa8: $9a
	ld   [bc], a                                     ; $4aa9: $02
	ld   l, c                                        ; $4aaa: $69
	ld   l, c                                        ; $4aab: $69
	ld   h, a                                        ; $4aac: $67
	ld   h, a                                        ; $4aad: $67
	ld   d, e                                        ; $4aae: $53
	ld   [hl], e                                     ; $4aaf: $73
	cp   c                                           ; $4ab0: $b9
	ld   sp, hl                                      ; $4ab1: $f9
	ld   sp, hl                                      ; $4ab2: $f9
	ret                                              ; $4ab3: $c9


	db   $fd                                         ; $4ab4: $fd
	push bc                                          ; $4ab5: $c5
	ld   a, $e6                                      ; $4ab6: $3e $e6
	inc  e                                           ; $4ab8: $1c
	db   $fc                                         ; $4ab9: $fc
	db   $e4                                         ; $4aba: $e4
	db   $fc                                         ; $4abb: $fc
	dec  c                                           ; $4abc: $0d
	db   $fd                                         ; $4abd: $fd
	cp   $fb                                         ; $4abe: $fe $fb
	xor  d                                           ; $4ac0: $aa
	xor  e                                           ; $4ac1: $ab
	push bc                                          ; $4ac2: $c5
	push bc                                          ; $4ac3: $c5
	jp   nz, $b7c2                                   ; $4ac4: $c2 $c2 $b7

	or   a                                           ; $4ac7: $b7
	ld   hl, sp-$38                                  ; $4ac8: $f8 $c8
	add  sp, -$68                                    ; $4aca: $e8 $98
	ld   b, a                                        ; $4acc: $47
	ld   a, a                                        ; $4acd: $7f
	inc  h                                           ; $4ace: $24
	inc  a                                           ; $4acf: $3c
	jr   jr_026_4aea                                 ; $4ad0: $18 $18

	db   $10                                         ; $4ad2: $10
	db   $10                                         ; $4ad3: $10
	ld   de, $1f11                                   ; $4ad4: $11 $11 $1f
	rra                                              ; $4ad7: $1f
	ld   de, $1111                                   ; $4ad8: $11 $11 $11
	ld   de, $1010                                   ; $4adb: $11 $10 $10
	rst  $38                                         ; $4ade: $ff
	rst  $38                                         ; $4adf: $ff
	ld   l, $eb                                      ; $4ae0: $2e $eb
	rst  $20                                         ; $4ae2: $e7
	push hl                                          ; $4ae3: $e5
	and  e                                           ; $4ae4: $a3
	and  e                                           ; $4ae5: $a3
	ld   l, h                                        ; $4ae6: $6c
	ld   l, h                                        ; $4ae7: $6c
	adc  b                                           ; $4ae8: $88
	adc  b                                           ; $4ae9: $88

jr_026_4aea:
	adc  b                                           ; $4aea: $88
	adc  b                                           ; $4aeb: $88
	ld   hl, sp-$08                                  ; $4aec: $f8 $f8
	ld   [$8808], sp                                 ; $4aee: $08 $08 $88
	adc  b                                           ; $4af1: $88
	adc  b                                           ; $4af2: $88
	adc  b                                           ; $4af3: $88
	ld   [$f008], sp                                 ; $4af4: $08 $08 $f0
	ldh  a, [rAUD1SWEEP]                             ; $4af7: $f0 $10
	db   $10                                         ; $4af9: $10
	db   $10                                         ; $4afa: $10
	db   $10                                         ; $4afb: $10
	adc  b                                           ; $4afc: $88
	adc  b                                           ; $4afd: $88
	rst  $38                                         ; $4afe: $ff
	rst  $38                                         ; $4aff: $ff
	db   $10                                         ; $4b00: $10
	db   $10                                         ; $4b01: $10
	db   $10                                         ; $4b02: $10
	db   $10                                         ; $4b03: $10
	jr   c, jr_026_4b2e                              ; $4b04: $38 $28

	db   $10                                         ; $4b06: $10
	stop                                             ; $4b07: $10 $00
	nop                                              ; $4b09: $00
	ld   e, b                                        ; $4b0a: $58
	ld   e, b                                        ; $4b0b: $58
	xor  b                                           ; $4b0c: $a8
	ld   hl, sp-$50                                  ; $4b0d: $f8 $b0
	ldh  a, [$c8]                                    ; $4b0f: $f0 $c8
	ld   hl, sp+$48                                  ; $4b11: $f8 $48
	ld   hl, sp+$30                                  ; $4b13: $f8 $30
	ldh  a, [rLCDC]                                  ; $4b15: $f0 $40
	ret  nz                                          ; $4b17: $c0

	add  b                                           ; $4b18: $80
	add  b                                           ; $4b19: $80
	nop                                              ; $4b1a: $00
	nop                                              ; $4b1b: $00
	nop                                              ; $4b1c: $00
	nop                                              ; $4b1d: $00
	nop                                              ; $4b1e: $00
	nop                                              ; $4b1f: $00
	add  c                                           ; $4b20: $81
	nop                                              ; $4b21: $00
	ld   b, d                                        ; $4b22: $42
	nop                                              ; $4b23: $00
	inc  h                                           ; $4b24: $24
	nop                                              ; $4b25: $00
	jr   jr_026_4b28                                 ; $4b26: $18 $00

jr_026_4b28:
	jr   jr_026_4b2a                                 ; $4b28: $18 $00

jr_026_4b2a:
	inc  h                                           ; $4b2a: $24
	nop                                              ; $4b2b: $00
	ld   b, d                                        ; $4b2c: $42
	nop                                              ; $4b2d: $00

jr_026_4b2e:
	add  c                                           ; $4b2e: $81
	nop                                              ; $4b2f: $00
	add  c                                           ; $4b30: $81
	nop                                              ; $4b31: $00
	ld   b, d                                        ; $4b32: $42
	nop                                              ; $4b33: $00
	inc  h                                           ; $4b34: $24
	nop                                              ; $4b35: $00
	jr   jr_026_4b38                                 ; $4b36: $18 $00

jr_026_4b38:
	jr   jr_026_4b3a                                 ; $4b38: $18 $00

jr_026_4b3a:
	inc  h                                           ; $4b3a: $24
	nop                                              ; $4b3b: $00
	ld   b, d                                        ; $4b3c: $42
	nop                                              ; $4b3d: $00
	add  c                                           ; $4b3e: $81
	nop                                              ; $4b3f: $00
	add  c                                           ; $4b40: $81
	nop                                              ; $4b41: $00
	ld   b, d                                        ; $4b42: $42
	nop                                              ; $4b43: $00
	inc  h                                           ; $4b44: $24
	nop                                              ; $4b45: $00
	jr   jr_026_4b48                                 ; $4b46: $18 $00

jr_026_4b48:
	jr   jr_026_4b4a                                 ; $4b48: $18 $00

jr_026_4b4a:
	inc  h                                           ; $4b4a: $24
	nop                                              ; $4b4b: $00
	ld   b, d                                        ; $4b4c: $42
	nop                                              ; $4b4d: $00
	add  c                                           ; $4b4e: $81
	nop                                              ; $4b4f: $00
	add  c                                           ; $4b50: $81
	nop                                              ; $4b51: $00
	ld   b, d                                        ; $4b52: $42
	nop                                              ; $4b53: $00
	inc  h                                           ; $4b54: $24
	nop                                              ; $4b55: $00
	jr   jr_026_4b58                                 ; $4b56: $18 $00

jr_026_4b58:
	jr   jr_026_4b5a                                 ; $4b58: $18 $00

jr_026_4b5a:
	inc  h                                           ; $4b5a: $24
	nop                                              ; $4b5b: $00
	ld   b, d                                        ; $4b5c: $42
	nop                                              ; $4b5d: $00
	add  c                                           ; $4b5e: $81
	nop                                              ; $4b5f: $00
	add  c                                           ; $4b60: $81
	nop                                              ; $4b61: $00
	ld   b, d                                        ; $4b62: $42
	nop                                              ; $4b63: $00
	inc  h                                           ; $4b64: $24
	nop                                              ; $4b65: $00
	jr   jr_026_4b68                                 ; $4b66: $18 $00

jr_026_4b68:
	jr   jr_026_4b6a                                 ; $4b68: $18 $00

jr_026_4b6a:
	inc  h                                           ; $4b6a: $24
	nop                                              ; $4b6b: $00
	ld   b, d                                        ; $4b6c: $42
	nop                                              ; $4b6d: $00
	add  c                                           ; $4b6e: $81
	nop                                              ; $4b6f: $00
	add  c                                           ; $4b70: $81
	nop                                              ; $4b71: $00
	ld   b, d                                        ; $4b72: $42
	nop                                              ; $4b73: $00
	inc  h                                           ; $4b74: $24
	nop                                              ; $4b75: $00
	jr   jr_026_4b78                                 ; $4b76: $18 $00

jr_026_4b78:
	jr   jr_026_4b7a                                 ; $4b78: $18 $00

jr_026_4b7a:
	inc  h                                           ; $4b7a: $24
	nop                                              ; $4b7b: $00
	ld   b, d                                        ; $4b7c: $42
	nop                                              ; $4b7d: $00
	add  c                                           ; $4b7e: $81
	nop                                              ; $4b7f: $00
	add  c                                           ; $4b80: $81
	nop                                              ; $4b81: $00
	ld   b, d                                        ; $4b82: $42
	nop                                              ; $4b83: $00
	inc  h                                           ; $4b84: $24
	nop                                              ; $4b85: $00
	jr   jr_026_4b88                                 ; $4b86: $18 $00

jr_026_4b88:
	jr   jr_026_4b8a                                 ; $4b88: $18 $00

jr_026_4b8a:
	inc  h                                           ; $4b8a: $24
	nop                                              ; $4b8b: $00
	ld   b, d                                        ; $4b8c: $42
	nop                                              ; $4b8d: $00
	add  c                                           ; $4b8e: $81
	nop                                              ; $4b8f: $00
	add  c                                           ; $4b90: $81
	nop                                              ; $4b91: $00
	ld   b, d                                        ; $4b92: $42
	nop                                              ; $4b93: $00
	inc  h                                           ; $4b94: $24
	nop                                              ; $4b95: $00
	jr   jr_026_4b98                                 ; $4b96: $18 $00

jr_026_4b98:
	jr   jr_026_4b9a                                 ; $4b98: $18 $00

jr_026_4b9a:
	inc  h                                           ; $4b9a: $24
	nop                                              ; $4b9b: $00
	ld   b, d                                        ; $4b9c: $42
	nop                                              ; $4b9d: $00
	add  c                                           ; $4b9e: $81
	nop                                              ; $4b9f: $00
	add  c                                           ; $4ba0: $81
	nop                                              ; $4ba1: $00
	ld   b, d                                        ; $4ba2: $42
	nop                                              ; $4ba3: $00
	inc  h                                           ; $4ba4: $24
	nop                                              ; $4ba5: $00
	jr   jr_026_4ba8                                 ; $4ba6: $18 $00

jr_026_4ba8:
	jr   jr_026_4baa                                 ; $4ba8: $18 $00

jr_026_4baa:
	inc  h                                           ; $4baa: $24
	nop                                              ; $4bab: $00
	ld   b, d                                        ; $4bac: $42
	nop                                              ; $4bad: $00
	add  c                                           ; $4bae: $81
	nop                                              ; $4baf: $00
	add  c                                           ; $4bb0: $81
	nop                                              ; $4bb1: $00
	ld   b, d                                        ; $4bb2: $42
	nop                                              ; $4bb3: $00
	inc  h                                           ; $4bb4: $24
	nop                                              ; $4bb5: $00
	jr   jr_026_4bb8                                 ; $4bb6: $18 $00

jr_026_4bb8:
	jr   jr_026_4bba                                 ; $4bb8: $18 $00

jr_026_4bba:
	inc  h                                           ; $4bba: $24
	nop                                              ; $4bbb: $00
	ld   b, d                                        ; $4bbc: $42
	nop                                              ; $4bbd: $00
	add  c                                           ; $4bbe: $81
	nop                                              ; $4bbf: $00
	add  c                                           ; $4bc0: $81
	nop                                              ; $4bc1: $00
	ld   b, d                                        ; $4bc2: $42
	nop                                              ; $4bc3: $00
	inc  h                                           ; $4bc4: $24
	nop                                              ; $4bc5: $00
	jr   jr_026_4bc8                                 ; $4bc6: $18 $00

jr_026_4bc8:
	jr   jr_026_4bca                                 ; $4bc8: $18 $00

jr_026_4bca:
	inc  h                                           ; $4bca: $24
	nop                                              ; $4bcb: $00
	ld   b, d                                        ; $4bcc: $42
	nop                                              ; $4bcd: $00
	add  c                                           ; $4bce: $81
	nop                                              ; $4bcf: $00
	add  c                                           ; $4bd0: $81
	nop                                              ; $4bd1: $00
	ld   b, d                                        ; $4bd2: $42
	nop                                              ; $4bd3: $00
	inc  h                                           ; $4bd4: $24
	nop                                              ; $4bd5: $00
	jr   jr_026_4bd8                                 ; $4bd6: $18 $00

jr_026_4bd8:
	jr   jr_026_4bda                                 ; $4bd8: $18 $00

jr_026_4bda:
	inc  h                                           ; $4bda: $24
	nop                                              ; $4bdb: $00
	ld   b, d                                        ; $4bdc: $42
	nop                                              ; $4bdd: $00
	add  c                                           ; $4bde: $81
	nop                                              ; $4bdf: $00
	add  c                                           ; $4be0: $81
	nop                                              ; $4be1: $00
	ld   b, d                                        ; $4be2: $42
	nop                                              ; $4be3: $00
	inc  h                                           ; $4be4: $24
	nop                                              ; $4be5: $00
	jr   jr_026_4be8                                 ; $4be6: $18 $00

jr_026_4be8:
	jr   jr_026_4bea                                 ; $4be8: $18 $00

jr_026_4bea:
	inc  h                                           ; $4bea: $24
	nop                                              ; $4beb: $00
	ld   b, d                                        ; $4bec: $42
	nop                                              ; $4bed: $00
	add  c                                           ; $4bee: $81
	nop                                              ; $4bef: $00
	add  c                                           ; $4bf0: $81
	nop                                              ; $4bf1: $00
	ld   b, d                                        ; $4bf2: $42
	nop                                              ; $4bf3: $00
	inc  h                                           ; $4bf4: $24
	nop                                              ; $4bf5: $00
	jr   jr_026_4bf8                                 ; $4bf6: $18 $00

jr_026_4bf8:
	jr   jr_026_4bfa                                 ; $4bf8: $18 $00

jr_026_4bfa:
	inc  h                                           ; $4bfa: $24
	nop                                              ; $4bfb: $00
	ld   b, d                                        ; $4bfc: $42
	nop                                              ; $4bfd: $00
	add  c                                           ; $4bfe: $81
	nop                                              ; $4bff: $00
	nop                                              ; $4c00: $00
	rst  $38                                         ; $4c01: $ff
	inc  a                                           ; $4c02: $3c
	rst  $38                                         ; $4c03: $ff
	ld   b, d                                        ; $4c04: $42
	rst  $38                                         ; $4c05: $ff
	ld   d, d                                        ; $4c06: $52
	rst  $38                                         ; $4c07: $ff
	ld   d, d                                        ; $4c08: $52
	rst  $38                                         ; $4c09: $ff
	ld   d, d                                        ; $4c0a: $52
	rst  $38                                         ; $4c0b: $ff
	ld   b, d                                        ; $4c0c: $42
	rst  $38                                         ; $4c0d: $ff
	inc  a                                           ; $4c0e: $3c
	rst  $38                                         ; $4c0f: $ff
	nop                                              ; $4c10: $00
	nop                                              ; $4c11: $00
	nop                                              ; $4c12: $00
	nop                                              ; $4c13: $00
	nop                                              ; $4c14: $00
	nop                                              ; $4c15: $00
	nop                                              ; $4c16: $00
	nop                                              ; $4c17: $00
	nop                                              ; $4c18: $00
	nop                                              ; $4c19: $00
	nop                                              ; $4c1a: $00
	nop                                              ; $4c1b: $00
	nop                                              ; $4c1c: $00
	nop                                              ; $4c1d: $00
	nop                                              ; $4c1e: $00
	nop                                              ; $4c1f: $00
	nop                                              ; $4c20: $00
	rst  $38                                         ; $4c21: $ff
	inc  a                                           ; $4c22: $3c
	rst  $38                                         ; $4c23: $ff
	ld   b, h                                        ; $4c24: $44
	rst  $38                                         ; $4c25: $ff
	ld   h, h                                        ; $4c26: $64
	rst  $38                                         ; $4c27: $ff
	inc  h                                           ; $4c28: $24
	rst  $38                                         ; $4c29: $ff
	inc  h                                           ; $4c2a: $24
	rst  $38                                         ; $4c2b: $ff
	inc  h                                           ; $4c2c: $24
	rst  $38                                         ; $4c2d: $ff
	inc  a                                           ; $4c2e: $3c
	rst  $38                                         ; $4c2f: $ff
	nop                                              ; $4c30: $00
	nop                                              ; $4c31: $00
	nop                                              ; $4c32: $00
	nop                                              ; $4c33: $00
	nop                                              ; $4c34: $00
	nop                                              ; $4c35: $00
	nop                                              ; $4c36: $00
	nop                                              ; $4c37: $00
	nop                                              ; $4c38: $00
	nop                                              ; $4c39: $00
	nop                                              ; $4c3a: $00
	nop                                              ; $4c3b: $00
	nop                                              ; $4c3c: $00
	nop                                              ; $4c3d: $00
	nop                                              ; $4c3e: $00
	nop                                              ; $4c3f: $00
	nop                                              ; $4c40: $00
	rst  $38                                         ; $4c41: $ff
	inc  a                                           ; $4c42: $3c
	rst  $38                                         ; $4c43: $ff
	ld   b, d                                        ; $4c44: $42
	rst  $38                                         ; $4c45: $ff
	ld   a, d                                        ; $4c46: $7a
	rst  $38                                         ; $4c47: $ff
	inc  d                                           ; $4c48: $14
	rst  $38                                         ; $4c49: $ff
	ld   l, $ff                                      ; $4c4a: $2e $ff
	ld   b, d                                        ; $4c4c: $42
	rst  $38                                         ; $4c4d: $ff
	ld   a, [hl]                                     ; $4c4e: $7e
	rst  $38                                         ; $4c4f: $ff
	nop                                              ; $4c50: $00
	nop                                              ; $4c51: $00
	nop                                              ; $4c52: $00
	nop                                              ; $4c53: $00
	nop                                              ; $4c54: $00
	nop                                              ; $4c55: $00
	nop                                              ; $4c56: $00
	nop                                              ; $4c57: $00
	nop                                              ; $4c58: $00
	nop                                              ; $4c59: $00
	nop                                              ; $4c5a: $00
	nop                                              ; $4c5b: $00
	nop                                              ; $4c5c: $00
	nop                                              ; $4c5d: $00
	nop                                              ; $4c5e: $00
	nop                                              ; $4c5f: $00
	nop                                              ; $4c60: $00
	rst  $38                                         ; $4c61: $ff
	inc  a                                           ; $4c62: $3c
	rst  $38                                         ; $4c63: $ff
	ld   b, d                                        ; $4c64: $42
	rst  $38                                         ; $4c65: $ff
	ld   [hl], d                                     ; $4c66: $72
	rst  $38                                         ; $4c67: $ff
	inc  h                                           ; $4c68: $24
	rst  $38                                         ; $4c69: $ff
	ld   [hl], d                                     ; $4c6a: $72
	rst  $38                                         ; $4c6b: $ff
	ld   b, d                                        ; $4c6c: $42
	rst  $38                                         ; $4c6d: $ff
	inc  a                                           ; $4c6e: $3c
	rst  $38                                         ; $4c6f: $ff
	nop                                              ; $4c70: $00
	nop                                              ; $4c71: $00
	nop                                              ; $4c72: $00
	nop                                              ; $4c73: $00
	nop                                              ; $4c74: $00
	nop                                              ; $4c75: $00
	nop                                              ; $4c76: $00
	nop                                              ; $4c77: $00
	nop                                              ; $4c78: $00
	nop                                              ; $4c79: $00
	nop                                              ; $4c7a: $00
	nop                                              ; $4c7b: $00
	nop                                              ; $4c7c: $00
	nop                                              ; $4c7d: $00
	nop                                              ; $4c7e: $00
	nop                                              ; $4c7f: $00
	nop                                              ; $4c80: $00
	rst  $38                                         ; $4c81: $ff
	ld   c, $ff                                      ; $4c82: $0e $ff
	ld   [de], a                                     ; $4c84: $12
	rst  $38                                         ; $4c85: $ff
	ld   [hl+], a                                    ; $4c86: $22
	rst  $38                                         ; $4c87: $ff
	ld   d, d                                        ; $4c88: $52
	rst  $38                                         ; $4c89: $ff
	ld   b, d                                        ; $4c8a: $42
	rst  $38                                         ; $4c8b: $ff
	ld   [hl], d                                     ; $4c8c: $72
	rst  $38                                         ; $4c8d: $ff
	ld   e, $ff                                      ; $4c8e: $1e $ff
	nop                                              ; $4c90: $00
	nop                                              ; $4c91: $00
	nop                                              ; $4c92: $00
	nop                                              ; $4c93: $00
	nop                                              ; $4c94: $00
	nop                                              ; $4c95: $00
	nop                                              ; $4c96: $00
	nop                                              ; $4c97: $00
	nop                                              ; $4c98: $00
	nop                                              ; $4c99: $00
	nop                                              ; $4c9a: $00
	nop                                              ; $4c9b: $00
	nop                                              ; $4c9c: $00
	nop                                              ; $4c9d: $00
	nop                                              ; $4c9e: $00
	nop                                              ; $4c9f: $00
	nop                                              ; $4ca0: $00
	rst  $38                                         ; $4ca1: $ff
	ld   a, [hl]                                     ; $4ca2: $7e
	rst  $38                                         ; $4ca3: $ff
	ld   b, d                                        ; $4ca4: $42
	rst  $38                                         ; $4ca5: $ff
	ld   c, h                                        ; $4ca6: $4c
	rst  $38                                         ; $4ca7: $ff
	ld   b, d                                        ; $4ca8: $42
	rst  $38                                         ; $4ca9: $ff
	ld   [hl-], a                                    ; $4caa: $32
	rst  $38                                         ; $4cab: $ff
	ld   b, d                                        ; $4cac: $42
	rst  $38                                         ; $4cad: $ff
	ld   a, h                                        ; $4cae: $7c
	rst  $38                                         ; $4caf: $ff
	nop                                              ; $4cb0: $00
	nop                                              ; $4cb1: $00
	nop                                              ; $4cb2: $00
	nop                                              ; $4cb3: $00
	nop                                              ; $4cb4: $00
	nop                                              ; $4cb5: $00
	nop                                              ; $4cb6: $00
	nop                                              ; $4cb7: $00
	nop                                              ; $4cb8: $00
	nop                                              ; $4cb9: $00
	nop                                              ; $4cba: $00
	nop                                              ; $4cbb: $00
	nop                                              ; $4cbc: $00
	nop                                              ; $4cbd: $00
	nop                                              ; $4cbe: $00
	nop                                              ; $4cbf: $00
	nop                                              ; $4cc0: $00
	rst  $38                                         ; $4cc1: $ff
	ld   a, $ff                                      ; $4cc2: $3e $ff
	ld   b, d                                        ; $4cc4: $42
	rst  $38                                         ; $4cc5: $ff
	ld   c, h                                        ; $4cc6: $4c
	rst  $38                                         ; $4cc7: $ff
	ld   b, d                                        ; $4cc8: $42
	rst  $38                                         ; $4cc9: $ff
	ld   c, d                                        ; $4cca: $4a
	rst  $38                                         ; $4ccb: $ff
	ld   b, d                                        ; $4ccc: $42
	rst  $38                                         ; $4ccd: $ff
	inc  a                                           ; $4cce: $3c
	rst  $38                                         ; $4ccf: $ff
	nop                                              ; $4cd0: $00
	nop                                              ; $4cd1: $00
	nop                                              ; $4cd2: $00
	nop                                              ; $4cd3: $00
	nop                                              ; $4cd4: $00
	nop                                              ; $4cd5: $00
	nop                                              ; $4cd6: $00
	nop                                              ; $4cd7: $00
	nop                                              ; $4cd8: $00
	nop                                              ; $4cd9: $00
	nop                                              ; $4cda: $00
	nop                                              ; $4cdb: $00
	nop                                              ; $4cdc: $00
	nop                                              ; $4cdd: $00
	nop                                              ; $4cde: $00
	nop                                              ; $4cdf: $00
	nop                                              ; $4ce0: $00
	rst  $38                                         ; $4ce1: $ff
	ld   a, [hl]                                     ; $4ce2: $7e
	rst  $38                                         ; $4ce3: $ff
	ld   b, d                                        ; $4ce4: $42
	rst  $38                                         ; $4ce5: $ff
	ld   a, d                                        ; $4ce6: $7a
	rst  $38                                         ; $4ce7: $ff
	ld   [de], a                                     ; $4ce8: $12
	rst  $38                                         ; $4ce9: $ff
	inc  h                                           ; $4cea: $24
	rst  $38                                         ; $4ceb: $ff
	ld   c, b                                        ; $4cec: $48
	rst  $38                                         ; $4ced: $ff
	ld   a, b                                        ; $4cee: $78
	rst  $38                                         ; $4cef: $ff
	nop                                              ; $4cf0: $00
	nop                                              ; $4cf1: $00
	nop                                              ; $4cf2: $00
	nop                                              ; $4cf3: $00
	nop                                              ; $4cf4: $00
	nop                                              ; $4cf5: $00
	nop                                              ; $4cf6: $00
	nop                                              ; $4cf7: $00
	nop                                              ; $4cf8: $00
	nop                                              ; $4cf9: $00
	nop                                              ; $4cfa: $00
	nop                                              ; $4cfb: $00
	nop                                              ; $4cfc: $00
	nop                                              ; $4cfd: $00
	nop                                              ; $4cfe: $00
	nop                                              ; $4cff: $00
	nop                                              ; $4d00: $00
	rst  $38                                         ; $4d01: $ff
	inc  a                                           ; $4d02: $3c
	rst  $38                                         ; $4d03: $ff
	ld   b, d                                        ; $4d04: $42
	rst  $38                                         ; $4d05: $ff
	ld   d, d                                        ; $4d06: $52
	rst  $38                                         ; $4d07: $ff
	ld   b, d                                        ; $4d08: $42
	rst  $38                                         ; $4d09: $ff
	ld   d, d                                        ; $4d0a: $52
	rst  $38                                         ; $4d0b: $ff
	ld   b, d                                        ; $4d0c: $42
	rst  $38                                         ; $4d0d: $ff
	inc  a                                           ; $4d0e: $3c
	rst  $38                                         ; $4d0f: $ff
	nop                                              ; $4d10: $00
	nop                                              ; $4d11: $00
	nop                                              ; $4d12: $00
	nop                                              ; $4d13: $00
	nop                                              ; $4d14: $00
	nop                                              ; $4d15: $00
	nop                                              ; $4d16: $00
	nop                                              ; $4d17: $00
	nop                                              ; $4d18: $00
	nop                                              ; $4d19: $00
	nop                                              ; $4d1a: $00
	nop                                              ; $4d1b: $00
	nop                                              ; $4d1c: $00
	nop                                              ; $4d1d: $00
	nop                                              ; $4d1e: $00
	nop                                              ; $4d1f: $00
	nop                                              ; $4d20: $00
	rst  $38                                         ; $4d21: $ff
	inc  a                                           ; $4d22: $3c
	rst  $38                                         ; $4d23: $ff
	ld   b, d                                        ; $4d24: $42
	rst  $38                                         ; $4d25: $ff
	ld   d, d                                        ; $4d26: $52
	rst  $38                                         ; $4d27: $ff
	ld   b, d                                        ; $4d28: $42
	rst  $38                                         ; $4d29: $ff
	ld   [hl-], a                                    ; $4d2a: $32
	rst  $38                                         ; $4d2b: $ff
	ld   b, d                                        ; $4d2c: $42
	rst  $38                                         ; $4d2d: $ff
	ld   a, h                                        ; $4d2e: $7c
	rst  $38                                         ; $4d2f: $ff
	nop                                              ; $4d30: $00
	nop                                              ; $4d31: $00
	nop                                              ; $4d32: $00
	nop                                              ; $4d33: $00
	nop                                              ; $4d34: $00
	nop                                              ; $4d35: $00
	nop                                              ; $4d36: $00
	nop                                              ; $4d37: $00
	nop                                              ; $4d38: $00
	nop                                              ; $4d39: $00
	nop                                              ; $4d3a: $00
	nop                                              ; $4d3b: $00
	nop                                              ; $4d3c: $00
	nop                                              ; $4d3d: $00
	nop                                              ; $4d3e: $00
	nop                                              ; $4d3f: $00
	inc  a                                           ; $4d40: $3c
	nop                                              ; $4d41: $00
	ld   e, d                                        ; $4d42: $5a
	inc  a                                           ; $4d43: $3c
	cp   c                                           ; $4d44: $b9
	ld   a, [hl]                                     ; $4d45: $7e
	db   $fd                                         ; $4d46: $fd
	ld   h, [hl]                                     ; $4d47: $66
	push af                                          ; $4d48: $f5
	ld   l, [hl]                                     ; $4d49: $6e
	sbc  c                                           ; $4d4a: $99
	ld   a, [hl]                                     ; $4d4b: $7e
	ld   b, d                                        ; $4d4c: $42
	inc  a                                           ; $4d4d: $3c
	inc  a                                           ; $4d4e: $3c
	nop                                              ; $4d4f: $00
	nop                                              ; $4d50: $00
	nop                                              ; $4d51: $00
	nop                                              ; $4d52: $00
	nop                                              ; $4d53: $00
	nop                                              ; $4d54: $00
	nop                                              ; $4d55: $00
	nop                                              ; $4d56: $00
	nop                                              ; $4d57: $00
	nop                                              ; $4d58: $00
	nop                                              ; $4d59: $00
	nop                                              ; $4d5a: $00
	nop                                              ; $4d5b: $00
	nop                                              ; $4d5c: $00
	nop                                              ; $4d5d: $00
	nop                                              ; $4d5e: $00
	nop                                              ; $4d5f: $00
	rst  $38                                         ; $4d60: $ff
	nop                                              ; $4d61: $00
	rst  $38                                         ; $4d62: $ff
	ld   a, [hl]                                     ; $4d63: $7e
	rst  $38                                         ; $4d64: $ff
	ld   a, [hl]                                     ; $4d65: $7e
	rst  $38                                         ; $4d66: $ff
	ld   a, [hl]                                     ; $4d67: $7e
	ld   a, [hl]                                     ; $4d68: $7e
	inc  a                                           ; $4d69: $3c
	inc  a                                           ; $4d6a: $3c
	jr   jr_026_4d85                                 ; $4d6b: $18 $18

	nop                                              ; $4d6d: $00
	nop                                              ; $4d6e: $00
	nop                                              ; $4d6f: $00
	rst  $20                                         ; $4d70: $e7
	rst  $20                                         ; $4d71: $e7
	add  c                                           ; $4d72: $81
	add  c                                           ; $4d73: $81
	add  c                                           ; $4d74: $81
	add  c                                           ; $4d75: $81
	nop                                              ; $4d76: $00
	nop                                              ; $4d77: $00
	nop                                              ; $4d78: $00
	nop                                              ; $4d79: $00
	add  c                                           ; $4d7a: $81
	add  c                                           ; $4d7b: $81
	add  c                                           ; $4d7c: $81
	add  c                                           ; $4d7d: $81
	rst  $20                                         ; $4d7e: $e7
	rst  $20                                         ; $4d7f: $e7
	nop                                              ; $4d80: $00
	nop                                              ; $4d81: $00
	rst  $38                                         ; $4d82: $ff
	nop                                              ; $4d83: $00
	rst  $38                                         ; $4d84: $ff

jr_026_4d85:
	ld   a, [hl]                                     ; $4d85: $7e
	rst  $38                                         ; $4d86: $ff
	ld   a, [hl]                                     ; $4d87: $7e
	rst  $38                                         ; $4d88: $ff
	ld   a, [hl]                                     ; $4d89: $7e
	ld   a, [hl]                                     ; $4d8a: $7e
	inc  a                                           ; $4d8b: $3c
	inc  a                                           ; $4d8c: $3c
	jr   jr_026_4da7                                 ; $4d8d: $18 $18

	nop                                              ; $4d8f: $00
	rst  $20                                         ; $4d90: $e7
	rst  $20                                         ; $4d91: $e7
	add  c                                           ; $4d92: $81
	add  c                                           ; $4d93: $81
	add  c                                           ; $4d94: $81
	add  c                                           ; $4d95: $81
	nop                                              ; $4d96: $00
	nop                                              ; $4d97: $00
	nop                                              ; $4d98: $00
	nop                                              ; $4d99: $00
	add  c                                           ; $4d9a: $81
	add  c                                           ; $4d9b: $81
	add  c                                           ; $4d9c: $81
	add  c                                           ; $4d9d: $81
	rst  $20                                         ; $4d9e: $e7
	rst  $20                                         ; $4d9f: $e7
	nop                                              ; $4da0: $00
	nop                                              ; $4da1: $00
	nop                                              ; $4da2: $00
	nop                                              ; $4da3: $00
	rst  $38                                         ; $4da4: $ff
	nop                                              ; $4da5: $00
	rst  $38                                         ; $4da6: $ff

jr_026_4da7:
	ld   a, [hl]                                     ; $4da7: $7e
	rst  $38                                         ; $4da8: $ff
	ld   a, [hl]                                     ; $4da9: $7e
	rst  $38                                         ; $4daa: $ff
	ld   a, [hl]                                     ; $4dab: $7e
	ld   a, [hl]                                     ; $4dac: $7e
	inc  a                                           ; $4dad: $3c
	inc  a                                           ; $4dae: $3c
	jr   @+$01                                       ; $4daf: $18 $ff

	rst  $20                                         ; $4db1: $e7
	add  c                                           ; $4db2: $81
	add  c                                           ; $4db3: $81
	add  c                                           ; $4db4: $81
	add  c                                           ; $4db5: $81
	nop                                              ; $4db6: $00
	nop                                              ; $4db7: $00
	nop                                              ; $4db8: $00
	nop                                              ; $4db9: $00
	add  c                                           ; $4dba: $81
	add  c                                           ; $4dbb: $81
	add  c                                           ; $4dbc: $81
	add  c                                           ; $4dbd: $81
	rst  $20                                         ; $4dbe: $e7
	rst  $20                                         ; $4dbf: $e7
	add  c                                           ; $4dc0: $81
	nop                                              ; $4dc1: $00
	ld   b, d                                        ; $4dc2: $42
	nop                                              ; $4dc3: $00
	inc  h                                           ; $4dc4: $24
	nop                                              ; $4dc5: $00
	jr   jr_026_4dc8                                 ; $4dc6: $18 $00

jr_026_4dc8:
	jr   jr_026_4dca                                 ; $4dc8: $18 $00

jr_026_4dca:
	inc  h                                           ; $4dca: $24
	nop                                              ; $4dcb: $00
	ld   b, d                                        ; $4dcc: $42
	nop                                              ; $4dcd: $00
	add  c                                           ; $4dce: $81
	nop                                              ; $4dcf: $00
	add  c                                           ; $4dd0: $81
	nop                                              ; $4dd1: $00
	ld   b, d                                        ; $4dd2: $42
	nop                                              ; $4dd3: $00
	inc  h                                           ; $4dd4: $24
	nop                                              ; $4dd5: $00
	jr   jr_026_4dd8                                 ; $4dd6: $18 $00

jr_026_4dd8:
	jr   jr_026_4dda                                 ; $4dd8: $18 $00

jr_026_4dda:
	inc  h                                           ; $4dda: $24
	nop                                              ; $4ddb: $00
	ld   b, d                                        ; $4ddc: $42
	nop                                              ; $4ddd: $00
	add  c                                           ; $4dde: $81
	nop                                              ; $4ddf: $00
	add  c                                           ; $4de0: $81
	nop                                              ; $4de1: $00
	ld   b, d                                        ; $4de2: $42
	nop                                              ; $4de3: $00
	inc  h                                           ; $4de4: $24
	nop                                              ; $4de5: $00
	jr   jr_026_4de8                                 ; $4de6: $18 $00

jr_026_4de8:
	jr   jr_026_4dea                                 ; $4de8: $18 $00

jr_026_4dea:
	inc  h                                           ; $4dea: $24
	nop                                              ; $4deb: $00
	ld   b, d                                        ; $4dec: $42
	nop                                              ; $4ded: $00
	add  c                                           ; $4dee: $81
	nop                                              ; $4def: $00
	add  c                                           ; $4df0: $81
	nop                                              ; $4df1: $00
	ld   b, d                                        ; $4df2: $42
	nop                                              ; $4df3: $00
	inc  h                                           ; $4df4: $24
	nop                                              ; $4df5: $00
	jr   jr_026_4df8                                 ; $4df6: $18 $00

jr_026_4df8:
	jr   jr_026_4dfa                                 ; $4df8: $18 $00

jr_026_4dfa:
	inc  h                                           ; $4dfa: $24
	nop                                              ; $4dfb: $00
	ld   b, d                                        ; $4dfc: $42
	nop                                              ; $4dfd: $00
	add  c                                           ; $4dfe: $81
	nop                                              ; $4dff: $00
	add  c                                           ; $4e00: $81
	nop                                              ; $4e01: $00
	ld   b, d                                        ; $4e02: $42
	nop                                              ; $4e03: $00
	inc  h                                           ; $4e04: $24
	nop                                              ; $4e05: $00
	jr   jr_026_4e08                                 ; $4e06: $18 $00

jr_026_4e08:
	jr   jr_026_4e0a                                 ; $4e08: $18 $00

jr_026_4e0a:
	inc  h                                           ; $4e0a: $24
	nop                                              ; $4e0b: $00
	ld   b, d                                        ; $4e0c: $42
	nop                                              ; $4e0d: $00
	add  c                                           ; $4e0e: $81
	nop                                              ; $4e0f: $00
	add  c                                           ; $4e10: $81
	nop                                              ; $4e11: $00
	ld   b, d                                        ; $4e12: $42
	nop                                              ; $4e13: $00
	inc  h                                           ; $4e14: $24
	nop                                              ; $4e15: $00
	jr   jr_026_4e18                                 ; $4e16: $18 $00

jr_026_4e18:
	jr   jr_026_4e1a                                 ; $4e18: $18 $00

jr_026_4e1a:
	inc  h                                           ; $4e1a: $24
	nop                                              ; $4e1b: $00
	ld   b, d                                        ; $4e1c: $42
	nop                                              ; $4e1d: $00
	add  c                                           ; $4e1e: $81
	nop                                              ; $4e1f: $00
	add  c                                           ; $4e20: $81
	nop                                              ; $4e21: $00
	ld   b, d                                        ; $4e22: $42
	nop                                              ; $4e23: $00
	inc  h                                           ; $4e24: $24
	nop                                              ; $4e25: $00
	jr   jr_026_4e28                                 ; $4e26: $18 $00

jr_026_4e28:
	jr   jr_026_4e2a                                 ; $4e28: $18 $00

jr_026_4e2a:
	inc  h                                           ; $4e2a: $24
	nop                                              ; $4e2b: $00
	ld   b, d                                        ; $4e2c: $42
	nop                                              ; $4e2d: $00
	add  c                                           ; $4e2e: $81
	nop                                              ; $4e2f: $00
	add  c                                           ; $4e30: $81
	nop                                              ; $4e31: $00
	ld   b, d                                        ; $4e32: $42
	nop                                              ; $4e33: $00
	inc  h                                           ; $4e34: $24
	nop                                              ; $4e35: $00
	jr   jr_026_4e38                                 ; $4e36: $18 $00

jr_026_4e38:
	jr   jr_026_4e3a                                 ; $4e38: $18 $00

jr_026_4e3a:
	inc  h                                           ; $4e3a: $24
	nop                                              ; $4e3b: $00
	ld   b, d                                        ; $4e3c: $42
	nop                                              ; $4e3d: $00
	add  c                                           ; $4e3e: $81
	nop                                              ; $4e3f: $00
	add  c                                           ; $4e40: $81
	nop                                              ; $4e41: $00
	ld   b, d                                        ; $4e42: $42
	nop                                              ; $4e43: $00
	inc  h                                           ; $4e44: $24
	nop                                              ; $4e45: $00
	jr   jr_026_4e48                                 ; $4e46: $18 $00

jr_026_4e48:
	jr   jr_026_4e4a                                 ; $4e48: $18 $00

jr_026_4e4a:
	inc  h                                           ; $4e4a: $24
	nop                                              ; $4e4b: $00
	ld   b, d                                        ; $4e4c: $42
	nop                                              ; $4e4d: $00
	add  c                                           ; $4e4e: $81
	nop                                              ; $4e4f: $00
	add  c                                           ; $4e50: $81
	nop                                              ; $4e51: $00
	ld   b, d                                        ; $4e52: $42
	nop                                              ; $4e53: $00
	inc  h                                           ; $4e54: $24
	nop                                              ; $4e55: $00
	jr   jr_026_4e58                                 ; $4e56: $18 $00

jr_026_4e58:
	jr   jr_026_4e5a                                 ; $4e58: $18 $00

jr_026_4e5a:
	inc  h                                           ; $4e5a: $24
	nop                                              ; $4e5b: $00
	ld   b, d                                        ; $4e5c: $42
	nop                                              ; $4e5d: $00
	add  c                                           ; $4e5e: $81
	nop                                              ; $4e5f: $00
	add  c                                           ; $4e60: $81
	nop                                              ; $4e61: $00
	ld   b, d                                        ; $4e62: $42
	nop                                              ; $4e63: $00
	inc  h                                           ; $4e64: $24
	nop                                              ; $4e65: $00
	jr   jr_026_4e68                                 ; $4e66: $18 $00

jr_026_4e68:
	jr   jr_026_4e6a                                 ; $4e68: $18 $00

jr_026_4e6a:
	inc  h                                           ; $4e6a: $24
	nop                                              ; $4e6b: $00
	ld   b, d                                        ; $4e6c: $42
	nop                                              ; $4e6d: $00
	add  c                                           ; $4e6e: $81
	nop                                              ; $4e6f: $00
	rst  $38                                         ; $4e70: $ff
	rst  $38                                         ; $4e71: $ff
	rst  $38                                         ; $4e72: $ff
	nop                                              ; $4e73: $00
	rst  $38                                         ; $4e74: $ff
	nop                                              ; $4e75: $00
	rst  $38                                         ; $4e76: $ff
	nop                                              ; $4e77: $00
	rst  $38                                         ; $4e78: $ff
	nop                                              ; $4e79: $00
	rst  $38                                         ; $4e7a: $ff
	rst  $38                                         ; $4e7b: $ff
	rst  $38                                         ; $4e7c: $ff
	nop                                              ; $4e7d: $00
	rst  $38                                         ; $4e7e: $ff
	rst  $38                                         ; $4e7f: $ff
	rst  $38                                         ; $4e80: $ff
	rst  $38                                         ; $4e81: $ff
	rst  $38                                         ; $4e82: $ff
	nop                                              ; $4e83: $00
	rst  $38                                         ; $4e84: $ff
	nop                                              ; $4e85: $00
	rst  $38                                         ; $4e86: $ff
	nop                                              ; $4e87: $00
	rst  $38                                         ; $4e88: $ff
	nop                                              ; $4e89: $00
	rst  $38                                         ; $4e8a: $ff
	rst  $38                                         ; $4e8b: $ff
	rst  $38                                         ; $4e8c: $ff
	nop                                              ; $4e8d: $00
	rst  $38                                         ; $4e8e: $ff
	rst  $38                                         ; $4e8f: $ff
	rst  $38                                         ; $4e90: $ff
	rst  $38                                         ; $4e91: $ff
	rst  $38                                         ; $4e92: $ff
	nop                                              ; $4e93: $00
	rst  $38                                         ; $4e94: $ff
	nop                                              ; $4e95: $00
	rst  $38                                         ; $4e96: $ff
	nop                                              ; $4e97: $00
	rst  $38                                         ; $4e98: $ff
	nop                                              ; $4e99: $00
	rst  $38                                         ; $4e9a: $ff
	rst  $38                                         ; $4e9b: $ff
	rst  $38                                         ; $4e9c: $ff
	nop                                              ; $4e9d: $00
	rst  $38                                         ; $4e9e: $ff
	rst  $38                                         ; $4e9f: $ff
	rst  $38                                         ; $4ea0: $ff
	cp   a                                           ; $4ea1: $bf
	rst  $38                                         ; $4ea2: $ff
	and  b                                           ; $4ea3: $a0
	rst  $38                                         ; $4ea4: $ff
	and  [hl]                                        ; $4ea5: $a6
	rst  $38                                         ; $4ea6: $ff
	and  [hl]                                        ; $4ea7: $a6
	rst  $38                                         ; $4ea8: $ff
	and  b                                           ; $4ea9: $a0
	rst  $38                                         ; $4eaa: $ff
	cp   a                                           ; $4eab: $bf
	rst  $38                                         ; $4eac: $ff
	add  b                                           ; $4ead: $80
	rst  $38                                         ; $4eae: $ff
	rst  $38                                         ; $4eaf: $ff
	rst  $38                                         ; $4eb0: $ff
	rst  $38                                         ; $4eb1: $ff
	rst  $38                                         ; $4eb2: $ff
	add  b                                           ; $4eb3: $80
	rst  $38                                         ; $4eb4: $ff
	cp   a                                           ; $4eb5: $bf
	rst  $38                                         ; $4eb6: $ff
	and  c                                           ; $4eb7: $a1
	rst  $38                                         ; $4eb8: $ff
	xor  l                                           ; $4eb9: $ad
	rst  $38                                         ; $4eba: $ff
	xor  l                                           ; $4ebb: $ad
	rst  $38                                         ; $4ebc: $ff
	and  c                                           ; $4ebd: $a1
	rst  $38                                         ; $4ebe: $ff
	and  c                                           ; $4ebf: $a1
	rst  $38                                         ; $4ec0: $ff
	rst  $38                                         ; $4ec1: $ff
	rst  $38                                         ; $4ec2: $ff
	nop                                              ; $4ec3: $00
	rst  $38                                         ; $4ec4: $ff
	rst  $38                                         ; $4ec5: $ff
	nop                                              ; $4ec6: $00
	rst  $38                                         ; $4ec7: $ff
	nop                                              ; $4ec8: $00
	rst  $38                                         ; $4ec9: $ff
	nop                                              ; $4eca: $00
	rst  $38                                         ; $4ecb: $ff
	nop                                              ; $4ecc: $00
	rst  $38                                         ; $4ecd: $ff
	nop                                              ; $4ece: $00
	rst  $38                                         ; $4ecf: $ff
	cp   $ff                                         ; $4ed0: $fe $ff
	nop                                              ; $4ed2: $00
	rst  $38                                         ; $4ed3: $ff
	nop                                              ; $4ed4: $00
	rst  $38                                         ; $4ed5: $ff
	nop                                              ; $4ed6: $00
	rst  $38                                         ; $4ed7: $ff
	nop                                              ; $4ed8: $00
	rst  $38                                         ; $4ed9: $ff
	rst  $38                                         ; $4eda: $ff
	rst  $38                                         ; $4edb: $ff
	rst  $38                                         ; $4edc: $ff
	nop                                              ; $4edd: $00
	rst  $38                                         ; $4ede: $ff
	rst  $38                                         ; $4edf: $ff
	add  c                                           ; $4ee0: $81
	nop                                              ; $4ee1: $00
	ld   b, d                                        ; $4ee2: $42
	nop                                              ; $4ee3: $00
	inc  h                                           ; $4ee4: $24
	nop                                              ; $4ee5: $00
	jr   jr_026_4ee8                                 ; $4ee6: $18 $00

jr_026_4ee8:
	jr   jr_026_4eea                                 ; $4ee8: $18 $00

jr_026_4eea:
	inc  h                                           ; $4eea: $24
	nop                                              ; $4eeb: $00
	ld   b, d                                        ; $4eec: $42
	nop                                              ; $4eed: $00
	add  c                                           ; $4eee: $81
	nop                                              ; $4eef: $00
	add  c                                           ; $4ef0: $81
	nop                                              ; $4ef1: $00
	ld   b, d                                        ; $4ef2: $42
	nop                                              ; $4ef3: $00
	inc  h                                           ; $4ef4: $24
	nop                                              ; $4ef5: $00
	jr   jr_026_4ef8                                 ; $4ef6: $18 $00

jr_026_4ef8:
	jr   jr_026_4efa                                 ; $4ef8: $18 $00

jr_026_4efa:
	inc  h                                           ; $4efa: $24
	nop                                              ; $4efb: $00
	ld   b, d                                        ; $4efc: $42
	nop                                              ; $4efd: $00
	add  c                                           ; $4efe: $81
	nop                                              ; $4eff: $00
	rst  $38                                         ; $4f00: $ff
	nop                                              ; $4f01: $00
	rst  $38                                         ; $4f02: $ff
	nop                                              ; $4f03: $00
	rst  $38                                         ; $4f04: $ff
	nop                                              ; $4f05: $00
	rst  $38                                         ; $4f06: $ff
	rrca                                             ; $4f07: $0f
	rst  $38                                         ; $4f08: $ff
	jr   @+$01                                       ; $4f09: $18 $ff

	db   $10                                         ; $4f0b: $10
	rst  $38                                         ; $4f0c: $ff
	inc  de                                          ; $4f0d: $13
	rst  $38                                         ; $4f0e: $ff
	rra                                              ; $4f0f: $1f
	rst  $38                                         ; $4f10: $ff
	inc  c                                           ; $4f11: $0c
	rst  $38                                         ; $4f12: $ff
	inc  b                                           ; $4f13: $04
	rst  $38                                         ; $4f14: $ff
	rra                                              ; $4f15: $1f
	rst  $38                                         ; $4f16: $ff
	inc  de                                          ; $4f17: $13
	rst  $38                                         ; $4f18: $ff
	db   $10                                         ; $4f19: $10
	rst  $38                                         ; $4f1a: $ff
	jr   @+$01                                       ; $4f1b: $18 $ff

	rrca                                             ; $4f1d: $0f
	rst  $38                                         ; $4f1e: $ff
	rlca                                             ; $4f1f: $07
	nop                                              ; $4f20: $00
	rst  $38                                         ; $4f21: $ff
	nop                                              ; $4f22: $00
	rst  $38                                         ; $4f23: $ff
	nop                                              ; $4f24: $00
	rst  $38                                         ; $4f25: $ff
	ldh  a, [rIE]                                    ; $4f26: $f0 $ff
	ld   hl, sp+$1f                                  ; $4f28: $f8 $1f
	db   $fc                                         ; $4f2a: $fc
	rrca                                             ; $4f2b: $0f
	db   $fc                                         ; $4f2c: $fc
	rrca                                             ; $4f2d: $0f
	db   $fc                                         ; $4f2e: $fc
	rrca                                             ; $4f2f: $0f
	db   $fc                                         ; $4f30: $fc
	rra                                              ; $4f31: $1f
	ld   hl, sp+$1f                                  ; $4f32: $f8 $1f
	ld   hl, sp+$0f                                  ; $4f34: $f8 $0f
	db   $fc                                         ; $4f36: $fc
	rrca                                             ; $4f37: $0f
	db   $fc                                         ; $4f38: $fc
	rrca                                             ; $4f39: $0f
	db   $fc                                         ; $4f3a: $fc
	rra                                              ; $4f3b: $1f
	db   $fc                                         ; $4f3c: $fc
	rst  $38                                         ; $4f3d: $ff
	ld   hl, sp-$01                                  ; $4f3e: $f8 $ff
	nop                                              ; $4f40: $00
	rst  $38                                         ; $4f41: $ff
	nop                                              ; $4f42: $00
	rst  $38                                         ; $4f43: $ff
	nop                                              ; $4f44: $00
	rst  $38                                         ; $4f45: $ff
	rrca                                             ; $4f46: $0f
	rst  $38                                         ; $4f47: $ff
	rra                                              ; $4f48: $1f
	ld   hl, sp+$1f                                  ; $4f49: $f8 $1f
	ldh  a, [$1f]                                    ; $4f4b: $f0 $1f
	di                                               ; $4f4d: $f3
	rra                                              ; $4f4e: $1f
	rst  $38                                         ; $4f4f: $ff
	ld   bc, $03ff                                   ; $4f50: $01 $ff $03
	cp   $07                                         ; $4f53: $fe $07
	db   $fc                                         ; $4f55: $fc
	rrca                                             ; $4f56: $0f
	ld   hl, sp+$1f                                  ; $4f57: $f8 $1f
	ldh  a, [$1f]                                    ; $4f59: $f0 $1f
	ldh  a, [$1f]                                    ; $4f5b: $f0 $1f
	rst  $38                                         ; $4f5d: $ff
	rrca                                             ; $4f5e: $0f
	rst  $38                                         ; $4f5f: $ff
	nop                                              ; $4f60: $00
	rst  $38                                         ; $4f61: $ff
	nop                                              ; $4f62: $00
	rst  $38                                         ; $4f63: $ff
	nop                                              ; $4f64: $00
	rst  $38                                         ; $4f65: $ff
	ldh  a, [rIE]                                    ; $4f66: $f0 $ff
	ld   hl, sp+$1f                                  ; $4f68: $f8 $1f
	db   $fc                                         ; $4f6a: $fc
	rrca                                             ; $4f6b: $0f
	db   $fc                                         ; $4f6c: $fc
	adc  a                                           ; $4f6d: $8f
	db   $fc                                         ; $4f6e: $fc
	adc  a                                           ; $4f6f: $8f

Call_026_4f70:
	db   $fc                                         ; $4f70: $fc
	rra                                              ; $4f71: $1f
	db   $fc                                         ; $4f72: $fc
	ccf                                              ; $4f73: $3f
	ld   hl, sp+$7f                                  ; $4f74: $f8 $7f
	ld   hl, sp-$01                                  ; $4f76: $f8 $ff
	db   $fc                                         ; $4f78: $fc
	rrca                                             ; $4f79: $0f
	db   $fc                                         ; $4f7a: $fc
	rrca                                             ; $4f7b: $0f
	db   $fc                                         ; $4f7c: $fc
	rst  $38                                         ; $4f7d: $ff
	db   $fc                                         ; $4f7e: $fc
	rst  $38                                         ; $4f7f: $ff
	nop                                              ; $4f80: $00
	rst  $38                                         ; $4f81: $ff
	nop                                              ; $4f82: $00
	rst  $38                                         ; $4f83: $ff
	nop                                              ; $4f84: $00
	rst  $38                                         ; $4f85: $ff
	rrca                                             ; $4f86: $0f
	rst  $38                                         ; $4f87: $ff
	rra                                              ; $4f88: $1f
	ld   hl, sp+$1f                                  ; $4f89: $f8 $1f
	ldh  a, [$1f]                                    ; $4f8b: $f0 $1f
	db   $fc                                         ; $4f8d: $fc
	rrca                                             ; $4f8e: $0f
	db   $fc                                         ; $4f8f: $fc
	rlca                                             ; $4f90: $07
	db   $fc                                         ; $4f91: $fc
	rlca                                             ; $4f92: $07
	db   $fc                                         ; $4f93: $fc
	rlca                                             ; $4f94: $07
	db   $fc                                         ; $4f95: $fc
	rlca                                             ; $4f96: $07
	db   $fc                                         ; $4f97: $fc
	rlca                                             ; $4f98: $07
	db   $fc                                         ; $4f99: $fc
	rlca                                             ; $4f9a: $07
	db   $fc                                         ; $4f9b: $fc
	rlca                                             ; $4f9c: $07
	rst  $38                                         ; $4f9d: $ff
	inc  bc                                          ; $4f9e: $03
	rst  $38                                         ; $4f9f: $ff
	nop                                              ; $4fa0: $00
	rst  $38                                         ; $4fa1: $ff
	nop                                              ; $4fa2: $00
	rst  $38                                         ; $4fa3: $ff
	nop                                              ; $4fa4: $00
	rst  $38                                         ; $4fa5: $ff
	ldh  [rIE], a                                    ; $4fa6: $e0 $ff
	ldh  a, [$3f]                                    ; $4fa8: $f0 $3f
	ldh  a, [$3f]                                    ; $4faa: $f0 $3f
	ldh  a, [$3f]                                    ; $4fac: $f0 $3f
	ldh  a, [$3f]                                    ; $4fae: $f0 $3f
	ldh  a, [$3f]                                    ; $4fb0: $f0 $3f
	ldh  a, [$3f]                                    ; $4fb2: $f0 $3f
	ldh  a, [$3f]                                    ; $4fb4: $f0 $3f
	ldh  a, [$3f]                                    ; $4fb6: $f0 $3f
	ldh  a, [$3f]                                    ; $4fb8: $f0 $3f
	ldh  a, [$3f]                                    ; $4fba: $f0 $3f
	ldh  a, [rIE]                                    ; $4fbc: $f0 $ff
	ldh  a, [rIE]                                    ; $4fbe: $f0 $ff
	nop                                              ; $4fc0: $00
	rst  $38                                         ; $4fc1: $ff
	nop                                              ; $4fc2: $00
	rst  $38                                         ; $4fc3: $ff
	nop                                              ; $4fc4: $00
	rst  $38                                         ; $4fc5: $ff
	rrca                                             ; $4fc6: $0f
	rst  $38                                         ; $4fc7: $ff
	rra                                              ; $4fc8: $1f
	ld   hl, sp+$1f                                  ; $4fc9: $f8 $1f
	ldh  a, [$1f]                                    ; $4fcb: $f0 $1f
	di                                               ; $4fcd: $f3
	rra                                              ; $4fce: $1f
	di                                               ; $4fcf: $f3
	rra                                              ; $4fd0: $1f
	di                                               ; $4fd1: $f3
	rra                                              ; $4fd2: $1f
	di                                               ; $4fd3: $f3
	rra                                              ; $4fd4: $1f
	di                                               ; $4fd5: $f3
	rra                                              ; $4fd6: $1f
	di                                               ; $4fd7: $f3
	rra                                              ; $4fd8: $1f
	ldh  a, [$1f]                                    ; $4fd9: $f0 $1f
	ld   hl, sp+$0f                                  ; $4fdb: $f8 $0f
	rst  $38                                         ; $4fdd: $ff
	rlca                                             ; $4fde: $07
	rst  $38                                         ; $4fdf: $ff
	nop                                              ; $4fe0: $00
	rst  $38                                         ; $4fe1: $ff
	nop                                              ; $4fe2: $00
	rst  $38                                         ; $4fe3: $ff
	nop                                              ; $4fe4: $00
	rst  $38                                         ; $4fe5: $ff
	ldh  a, [rIE]                                    ; $4fe6: $f0 $ff
	ld   hl, sp+$1f                                  ; $4fe8: $f8 $1f
	db   $fc                                         ; $4fea: $fc
	rrca                                             ; $4feb: $0f
	db   $fc                                         ; $4fec: $fc
	rrca                                             ; $4fed: $0f
	db   $fc                                         ; $4fee: $fc
	rrca                                             ; $4fef: $0f
	db   $fc                                         ; $4ff0: $fc
	rrca                                             ; $4ff1: $0f
	db   $fc                                         ; $4ff2: $fc
	rrca                                             ; $4ff3: $0f
	db   $fc                                         ; $4ff4: $fc
	rrca                                             ; $4ff5: $0f
	db   $fc                                         ; $4ff6: $fc
	rrca                                             ; $4ff7: $0f
	db   $fc                                         ; $4ff8: $fc
	rrca                                             ; $4ff9: $0f
	db   $fc                                         ; $4ffa: $fc
	rra                                              ; $4ffb: $1f
	db   $fc                                         ; $4ffc: $fc
	rst  $38                                         ; $4ffd: $ff
	ld   hl, sp-$01                                  ; $4ffe: $f8 $ff
	nop                                              ; $5000: $00
	nop                                              ; $5001: $00
	nop                                              ; $5002: $00
	nop                                              ; $5003: $00
	nop                                              ; $5004: $00
	nop                                              ; $5005: $00
	nop                                              ; $5006: $00
	nop                                              ; $5007: $00
	nop                                              ; $5008: $00
	nop                                              ; $5009: $00
	nop                                              ; $500a: $00
	nop                                              ; $500b: $00
	nop                                              ; $500c: $00
	nop                                              ; $500d: $00
	nop                                              ; $500e: $00
	nop                                              ; $500f: $00
	nop                                              ; $5010: $00
	nop                                              ; $5011: $00
	nop                                              ; $5012: $00
	nop                                              ; $5013: $00
	nop                                              ; $5014: $00
	nop                                              ; $5015: $00
	nop                                              ; $5016: $00
	nop                                              ; $5017: $00
	nop                                              ; $5018: $00
	nop                                              ; $5019: $00
	nop                                              ; $501a: $00
	nop                                              ; $501b: $00
	nop                                              ; $501c: $00
	nop                                              ; $501d: $00
	nop                                              ; $501e: $00
	nop                                              ; $501f: $00
	rst  $38                                         ; $5020: $ff
	nop                                              ; $5021: $00
	nop                                              ; $5022: $00
	jp   Jump_026_4100                               ; $5023: $c3 $00 $41


	ld   b, c                                        ; $5026: $41
	add  d                                           ; $5027: $82
	nop                                              ; $5028: $00
	jp   $c300                                       ; $5029: $c3 $00 $c3


	nop                                              ; $502c: $00
	jp   $c300                                       ; $502d: $c3 $00 $c3


	nop                                              ; $5030: $00
	jp   $c300                                       ; $5031: $c3 $00 $c3


	nop                                              ; $5034: $00
	ld   b, c                                        ; $5035: $41
	ld   b, c                                        ; $5036: $41
	add  d                                           ; $5037: $82
	nop                                              ; $5038: $00
	jp   $c300                                       ; $5039: $c3 $00 $c3


	nop                                              ; $503c: $00
	jp   $c300                                       ; $503d: $c3 $00 $c3


	nop                                              ; $5040: $00
	jp   $c300                                       ; $5041: $c3 $00 $c3


	nop                                              ; $5044: $00
	ld   b, c                                        ; $5045: $41
	ld   b, c                                        ; $5046: $41
	add  d                                           ; $5047: $82
	nop                                              ; $5048: $00
	jp   $c300                                       ; $5049: $c3 $00 $c3


	nop                                              ; $504c: $00
	jp   $00ff                                       ; $504d: $c3 $ff $00


	rst  $38                                         ; $5050: $ff
	rst  $38                                         ; $5051: $ff
	sbc  a                                           ; $5052: $9f
	ldh  [$bf], a                                    ; $5053: $e0 $bf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5055: $cf
	ldh  a, [$90]                                    ; $5056: $f0 $90
	rst  $20                                         ; $5058: $e7
	and  b                                           ; $5059: $a0
	rst  $28                                         ; $505a: $ef
	and  b                                           ; $505b: $a0
	rst  $28                                         ; $505c: $ef
	and  b                                           ; $505d: $a0
	xor  $a0                                         ; $505e: $ee $a0
	rst  $38                                         ; $5060: $ff
	rst  $38                                         ; $5061: $ff
	rst  $38                                         ; $5062: $ff
	nop                                              ; $5063: $00
	rst  $38                                         ; $5064: $ff
	rst  $38                                         ; $5065: $ff
	nop                                              ; $5066: $00
	nop                                              ; $5067: $00
	rst  $38                                         ; $5068: $ff
	nop                                              ; $5069: $00
	rst  $38                                         ; $506a: $ff
	nop                                              ; $506b: $00
	rst  $38                                         ; $506c: $ff
	nop                                              ; $506d: $00
	rst  $38                                         ; $506e: $ff
	rst  $38                                         ; $506f: $ff
	rst  $38                                         ; $5070: $ff
	rst  $38                                         ; $5071: $ff
	db   $fd                                         ; $5072: $fd
	ld   bc, $f1ff                                   ; $5073: $01 $ff $f1
	rrca                                             ; $5076: $0f
	add  hl, bc                                      ; $5077: $09
	rst  $38                                         ; $5078: $ff
	dec  b                                           ; $5079: $05
	db   $fd                                         ; $507a: $fd
	dec  b                                           ; $507b: $05
	db   $fd                                         ; $507c: $fd
	dec  b                                           ; $507d: $05
	ld   a, l                                        ; $507e: $7d
	dec  b                                           ; $507f: $05
	rst  $28                                         ; $5080: $ef
	and  c                                           ; $5081: $a1
	rst  $28                                         ; $5082: $ef
	and  c                                           ; $5083: $a1
	rst  $28                                         ; $5084: $ef
	and  c                                           ; $5085: $a1
	rst  $28                                         ; $5086: $ef
	and  c                                           ; $5087: $a1
	rst  $28                                         ; $5088: $ef
	and  c                                           ; $5089: $a1
	rst  $28                                         ; $508a: $ef
	and  c                                           ; $508b: $a1
	rst  $28                                         ; $508c: $ef
	and  c                                           ; $508d: $a1
	rst  $28                                         ; $508e: $ef
	and  c                                           ; $508f: $a1
	nop                                              ; $5090: $00
	rst  $38                                         ; $5091: $ff
	nop                                              ; $5092: $00
	rst  $38                                         ; $5093: $ff
	nop                                              ; $5094: $00
	rst  $38                                         ; $5095: $ff
	nop                                              ; $5096: $00
	rst  $38                                         ; $5097: $ff
	nop                                              ; $5098: $00
	rst  $38                                         ; $5099: $ff
	nop                                              ; $509a: $00
	rst  $38                                         ; $509b: $ff
	nop                                              ; $509c: $00
	rst  $38                                         ; $509d: $ff
	nop                                              ; $509e: $00
	rst  $38                                         ; $509f: $ff
	cp   l                                           ; $50a0: $bd
	add  l                                           ; $50a1: $85
	cp   l                                           ; $50a2: $bd
	add  l                                           ; $50a3: $85
	cp   l                                           ; $50a4: $bd
	add  l                                           ; $50a5: $85
	cp   l                                           ; $50a6: $bd
	add  l                                           ; $50a7: $85
	cp   l                                           ; $50a8: $bd
	add  l                                           ; $50a9: $85
	cp   l                                           ; $50aa: $bd
	add  l                                           ; $50ab: $85
	cp   l                                           ; $50ac: $bd
	add  l                                           ; $50ad: $85
	cp   l                                           ; $50ae: $bd
	add  l                                           ; $50af: $85
	xor  $a0                                         ; $50b0: $ee $a0
	rst  $28                                         ; $50b2: $ef
	and  b                                           ; $50b3: $a0
	rst  $28                                         ; $50b4: $ef
	and  b                                           ; $50b5: $a0
	rst  $28                                         ; $50b6: $ef
	and  b                                           ; $50b7: $a0
	rst  $38                                         ; $50b8: $ff
	sub  b                                           ; $50b9: $90
	rst  $38                                         ; $50ba: $ff
	adc  a                                           ; $50bb: $8f
	cp   b                                           ; $50bc: $b8
	add  b                                           ; $50bd: $80
	rst  $38                                         ; $50be: $ff
	rst  $38                                         ; $50bf: $ff
	rst  $38                                         ; $50c0: $ff
	rst  $38                                         ; $50c1: $ff
	nop                                              ; $50c2: $00
	nop                                              ; $50c3: $00
	rst  $38                                         ; $50c4: $ff
	nop                                              ; $50c5: $00
	rst  $38                                         ; $50c6: $ff
	nop                                              ; $50c7: $00
	rst  $38                                         ; $50c8: $ff
	nop                                              ; $50c9: $00
	rst  $38                                         ; $50ca: $ff
	rst  $38                                         ; $50cb: $ff
	nop                                              ; $50cc: $00
	nop                                              ; $50cd: $00
	rst  $38                                         ; $50ce: $ff
	rst  $38                                         ; $50cf: $ff
	dec  a                                           ; $50d0: $3d
	dec  b                                           ; $50d1: $05
	ld   a, a                                        ; $50d2: $7f
	dec  b                                           ; $50d3: $05
	rst  $38                                         ; $50d4: $ff
	dec  b                                           ; $50d5: $05
	ei                                               ; $50d6: $fb
	add  hl, bc                                      ; $50d7: $09
	rst  $30                                         ; $50d8: $f7
	ld   de, $e1ed                                   ; $50d9: $11 $ed $e1
	ld   a, c                                        ; $50dc: $79
	ld   bc, $ffff                                   ; $50dd: $01 $ff $ff
	rst  $38                                         ; $50e0: $ff
	add  b                                           ; $50e1: $80
	ld   a, a                                        ; $50e2: $7f
	ld   b, b                                        ; $50e3: $40
	ccf                                              ; $50e4: $3f
	jr   nz, @+$01                                   ; $50e5: $20 $ff

	ldh  a, [rIF]                                    ; $50e7: $f0 $0f
	ld   [$f407], sp                                 ; $50e9: $08 $07 $f4
	inc  bc                                          ; $50ec: $03
	ld   a, [$fd01]                                  ; $50ed: $fa $01 $fd
	add  c                                           ; $50f0: $81
	nop                                              ; $50f1: $00
	ld   b, d                                        ; $50f2: $42
	nop                                              ; $50f3: $00
	inc  h                                           ; $50f4: $24
	nop                                              ; $50f5: $00
	jr   jr_026_50f8                                 ; $50f6: $18 $00

jr_026_50f8:
	jr   jr_026_50fa                                 ; $50f8: $18 $00

jr_026_50fa:
	inc  h                                           ; $50fa: $24
	nop                                              ; $50fb: $00
	ld   b, d                                        ; $50fc: $42
	nop                                              ; $50fd: $00
	add  c                                           ; $50fe: $81
	nop                                              ; $50ff: $00
	rst  $38                                         ; $5100: $ff
	rst  $38                                         ; $5101: $ff
	rst  $38                                         ; $5102: $ff
	rst  $38                                         ; $5103: $ff
	rst  $38                                         ; $5104: $ff
	rst  $38                                         ; $5105: $ff
	rst  $38                                         ; $5106: $ff
	rst  $38                                         ; $5107: $ff
	rst  $38                                         ; $5108: $ff
	rst  $38                                         ; $5109: $ff
	rst  $38                                         ; $510a: $ff
	rst  $38                                         ; $510b: $ff
	rst  $38                                         ; $510c: $ff
	rst  $38                                         ; $510d: $ff
	rst  $38                                         ; $510e: $ff
	cp   $ff                                         ; $510f: $fe $ff
	rst  $38                                         ; $5111: $ff
	rst  $38                                         ; $5112: $ff
	rst  $38                                         ; $5113: $ff
	rst  $38                                         ; $5114: $ff
	db   $fc                                         ; $5115: $fc
	db   $fc                                         ; $5116: $fc
	pop  af                                          ; $5117: $f1
	db   $f4                                         ; $5118: $f4
	ret                                              ; $5119: $c9


	ldh  [$8f], a                                    ; $511a: $e0 $8f
	add  b                                           ; $511c: $80
	ccf                                              ; $511d: $3f
	ld   b, b                                        ; $511e: $40

jr_026_511f:
	sbc  a                                           ; $511f: $9f
	rst  $38                                         ; $5120: $ff
	ldh  a, [$f2]                                    ; $5121: $f0 $f2
	add  h                                           ; $5123: $84
	sub  d                                           ; $5124: $92
	inc  h                                           ; $5125: $24
	add  b                                           ; $5126: $80
	jr   nc, jr_026_5129                             ; $5127: $30 $00

jr_026_5129:
	add  sp, $00                                     ; $5129: $e8 $00
	db   $f4                                         ; $512b: $f4
	nop                                              ; $512c: $00
	ld   hl, sp+$00                                  ; $512d: $f8 $00
	db   $fc                                         ; $512f: $fc
	rst  $38                                         ; $5130: $ff
	rrca                                             ; $5131: $0f
	ld   c, a                                        ; $5132: $4f
	sub  c                                           ; $5133: $91
	ld   c, c                                        ; $5134: $49
	ld   [de], a                                     ; $5135: $12
	ld   bc, $000a                                   ; $5136: $01 $0a $00
	rla                                              ; $5139: $17
	nop                                              ; $513a: $00
	cpl                                              ; $513b: $2f
	nop                                              ; $513c: $00
	rra                                              ; $513d: $1f
	nop                                              ; $513e: $00
	ccf                                              ; $513f: $3f
	rst  $38                                         ; $5140: $ff
	rst  $38                                         ; $5141: $ff
	rst  $38                                         ; $5142: $ff
	rst  $38                                         ; $5143: $ff
	rst  $38                                         ; $5144: $ff
	ccf                                              ; $5145: $3f
	ccf                                              ; $5146: $3f
	ld   c, a                                        ; $5147: $4f
	cpl                                              ; $5148: $2f
	ld   d, e                                        ; $5149: $53
	rlca                                             ; $514a: $07
	pop  de                                          ; $514b: $d1
	ld   bc, $02fe                                   ; $514c: $01 $fe $02
	db   $fc                                         ; $514f: $fc
	rst  $38                                         ; $5150: $ff
	rst  $38                                         ; $5151: $ff
	rst  $38                                         ; $5152: $ff
	rst  $38                                         ; $5153: $ff
	rst  $38                                         ; $5154: $ff
	rst  $38                                         ; $5155: $ff
	rst  $38                                         ; $5156: $ff
	rst  $38                                         ; $5157: $ff
	rst  $38                                         ; $5158: $ff
	rst  $38                                         ; $5159: $ff
	rst  $38                                         ; $515a: $ff
	rst  $38                                         ; $515b: $ff
	rst  $38                                         ; $515c: $ff
	rst  $38                                         ; $515d: $ff
	rst  $38                                         ; $515e: $ff
	ld   a, a                                        ; $515f: $7f
	rst  $38                                         ; $5160: $ff
	rst  $38                                         ; $5161: $ff
	rst  $38                                         ; $5162: $ff
	rst  $38                                         ; $5163: $ff
	rst  $38                                         ; $5164: $ff
	rst  $38                                         ; $5165: $ff
	rst  $38                                         ; $5166: $ff
	rst  $38                                         ; $5167: $ff
	rst  $38                                         ; $5168: $ff
	rst  $38                                         ; $5169: $ff
	rst  $38                                         ; $516a: $ff
	rst  $38                                         ; $516b: $ff
	rst  $38                                         ; $516c: $ff
	rst  $38                                         ; $516d: $ff
	rst  $38                                         ; $516e: $ff
	cp   $ff                                         ; $516f: $fe $ff
	rst  $38                                         ; $5171: $ff
	rst  $38                                         ; $5172: $ff
	rst  $38                                         ; $5173: $ff
	rst  $38                                         ; $5174: $ff
	db   $fc                                         ; $5175: $fc
	cp   $f1                                         ; $5176: $fe $f1
	ldh  a, [c]                                      ; $5178: $f2
	ret                                              ; $5179: $c9


	add  sp, -$7b                                    ; $517a: $e8 $85
	ret  nz                                          ; $517c: $c0

	scf                                              ; $517d: $37
	jr   nz, jr_026_511f                             ; $517e: $20 $9f

	rst  $38                                         ; $5180: $ff
	ldh  a, [$f9]                                    ; $5181: $f0 $f9
	add  h                                           ; $5183: $84
	ret                                              ; $5184: $c9


	inc  h                                           ; $5185: $24
	ld   b, b                                        ; $5186: $40
	jr   z, jr_026_5189                              ; $5187: $28 $00

jr_026_5189:
	ld   a, b                                        ; $5189: $78
	nop                                              ; $518a: $00
	ld   hl, sp+$00                                  ; $518b: $f8 $00
	db   $fc                                         ; $518d: $fc
	nop                                              ; $518e: $00
	db   $fc                                         ; $518f: $fc
	rst  $38                                         ; $5190: $ff
	rrca                                             ; $5191: $0f
	cpl                                              ; $5192: $2f
	sub  c                                           ; $5193: $91
	dec  h                                           ; $5194: $25
	sub  d                                           ; $5195: $92
	nop                                              ; $5196: $00
	cp   [hl]                                        ; $5197: $be
	nop                                              ; $5198: $00
	ld   a, a                                        ; $5199: $7f
	nop                                              ; $519a: $00
	cp   a                                           ; $519b: $bf
	nop                                              ; $519c: $00
	ld   a, a                                        ; $519d: $7f
	nop                                              ; $519e: $00
	cp   a                                           ; $519f: $bf
	rst  $38                                         ; $51a0: $ff
	rst  $38                                         ; $51a1: $ff
	rst  $38                                         ; $51a2: $ff
	rst  $38                                         ; $51a3: $ff
	rst  $38                                         ; $51a4: $ff
	ccf                                              ; $51a5: $3f
	cp   a                                           ; $51a6: $bf
	ld   c, a                                        ; $51a7: $4f
	ccf                                              ; $51a8: $3f
	add  e                                           ; $51a9: $83
	rlca                                             ; $51aa: $07
	pop  af                                          ; $51ab: $f1
	add  hl, bc                                      ; $51ac: $09
	and  $01                                         ; $51ad: $e6 $01
	db   $fc                                         ; $51af: $fc
	rst  $38                                         ; $51b0: $ff
	rst  $38                                         ; $51b1: $ff
	rst  $38                                         ; $51b2: $ff
	rst  $38                                         ; $51b3: $ff
	rst  $38                                         ; $51b4: $ff
	rst  $38                                         ; $51b5: $ff
	rst  $38                                         ; $51b6: $ff
	rst  $38                                         ; $51b7: $ff
	rst  $38                                         ; $51b8: $ff
	rst  $38                                         ; $51b9: $ff
	rst  $38                                         ; $51ba: $ff
	rst  $38                                         ; $51bb: $ff
	rst  $38                                         ; $51bc: $ff
	rst  $38                                         ; $51bd: $ff
	rst  $38                                         ; $51be: $ff
	ld   a, a                                        ; $51bf: $7f
	add  c                                           ; $51c0: $81
	nop                                              ; $51c1: $00
	ld   b, d                                        ; $51c2: $42
	nop                                              ; $51c3: $00
	inc  h                                           ; $51c4: $24
	nop                                              ; $51c5: $00
	jr   jr_026_51c8                                 ; $51c6: $18 $00

jr_026_51c8:
	jr   jr_026_51ca                                 ; $51c8: $18 $00

jr_026_51ca:
	inc  h                                           ; $51ca: $24
	nop                                              ; $51cb: $00
	ld   b, d                                        ; $51cc: $42
	nop                                              ; $51cd: $00
	add  c                                           ; $51ce: $81
	nop                                              ; $51cf: $00
	add  c                                           ; $51d0: $81
	nop                                              ; $51d1: $00
	ld   b, d                                        ; $51d2: $42
	nop                                              ; $51d3: $00
	inc  h                                           ; $51d4: $24
	nop                                              ; $51d5: $00
	jr   jr_026_51d8                                 ; $51d6: $18 $00

jr_026_51d8:
	jr   jr_026_51da                                 ; $51d8: $18 $00

jr_026_51da:
	inc  h                                           ; $51da: $24
	nop                                              ; $51db: $00
	ld   b, d                                        ; $51dc: $42
	nop                                              ; $51dd: $00
	add  c                                           ; $51de: $81
	nop                                              ; $51df: $00
	add  c                                           ; $51e0: $81
	nop                                              ; $51e1: $00
	ld   b, d                                        ; $51e2: $42
	nop                                              ; $51e3: $00
	inc  h                                           ; $51e4: $24
	nop                                              ; $51e5: $00
	jr   jr_026_51e8                                 ; $51e6: $18 $00

jr_026_51e8:
	jr   jr_026_51ea                                 ; $51e8: $18 $00

jr_026_51ea:
	inc  h                                           ; $51ea: $24
	nop                                              ; $51eb: $00
	ld   b, d                                        ; $51ec: $42
	nop                                              ; $51ed: $00
	add  c                                           ; $51ee: $81
	nop                                              ; $51ef: $00
	nop                                              ; $51f0: $00
	nop                                              ; $51f1: $00
	nop                                              ; $51f2: $00
	nop                                              ; $51f3: $00
	nop                                              ; $51f4: $00
	nop                                              ; $51f5: $00
	nop                                              ; $51f6: $00
	nop                                              ; $51f7: $00
	nop                                              ; $51f8: $00
	nop                                              ; $51f9: $00
	nop                                              ; $51fa: $00
	nop                                              ; $51fb: $00
	nop                                              ; $51fc: $00
	nop                                              ; $51fd: $00
	nop                                              ; $51fe: $00
	nop                                              ; $51ff: $00
	cp   $fc                                         ; $5200: $fe $fc
	db   $fd                                         ; $5202: $fd
	ld   a, [$f3fc]                                  ; $5203: $fa $fc $f3
	ld   hl, sp-$0d                                  ; $5206: $f8 $f3
	ldh  a, [$ef]                                    ; $5208: $f0 $ef
	ld   hl, sp-$1d                                  ; $520a: $f8 $e3
	ldh  [$df], a                                    ; $520c: $e0 $df
	ldh  [$c7], a                                    ; $520e: $e0 $c7
	nop                                              ; $5210: $00
	rst  $38                                         ; $5211: $ff
	nop                                              ; $5212: $00
	ld   a, a                                        ; $5213: $7f
	nop                                              ; $5214: $00
	rst  $38                                         ; $5215: $ff
	ld   bc, $03fe                                   ; $5216: $01 $fe $03
	db   $fc                                         ; $5219: $fc
	dec  b                                           ; $521a: $05
	ei                                               ; $521b: $fb
	dec  bc                                          ; $521c: $0b
	rst  $30                                         ; $521d: $f7
	rra                                              ; $521e: $1f
	rst  $20                                         ; $521f: $e7
	rlca                                             ; $5220: $07
	ld   hl, sp+$3a                                  ; $5221: $f8 $3a
	call nz, $1cfe                                   ; $5223: $c4 $fe $1c
	ld   a, $cc                                      ; $5226: $3e $cc
	ld   e, $ec                                      ; $5228: $1e $ec
	sbc  [hl]                                        ; $522a: $9e
	ld   l, l                                        ; $522b: $6d
	adc  [hl]                                        ; $522c: $8e
	ld   [hl], l                                     ; $522d: $75
	adc  $b5                                         ; $522e: $ce $b5
	ldh  [$1f], a                                    ; $5230: $e0 $1f
	ld   e, h                                        ; $5232: $5c
	inc  hl                                          ; $5233: $23
	ld   a, a                                        ; $5234: $7f
	jr   c, jr_026_52b3                              ; $5235: $38 $7c

	inc  sp                                          ; $5237: $33
	ld   a, b                                        ; $5238: $78
	or   a                                           ; $5239: $b7
	ld   a, c                                        ; $523a: $79
	or   [hl]                                        ; $523b: $b6
	ld   [hl], c                                     ; $523c: $71
	xor  [hl]                                        ; $523d: $ae
	ld   [hl], e                                     ; $523e: $73
	xor  l                                           ; $523f: $ad
	nop                                              ; $5240: $00
	db   $fd                                         ; $5241: $fd
	nop                                              ; $5242: $00
	rst  $38                                         ; $5243: $ff
	nop                                              ; $5244: $00
	rst  $38                                         ; $5245: $ff
	add  b                                           ; $5246: $80
	ld   a, a                                        ; $5247: $7f
	ret  nz                                          ; $5248: $c0

	ccf                                              ; $5249: $3f
	and  b                                           ; $524a: $a0
	rst  JumpTable                                         ; $524b: $df
	ret  nc                                          ; $524c: $d0

	rst  $28                                         ; $524d: $ef
	ld   hl, sp-$19                                  ; $524e: $f8 $e7
	ld   a, a                                        ; $5250: $7f
	cp   a                                           ; $5251: $bf
	cp   a                                           ; $5252: $bf
	rra                                              ; $5253: $1f
	ccf                                              ; $5254: $3f
	ld   c, a                                        ; $5255: $4f
	rra                                              ; $5256: $1f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5257: $cf
	rrca                                             ; $5258: $0f
	rst  $30                                         ; $5259: $f7
	rra                                              ; $525a: $1f
	rst  $20                                         ; $525b: $e7
	rlca                                             ; $525c: $07
	db   $e3                                         ; $525d: $e3
	rlca                                             ; $525e: $07
	ei                                               ; $525f: $fb
	rst  $38                                         ; $5260: $ff
	db   $fc                                         ; $5261: $fc
	db   $fc                                         ; $5262: $fc
	ld   a, [$f3fc]                                  ; $5263: $fa $fc $f3
	ld   a, [$f8f1]                                  ; $5266: $fa $f1 $f8
	push hl                                          ; $5269: $e5
	ld   hl, sp-$19                                  ; $526a: $f8 $e7
	ldh  [$d7], a                                    ; $526c: $e0 $d7
	ldh  a, [$cf]                                    ; $526e: $f0 $cf
	nop                                              ; $5270: $00
	rst  JumpTable                                         ; $5271: $df
	add  b                                           ; $5272: $80
	ld   a, a                                        ; $5273: $7f
	nop                                              ; $5274: $00
	ld   a, a                                        ; $5275: $7f
	ld   bc, $03fe                                   ; $5276: $01 $fe $03
	db   $fd                                         ; $5279: $fd
	rlca                                             ; $527a: $07
	ld   sp, hl                                      ; $527b: $f9
	add  hl, bc                                      ; $527c: $09

jr_026_527d:
	or   $11                                         ; $527d: $f6 $11
	xor  $07                                         ; $527f: $ee $07
	ld   hl, sp+$3f                                  ; $5281: $f8 $3f
	rst  ToBoot                                         ; $5283: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5284: $cf
	daa                                              ; $5285: $27
	rst  ToBoot                                         ; $5286: $c7
	or   e                                           ; $5287: $b3
	rst  $20                                         ; $5288: $e7
	db   $d3                                         ; $5289: $d3
	db   $e3                                         ; $528a: $e3

jr_026_528b:
	db   $dd                                         ; $528b: $dd
	di                                               ; $528c: $f3
	db   $ed                                         ; $528d: $ed
	di                                               ; $528e: $f3
	db   $ec                                         ; $528f: $ec
	ldh  [$1f], a                                    ; $5290: $e0 $1f
	sbc  h                                           ; $5292: $9c
	inc  hl                                          ; $5293: $23
	sbc  a                                           ; $5294: $9f
	inc  l                                           ; $5295: $2c
	sbc  a                                           ; $5296: $9f
	ld   l, $9f                                      ; $5297: $2e $9f
	ld   l, [hl]                                     ; $5299: $6e
	sbc  [hl]                                        ; $529a: $9e
	ld   l, l                                        ; $529b: $6d
	sbc  h                                           ; $529c: $9c
	ld   l, e                                        ; $529d: $6b
	inc  e                                           ; $529e: $1c
	db   $eb                                         ; $529f: $eb
	ld   [bc], a                                     ; $52a0: $02
	ld   sp, hl                                      ; $52a1: $f9
	nop                                              ; $52a2: $00
	rst  $38                                         ; $52a3: $ff
	nop                                              ; $52a4: $00
	cp   $80                                         ; $52a5: $fe $80
	ld   a, a                                        ; $52a7: $7f
	ld   b, b                                        ; $52a8: $40
	cp   a                                           ; $52a9: $bf
	jr   nz, jr_026_528b                             ; $52aa: $20 $df

	jr   nc, jr_026_527d                             ; $52ac: $30 $cf

	ld   a, b                                        ; $52ae: $78
	or   a                                           ; $52af: $b7
	ld   a, a                                        ; $52b0: $7f
	cp   a                                           ; $52b1: $bf
	ld   a, a                                        ; $52b2: $7f

jr_026_52b3:
	rra                                              ; $52b3: $1f

jr_026_52b4:
	cp   a                                           ; $52b4: $bf
	ld   c, a                                        ; $52b5: $4f
	rra                                              ; $52b6: $1f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52b7: $cf
	cpl                                              ; $52b8: $2f
	sub  a                                           ; $52b9: $97
	rrca                                             ; $52ba: $0f
	rst  $20                                         ; $52bb: $e7
	rra                                              ; $52bc: $1f
	jp   $fb07                                       ; $52bd: $c3 $07 $fb


	add  c                                           ; $52c0: $81
	nop                                              ; $52c1: $00
	ld   b, d                                        ; $52c2: $42
	nop                                              ; $52c3: $00
	inc  h                                           ; $52c4: $24
	nop                                              ; $52c5: $00
	jr   jr_026_52c8                                 ; $52c6: $18 $00

jr_026_52c8:
	jr   jr_026_52ca                                 ; $52c8: $18 $00

jr_026_52ca:
	inc  h                                           ; $52ca: $24
	nop                                              ; $52cb: $00
	ld   b, d                                        ; $52cc: $42
	nop                                              ; $52cd: $00
	add  c                                           ; $52ce: $81
	nop                                              ; $52cf: $00
	add  c                                           ; $52d0: $81
	nop                                              ; $52d1: $00
	ld   b, d                                        ; $52d2: $42
	nop                                              ; $52d3: $00
	inc  h                                           ; $52d4: $24
	nop                                              ; $52d5: $00
	jr   jr_026_52d8                                 ; $52d6: $18 $00

jr_026_52d8:
	jr   jr_026_52da                                 ; $52d8: $18 $00

jr_026_52da:
	inc  h                                           ; $52da: $24
	nop                                              ; $52db: $00
	ld   b, d                                        ; $52dc: $42
	nop                                              ; $52dd: $00
	add  c                                           ; $52de: $81
	nop                                              ; $52df: $00
	add  c                                           ; $52e0: $81
	nop                                              ; $52e1: $00
	ld   b, d                                        ; $52e2: $42
	nop                                              ; $52e3: $00
	inc  h                                           ; $52e4: $24
	nop                                              ; $52e5: $00
	jr   jr_026_52e8                                 ; $52e6: $18 $00

jr_026_52e8:
	jr   jr_026_52ea                                 ; $52e8: $18 $00

jr_026_52ea:
	inc  h                                           ; $52ea: $24
	nop                                              ; $52eb: $00
	ld   b, d                                        ; $52ec: $42
	nop                                              ; $52ed: $00
	add  c                                           ; $52ee: $81
	nop                                              ; $52ef: $00
	ldh  [rP1], a                                    ; $52f0: $e0 $00
	jr   nz, jr_026_52b4                             ; $52f2: $20 $c0

	inc  hl                                          ; $52f4: $23
	ret  nz                                          ; $52f5: $c0

	ld   a, $c1                                      ; $52f6: $3e $c1
	ld   [hl+], a                                    ; $52f8: $22
	db   $dd                                         ; $52f9: $dd
	ld   [hl+], a                                    ; $52fa: $22
	db   $dd                                         ; $52fb: $dd
	ld   a, $c1                                      ; $52fc: $3e $c1
	db   $e3                                         ; $52fe: $e3
	nop                                              ; $52ff: $00
	ldh  a, [$cf]                                    ; $5300: $f0 $cf
	ret  nz                                          ; $5302: $c0

	cp   a                                           ; $5303: $bf
	ret  nz                                          ; $5304: $c0

	adc  a                                           ; $5305: $8f
	ldh  [$1f], a                                    ; $5306: $e0 $1f
	add  b                                           ; $5308: $80
	ld   a, a                                        ; $5309: $7f
	add  b                                           ; $530a: $80
	rra                                              ; $530b: $1f
	ldh  [$1f], a                                    ; $530c: $e0 $1f
	add  b                                           ; $530e: $80
	ld   a, a                                        ; $530f: $7f
	daa                                              ; $5310: $27
	reti                                             ; $5311: $d9


	ld   hl, $70de                                   ; $5312: $21 $de $70
	adc  a                                           ; $5315: $8f
	ld   e, h                                        ; $5316: $5c
	or   e                                           ; $5317: $b3
	ld   a, a                                        ; $5318: $7f
	cp   h                                           ; $5319: $bc
	rst  $38                                         ; $531a: $ff
	ld   a, a                                        ; $531b: $7f
	rst  $38                                         ; $531c: $ff
	nop                                              ; $531d: $00
	add  b                                           ; $531e: $80
	ld   a, a                                        ; $531f: $7f
	add  $b9                                         ; $5320: $c6 $b9
	ldh  [$5e], a                                    ; $5322: $e0 $5e
	ld   h, b                                        ; $5324: $60
	sbc  h                                           ; $5325: $9c
	nop                                              ; $5326: $00
	ld   hl, sp+$00                                  ; $5327: $f8 $00
	rst  $30                                         ; $5329: $f7
	add  h                                           ; $532a: $84
	ld   a, d                                        ; $532b: $7a
	adc  c                                           ; $532c: $89
	ld   [hl], h                                     ; $532d: $74
	add  hl, bc                                      ; $532e: $09
	ldh  a, [$63]                                    ; $532f: $f0 $63
	sbc  l                                           ; $5331: $9d
	rlca                                             ; $5332: $07
	ld   a, d                                        ; $5333: $7a
	ld   b, $39                                      ; $5334: $06 $39
	nop                                              ; $5336: $00
	rra                                              ; $5337: $1f
	nop                                              ; $5338: $00

jr_026_5339:
	rst  $28                                         ; $5339: $ef
	ld   hl, $915e                                   ; $533a: $21 $5e $91
	ld   l, $90                                      ; $533d: $2e $90
	rrca                                             ; $533f: $0f
	db   $e4                                         ; $5340: $e4
	sbc  e                                           ; $5341: $9b
	add  h                                           ; $5342: $84
	ld   a, e                                        ; $5343: $7b
	ld   c, $f1                                      ; $5344: $0e $f1
	ld   a, [hl-]                                    ; $5346: $3a
	call $3dfe                                       ; $5347: $cd $fe $3d
	rst  $38                                         ; $534a: $ff
	cp   $ff                                         ; $534b: $fe $ff
	nop                                              ; $534d: $00
	ld   bc, $0ffe                                   ; $534e: $01 $fe $0f
	di                                               ; $5351: $f3

jr_026_5352:
	inc  bc                                          ; $5352: $03
	pop  af                                          ; $5353: $f1
	inc  bc                                          ; $5354: $03
	db   $fd                                         ; $5355: $fd
	rlca                                             ; $5356: $07
	ld   hl, sp+$01                                  ; $5357: $f8 $01
	ld   hl, sp+$01                                  ; $5359: $f8 $01
	cp   $07                                         ; $535b: $fe $07
	ld   hl, sp+$01                                  ; $535d: $f8 $01
	ld   hl, sp-$20                                  ; $535f: $f8 $e0
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5361: $cf
	ret  nz                                          ; $5362: $c0

	cp   a                                           ; $5363: $bf
	ldh  [$9f], a                                    ; $5364: $e0 $9f
	ret  nz                                          ; $5366: $c0

	rra                                              ; $5367: $1f
	add  b                                           ; $5368: $80
	ld   a, a                                        ; $5369: $7f
	ldh  [$1f], a                                    ; $536a: $e0 $1f
	add  b                                           ; $536c: $80
	rra                                              ; $536d: $1f
	add  b                                           ; $536e: $80
	ld   a, a                                        ; $536f: $7f
	jr   c, jr_026_5339                              ; $5370: $38 $c7

	ld   a, $d9                                      ; $5372: $3e $d9
	ld   a, a                                        ; $5374: $7f
	cp   [hl]                                        ; $5375: $be
	ld   a, a                                        ; $5376: $7f
	cp   a                                           ; $5377: $bf
	ld   a, a                                        ; $5378: $7f
	add  b                                           ; $5379: $80
	add  b                                           ; $537a: $80
	ld   a, a                                        ; $537b: $7f
	add  b                                           ; $537c: $80
	ld   a, a                                        ; $537d: $7f
	rst  $38                                         ; $537e: $ff
	nop                                              ; $537f: $00
	pop  af                                          ; $5380: $f1
	ld   l, [hl]                                     ; $5381: $6e
	ld   a, b                                        ; $5382: $78
	sub  a                                           ; $5383: $97
	jr   nc, jr_026_5352                             ; $5384: $30 $cc

	add  b                                           ; $5386: $80
	ld   a, b                                        ; $5387: $78
	add  e                                           ; $5388: $83
	ld   [hl], h                                     ; $5389: $74
	inc  b                                           ; $538a: $04
	ld   a, [$f408]                                  ; $538b: $fa $08 $f4
	dec  bc                                          ; $538e: $0b
	ldh  a, [rAUD2LOW]                               ; $538f: $f0 $18
	rst  $20                                         ; $5391: $e7
	add  hl, bc                                      ; $5392: $09
	halt                                             ; $5393: $76
	inc  bc                                          ; $5394: $03
	dec  a                                           ; $5395: $3d
	inc  bc                                          ; $5396: $03
	inc  e                                           ; $5397: $1c
	jp   nz, $202d                                   ; $5398: $c2 $2d $20

	ld   e, a                                        ; $539b: $5f
	ld   d, b                                        ; $539c: $50
	xor  a                                           ; $539d: $af
	pop  de                                          ; $539e: $d1
	ld   c, $fc                                      ; $539f: $0e $fc
	ld   a, e                                        ; $53a1: $7b
	db   $fc                                         ; $53a2: $fc
	di                                               ; $53a3: $f3
	ldh  a, [c]                                      ; $53a4: $f2
	call $3dc2                                       ; $53a5: $cd $c2 $3d
	ld   c, $f1                                      ; $53a8: $0e $f1
	rra                                              ; $53aa: $1f
	and  $7f                                         ; $53ab: $e6 $7f
	add  b                                           ; $53ad: $80
	rst  $38                                         ; $53ae: $ff
	nop                                              ; $53af: $00
	rlca                                             ; $53b0: $07
	db   $e3                                         ; $53b1: $e3
	rrca                                             ; $53b2: $0f
	pop  af                                          ; $53b3: $f1
	inc  bc                                          ; $53b4: $03
	db   $fd                                         ; $53b5: $fd
	inc  bc                                          ; $53b6: $03
	ldh  a, [rTAC]                                   ; $53b7: $f0 $07
	ld   hl, sp+$01                                  ; $53b9: $f8 $01
	cp   $01                                         ; $53bb: $fe $01

jr_026_53bd:
	ld   hl, sp+$07                                  ; $53bd: $f8 $07
	ld   hl, sp+$00                                  ; $53bf: $f8 $00
	nop                                              ; $53c1: $00
	inc  bc                                          ; $53c2: $03
	nop                                              ; $53c3: $00
	ld   [bc], a                                     ; $53c4: $02
	ld   bc, $0003                                   ; $53c5: $01 $03 $00
	ldh  a, [rP1]                                    ; $53c8: $f0 $00
	ld   c, e                                        ; $53ca: $4b
	ldh  a, [rWY]                                    ; $53cb: $f0 $4a
	pop  af                                          ; $53cd: $f1
	rst  $38                                         ; $53ce: $ff
	nop                                              ; $53cf: $00
	nop                                              ; $53d0: $00
	nop                                              ; $53d1: $00
	rst  $38                                         ; $53d2: $ff
	nop                                              ; $53d3: $00
	jr   jr_026_53bd                                 ; $53d4: $18 $e7

	rst  $30                                         ; $53d6: $f7
	rrca                                             ; $53d7: $0f
	add  a                                           ; $53d8: $87
	ld   a, a                                        ; $53d9: $7f
	rst  $30                                         ; $53da: $f7
	rrca                                             ; $53db: $0f
	rra                                              ; $53dc: $1f
	ldh  [$7a], a                                    ; $53dd: $e0 $7a
	add  a                                           ; $53df: $87
	nop                                              ; $53e0: $00
	nop                                              ; $53e1: $00
	add  b                                           ; $53e2: $80
	nop                                              ; $53e3: $00
	ret  nz                                          ; $53e4: $c0

	nop                                              ; $53e5: $00
	ld   b, b                                        ; $53e6: $40
	add  b                                           ; $53e7: $80
	ld   b, b                                        ; $53e8: $40
	add  b                                           ; $53e9: $80
	ld   b, b                                        ; $53ea: $40
	add  b                                           ; $53eb: $80
	ret  nz                                          ; $53ec: $c0

	nop                                              ; $53ed: $00
	ret  nz                                          ; $53ee: $c0

	nop                                              ; $53ef: $00
	nop                                              ; $53f0: $00
	nop                                              ; $53f1: $00
	nop                                              ; $53f2: $00
	nop                                              ; $53f3: $00
	nop                                              ; $53f4: $00
	nop                                              ; $53f5: $00
	nop                                              ; $53f6: $00
	nop                                              ; $53f7: $00
	nop                                              ; $53f8: $00
	nop                                              ; $53f9: $00
	nop                                              ; $53fa: $00
	nop                                              ; $53fb: $00
	nop                                              ; $53fc: $00
	nop                                              ; $53fd: $00
	nop                                              ; $53fe: $00
	nop                                              ; $53ff: $00
	rst  $38                                         ; $5400: $ff
	nop                                              ; $5401: $00
	ldh  [$1f], a                                    ; $5402: $e0 $1f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5404: $cf
	ccf                                              ; $5405: $3f
	sbc  a                                           ; $5406: $9f
	ld   a, a                                        ; $5407: $7f
	cp   a                                           ; $5408: $bf
	ld   a, a                                        ; $5409: $7f
	cp   a                                           ; $540a: $bf
	ld   a, a                                        ; $540b: $7f
	cp   h                                           ; $540c: $bc
	ld   a, a                                        ; $540d: $7f
	cp   c                                           ; $540e: $b9
	ld   a, [hl]                                     ; $540f: $7e
	rst  $38                                         ; $5410: $ff
	nop                                              ; $5411: $00
	nop                                              ; $5412: $00
	rst  $38                                         ; $5413: $ff
	rst  $38                                         ; $5414: $ff
	rst  $38                                         ; $5415: $ff
	rst  $38                                         ; $5416: $ff
	rst  $38                                         ; $5417: $ff
	rst  $38                                         ; $5418: $ff
	rst  $38                                         ; $5419: $ff
	rst  $38                                         ; $541a: $ff
	rst  $38                                         ; $541b: $ff
	nop                                              ; $541c: $00
	rst  $38                                         ; $541d: $ff
	rst  $38                                         ; $541e: $ff
	nop                                              ; $541f: $00
	cp   e                                           ; $5420: $bb
	ld   a, h                                        ; $5421: $7c
	cp   e                                           ; $5422: $bb
	ld   a, h                                        ; $5423: $7c
	cp   e                                           ; $5424: $bb
	ld   a, h                                        ; $5425: $7c
	cp   e                                           ; $5426: $bb
	ld   a, h                                        ; $5427: $7c
	cp   e                                           ; $5428: $bb
	ld   a, h                                        ; $5429: $7c
	cp   e                                           ; $542a: $bb
	ld   a, h                                        ; $542b: $7c
	cp   e                                           ; $542c: $bb
	ld   a, h                                        ; $542d: $7c
	cp   e                                           ; $542e: $bb
	ld   a, h                                        ; $542f: $7c
	rst  $38                                         ; $5430: $ff
	nop                                              ; $5431: $00
	nop                                              ; $5432: $00
	rst  $38                                         ; $5433: $ff
	nop                                              ; $5434: $00
	rst  $38                                         ; $5435: $ff
	nop                                              ; $5436: $00
	rst  $38                                         ; $5437: $ff
	nop                                              ; $5438: $00
	rst  $38                                         ; $5439: $ff
	nop                                              ; $543a: $00
	rst  $38                                         ; $543b: $ff
	nop                                              ; $543c: $00
	rst  $38                                         ; $543d: $ff
	rst  $38                                         ; $543e: $ff
	nop                                              ; $543f: $00
	cp   e                                           ; $5440: $bb
	ld   a, h                                        ; $5441: $7c
	cp   e                                           ; $5442: $bb
	ld   a, h                                        ; $5443: $7c
	cp   e                                           ; $5444: $bb
	ld   a, h                                        ; $5445: $7c
	cp   e                                           ; $5446: $bb
	ld   a, h                                        ; $5447: $7c
	cp   e                                           ; $5448: $bb
	ld   a, h                                        ; $5449: $7c
	cp   e                                           ; $544a: $bb
	ld   a, h                                        ; $544b: $7c
	cp   e                                           ; $544c: $bb
	ld   a, h                                        ; $544d: $7c
	cp   a                                           ; $544e: $bf
	ld   a, a                                        ; $544f: $7f
	rst  $38                                         ; $5450: $ff
	nop                                              ; $5451: $00
	rst  $38                                         ; $5452: $ff
	nop                                              ; $5453: $00
	rst  $38                                         ; $5454: $ff
	nop                                              ; $5455: $00
	rst  $38                                         ; $5456: $ff
	nop                                              ; $5457: $00
	rst  $38                                         ; $5458: $ff
	nop                                              ; $5459: $00
	rst  $38                                         ; $545a: $ff
	nop                                              ; $545b: $00
	rst  $38                                         ; $545c: $ff
	nop                                              ; $545d: $00
	rst  $38                                         ; $545e: $ff
	nop                                              ; $545f: $00
	nop                                              ; $5460: $00
	nop                                              ; $5461: $00
	nop                                              ; $5462: $00
	nop                                              ; $5463: $00
	nop                                              ; $5464: $00
	nop                                              ; $5465: $00
	nop                                              ; $5466: $00
	nop                                              ; $5467: $00
	inc  a                                           ; $5468: $3c
	nop                                              ; $5469: $00
	ld   e, d                                        ; $546a: $5a
	inc  a                                           ; $546b: $3c
	ld   e, d                                        ; $546c: $5a
	inc  a                                           ; $546d: $3c
	rst  $38                                         ; $546e: $ff
	nop                                              ; $546f: $00
	nop                                              ; $5470: $00
	nop                                              ; $5471: $00
	ld   a, a                                        ; $5472: $7f
	nop                                              ; $5473: $00
	ld   c, b                                        ; $5474: $48
	scf                                              ; $5475: $37
	ld   [hl], a                                     ; $5476: $77
	rrca                                             ; $5477: $0f
	scf                                              ; $5478: $37

jr_026_5479:
	rrca                                             ; $5479: $0f
	ld   [hl], a                                     ; $547a: $77
	rrca                                             ; $547b: $0f
	ld   c, a                                        ; $547c: $4f
	jr   nc, jr_026_5479                             ; $547d: $30 $fa

	rlca                                             ; $547f: $07
	nop                                              ; $5480: $00
	nop                                              ; $5481: $00
	add  b                                           ; $5482: $80
	nop                                              ; $5483: $00
	ld   hl, sp+$00                                  ; $5484: $f8 $00
	ld   c, b                                        ; $5486: $48
	or   b                                           ; $5487: $b0
	ld   c, b                                        ; $5488: $48
	or   b                                           ; $5489: $b0
	ld   c, b                                        ; $548a: $48
	or   b                                           ; $548b: $b0
	ld   hl, sp+$00                                  ; $548c: $f8 $00
	ret  nz                                          ; $548e: $c0

	nop                                              ; $548f: $00
	dec  d                                           ; $5490: $15
	ei                                               ; $5491: $fb
	rla                                              ; $5492: $17
	ld   hl, sp-$02                                  ; $5493: $f8 $fe
	ld   bc, $395f                                   ; $5495: $01 $5f $39
	ld   e, l                                        ; $5498: $5d
	dec  sp                                          ; $5499: $3b
	dec  a                                           ; $549a: $3d
	inc  bc                                          ; $549b: $03
	rrca                                             ; $549c: $0f
	ld   bc, $010f                                   ; $549d: $01 $0f $01
	ld   [$fac7], a                                  ; $54a0: $ea $c7 $fa
	rlca                                             ; $54a3: $07
	ld   a, a                                        ; $54a4: $7f
	add  b                                           ; $54a5: $80
	ld   [$d595], a                                  ; $54a6: $ea $95 $d5
	cp   a                                           ; $54a9: $bf
	ld   [$d5bf], a                                  ; $54aa: $ea $bf $d5
	xor  d                                           ; $54ad: $aa

jr_026_54ae:
	rst  $38                                         ; $54ae: $ff
	add  b                                           ; $54af: $80
	rst  $28                                         ; $54b0: $ef
	nop                                              ; $54b1: $00
	rst  $38                                         ; $54b2: $ff
	jr   nz, jr_026_54ae                             ; $54b3: $20 $f9

	ld   b, $af                                      ; $54b5: $06 $af
	ld   d, [hl]                                     ; $54b7: $56
	ld   e, a                                        ; $54b8: $5f
	or   $af                                         ; $54b9: $f6 $af
	or   $5f                                         ; $54bb: $f6 $5f
	and  [hl]                                        ; $54bd: $a6
	rst  $38                                         ; $54be: $ff
	ld   b, $bf                                      ; $54bf: $06 $bf

jr_026_54c1:
	ld   a, [hl]                                     ; $54c1: $7e
	rst  $38                                         ; $54c2: $ff
	rlca                                             ; $54c3: $07
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54c4: $cf
	jr   nc, jr_026_54c1                             ; $54c5: $30 $fa

	dec  [hl]                                        ; $54c7: $35
	cp   e                                           ; $54c8: $bb
	ld   [hl], l                                     ; $54c9: $75
	cp   [hl]                                        ; $54ca: $be

jr_026_54cb:
	ld   [hl], l                                     ; $54cb: $75
	ei                                               ; $54cc: $fb
	inc  [hl]                                        ; $54cd: $34
	rst  $38                                         ; $54ce: $ff
	jr   nc, jr_026_54cb                             ; $54cf: $30 $fa

	rlca                                             ; $54d1: $07
	ld   a, [$ff07]                                  ; $54d2: $fa $07 $ff
	nop                                              ; $54d5: $00
	db   $db                                         ; $54d6: $db
	inc  h                                           ; $54d7: $24
	ld   l, l                                        ; $54d8: $6d
	or   [hl]                                        ; $54d9: $b6
	db   $db                                         ; $54da: $db
	or   [hl]                                        ; $54db: $b6
	ld   l, l                                        ; $54dc: $6d
	sub  d                                           ; $54dd: $92
	rst  $38                                         ; $54de: $ff
	nop                                              ; $54df: $00
	pop  af                                          ; $54e0: $f1
	nop                                              ; $54e1: $00
	rst  $38                                         ; $54e2: $ff
	ld   d, b                                        ; $54e3: $50
	ld   sp, hl                                      ; $54e4: $f9
	ld   b, $6f                                      ; $54e5: $06 $6f
	sub  [hl]                                        ; $54e7: $96
	cp   a                                           ; $54e8: $bf
	sub  $6f                                         ; $54e9: $d6 $6f
	sub  $af                                         ; $54eb: $d6 $af
	ld   d, [hl]                                     ; $54ed: $56
	rst  $38                                         ; $54ee: $ff
	ld   b, $e0                                      ; $54ef: $06 $e0
	nop                                              ; $54f1: $00
	jr   nz, @-$3e                                   ; $54f2: $20 $c0

	ld   l, $c0                                      ; $54f4: $2e $c0
	ld   a, [hl-]                                    ; $54f6: $3a
	call nz, $d42a                                   ; $54f7: $c4 $2a $d4
	ld   a, [hl+]                                    ; $54fa: $2a
	call nc, $c43a                                   ; $54fb: $d4 $3a $c4
	xor  $00                                         ; $54fe: $ee $00
	rst  $38                                         ; $5500: $ff
	rst  $38                                         ; $5501: $ff
	rst  $38                                         ; $5502: $ff
	rst  $38                                         ; $5503: $ff
	rst  $38                                         ; $5504: $ff
	ei                                               ; $5505: $fb
	rst  $38                                         ; $5506: $ff
	ld   de, $5bff                                   ; $5507: $11 $ff $5b
	rst  $38                                         ; $550a: $ff
	ld   b, b                                        ; $550b: $40
	rst  $38                                         ; $550c: $ff
	ld   e, l                                        ; $550d: $5d
	rst  $38                                         ; $550e: $ff
	nop                                              ; $550f: $00
	rst  $38                                         ; $5510: $ff
	rst  $38                                         ; $5511: $ff
	rst  $38                                         ; $5512: $ff
	rst  $38                                         ; $5513: $ff
	rst  $38                                         ; $5514: $ff
	rst  $30                                         ; $5515: $f7
	rst  $38                                         ; $5516: $ff
	add  b                                           ; $5517: $80
	rst  $38                                         ; $5518: $ff
	or   [hl]                                        ; $5519: $b6
	rst  $38                                         ; $551a: $ff
	or   [hl]                                        ; $551b: $b6
	rst  $38                                         ; $551c: $ff
	or   [hl]                                        ; $551d: $b6
	rst  $38                                         ; $551e: $ff
	and  d                                           ; $551f: $a2
	rst  $38                                         ; $5520: $ff
	rst  $38                                         ; $5521: $ff
	rst  $38                                         ; $5522: $ff
	rst  $38                                         ; $5523: $ff
	rst  $38                                         ; $5524: $ff
	adc  d                                           ; $5525: $8a
	rst  $38                                         ; $5526: $ff
	ret  nc                                          ; $5527: $d0

	rst  $38                                         ; $5528: $ff
	adc  e                                           ; $5529: $8b
	rst  $38                                         ; $552a: $ff
	and  b                                           ; $552b: $a0
	rst  $38                                         ; $552c: $ff
	xor  e                                           ; $552d: $ab
	rst  $38                                         ; $552e: $ff
	and  b                                           ; $552f: $a0
	rst  $38                                         ; $5530: $ff
	rst  $38                                         ; $5531: $ff
	rst  $38                                         ; $5532: $ff
	rst  $38                                         ; $5533: $ff
	rst  $38                                         ; $5534: $ff
	rst  $38                                         ; $5535: $ff
	rst  $38                                         ; $5536: $ff
	db   $dd                                         ; $5537: $dd
	rst  $38                                         ; $5538: $ff
	db   $dd                                         ; $5539: $dd
	rst  $38                                         ; $553a: $ff
	db   $dd                                         ; $553b: $dd
	rst  $38                                         ; $553c: $ff
	db   $dd                                         ; $553d: $dd
	rst  $38                                         ; $553e: $ff
	db   $dd                                         ; $553f: $dd
	inc  b                                           ; $5540: $04
	ei                                               ; $5541: $fb
	db   $f4                                         ; $5542: $f4
	dec  bc                                          ; $5543: $0b
	inc  d                                           ; $5544: $14
	dec  bc                                          ; $5545: $0b
	db   $fc                                         ; $5546: $fc
	inc  bc                                          ; $5547: $03
	add  h                                           ; $5548: $84
	inc  bc                                          ; $5549: $03
	db   $fc                                         ; $554a: $fc
	inc  bc                                          ; $554b: $03
	inc  b                                           ; $554c: $04
	ei                                               ; $554d: $fb
	inc  b                                           ; $554e: $04
	ei                                               ; $554f: $fb
	rst  $38                                         ; $5550: $ff
	ld   bc, $0183                                   ; $5551: $01 $83 $01
	inc  bc                                          ; $5554: $03
	ld   a, b                                        ; $5555: $78
	nop                                              ; $5556: $00
	ld   a, e                                        ; $5557: $7b
	add  b                                           ; $5558: $80
	rlca                                             ; $5559: $07
	ldh  [$1f], a                                    ; $555a: $e0 $1f
	ld   h, b                                        ; $555c: $60
	rra                                              ; $555d: $1f
	ld   h, b                                        ; $555e: $60
	ld   e, $ff                                      ; $555f: $1e $ff
	rst  $38                                         ; $5561: $ff
	rst  $38                                         ; $5562: $ff
	rst  $38                                         ; $5563: $ff
	rst  $38                                         ; $5564: $ff
	inc  bc                                          ; $5565: $03
	inc  bc                                          ; $5566: $03
	ld   sp, hl                                      ; $5567: $f9
	ld   bc, $01fc                                   ; $5568: $01 $fc $01
	cp   $01                                         ; $556b: $fe $01
	cp   $e1                                         ; $556d: $fe $e1
	ld   c, $00                                      ; $556f: $0e $00
	rst  $38                                         ; $5571: $ff
	nop                                              ; $5572: $00
	rst  $38                                         ; $5573: $ff
	nop                                              ; $5574: $00
	rst  $38                                         ; $5575: $ff
	nop                                              ; $5576: $00
	rst  $38                                         ; $5577: $ff
	nop                                              ; $5578: $00
	rst  $38                                         ; $5579: $ff
	inc  bc                                          ; $557a: $03
	db   $fc                                         ; $557b: $fc
	inc  b                                           ; $557c: $04
	ld   hl, sp+$04                                  ; $557d: $f8 $04
	ld   sp, hl                                      ; $557f: $f9
	ret  nz                                          ; $5580: $c0

	rrca                                             ; $5581: $0f
	ret  nz                                          ; $5582: $c0

	rrca                                             ; $5583: $0f
	ret  nz                                          ; $5584: $c0

	rrca                                             ; $5585: $0f
	ret  nz                                          ; $5586: $c0

	rrca                                             ; $5587: $0f
	ret  nz                                          ; $5588: $c0

	daa                                              ; $5589: $27
	ldh  a, [$0b]                                    ; $558a: $f0 $0b
	ld   [$0813], sp                                 ; $558c: $08 $13 $08
	di                                               ; $558f: $f3
	nop                                              ; $5590: $00
	nop                                              ; $5591: $00
	rst  $38                                         ; $5592: $ff
	nop                                              ; $5593: $00
	nop                                              ; $5594: $00
	ld   d, l                                        ; $5595: $55
	nop                                              ; $5596: $00
	xor  d                                           ; $5597: $aa
	nop                                              ; $5598: $00
	ld   d, l                                        ; $5599: $55
	nop                                              ; $559a: $00
	xor  d                                           ; $559b: $aa
	nop                                              ; $559c: $00
	nop                                              ; $559d: $00
	rst  $38                                         ; $559e: $ff
	nop                                              ; $559f: $00
	nop                                              ; $55a0: $00
	nop                                              ; $55a1: $00
	ld   a, [hl]                                     ; $55a2: $7e
	nop                                              ; $55a3: $00
	ld   c, [hl]                                     ; $55a4: $4e
	nop                                              ; $55a5: $00
	ld   c, [hl]                                     ; $55a6: $4e
	nop                                              ; $55a7: $00
	rst  $38                                         ; $55a8: $ff
	nop                                              ; $55a9: $00
	nop                                              ; $55aa: $00
	rst  $38                                         ; $55ab: $ff
	nop                                              ; $55ac: $00
	nop                                              ; $55ad: $00
	nop                                              ; $55ae: $00
	nop                                              ; $55af: $00
	pop  bc                                          ; $55b0: $c1
	ld   a, $61                                      ; $55b1: $3e $61
	ld   e, $31                                      ; $55b3: $1e $31
	ld   c, $31                                      ; $55b5: $0e $31
	ld   c, $31                                      ; $55b7: $0e $31
	ld   c, $31                                      ; $55b9: $0e $31
	ld   c, $31                                      ; $55bb: $0e $31
	ld   c, $31                                      ; $55bd: $0e $31
	ld   c, $ff                                      ; $55bf: $0e $ff
	nop                                              ; $55c1: $00
	nop                                              ; $55c2: $00
	nop                                              ; $55c3: $00
	nop                                              ; $55c4: $00
	rst  $38                                         ; $55c5: $ff
	nop                                              ; $55c6: $00
	rst  $38                                         ; $55c7: $ff
	nop                                              ; $55c8: $00
	nop                                              ; $55c9: $00
	rst  $38                                         ; $55ca: $ff
	nop                                              ; $55cb: $00
	nop                                              ; $55cc: $00
	nop                                              ; $55cd: $00
	nop                                              ; $55ce: $00
	nop                                              ; $55cf: $00
	jr   @+$09                                       ; $55d0: $18 $07

	jr   @+$09                                       ; $55d2: $18 $07

	jr   @+$09                                       ; $55d4: $18 $07

	jr   @+$09                                       ; $55d6: $18 $07

	jr   jr_026_55e1                                 ; $55d8: $18 $07

	jr   jr_026_55e3                                 ; $55da: $18 $07

	jr   jr_026_55e5                                 ; $55dc: $18 $07

	jr   jr_026_55e7                                 ; $55de: $18 $07

	pop  bc                                          ; $55e0: $c1

jr_026_55e1:
	ld   a, $c1                                      ; $55e1: $3e $c1

jr_026_55e3:
	ld   a, $c1                                      ; $55e3: $3e $c1

jr_026_55e5:
	ld   a, $c1                                      ; $55e5: $3e $c1

jr_026_55e7:
	ld   a, $c1                                      ; $55e7: $3e $c1
	ld   a, $c1                                      ; $55e9: $3e $c1
	ld   a, $c1                                      ; $55eb: $3e $c1
	ld   a, $c1                                      ; $55ed: $3e $c1
	ld   a, $00                                      ; $55ef: $3e $00
	nop                                              ; $55f1: $00
	nop                                              ; $55f2: $00
	rst  $38                                         ; $55f3: $ff
	rst  $38                                         ; $55f4: $ff
	nop                                              ; $55f5: $00
	inc  sp                                          ; $55f6: $33
	adc  b                                           ; $55f7: $88
	inc  sp                                          ; $55f8: $33
	adc  b                                           ; $55f9: $88
	nop                                              ; $55fa: $00
	nop                                              ; $55fb: $00
	nop                                              ; $55fc: $00
	rst  $38                                         ; $55fd: $ff
	rst  $38                                         ; $55fe: $ff
	nop                                              ; $55ff: $00
	rst  $38                                         ; $5600: $ff
	ld   e, l                                        ; $5601: $5d
	rst  $38                                         ; $5602: $ff
	ld   d, l                                        ; $5603: $55
	rst  $38                                         ; $5604: $ff
	ld   e, l                                        ; $5605: $5d
	rst  $38                                         ; $5606: $ff
	dec  e                                           ; $5607: $1d
	rst  $38                                         ; $5608: $ff
	ld   sp, hl                                      ; $5609: $f9
	rst  $38                                         ; $560a: $ff
	rst  $38                                         ; $560b: $ff
	rst  $38                                         ; $560c: $ff
	rst  $38                                         ; $560d: $ff
	rst  $38                                         ; $560e: $ff
	nop                                              ; $560f: $00
	rst  $38                                         ; $5610: $ff
	xor  d                                           ; $5611: $aa
	rst  $38                                         ; $5612: $ff
	and  d                                           ; $5613: $a2
	rst  $38                                         ; $5614: $ff
	xor  d                                           ; $5615: $aa
	rst  $38                                         ; $5616: $ff
	and  d                                           ; $5617: $a2
	rst  $38                                         ; $5618: $ff
	cp   h                                           ; $5619: $bc
	rst  $38                                         ; $561a: $ff
	rst  $38                                         ; $561b: $ff
	rst  $38                                         ; $561c: $ff
	rst  $38                                         ; $561d: $ff
	rst  $38                                         ; $561e: $ff
	nop                                              ; $561f: $00
	rst  $38                                         ; $5620: $ff
	adc  e                                           ; $5621: $8b
	rst  $38                                         ; $5622: $ff
	ld   l, d                                        ; $5623: $6a
	rst  $38                                         ; $5624: $ff
	db   $dd                                         ; $5625: $dd
	rst  $38                                         ; $5626: $ff
	cp   c                                           ; $5627: $b9
	rst  $38                                         ; $5628: $ff
	halt                                             ; $5629: $76
	rst  $38                                         ; $562a: $ff
	rst  $38                                         ; $562b: $ff
	rst  $38                                         ; $562c: $ff
	rst  $38                                         ; $562d: $ff
	rst  $38                                         ; $562e: $ff
	nop                                              ; $562f: $00
	rst  $38                                         ; $5630: $ff
	db   $fd                                         ; $5631: $fd
	rst  $38                                         ; $5632: $ff
	db   $fd                                         ; $5633: $fd
	rst  $38                                         ; $5634: $ff
	db   $fd                                         ; $5635: $fd
	rst  $38                                         ; $5636: $ff
	ei                                               ; $5637: $fb
	rst  $38                                         ; $5638: $ff
	rst  $30                                         ; $5639: $f7
	rst  $38                                         ; $563a: $ff
	rst  $38                                         ; $563b: $ff
	rst  $38                                         ; $563c: $ff
	rst  $38                                         ; $563d: $ff
	rst  $38                                         ; $563e: $ff
	nop                                              ; $563f: $00
	ld   sp, $310e                                   ; $5640: $31 $0e $31
	ld   c, $31                                      ; $5643: $0e $31
	ld   c, $31                                      ; $5645: $0e $31
	ld   c, $31                                      ; $5647: $0e $31
	ld   c, $31                                      ; $5649: $0e $31
	ld   c, $31                                      ; $564b: $0e $31
	ld   c, $31                                      ; $564d: $0e $31
	ld   c, $61                                      ; $564f: $0e $61
	ld   e, $61                                      ; $5651: $1e $61
	ld   e, $61                                      ; $5653: $1e $61
	ld   e, $60                                      ; $5655: $1e $60
	ld   e, $60                                      ; $5657: $1e $60
	rrca                                             ; $5659: $0f
	jr   nc, jr_026_5663                             ; $565a: $30 $07

	jr   jr_026_5661                                 ; $565c: $18 $03

	rrca                                             ; $565e: $0f
	nop                                              ; $565f: $00
	pop  af                                          ; $5660: $f1

jr_026_5661:
	ld   c, $f1                                      ; $5661: $0e $f1

jr_026_5663:
	ld   c, $f1                                      ; $5663: $0e $f1
	ld   c, $e1                                      ; $5665: $0e $e1
	ld   c, $01                                      ; $5667: $0e $01
	cp   $01                                         ; $5669: $fe $01
	cp   $01                                         ; $566b: $fe $01
	cp   $81                                         ; $566d: $fe $81
	ld   a, [hl]                                     ; $566f: $7e
	rlca                                             ; $5670: $07
	ld   hl, sp+$01                                  ; $5671: $f8 $01
	cp   $00                                         ; $5673: $fe $00
	rst  $38                                         ; $5675: $ff
	nop                                              ; $5676: $00
	rst  $38                                         ; $5677: $ff
	nop                                              ; $5678: $00
	rst  $38                                         ; $5679: $ff
	nop                                              ; $567a: $00
	rst  $38                                         ; $567b: $ff
	nop                                              ; $567c: $00
	rst  $38                                         ; $567d: $ff
	nop                                              ; $567e: $00
	rst  $38                                         ; $567f: $ff
	ldh  a, [$0b]                                    ; $5680: $f0 $0b
	ldh  [rAUD1LOW], a                               ; $5682: $e0 $13
	ret  nz                                          ; $5684: $c0

	daa                                              ; $5685: $27
	ret  nz                                          ; $5686: $c0

	rrca                                             ; $5687: $0f
	ret  nz                                          ; $5688: $c0

	rrca                                             ; $5689: $0f
	ret  nz                                          ; $568a: $c0

	rrca                                             ; $568b: $0f
	ret  nz                                          ; $568c: $c0

	rrca                                             ; $568d: $0f
	ret  nz                                          ; $568e: $c0

	rrca                                             ; $568f: $0f
	nop                                              ; $5690: $00
	nop                                              ; $5691: $00
	nop                                              ; $5692: $00
	nop                                              ; $5693: $00
	nop                                              ; $5694: $00
	nop                                              ; $5695: $00
	nop                                              ; $5696: $00
	nop                                              ; $5697: $00
	nop                                              ; $5698: $00
	nop                                              ; $5699: $00
	nop                                              ; $569a: $00
	nop                                              ; $569b: $00
	nop                                              ; $569c: $00
	nop                                              ; $569d: $00
	nop                                              ; $569e: $00
	nop                                              ; $569f: $00
	ld   d, l                                        ; $56a0: $55
	rst  $38                                         ; $56a1: $ff
	add  b                                           ; $56a2: $80
	rst  $38                                         ; $56a3: $ff
	nop                                              ; $56a4: $00
	rst  $38                                         ; $56a5: $ff
	add  b                                           ; $56a6: $80
	rst  $38                                         ; $56a7: $ff
	nop                                              ; $56a8: $00
	rst  $38                                         ; $56a9: $ff
	add  b                                           ; $56aa: $80
	rst  $38                                         ; $56ab: $ff
	nop                                              ; $56ac: $00
	rst  $38                                         ; $56ad: $ff
	add  b                                           ; $56ae: $80
	rst  $38                                         ; $56af: $ff
	ld   d, l                                        ; $56b0: $55
	rst  $38                                         ; $56b1: $ff
	add  b                                           ; $56b2: $80
	rst  $38                                         ; $56b3: $ff
	nop                                              ; $56b4: $00
	rst  $38                                         ; $56b5: $ff
	add  b                                           ; $56b6: $80
	rst  $38                                         ; $56b7: $ff
	nop                                              ; $56b8: $00
	rst  $38                                         ; $56b9: $ff
	add  b                                           ; $56ba: $80
	rst  $38                                         ; $56bb: $ff
	nop                                              ; $56bc: $00
	rst  $38                                         ; $56bd: $ff
	add  b                                           ; $56be: $80
	rst  $38                                         ; $56bf: $ff
	nop                                              ; $56c0: $00
	nop                                              ; $56c1: $00
	nop                                              ; $56c2: $00
	nop                                              ; $56c3: $00
	nop                                              ; $56c4: $00
	nop                                              ; $56c5: $00
	nop                                              ; $56c6: $00
	nop                                              ; $56c7: $00
	nop                                              ; $56c8: $00
	nop                                              ; $56c9: $00
	nop                                              ; $56ca: $00
	nop                                              ; $56cb: $00
	nop                                              ; $56cc: $00
	nop                                              ; $56cd: $00
	nop                                              ; $56ce: $00
	nop                                              ; $56cf: $00
	nop                                              ; $56d0: $00
	rst  $38                                         ; $56d1: $ff
	nop                                              ; $56d2: $00
	rst  $38                                         ; $56d3: $ff
	nop                                              ; $56d4: $00
	rst  $38                                         ; $56d5: $ff
	nop                                              ; $56d6: $00
	rst  $38                                         ; $56d7: $ff
	nop                                              ; $56d8: $00
	rst  $38                                         ; $56d9: $ff
	inc  bc                                          ; $56da: $03
	db   $fc                                         ; $56db: $fc
	inc  b                                           ; $56dc: $04
	ld   hl, sp+$04                                  ; $56dd: $f8 $04
	ld   sp, hl                                      ; $56df: $f9
	ret  nz                                          ; $56e0: $c0

	rrca                                             ; $56e1: $0f
	ret  nz                                          ; $56e2: $c0

	rrca                                             ; $56e3: $0f
	ret  nz                                          ; $56e4: $c0

	rrca                                             ; $56e5: $0f
	ret  nz                                          ; $56e6: $c0

	rrca                                             ; $56e7: $0f
	ret  nz                                          ; $56e8: $c0

	daa                                              ; $56e9: $27
	ldh  a, [$0b]                                    ; $56ea: $f0 $0b
	ld   [$0813], sp                                 ; $56ec: $08 $13 $08
	di                                               ; $56ef: $f3
	add  c                                           ; $56f0: $81
	nop                                              ; $56f1: $00
	ld   b, d                                        ; $56f2: $42
	nop                                              ; $56f3: $00
	inc  h                                           ; $56f4: $24
	nop                                              ; $56f5: $00
	jr   jr_026_56f8                                 ; $56f6: $18 $00

jr_026_56f8:
	jr   jr_026_56fa                                 ; $56f8: $18 $00

jr_026_56fa:
	inc  h                                           ; $56fa: $24
	nop                                              ; $56fb: $00
	ld   b, d                                        ; $56fc: $42
	nop                                              ; $56fd: $00
	add  c                                           ; $56fe: $81
	nop                                              ; $56ff: $00
	add  c                                           ; $5700: $81
	nop                                              ; $5701: $00
	ld   b, d                                        ; $5702: $42
	nop                                              ; $5703: $00
	inc  h                                           ; $5704: $24
	nop                                              ; $5705: $00
	jr   jr_026_5708                                 ; $5706: $18 $00

jr_026_5708:
	jr   jr_026_570a                                 ; $5708: $18 $00

jr_026_570a:
	inc  h                                           ; $570a: $24
	nop                                              ; $570b: $00
	ld   b, d                                        ; $570c: $42
	nop                                              ; $570d: $00
	add  c                                           ; $570e: $81
	nop                                              ; $570f: $00
	add  c                                           ; $5710: $81
	nop                                              ; $5711: $00
	ld   b, d                                        ; $5712: $42
	nop                                              ; $5713: $00
	inc  h                                           ; $5714: $24
	nop                                              ; $5715: $00
	jr   jr_026_5718                                 ; $5716: $18 $00

jr_026_5718:
	jr   jr_026_571a                                 ; $5718: $18 $00

jr_026_571a:
	inc  h                                           ; $571a: $24
	nop                                              ; $571b: $00
	ld   b, d                                        ; $571c: $42
	nop                                              ; $571d: $00
	add  c                                           ; $571e: $81
	nop                                              ; $571f: $00
	add  c                                           ; $5720: $81
	nop                                              ; $5721: $00
	ld   b, d                                        ; $5722: $42
	nop                                              ; $5723: $00
	inc  h                                           ; $5724: $24
	nop                                              ; $5725: $00
	jr   jr_026_5728                                 ; $5726: $18 $00

jr_026_5728:
	jr   jr_026_572a                                 ; $5728: $18 $00

jr_026_572a:
	inc  h                                           ; $572a: $24
	nop                                              ; $572b: $00
	ld   b, d                                        ; $572c: $42
	nop                                              ; $572d: $00
	add  c                                           ; $572e: $81
	nop                                              ; $572f: $00
	add  c                                           ; $5730: $81
	nop                                              ; $5731: $00
	ld   b, d                                        ; $5732: $42
	nop                                              ; $5733: $00
	inc  h                                           ; $5734: $24
	nop                                              ; $5735: $00
	jr   jr_026_5738                                 ; $5736: $18 $00

jr_026_5738:
	jr   jr_026_573a                                 ; $5738: $18 $00

jr_026_573a:
	inc  h                                           ; $573a: $24
	nop                                              ; $573b: $00
	ld   b, d                                        ; $573c: $42
	nop                                              ; $573d: $00
	add  c                                           ; $573e: $81
	nop                                              ; $573f: $00
	add  c                                           ; $5740: $81
	nop                                              ; $5741: $00
	ld   b, d                                        ; $5742: $42
	nop                                              ; $5743: $00
	inc  h                                           ; $5744: $24
	nop                                              ; $5745: $00
	jr   jr_026_5748                                 ; $5746: $18 $00

jr_026_5748:
	jr   jr_026_574a                                 ; $5748: $18 $00

jr_026_574a:
	inc  h                                           ; $574a: $24
	nop                                              ; $574b: $00
	ld   b, d                                        ; $574c: $42
	nop                                              ; $574d: $00
	add  c                                           ; $574e: $81
	nop                                              ; $574f: $00
	add  c                                           ; $5750: $81
	nop                                              ; $5751: $00
	ld   b, d                                        ; $5752: $42
	nop                                              ; $5753: $00
	inc  h                                           ; $5754: $24
	nop                                              ; $5755: $00
	jr   jr_026_5758                                 ; $5756: $18 $00

jr_026_5758:
	jr   jr_026_575a                                 ; $5758: $18 $00

jr_026_575a:
	inc  h                                           ; $575a: $24
	nop                                              ; $575b: $00
	ld   b, d                                        ; $575c: $42
	nop                                              ; $575d: $00
	add  c                                           ; $575e: $81
	nop                                              ; $575f: $00
	add  c                                           ; $5760: $81
	nop                                              ; $5761: $00
	ld   b, d                                        ; $5762: $42
	nop                                              ; $5763: $00
	inc  h                                           ; $5764: $24
	nop                                              ; $5765: $00
	jr   jr_026_5768                                 ; $5766: $18 $00

jr_026_5768:
	jr   jr_026_576a                                 ; $5768: $18 $00

jr_026_576a:
	inc  h                                           ; $576a: $24
	nop                                              ; $576b: $00
	ld   b, d                                        ; $576c: $42
	nop                                              ; $576d: $00
	add  c                                           ; $576e: $81
	nop                                              ; $576f: $00
	add  c                                           ; $5770: $81
	nop                                              ; $5771: $00
	ld   b, d                                        ; $5772: $42
	nop                                              ; $5773: $00
	inc  h                                           ; $5774: $24
	nop                                              ; $5775: $00
	jr   jr_026_5778                                 ; $5776: $18 $00

jr_026_5778:
	jr   jr_026_577a                                 ; $5778: $18 $00

jr_026_577a:
	inc  h                                           ; $577a: $24
	nop                                              ; $577b: $00
	ld   b, d                                        ; $577c: $42
	nop                                              ; $577d: $00
	add  c                                           ; $577e: $81
	nop                                              ; $577f: $00
	add  c                                           ; $5780: $81
	nop                                              ; $5781: $00
	ld   b, d                                        ; $5782: $42
	nop                                              ; $5783: $00
	inc  h                                           ; $5784: $24
	nop                                              ; $5785: $00
	jr   jr_026_5788                                 ; $5786: $18 $00

jr_026_5788:
	jr   jr_026_578a                                 ; $5788: $18 $00

jr_026_578a:
	inc  h                                           ; $578a: $24
	nop                                              ; $578b: $00
	ld   b, d                                        ; $578c: $42
	nop                                              ; $578d: $00
	add  c                                           ; $578e: $81
	nop                                              ; $578f: $00
	add  c                                           ; $5790: $81
	nop                                              ; $5791: $00
	ld   b, d                                        ; $5792: $42
	nop                                              ; $5793: $00
	inc  h                                           ; $5794: $24
	nop                                              ; $5795: $00
	jr   jr_026_5798                                 ; $5796: $18 $00

jr_026_5798:
	jr   jr_026_579a                                 ; $5798: $18 $00

jr_026_579a:
	inc  h                                           ; $579a: $24
	nop                                              ; $579b: $00
	ld   b, d                                        ; $579c: $42
	nop                                              ; $579d: $00
	add  c                                           ; $579e: $81
	nop                                              ; $579f: $00
	add  c                                           ; $57a0: $81
	nop                                              ; $57a1: $00
	ld   b, d                                        ; $57a2: $42
	nop                                              ; $57a3: $00
	inc  h                                           ; $57a4: $24
	nop                                              ; $57a5: $00
	jr   jr_026_57a8                                 ; $57a6: $18 $00

jr_026_57a8:
	jr   jr_026_57aa                                 ; $57a8: $18 $00

jr_026_57aa:
	inc  h                                           ; $57aa: $24
	nop                                              ; $57ab: $00
	ld   b, d                                        ; $57ac: $42
	nop                                              ; $57ad: $00
	add  c                                           ; $57ae: $81
	nop                                              ; $57af: $00
	add  c                                           ; $57b0: $81
	nop                                              ; $57b1: $00
	ld   b, d                                        ; $57b2: $42
	nop                                              ; $57b3: $00
	inc  h                                           ; $57b4: $24
	nop                                              ; $57b5: $00
	jr   jr_026_57b8                                 ; $57b6: $18 $00

jr_026_57b8:
	jr   jr_026_57ba                                 ; $57b8: $18 $00

jr_026_57ba:
	inc  h                                           ; $57ba: $24
	nop                                              ; $57bb: $00
	ld   b, d                                        ; $57bc: $42
	nop                                              ; $57bd: $00
	add  c                                           ; $57be: $81
	nop                                              ; $57bf: $00
	add  c                                           ; $57c0: $81
	nop                                              ; $57c1: $00
	ld   b, d                                        ; $57c2: $42
	nop                                              ; $57c3: $00
	inc  h                                           ; $57c4: $24
	nop                                              ; $57c5: $00
	jr   jr_026_57c8                                 ; $57c6: $18 $00

jr_026_57c8:
	jr   jr_026_57ca                                 ; $57c8: $18 $00

jr_026_57ca:
	inc  h                                           ; $57ca: $24
	nop                                              ; $57cb: $00
	ld   b, d                                        ; $57cc: $42
	nop                                              ; $57cd: $00
	add  c                                           ; $57ce: $81
	nop                                              ; $57cf: $00
	rlca                                             ; $57d0: $07
	ld   hl, sp+$01                                  ; $57d1: $f8 $01
	cp   $00                                         ; $57d3: $fe $00
	rst  $38                                         ; $57d5: $ff
	nop                                              ; $57d6: $00
	rst  $38                                         ; $57d7: $ff
	nop                                              ; $57d8: $00
	rst  $38                                         ; $57d9: $ff
	nop                                              ; $57da: $00
	rst  $38                                         ; $57db: $ff
	nop                                              ; $57dc: $00
	rst  $38                                         ; $57dd: $ff
	nop                                              ; $57de: $00
	rst  $38                                         ; $57df: $ff
	ldh  a, [$0b]                                    ; $57e0: $f0 $0b
	ldh  [rAUD1LOW], a                               ; $57e2: $e0 $13
	ret  nz                                          ; $57e4: $c0

	daa                                              ; $57e5: $27
	ret  nz                                          ; $57e6: $c0

	rrca                                             ; $57e7: $0f
	ret  nz                                          ; $57e8: $c0

	rrca                                             ; $57e9: $0f
	ret  nz                                          ; $57ea: $c0

	rrca                                             ; $57eb: $0f
	ret  nz                                          ; $57ec: $c0

	rrca                                             ; $57ed: $0f
	ret  nz                                          ; $57ee: $c0

	rrca                                             ; $57ef: $0f
	add  c                                           ; $57f0: $81
	nop                                              ; $57f1: $00
	ld   b, d                                        ; $57f2: $42
	nop                                              ; $57f3: $00
	inc  h                                           ; $57f4: $24
	nop                                              ; $57f5: $00
	jr   jr_026_57f8                                 ; $57f6: $18 $00

jr_026_57f8:
	jr   jr_026_57fa                                 ; $57f8: $18 $00

jr_026_57fa:
	inc  h                                           ; $57fa: $24
	nop                                              ; $57fb: $00
	ld   b, d                                        ; $57fc: $42
	nop                                              ; $57fd: $00
	add  c                                           ; $57fe: $81
	nop                                              ; $57ff: $00
	nop                                              ; $5800: $00
	nop                                              ; $5801: $00
	nop                                              ; $5802: $00
	nop                                              ; $5803: $00
	ld   bc, $0300                                   ; $5804: $01 $00 $03
	ld   bc, $0306                                   ; $5807: $01 $06 $03
	inc  c                                           ; $580a: $0c
	rlca                                             ; $580b: $07
	jr   jr_026_581d                                 ; $580c: $18 $0f

	jr   nc, @+$21                                   ; $580e: $30 $1f

	nop                                              ; $5810: $00
	nop                                              ; $5811: $00
	nop                                              ; $5812: $00
	nop                                              ; $5813: $00
	cp   $00                                         ; $5814: $fe $00
	rst  $38                                         ; $5816: $ff
	cp   $01                                         ; $5817: $fe $01
	rst  $38                                         ; $5819: $ff
	nop                                              ; $581a: $00
	rst  $38                                         ; $581b: $ff
	nop                                              ; $581c: $00

jr_026_581d:
	rst  $38                                         ; $581d: $ff
	db   $fc                                         ; $581e: $fc
	rst  $38                                         ; $581f: $ff
	nop                                              ; $5820: $00
	nop                                              ; $5821: $00
	nop                                              ; $5822: $00
	nop                                              ; $5823: $00
	rra                                              ; $5824: $1f
	nop                                              ; $5825: $00
	ccf                                              ; $5826: $3f
	rra                                              ; $5827: $1f
	ldh  [$3f], a                                    ; $5828: $e0 $3f
	ldh  [$bf], a                                    ; $582a: $e0 $bf
	ld   h, b                                        ; $582c: $60
	rst  $38                                         ; $582d: $ff
	jr   nz, @+$01                                   ; $582e: $20 $ff

	nop                                              ; $5830: $00
	nop                                              ; $5831: $00
	nop                                              ; $5832: $00
	nop                                              ; $5833: $00
	rst  $38                                         ; $5834: $ff
	nop                                              ; $5835: $00
	rst  $38                                         ; $5836: $ff
	rst  $38                                         ; $5837: $ff
	nop                                              ; $5838: $00
	rst  $38                                         ; $5839: $ff
	nop                                              ; $583a: $00
	rst  $38                                         ; $583b: $ff
	nop                                              ; $583c: $00
	rst  $38                                         ; $583d: $ff
	nop                                              ; $583e: $00
	rst  $38                                         ; $583f: $ff
	nop                                              ; $5840: $00
	nop                                              ; $5841: $00
	nop                                              ; $5842: $00
	nop                                              ; $5843: $00
	add  a                                           ; $5844: $87
	nop                                              ; $5845: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5846: $cf
	add  a                                           ; $5847: $87
	ld   a, b                                        ; $5848: $78
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5849: $cf
	ld   a, b                                        ; $584a: $78
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $584b: $cf
	ld   [hl], b                                     ; $584c: $70
	rst  JumpTable                                         ; $584d: $df
	ld   [hl], b                                     ; $584e: $70
	rst  JumpTable                                         ; $584f: $df
	nop                                              ; $5850: $00
	nop                                              ; $5851: $00
	nop                                              ; $5852: $00
	nop                                              ; $5853: $00
	add  c                                           ; $5854: $81
	nop                                              ; $5855: $00
	jp   Jump_026_6681                               ; $5856: $c3 $81 $66


	jp   wBGandOBJColorComponents                                       ; $5859: $c3 $66 $c3


	ld   [hl], $e3                                   ; $585c: $36 $e3
	ld   [hl], $e3                                   ; $585e: $36 $e3
	nop                                              ; $5860: $00
	nop                                              ; $5861: $00
	nop                                              ; $5862: $00
	nop                                              ; $5863: $00
	rst  $38                                         ; $5864: $ff
	nop                                              ; $5865: $00
	rst  $38                                         ; $5866: $ff
	rst  $38                                         ; $5867: $ff
	nop                                              ; $5868: $00
	rst  $38                                         ; $5869: $ff
	nop                                              ; $586a: $00
	rst  $38                                         ; $586b: $ff
	nop                                              ; $586c: $00
	rst  $38                                         ; $586d: $ff
	ccf                                              ; $586e: $3f
	rst  $38                                         ; $586f: $ff
	nop                                              ; $5870: $00
	nop                                              ; $5871: $00
	nop                                              ; $5872: $00
	nop                                              ; $5873: $00
	jp   $e700                                       ; $5874: $c3 $00 $e7


	jp   $e73c                                       ; $5877: $c3 $3c $e7


	inc  e                                           ; $587a: $1c
	rst  $30                                         ; $587b: $f7
	inc  c                                           ; $587c: $0c
	rst  $38                                         ; $587d: $ff
	add  h                                           ; $587e: $84
	rst  $38                                         ; $587f: $ff
	nop                                              ; $5880: $00
	nop                                              ; $5881: $00
	nop                                              ; $5882: $00
	nop                                              ; $5883: $00
	rst  $38                                         ; $5884: $ff
	nop                                              ; $5885: $00
	rst  $38                                         ; $5886: $ff
	rst  $38                                         ; $5887: $ff
	nop                                              ; $5888: $00
	rst  $38                                         ; $5889: $ff
	nop                                              ; $588a: $00
	rst  $38                                         ; $588b: $ff
	nop                                              ; $588c: $00
	rst  $38                                         ; $588d: $ff
	nop                                              ; $588e: $00
	rst  $38                                         ; $588f: $ff
	nop                                              ; $5890: $00
	nop                                              ; $5891: $00
	nop                                              ; $5892: $00
	nop                                              ; $5893: $00
	ldh  a, [rP1]                                    ; $5894: $f0 $00
	ld   hl, sp-$10                                  ; $5896: $f8 $f0
	inc  c                                           ; $5898: $0c
	ld   hl, sp+$0c                                  ; $5899: $f8 $0c
	ld   hl, sp+$0c                                  ; $589b: $f8 $0c
	ld   hl, sp+$0c                                  ; $589d: $f8 $0c
	ld   hl, sp+$00                                  ; $589f: $f8 $00
	nop                                              ; $58a1: $00
	nop                                              ; $58a2: $00
	nop                                              ; $58a3: $00
	ccf                                              ; $58a4: $3f
	nop                                              ; $58a5: $00
	ld   a, a                                        ; $58a6: $7f
	ccf                                              ; $58a7: $3f
	ret  nz                                          ; $58a8: $c0

	ld   a, a                                        ; $58a9: $7f
	ret  nz                                          ; $58aa: $c0

	ld   a, a                                        ; $58ab: $7f
	ret  nz                                          ; $58ac: $c0

	ld   a, a                                        ; $58ad: $7f
	ret  nz                                          ; $58ae: $c0

	ld   a, a                                        ; $58af: $7f
	nop                                              ; $58b0: $00
	nop                                              ; $58b1: $00
	nop                                              ; $58b2: $00
	nop                                              ; $58b3: $00
	db   $fd                                         ; $58b4: $fd
	nop                                              ; $58b5: $00
	rst  $38                                         ; $58b6: $ff
	db   $fd                                         ; $58b7: $fd
	ld   [bc], a                                     ; $58b8: $02
	rst  $38                                         ; $58b9: $ff
	ld   [bc], a                                     ; $58ba: $02
	rst  $38                                         ; $58bb: $ff
	ld   [bc], a                                     ; $58bc: $02
	rst  $38                                         ; $58bd: $ff
	ld   [bc], a                                     ; $58be: $02
	rst  $38                                         ; $58bf: $ff
	nop                                              ; $58c0: $00
	nop                                              ; $58c1: $00
	nop                                              ; $58c2: $00
	nop                                              ; $58c3: $00
	rst  $38                                         ; $58c4: $ff
	nop                                              ; $58c5: $00
	rst  $38                                         ; $58c6: $ff
	rst  $38                                         ; $58c7: $ff
	db   $10                                         ; $58c8: $10
	rst  $38                                         ; $58c9: $ff
	db   $10                                         ; $58ca: $10
	rst  $38                                         ; $58cb: $ff
	db   $10                                         ; $58cc: $10
	rst  $38                                         ; $58cd: $ff
	db   $10                                         ; $58ce: $10
	rst  $38                                         ; $58cf: $ff
	nop                                              ; $58d0: $00
	nop                                              ; $58d1: $00
	nop                                              ; $58d2: $00
	nop                                              ; $58d3: $00
	cp   [hl]                                        ; $58d4: $be
	nop                                              ; $58d5: $00
	rst  $38                                         ; $58d6: $ff
	cp   [hl]                                        ; $58d7: $be
	ld   h, c                                        ; $58d8: $61
	rst  $38                                         ; $58d9: $ff
	jr   nz, @+$01                                   ; $58da: $20 $ff

	nop                                              ; $58dc: $00
	rst  $38                                         ; $58dd: $ff
	nop                                              ; $58de: $00
	rst  $38                                         ; $58df: $ff
	nop                                              ; $58e0: $00
	nop                                              ; $58e1: $00
	nop                                              ; $58e2: $00
	nop                                              ; $58e3: $00
	rst  $38                                         ; $58e4: $ff
	nop                                              ; $58e5: $00
	rst  $38                                         ; $58e6: $ff
	ld   a, a                                        ; $58e7: $7f
	ret  nz                                          ; $58e8: $c0

	ld   a, a                                        ; $58e9: $7f
	ret  nz                                          ; $58ea: $c0

	rst  $38                                         ; $58eb: $ff
	ld   b, b                                        ; $58ec: $40
	rst  $38                                         ; $58ed: $ff
	ld   b, a                                        ; $58ee: $47
	rst  $38                                         ; $58ef: $ff
	nop                                              ; $58f0: $00
	nop                                              ; $58f1: $00
	nop                                              ; $58f2: $00
	nop                                              ; $58f3: $00
	ld   hl, sp+$00                                  ; $58f4: $f8 $00
	db   $fc                                         ; $58f6: $fc
	ld   hl, sp+$06                                  ; $58f7: $f8 $06
	db   $fc                                         ; $58f9: $fc
	ld   b, $fc                                      ; $58fa: $06 $fc
	ld   b, $fc                                      ; $58fc: $06 $fc
	db   $fc                                         ; $58fe: $fc
	ld   hl, sp+$31                                  ; $58ff: $f8 $31
	rra                                              ; $5901: $1f
	ld   sp, $311f                                   ; $5902: $31 $1f $31
	rra                                              ; $5905: $1f
	ld   sp, $301f                                   ; $5906: $31 $1f $30
	rra                                              ; $5909: $1f
	jr   nc, @+$21                                   ; $590a: $30 $1f

	jr   jr_026_591d                                 ; $590c: $18 $0f

	inc  c                                           ; $590e: $0c
	rlca                                             ; $590f: $07
	cp   $03                                         ; $5910: $fe $03
	add  [hl]                                        ; $5912: $86
	inc  bc                                          ; $5913: $03
	add  e                                           ; $5914: $83
	ld   bc, $00ff                                   ; $5915: $01 $ff $00
	rst  $38                                         ; $5918: $ff
	cp   $01                                         ; $5919: $fe $01
	rst  $38                                         ; $591b: $ff
	nop                                              ; $591c: $00

jr_026_591d:
	rst  $38                                         ; $591d: $ff
	nop                                              ; $591e: $00
	rst  $38                                         ; $591f: $ff
	ccf                                              ; $5920: $3f
	rst  $38                                         ; $5921: $ff
	ccf                                              ; $5922: $3f
	pop  hl                                          ; $5923: $e1
	db   $e3                                         ; $5924: $e3
	pop  bc                                          ; $5925: $c1
	jp   $0301                                       ; $5926: $c3 $01 $03


	ld   bc, $0183                                   ; $5929: $01 $83 $01
	jp   Jump_026_6381                               ; $592c: $c3 $81 $63


	pop  bc                                          ; $592f: $c1
	rrca                                             ; $5930: $0f
	rst  $38                                         ; $5931: $ff
	rrca                                             ; $5932: $0f
	ld   hl, sp+$0c                                  ; $5933: $f8 $0c
	ld   hl, sp+$0c                                  ; $5935: $f8 $0c
	ld   hl, sp+$0c                                  ; $5937: $f8 $0c
	ld   hl, sp+$0c                                  ; $5939: $f8 $0c
	ld   hl, sp+$0c                                  ; $593b: $f8 $0c
	ld   hl, sp+$0c                                  ; $593d: $f8 $0c
	ld   hl, sp-$10                                  ; $593f: $f8 $f0
	sbc  a                                           ; $5941: $9f
	ldh  [$3f], a                                    ; $5942: $e0 $3f
	ld   h, e                                        ; $5944: $63
	ccf                                              ; $5945: $3f
	ld   h, e                                        ; $5946: $63
	ccf                                              ; $5947: $3f
	ld   h, e                                        ; $5948: $63
	ccf                                              ; $5949: $3f
	jp   $c77f                                       ; $594a: $c3 $7f $c7


	ld   a, h                                        ; $594d: $7c
	rst  ToBoot                                         ; $594e: $c7
	ld   a, h                                        ; $594f: $7c
	ld   [hl], $e3                                   ; $5950: $36 $e3
	ld   e, $f3                                      ; $5952: $1e $f3
	ld   e, $f3                                      ; $5954: $1e $f3
	ld   e, $f3                                      ; $5956: $1e $f3
	ld   e, $f3                                      ; $5958: $1e $f3
	ld   c, $fb                                      ; $595a: $0e $fb
	adc  [hl]                                        ; $595c: $8e
	ei                                               ; $595d: $fb
	adc  [hl]                                        ; $595e: $8e
	ei                                               ; $595f: $fb
	ccf                                              ; $5960: $3f
	ldh  [$30], a                                    ; $5961: $e0 $30

Jump_026_5963:
	ldh  [$30], a                                    ; $5963: $e0 $30
	ldh  [$3f], a                                    ; $5965: $e0 $3f
	ldh  [$3f], a                                    ; $5967: $e0 $3f
	rst  $38                                         ; $5969: $ff
	nop                                              ; $596a: $00
	rst  $38                                         ; $596b: $ff
	nop                                              ; $596c: $00
	rst  $38                                         ; $596d: $ff
	nop                                              ; $596e: $00
	rst  $38                                         ; $596f: $ff
	rst  ToBoot                                         ; $5970: $c7
	ld   a, a                                        ; $5971: $7f
	rst  ToBoot                                         ; $5972: $c7
	ld   a, h                                        ; $5973: $7c
	add  $7c                                         ; $5974: $c6 $7c
	add  $7c                                         ; $5976: $c6 $7c
	add  [hl]                                        ; $5978: $86
	db   $fc                                         ; $5979: $fc
	ld   b, $fc                                      ; $597a: $06 $fc
	inc  c                                           ; $597c: $0c
	ld   hl, sp+$18                                  ; $597d: $f8 $18
	ldh  a, [$e1]                                    ; $597f: $f0 $e1
	rst  $38                                         ; $5981: $ff
	pop  hl                                          ; $5982: $e1
	ccf                                              ; $5983: $3f
	ld   h, c                                        ; $5984: $61
	ccf                                              ; $5985: $3f
	ld   h, c                                        ; $5986: $61
	ccf                                              ; $5987: $3f
	ld   h, c                                        ; $5988: $61
	ccf                                              ; $5989: $3f
	ld   h, c                                        ; $598a: $61
	ccf                                              ; $598b: $3f
	ld   h, c                                        ; $598c: $61
	ccf                                              ; $598d: $3f
	ld   h, c                                        ; $598e: $61
	ccf                                              ; $598f: $3f
	ld   hl, sp-$10                                  ; $5990: $f8 $f0
	ldh  a, [rP1]                                    ; $5992: $f0 $00
	add  b                                           ; $5994: $80
	nop                                              ; $5995: $00
	add  b                                           ; $5996: $80
	nop                                              ; $5997: $00
	add  b                                           ; $5998: $80
	nop                                              ; $5999: $00
	add  b                                           ; $599a: $80
	nop                                              ; $599b: $00
	add  b                                           ; $599c: $80
	nop                                              ; $599d: $00
	add  b                                           ; $599e: $80
	nop                                              ; $599f: $00
	ld   a, h                                        ; $59a0: $7c
	ccf                                              ; $59a1: $3f
	inc  a                                           ; $59a2: $3c
	rlca                                             ; $59a3: $07
	inc  c                                           ; $59a4: $0c
	rlca                                             ; $59a5: $07
	inc  c                                           ; $59a6: $0c
	rlca                                             ; $59a7: $07
	inc  c                                           ; $59a8: $0c
	rlca                                             ; $59a9: $07
	inc  c                                           ; $59aa: $0c
	rlca                                             ; $59ab: $07
	inc  c                                           ; $59ac: $0c
	rlca                                             ; $59ad: $07
	inc  c                                           ; $59ae: $0c
	rlca                                             ; $59af: $07
	ld   a, $ff                                      ; $59b0: $3e $ff
	ld   a, $e3                                      ; $59b2: $3e $e3
	ld   [hl], $e3                                   ; $59b4: $36 $e3
	ld   [hl], $e3                                   ; $59b6: $36 $e3
	ld   [hl], $e3                                   ; $59b8: $36 $e3
	ld   [hl], $e3                                   ; $59ba: $36 $e3
	ld   [hl], $e3                                   ; $59bc: $36 $e3
	ld   [hl], $e3                                   ; $59be: $36 $e3
	db   $10                                         ; $59c0: $10
	rst  $38                                         ; $59c1: $ff
	db   $10                                         ; $59c2: $10
	rst  $38                                         ; $59c3: $ff
	db   $10                                         ; $59c4: $10
	rst  $38                                         ; $59c5: $ff
	db   $10                                         ; $59c6: $10
	rst  $38                                         ; $59c7: $ff
	db   $10                                         ; $59c8: $10
	rst  $38                                         ; $59c9: $ff
	db   $10                                         ; $59ca: $10
	rst  $38                                         ; $59cb: $ff
	db   $10                                         ; $59cc: $10
	rst  $38                                         ; $59cd: $ff
	db   $10                                         ; $59ce: $10
	rst  $38                                         ; $59cf: $ff
	add  h                                           ; $59d0: $84
	rst  $38                                         ; $59d1: $ff
	add  h                                           ; $59d2: $84
	rst  $38                                         ; $59d3: $ff
	add  h                                           ; $59d4: $84
	rst  $38                                         ; $59d5: $ff
	add  h                                           ; $59d6: $84
	rst  $38                                         ; $59d7: $ff
	add  h                                           ; $59d8: $84
	rst  $38                                         ; $59d9: $ff
	add  h                                           ; $59da: $84
	rst  $38                                         ; $59db: $ff
	add  h                                           ; $59dc: $84
	rst  $38                                         ; $59dd: $ff
	add  h                                           ; $59de: $84
	rst  $38                                         ; $59df: $ff
	ld   b, a                                        ; $59e0: $47
	db   $fc                                         ; $59e1: $fc
	ld   b, [hl]                                     ; $59e2: $46
	db   $fc                                         ; $59e3: $fc
	ld   b, [hl]                                     ; $59e4: $46
	db   $fc                                         ; $59e5: $fc
	ld   b, a                                        ; $59e6: $47
	db   $fc                                         ; $59e7: $fc
	ld   b, a                                        ; $59e8: $47
	rst  $38                                         ; $59e9: $ff
	ld   b, b                                        ; $59ea: $40
	rst  $38                                         ; $59eb: $ff
	ld   b, b                                        ; $59ec: $40
	rst  $38                                         ; $59ed: $ff
	ld   b, b                                        ; $59ee: $40
	rst  $38                                         ; $59ef: $ff
	ld   hl, sp+$00                                  ; $59f0: $f8 $00
	nop                                              ; $59f2: $00
	nop                                              ; $59f3: $00
	nop                                              ; $59f4: $00
	nop                                              ; $59f5: $00
	ldh  a, [rP1]                                    ; $59f6: $f0 $00
	ld   hl, sp-$10                                  ; $59f8: $f8 $f0
	inc  c                                           ; $59fa: $0c
	ld   hl, sp+$0c                                  ; $59fb: $f8 $0c
	ld   hl, sp+$0c                                  ; $59fd: $f8 $0c
	ld   hl, sp+$07                                  ; $59ff: $f8 $07
	inc  bc                                          ; $5a01: $03
	inc  bc                                          ; $5a02: $03
	nop                                              ; $5a03: $00
	ld   c, $00                                      ; $5a04: $0e $00
	rra                                              ; $5a06: $1f
	ld   c, $31                                      ; $5a07: $0e $31
	rra                                              ; $5a09: $1f
	ld   sp, $301f                                   ; $5a0a: $31 $1f $30
	rra                                              ; $5a0d: $1f
	jr   nc, jr_026_5a2f                             ; $5a0e: $30 $1f

	db   $fc                                         ; $5a10: $fc
	rst  $38                                         ; $5a11: $ff
	cp   $03                                         ; $5a12: $fe $03
	ld   b, $03                                      ; $5a14: $06 $03
	ld   b, $03                                      ; $5a16: $06 $03
	add  [hl]                                        ; $5a18: $86
	inc  bc                                          ; $5a19: $03
	cp   $03                                         ; $5a1a: $fe $03
	db   $fc                                         ; $5a1c: $fc
	rst  $38                                         ; $5a1d: $ff
	nop                                              ; $5a1e: $00
	rst  $38                                         ; $5a1f: $ff
	inc  sp                                          ; $5a20: $33
	pop  hl                                          ; $5a21: $e1
	inc  sp                                          ; $5a22: $33
	pop  hl                                          ; $5a23: $e1
	inc  sp                                          ; $5a24: $33
	pop  hl                                          ; $5a25: $e1
	inc  sp                                          ; $5a26: $33
	pop  hl                                          ; $5a27: $e1
	inc  sp                                          ; $5a28: $33
	pop  hl                                          ; $5a29: $e1
	inc  sp                                          ; $5a2a: $33
	pop  hl                                          ; $5a2b: $e1
	inc  sp                                          ; $5a2c: $33
	pop  hl                                          ; $5a2d: $e1
	inc  sp                                          ; $5a2e: $33

jr_026_5a2f:
	pop  hl                                          ; $5a2f: $e1
	inc  c                                           ; $5a30: $0c
	ld   hl, sp+$0d                                  ; $5a31: $f8 $0d
	ld   hl, sp+$0d                                  ; $5a33: $f8 $0d
	ld   hl, sp+$0d                                  ; $5a35: $f8 $0d
	ld   hl, sp+$0d                                  ; $5a37: $f8 $0d
	ld   hl, sp+$0f                                  ; $5a39: $f8 $0f
	ld   sp, hl                                      ; $5a3b: $f9
	rrca                                             ; $5a3c: $0f
	ld   sp, hl                                      ; $5a3d: $f9
	rrca                                             ; $5a3e: $0f
	ld   sp, hl                                      ; $5a3f: $f9
	rst  ToBoot                                         ; $5a40: $c7
	ld   a, h                                        ; $5a41: $7c
	add  a                                           ; $5a42: $87
	rst  $38                                         ; $5a43: $ff
	add  b                                           ; $5a44: $80
	rst  $38                                         ; $5a45: $ff
	add  b                                           ; $5a46: $80
	rst  $38                                         ; $5a47: $ff
	add  b                                           ; $5a48: $80
	rst  $38                                         ; $5a49: $ff
	rrca                                             ; $5a4a: $0f
	rst  $38                                         ; $5a4b: $ff
	rra                                              ; $5a4c: $1f
	ldh  a, [rAUD2LOW]                               ; $5a4d: $f0 $18
	ldh  a, [$8e]                                    ; $5a4f: $f0 $8e
	ei                                               ; $5a51: $fb
	add  [hl]                                        ; $5a52: $86
	rst  $38                                         ; $5a53: $ff
	ld   b, $ff                                      ; $5a54: $06 $ff
	ld   b, $ff                                      ; $5a56: $06 $ff
	ld   b, $ff                                      ; $5a58: $06 $ff
	jp   nz, $e2ff                                   ; $5a5a: $c2 $ff $e2

	ccf                                              ; $5a5d: $3f
	ld   h, d                                        ; $5a5e: $62
	ccf                                              ; $5a5f: $3f
	ccf                                              ; $5a60: $3f
	rst  $38                                         ; $5a61: $ff
	ccf                                              ; $5a62: $3f
	ldh  [$30], a                                    ; $5a63: $e0 $30
	ldh  [$30], a                                    ; $5a65: $e0 $30
	ldh  [$30], a                                    ; $5a67: $e0 $30
	ldh  [$30], a                                    ; $5a69: $e0 $30
	ldh  [$30], a                                    ; $5a6b: $e0 $30
	ldh  [$30], a                                    ; $5a6d: $e0 $30
	ldh  [$0c], a                                    ; $5a6f: $e0 $0c
	ld   hl, sp-$7a                                  ; $5a71: $f8 $86
	db   $fc                                         ; $5a73: $fc
	add  $7c                                         ; $5a74: $c6 $7c
	add  $7c                                         ; $5a76: $c6 $7c
	add  $7c                                         ; $5a78: $c6 $7c
	add  $7c                                         ; $5a7a: $c6 $7c
	add  $7c                                         ; $5a7c: $c6 $7c
	add  $7c                                         ; $5a7e: $c6 $7c
	ld   h, c                                        ; $5a80: $61
	ccf                                              ; $5a81: $3f
	ld   h, c                                        ; $5a82: $61
	ccf                                              ; $5a83: $3f
	ld   h, c                                        ; $5a84: $61
	ccf                                              ; $5a85: $3f
	ld   h, c                                        ; $5a86: $61
	ccf                                              ; $5a87: $3f
	ld   h, c                                        ; $5a88: $61
	ccf                                              ; $5a89: $3f
	ld   h, c                                        ; $5a8a: $61
	ccf                                              ; $5a8b: $3f
	ld   h, c                                        ; $5a8c: $61
	ccf                                              ; $5a8d: $3f
	ld   h, c                                        ; $5a8e: $61
	ccf                                              ; $5a8f: $3f
	add  b                                           ; $5a90: $80
	nop                                              ; $5a91: $00
	add  b                                           ; $5a92: $80
	nop                                              ; $5a93: $00
	add  b                                           ; $5a94: $80
	nop                                              ; $5a95: $00
	add  b                                           ; $5a96: $80
	nop                                              ; $5a97: $00
	add  b                                           ; $5a98: $80
	nop                                              ; $5a99: $00
	add  b                                           ; $5a9a: $80
	nop                                              ; $5a9b: $00
	add  b                                           ; $5a9c: $80
	nop                                              ; $5a9d: $00
	add  b                                           ; $5a9e: $80
	nop                                              ; $5a9f: $00
	inc  c                                           ; $5aa0: $0c
	rlca                                             ; $5aa1: $07
	inc  c                                           ; $5aa2: $0c
	rlca                                             ; $5aa3: $07
	inc  c                                           ; $5aa4: $0c
	rlca                                             ; $5aa5: $07
	inc  c                                           ; $5aa6: $0c
	rlca                                             ; $5aa7: $07
	inc  c                                           ; $5aa8: $0c
	rlca                                             ; $5aa9: $07
	inc  c                                           ; $5aaa: $0c
	rlca                                             ; $5aab: $07
	inc  c                                           ; $5aac: $0c
	rlca                                             ; $5aad: $07
	inc  c                                           ; $5aae: $0c
	rlca                                             ; $5aaf: $07
	ld   [hl], $e3                                   ; $5ab0: $36 $e3
	ld   [hl], $e3                                   ; $5ab2: $36 $e3
	ld   [hl], $e3                                   ; $5ab4: $36 $e3
	ld   [hl], $e3                                   ; $5ab6: $36 $e3
	ld   [hl], $e3                                   ; $5ab8: $36 $e3
	ld   [hl], $e3                                   ; $5aba: $36 $e3
	ld   [hl], $e3                                   ; $5abc: $36 $e3
	ld   [hl], $e3                                   ; $5abe: $36 $e3
	db   $10                                         ; $5ac0: $10
	rst  $38                                         ; $5ac1: $ff
	db   $10                                         ; $5ac2: $10
	rst  $38                                         ; $5ac3: $ff
	db   $10                                         ; $5ac4: $10
	rst  $38                                         ; $5ac5: $ff
	db   $10                                         ; $5ac6: $10
	rst  $38                                         ; $5ac7: $ff
	db   $10                                         ; $5ac8: $10
	rst  $38                                         ; $5ac9: $ff
	db   $10                                         ; $5aca: $10
	rst  $38                                         ; $5acb: $ff
	db   $10                                         ; $5acc: $10
	rst  $38                                         ; $5acd: $ff
	db   $10                                         ; $5ace: $10
	rst  $38                                         ; $5acf: $ff
	add  h                                           ; $5ad0: $84
	rst  $38                                         ; $5ad1: $ff
	add  h                                           ; $5ad2: $84
	rst  $38                                         ; $5ad3: $ff
	add  h                                           ; $5ad4: $84
	rst  $38                                         ; $5ad5: $ff
	add  h                                           ; $5ad6: $84
	rst  $38                                         ; $5ad7: $ff
	add  h                                           ; $5ad8: $84
	rst  $38                                         ; $5ad9: $ff
	add  h                                           ; $5ada: $84
	rst  $38                                         ; $5adb: $ff
	add  h                                           ; $5adc: $84
	rst  $38                                         ; $5add: $ff
	add  h                                           ; $5ade: $84
	rst  $38                                         ; $5adf: $ff
	ld   b, a                                        ; $5ae0: $47
	rst  $38                                         ; $5ae1: $ff
	ld   b, a                                        ; $5ae2: $47
	db   $fc                                         ; $5ae3: $fc
	ld   b, [hl]                                     ; $5ae4: $46
	db   $fc                                         ; $5ae5: $fc
	ld   b, [hl]                                     ; $5ae6: $46
	db   $fc                                         ; $5ae7: $fc
	ld   b, [hl]                                     ; $5ae8: $46
	db   $fc                                         ; $5ae9: $fc
	ld   b, a                                        ; $5aea: $47
	db   $fc                                         ; $5aeb: $fc
	ld   b, a                                        ; $5aec: $47
	rst  $38                                         ; $5aed: $ff
	ld   b, b                                        ; $5aee: $40
	rst  $38                                         ; $5aef: $ff
	ld   hl, sp-$10                                  ; $5af0: $f8 $f0
	ldh  a, [rP1]                                    ; $5af2: $f0 $00
	nop                                              ; $5af4: $00
	nop                                              ; $5af5: $00
	nop                                              ; $5af6: $00
	nop                                              ; $5af7: $00
	nop                                              ; $5af8: $00
	nop                                              ; $5af9: $00
	ei                                               ; $5afa: $fb
	nop                                              ; $5afb: $00
	rst  $38                                         ; $5afc: $ff
	ei                                               ; $5afd: $fb
	inc  b                                           ; $5afe: $04
	rst  $38                                         ; $5aff: $ff
	jr   jr_026_5b11                                 ; $5b00: $18 $0f

	inc  c                                           ; $5b02: $0c
	rlca                                             ; $5b03: $07
	rlca                                             ; $5b04: $07
	inc  bc                                          ; $5b05: $03
	inc  bc                                          ; $5b06: $03
	nop                                              ; $5b07: $00
	nop                                              ; $5b08: $00
	nop                                              ; $5b09: $00
	nop                                              ; $5b0a: $00
	nop                                              ; $5b0b: $00
	nop                                              ; $5b0c: $00
	nop                                              ; $5b0d: $00
	nop                                              ; $5b0e: $00
	nop                                              ; $5b0f: $00
	nop                                              ; $5b10: $00

jr_026_5b11:
	rst  $38                                         ; $5b11: $ff
	nop                                              ; $5b12: $00
	rst  $38                                         ; $5b13: $ff
	rst  $38                                         ; $5b14: $ff
	rst  $38                                         ; $5b15: $ff
	rst  $38                                         ; $5b16: $ff
	nop                                              ; $5b17: $00
	nop                                              ; $5b18: $00
	nop                                              ; $5b19: $00
	nop                                              ; $5b1a: $00
	nop                                              ; $5b1b: $00
	nop                                              ; $5b1c: $00
	nop                                              ; $5b1d: $00
	nop                                              ; $5b1e: $00
	nop                                              ; $5b1f: $00
	ld   h, e                                        ; $5b20: $63
	pop  bc                                          ; $5b21: $c1
	jp   $8181                                       ; $5b22: $c3 $81 $81


	nop                                              ; $5b25: $00
	nop                                              ; $5b26: $00
	nop                                              ; $5b27: $00
	nop                                              ; $5b28: $00
	nop                                              ; $5b29: $00
	nop                                              ; $5b2a: $00
	nop                                              ; $5b2b: $00
	nop                                              ; $5b2c: $00
	nop                                              ; $5b2d: $00
	nop                                              ; $5b2e: $00
	nop                                              ; $5b2f: $00
	rrca                                             ; $5b30: $0f
	ld   sp, hl                                      ; $5b31: $f9

jr_026_5b32:
	rrca                                             ; $5b32: $0f
	ld   sp, hl                                      ; $5b33: $f9

jr_026_5b34:
	ld   sp, hl                                      ; $5b34: $f9
	ldh  a, [$f0]                                    ; $5b35: $f0 $f0
	nop                                              ; $5b37: $00
	nop                                              ; $5b38: $00
	nop                                              ; $5b39: $00
	nop                                              ; $5b3a: $00
	nop                                              ; $5b3b: $00
	nop                                              ; $5b3c: $00
	nop                                              ; $5b3d: $00
	nop                                              ; $5b3e: $00
	nop                                              ; $5b3f: $00
	jr   jr_026_5b32                                 ; $5b40: $18 $f0

jr_026_5b42:
	jr   jr_026_5b34                                 ; $5b42: $18 $f0

jr_026_5b44:
	ldh  a, [$e0]                                    ; $5b44: $f0 $e0
	ldh  [rP1], a                                    ; $5b46: $e0 $00
	nop                                              ; $5b48: $00
	nop                                              ; $5b49: $00
	nop                                              ; $5b4a: $00
	nop                                              ; $5b4b: $00
	nop                                              ; $5b4c: $00
	nop                                              ; $5b4d: $00
	nop                                              ; $5b4e: $00
	nop                                              ; $5b4f: $00
	ld   h, d                                        ; $5b50: $62
	ccf                                              ; $5b51: $3f
	ld   h, d                                        ; $5b52: $62
	ccf                                              ; $5b53: $3f
	ccf                                              ; $5b54: $3f
	dec  e                                           ; $5b55: $1d
	dec  e                                           ; $5b56: $1d
	nop                                              ; $5b57: $00
	nop                                              ; $5b58: $00
	nop                                              ; $5b59: $00
	nop                                              ; $5b5a: $00
	nop                                              ; $5b5b: $00
	nop                                              ; $5b5c: $00
	nop                                              ; $5b5d: $00
	nop                                              ; $5b5e: $00
	nop                                              ; $5b5f: $00
	jr   nc, jr_026_5b42                             ; $5b60: $30 $e0

	jr   nc, jr_026_5b44                             ; $5b62: $30 $e0

	ldh  [$c0], a                                    ; $5b64: $e0 $c0
	ret  nz                                          ; $5b66: $c0

	nop                                              ; $5b67: $00
	nop                                              ; $5b68: $00
	nop                                              ; $5b69: $00
	nop                                              ; $5b6a: $00
	nop                                              ; $5b6b: $00
	nop                                              ; $5b6c: $00
	nop                                              ; $5b6d: $00
	nop                                              ; $5b6e: $00
	nop                                              ; $5b6f: $00
	add  $7c                                         ; $5b70: $c6 $7c
	add  $7c                                         ; $5b72: $c6 $7c
	ld   a, h                                        ; $5b74: $7c
	jr   c, jr_026_5baf                              ; $5b75: $38 $38

	nop                                              ; $5b77: $00
	nop                                              ; $5b78: $00
	nop                                              ; $5b79: $00
	nop                                              ; $5b7a: $00
	nop                                              ; $5b7b: $00
	nop                                              ; $5b7c: $00
	nop                                              ; $5b7d: $00
	nop                                              ; $5b7e: $00
	nop                                              ; $5b7f: $00
	ld   h, c                                        ; $5b80: $61
	ccf                                              ; $5b81: $3f
	ld   h, c                                        ; $5b82: $61
	ccf                                              ; $5b83: $3f
	ccf                                              ; $5b84: $3f
	ld   e, $1e                                      ; $5b85: $1e $1e
	nop                                              ; $5b87: $00
	nop                                              ; $5b88: $00
	nop                                              ; $5b89: $00
	nop                                              ; $5b8a: $00
	nop                                              ; $5b8b: $00
	nop                                              ; $5b8c: $00
	nop                                              ; $5b8d: $00
	nop                                              ; $5b8e: $00
	nop                                              ; $5b8f: $00
	add  b                                           ; $5b90: $80
	nop                                              ; $5b91: $00
	add  b                                           ; $5b92: $80
	nop                                              ; $5b93: $00
	nop                                              ; $5b94: $00
	nop                                              ; $5b95: $00
	nop                                              ; $5b96: $00
	nop                                              ; $5b97: $00
	nop                                              ; $5b98: $00
	nop                                              ; $5b99: $00
	nop                                              ; $5b9a: $00
	nop                                              ; $5b9b: $00
	nop                                              ; $5b9c: $00
	nop                                              ; $5b9d: $00
	nop                                              ; $5b9e: $00
	nop                                              ; $5b9f: $00
	inc  c                                           ; $5ba0: $0c
	rlca                                             ; $5ba1: $07
	inc  c                                           ; $5ba2: $0c
	rlca                                             ; $5ba3: $07
	rlca                                             ; $5ba4: $07
	inc  bc                                          ; $5ba5: $03
	inc  bc                                          ; $5ba6: $03
	nop                                              ; $5ba7: $00
	nop                                              ; $5ba8: $00
	nop                                              ; $5ba9: $00
	nop                                              ; $5baa: $00
	nop                                              ; $5bab: $00
	nop                                              ; $5bac: $00
	nop                                              ; $5bad: $00
	nop                                              ; $5bae: $00

jr_026_5baf:
	nop                                              ; $5baf: $00
	ld   [hl], $e3                                   ; $5bb0: $36 $e3
	ld   [hl], $e3                                   ; $5bb2: $36 $e3
	db   $e3                                         ; $5bb4: $e3
	pop  bc                                          ; $5bb5: $c1
	pop  bc                                          ; $5bb6: $c1
	nop                                              ; $5bb7: $00
	nop                                              ; $5bb8: $00
	nop                                              ; $5bb9: $00
	nop                                              ; $5bba: $00
	nop                                              ; $5bbb: $00
	nop                                              ; $5bbc: $00
	nop                                              ; $5bbd: $00
	nop                                              ; $5bbe: $00
	nop                                              ; $5bbf: $00
	db   $10                                         ; $5bc0: $10
	rst  $38                                         ; $5bc1: $ff
	db   $10                                         ; $5bc2: $10
	rst  $38                                         ; $5bc3: $ff
	rst  $38                                         ; $5bc4: $ff
	rst  $28                                         ; $5bc5: $ef
	rst  $28                                         ; $5bc6: $ef
	nop                                              ; $5bc7: $00
	nop                                              ; $5bc8: $00
	nop                                              ; $5bc9: $00
	nop                                              ; $5bca: $00
	nop                                              ; $5bcb: $00
	nop                                              ; $5bcc: $00
	nop                                              ; $5bcd: $00
	nop                                              ; $5bce: $00

jr_026_5bcf:
	nop                                              ; $5bcf: $00
	add  h                                           ; $5bd0: $84
	rst  $38                                         ; $5bd1: $ff
	add  h                                           ; $5bd2: $84
	rst  $38                                         ; $5bd3: $ff
	rst  $38                                         ; $5bd4: $ff
	ld   a, e                                        ; $5bd5: $7b
	ld   a, e                                        ; $5bd6: $7b
	nop                                              ; $5bd7: $00
	nop                                              ; $5bd8: $00
	nop                                              ; $5bd9: $00
	nop                                              ; $5bda: $00
	nop                                              ; $5bdb: $00
	nop                                              ; $5bdc: $00
	nop                                              ; $5bdd: $00
	nop                                              ; $5bde: $00
	nop                                              ; $5bdf: $00
	ld   b, b                                        ; $5be0: $40
	rst  $38                                         ; $5be1: $ff
	ld   b, b                                        ; $5be2: $40
	rst  $38                                         ; $5be3: $ff
	rst  $38                                         ; $5be4: $ff
	cp   a                                           ; $5be5: $bf
	cp   a                                           ; $5be6: $bf
	nop                                              ; $5be7: $00
	nop                                              ; $5be8: $00
	nop                                              ; $5be9: $00
	nop                                              ; $5bea: $00
	nop                                              ; $5beb: $00
	nop                                              ; $5bec: $00
	nop                                              ; $5bed: $00
	nop                                              ; $5bee: $00
	nop                                              ; $5bef: $00
	inc  b                                           ; $5bf0: $04
	rst  $38                                         ; $5bf1: $ff
	inc  b                                           ; $5bf2: $04
	rst  $38                                         ; $5bf3: $ff
	rst  $38                                         ; $5bf4: $ff
	ei                                               ; $5bf5: $fb
	ei                                               ; $5bf6: $fb
	nop                                              ; $5bf7: $00
	nop                                              ; $5bf8: $00
	nop                                              ; $5bf9: $00
	nop                                              ; $5bfa: $00
	nop                                              ; $5bfb: $00
	nop                                              ; $5bfc: $00
	nop                                              ; $5bfd: $00
	nop                                              ; $5bfe: $00
	nop                                              ; $5bff: $00
	nop                                              ; $5c00: $00
	nop                                              ; $5c01: $00
	nop                                              ; $5c02: $00
	nop                                              ; $5c03: $00
	jr   c, jr_026_5c06                              ; $5c04: $38 $00

jr_026_5c06:
	ld   a, h                                        ; $5c06: $7c
	jr   c, jr_026_5bcf                              ; $5c07: $38 $c6

	ld   a, h                                        ; $5c09: $7c
	add  $7c                                         ; $5c0a: $c6 $7c
	add  $7c                                         ; $5c0c: $c6 $7c
	add  $7c                                         ; $5c0e: $c6 $7c
	nop                                              ; $5c10: $00
	nop                                              ; $5c11: $00
	nop                                              ; $5c12: $00
	nop                                              ; $5c13: $00
	ld   c, $00                                      ; $5c14: $0e $00
	rra                                              ; $5c16: $1f
	ld   c, $31                                      ; $5c17: $0e $31
	rra                                              ; $5c19: $1f
	ld   sp, $311f                                   ; $5c1a: $31 $1f $31
	rra                                              ; $5c1d: $1f
	ld   sp, $001f                                   ; $5c1e: $31 $1f $00
	nop                                              ; $5c21: $00
	nop                                              ; $5c22: $00
	nop                                              ; $5c23: $00
	rst  $38                                         ; $5c24: $ff
	nop                                              ; $5c25: $00
	rst  $38                                         ; $5c26: $ff
	rst  $38                                         ; $5c27: $ff
	nop                                              ; $5c28: $00
	rst  $38                                         ; $5c29: $ff

jr_026_5c2a:
	nop                                              ; $5c2a: $00
	rst  $38                                         ; $5c2b: $ff
	nop                                              ; $5c2c: $00
	rst  $38                                         ; $5c2d: $ff
	rra                                              ; $5c2e: $1f
	rst  $38                                         ; $5c2f: $ff
	nop                                              ; $5c30: $00
	nop                                              ; $5c31: $00
	nop                                              ; $5c32: $00
	nop                                              ; $5c33: $00
	ldh  [rP1], a                                    ; $5c34: $e0 $00
	ldh  a, [$e0]                                    ; $5c36: $f0 $e0
	jr   jr_026_5c2a                                 ; $5c38: $18 $f0

	inc  c                                           ; $5c3a: $0c
	ld   hl, sp+$06                                  ; $5c3b: $f8 $06
	db   $fc                                         ; $5c3d: $fc
	add  [hl]                                        ; $5c3e: $86
	db   $fc                                         ; $5c3f: $fc
	add  $7c                                         ; $5c40: $c6 $7c
	add  $7c                                         ; $5c42: $c6 $7c
	add  $7c                                         ; $5c44: $c6 $7c
	add  $7c                                         ; $5c46: $c6 $7c
	add  $7c                                         ; $5c48: $c6 $7c
	rst  ToBoot                                         ; $5c4a: $c7
	ld   a, h                                        ; $5c4b: $7c
	db   $e3                                         ; $5c4c: $e3
	cp   a                                           ; $5c4d: $bf
	ld   [hl], b                                     ; $5c4e: $70
	rst  JumpTable                                         ; $5c4f: $df
	ld   sp, $311f                                   ; $5c50: $31 $1f $31
	rra                                              ; $5c53: $1f
	ld   sp, $311f                                   ; $5c54: $31 $1f $31
	rra                                              ; $5c57: $1f
	ld   sp, $f11f                                   ; $5c58: $31 $1f $f1
	rra                                              ; $5c5b: $1f
	pop  hl                                          ; $5c5c: $e1
	rst  $38                                         ; $5c5d: $ff
	ld   bc, $1fff                                   ; $5c5e: $01 $ff $1f
	rst  $38                                         ; $5c61: $ff
	rra                                              ; $5c62: $1f
	ldh  a, [rAUD2LOW]                               ; $5c63: $f0 $18
	ldh  a, [rAUD2LOW]                               ; $5c65: $f0 $18
	ldh  a, [rAUD2LOW]                               ; $5c67: $f0 $18
	ldh  a, [rAUD2LOW]                               ; $5c69: $f0 $18
	ldh  a, [rAUD2LOW]                               ; $5c6b: $f0 $18
	ldh  a, [rAUD2LOW]                               ; $5c6d: $f0 $18
	ldh  a, [$f0]                                    ; $5c6f: $f0 $f0
	ldh  [$e0], a                                    ; $5c71: $e0 $e0
	nop                                              ; $5c73: $00
	nop                                              ; $5c74: $00
	nop                                              ; $5c75: $00
	nop                                              ; $5c76: $00
	nop                                              ; $5c77: $00
	nop                                              ; $5c78: $00
	nop                                              ; $5c79: $00
	nop                                              ; $5c7a: $00
	nop                                              ; $5c7b: $00
	nop                                              ; $5c7c: $00
	nop                                              ; $5c7d: $00
	nop                                              ; $5c7e: $00
	nop                                              ; $5c7f: $00
	nop                                              ; $5c80: $00
	nop                                              ; $5c81: $00
	nop                                              ; $5c82: $00
	nop                                              ; $5c83: $00
	ld   bc, $0300                                   ; $5c84: $01 $00 $03
	ld   bc, $0306                                   ; $5c87: $01 $06 $03
	inc  c                                           ; $5c8a: $0c
	rlca                                             ; $5c8b: $07
	jr   jr_026_5c9d                                 ; $5c8c: $18 $0f

	jr   nc, jr_026_5caf                             ; $5c8e: $30 $1f

	nop                                              ; $5c90: $00
	nop                                              ; $5c91: $00
	nop                                              ; $5c92: $00
	nop                                              ; $5c93: $00
	cp   $00                                         ; $5c94: $fe $00
	rst  $38                                         ; $5c96: $ff
	cp   $01                                         ; $5c97: $fe $01
	rst  $38                                         ; $5c99: $ff
	nop                                              ; $5c9a: $00
	rst  $38                                         ; $5c9b: $ff
	nop                                              ; $5c9c: $00

jr_026_5c9d:
	rst  $38                                         ; $5c9d: $ff
	db   $fc                                         ; $5c9e: $fc
	rst  $38                                         ; $5c9f: $ff
	nop                                              ; $5ca0: $00
	nop                                              ; $5ca1: $00
	nop                                              ; $5ca2: $00
	nop                                              ; $5ca3: $00
	ld   a, $00                                      ; $5ca4: $3e $00
	ld   a, a                                        ; $5ca6: $7f
	inc  e                                           ; $5ca7: $1c
	db   $e3                                         ; $5ca8: $e3
	ld   a, $e3                                      ; $5ca9: $3e $e3
	cp   [hl]                                        ; $5cab: $be
	ld   h, e                                        ; $5cac: $63
	cp   $23                                         ; $5cad: $fe $23

jr_026_5caf:
	cp   $00                                         ; $5caf: $fe $00
	nop                                              ; $5cb1: $00
	nop                                              ; $5cb2: $00
	nop                                              ; $5cb3: $00
	ld   bc, $0300                                   ; $5cb4: $01 $00 $03
	ld   bc, $0103                                   ; $5cb7: $01 $03 $01
	inc  bc                                          ; $5cba: $03
	ld   bc, $0103                                   ; $5cbb: $01 $03 $01
	inc  bc                                          ; $5cbe: $03
	ld   bc, $0000                                   ; $5cbf: $01 $00 $00
	nop                                              ; $5cc2: $00
	nop                                              ; $5cc3: $00
	rst  $38                                         ; $5cc4: $ff
	nop                                              ; $5cc5: $00
	rst  $38                                         ; $5cc6: $ff
	rst  $38                                         ; $5cc7: $ff
	nop                                              ; $5cc8: $00
	rst  $38                                         ; $5cc9: $ff
	nop                                              ; $5cca: $00
	rst  $38                                         ; $5ccb: $ff
	nop                                              ; $5ccc: $00
	rst  $38                                         ; $5ccd: $ff
	rra                                              ; $5cce: $1f
	rst  $38                                         ; $5ccf: $ff
	nop                                              ; $5cd0: $00
	nop                                              ; $5cd1: $00
	nop                                              ; $5cd2: $00
	nop                                              ; $5cd3: $00
	db   $fc                                         ; $5cd4: $fc
	nop                                              ; $5cd5: $00
	cp   $fc                                         ; $5cd6: $fe $fc
	inc  bc                                          ; $5cd8: $03
	cp   $03                                         ; $5cd9: $fe $03
	cp   $03                                         ; $5cdb: $fe $03
	cp   $fe                                         ; $5cdd: $fe $fe
	db   $fc                                         ; $5cdf: $fc
	nop                                              ; $5ce0: $00
	nop                                              ; $5ce1: $00
	nop                                              ; $5ce2: $00
	nop                                              ; $5ce3: $00
	rrca                                             ; $5ce4: $0f
	nop                                              ; $5ce5: $00
	rra                                              ; $5ce6: $1f
	rrca                                             ; $5ce7: $0f
	jr   nc, @+$21                                   ; $5ce8: $30 $1f

	jr   nc, @+$21                                   ; $5cea: $30 $1f

	ld   h, b                                        ; $5cec: $60
	ccf                                              ; $5ced: $3f
	ld   h, b                                        ; $5cee: $60
	ccf                                              ; $5cef: $3f
	nop                                              ; $5cf0: $00
	nop                                              ; $5cf1: $00
	nop                                              ; $5cf2: $00
	nop                                              ; $5cf3: $00
	inc  bc                                          ; $5cf4: $03
	nop                                              ; $5cf5: $00
	add  a                                           ; $5cf6: $87
	inc  bc                                          ; $5cf7: $03
	call z, $cc87                                    ; $5cf8: $cc $87 $cc
	add  a                                           ; $5cfb: $87
	ld   l, h                                        ; $5cfc: $6c
	rst  ToBoot                                         ; $5cfd: $c7
	ld   l, h                                        ; $5cfe: $6c
	rst  ToBoot                                         ; $5cff: $c7
	add  $7c                                         ; $5d00: $c6 $7c
	add  $7c                                         ; $5d02: $c6 $7c
	add  $7c                                         ; $5d04: $c6 $7c
	add  $7c                                         ; $5d06: $c6 $7c
	add  $7c                                         ; $5d08: $c6 $7c
	add  $7c                                         ; $5d0a: $c6 $7c
	add  $7c                                         ; $5d0c: $c6 $7c
	add  $7c                                         ; $5d0e: $c6 $7c
	ld   sp, $311f                                   ; $5d10: $31 $1f $31
	rra                                              ; $5d13: $1f
	ld   sp, $311f                                   ; $5d14: $31 $1f $31
	rra                                              ; $5d17: $1f
	ld   sp, $311f                                   ; $5d18: $31 $1f $31
	rra                                              ; $5d1b: $1f
	ld   sp, $311f                                   ; $5d1c: $31 $1f $31
	rra                                              ; $5d1f: $1f
	rra                                              ; $5d20: $1f
	ldh  a, [rAUD2LOW]                               ; $5d21: $f0 $18
	ldh  a, [rAUD2LOW]                               ; $5d23: $f0 $18
	ldh  a, [$1f]                                    ; $5d25: $f0 $1f
	ldh  a, [$1f]                                    ; $5d27: $f0 $1f
	rst  $38                                         ; $5d29: $ff
	nop                                              ; $5d2a: $00
	rst  $38                                         ; $5d2b: $ff
	nop                                              ; $5d2c: $00
	rst  $38                                         ; $5d2d: $ff
	nop                                              ; $5d2e: $00
	rst  $38                                         ; $5d2f: $ff
	add  $7c                                         ; $5d30: $c6 $7c
	add  $7c                                         ; $5d32: $c6 $7c
	add  $7c                                         ; $5d34: $c6 $7c
	add  $7c                                         ; $5d36: $c6 $7c
	add  [hl]                                        ; $5d38: $86
	db   $fc                                         ; $5d39: $fc
	ld   b, $fc                                      ; $5d3a: $06 $fc
	inc  c                                           ; $5d3c: $0c
	ld   hl, sp+$08                                  ; $5d3d: $f8 $08
	ldh  a, [rSVBK]                                  ; $5d3f: $f0 $70
	rst  JumpTable                                         ; $5d41: $df
	ld   [hl], b                                     ; $5d42: $70
	rst  JumpTable                                         ; $5d43: $df
	rst  JumpTable                                         ; $5d44: $df
	adc  a                                           ; $5d45: $8f
	adc  a                                           ; $5d46: $8f
	nop                                              ; $5d47: $00
	nop                                              ; $5d48: $00
	nop                                              ; $5d49: $00
	nop                                              ; $5d4a: $00
	nop                                              ; $5d4b: $00
	nop                                              ; $5d4c: $00
	nop                                              ; $5d4d: $00
	nop                                              ; $5d4e: $00
	nop                                              ; $5d4f: $00
	inc  bc                                          ; $5d50: $03
	rst  $38                                         ; $5d51: $ff

jr_026_5d52:
	rlca                                             ; $5d52: $07
	db   $fd                                         ; $5d53: $fd

jr_026_5d54:
	db   $fd                                         ; $5d54: $fd
	ld   hl, sp-$08                                  ; $5d55: $f8 $f8
	nop                                              ; $5d57: $00
	nop                                              ; $5d58: $00
	nop                                              ; $5d59: $00
	nop                                              ; $5d5a: $00
	nop                                              ; $5d5b: $00
	nop                                              ; $5d5c: $00
	nop                                              ; $5d5d: $00
	nop                                              ; $5d5e: $00
	nop                                              ; $5d5f: $00
	jr   jr_026_5d52                                 ; $5d60: $18 $f0

	jr   jr_026_5d54                                 ; $5d62: $18 $f0

	ldh  a, [$e0]                                    ; $5d64: $f0 $e0
	ldh  [rP1], a                                    ; $5d66: $e0 $00
	nop                                              ; $5d68: $00
	nop                                              ; $5d69: $00
	nop                                              ; $5d6a: $00
	nop                                              ; $5d6b: $00
	nop                                              ; $5d6c: $00
	nop                                              ; $5d6d: $00
	nop                                              ; $5d6e: $00
	nop                                              ; $5d6f: $00
	nop                                              ; $5d70: $00
	nop                                              ; $5d71: $00
	nop                                              ; $5d72: $00
	nop                                              ; $5d73: $00
	nop                                              ; $5d74: $00
	nop                                              ; $5d75: $00
	nop                                              ; $5d76: $00
	nop                                              ; $5d77: $00
	nop                                              ; $5d78: $00
	nop                                              ; $5d79: $00
	nop                                              ; $5d7a: $00
	nop                                              ; $5d7b: $00
	nop                                              ; $5d7c: $00
	nop                                              ; $5d7d: $00
	nop                                              ; $5d7e: $00
	nop                                              ; $5d7f: $00
	ld   sp, $311f                                   ; $5d80: $31 $1f $31
	rra                                              ; $5d83: $1f
	ld   sp, $311f                                   ; $5d84: $31 $1f $31
	rra                                              ; $5d87: $1f
	ld   sp, $311f                                   ; $5d88: $31 $1f $31
	rra                                              ; $5d8b: $1f
	ld   sp, $311f                                   ; $5d8c: $31 $1f $31
	rra                                              ; $5d8f: $1f
	cp   $03                                         ; $5d90: $fe $03
	add  [hl]                                        ; $5d92: $86
	inc  bc                                          ; $5d93: $03
	add  e                                           ; $5d94: $83
	ld   bc, $0083                                   ; $5d95: $01 $83 $00
	add  b                                           ; $5d98: $80
	nop                                              ; $5d99: $00
	add  b                                           ; $5d9a: $80
	nop                                              ; $5d9b: $00
	add  b                                           ; $5d9c: $80
	nop                                              ; $5d9d: $00
	add  b                                           ; $5d9e: $80
	nop                                              ; $5d9f: $00
	inc  hl                                          ; $5da0: $23
	cp   $23                                         ; $5da1: $fe $23
	cp   $e3                                         ; $5da3: $fe $e3
	cp   $e3                                         ; $5da5: $fe $e3
	ld   a, $63                                      ; $5da7: $3e $63
	ld   a, $63                                      ; $5da9: $3e $63
	ld   a, $63                                      ; $5dab: $3e $63
	ld   a, $63                                      ; $5dad: $3e $63
	ld   a, $03                                      ; $5daf: $3e $03
	ld   bc, $0103                                   ; $5db1: $01 $03 $01
	inc  bc                                          ; $5db4: $03
	ld   bc, $0103                                   ; $5db5: $01 $03 $01
	inc  bc                                          ; $5db8: $03
	ld   bc, $0103                                   ; $5db9: $01 $03 $01
	inc  bc                                          ; $5dbc: $03
	ld   bc, $0103                                   ; $5dbd: $01 $03 $01
	rra                                              ; $5dc0: $1f
	ldh  a, [rAUD2LOW]                               ; $5dc1: $f0 $18
	ldh  a, [rAUD2LOW]                               ; $5dc3: $f0 $18
	ldh  a, [$1f]                                    ; $5dc5: $f0 $1f
	ldh  a, [$1f]                                    ; $5dc7: $f0 $1f
	rst  $38                                         ; $5dc9: $ff
	nop                                              ; $5dca: $00
	rst  $38                                         ; $5dcb: $ff
	nop                                              ; $5dcc: $00
	rst  $38                                         ; $5dcd: $ff
	nop                                              ; $5dce: $00
	rst  $38                                         ; $5dcf: $ff
	db   $fc                                         ; $5dd0: $fc
	nop                                              ; $5dd1: $00
	nop                                              ; $5dd2: $00
	nop                                              ; $5dd3: $00
	nop                                              ; $5dd4: $00
	nop                                              ; $5dd5: $00
	ldh  a, [rP1]                                    ; $5dd6: $f0 $00
	ld   hl, sp-$10                                  ; $5dd8: $f8 $f0
	dec  c                                           ; $5dda: $0d
	ld   hl, sp+$0d                                  ; $5ddb: $f8 $0d
	ld   hl, sp+$0d                                  ; $5ddd: $f8 $0d
	ld   hl, sp+$60                                  ; $5ddf: $f8 $60
	ccf                                              ; $5de1: $3f
	ret  nz                                          ; $5de2: $c0

	ld   a, a                                        ; $5de3: $7f
	add  $7f                                         ; $5de4: $c6 $7f
	add  $7f                                         ; $5de6: $c6 $7f
	add  $7f                                         ; $5de8: $c6 $7f
	add  [hl]                                        ; $5dea: $86
	rst  $38                                         ; $5deb: $ff
	adc  a                                           ; $5dec: $8f
	ld   sp, hl                                      ; $5ded: $f9
	adc  a                                           ; $5dee: $8f
	ld   sp, hl                                      ; $5def: $f9
	ld   l, h                                        ; $5df0: $6c
	rst  ToBoot                                         ; $5df1: $c7
	inc  a                                           ; $5df2: $3c
	rst  $20                                         ; $5df3: $e7
	inc  a                                           ; $5df4: $3c
	rst  $20                                         ; $5df5: $e7
	inc  a                                           ; $5df6: $3c
	rst  $20                                         ; $5df7: $e7
	inc  a                                           ; $5df8: $3c
	rst  $20                                         ; $5df9: $e7
	inc  e                                           ; $5dfa: $1c
	rst  $30                                         ; $5dfb: $f7
	inc  e                                           ; $5dfc: $1c
	rst  $30                                         ; $5dfd: $f7
	inc  e                                           ; $5dfe: $1c
	rst  $30                                         ; $5dff: $f7
	nop                                              ; $5e00: $00
	nop                                              ; $5e01: $00
	nop                                              ; $5e02: $00
	nop                                              ; $5e03: $00
	nop                                              ; $5e04: $00
	nop                                              ; $5e05: $00
	nop                                              ; $5e06: $00
	nop                                              ; $5e07: $00

jr_026_5e08:
	nop                                              ; $5e08: $00
	nop                                              ; $5e09: $00
	nop                                              ; $5e0a: $00
	nop                                              ; $5e0b: $00
	nop                                              ; $5e0c: $00
	nop                                              ; $5e0d: $00
	nop                                              ; $5e0e: $00
	nop                                              ; $5e0f: $00
	nop                                              ; $5e10: $00
	nop                                              ; $5e11: $00
	nop                                              ; $5e12: $00
	nop                                              ; $5e13: $00
	ld   bc, $0600                                   ; $5e14: $01 $00 $06
	ld   bc, $0718                                   ; $5e17: $01 $18 $07
	jr   nz, jr_026_5e3b                             ; $5e1a: $20 $1f

	ld   b, b                                        ; $5e1c: $40
	ccf                                              ; $5e1d: $3f
	add  b                                           ; $5e1e: $80
	ld   a, a                                        ; $5e1f: $7f
	nop                                              ; $5e20: $00
	nop                                              ; $5e21: $00
	rra                                              ; $5e22: $1f
	nop                                              ; $5e23: $00
	ldh  [$1f], a                                    ; $5e24: $e0 $1f
	nop                                              ; $5e26: $00
	rst  $38                                         ; $5e27: $ff
	nop                                              ; $5e28: $00
	rst  $38                                         ; $5e29: $ff
	nop                                              ; $5e2a: $00
	rst  $38                                         ; $5e2b: $ff
	nop                                              ; $5e2c: $00
	rst  $38                                         ; $5e2d: $ff
	nop                                              ; $5e2e: $00
	rst  $38                                         ; $5e2f: $ff
	jr   nz, jr_026_5e51                             ; $5e30: $20 $1f

	jr   nz, jr_026_5e53                             ; $5e32: $20 $1f

	jr   nz, jr_026_5e55                             ; $5e34: $20 $1f

	ld   b, b                                        ; $5e36: $40
	ccf                                              ; $5e37: $3f
	ld   b, b                                        ; $5e38: $40
	ccf                                              ; $5e39: $3f
	ld   b, b                                        ; $5e3a: $40

jr_026_5e3b:
	ccf                                              ; $5e3b: $3f
	ld   b, b                                        ; $5e3c: $40
	ccf                                              ; $5e3d: $3f
	ld   b, b                                        ; $5e3e: $40
	ccf                                              ; $5e3f: $3f
	db   $10                                         ; $5e40: $10
	ldh  [rAUD1SWEEP], a                             ; $5e41: $e0 $10
	ldh  [rAUD4LEN], a                               ; $5e43: $e0 $20
	ret  nz                                          ; $5e45: $c0

	jr   nz, jr_026_5e08                             ; $5e46: $20 $c0

	ld   b, b                                        ; $5e48: $40
	add  b                                           ; $5e49: $80
	ld   b, b                                        ; $5e4a: $40
	add  b                                           ; $5e4b: $80
	ld   b, b                                        ; $5e4c: $40
	add  b                                           ; $5e4d: $80
	ld   b, b                                        ; $5e4e: $40
	add  b                                           ; $5e4f: $80
	add  c                                           ; $5e50: $81

jr_026_5e51:
	nop                                              ; $5e51: $00
	ld   b, d                                        ; $5e52: $42

jr_026_5e53:
	nop                                              ; $5e53: $00
	inc  h                                           ; $5e54: $24

jr_026_5e55:
	nop                                              ; $5e55: $00
	jr   jr_026_5e58                                 ; $5e56: $18 $00

jr_026_5e58:
	jr   jr_026_5e5a                                 ; $5e58: $18 $00

jr_026_5e5a:
	inc  h                                           ; $5e5a: $24
	nop                                              ; $5e5b: $00

jr_026_5e5c:
	ld   b, d                                        ; $5e5c: $42
	nop                                              ; $5e5d: $00
	add  c                                           ; $5e5e: $81
	nop                                              ; $5e5f: $00
	nop                                              ; $5e60: $00
	nop                                              ; $5e61: $00
	nop                                              ; $5e62: $00
	nop                                              ; $5e63: $00
	rst  $38                                         ; $5e64: $ff
	nop                                              ; $5e65: $00
	rst  $38                                         ; $5e66: $ff
	rst  $38                                         ; $5e67: $ff
	nop                                              ; $5e68: $00
	rst  $38                                         ; $5e69: $ff
	nop                                              ; $5e6a: $00
	rst  $38                                         ; $5e6b: $ff
	nop                                              ; $5e6c: $00
	rst  $38                                         ; $5e6d: $ff

jr_026_5e6e:
	ld   a, a                                        ; $5e6e: $7f
	rst  $38                                         ; $5e6f: $ff
	nop                                              ; $5e70: $00
	nop                                              ; $5e71: $00
	nop                                              ; $5e72: $00
	nop                                              ; $5e73: $00
	add  b                                           ; $5e74: $80
	nop                                              ; $5e75: $00
	ret  nz                                          ; $5e76: $c0

	add  b                                           ; $5e77: $80
	ld   h, b                                        ; $5e78: $60
	ret  nz                                          ; $5e79: $c0

	jr   nc, jr_026_5e5c                             ; $5e7a: $30 $e0

	jr   jr_026_5e6e                                 ; $5e7c: $18 $f0

	inc  c                                           ; $5e7e: $0c
	ld   hl, sp+$31                                  ; $5e7f: $f8 $31
	rra                                              ; $5e81: $1f
	ld   sp, $311f                                   ; $5e82: $31 $1f $31
	rra                                              ; $5e85: $1f
	ld   sp, $311f                                   ; $5e86: $31 $1f $31
	rra                                              ; $5e89: $1f
	ld   sp, $301f                                   ; $5e8a: $31 $1f $30
	rra                                              ; $5e8d: $1f
	jr   nc, @+$21                                   ; $5e8e: $30 $1f

	add  b                                           ; $5e90: $80
	nop                                              ; $5e91: $00
	add  b                                           ; $5e92: $80
	nop                                              ; $5e93: $00
	add  c                                           ; $5e94: $81
	nop                                              ; $5e95: $00
	add  e                                           ; $5e96: $83
	ld   bc, $0386                                   ; $5e97: $01 $86 $03
	cp   $03                                         ; $5e9a: $fe $03
	db   $fc                                         ; $5e9c: $fc
	rst  $38                                         ; $5e9d: $ff
	nop                                              ; $5e9e: $00
	rst  $38                                         ; $5e9f: $ff
	ld   h, e                                        ; $5ea0: $63
	ld   a, $63                                      ; $5ea1: $3e $63
	ld   a, $e3                                      ; $5ea3: $3e $e3
	ld   a, $e3                                      ; $5ea5: $3e $e3
	cp   $23                                         ; $5ea7: $fe $23
	cp   $23                                         ; $5ea9: $fe $23
	cp   $23                                         ; $5eab: $fe $23
	rst  $38                                         ; $5ead: $ff
	jr   nz, @+$01                                   ; $5eae: $20 $ff

	inc  bc                                          ; $5eb0: $03
	ld   bc, $0103                                   ; $5eb1: $01 $03 $01
	inc  bc                                          ; $5eb4: $03
	ld   bc, $0103                                   ; $5eb5: $01 $03 $01
	inc  bc                                          ; $5eb8: $03
	ld   bc, $01ff                                   ; $5eb9: $01 $ff $01
	rst  $38                                         ; $5ebc: $ff
	rst  $38                                         ; $5ebd: $ff
	nop                                              ; $5ebe: $00
	rst  $38                                         ; $5ebf: $ff
	rra                                              ; $5ec0: $1f
	rst  $38                                         ; $5ec1: $ff
	rra                                              ; $5ec2: $1f
	ldh  a, [rAUD2LOW]                               ; $5ec3: $f0 $18
	ldh  a, [rAUD2LOW]                               ; $5ec5: $f0 $18
	ldh  a, [rAUD2LOW]                               ; $5ec7: $f0 $18
	ldh  a, [$1f]                                    ; $5ec9: $f0 $1f
	ldh  a, [$1f]                                    ; $5ecb: $f0 $1f
	rst  $38                                         ; $5ecd: $ff
	add  b                                           ; $5ece: $80
	rst  $38                                         ; $5ecf: $ff
	ld   sp, hl                                      ; $5ed0: $f9
	ldh  a, [$f3]                                    ; $5ed1: $f0 $f3
	ld   bc, $0103                                   ; $5ed3: $01 $03 $01
	inc  bc                                          ; $5ed6: $03
	ld   bc, $0103                                   ; $5ed7: $01 $03 $01
	cp   $03                                         ; $5eda: $fe $03
	cp   $ff                                         ; $5edc: $fe $ff
	ld   [bc], a                                     ; $5ede: $02
	rst  $38                                         ; $5edf: $ff
	adc  a                                           ; $5ee0: $8f
	ld   sp, hl                                      ; $5ee1: $f9
	rrca                                             ; $5ee2: $0f
	rst  $38                                         ; $5ee3: $ff
	nop                                              ; $5ee4: $00
	rst  $38                                         ; $5ee5: $ff
	nop                                              ; $5ee6: $00
	rst  $38                                         ; $5ee7: $ff
	nop                                              ; $5ee8: $00
	rst  $38                                         ; $5ee9: $ff
	rra                                              ; $5eea: $1f
	rst  $38                                         ; $5eeb: $ff
	ccf                                              ; $5eec: $3f
	ldh  [$30], a                                    ; $5eed: $e0 $30
	ldh  [rAUD3LEVEL], a                             ; $5eef: $e0 $1c
	rst  $30                                         ; $5ef1: $f7
	inc  c                                           ; $5ef2: $0c
	rst  $38                                         ; $5ef3: $ff
	inc  c                                           ; $5ef4: $0c
	rst  $38                                         ; $5ef5: $ff
	inc  c                                           ; $5ef6: $0c
	rst  $38                                         ; $5ef7: $ff
	inc  c                                           ; $5ef8: $0c
	rst  $38                                         ; $5ef9: $ff
	add  h                                           ; $5efa: $84
	rst  $38                                         ; $5efb: $ff
	call nz, $c47f                                   ; $5efc: $c4 $7f $c4
	ld   a, a                                        ; $5eff: $7f
	ld   bc, $0200                                   ; $5f00: $01 $00 $02
	ld   bc, $0304                                   ; $5f03: $01 $04 $03
	ld   [$0807], sp                                 ; $5f06: $08 $07 $08
	rlca                                             ; $5f09: $07
	db   $10                                         ; $5f0a: $10
	rrca                                             ; $5f0b: $0f

jr_026_5f0c:
	db   $10                                         ; $5f0c: $10
	rrca                                             ; $5f0d: $0f
	jr   nz, jr_026_5f2f                             ; $5f0e: $20 $1f

	nop                                              ; $5f10: $00
	rst  $38                                         ; $5f11: $ff
	nop                                              ; $5f12: $00
	rst  $38                                         ; $5f13: $ff
	nop                                              ; $5f14: $00
	rst  $38                                         ; $5f15: $ff
	nop                                              ; $5f16: $00
	rst  $38                                         ; $5f17: $ff
	inc  bc                                          ; $5f18: $03
	db   $fc                                         ; $5f19: $fc
	inc  b                                           ; $5f1a: $04
	ld   hl, sp+$08                                  ; $5f1b: $f8 $08
	ldh  a, [$08]                                    ; $5f1d: $f0 $08
	ldh  a, [rP1]                                    ; $5f1f: $f0 $00
	rst  $38                                         ; $5f21: $ff
	rrca                                             ; $5f22: $0f
	ldh  a, [$30]                                    ; $5f23: $f0 $30
	ret  nz                                          ; $5f25: $c0

	ret  nz                                          ; $5f26: $c0

	nop                                              ; $5f27: $00
	nop                                              ; $5f28: $00
	nop                                              ; $5f29: $00
	nop                                              ; $5f2a: $00
	nop                                              ; $5f2b: $00
	nop                                              ; $5f2c: $00
	nop                                              ; $5f2d: $00
	nop                                              ; $5f2e: $00

jr_026_5f2f:
	nop                                              ; $5f2f: $00
	inc  c                                           ; $5f30: $0c
	nop                                              ; $5f31: $00
	ld   [de], a                                     ; $5f32: $12
	inc  c                                           ; $5f33: $0c
	ld   hl, $401e                                   ; $5f34: $21 $1e $40
	ccf                                              ; $5f37: $3f
	add  b                                           ; $5f38: $80
	ld   a, a                                        ; $5f39: $7f
	add  b                                           ; $5f3a: $80
	ld   a, a                                        ; $5f3b: $7f
	ld   b, b                                        ; $5f3c: $40
	ccf                                              ; $5f3d: $3f
	jr   nz, @+$21                                   ; $5f3e: $20 $1f

	nop                                              ; $5f40: $00
	nop                                              ; $5f41: $00
	nop                                              ; $5f42: $00
	nop                                              ; $5f43: $00
	nop                                              ; $5f44: $00
	nop                                              ; $5f45: $00
	add  b                                           ; $5f46: $80
	nop                                              ; $5f47: $00
	ld   b, b                                        ; $5f48: $40
	add  b                                           ; $5f49: $80
	jr   nz, jr_026_5f0c                             ; $5f4a: $20 $c0

	db   $10                                         ; $5f4c: $10
	ldh  [$08], a                                    ; $5f4d: $e0 $08
	ldh  a, [rDIV]                                   ; $5f4f: $f0 $04
	ld   hl, sp+$02                                  ; $5f51: $f8 $02
	db   $fc                                         ; $5f53: $fc
	ld   bc, $00fe                                   ; $5f54: $01 $fe $00
	rst  $38                                         ; $5f57: $ff
	nop                                              ; $5f58: $00
	rst  $38                                         ; $5f59: $ff
	add  b                                           ; $5f5a: $80
	ld   a, a                                        ; $5f5b: $7f
	ld   b, b                                        ; $5f5c: $40
	ccf                                              ; $5f5d: $3f
	jr   nz, jr_026_5f7f                             ; $5f5e: $20 $1f

	ld   a, a                                        ; $5f60: $7f
	ret  nz                                          ; $5f61: $c0

	ld   h, c                                        ; $5f62: $61
	ret  nz                                          ; $5f63: $c0

	ld   h, c                                        ; $5f64: $61
	ret  nz                                          ; $5f65: $c0

	ld   a, a                                        ; $5f66: $7f
	ret  nz                                          ; $5f67: $c0

	ld   a, a                                        ; $5f68: $7f
	rst  $38                                         ; $5f69: $ff
	nop                                              ; $5f6a: $00
	rst  $38                                         ; $5f6b: $ff
	nop                                              ; $5f6c: $00
	rst  $38                                         ; $5f6d: $ff
	nop                                              ; $5f6e: $00
	rst  $38                                         ; $5f6f: $ff
	adc  h                                           ; $5f70: $8c
	ld   hl, sp-$74                                  ; $5f71: $f8 $8c
	ld   hl, sp-$74                                  ; $5f73: $f8 $8c
	ld   hl, sp-$74                                  ; $5f75: $f8 $8c
	ld   hl, sp+$0c                                  ; $5f77: $f8 $0c
	ld   hl, sp+$0c                                  ; $5f79: $f8 $0c
	ld   hl, sp+$18                                  ; $5f7b: $f8 $18
	ldh  a, [$30]                                    ; $5f7d: $f0 $30

jr_026_5f7f:
	ldh  [rAUD2LOW], a                               ; $5f7f: $e0 $18
	rrca                                             ; $5f81: $0f
	inc  c                                           ; $5f82: $0c
	rlca                                             ; $5f83: $07
	rlca                                             ; $5f84: $07
	inc  bc                                          ; $5f85: $03
	inc  bc                                          ; $5f86: $03
	nop                                              ; $5f87: $00
	nop                                              ; $5f88: $00
	nop                                              ; $5f89: $00
	nop                                              ; $5f8a: $00
	nop                                              ; $5f8b: $00
	nop                                              ; $5f8c: $00
	nop                                              ; $5f8d: $00
	nop                                              ; $5f8e: $00
	nop                                              ; $5f8f: $00
	nop                                              ; $5f90: $00
	rst  $38                                         ; $5f91: $ff
	nop                                              ; $5f92: $00
	rst  $38                                         ; $5f93: $ff
	rst  $38                                         ; $5f94: $ff
	rst  $38                                         ; $5f95: $ff
	rst  $38                                         ; $5f96: $ff
	nop                                              ; $5f97: $00
	nop                                              ; $5f98: $00
	nop                                              ; $5f99: $00
	nop                                              ; $5f9a: $00
	nop                                              ; $5f9b: $00
	nop                                              ; $5f9c: $00
	nop                                              ; $5f9d: $00
	nop                                              ; $5f9e: $00
	nop                                              ; $5f9f: $00
	ld   h, b                                        ; $5fa0: $60
	rst  $38                                         ; $5fa1: $ff
	ldh  [$bf], a                                    ; $5fa2: $e0 $bf
	cp   a                                           ; $5fa4: $bf
	rra                                              ; $5fa5: $1f
	rra                                              ; $5fa6: $1f
	nop                                              ; $5fa7: $00
	nop                                              ; $5fa8: $00
	nop                                              ; $5fa9: $00
	nop                                              ; $5faa: $00
	nop                                              ; $5fab: $00
	nop                                              ; $5fac: $00
	nop                                              ; $5fad: $00
	nop                                              ; $5fae: $00
	nop                                              ; $5faf: $00
	nop                                              ; $5fb0: $00
	rst  $38                                         ; $5fb1: $ff
	nop                                              ; $5fb2: $00
	rst  $38                                         ; $5fb3: $ff
	rst  $38                                         ; $5fb4: $ff
	rst  $38                                         ; $5fb5: $ff
	rst  $38                                         ; $5fb6: $ff
	nop                                              ; $5fb7: $00
	nop                                              ; $5fb8: $00
	nop                                              ; $5fb9: $00
	nop                                              ; $5fba: $00
	nop                                              ; $5fbb: $00
	nop                                              ; $5fbc: $00
	nop                                              ; $5fbd: $00
	nop                                              ; $5fbe: $00
	nop                                              ; $5fbf: $00
	add  b                                           ; $5fc0: $80
	rst  $38                                         ; $5fc1: $ff

jr_026_5fc2:
	add  b                                           ; $5fc2: $80
	rst  $38                                         ; $5fc3: $ff

jr_026_5fc4:
	rst  $38                                         ; $5fc4: $ff
	ld   a, a                                        ; $5fc5: $7f
	rst  $38                                         ; $5fc6: $ff
	nop                                              ; $5fc7: $00
	nop                                              ; $5fc8: $00
	nop                                              ; $5fc9: $00
	nop                                              ; $5fca: $00
	nop                                              ; $5fcb: $00
	nop                                              ; $5fcc: $00
	nop                                              ; $5fcd: $00
	nop                                              ; $5fce: $00
	nop                                              ; $5fcf: $00
	ld   [bc], a                                     ; $5fd0: $02
	rst  $38                                         ; $5fd1: $ff
	ld   [bc], a                                     ; $5fd2: $02
	rst  $38                                         ; $5fd3: $ff
	rst  $38                                         ; $5fd4: $ff
	db   $fd                                         ; $5fd5: $fd
	db   $fd                                         ; $5fd6: $fd
	nop                                              ; $5fd7: $00
	nop                                              ; $5fd8: $00
	nop                                              ; $5fd9: $00
	nop                                              ; $5fda: $00
	nop                                              ; $5fdb: $00
	nop                                              ; $5fdc: $00
	nop                                              ; $5fdd: $00
	nop                                              ; $5fde: $00
	nop                                              ; $5fdf: $00
	jr   nc, jr_026_5fc2                             ; $5fe0: $30 $e0

	jr   nc, jr_026_5fc4                             ; $5fe2: $30 $e0

	ldh  [$c0], a                                    ; $5fe4: $e0 $c0
	ret  nz                                          ; $5fe6: $c0

	nop                                              ; $5fe7: $00
	nop                                              ; $5fe8: $00
	nop                                              ; $5fe9: $00
	nop                                              ; $5fea: $00
	nop                                              ; $5feb: $00
	nop                                              ; $5fec: $00
	nop                                              ; $5fed: $00
	nop                                              ; $5fee: $00
	nop                                              ; $5fef: $00
	call nz, $c47f                                   ; $5ff0: $c4 $7f $c4
	ld   a, a                                        ; $5ff3: $7f
	ld   a, a                                        ; $5ff4: $7f
	dec  sp                                          ; $5ff5: $3b
	dec  sp                                          ; $5ff6: $3b
	nop                                              ; $5ff7: $00
	nop                                              ; $5ff8: $00
	nop                                              ; $5ff9: $00
	nop                                              ; $5ffa: $00
	nop                                              ; $5ffb: $00
	nop                                              ; $5ffc: $00
	nop                                              ; $5ffd: $00
	nop                                              ; $5ffe: $00
	nop                                              ; $5fff: $00
	inc  bc                                          ; $6000: $03
	nop                                              ; $6001: $00
	rrca                                             ; $6002: $0f
	ld   [bc], a                                     ; $6003: $02
	add  hl, de                                      ; $6004: $19
	rrca                                             ; $6005: $0f
	ld   sp, $630f                                   ; $6006: $31 $0f $63
	ccf                                              ; $6009: $3f
	ld   b, l                                        ; $600a: $45
	ld   a, $ca                                      ; $600b: $3e $ca
	ld   a, h                                        ; $600d: $7c
	call z, $c038                                    ; $600e: $cc $38 $c0
	nop                                              ; $6011: $00
	ldh  a, [rLCDC]                                  ; $6012: $f0 $40
	sbc  b                                           ; $6014: $98
	ldh  a, [$8c]                                    ; $6015: $f0 $8c
	ldh  a, [$c6]                                    ; $6017: $f0 $c6
	db   $fc                                         ; $6019: $fc
	and  d                                           ; $601a: $a2
	ld   a, h                                        ; $601b: $7c
	ld   d, e                                        ; $601c: $53
	ld   a, $33                                      ; $601d: $3e $33
	inc  e                                           ; $601f: $1c
	add  c                                           ; $6020: $81
	nop                                              ; $6021: $00
	ld   b, d                                        ; $6022: $42
	nop                                              ; $6023: $00
	inc  h                                           ; $6024: $24
	nop                                              ; $6025: $00
	jr   jr_026_6028                                 ; $6026: $18 $00

jr_026_6028:
	jr   jr_026_602a                                 ; $6028: $18 $00

jr_026_602a:
	inc  h                                           ; $602a: $24
	nop                                              ; $602b: $00
	ld   b, d                                        ; $602c: $42
	nop                                              ; $602d: $00
	add  c                                           ; $602e: $81
	nop                                              ; $602f: $00
	nop                                              ; $6030: $00
	nop                                              ; $6031: $00
	nop                                              ; $6032: $00
	nop                                              ; $6033: $00
	nop                                              ; $6034: $00
	nop                                              ; $6035: $00
	nop                                              ; $6036: $00
	nop                                              ; $6037: $00
	nop                                              ; $6038: $00
	nop                                              ; $6039: $00
	rlca                                             ; $603a: $07
	nop                                              ; $603b: $00
	add  hl, de                                      ; $603c: $19
	ld   b, $7a                                      ; $603d: $06 $7a
	rlca                                             ; $603f: $07
	nop                                              ; $6040: $00
	nop                                              ; $6041: $00
	nop                                              ; $6042: $00
	nop                                              ; $6043: $00
	nop                                              ; $6044: $00
	nop                                              ; $6045: $00
	nop                                              ; $6046: $00
	nop                                              ; $6047: $00
	nop                                              ; $6048: $00
	nop                                              ; $6049: $00
	ldh  [rP1], a                                    ; $604a: $e0 $00
	sbc  b                                           ; $604c: $98
	ld   h, b                                        ; $604d: $60
	ld   e, [hl]                                     ; $604e: $5e
	ldh  [$81], a                                    ; $604f: $e0 $81
	nop                                              ; $6051: $00
	ld   b, d                                        ; $6052: $42
	nop                                              ; $6053: $00
	inc  h                                           ; $6054: $24
	nop                                              ; $6055: $00
	jr   jr_026_6058                                 ; $6056: $18 $00

jr_026_6058:
	jr   jr_026_605a                                 ; $6058: $18 $00

jr_026_605a:
	inc  h                                           ; $605a: $24
	nop                                              ; $605b: $00
	ld   b, d                                        ; $605c: $42
	nop                                              ; $605d: $00
	add  c                                           ; $605e: $81
	nop                                              ; $605f: $00
	nop                                              ; $6060: $00
	nop                                              ; $6061: $00
	nop                                              ; $6062: $00
	nop                                              ; $6063: $00
	nop                                              ; $6064: $00
	nop                                              ; $6065: $00
	nop                                              ; $6066: $00
	nop                                              ; $6067: $00
	nop                                              ; $6068: $00
	nop                                              ; $6069: $00
	ld   bc, $0300                                   ; $606a: $01 $00 $03
	nop                                              ; $606d: $00
	rlca                                             ; $606e: $07
	nop                                              ; $606f: $00
	nop                                              ; $6070: $00
	nop                                              ; $6071: $00
	nop                                              ; $6072: $00
	nop                                              ; $6073: $00
	rrca                                             ; $6074: $0f
	nop                                              ; $6075: $00
	inc  sp                                          ; $6076: $33
	ld   c, $f2                                      ; $6077: $0e $f2
	rrca                                             ; $6079: $0f
	ld   b, b                                        ; $607a: $40
	rst  $38                                         ; $607b: $ff
	rlca                                             ; $607c: $07
	ld   hl, sp+$19                                  ; $607d: $f8 $19
	rst  $20                                         ; $607f: $e7
	nop                                              ; $6080: $00
	nop                                              ; $6081: $00
	nop                                              ; $6082: $00

jr_026_6083:
	nop                                              ; $6083: $00
	ldh  a, [rP1]                                    ; $6084: $f0 $00
	sbc  h                                           ; $6086: $9c
	ld   [hl], b                                     ; $6087: $70
	rra                                              ; $6088: $1f
	ldh  a, [rSB]                                    ; $6089: $f0 $01
	rst  $38                                         ; $608b: $ff
	pop  hl                                          ; $608c: $e1
	rra                                              ; $608d: $1f
	sbc  b                                           ; $608e: $98
	rst  $20                                         ; $608f: $e7
	nop                                              ; $6090: $00
	nop                                              ; $6091: $00
	nop                                              ; $6092: $00
	nop                                              ; $6093: $00
	nop                                              ; $6094: $00

jr_026_6095:
	nop                                              ; $6095: $00
	nop                                              ; $6096: $00
	nop                                              ; $6097: $00
	nop                                              ; $6098: $00
	nop                                              ; $6099: $00
	add  b                                           ; $609a: $80
	nop                                              ; $609b: $00
	ret  nz                                          ; $609c: $c0

	nop                                              ; $609d: $00
	ldh  [rP1], a                                    ; $609e: $e0 $00
	add  c                                           ; $60a0: $81
	nop                                              ; $60a1: $00
	ld   b, d                                        ; $60a2: $42
	nop                                              ; $60a3: $00
	inc  h                                           ; $60a4: $24
	nop                                              ; $60a5: $00
	jr   jr_026_60a8                                 ; $60a6: $18 $00

jr_026_60a8:
	jr   jr_026_60aa                                 ; $60a8: $18 $00

jr_026_60aa:
	inc  h                                           ; $60aa: $24
	nop                                              ; $60ab: $00
	ld   b, d                                        ; $60ac: $42
	nop                                              ; $60ad: $00
	add  c                                           ; $60ae: $81
	nop                                              ; $60af: $00
	ld   a, b                                        ; $60b0: $78
	or   a                                           ; $60b1: $b7
	jr   nc, jr_026_6083                             ; $60b2: $30 $cf

	jr   nz, jr_026_6095                             ; $60b4: $20 $df

	ld   b, b                                        ; $60b6: $40
	cp   a                                           ; $60b7: $bf
	add  b                                           ; $60b8: $80
	ld   a, a                                        ; $60b9: $7f
	nop                                              ; $60ba: $00
	cp   $00                                         ; $60bb: $fe $00
	rst  $38                                         ; $60bd: $ff
	ld   [bc], a                                     ; $60be: $02
	ld   sp, hl                                      ; $60bf: $f9
	rlca                                             ; $60c0: $07
	ei                                               ; $60c1: $fb
	rra                                              ; $60c2: $1f
	jp   $e70f                                       ; $60c3: $c3 $0f $e7


	cpl                                              ; $60c6: $2f
	sub  [hl]                                        ; $60c7: $96
	rra                                              ; $60c8: $1f
	ret  z                                           ; $60c9: $c8

	cp   d                                           ; $60ca: $ba
	ld   b, a                                        ; $60cb: $47
	ld   a, b                                        ; $60cc: $78
	rlca                                             ; $60cd: $07
	ld   a, b                                        ; $60ce: $78
	add  a                                           ; $60cf: $87
	rst  $38                                         ; $60d0: $ff
	rst  $38                                         ; $60d1: $ff
	rst  $38                                         ; $60d2: $ff
	rst  $38                                         ; $60d3: $ff
	rst  $38                                         ; $60d4: $ff
	add  b                                           ; $60d5: $80
	sbc  h                                           ; $60d6: $9c
	ld   [hl], e                                     ; $60d7: $73
	sub  b                                           ; $60d8: $90
	ld   a, a                                        ; $60d9: $7f
	nop                                              ; $60da: $00
	rst  $38                                         ; $60db: $ff
	ccf                                              ; $60dc: $3f
	ret  nz                                          ; $60dd: $c0

	call z, $ff3f                                    ; $60de: $cc $3f $ff
	rst  $38                                         ; $60e1: $ff
	rst  $38                                         ; $60e2: $ff
	rst  $38                                         ; $60e3: $ff
	rst  $38                                         ; $60e4: $ff
	ld   a, a                                        ; $60e5: $7f
	rst  $38                                         ; $60e6: $ff
	sbc  a                                           ; $60e7: $9f
	rst  $38                                         ; $60e8: $ff
	add  a                                           ; $60e9: $87
	rrca                                             ; $60ea: $0f
	ei                                               ; $60eb: $fb
	rrca                                             ; $60ec: $0f
	ld   sp, hl                                      ; $60ed: $f9
	rst  ToBoot                                         ; $60ee: $c7
	jr   c, @+$01                                    ; $60ef: $38 $ff

	rst  $38                                         ; $60f1: $ff
	rst  $38                                         ; $60f2: $ff
	rst  $38                                         ; $60f3: $ff
	rst  $38                                         ; $60f4: $ff
	rst  $38                                         ; $60f5: $ff
	rst  $38                                         ; $60f6: $ff
	rst  $38                                         ; $60f7: $ff
	rst  $38                                         ; $60f8: $ff
	rst  $38                                         ; $60f9: $ff
	rst  $38                                         ; $60fa: $ff
	rst  $38                                         ; $60fb: $ff
	rst  $38                                         ; $60fc: $ff
	rst  $38                                         ; $60fd: $ff
	rst  $38                                         ; $60fe: $ff
	rst  $38                                         ; $60ff: $ff
	call z, $ca38                                    ; $6100: $cc $38 $ca
	ld   a, h                                        ; $6103: $7c
	ld   b, l                                        ; $6104: $45
	ld   a, $63                                      ; $6105: $3e $63
	ccf                                              ; $6107: $3f
	ld   sp, $190f                                   ; $6108: $31 $0f $19
	rrca                                             ; $610b: $0f
	rrca                                             ; $610c: $0f
	ld   [bc], a                                     ; $610d: $02
	inc  bc                                          ; $610e: $03
	nop                                              ; $610f: $00
	inc  sp                                          ; $6110: $33
	inc  e                                           ; $6111: $1c
	ld   d, e                                        ; $6112: $53
	ld   a, $a2                                      ; $6113: $3e $a2
	ld   a, h                                        ; $6115: $7c
	add  $fc                                         ; $6116: $c6 $fc
	adc  h                                           ; $6118: $8c
	ldh  a, [$98]                                    ; $6119: $f0 $98
	ldh  a, [$f0]                                    ; $611b: $f0 $f0
	ld   b, b                                        ; $611d: $40

jr_026_611e:
	ret  nz                                          ; $611e: $c0

	nop                                              ; $611f: $00
	nop                                              ; $6120: $00
	nop                                              ; $6121: $00
	ld   bc, $0100                                   ; $6122: $01 $00 $01
	nop                                              ; $6125: $00
	inc  bc                                          ; $6126: $03
	nop                                              ; $6127: $00
	inc  bc                                          ; $6128: $03
	nop                                              ; $6129: $00
	inc  b                                           ; $612a: $04
	inc  bc                                          ; $612b: $03
	rlca                                             ; $612c: $07
	inc  bc                                          ; $612d: $03
	ld   b, $01                                      ; $612e: $06 $01
	rst  $20                                         ; $6130: $e7
	ccf                                              ; $6131: $3f
	db   $e3                                         ; $6132: $e3
	ccf                                              ; $6133: $3f
	ld   bc, $83ff                                   ; $6134: $01 $ff $83
	db   $fc                                         ; $6137: $fc
	rlca                                             ; $6138: $07
	ei                                               ; $6139: $fb
	dec  c                                           ; $613a: $0d
	or   $1a                                         ; $613b: $f6 $1a
	db   $ec                                         ; $613d: $ec
	inc  e                                           ; $613e: $1c
	add  sp, -$15                                    ; $613f: $e8 $eb
	db   $fc                                         ; $6141: $fc
	jp   $83fc                                       ; $6142: $c3 $fc $83


	rst  $38                                         ; $6145: $ff
	ret  nz                                          ; $6146: $c0

	ccf                                              ; $6147: $3f
	ldh  [$df], a                                    ; $6148: $e0 $df
	or   b                                           ; $614a: $b0
	ld   l, a                                        ; $614b: $6f
	ld   e, b                                        ; $614c: $58
	scf                                              ; $614d: $37
	jr   c, jr_026_6167                              ; $614e: $38 $17

	nop                                              ; $6150: $00
	nop                                              ; $6151: $00
	add  b                                           ; $6152: $80
	nop                                              ; $6153: $00
	add  b                                           ; $6154: $80
	nop                                              ; $6155: $00
	ret  nz                                          ; $6156: $c0

	nop                                              ; $6157: $00
	ret  nz                                          ; $6158: $c0

	nop                                              ; $6159: $00
	ldh  [$c0], a                                    ; $615a: $e0 $c0
	jr   nz, jr_026_611e                             ; $615c: $20 $c0

	ld   h, b                                        ; $615e: $60
	add  b                                           ; $615f: $80
	dec  bc                                          ; $6160: $0b
	rlca                                             ; $6161: $07
	ld   [$1807], sp                                 ; $6162: $08 $07 $18
	rlca                                             ; $6165: $07
	add  hl, de                                      ; $6166: $19

jr_026_6167:
	ld   b, $39                                      ; $6167: $06 $39
	ld   e, $22                                      ; $6169: $1e $22
	dec  e                                           ; $616b: $1d
	ld   [hl+], a                                    ; $616c: $22
	dec  e                                           ; $616d: $1d
	ld   [hl-], a                                    ; $616e: $32
	dec  c                                           ; $616f: $0d
	daa                                              ; $6170: $27
	sbc  $43                                         ; $6171: $de $43
	cp   [hl]                                        ; $6173: $be
	add  c                                           ; $6174: $81
	ld   a, a                                        ; $6175: $7f
	ld   bc, $03ff                                   ; $6176: $01 $ff $03
	rst  $38                                         ; $6179: $ff
	dec  b                                           ; $617a: $05
	cp   $ca                                         ; $617b: $fe $ca
	db   $fc                                         ; $617d: $fc
	call z, $e438                                    ; $617e: $cc $38 $e4
	ld   a, e                                        ; $6181: $7b
	jp   nz, $817d                                   ; $6182: $c2 $7d $81

	cp   $80                                         ; $6185: $fe $80
	rst  $38                                         ; $6187: $ff
	ret  nz                                          ; $6188: $c0

	rst  $38                                         ; $6189: $ff
	and  b                                           ; $618a: $a0
	ld   a, a                                        ; $618b: $7f
	ld   d, e                                        ; $618c: $53
	ccf                                              ; $618d: $3f
	inc  sp                                          ; $618e: $33
	inc  e                                           ; $618f: $1c
	db   $10                                         ; $6190: $10
	ldh  [$30], a                                    ; $6191: $e0 $30
	ldh  [rAUD2LOW], a                               ; $6193: $e0 $18
	ldh  [$98], a                                    ; $6195: $e0 $98
	ld   h, b                                        ; $6197: $60
	add  h                                           ; $6198: $84
	ld   a, b                                        ; $6199: $78
	ld   b, h                                        ; $619a: $44
	cp   b                                           ; $619b: $b8
	ld   e, h                                        ; $619c: $5c
	cp   b                                           ; $619d: $b8
	ld   c, h                                        ; $619e: $4c
	or   b                                           ; $619f: $b0
	add  c                                           ; $61a0: $81
	nop                                              ; $61a1: $00
	ld   b, d                                        ; $61a2: $42
	nop                                              ; $61a3: $00
	inc  h                                           ; $61a4: $24
	nop                                              ; $61a5: $00
	jr   jr_026_61a8                                 ; $61a6: $18 $00

jr_026_61a8:
	jr   jr_026_61aa                                 ; $61a8: $18 $00

jr_026_61aa:
	inc  h                                           ; $61aa: $24
	nop                                              ; $61ab: $00
	ld   b, d                                        ; $61ac: $42
	nop                                              ; $61ad: $00
	add  c                                           ; $61ae: $81
	nop                                              ; $61af: $00
	ld   bc, $09fc                                   ; $61b0: $01 $fc $09
	and  $07                                         ; $61b3: $e6 $07
	pop  af                                          ; $61b5: $f1
	ccf                                              ; $61b6: $3f
	add  e                                           ; $61b7: $83
	cp   a                                           ; $61b8: $bf
	ld   c, [hl]                                     ; $61b9: $4e
	rst  $38                                         ; $61ba: $ff
	ld   a, $ff                                      ; $61bb: $3e $ff
	cp   $ff                                         ; $61bd: $fe $ff
	cp   $d9                                         ; $61bf: $fe $d9
	ld   a, $c2                                      ; $61c1: $3e $c2
	cp   l                                           ; $61c3: $bd
	call nz, $c83b                                   ; $61c4: $c4 $3b $c8
	scf                                              ; $61c7: $37
	ret  z                                           ; $61c8: $c8

	rst  $30                                         ; $61c9: $f7
	db   $10                                         ; $61ca: $10
	rst  $28                                         ; $61cb: $ef
	ld   d, $ef                                      ; $61cc: $16 $ef
	sub  [hl]                                        ; $61ce: $96
	ld   l, c                                        ; $61cf: $69
	ccf                                              ; $61d0: $3f
	di                                               ; $61d1: $f3
	ld   e, $f3                                      ; $61d2: $1e $f3
	inc  c                                           ; $61d4: $0c
	rst  $38                                         ; $61d5: $ff
	inc  c                                           ; $61d6: $0c
	rst  $38                                         ; $61d7: $ff
	ld   e, $ff                                      ; $61d8: $1e $ff
	dec  l                                           ; $61da: $2d
	di                                               ; $61db: $f3
	ld   e, [hl]                                     ; $61dc: $5e
	db   $ed                                         ; $61dd: $ed
	ld   a, a                                        ; $61de: $7f
	sbc  $20                                         ; $61df: $de $20
	rst  JumpTable                                         ; $61e1: $df
	ld   de, $08ef                                   ; $61e2: $11 $ef $08
	rst  $30                                         ; $61e5: $f7
	inc  b                                           ; $61e6: $04
	ei                                               ; $61e7: $fb
	inc  b                                           ; $61e8: $04
	ei                                               ; $61e9: $fb
	ld   [bc], a                                     ; $61ea: $02
	db   $fd                                         ; $61eb: $fd
	sbc  d                                           ; $61ec: $9a
	db   $fd                                         ; $61ed: $fd
	sbc  d                                           ; $61ee: $9a
	push hl                                          ; $61ef: $e5
	rst  $38                                         ; $61f0: $ff
	ld   a, a                                        ; $61f1: $7f
	rst  $38                                         ; $61f2: $ff
	ld   a, a                                        ; $61f3: $7f
	rst  $38                                         ; $61f4: $ff
	ccf                                              ; $61f5: $3f
	rst  $38                                         ; $61f6: $ff
	ccf                                              ; $61f7: $3f
	ccf                                              ; $61f8: $3f
	rst  JumpTable                                         ; $61f9: $df
	ccf                                              ; $61fa: $3f
	rst  JumpTable                                         ; $61fb: $df
	rst  $38                                         ; $61fc: $ff
	rst  JumpTable                                         ; $61fd: $df
	ld   a, a                                        ; $61fe: $7f
	sbc  a                                           ; $61ff: $9f
	nop                                              ; $6200: $00
	nop                                              ; $6201: $00
	nop                                              ; $6202: $00
	nop                                              ; $6203: $00
	nop                                              ; $6204: $00
	nop                                              ; $6205: $00
	nop                                              ; $6206: $00
	nop                                              ; $6207: $00
	nop                                              ; $6208: $00
	nop                                              ; $6209: $00
	nop                                              ; $620a: $00
	nop                                              ; $620b: $00
	nop                                              ; $620c: $00
	nop                                              ; $620d: $00
	nop                                              ; $620e: $00
	nop                                              ; $620f: $00
	add  c                                           ; $6210: $81
	nop                                              ; $6211: $00
	ld   b, d                                        ; $6212: $42
	nop                                              ; $6213: $00
	inc  h                                           ; $6214: $24
	nop                                              ; $6215: $00

jr_026_6216:
	jr   jr_026_6218                                 ; $6216: $18 $00

jr_026_6218:
	jr   jr_026_621a                                 ; $6218: $18 $00

jr_026_621a:
	inc  h                                           ; $621a: $24
	nop                                              ; $621b: $00
	ld   b, d                                        ; $621c: $42
	nop                                              ; $621d: $00
	add  c                                           ; $621e: $81
	nop                                              ; $621f: $00
	ld   b, $01                                      ; $6220: $06 $01
	inc  b                                           ; $6222: $04
	inc  bc                                          ; $6223: $03
	rlca                                             ; $6224: $07
	inc  bc                                          ; $6225: $03
	inc  bc                                          ; $6226: $03
	nop                                              ; $6227: $00
	inc  bc                                          ; $6228: $03
	nop                                              ; $6229: $00
	ld   bc, $0100                                   ; $622a: $01 $00 $01
	nop                                              ; $622d: $00
	nop                                              ; $622e: $00
	nop                                              ; $622f: $00
	inc  e                                           ; $6230: $1c
	add  sp, $1a                                     ; $6231: $e8 $1a
	db   $ec                                         ; $6233: $ec
	dec  c                                           ; $6234: $0d
	or   $07                                         ; $6235: $f6 $07
	ei                                               ; $6237: $fb
	inc  bc                                          ; $6238: $03
	db   $fc                                         ; $6239: $fc
	pop  bc                                          ; $623a: $c1
	rst  $38                                         ; $623b: $ff
	srl  a                                           ; $623c: $cb $3f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $623e: $cf
	ccf                                              ; $623f: $3f
	jr   c, jr_026_6259                              ; $6240: $38 $17

	ld   e, b                                        ; $6242: $58
	scf                                              ; $6243: $37
	or   b                                           ; $6244: $b0
	ld   l, a                                        ; $6245: $6f
	ldh  [$df], a                                    ; $6246: $e0 $df
	pop  bc                                          ; $6248: $c1
	ccf                                              ; $6249: $3f
	add  b                                           ; $624a: $80
	rst  $38                                         ; $624b: $ff
	rst  ToBoot                                         ; $624c: $c7
	db   $fc                                         ; $624d: $fc
	rst  $20                                         ; $624e: $e7
	db   $fc                                         ; $624f: $fc
	ld   h, b                                        ; $6250: $60
	add  b                                           ; $6251: $80
	ldh  [$c0], a                                    ; $6252: $e0 $c0
	jr   nz, jr_026_6216                             ; $6254: $20 $c0

	ret  nz                                          ; $6256: $c0

	nop                                              ; $6257: $00
	ret  nz                                          ; $6258: $c0

jr_026_6259:
	nop                                              ; $6259: $00
	add  b                                           ; $625a: $80
	nop                                              ; $625b: $00
	add  b                                           ; $625c: $80
	nop                                              ; $625d: $00
	nop                                              ; $625e: $00
	nop                                              ; $625f: $00
	ld   [hl-], a                                    ; $6260: $32
	dec  c                                           ; $6261: $0d
	ld   a, [hl-]                                    ; $6262: $3a
	dec  e                                           ; $6263: $1d
	ld   [hl+], a                                    ; $6264: $22
	dec  e                                           ; $6265: $1d
	ld   hl, $191e                                   ; $6266: $21 $1e $19
	ld   b, $18                                      ; $6269: $06 $18
	rlca                                             ; $626b: $07
	inc  c                                           ; $626c: $0c
	rlca                                             ; $626d: $07
	ld   [$cc07], sp                                 ; $626e: $08 $07 $cc
	jr   c, jr_026_627d                              ; $6271: $38 $0a

	db   $fc                                         ; $6273: $fc
	dec  b                                           ; $6274: $05
	cp   $03                                         ; $6275: $fe $03
	rst  $38                                         ; $6277: $ff
	ld   bc, $81ff                                   ; $6278: $01 $ff $81
	ld   a, a                                        ; $627b: $7f

jr_026_627c:
	ld   b, e                                        ; $627c: $43

jr_026_627d:
	cp   [hl]                                        ; $627d: $be
	daa                                              ; $627e: $27
	sbc  $33                                         ; $627f: $de $33
	inc  e                                           ; $6281: $1c
	ld   d, b                                        ; $6282: $50
	ccf                                              ; $6283: $3f
	and  b                                           ; $6284: $a0
	ld   a, a                                        ; $6285: $7f
	ret  nz                                          ; $6286: $c0

	rst  $38                                         ; $6287: $ff
	add  b                                           ; $6288: $80
	rst  $38                                         ; $6289: $ff
	add  c                                           ; $628a: $81
	cp   $c2                                         ; $628b: $fe $c2
	ld   a, l                                        ; $628d: $7d
	db   $e4                                         ; $628e: $e4
	ld   a, e                                        ; $628f: $7b
	ld   c, h                                        ; $6290: $4c
	or   b                                           ; $6291: $b0
	ld   b, h                                        ; $6292: $44
	cp   b                                           ; $6293: $b8
	ld   b, h                                        ; $6294: $44
	cp   b                                           ; $6295: $b8
	sbc  h                                           ; $6296: $9c
	ld   a, b                                        ; $6297: $78
	sbc  b                                           ; $6298: $98
	ld   h, b                                        ; $6299: $60
	jr   jr_026_627c                                 ; $629a: $18 $e0

	db   $10                                         ; $629c: $10
	ldh  [rSVBK], a                                  ; $629d: $e0 $70
	ldh  [$81], a                                    ; $629f: $e0 $81
	nop                                              ; $62a1: $00
	ld   b, d                                        ; $62a2: $42
	nop                                              ; $62a3: $00
	inc  h                                           ; $62a4: $24
	nop                                              ; $62a5: $00
	jr   jr_026_62a8                                 ; $62a6: $18 $00

jr_026_62a8:
	jr   jr_026_62aa                                 ; $62a8: $18 $00

jr_026_62aa:
	inc  h                                           ; $62aa: $24
	nop                                              ; $62ab: $00
	ld   b, d                                        ; $62ac: $42
	nop                                              ; $62ad: $00
	add  c                                           ; $62ae: $81
	nop                                              ; $62af: $00
	rst  $38                                         ; $62b0: $ff
	cp   $ff                                         ; $62b1: $fe $ff
	cp   $ff                                         ; $62b3: $fe $ff
	ld   a, $bf                                      ; $62b5: $3e $bf
	ld   c, [hl]                                     ; $62b7: $4e
	ccf                                              ; $62b8: $3f
	add  e                                           ; $62b9: $83
	rlca                                             ; $62ba: $07
	pop  af                                          ; $62bb: $f1
	add  hl, bc                                      ; $62bc: $09
	and  $01                                         ; $62bd: $e6 $01
	db   $fc                                         ; $62bf: $fc
	sub  [hl]                                        ; $62c0: $96
	ld   l, c                                        ; $62c1: $69
	ret  nc                                          ; $62c2: $d0

	rst  $28                                         ; $62c3: $ef
	db   $10                                         ; $62c4: $10
	rst  $28                                         ; $62c5: $ef
	ld   [$c8f7], sp                                 ; $62c6: $08 $f7 $c8
	scf                                              ; $62c9: $37
	call nz, $e23b                                   ; $62ca: $c4 $3b $e2
	cp   l                                           ; $62cd: $bd
	pop  bc                                          ; $62ce: $c1
	ld   a, $7f                                      ; $62cf: $3e $7f
	sbc  $5e                                         ; $62d1: $de $5e
	db   $ed                                         ; $62d3: $ed
	dec  l                                           ; $62d4: $2d
	di                                               ; $62d5: $f3
	ld   e, $ff                                      ; $62d6: $1e $ff
	inc  c                                           ; $62d8: $0c
	rst  $38                                         ; $62d9: $ff
	inc  c                                           ; $62da: $0c
	rst  $38                                         ; $62db: $ff
	ld   e, $f3                                      ; $62dc: $1e $f3
	ccf                                              ; $62de: $3f
	di                                               ; $62df: $f3
	sbc  d                                           ; $62e0: $9a
	push hl                                          ; $62e1: $e5
	add  d                                           ; $62e2: $82
	db   $fd                                         ; $62e3: $fd
	ld   [bc], a                                     ; $62e4: $02
	db   $fd                                         ; $62e5: $fd
	inc  b                                           ; $62e6: $04
	ei                                               ; $62e7: $fb
	inc  b                                           ; $62e8: $04
	ei                                               ; $62e9: $fb
	ld   [$10f7], sp                                 ; $62ea: $08 $f7 $10
	rst  $28                                         ; $62ed: $ef
	inc  hl                                          ; $62ee: $23
	rst  JumpTable                                         ; $62ef: $df
	ld   a, a                                        ; $62f0: $7f
	sbc  a                                           ; $62f1: $9f
	ccf                                              ; $62f2: $3f
	rst  JumpTable                                         ; $62f3: $df
	ccf                                              ; $62f4: $3f
	rst  JumpTable                                         ; $62f5: $df
	rst  $38                                         ; $62f6: $ff
	rst  JumpTable                                         ; $62f7: $df
	rst  $38                                         ; $62f8: $ff
	ccf                                              ; $62f9: $3f
	rst  $38                                         ; $62fa: $ff
	ccf                                              ; $62fb: $3f
	rst  $38                                         ; $62fc: $ff
	ld   a, a                                        ; $62fd: $7f
	rst  $38                                         ; $62fe: $ff
	ld   a, a                                        ; $62ff: $7f
	add  c                                           ; $6300: $81
	nop                                              ; $6301: $00
	ld   b, d                                        ; $6302: $42
	nop                                              ; $6303: $00
	inc  h                                           ; $6304: $24
	nop                                              ; $6305: $00
	jr   jr_026_6308                                 ; $6306: $18 $00

jr_026_6308:
	jr   jr_026_630a                                 ; $6308: $18 $00

jr_026_630a:
	inc  h                                           ; $630a: $24
	nop                                              ; $630b: $00
	ld   b, d                                        ; $630c: $42
	nop                                              ; $630d: $00
	add  c                                           ; $630e: $81
	nop                                              ; $630f: $00
	add  c                                           ; $6310: $81
	nop                                              ; $6311: $00
	ld   b, d                                        ; $6312: $42
	nop                                              ; $6313: $00
	inc  h                                           ; $6314: $24
	nop                                              ; $6315: $00
	jr   jr_026_6318                                 ; $6316: $18 $00

jr_026_6318:
	jr   jr_026_631a                                 ; $6318: $18 $00

jr_026_631a:
	inc  h                                           ; $631a: $24
	nop                                              ; $631b: $00
	ld   b, d                                        ; $631c: $42
	nop                                              ; $631d: $00
	add  c                                           ; $631e: $81
	nop                                              ; $631f: $00
	add  c                                           ; $6320: $81
	nop                                              ; $6321: $00
	ld   b, d                                        ; $6322: $42
	nop                                              ; $6323: $00
	inc  h                                           ; $6324: $24
	nop                                              ; $6325: $00
	jr   jr_026_6328                                 ; $6326: $18 $00

jr_026_6328:
	jr   jr_026_632a                                 ; $6328: $18 $00

jr_026_632a:
	inc  h                                           ; $632a: $24
	nop                                              ; $632b: $00
	ld   b, d                                        ; $632c: $42
	nop                                              ; $632d: $00
	add  c                                           ; $632e: $81
	nop                                              ; $632f: $00
	ld   a, d                                        ; $6330: $7a
	rlca                                             ; $6331: $07
	add  hl, de                                      ; $6332: $19
	ld   b, $07                                      ; $6333: $06 $07
	nop                                              ; $6335: $00
	nop                                              ; $6336: $00
	nop                                              ; $6337: $00
	nop                                              ; $6338: $00
	nop                                              ; $6339: $00
	nop                                              ; $633a: $00
	nop                                              ; $633b: $00
	nop                                              ; $633c: $00
	nop                                              ; $633d: $00
	nop                                              ; $633e: $00
	nop                                              ; $633f: $00
	ld   e, [hl]                                     ; $6340: $5e
	ldh  [$98], a                                    ; $6341: $e0 $98
	ld   h, b                                        ; $6343: $60
	ldh  [rP1], a                                    ; $6344: $e0 $00
	nop                                              ; $6346: $00
	nop                                              ; $6347: $00
	nop                                              ; $6348: $00
	nop                                              ; $6349: $00
	nop                                              ; $634a: $00
	nop                                              ; $634b: $00
	nop                                              ; $634c: $00
	nop                                              ; $634d: $00
	nop                                              ; $634e: $00
	nop                                              ; $634f: $00
	add  c                                           ; $6350: $81
	nop                                              ; $6351: $00
	ld   b, d                                        ; $6352: $42
	nop                                              ; $6353: $00
	inc  h                                           ; $6354: $24
	nop                                              ; $6355: $00
	jr   jr_026_6358                                 ; $6356: $18 $00

jr_026_6358:
	jr   jr_026_635a                                 ; $6358: $18 $00

jr_026_635a:
	inc  h                                           ; $635a: $24
	nop                                              ; $635b: $00
	ld   b, d                                        ; $635c: $42
	nop                                              ; $635d: $00
	add  c                                           ; $635e: $81
	nop                                              ; $635f: $00
	rlca                                             ; $6360: $07
	nop                                              ; $6361: $00
	inc  bc                                          ; $6362: $03
	nop                                              ; $6363: $00
	ld   bc, $0000                                   ; $6364: $01 $00 $00
	nop                                              ; $6367: $00
	nop                                              ; $6368: $00
	nop                                              ; $6369: $00
	nop                                              ; $636a: $00
	nop                                              ; $636b: $00
	nop                                              ; $636c: $00
	nop                                              ; $636d: $00
	nop                                              ; $636e: $00
	nop                                              ; $636f: $00
	sbc  c                                           ; $6370: $99
	rst  $20                                         ; $6371: $e7
	add  a                                           ; $6372: $87
	ld   hl, sp+$00                                  ; $6373: $f8 $00
	rst  $38                                         ; $6375: $ff
	ld   hl, sp+$0f                                  ; $6376: $f8 $0f
	add  hl, sp                                      ; $6378: $39
	ld   c, $0f                                      ; $6379: $0e $0f
	nop                                              ; $637b: $00
	nop                                              ; $637c: $00
	nop                                              ; $637d: $00
	nop                                              ; $637e: $00
	nop                                              ; $637f: $00
	sbc  b                                           ; $6380: $98

Jump_026_6381:
	rst  $20                                         ; $6381: $e7
	ldh  [$1f], a                                    ; $6382: $e0 $1f
	ld   [bc], a                                     ; $6384: $02
	rst  $38                                         ; $6385: $ff
	ld   c, a                                        ; $6386: $4f
	ldh  a, [$cc]                                    ; $6387: $f0 $cc
	ld   [hl], b                                     ; $6389: $70
	ldh  a, [rP1]                                    ; $638a: $f0 $00
	nop                                              ; $638c: $00

jr_026_638d:
	nop                                              ; $638d: $00
	nop                                              ; $638e: $00
	nop                                              ; $638f: $00
	ldh  [rP1], a                                    ; $6390: $e0 $00
	ret  nz                                          ; $6392: $c0

	nop                                              ; $6393: $00
	add  b                                           ; $6394: $80
	nop                                              ; $6395: $00
	nop                                              ; $6396: $00
	nop                                              ; $6397: $00
	nop                                              ; $6398: $00
	nop                                              ; $6399: $00
	nop                                              ; $639a: $00

jr_026_639b:
	nop                                              ; $639b: $00
	nop                                              ; $639c: $00
	nop                                              ; $639d: $00
	nop                                              ; $639e: $00
	nop                                              ; $639f: $00
	add  c                                           ; $63a0: $81
	nop                                              ; $63a1: $00
	ld   b, d                                        ; $63a2: $42
	nop                                              ; $63a3: $00
	inc  h                                           ; $63a4: $24
	nop                                              ; $63a5: $00
	jr   jr_026_63a8                                 ; $63a6: $18 $00

jr_026_63a8:
	jr   jr_026_63aa                                 ; $63a8: $18 $00

jr_026_63aa:
	inc  h                                           ; $63aa: $24
	nop                                              ; $63ab: $00
	ld   b, d                                        ; $63ac: $42
	nop                                              ; $63ad: $00
	add  c                                           ; $63ae: $81
	nop                                              ; $63af: $00
	ld   [bc], a                                     ; $63b0: $02
	ld   sp, hl                                      ; $63b1: $f9
	nop                                              ; $63b2: $00
	rst  $38                                         ; $63b3: $ff
	nop                                              ; $63b4: $00
	cp   $80                                         ; $63b5: $fe $80
	ld   a, a                                        ; $63b7: $7f
	ld   b, b                                        ; $63b8: $40
	cp   a                                           ; $63b9: $bf
	jr   nz, jr_026_639b                             ; $63ba: $20 $df

	jr   nc, jr_026_638d                             ; $63bc: $30 $cf

	ld   a, b                                        ; $63be: $78
	or   a                                           ; $63bf: $b7
	ld   a, h                                        ; $63c0: $7c
	add  a                                           ; $63c1: $87
	ld   a, h                                        ; $63c2: $7c
	rlca                                             ; $63c3: $07
	cp   b                                           ; $63c4: $b8
	ld   b, a                                        ; $63c5: $47
	rra                                              ; $63c6: $1f
	ret  z                                           ; $63c7: $c8

	cpl                                              ; $63c8: $2f
	sub  [hl]                                        ; $63c9: $96
	rrca                                             ; $63ca: $0f
	rst  $20                                         ; $63cb: $e7
	rra                                              ; $63cc: $1f
	jp   $fb07                                       ; $63cd: $c3 $07 $fb


	call z, $3f3f                                    ; $63d0: $cc $3f $3f
	ret  nz                                          ; $63d3: $c0

	nop                                              ; $63d4: $00
	rst  $38                                         ; $63d5: $ff
	jp   nz, $ce7f                                   ; $63d6: $c2 $7f $ce

	ld   [hl], e                                     ; $63d9: $73
	rst  $38                                         ; $63da: $ff
	add  b                                           ; $63db: $80
	rst  $38                                         ; $63dc: $ff
	rst  $38                                         ; $63dd: $ff
	rst  $38                                         ; $63de: $ff
	rst  $38                                         ; $63df: $ff
	rst  ToBoot                                         ; $63e0: $c7
	jr   c, jr_026_63ea                              ; $63e1: $38 $07

	ld   sp, hl                                      ; $63e3: $f9
	rla                                              ; $63e4: $17
	ei                                               ; $63e5: $fb
	ld   a, a                                        ; $63e6: $7f
	add  a                                           ; $63e7: $87
	ld   a, a                                        ; $63e8: $7f
	sbc  a                                           ; $63e9: $9f

jr_026_63ea:
	rst  $38                                         ; $63ea: $ff
	ld   a, a                                        ; $63eb: $7f
	rst  $38                                         ; $63ec: $ff
	rst  $38                                         ; $63ed: $ff
	rst  $38                                         ; $63ee: $ff
	rst  $38                                         ; $63ef: $ff
	rst  $38                                         ; $63f0: $ff
	rst  $38                                         ; $63f1: $ff
	rst  $38                                         ; $63f2: $ff
	rst  $38                                         ; $63f3: $ff
	rst  $38                                         ; $63f4: $ff
	rst  $38                                         ; $63f5: $ff
	rst  $38                                         ; $63f6: $ff
	rst  $38                                         ; $63f7: $ff
	rst  $38                                         ; $63f8: $ff
	rst  $38                                         ; $63f9: $ff
	rst  $38                                         ; $63fa: $ff
	rst  $38                                         ; $63fb: $ff
	rst  $38                                         ; $63fc: $ff
	rst  $38                                         ; $63fd: $ff
	rst  $38                                         ; $63fe: $ff
	rst  $38                                         ; $63ff: $ff
	rst  $38                                         ; $6400: $ff
	rst  $38                                         ; $6401: $ff
	rst  $38                                         ; $6402: $ff
	rst  $38                                         ; $6403: $ff
	rst  $38                                         ; $6404: $ff
	jp   $81ff                                       ; $6405: $c3 $ff $81


	rst  $38                                         ; $6408: $ff
	sbc  c                                           ; $6409: $99
	rst  $38                                         ; $640a: $ff
	sbc  c                                           ; $640b: $99
	rst  $38                                         ; $640c: $ff
	sbc  c                                           ; $640d: $99
	rst  $38                                         ; $640e: $ff
	sbc  c                                           ; $640f: $99
	rst  $38                                         ; $6410: $ff
	rst  $38                                         ; $6411: $ff
	rst  $38                                         ; $6412: $ff
	rst  $38                                         ; $6413: $ff
	rst  $38                                         ; $6414: $ff
	rst  $20                                         ; $6415: $e7
	rst  $38                                         ; $6416: $ff
	rst  ToBoot                                         ; $6417: $c7
	rst  $38                                         ; $6418: $ff
	rst  ToBoot                                         ; $6419: $c7
	rst  $38                                         ; $641a: $ff
	rst  $20                                         ; $641b: $e7
	rst  $38                                         ; $641c: $ff
	rst  $20                                         ; $641d: $e7
	rst  $38                                         ; $641e: $ff
	rst  $20                                         ; $641f: $e7
	rst  $38                                         ; $6420: $ff
	rst  $38                                         ; $6421: $ff
	rst  $38                                         ; $6422: $ff
	rst  $38                                         ; $6423: $ff
	rst  $38                                         ; $6424: $ff
	jp   $81ff                                       ; $6425: $c3 $ff $81


	rst  $38                                         ; $6428: $ff
	sbc  c                                           ; $6429: $99
	rst  $38                                         ; $642a: $ff
	sbc  c                                           ; $642b: $99
	rst  $38                                         ; $642c: $ff
	ld   sp, hl                                      ; $642d: $f9
	rst  $38                                         ; $642e: $ff
	ld   sp, hl                                      ; $642f: $f9
	rst  $38                                         ; $6430: $ff
	rst  $38                                         ; $6431: $ff
	rst  $38                                         ; $6432: $ff
	rst  $38                                         ; $6433: $ff
	rst  $38                                         ; $6434: $ff
	jp   $81ff                                       ; $6435: $c3 $ff $81


	rst  $38                                         ; $6438: $ff
	sbc  c                                           ; $6439: $99
	rst  $38                                         ; $643a: $ff
	ld   sp, hl                                      ; $643b: $f9
	rst  $38                                         ; $643c: $ff
	ld   sp, hl                                      ; $643d: $f9
	rst  $38                                         ; $643e: $ff
	db   $e3                                         ; $643f: $e3
	rst  $38                                         ; $6440: $ff
	rst  $38                                         ; $6441: $ff
	rst  $38                                         ; $6442: $ff
	rst  $38                                         ; $6443: $ff
	rst  $38                                         ; $6444: $ff
	ld   sp, hl                                      ; $6445: $f9
	rst  $38                                         ; $6446: $ff
	ld   sp, hl                                      ; $6447: $f9
	rst  $38                                         ; $6448: $ff
	pop  af                                          ; $6449: $f1
	rst  $38                                         ; $644a: $ff
	pop  af                                          ; $644b: $f1
	rst  $38                                         ; $644c: $ff
	pop  hl                                          ; $644d: $e1
	rst  $38                                         ; $644e: $ff
	jp   hl                                          ; $644f: $e9


	rst  $38                                         ; $6450: $ff
	rst  $38                                         ; $6451: $ff
	rst  $38                                         ; $6452: $ff
	rst  $38                                         ; $6453: $ff
	rst  $38                                         ; $6454: $ff
	add  c                                           ; $6455: $81
	rst  $38                                         ; $6456: $ff
	add  c                                           ; $6457: $81
	rst  $38                                         ; $6458: $ff
	sbc  a                                           ; $6459: $9f
	rst  $38                                         ; $645a: $ff
	sbc  a                                           ; $645b: $9f
	rst  $38                                         ; $645c: $ff
	add  e                                           ; $645d: $83
	rst  $38                                         ; $645e: $ff
	add  c                                           ; $645f: $81
	rst  $38                                         ; $6460: $ff
	rst  $38                                         ; $6461: $ff
	rst  $38                                         ; $6462: $ff
	rst  $38                                         ; $6463: $ff
	rst  $38                                         ; $6464: $ff
	jp   $81ff                                       ; $6465: $c3 $ff $81


	rst  $38                                         ; $6468: $ff
	sbc  c                                           ; $6469: $99
	rst  $38                                         ; $646a: $ff
	sbc  a                                           ; $646b: $9f
	rst  $38                                         ; $646c: $ff
	sbc  a                                           ; $646d: $9f
	rst  $38                                         ; $646e: $ff
	add  e                                           ; $646f: $83
	rst  $38                                         ; $6470: $ff
	rst  $38                                         ; $6471: $ff
	rst  $38                                         ; $6472: $ff
	rst  $38                                         ; $6473: $ff
	rst  $38                                         ; $6474: $ff
	add  c                                           ; $6475: $81
	rst  $38                                         ; $6476: $ff
	add  c                                           ; $6477: $81
	rst  $38                                         ; $6478: $ff
	ld   sp, hl                                      ; $6479: $f9
	rst  $38                                         ; $647a: $ff
	ld   sp, hl                                      ; $647b: $f9
	rst  $38                                         ; $647c: $ff
	ld   sp, hl                                      ; $647d: $f9
	rst  $38                                         ; $647e: $ff
	di                                               ; $647f: $f3
	rst  $38                                         ; $6480: $ff
	rst  $38                                         ; $6481: $ff
	rst  $38                                         ; $6482: $ff
	rst  $38                                         ; $6483: $ff
	rst  $38                                         ; $6484: $ff
	jp   $81ff                                       ; $6485: $c3 $ff $81


	rst  $38                                         ; $6488: $ff
	sbc  c                                           ; $6489: $99
	rst  $38                                         ; $648a: $ff
	sbc  c                                           ; $648b: $99
	rst  $38                                         ; $648c: $ff
	sbc  c                                           ; $648d: $99
	rst  $38                                         ; $648e: $ff
	jp   $ffff                                       ; $648f: $c3 $ff $ff


	rst  $38                                         ; $6492: $ff
	rst  $38                                         ; $6493: $ff
	rst  $38                                         ; $6494: $ff
	jp   $81ff                                       ; $6495: $c3 $ff $81


	rst  $38                                         ; $6498: $ff
	sbc  c                                           ; $6499: $99
	rst  $38                                         ; $649a: $ff
	sbc  c                                           ; $649b: $99
	rst  $38                                         ; $649c: $ff
	sbc  c                                           ; $649d: $99
	rst  $38                                         ; $649e: $ff
	add  c                                           ; $649f: $81
	rst  $38                                         ; $64a0: $ff
	rst  $38                                         ; $64a1: $ff
	rst  $38                                         ; $64a2: $ff
	rst  $38                                         ; $64a3: $ff
	rst  $38                                         ; $64a4: $ff
	rst  $38                                         ; $64a5: $ff
	rst  $38                                         ; $64a6: $ff
	rst  $38                                         ; $64a7: $ff
	rst  $38                                         ; $64a8: $ff
	rst  $38                                         ; $64a9: $ff
	rst  $38                                         ; $64aa: $ff
	rst  $38                                         ; $64ab: $ff
	rst  $38                                         ; $64ac: $ff
	rst  $38                                         ; $64ad: $ff
	rst  $38                                         ; $64ae: $ff
	rst  $38                                         ; $64af: $ff
	rst  $38                                         ; $64b0: $ff
	rst  $38                                         ; $64b1: $ff
	rst  $38                                         ; $64b2: $ff
	rst  $38                                         ; $64b3: $ff
	rst  $38                                         ; $64b4: $ff
	rst  $38                                         ; $64b5: $ff
	rst  $38                                         ; $64b6: $ff
	rst  $30                                         ; $64b7: $f7
	rst  $38                                         ; $64b8: $ff
	add  b                                           ; $64b9: $80
	rst  $38                                         ; $64ba: $ff
	or   [hl]                                        ; $64bb: $b6
	rst  $38                                         ; $64bc: $ff
	or   [hl]                                        ; $64bd: $b6
	rst  $38                                         ; $64be: $ff
	or   [hl]                                        ; $64bf: $b6
	ld   a, [hl]                                     ; $64c0: $7e
	rst  $38                                         ; $64c1: $ff

jr_026_64c2:
	ld   a, a                                        ; $64c2: $7f
	pop  bc                                          ; $64c3: $c1
	ld   h, c                                        ; $64c4: $61
	ret  nz                                          ; $64c5: $c0

	ld   h, c                                        ; $64c6: $61
	ret  nz                                          ; $64c7: $c0

	ld   h, c                                        ; $64c8: $61
	ret  nz                                          ; $64c9: $c0

	ld   h, c                                        ; $64ca: $61
	ret  nz                                          ; $64cb: $c0

	ld   h, c                                        ; $64cc: $61
	ret  nz                                          ; $64cd: $c0

	ld   h, c                                        ; $64ce: $61
	ret  nz                                          ; $64cf: $c0

	jr   jr_026_64c2                                 ; $64d0: $18 $f0

	inc  c                                           ; $64d2: $0c
	ld   hl, sp-$74                                  ; $64d3: $f8 $8c
	ld   hl, sp-$74                                  ; $64d5: $f8 $8c
	ld   hl, sp-$74                                  ; $64d7: $f8 $8c
	ld   hl, sp-$74                                  ; $64d9: $f8 $8c
	ld   hl, sp-$74                                  ; $64db: $f8 $8c
	ld   hl, sp-$74                                  ; $64dd: $f8 $8c
	ld   hl, sp-$7f                                  ; $64df: $f8 $81
	nop                                              ; $64e1: $00
	ld   b, d                                        ; $64e2: $42
	nop                                              ; $64e3: $00

Call_026_64e4:
	inc  h                                           ; $64e4: $24
	nop                                              ; $64e5: $00
	jr   jr_026_64e8                                 ; $64e6: $18 $00

jr_026_64e8:
	jr   jr_026_64ea                                 ; $64e8: $18 $00

jr_026_64ea:
	inc  h                                           ; $64ea: $24
	nop                                              ; $64eb: $00
	ld   b, d                                        ; $64ec: $42
	nop                                              ; $64ed: $00
	add  c                                           ; $64ee: $81
	nop                                              ; $64ef: $00
	add  c                                           ; $64f0: $81
	nop                                              ; $64f1: $00
	ld   b, d                                        ; $64f2: $42
	nop                                              ; $64f3: $00
	inc  h                                           ; $64f4: $24
	nop                                              ; $64f5: $00
	jr   jr_026_64f8                                 ; $64f6: $18 $00

jr_026_64f8:
	jr   jr_026_64fa                                 ; $64f8: $18 $00

jr_026_64fa:
	inc  h                                           ; $64fa: $24
	nop                                              ; $64fb: $00
	ld   b, d                                        ; $64fc: $42
	nop                                              ; $64fd: $00
	add  c                                           ; $64fe: $81
	nop                                              ; $64ff: $00
	rst  $38                                         ; $6500: $ff
	sbc  c                                           ; $6501: $99
	rst  $38                                         ; $6502: $ff
	sbc  c                                           ; $6503: $99
	rst  $38                                         ; $6504: $ff
	sbc  c                                           ; $6505: $99
	rst  $38                                         ; $6506: $ff
	sbc  c                                           ; $6507: $99
	rst  $38                                         ; $6508: $ff
	add  c                                           ; $6509: $81
	rst  $38                                         ; $650a: $ff
	jp   $ffff                                       ; $650b: $c3 $ff $ff


	rst  $38                                         ; $650e: $ff
	rst  $38                                         ; $650f: $ff
	rst  $38                                         ; $6510: $ff
	rst  $20                                         ; $6511: $e7
	rst  $38                                         ; $6512: $ff
	rst  $20                                         ; $6513: $e7
	rst  $38                                         ; $6514: $ff
	rst  $20                                         ; $6515: $e7
	rst  $38                                         ; $6516: $ff
	rst  $20                                         ; $6517: $e7
	rst  $38                                         ; $6518: $ff
	jp   $c3ff                                       ; $6519: $c3 $ff $c3


	rst  $38                                         ; $651c: $ff
	rst  $38                                         ; $651d: $ff
	rst  $38                                         ; $651e: $ff
	rst  $38                                         ; $651f: $ff
	rst  $38                                         ; $6520: $ff
	di                                               ; $6521: $f3
	rst  $38                                         ; $6522: $ff
	rst  $20                                         ; $6523: $e7
	rst  $38                                         ; $6524: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6525: $cf
	rst  $38                                         ; $6526: $ff
	sbc  a                                           ; $6527: $9f
	rst  $38                                         ; $6528: $ff
	add  c                                           ; $6529: $81
	rst  $38                                         ; $652a: $ff
	add  c                                           ; $652b: $81
	rst  $38                                         ; $652c: $ff
	rst  $38                                         ; $652d: $ff
	rst  $38                                         ; $652e: $ff
	rst  $38                                         ; $652f: $ff
	rst  $38                                         ; $6530: $ff
	pop  hl                                          ; $6531: $e1
	rst  $38                                         ; $6532: $ff
	ld   sp, hl                                      ; $6533: $f9
	rst  $38                                         ; $6534: $ff
	ld   sp, hl                                      ; $6535: $f9
	rst  $38                                         ; $6536: $ff
	sbc  c                                           ; $6537: $99
	rst  $38                                         ; $6538: $ff
	add  c                                           ; $6539: $81
	rst  $38                                         ; $653a: $ff
	jp   $ffff                                       ; $653b: $c3 $ff $ff


	rst  $38                                         ; $653e: $ff
	rst  $38                                         ; $653f: $ff
	rst  $38                                         ; $6540: $ff
	ret                                              ; $6541: $c9


	rst  $38                                         ; $6542: $ff
	reti                                             ; $6543: $d9


	rst  $38                                         ; $6544: $ff
	add  c                                           ; $6545: $81
	rst  $38                                         ; $6546: $ff
	add  c                                           ; $6547: $81
	rst  $38                                         ; $6548: $ff
	ld   sp, hl                                      ; $6549: $f9
	rst  $38                                         ; $654a: $ff
	ld   sp, hl                                      ; $654b: $f9
	rst  $38                                         ; $654c: $ff
	rst  $38                                         ; $654d: $ff
	rst  $38                                         ; $654e: $ff
	rst  $38                                         ; $654f: $ff
	rst  $38                                         ; $6550: $ff
	sbc  c                                           ; $6551: $99
	rst  $38                                         ; $6552: $ff
	ld   sp, hl                                      ; $6553: $f9
	rst  $38                                         ; $6554: $ff
	ld   sp, hl                                      ; $6555: $f9
	rst  $38                                         ; $6556: $ff
	sbc  c                                           ; $6557: $99
	rst  $38                                         ; $6558: $ff
	add  c                                           ; $6559: $81
	rst  $38                                         ; $655a: $ff
	jp   $ffff                                       ; $655b: $c3 $ff $ff


	rst  $38                                         ; $655e: $ff
	rst  $38                                         ; $655f: $ff
	rst  $38                                         ; $6560: $ff
	add  c                                           ; $6561: $81
	rst  $38                                         ; $6562: $ff
	sbc  c                                           ; $6563: $99
	rst  $38                                         ; $6564: $ff
	sbc  c                                           ; $6565: $99
	rst  $38                                         ; $6566: $ff
	sbc  c                                           ; $6567: $99
	rst  $38                                         ; $6568: $ff
	add  c                                           ; $6569: $81
	rst  $38                                         ; $656a: $ff
	jp   $ffff                                       ; $656b: $c3 $ff $ff


	rst  $38                                         ; $656e: $ff
	rst  $38                                         ; $656f: $ff
	rst  $38                                         ; $6570: $ff
	di                                               ; $6571: $f3
	rst  $38                                         ; $6572: $ff
	rst  $20                                         ; $6573: $e7
	rst  $38                                         ; $6574: $ff
	rst  $20                                         ; $6575: $e7
	rst  $38                                         ; $6576: $ff
	rst  $20                                         ; $6577: $e7
	rst  $38                                         ; $6578: $ff
	rst  $20                                         ; $6579: $e7
	rst  $38                                         ; $657a: $ff
	rst  $20                                         ; $657b: $e7
	rst  $38                                         ; $657c: $ff
	rst  $38                                         ; $657d: $ff
	rst  $38                                         ; $657e: $ff
	rst  $38                                         ; $657f: $ff
	rst  $38                                         ; $6580: $ff
	add  c                                           ; $6581: $81
	rst  $38                                         ; $6582: $ff
	sbc  c                                           ; $6583: $99
	rst  $38                                         ; $6584: $ff
	sbc  c                                           ; $6585: $99
	rst  $38                                         ; $6586: $ff
	sbc  c                                           ; $6587: $99
	rst  $38                                         ; $6588: $ff
	add  c                                           ; $6589: $81
	rst  $38                                         ; $658a: $ff
	jp   $ffff                                       ; $658b: $c3 $ff $ff


	rst  $38                                         ; $658e: $ff
	rst  $38                                         ; $658f: $ff
	rst  $38                                         ; $6590: $ff
	pop  bc                                          ; $6591: $c1
	rst  $38                                         ; $6592: $ff
	ld   sp, hl                                      ; $6593: $f9
	rst  $38                                         ; $6594: $ff
	ld   sp, hl                                      ; $6595: $f9
	rst  $38                                         ; $6596: $ff
	sbc  c                                           ; $6597: $99
	rst  $38                                         ; $6598: $ff
	add  c                                           ; $6599: $81
	rst  $38                                         ; $659a: $ff
	jp   $ffff                                       ; $659b: $c3 $ff $ff


	rst  $38                                         ; $659e: $ff
	rst  $38                                         ; $659f: $ff
	rst  $38                                         ; $65a0: $ff
	rst  $38                                         ; $65a1: $ff
	rst  $38                                         ; $65a2: $ff
	rst  $38                                         ; $65a3: $ff
	rst  $38                                         ; $65a4: $ff
	rst  $38                                         ; $65a5: $ff
	rst  $38                                         ; $65a6: $ff
	rst  $38                                         ; $65a7: $ff
	rst  $38                                         ; $65a8: $ff
	rst  $38                                         ; $65a9: $ff
	rst  $38                                         ; $65aa: $ff
	rst  $38                                         ; $65ab: $ff
	rst  $38                                         ; $65ac: $ff
	rst  $38                                         ; $65ad: $ff
	rst  $38                                         ; $65ae: $ff
	rst  $38                                         ; $65af: $ff
	rst  $38                                         ; $65b0: $ff
	and  d                                           ; $65b1: $a2
	rst  $38                                         ; $65b2: $ff
	xor  d                                           ; $65b3: $aa
	rst  $38                                         ; $65b4: $ff
	xor  d                                           ; $65b5: $aa
	rst  $38                                         ; $65b6: $ff
	xor  d                                           ; $65b7: $aa
	rst  $38                                         ; $65b8: $ff
	and  d                                           ; $65b9: $a2
	rst  $38                                         ; $65ba: $ff
	cp   h                                           ; $65bb: $bc
	rst  $38                                         ; $65bc: $ff
	rst  $38                                         ; $65bd: $ff
	rst  $38                                         ; $65be: $ff
	rst  $38                                         ; $65bf: $ff
	ld   h, c                                        ; $65c0: $61
	ret  nz                                          ; $65c1: $c0

	ld   h, c                                        ; $65c2: $61
	ret  nz                                          ; $65c3: $c0

	ret  nz                                          ; $65c4: $c0

	add  b                                           ; $65c5: $80
	add  b                                           ; $65c6: $80
	nop                                              ; $65c7: $00
	nop                                              ; $65c8: $00
	nop                                              ; $65c9: $00
	nop                                              ; $65ca: $00
	nop                                              ; $65cb: $00
	nop                                              ; $65cc: $00
	nop                                              ; $65cd: $00
	nop                                              ; $65ce: $00
	nop                                              ; $65cf: $00
	adc  h                                           ; $65d0: $8c
	ld   hl, sp-$74                                  ; $65d1: $f8 $8c
	ld   hl, sp-$08                                  ; $65d3: $f8 $f8
	ld   [hl], b                                     ; $65d5: $70
	ld   [hl], b                                     ; $65d6: $70
	nop                                              ; $65d7: $00
	nop                                              ; $65d8: $00
	nop                                              ; $65d9: $00
	nop                                              ; $65da: $00
	nop                                              ; $65db: $00
	nop                                              ; $65dc: $00
	nop                                              ; $65dd: $00
	nop                                              ; $65de: $00
	nop                                              ; $65df: $00
	add  c                                           ; $65e0: $81
	nop                                              ; $65e1: $00
	ld   b, d                                        ; $65e2: $42
	nop                                              ; $65e3: $00
	inc  h                                           ; $65e4: $24
	nop                                              ; $65e5: $00
	jr   jr_026_65e8                                 ; $65e6: $18 $00

jr_026_65e8:
	jr   jr_026_65ea                                 ; $65e8: $18 $00

jr_026_65ea:
	inc  h                                           ; $65ea: $24
	nop                                              ; $65eb: $00
	ld   b, d                                        ; $65ec: $42
	nop                                              ; $65ed: $00
	add  c                                           ; $65ee: $81
	nop                                              ; $65ef: $00
	add  c                                           ; $65f0: $81
	nop                                              ; $65f1: $00
	ld   b, d                                        ; $65f2: $42
	nop                                              ; $65f3: $00
	inc  h                                           ; $65f4: $24
	nop                                              ; $65f5: $00
	jr   jr_026_65f8                                 ; $65f6: $18 $00

jr_026_65f8:
	jr   jr_026_65fa                                 ; $65f8: $18 $00

jr_026_65fa:
	inc  h                                           ; $65fa: $24
	nop                                              ; $65fb: $00
	ld   b, d                                        ; $65fc: $42
	nop                                              ; $65fd: $00
	add  c                                           ; $65fe: $81
	nop                                              ; $65ff: $00
	add  c                                           ; $6600: $81
	nop                                              ; $6601: $00
	ld   b, d                                        ; $6602: $42
	nop                                              ; $6603: $00
	inc  h                                           ; $6604: $24
	nop                                              ; $6605: $00
	jr   jr_026_6608                                 ; $6606: $18 $00

jr_026_6608:
	jr   jr_026_660a                                 ; $6608: $18 $00

jr_026_660a:
	inc  h                                           ; $660a: $24
	nop                                              ; $660b: $00
	ld   b, d                                        ; $660c: $42
	nop                                              ; $660d: $00
	add  c                                           ; $660e: $81
	nop                                              ; $660f: $00
	add  c                                           ; $6610: $81
	nop                                              ; $6611: $00
	ld   b, d                                        ; $6612: $42
	nop                                              ; $6613: $00
	inc  h                                           ; $6614: $24
	nop                                              ; $6615: $00
	jr   jr_026_6618                                 ; $6616: $18 $00

jr_026_6618:
	jr   jr_026_661a                                 ; $6618: $18 $00

jr_026_661a:
	inc  h                                           ; $661a: $24
	nop                                              ; $661b: $00
	ld   b, d                                        ; $661c: $42
	nop                                              ; $661d: $00
	add  c                                           ; $661e: $81
	nop                                              ; $661f: $00
	add  c                                           ; $6620: $81
	nop                                              ; $6621: $00
	ld   b, d                                        ; $6622: $42
	nop                                              ; $6623: $00
	inc  h                                           ; $6624: $24
	nop                                              ; $6625: $00
	jr   jr_026_6628                                 ; $6626: $18 $00

jr_026_6628:
	jr   jr_026_662a                                 ; $6628: $18 $00

jr_026_662a:
	inc  h                                           ; $662a: $24
	nop                                              ; $662b: $00
	ld   b, d                                        ; $662c: $42
	nop                                              ; $662d: $00
	add  c                                           ; $662e: $81
	nop                                              ; $662f: $00
	add  c                                           ; $6630: $81
	nop                                              ; $6631: $00
	ld   b, d                                        ; $6632: $42
	nop                                              ; $6633: $00
	inc  h                                           ; $6634: $24
	nop                                              ; $6635: $00
	jr   jr_026_6638                                 ; $6636: $18 $00

jr_026_6638:
	jr   jr_026_663a                                 ; $6638: $18 $00

jr_026_663a:
	inc  h                                           ; $663a: $24
	nop                                              ; $663b: $00
	ld   b, d                                        ; $663c: $42
	nop                                              ; $663d: $00
	add  c                                           ; $663e: $81
	nop                                              ; $663f: $00
	add  c                                           ; $6640: $81
	nop                                              ; $6641: $00
	ld   b, d                                        ; $6642: $42
	nop                                              ; $6643: $00
	inc  h                                           ; $6644: $24
	nop                                              ; $6645: $00
	jr   jr_026_6648                                 ; $6646: $18 $00

jr_026_6648:
	jr   jr_026_664a                                 ; $6648: $18 $00

jr_026_664a:
	inc  h                                           ; $664a: $24
	nop                                              ; $664b: $00
	ld   b, d                                        ; $664c: $42
	nop                                              ; $664d: $00
	add  c                                           ; $664e: $81
	nop                                              ; $664f: $00
	add  c                                           ; $6650: $81
	nop                                              ; $6651: $00
	ld   b, d                                        ; $6652: $42
	nop                                              ; $6653: $00
	inc  h                                           ; $6654: $24
	nop                                              ; $6655: $00
	jr   jr_026_6658                                 ; $6656: $18 $00

jr_026_6658:
	jr   jr_026_665a                                 ; $6658: $18 $00

jr_026_665a:
	inc  h                                           ; $665a: $24
	nop                                              ; $665b: $00
	ld   b, d                                        ; $665c: $42
	nop                                              ; $665d: $00
	add  c                                           ; $665e: $81
	nop                                              ; $665f: $00
	add  c                                           ; $6660: $81
	nop                                              ; $6661: $00
	ld   b, d                                        ; $6662: $42
	nop                                              ; $6663: $00
	inc  h                                           ; $6664: $24
	nop                                              ; $6665: $00
	jr   jr_026_6668                                 ; $6666: $18 $00

jr_026_6668:
	jr   jr_026_666a                                 ; $6668: $18 $00

jr_026_666a:
	inc  h                                           ; $666a: $24
	nop                                              ; $666b: $00
	ld   b, d                                        ; $666c: $42
	nop                                              ; $666d: $00
	add  c                                           ; $666e: $81
	nop                                              ; $666f: $00
	add  c                                           ; $6670: $81
	nop                                              ; $6671: $00
	ld   b, d                                        ; $6672: $42
	nop                                              ; $6673: $00
	inc  h                                           ; $6674: $24
	nop                                              ; $6675: $00
	jr   jr_026_6678                                 ; $6676: $18 $00

jr_026_6678:
	jr   jr_026_667a                                 ; $6678: $18 $00

jr_026_667a:
	inc  h                                           ; $667a: $24
	nop                                              ; $667b: $00
	ld   b, d                                        ; $667c: $42
	nop                                              ; $667d: $00

Jump_026_667e:
	add  c                                           ; $667e: $81
	nop                                              ; $667f: $00
	add  c                                           ; $6680: $81

Jump_026_6681:
	nop                                              ; $6681: $00
	ld   b, d                                        ; $6682: $42
	nop                                              ; $6683: $00
	inc  h                                           ; $6684: $24
	nop                                              ; $6685: $00
	jr   jr_026_6688                                 ; $6686: $18 $00

jr_026_6688:
	jr   jr_026_668a                                 ; $6688: $18 $00

jr_026_668a:
	inc  h                                           ; $668a: $24
	nop                                              ; $668b: $00
	ld   b, d                                        ; $668c: $42
	nop                                              ; $668d: $00
	add  c                                           ; $668e: $81
	nop                                              ; $668f: $00
	add  c                                           ; $6690: $81
	nop                                              ; $6691: $00
	ld   b, d                                        ; $6692: $42
	nop                                              ; $6693: $00
	inc  h                                           ; $6694: $24
	nop                                              ; $6695: $00
	jr   jr_026_6698                                 ; $6696: $18 $00

jr_026_6698:
	jr   jr_026_669a                                 ; $6698: $18 $00

jr_026_669a:
	inc  h                                           ; $669a: $24
	nop                                              ; $669b: $00
	ld   b, d                                        ; $669c: $42
	nop                                              ; $669d: $00
	add  c                                           ; $669e: $81
	nop                                              ; $669f: $00
	add  c                                           ; $66a0: $81
	nop                                              ; $66a1: $00
	ld   b, d                                        ; $66a2: $42
	nop                                              ; $66a3: $00
	inc  h                                           ; $66a4: $24
	nop                                              ; $66a5: $00
	jr   jr_026_66a8                                 ; $66a6: $18 $00

jr_026_66a8:
	jr   jr_026_66aa                                 ; $66a8: $18 $00

jr_026_66aa:
	inc  h                                           ; $66aa: $24
	nop                                              ; $66ab: $00
	ld   b, d                                        ; $66ac: $42
	nop                                              ; $66ad: $00
	add  c                                           ; $66ae: $81
	nop                                              ; $66af: $00
	add  c                                           ; $66b0: $81
	nop                                              ; $66b1: $00
	ld   b, d                                        ; $66b2: $42
	nop                                              ; $66b3: $00
	inc  h                                           ; $66b4: $24
	nop                                              ; $66b5: $00
	jr   jr_026_66b8                                 ; $66b6: $18 $00

jr_026_66b8:
	jr   jr_026_66ba                                 ; $66b8: $18 $00

jr_026_66ba:
	inc  h                                           ; $66ba: $24
	nop                                              ; $66bb: $00
	ld   b, d                                        ; $66bc: $42
	nop                                              ; $66bd: $00
	add  c                                           ; $66be: $81
	nop                                              ; $66bf: $00
	add  c                                           ; $66c0: $81
	nop                                              ; $66c1: $00
	ld   b, d                                        ; $66c2: $42
	nop                                              ; $66c3: $00
	inc  h                                           ; $66c4: $24
	nop                                              ; $66c5: $00
	jr   jr_026_66c8                                 ; $66c6: $18 $00

jr_026_66c8:
	jr   jr_026_66ca                                 ; $66c8: $18 $00

jr_026_66ca:
	inc  h                                           ; $66ca: $24
	nop                                              ; $66cb: $00
	ld   b, d                                        ; $66cc: $42
	nop                                              ; $66cd: $00
	add  c                                           ; $66ce: $81
	nop                                              ; $66cf: $00
	add  c                                           ; $66d0: $81
	nop                                              ; $66d1: $00
	ld   b, d                                        ; $66d2: $42
	nop                                              ; $66d3: $00
	inc  h                                           ; $66d4: $24
	nop                                              ; $66d5: $00
	jr   jr_026_66d8                                 ; $66d6: $18 $00

jr_026_66d8:
	jr   jr_026_66da                                 ; $66d8: $18 $00

jr_026_66da:
	inc  h                                           ; $66da: $24
	nop                                              ; $66db: $00
	ld   b, d                                        ; $66dc: $42
	nop                                              ; $66dd: $00
	add  c                                           ; $66de: $81
	nop                                              ; $66df: $00
	add  c                                           ; $66e0: $81
	nop                                              ; $66e1: $00
	ld   b, d                                        ; $66e2: $42
	nop                                              ; $66e3: $00
	inc  h                                           ; $66e4: $24
	nop                                              ; $66e5: $00
	jr   jr_026_66e8                                 ; $66e6: $18 $00

jr_026_66e8:
	jr   jr_026_66ea                                 ; $66e8: $18 $00

jr_026_66ea:
	inc  h                                           ; $66ea: $24
	nop                                              ; $66eb: $00
	ld   b, d                                        ; $66ec: $42
	nop                                              ; $66ed: $00
	add  c                                           ; $66ee: $81
	nop                                              ; $66ef: $00
	add  c                                           ; $66f0: $81
	nop                                              ; $66f1: $00
	ld   b, d                                        ; $66f2: $42
	nop                                              ; $66f3: $00
	inc  h                                           ; $66f4: $24
	nop                                              ; $66f5: $00
	jr   jr_026_66f8                                 ; $66f6: $18 $00

jr_026_66f8:
	jr   jr_026_66fa                                 ; $66f8: $18 $00

jr_026_66fa:
	inc  h                                           ; $66fa: $24
	nop                                              ; $66fb: $00
	ld   b, d                                        ; $66fc: $42
	nop                                              ; $66fd: $00
	add  c                                           ; $66fe: $81
	nop                                              ; $66ff: $00
	add  c                                           ; $6700: $81
	nop                                              ; $6701: $00
	ld   b, d                                        ; $6702: $42
	nop                                              ; $6703: $00
	inc  h                                           ; $6704: $24
	nop                                              ; $6705: $00
	jr   jr_026_6708                                 ; $6706: $18 $00

jr_026_6708:
	jr   jr_026_670a                                 ; $6708: $18 $00

jr_026_670a:
	inc  h                                           ; $670a: $24
	nop                                              ; $670b: $00
	ld   b, d                                        ; $670c: $42
	nop                                              ; $670d: $00
	add  c                                           ; $670e: $81
	nop                                              ; $670f: $00
	add  c                                           ; $6710: $81
	nop                                              ; $6711: $00
	ld   b, d                                        ; $6712: $42
	nop                                              ; $6713: $00
	inc  h                                           ; $6714: $24
	nop                                              ; $6715: $00
	jr   jr_026_6718                                 ; $6716: $18 $00

jr_026_6718:
	jr   jr_026_671a                                 ; $6718: $18 $00

jr_026_671a:
	inc  h                                           ; $671a: $24
	nop                                              ; $671b: $00
	ld   b, d                                        ; $671c: $42
	nop                                              ; $671d: $00
	add  c                                           ; $671e: $81
	nop                                              ; $671f: $00
	add  c                                           ; $6720: $81
	nop                                              ; $6721: $00
	ld   b, d                                        ; $6722: $42
	nop                                              ; $6723: $00
	inc  h                                           ; $6724: $24
	nop                                              ; $6725: $00
	jr   jr_026_6728                                 ; $6726: $18 $00

jr_026_6728:
	jr   jr_026_672a                                 ; $6728: $18 $00

jr_026_672a:
	inc  h                                           ; $672a: $24
	nop                                              ; $672b: $00
	ld   b, d                                        ; $672c: $42
	nop                                              ; $672d: $00
	add  c                                           ; $672e: $81
	nop                                              ; $672f: $00
	add  c                                           ; $6730: $81
	nop                                              ; $6731: $00
	ld   b, d                                        ; $6732: $42
	nop                                              ; $6733: $00
	inc  h                                           ; $6734: $24
	nop                                              ; $6735: $00
	jr   jr_026_6738                                 ; $6736: $18 $00

jr_026_6738:
	jr   jr_026_673a                                 ; $6738: $18 $00

jr_026_673a:
	inc  h                                           ; $673a: $24
	nop                                              ; $673b: $00
	ld   b, d                                        ; $673c: $42
	nop                                              ; $673d: $00
	add  c                                           ; $673e: $81
	nop                                              ; $673f: $00
	add  c                                           ; $6740: $81
	nop                                              ; $6741: $00
	ld   b, d                                        ; $6742: $42
	nop                                              ; $6743: $00
	inc  h                                           ; $6744: $24
	nop                                              ; $6745: $00
	jr   jr_026_6748                                 ; $6746: $18 $00

jr_026_6748:
	jr   jr_026_674a                                 ; $6748: $18 $00

jr_026_674a:
	inc  h                                           ; $674a: $24
	nop                                              ; $674b: $00
	ld   b, d                                        ; $674c: $42
	nop                                              ; $674d: $00
	add  c                                           ; $674e: $81
	nop                                              ; $674f: $00
	add  c                                           ; $6750: $81
	nop                                              ; $6751: $00
	ld   b, d                                        ; $6752: $42
	nop                                              ; $6753: $00
	inc  h                                           ; $6754: $24
	nop                                              ; $6755: $00
	jr   jr_026_6758                                 ; $6756: $18 $00

jr_026_6758:
	jr   jr_026_675a                                 ; $6758: $18 $00

jr_026_675a:
	inc  h                                           ; $675a: $24
	nop                                              ; $675b: $00
	ld   b, d                                        ; $675c: $42
	nop                                              ; $675d: $00
	add  c                                           ; $675e: $81
	nop                                              ; $675f: $00
	add  c                                           ; $6760: $81
	nop                                              ; $6761: $00
	ld   b, d                                        ; $6762: $42
	nop                                              ; $6763: $00
	inc  h                                           ; $6764: $24
	nop                                              ; $6765: $00
	jr   jr_026_6768                                 ; $6766: $18 $00

jr_026_6768:
	jr   jr_026_676a                                 ; $6768: $18 $00

jr_026_676a:
	inc  h                                           ; $676a: $24
	nop                                              ; $676b: $00
	ld   b, d                                        ; $676c: $42
	nop                                              ; $676d: $00
	add  c                                           ; $676e: $81
	nop                                              ; $676f: $00
	add  c                                           ; $6770: $81
	nop                                              ; $6771: $00
	ld   b, d                                        ; $6772: $42
	nop                                              ; $6773: $00
	inc  h                                           ; $6774: $24
	nop                                              ; $6775: $00
	jr   jr_026_6778                                 ; $6776: $18 $00

jr_026_6778:
	jr   jr_026_677a                                 ; $6778: $18 $00

jr_026_677a:
	inc  h                                           ; $677a: $24
	nop                                              ; $677b: $00
	ld   b, d                                        ; $677c: $42
	nop                                              ; $677d: $00
	add  c                                           ; $677e: $81
	nop                                              ; $677f: $00
	add  c                                           ; $6780: $81
	nop                                              ; $6781: $00
	ld   b, d                                        ; $6782: $42
	nop                                              ; $6783: $00
	inc  h                                           ; $6784: $24
	nop                                              ; $6785: $00
	jr   jr_026_6788                                 ; $6786: $18 $00

jr_026_6788:
	jr   jr_026_678a                                 ; $6788: $18 $00

jr_026_678a:
	inc  h                                           ; $678a: $24
	nop                                              ; $678b: $00
	ld   b, d                                        ; $678c: $42
	nop                                              ; $678d: $00
	add  c                                           ; $678e: $81
	nop                                              ; $678f: $00
	add  c                                           ; $6790: $81
	nop                                              ; $6791: $00
	ld   b, d                                        ; $6792: $42
	nop                                              ; $6793: $00
	inc  h                                           ; $6794: $24
	nop                                              ; $6795: $00
	jr   jr_026_6798                                 ; $6796: $18 $00

jr_026_6798:
	jr   jr_026_679a                                 ; $6798: $18 $00

jr_026_679a:
	inc  h                                           ; $679a: $24
	nop                                              ; $679b: $00
	ld   b, d                                        ; $679c: $42
	nop                                              ; $679d: $00
	add  c                                           ; $679e: $81
	nop                                              ; $679f: $00
	add  c                                           ; $67a0: $81
	nop                                              ; $67a1: $00
	ld   b, d                                        ; $67a2: $42
	nop                                              ; $67a3: $00
	inc  h                                           ; $67a4: $24
	nop                                              ; $67a5: $00
	jr   jr_026_67a8                                 ; $67a6: $18 $00

jr_026_67a8:
	jr   jr_026_67aa                                 ; $67a8: $18 $00

jr_026_67aa:
	inc  h                                           ; $67aa: $24
	nop                                              ; $67ab: $00
	ld   b, d                                        ; $67ac: $42
	nop                                              ; $67ad: $00
	add  c                                           ; $67ae: $81
	nop                                              ; $67af: $00
	add  c                                           ; $67b0: $81
	nop                                              ; $67b1: $00
	ld   b, d                                        ; $67b2: $42
	nop                                              ; $67b3: $00
	inc  h                                           ; $67b4: $24
	nop                                              ; $67b5: $00
	jr   jr_026_67b8                                 ; $67b6: $18 $00

jr_026_67b8:
	jr   jr_026_67ba                                 ; $67b8: $18 $00

jr_026_67ba:
	inc  h                                           ; $67ba: $24
	nop                                              ; $67bb: $00
	ld   b, d                                        ; $67bc: $42
	nop                                              ; $67bd: $00
	add  c                                           ; $67be: $81
	nop                                              ; $67bf: $00
	add  c                                           ; $67c0: $81
	nop                                              ; $67c1: $00
	ld   b, d                                        ; $67c2: $42
	nop                                              ; $67c3: $00
	inc  h                                           ; $67c4: $24
	nop                                              ; $67c5: $00
	jr   jr_026_67c8                                 ; $67c6: $18 $00

jr_026_67c8:
	jr   jr_026_67ca                                 ; $67c8: $18 $00

jr_026_67ca:
	inc  h                                           ; $67ca: $24
	nop                                              ; $67cb: $00
	ld   b, d                                        ; $67cc: $42
	nop                                              ; $67cd: $00
	add  c                                           ; $67ce: $81
	nop                                              ; $67cf: $00
	add  c                                           ; $67d0: $81
	nop                                              ; $67d1: $00
	ld   b, d                                        ; $67d2: $42
	nop                                              ; $67d3: $00
	inc  h                                           ; $67d4: $24
	nop                                              ; $67d5: $00
	jr   jr_026_67d8                                 ; $67d6: $18 $00

jr_026_67d8:
	jr   jr_026_67da                                 ; $67d8: $18 $00

jr_026_67da:
	inc  h                                           ; $67da: $24
	nop                                              ; $67db: $00
	ld   b, d                                        ; $67dc: $42
	nop                                              ; $67dd: $00
	add  c                                           ; $67de: $81
	nop                                              ; $67df: $00
	add  c                                           ; $67e0: $81
	nop                                              ; $67e1: $00
	ld   b, d                                        ; $67e2: $42
	nop                                              ; $67e3: $00
	inc  h                                           ; $67e4: $24
	nop                                              ; $67e5: $00
	jr   jr_026_67e8                                 ; $67e6: $18 $00

jr_026_67e8:
	jr   jr_026_67ea                                 ; $67e8: $18 $00

jr_026_67ea:
	inc  h                                           ; $67ea: $24
	nop                                              ; $67eb: $00
	ld   b, d                                        ; $67ec: $42
	nop                                              ; $67ed: $00
	add  c                                           ; $67ee: $81
	nop                                              ; $67ef: $00
	add  c                                           ; $67f0: $81
	nop                                              ; $67f1: $00
	ld   b, d                                        ; $67f2: $42
	nop                                              ; $67f3: $00
	inc  h                                           ; $67f4: $24
	nop                                              ; $67f5: $00
	jr   jr_026_67f8                                 ; $67f6: $18 $00

jr_026_67f8:
	jr   jr_026_67fa                                 ; $67f8: $18 $00

jr_026_67fa:
	inc  h                                           ; $67fa: $24
	nop                                              ; $67fb: $00
	ld   b, d                                        ; $67fc: $42
	nop                                              ; $67fd: $00
	add  c                                           ; $67fe: $81
	nop                                              ; $67ff: $00
	inc  bc                                          ; $6800: $03
	inc  bc                                          ; $6801: $03
	rra                                              ; $6802: $1f
	ld   e, $11                                      ; $6803: $1e $11
	rra                                              ; $6805: $1f
	db   $10                                         ; $6806: $10
	rra                                              ; $6807: $1f
	ld   [de], a                                     ; $6808: $12
	rra                                              ; $6809: $1f
	inc  de                                          ; $680a: $13
	rra                                              ; $680b: $1f
	rla                                              ; $680c: $17
	ld   e, $17                                      ; $680d: $1e $17
	inc  e                                           ; $680f: $1c
	rla                                              ; $6810: $17
	inc  e                                           ; $6811: $1c
	daa                                              ; $6812: $27
	ccf                                              ; $6813: $3f

jr_026_6814:
	cpl                                              ; $6814: $2f
	dec  a                                           ; $6815: $3d
	ld   l, $3c                                      ; $6816: $2e $3c
	ld   d, [hl]                                     ; $6818: $56
	ld   a, h                                        ; $6819: $7c
	scf                                              ; $681a: $37
	inc  a                                           ; $681b: $3c
	inc  hl                                          ; $681c: $23
	ld   a, $3d                                      ; $681d: $3e $3d
	dec  a                                           ; $681f: $3d
	rst  ToBoot                                         ; $6820: $c7
	rst  ToBoot                                         ; $6821: $c7
	rst  $38                                         ; $6822: $ff
	jr   c, jr_026_6814                              ; $6823: $38 $ef

	ld   a, b                                        ; $6825: $78
	rst  ToBoot                                         ; $6826: $c7
	db   $fc                                         ; $6827: $fc
	rst  ToBoot                                         ; $6828: $c7
	db   $fc                                         ; $6829: $fc
	rst  ToBoot                                         ; $682a: $c7
	ld   a, [hl]                                     ; $682b: $7e
	push bc                                          ; $682c: $c5
	ld   a, a                                        ; $682d: $7f
	call nz, $e2ff                                   ; $682e: $c4 $ff $e2
	ccf                                              ; $6831: $3f
	ldh  [c], a                                      ; $6832: $e2
	ccf                                              ; $6833: $3f
	ld   [hl], d                                     ; $6834: $72
	rra                                              ; $6835: $1f
	pop  af                                          ; $6836: $f1
	sbc  a                                           ; $6837: $9f
	ld   hl, sp-$71                                  ; $6838: $f8 $8f
	rst  $38                                         ; $683a: $ff
	ld   [hl], a                                     ; $683b: $77
	cp   $33                                         ; $683c: $fe $33
	rst  $38                                         ; $683e: $ff
	add  a                                           ; $683f: $87
	ldh  a, [$f0]                                    ; $6840: $f0 $f0
	ldh  a, [rAUD1SWEEP]                             ; $6842: $f0 $10
	ldh  [rAUD4LEN], a                               ; $6844: $e0 $20
	ldh  [rAUD4LEN], a                               ; $6846: $e0 $20
	ldh  a, [$50]                                    ; $6848: $f0 $50
	ld   hl, sp-$78                                  ; $684a: $f8 $88
	db   $fc                                         ; $684c: $fc
	inc  b                                           ; $684d: $04
	ld   hl, sp-$68                                  ; $684e: $f8 $98
	add  sp, -$48                                    ; $6850: $e8 $b8
	ld   c, b                                        ; $6852: $48
	ld   hl, sp+$44                                  ; $6853: $f8 $44
	db   $fc                                         ; $6855: $fc

jr_026_6856:
	ld   [bc], a                                     ; $6856: $02
	cp   $89                                         ; $6857: $fe $89
	rst  $38                                         ; $6859: $ff
	ld   b, $fe                                      ; $685a: $06 $fe
	jr   c, jr_026_6856                              ; $685c: $38 $f8

	ret  nz                                          ; $685e: $c0

	ret  nz                                          ; $685f: $c0

	ld   d, $16                                      ; $6860: $16 $16
	inc  d                                           ; $6862: $14
	inc  d                                           ; $6863: $14
	inc  d                                           ; $6864: $14
	inc  d                                           ; $6865: $14
	daa                                              ; $6866: $27
	daa                                              ; $6867: $27
	dec  l                                           ; $6868: $2d
	dec  l                                           ; $6869: $2d
	inc  l                                           ; $686a: $2c
	dec  l                                           ; $686b: $2d
	ld   d, h                                        ; $686c: $54
	ld   d, l                                        ; $686d: $55
	inc  [hl]                                        ; $686e: $34
	inc  [hl]                                        ; $686f: $34
	ld   [hl+], a                                    ; $6870: $22
	ld   [hl+], a                                    ; $6871: $22
	dec  a                                           ; $6872: $3d
	dec  a                                           ; $6873: $3d
	nop                                              ; $6874: $00
	nop                                              ; $6875: $00
	nop                                              ; $6876: $00
	nop                                              ; $6877: $00
	ld   bc, $0201                                   ; $6878: $01 $01 $02
	inc  bc                                          ; $687b: $03
	inc  b                                           ; $687c: $04
	rlca                                             ; $687d: $07
	ld   [$450f], sp                                 ; $687e: $08 $0f $45
	ld   b, l                                        ; $6881: $45
	call nz, $22c4                                   ; $6882: $c4 $c4 $22
	ld   [hl+], a                                    ; $6885: $22
	ld   [de], a                                     ; $6886: $12
	ld   [de], a                                     ; $6887: $12
	sub  d                                           ; $6888: $92
	ld   [de], a                                     ; $6889: $12
	adc  c                                           ; $688a: $89
	adc  c                                           ; $688b: $89
	add  [hl]                                        ; $688c: $86
	add  [hl]                                        ; $688d: $86
	ld   [hl], c                                     ; $688e: $71
	ld   [hl], c                                     ; $688f: $71
	ld   [hl-], a                                    ; $6890: $32
	ld   [hl-], a                                    ; $6891: $32
	add  a                                           ; $6892: $87
	add  a                                           ; $6893: $87
	ld   a, h                                        ; $6894: $7c
	ld   a, a                                        ; $6895: $7f
	ld   a, b                                        ; $6896: $78
	ld   e, a                                        ; $6897: $5f
	add  sp, -$41                                    ; $6898: $e8 $bf
	ldh  a, [$bf]                                    ; $689a: $f0 $bf
	db   $e3                                         ; $689c: $e3
	cp   a                                           ; $689d: $bf
	call z, $04ff                                    ; $689e: $cc $ff $04
	inc  b                                           ; $68a1: $04
	sbc  b                                           ; $68a2: $98
	sbc  b                                           ; $68a3: $98
	xor  b                                           ; $68a4: $a8
	xor  b                                           ; $68a5: $a8
	ld   c, b                                        ; $68a6: $48
	ld   c, b                                        ; $68a7: $48
	ld   b, h                                        ; $68a8: $44
	ld   b, h                                        ; $68a9: $44
	ld   [bc], a                                     ; $68aa: $02
	ld   [bc], a                                     ; $68ab: $02
	adc  c                                           ; $68ac: $89
	adc  c                                           ; $68ad: $89
	ld   b, $06                                      ; $68ae: $06 $06
	jr   c, jr_026_68ea                              ; $68b0: $38 $38

	ret  nz                                          ; $68b2: $c0

	ret  nz                                          ; $68b3: $c0

	ld   b, b                                        ; $68b4: $40
	ret  nz                                          ; $68b5: $c0

	ld   b, b                                        ; $68b6: $40
	ret  nz                                          ; $68b7: $c0

	ld   b, b                                        ; $68b8: $40
	ret  nz                                          ; $68b9: $c0

	cp   b                                           ; $68ba: $b8
	cp   b                                           ; $68bb: $b8
	ld   hl, sp-$38                                  ; $68bc: $f8 $c8
	ld   hl, sp-$78                                  ; $68be: $f8 $88
	rla                                              ; $68c0: $17
	rra                                              ; $68c1: $1f
	rla                                              ; $68c2: $17
	jr   jr_026_68e4                                 ; $68c3: $18 $1f

	jr   jr_026_68d6                                 ; $68c5: $18 $0f

	rrca                                             ; $68c7: $0f
	inc  bc                                          ; $68c8: $03
	ld   [bc], a                                     ; $68c9: $02
	inc  bc                                          ; $68ca: $03
	ld   [bc], a                                     ; $68cb: $02
	rlca                                             ; $68cc: $07
	inc  b                                           ; $68cd: $04
	rlca                                             ; $68ce: $07
	inc  b                                           ; $68cf: $04
	rlca                                             ; $68d0: $07
	inc  b                                           ; $68d1: $04
	rlca                                             ; $68d2: $07
	inc  b                                           ; $68d3: $04
	rlca                                             ; $68d4: $07
	inc  b                                           ; $68d5: $04

jr_026_68d6:
	rlca                                             ; $68d6: $07
	inc  b                                           ; $68d7: $04
	rlca                                             ; $68d8: $07
	inc  b                                           ; $68d9: $04
	inc  bc                                          ; $68da: $03
	inc  bc                                          ; $68db: $03
	nop                                              ; $68dc: $00
	nop                                              ; $68dd: $00
	ld   bc, $1101                                   ; $68de: $01 $01 $11
	rst  $38                                         ; $68e1: $ff
	and  c                                           ; $68e2: $a1
	rst  $38                                         ; $68e3: $ff

jr_026_68e4:
	rst  $38                                         ; $68e4: $ff
	rst  JumpTable                                         ; $68e5: $df
	cp   $03                                         ; $68e6: $fe $03
	cp   $03                                         ; $68e8: $fe $03

jr_026_68ea:
	cp   $03                                         ; $68ea: $fe $03

jr_026_68ec:
	cp   $03                                         ; $68ec: $fe $03

jr_026_68ee:
	cp   $03                                         ; $68ee: $fe $03
	cp   $03                                         ; $68f0: $fe $03
	cp   $03                                         ; $68f2: $fe $03
	cp   $03                                         ; $68f4: $fe $03
	cp   $03                                         ; $68f6: $fe $03
	cp   $03                                         ; $68f8: $fe $03
	db   $fc                                         ; $68fa: $fc
	rrca                                             ; $68fb: $0f
	rst  $38                                         ; $68fc: $ff
	rst  $38                                         ; $68fd: $ff
	rst  $38                                         ; $68fe: $ff
	rst  $38                                         ; $68ff: $ff
	ldh  a, [rAUD1SWEEP]                             ; $6900: $f0 $10
	ldh  a, [$90]                                    ; $6902: $f0 $90
	ld   hl, sp-$38                                  ; $6904: $f8 $c8
	or   b                                           ; $6906: $b0
	or   b                                           ; $6907: $b0
	ld   b, b                                        ; $6908: $40
	ret  nz                                          ; $6909: $c0

	jr   nz, jr_026_68ec                             ; $690a: $20 $e0

	jr   nz, jr_026_68ee                             ; $690c: $20 $e0

	db   $10                                         ; $690e: $10
	ldh  a, [rAUD1SWEEP]                             ; $690f: $f0 $10
	ldh  a, [$08]                                    ; $6911: $f0 $08
	ld   hl, sp+$08                                  ; $6913: $f8 $08
	ld   hl, sp+$04                                  ; $6915: $f8 $04
	db   $fc                                         ; $6917: $fc
	inc  b                                           ; $6918: $04
	db   $fc                                         ; $6919: $fc
	jr   @-$06                                       ; $691a: $18 $f8

	ldh  [$e0], a                                    ; $691c: $e0 $e0
	add  b                                           ; $691e: $80
	add  b                                           ; $691f: $80
	ld   b, $06                                      ; $6920: $06 $06
	add  hl, bc                                      ; $6922: $09
	rrca                                             ; $6923: $0f
	ld   [$110f], sp                                 ; $6924: $08 $0f $11
	rra                                              ; $6927: $1f
	inc  de                                          ; $6928: $13
	ld   e, $13                                      ; $6929: $1e $13
	ld   e, $27                                      ; $692b: $1e $27
	inc  a                                           ; $692d: $3c
	cpl                                              ; $692e: $2f
	jr   c, jr_026_6990                              ; $692f: $38 $5f

	ld   a, e                                        ; $6931: $7b
	ld   e, [hl]                                     ; $6932: $5e
	ld   [hl], d                                     ; $6933: $72
	cp   a                                           ; $6934: $bf
	db   $e3                                         ; $6935: $e3
	ld   a, [hl]                                     ; $6936: $7e
	ld   h, d                                        ; $6937: $62
	ccf                                              ; $6938: $3f
	jr   nz, jr_026_695a                             ; $6939: $20 $1f

	db   $10                                         ; $693b: $10
	rrca                                             ; $693c: $0f
	ld   [$1717], sp                                 ; $693d: $08 $17 $17
	jr   c, jr_026_697a                              ; $6940: $38 $38

	ld   c, c                                        ; $6942: $49
	ld   a, c                                        ; $6943: $79
	adc  a                                           ; $6944: $8f
	cp   $8f                                         ; $6945: $fe $8f
	ld   hl, sp-$71                                  ; $6947: $f8 $8f
	ld   hl, sp-$71                                  ; $6949: $f8 $8f
	db   $fc                                         ; $694b: $fc
	adc  e                                           ; $694c: $8b
	cp   $c9                                         ; $694d: $fe $c9
	ld   a, a                                        ; $694f: $7f
	call nz, $c4ff                                   ; $6950: $c4 $ff $c4
	ld   a, a                                        ; $6953: $7f
	db   $e4                                         ; $6954: $e4
	ccf                                              ; $6955: $3f
	ldh  a, [c]                                      ; $6956: $f2
	ccf                                              ; $6957: $3f
	db   $ed                                         ; $6958: $ed
	ccf                                              ; $6959: $3f

jr_026_695a:
	di                                               ; $695a: $f3
	rra                                              ; $695b: $1f
	ld   hl, sp+$7f                                  ; $695c: $f8 $7f
	call nz, $00c7                                   ; $695e: $c4 $c7 $00
	nop                                              ; $6961: $00
	ldh  [$e0], a                                    ; $6962: $e0 $e0
	ldh  a, [rAUD1SWEEP]                             ; $6964: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $6966: $f0 $10
	ldh  [rAUD4LEN], a                               ; $6968: $e0 $20
	ldh  [rAUD4LEN], a                               ; $696a: $e0 $20
	ret  nz                                          ; $696c: $c0

	ld   b, b                                        ; $696d: $40

jr_026_696e:
	ldh  [$60], a                                    ; $696e: $e0 $60
	ld   hl, sp-$68                                  ; $6970: $f8 $98
	cp   $c6                                         ; $6972: $fe $c6
	ld   hl, sp-$78                                  ; $6974: $f8 $88
	ldh  a, [$90]                                    ; $6976: $f0 $90
	ldh  [hScriptOpcodeParams], a                                    ; $6978: $e0 $a0

jr_026_697a:
	ld   b, b                                        ; $697a: $40
	ret  nz                                          ; $697b: $c0

	jr   nc, jr_026_696e                             ; $697c: $30 $f0

	ld   [$00f8], sp                                 ; $697e: $08 $f8 $00
	nop                                              ; $6981: $00
	nop                                              ; $6982: $00
	nop                                              ; $6983: $00
	nop                                              ; $6984: $00
	nop                                              ; $6985: $00
	dec  b                                           ; $6986: $05
	dec  b                                           ; $6987: $05
	dec  b                                           ; $6988: $05
	dec  b                                           ; $6989: $05
	ld   a, [bc]                                     ; $698a: $0a
	ld   a, [bc]                                     ; $698b: $0a
	ld   b, $06                                      ; $698c: $06 $06
	ld   [bc], a                                     ; $698e: $02
	ld   [bc], a                                     ; $698f: $02

jr_026_6990:
	ld   bc, $0001                                   ; $6990: $01 $01 $00
	nop                                              ; $6993: $00
	ld   bc, $0101                                   ; $6994: $01 $01 $01
	ld   bc, $0302                                   ; $6997: $01 $02 $03
	inc  b                                           ; $699a: $04
	rlca                                             ; $699b: $07
	inc  b                                           ; $699c: $04
	rlca                                             ; $699d: $07
	add  hl, bc                                      ; $699e: $09
	rrca                                             ; $699f: $0f
	nop                                              ; $69a0: $00
	nop                                              ; $69a1: $00
	nop                                              ; $69a2: $00
	nop                                              ; $69a3: $00
	nop                                              ; $69a4: $00
	nop                                              ; $69a5: $00
	cp   h                                           ; $69a6: $bc
	cp   h                                           ; $69a7: $bc
	inc  [hl]                                        ; $69a8: $34
	inc  h                                           ; $69a9: $24
	ld   [hl-], a                                    ; $69aa: $32
	ld   [hl-], a                                    ; $69ab: $32
	inc  hl                                          ; $69ac: $23
	inc  sp                                          ; $69ad: $33
	ld   [bc], a                                     ; $69ae: $02
	ld   [bc], a                                     ; $69af: $02
	ld   bc, $8701                                   ; $69b0: $01 $01 $87
	add  a                                           ; $69b3: $87
	db   $fc                                         ; $69b4: $fc
	ld   a, a                                        ; $69b5: $7f
	ld   hl, sp-$21                                  ; $69b6: $f8 $df
	jp   hl                                          ; $69b8: $e9


	cp   a                                           ; $69b9: $bf
	cp   $b7                                         ; $69ba: $fe $b7
	cp   $83                                         ; $69bc: $fe $83
	cp   $83                                         ; $69be: $fe $83
	nop                                              ; $69c0: $00
	nop                                              ; $69c1: $00
	nop                                              ; $69c2: $00
	nop                                              ; $69c3: $00
	nop                                              ; $69c4: $00
	nop                                              ; $69c5: $00
	ld   c, c                                        ; $69c6: $49
	ld   c, c                                        ; $69c7: $49

jr_026_69c8:
	ld   c, h                                        ; $69c8: $4c
	ld   c, h                                        ; $69c9: $4c
	ld   c, b                                        ; $69ca: $48
	ld   c, b                                        ; $69cb: $48
	add  hl, hl                                      ; $69cc: $29
	add  hl, hl                                      ; $69cd: $29
	jp   c, $34da                                    ; $69ce: $da $da $34

	inc  [hl]                                        ; $69d1: $34
	add  e                                           ; $69d2: $83
	add  e                                           ; $69d3: $83
	ld   h, b                                        ; $69d4: $60
	ldh  [$7f], a                                    ; $69d5: $e0 $7f
	rst  $38                                         ; $69d7: $ff
	ret  nz                                          ; $69d8: $c0

	ret  nz                                          ; $69d9: $c0

	ld   a, b                                        ; $69da: $78
	ld   hl, sp+$78                                  ; $69db: $f8 $78
	ret  z                                           ; $69dd: $c8

	jr   c, jr_026_69c8                              ; $69de: $38 $e8

	ld   [de], a                                     ; $69e0: $12
	ld   e, $3c                                      ; $69e1: $1e $3c
	inc  l                                           ; $69e3: $2c
	jr   nc, jr_026_6a16                             ; $69e4: $30 $30

	ld   bc, $0301                                   ; $69e6: $01 $01 $03
	ld   [bc], a                                     ; $69e9: $02
	rlca                                             ; $69ea: $07
	inc  b                                           ; $69eb: $04
	rlca                                             ; $69ec: $07
	inc  b                                           ; $69ed: $04
	rrca                                             ; $69ee: $0f
	ld   [$080f], sp                                 ; $69ef: $08 $0f $08
	rrca                                             ; $69f2: $0f
	ld   [$080f], sp                                 ; $69f3: $08 $0f $08
	rrca                                             ; $69f6: $0f
	ld   [$0407], sp                                 ; $69f7: $08 $07 $04
	inc  bc                                          ; $69fa: $03
	inc  bc                                          ; $69fb: $03
	nop                                              ; $69fc: $00
	nop                                              ; $69fd: $00
	ld   bc, $ff01                                   ; $69fe: $01 $01 $ff
	add  c                                           ; $6a01: $81
	ld   a, a                                        ; $6a02: $7f
	ld   l, l                                        ; $6a03: $6d
	rst  $38                                         ; $6a04: $ff
	add  e                                           ; $6a05: $83
	cp   $03                                         ; $6a06: $fe $03
	cp   $03                                         ; $6a08: $fe $03
	cp   $03                                         ; $6a0a: $fe $03
	cp   $03                                         ; $6a0c: $fe $03
	cp   $03                                         ; $6a0e: $fe $03
	cp   $03                                         ; $6a10: $fe $03
	cp   $03                                         ; $6a12: $fe $03
	cp   $03                                         ; $6a14: $fe $03

jr_026_6a16:
	db   $fc                                         ; $6a16: $fc
	rlca                                             ; $6a17: $07
	db   $fc                                         ; $6a18: $fc
	rlca                                             ; $6a19: $07
	ld   hl, sp+$1f                                  ; $6a1a: $f8 $1f
	rst  $38                                         ; $6a1c: $ff
	rst  $38                                         ; $6a1d: $ff
	rst  $38                                         ; $6a1e: $ff
	rst  $38                                         ; $6a1f: $ff
	ld   [hl], b                                     ; $6a20: $70
	ldh  a, [$f0]                                    ; $6a21: $f0 $f0
	sub  b                                           ; $6a23: $90
	ld   hl, sp+$18                                  ; $6a24: $f8 $18
	ldh  a, [$90]                                    ; $6a26: $f0 $90
	ld   h, b                                        ; $6a28: $60
	ldh  [rAUD4LEN], a                               ; $6a29: $e0 $20
	ldh  [rAUD1SWEEP], a                             ; $6a2b: $e0 $10
	ldh  a, [$08]                                    ; $6a2d: $f0 $08
	ld   hl, sp+$08                                  ; $6a2f: $f8 $08
	ld   hl, sp+$04                                  ; $6a31: $f8 $04
	db   $fc                                         ; $6a33: $fc
	inc  b                                           ; $6a34: $04
	db   $fc                                         ; $6a35: $fc
	ld   [bc], a                                     ; $6a36: $02
	cp   $02                                         ; $6a37: $fe $02
	cp   $0c                                         ; $6a39: $fe $0c
	db   $fc                                         ; $6a3b: $fc
	ldh  a, [$f0]                                    ; $6a3c: $f0 $f0
	add  b                                           ; $6a3e: $80
	add  b                                           ; $6a3f: $80
	ld   b, $06                                      ; $6a40: $06 $06
	add  hl, bc                                      ; $6a42: $09
	rrca                                             ; $6a43: $0f
	ld   [$110f], sp                                 ; $6a44: $08 $0f $11
	rra                                              ; $6a47: $1f
	inc  de                                          ; $6a48: $13
	ld   e, $13                                      ; $6a49: $1e $13
	ld   e, $27                                      ; $6a4b: $1e $27
	inc  a                                           ; $6a4d: $3c
	cpl                                              ; $6a4e: $2f
	jr   c, jr_026_6ab0                              ; $6a4f: $38 $5f

	ld   a, e                                        ; $6a51: $7b
	ld   e, [hl]                                     ; $6a52: $5e
	ld   [hl], d                                     ; $6a53: $72
	cp   a                                           ; $6a54: $bf
	db   $e3                                         ; $6a55: $e3
	ld   a, [hl]                                     ; $6a56: $7e
	ld   h, d                                        ; $6a57: $62
	ccf                                              ; $6a58: $3f
	jr   nz, jr_026_6a7a                             ; $6a59: $20 $1f

	db   $10                                         ; $6a5b: $10
	rrca                                             ; $6a5c: $0f
	ld   [$1717], sp                                 ; $6a5d: $08 $17 $17
	jr   c, jr_026_6a9a                              ; $6a60: $38 $38

	ld   c, c                                        ; $6a62: $49
	ld   a, c                                        ; $6a63: $79
	adc  a                                           ; $6a64: $8f
	cp   $8f                                         ; $6a65: $fe $8f
	ld   hl, sp-$71                                  ; $6a67: $f8 $8f
	ld   hl, sp-$71                                  ; $6a69: $f8 $8f
	db   $fc                                         ; $6a6b: $fc
	adc  e                                           ; $6a6c: $8b
	cp   $c9                                         ; $6a6d: $fe $c9
	ld   a, a                                        ; $6a6f: $7f
	call nz, $c4ff                                   ; $6a70: $c4 $ff $c4
	ld   a, a                                        ; $6a73: $7f
	db   $e4                                         ; $6a74: $e4
	ccf                                              ; $6a75: $3f
	ldh  a, [c]                                      ; $6a76: $f2
	ccf                                              ; $6a77: $3f
	db   $ed                                         ; $6a78: $ed
	ccf                                              ; $6a79: $3f

jr_026_6a7a:
	di                                               ; $6a7a: $f3
	rra                                              ; $6a7b: $1f
	ld   hl, sp+$7f                                  ; $6a7c: $f8 $7f
	call nz, $00c7                                   ; $6a7e: $c4 $c7 $00
	nop                                              ; $6a81: $00
	ldh  [$e0], a                                    ; $6a82: $e0 $e0
	ldh  a, [rAUD1SWEEP]                             ; $6a84: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $6a86: $f0 $10
	ldh  [rAUD4LEN], a                               ; $6a88: $e0 $20
	ldh  [rAUD4LEN], a                               ; $6a8a: $e0 $20
	ret  nz                                          ; $6a8c: $c0

	ld   b, b                                        ; $6a8d: $40

jr_026_6a8e:
	ldh  [$60], a                                    ; $6a8e: $e0 $60
	ld   hl, sp-$68                                  ; $6a90: $f8 $98
	cp   $c6                                         ; $6a92: $fe $c6
	ld   hl, sp-$78                                  ; $6a94: $f8 $88
	ldh  a, [$90]                                    ; $6a96: $f0 $90
	ldh  [hScriptOpcodeParams], a                                    ; $6a98: $e0 $a0

jr_026_6a9a:
	ld   b, b                                        ; $6a9a: $40
	ret  nz                                          ; $6a9b: $c0

	jr   nc, jr_026_6a8e                             ; $6a9c: $30 $f0

	ld   [$5bf8], sp                                 ; $6a9e: $08 $f8 $5b
	ld   e, e                                        ; $6aa1: $5b
	ld   d, e                                        ; $6aa2: $53
	ld   d, d                                        ; $6aa3: $52
	and  e                                           ; $6aa4: $a3
	and  e                                           ; $6aa5: $a3
	ld   h, d                                        ; $6aa6: $62
	ld   h, e                                        ; $6aa7: $63
	jr   nz, jr_026_6aca                             ; $6aa8: $20 $20

	db   $10                                         ; $6aaa: $10
	db   $10                                         ; $6aab: $10
	ld   [$1708], sp                                 ; $6aac: $08 $08 $17
	rla                                              ; $6aaf: $17

jr_026_6ab0:
	jr   z, jr_026_6af1                              ; $6ab0: $28 $3f

	cpl                                              ; $6ab2: $2f
	ccf                                              ; $6ab3: $3f
	rra                                              ; $6ab4: $1f
	jr   jr_026_6ad6                                 ; $6ab5: $18 $1f

	jr   jr_026_6ae8                                 ; $6ab7: $18 $2f

	jr   c, jr_026_6b0a                              ; $6ab9: $38 $4f

	ld   a, b                                        ; $6abb: $78
	rst  $30                                         ; $6abc: $f7
	sub  h                                           ; $6abd: $94
	ld   h, a                                        ; $6abe: $67
	ld   h, [hl]                                     ; $6abf: $66
	call nz, $44c4                                   ; $6ac0: $c4 $c4 $44
	ld   b, h                                        ; $6ac3: $44
	inc  h                                           ; $6ac4: $24
	inc  h                                           ; $6ac5: $24
	ld   [hl-], a                                    ; $6ac6: $32
	ld   [hl-], a                                    ; $6ac7: $32
	dec  l                                           ; $6ac8: $2d
	dec  l                                           ; $6ac9: $2d

jr_026_6aca:
	inc  de                                          ; $6aca: $13
	inc  de                                          ; $6acb: $13
	ld   a, b                                        ; $6acc: $78
	ld   a, b                                        ; $6acd: $78
	db   $fc                                         ; $6ace: $fc
	call nz, $9ffb                                   ; $6acf: $c4 $fb $9f
	and  $3e                                         ; $6ad2: $e6 $3e
	push bc                                          ; $6ad4: $c5
	ld   a, a                                        ; $6ad5: $7f

jr_026_6ad6:
	jp   $e37e                                       ; $6ad6: $c3 $7e $e3


	ld   a, $f9                                      ; $6ad9: $3e $f9
	rra                                              ; $6adb: $1f
	db   $fd                                         ; $6adc: $fd
	rrca                                             ; $6add: $0f
	rst  $38                                         ; $6ade: $ff
	ld   [hl-], a                                    ; $6adf: $32
	sbc  b                                           ; $6ae0: $98
	sbc  b                                           ; $6ae1: $98
	add  $c6                                         ; $6ae2: $c6 $c6
	adc  b                                           ; $6ae4: $88
	adc  b                                           ; $6ae5: $88
	sub  b                                           ; $6ae6: $90
	sub  b                                           ; $6ae7: $90

jr_026_6ae8:
	and  b                                           ; $6ae8: $a0
	and  b                                           ; $6ae9: $a0
	ld   b, b                                        ; $6aea: $40
	ld   b, b                                        ; $6aeb: $40
	jr   nc, jr_026_6b1e                             ; $6aec: $30 $30

	ld   [$f008], sp                                 ; $6aee: $08 $08 $f0

jr_026_6af1:
	ldh  a, [rP1]                                    ; $6af1: $f0 $00
	nop                                              ; $6af3: $00
	add  b                                           ; $6af4: $80
	add  b                                           ; $6af5: $80
	ret  nz                                          ; $6af6: $c0

	ld   b, b                                        ; $6af7: $40
	ret  nz                                          ; $6af8: $c0

	ld   b, b                                        ; $6af9: $40
	ldh  [rAUD4LEN], a                               ; $6afa: $e0 $20
	ldh  [hScriptOpcodeParams], a                                    ; $6afc: $e0 $a0
	ldh  [$60], a                                    ; $6afe: $e0 $60
	rrca                                             ; $6b00: $0f
	add  hl, bc                                      ; $6b01: $09
	rrca                                             ; $6b02: $0f
	ld   [$101f], sp                                 ; $6b03: $08 $1f $10
	rra                                              ; $6b06: $1f
	db   $10                                         ; $6b07: $10
	rra                                              ; $6b08: $1f
	db   $10                                         ; $6b09: $10

jr_026_6b0a:
	rra                                              ; $6b0a: $1f
	db   $10                                         ; $6b0b: $10
	rra                                              ; $6b0c: $1f
	db   $10                                         ; $6b0d: $10
	rra                                              ; $6b0e: $1f
	jr   jr_026_6b28                                 ; $6b0f: $18 $17

	inc  e                                           ; $6b11: $1c
	dec  bc                                          ; $6b12: $0b
	rrca                                             ; $6b13: $0f
	inc  b                                           ; $6b14: $04
	rlca                                             ; $6b15: $07
	inc  bc                                          ; $6b16: $03
	inc  bc                                          ; $6b17: $03
	nop                                              ; $6b18: $00
	nop                                              ; $6b19: $00
	nop                                              ; $6b1a: $00
	nop                                              ; $6b1b: $00
	nop                                              ; $6b1c: $00
	nop                                              ; $6b1d: $00

jr_026_6b1e:
	nop                                              ; $6b1e: $00
	nop                                              ; $6b1f: $00
	rst  $38                                         ; $6b20: $ff
	pop  bc                                          ; $6b21: $c1
	cp   $03                                         ; $6b22: $fe $03
	cp   $03                                         ; $6b24: $fe $03
	cp   $03                                         ; $6b26: $fe $03

jr_026_6b28:
	cp   $03                                         ; $6b28: $fe $03
	cp   $03                                         ; $6b2a: $fe $03
	cp   $03                                         ; $6b2c: $fe $03
	db   $fc                                         ; $6b2e: $fc
	rlca                                             ; $6b2f: $07
	ld   hl, sp+$0f                                  ; $6b30: $f8 $0f
	ldh  a, [rIE]                                    ; $6b32: $f0 $ff
	ld   bc, $ffff                                   ; $6b34: $01 $ff $ff
	rst  $38                                         ; $6b37: $ff
	ld   a, a                                        ; $6b38: $7f
	ld   a, l                                        ; $6b39: $7d
	scf                                              ; $6b3a: $37
	scf                                              ; $6b3b: $37
	nop                                              ; $6b3c: $00
	nop                                              ; $6b3d: $00
	nop                                              ; $6b3e: $00
	nop                                              ; $6b3f: $00
	ret  nc                                          ; $6b40: $d0

	ldh  a, [rAUD1SWEEP]                             ; $6b41: $f0 $10
	ldh  a, [rAUD4LEN]                               ; $6b43: $f0 $20
	ldh  [rAUD1SWEEP], a                             ; $6b45: $e0 $10
	ldh  a, [$08]                                    ; $6b47: $f0 $08
	ld   hl, sp-$7c                                  ; $6b49: $f8 $84
	db   $fc                                         ; $6b4b: $fc
	add  h                                           ; $6b4c: $84
	db   $fc                                         ; $6b4d: $fc
	ld   c, b                                        ; $6b4e: $48
	ld   hl, sp+$70                                  ; $6b4f: $f8 $70
	ldh  a, [$80]                                    ; $6b51: $f0 $80
	add  b                                           ; $6b53: $80
	add  b                                           ; $6b54: $80
	add  b                                           ; $6b55: $80
	nop                                              ; $6b56: $00
	nop                                              ; $6b57: $00
	nop                                              ; $6b58: $00
	nop                                              ; $6b59: $00
	nop                                              ; $6b5a: $00
	nop                                              ; $6b5b: $00
	nop                                              ; $6b5c: $00
	nop                                              ; $6b5d: $00
	nop                                              ; $6b5e: $00
	nop                                              ; $6b5f: $00
	nop                                              ; $6b60: $00
	nop                                              ; $6b61: $00
	rrca                                             ; $6b62: $0f
	rrca                                             ; $6b63: $0f
	rra                                              ; $6b64: $1f
	ld   de, $131e                                   ; $6b65: $11 $1e $13
	ld   e, $13                                      ; $6b68: $1e $13
	inc  e                                           ; $6b6a: $1c
	rla                                              ; $6b6b: $17
	inc  e                                           ; $6b6c: $1c
	rla                                              ; $6b6d: $17
	inc  e                                           ; $6b6e: $1c
	rla                                              ; $6b6f: $17
	ld   [$090f], sp                                 ; $6b70: $08 $0f $09
	rrca                                             ; $6b73: $0f
	inc  de                                          ; $6b74: $13
	rra                                              ; $6b75: $1f
	dec  d                                           ; $6b76: $15
	rra                                              ; $6b77: $1f
	add  hl, bc                                      ; $6b78: $09
	rrca                                             ; $6b79: $0f
	jr   jr_026_6b9b                                 ; $6b7a: $18 $1f

	jr   nz, jr_026_6bbd                             ; $6b7c: $20 $3f

	ld   b, e                                        ; $6b7e: $43
	ld   a, a                                        ; $6b7f: $7f
	jp   $24c3                                       ; $6b80: $c3 $c3 $24


	rst  $20                                         ; $6b83: $e7
	jr   @+$01                                       ; $6b84: $18 $ff

	jr   @+$01                                       ; $6b86: $18 $ff

	ld   h, [hl]                                     ; $6b88: $66
	rst  $38                                         ; $6b89: $ff
	ld   a, [hl]                                     ; $6b8a: $7e
	db   $db                                         ; $6b8b: $db
	ld   a, [hl]                                     ; $6b8c: $7e
	jp   $c37e                                       ; $6b8d: $c3 $7e $c3


	rst  $38                                         ; $6b90: $ff
	add  c                                           ; $6b91: $81
	rst  $38                                         ; $6b92: $ff
	inc  h                                           ; $6b93: $24

jr_026_6b94:
	rst  $38                                         ; $6b94: $ff
	rst  $20                                         ; $6b95: $e7

jr_026_6b96:
	rst  $38                                         ; $6b96: $ff
	nop                                              ; $6b97: $00

jr_026_6b98:
	rst  $38                                         ; $6b98: $ff
	nop                                              ; $6b99: $00
	rst  $38                                         ; $6b9a: $ff

jr_026_6b9b:
	add  c                                           ; $6b9b: $81
	rst  $38                                         ; $6b9c: $ff
	rst  $38                                         ; $6b9d: $ff
	ld   b, d                                        ; $6b9e: $42
	ld   b, d                                        ; $6b9f: $42
	nop                                              ; $6ba0: $00
	nop                                              ; $6ba1: $00
	ldh  a, [$f0]                                    ; $6ba2: $f0 $f0
	ld   hl, sp-$78                                  ; $6ba4: $f8 $88
	ld   a, b                                        ; $6ba6: $78
	ret  z                                           ; $6ba7: $c8

	ld   a, b                                        ; $6ba8: $78
	ret  z                                           ; $6ba9: $c8

	jr   c, jr_026_6b94                              ; $6baa: $38 $e8

	jr   c, jr_026_6b96                              ; $6bac: $38 $e8

	jr   c, jr_026_6b98                              ; $6bae: $38 $e8

	db   $10                                         ; $6bb0: $10
	ldh  a, [$90]                                    ; $6bb1: $f0 $90
	ldh  a, [$c8]                                    ; $6bb3: $f0 $c8
	ld   hl, sp-$58                                  ; $6bb5: $f8 $a8
	ld   hl, sp-$70                                  ; $6bb7: $f8 $90
	ldh  a, [rAUD2LOW]                               ; $6bb9: $f0 $18
	ld   hl, sp+$04                                  ; $6bbb: $f8 $04

jr_026_6bbd:
	db   $fc                                         ; $6bbd: $fc
	jp   nz, $08fe                                   ; $6bbe: $c2 $fe $08

	ld   [TurnOnLCD], sp                                 ; $6bc1: $08 $09 $09
	inc  de                                          ; $6bc4: $13
	inc  de                                          ; $6bc5: $13
	dec  d                                           ; $6bc6: $15
	dec  d                                           ; $6bc7: $15
	add  hl, bc                                      ; $6bc8: $09
	add  hl, bc                                      ; $6bc9: $09
	jr   jr_026_6be4                                 ; $6bca: $18 $18

	jr   nz, jr_026_6bee                             ; $6bcc: $20 $20

	ld   b, e                                        ; $6bce: $43
	ld   b, e                                        ; $6bcf: $43
	dec  a                                           ; $6bd0: $3d
	ccf                                              ; $6bd1: $3f
	dec  b                                           ; $6bd2: $05
	rlca                                             ; $6bd3: $07
	inc  b                                           ; $6bd4: $04
	rlca                                             ; $6bd5: $07
	ld   [$100f], sp                                 ; $6bd6: $08 $0f $10
	rra                                              ; $6bd9: $1f
	ld   de, $261f                                   ; $6bda: $11 $1f $26
	ld   a, $49                                      ; $6bdd: $3e $49
	ld   a, c                                        ; $6bdf: $79
	add  c                                           ; $6be0: $81
	add  c                                           ; $6be1: $81
	nop                                              ; $6be2: $00
	nop                                              ; $6be3: $00

jr_026_6be4:
	nop                                              ; $6be4: $00
	nop                                              ; $6be5: $00
	nop                                              ; $6be6: $00
	nop                                              ; $6be7: $00
	nop                                              ; $6be8: $00
	nop                                              ; $6be9: $00
	add  c                                           ; $6bea: $81
	add  c                                           ; $6beb: $81
	rst  $38                                         ; $6bec: $ff
	rst  $38                                         ; $6bed: $ff

jr_026_6bee:
	jp   $c37e                                       ; $6bee: $c3 $7e $c3


	ld   a, [hl]                                     ; $6bf1: $7e
	rst  $38                                         ; $6bf2: $ff
	inc  a                                           ; $6bf3: $3c
	rst  $38                                         ; $6bf4: $ff
	add  c                                           ; $6bf5: $81
	rst  $38                                         ; $6bf6: $ff
	add  c                                           ; $6bf7: $81
	rst  $38                                         ; $6bf8: $ff
	add  c                                           ; $6bf9: $81
	ld   a, [hl]                                     ; $6bfa: $7e
	ld   a, [hl]                                     ; $6bfb: $7e
	rst  $38                                         ; $6bfc: $ff
	add  c                                           ; $6bfd: $81
	rst  $38                                         ; $6bfe: $ff
	nop                                              ; $6bff: $00
	db   $10                                         ; $6c00: $10
	db   $10                                         ; $6c01: $10
	sub  b                                           ; $6c02: $90
	sub  b                                           ; $6c03: $90
	ret  z                                           ; $6c04: $c8

	ret  z                                           ; $6c05: $c8

	xor  b                                           ; $6c06: $a8
	xor  b                                           ; $6c07: $a8
	sub  b                                           ; $6c08: $90
	sub  b                                           ; $6c09: $90
	jr   jr_026_6c24                                 ; $6c0a: $18 $18

	inc  b                                           ; $6c0c: $04
	inc  b                                           ; $6c0d: $04
	jp   nz, $bcc2                                   ; $6c0e: $c2 $c2 $bc

	db   $fc                                         ; $6c11: $fc
	and  b                                           ; $6c12: $a0
	ldh  [rAUD4LEN], a                               ; $6c13: $e0 $20
	ldh  [rAUD1SWEEP], a                             ; $6c15: $e0 $10
	ldh  a, [$08]                                    ; $6c17: $f0 $08
	ld   hl, sp-$78                                  ; $6c19: $f8 $88
	ld   hl, sp+$64                                  ; $6c1b: $f8 $64
	ld   a, h                                        ; $6c1d: $7c
	sub  d                                           ; $6c1e: $92
	sbc  [hl]                                        ; $6c1f: $9e
	di                                               ; $6c20: $f3
	sub  d                                           ; $6c21: $92
	ld   h, a                                        ; $6c22: $67
	ld   h, [hl]                                     ; $6c23: $66

jr_026_6c24:
	rlca                                             ; $6c24: $07
	ld   b, $0b                                      ; $6c25: $06 $0b
	ld   c, $13                                      ; $6c27: $0e $13
	ld   e, $13                                      ; $6c29: $1e $13
	ld   e, $19                                      ; $6c2b: $1e $19
	rra                                              ; $6c2d: $1f
	dec  b                                           ; $6c2e: $05
	rlca                                             ; $6c2f: $07
	inc  b                                           ; $6c30: $04
	rlca                                             ; $6c31: $07
	ld   [$100f], sp                                 ; $6c32: $08 $0f $10
	rra                                              ; $6c35: $1f
	ld   [$070f], sp                                 ; $6c36: $08 $0f $07
	rlca                                             ; $6c39: $07
	nop                                              ; $6c3a: $00
	nop                                              ; $6c3b: $00
	nop                                              ; $6c3c: $00
	nop                                              ; $6c3d: $00
	nop                                              ; $6c3e: $00
	nop                                              ; $6c3f: $00
	rst  $38                                         ; $6c40: $ff
	nop                                              ; $6c41: $00
	rst  $38                                         ; $6c42: $ff
	nop                                              ; $6c43: $00
	rst  $38                                         ; $6c44: $ff
	nop                                              ; $6c45: $00
	rst  $38                                         ; $6c46: $ff
	nop                                              ; $6c47: $00
	rst  $38                                         ; $6c48: $ff
	nop                                              ; $6c49: $00
	rst  $38                                         ; $6c4a: $ff
	nop                                              ; $6c4b: $00
	rst  $38                                         ; $6c4c: $ff
	nop                                              ; $6c4d: $00
	rst  $38                                         ; $6c4e: $ff
	nop                                              ; $6c4f: $00
	rst  $38                                         ; $6c50: $ff
	add  c                                           ; $6c51: $81
	ld   a, [hl]                                     ; $6c52: $7e
	rst  $38                                         ; $6c53: $ff
	nop                                              ; $6c54: $00
	rst  $38                                         ; $6c55: $ff
	rst  $38                                         ; $6c56: $ff
	rst  $38                                         ; $6c57: $ff
	ld   a, [hl]                                     ; $6c58: $7e
	ld   e, d                                        ; $6c59: $5a
	inc  a                                           ; $6c5a: $3c
	inc  a                                           ; $6c5b: $3c
	nop                                              ; $6c5c: $00
	nop                                              ; $6c5d: $00
	nop                                              ; $6c5e: $00
	nop                                              ; $6c5f: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c60: $cf
	ld   c, c                                        ; $6c61: $49
	and  $66                                         ; $6c62: $e6 $66
	ret  nc                                          ; $6c64: $d0

	ld   [hl], b                                     ; $6c65: $70
	ret  z                                           ; $6c66: $c8

	ld   a, b                                        ; $6c67: $78
	ret  z                                           ; $6c68: $c8

	ld   a, b                                        ; $6c69: $78
	ret  nc                                          ; $6c6a: $d0

	ld   [hl], b                                     ; $6c6b: $70
	sub  b                                           ; $6c6c: $90
	ldh  a, [$88]                                    ; $6c6d: $f0 $88
	ld   hl, sp+$10                                  ; $6c6f: $f8 $10
	ldh  a, [$08]                                    ; $6c71: $f0 $08
	ld   hl, sp+$08                                  ; $6c73: $f8 $08
	ld   hl, sp+$10                                  ; $6c75: $f8 $10
	ldh  a, [$e0]                                    ; $6c77: $f0 $e0
	ldh  [rP1], a                                    ; $6c79: $e0 $00
	nop                                              ; $6c7b: $00
	nop                                              ; $6c7c: $00
	nop                                              ; $6c7d: $00
	nop                                              ; $6c7e: $00
	nop                                              ; $6c7f: $00
	nop                                              ; $6c80: $00
	nop                                              ; $6c81: $00
	rlca                                             ; $6c82: $07
	rlca                                             ; $6c83: $07
	rrca                                             ; $6c84: $0f
	ld   [$080f], sp                                 ; $6c85: $08 $0f $08
	rlca                                             ; $6c88: $07
	inc  b                                           ; $6c89: $04
	rlca                                             ; $6c8a: $07
	inc  b                                           ; $6c8b: $04
	inc  bc                                          ; $6c8c: $03
	ld   [bc], a                                     ; $6c8d: $02
	rlca                                             ; $6c8e: $07
	ld   b, $1f                                      ; $6c8f: $06 $1f
	add  hl, de                                      ; $6c91: $19
	ld   a, a                                        ; $6c92: $7f
	ld   h, e                                        ; $6c93: $63
	rra                                              ; $6c94: $1f
	ld   de, $090f                                   ; $6c95: $11 $0f $09
	rlca                                             ; $6c98: $07
	dec  b                                           ; $6c99: $05
	ld   [bc], a                                     ; $6c9a: $02
	inc  bc                                          ; $6c9b: $03
	inc  c                                           ; $6c9c: $0c
	rrca                                             ; $6c9d: $0f
	db   $10                                         ; $6c9e: $10
	rra                                              ; $6c9f: $1f
	inc  e                                           ; $6ca0: $1c
	inc  e                                           ; $6ca1: $1c
	sub  d                                           ; $6ca2: $92
	sbc  [hl]                                        ; $6ca3: $9e
	pop  af                                          ; $6ca4: $f1
	ld   a, a                                        ; $6ca5: $7f
	pop  af                                          ; $6ca6: $f1
	rra                                              ; $6ca7: $1f
	pop  af                                          ; $6ca8: $f1
	rra                                              ; $6ca9: $1f
	pop  af                                          ; $6caa: $f1
	ccf                                              ; $6cab: $3f
	pop  de                                          ; $6cac: $d1
	ld   a, a                                        ; $6cad: $7f
	sub  e                                           ; $6cae: $93
	cp   $23                                         ; $6caf: $fe $23
	cp   $23                                         ; $6cb1: $fe $23
	cp   $27                                         ; $6cb3: $fe $27
	db   $fd                                         ; $6cb5: $fd
	ld   c, a                                        ; $6cb6: $4f
	db   $fc                                         ; $6cb7: $fc
	or   a                                           ; $6cb8: $b7
	db   $fc                                         ; $6cb9: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6cba: $cf
	ld   hl, sp+$1f                                  ; $6cbb: $f8 $1f
	cp   $23                                         ; $6cbd: $fe $23
	db   $e3                                         ; $6cbf: $e3
	ld   h, b                                        ; $6cc0: $60
	ld   h, b                                        ; $6cc1: $60
	sub  b                                           ; $6cc2: $90
	ldh  a, [rAUD1SWEEP]                             ; $6cc3: $f0 $10
	ldh  a, [$88]                                    ; $6cc5: $f0 $88
	ld   hl, sp-$38                                  ; $6cc7: $f8 $c8
	ld   a, b                                        ; $6cc9: $78
	ret  z                                           ; $6cca: $c8

	ld   a, b                                        ; $6ccb: $78
	db   $e4                                         ; $6ccc: $e4
	inc  a                                           ; $6ccd: $3c
	db   $f4                                         ; $6cce: $f4
	inc  e                                           ; $6ccf: $1c
	ld   a, [$fa1e]                                  ; $6cd0: $fa $1e $fa
	ld   c, [hl]                                     ; $6cd3: $4e
	db   $fd                                         ; $6cd4: $fd
	rst  ToBoot                                         ; $6cd5: $c7
	cp   $06                                         ; $6cd6: $fe $06
	db   $fc                                         ; $6cd8: $fc
	inc  b                                           ; $6cd9: $04
	ld   hl, sp+$08                                  ; $6cda: $f8 $08
	ldh  a, [rAUD1SWEEP]                             ; $6cdc: $f0 $10
	add  sp, -$18                                    ; $6cde: $e8 $e8
	add  hl, de                                      ; $6ce0: $19
	add  hl, de                                      ; $6ce1: $19
	ld   h, e                                        ; $6ce2: $63
	ld   h, e                                        ; $6ce3: $63
	ld   de, $0911                                   ; $6ce4: $11 $11 $09
	add  hl, bc                                      ; $6ce7: $09
	dec  b                                           ; $6ce8: $05
	dec  b                                           ; $6ce9: $05
	ld   [bc], a                                     ; $6cea: $02
	ld   [bc], a                                     ; $6ceb: $02
	inc  c                                           ; $6cec: $0c
	inc  c                                           ; $6ced: $0c
	db   $10                                         ; $6cee: $10
	db   $10                                         ; $6cef: $10
	rrca                                             ; $6cf0: $0f
	rrca                                             ; $6cf1: $0f
	nop                                              ; $6cf2: $00
	nop                                              ; $6cf3: $00
	ld   bc, $0301                                   ; $6cf4: $01 $01 $03
	ld   [bc], a                                     ; $6cf7: $02
	inc  bc                                          ; $6cf8: $03
	ld   [bc], a                                     ; $6cf9: $02
	rlca                                             ; $6cfa: $07
	inc  b                                           ; $6cfb: $04
	rlca                                             ; $6cfc: $07
	dec  b                                           ; $6cfd: $05
	rlca                                             ; $6cfe: $07

Jump_026_6cff:
	ld   b, $22                                      ; $6cff: $06 $22
	ld   [hl+], a                                    ; $6d01: $22
	ld   [hl+], a                                    ; $6d02: $22
	ld   [hl+], a                                    ; $6d03: $22
	inc  h                                           ; $6d04: $24
	inc  h                                           ; $6d05: $24
	ld   c, h                                        ; $6d06: $4c
	ld   c, h                                        ; $6d07: $4c
	or   h                                           ; $6d08: $b4
	or   h                                           ; $6d09: $b4
	ret  z                                           ; $6d0a: $c8

	ret  z                                           ; $6d0b: $c8

	ld   e, $1e                                      ; $6d0c: $1e $1e
	ccf                                              ; $6d0e: $3f
	inc  hl                                          ; $6d0f: $23
	rst  JumpTable                                         ; $6d10: $df
	ld   sp, hl                                      ; $6d11: $f9
	ld   h, a                                        ; $6d12: $67
	ld   a, h                                        ; $6d13: $7c
	and  e                                           ; $6d14: $a3
	cp   [hl]                                        ; $6d15: $be
	jp   $c77e                                       ; $6d16: $c3 $7e $c7


	ld   a, h                                        ; $6d19: $7c
	sbc  a                                           ; $6d1a: $9f
	ld   hl, sp+$3f                                  ; $6d1b: $f8 $3f
	ldh  a, [rIE]                                    ; $6d1d: $f0 $ff
	ld   c, h                                        ; $6d1f: $4c
	ld   a, [de]                                     ; $6d20: $1a
	ld   a, [de]                                     ; $6d21: $1a
	ld   a, [bc]                                     ; $6d22: $0a
	ld   a, [bc]                                     ; $6d23: $0a
	dec  b                                           ; $6d24: $05
	dec  b                                           ; $6d25: $05
	ld   b, $06                                      ; $6d26: $06 $06
	inc  b                                           ; $6d28: $04
	inc  b                                           ; $6d29: $04
	ld   [$1008], sp                                 ; $6d2a: $08 $08 $10
	db   $10                                         ; $6d2d: $10
	add  sp, -$18                                    ; $6d2e: $e8 $e8
	inc  d                                           ; $6d30: $14
	db   $fc                                         ; $6d31: $fc
	db   $f4                                         ; $6d32: $f4
	db   $fc                                         ; $6d33: $fc
	ld   hl, sp+$18                                  ; $6d34: $f8 $18
	ld   hl, sp+$18                                  ; $6d36: $f8 $18
	db   $f4                                         ; $6d38: $f4
	inc  e                                           ; $6d39: $1c
	ldh  a, [c]                                      ; $6d3a: $f2
	ld   e, $ef                                      ; $6d3b: $1e $ef
	add  hl, hl                                      ; $6d3d: $29
	and  $66                                         ; $6d3e: $e6 $66
	dec  bc                                          ; $6d40: $0b
	rrca                                             ; $6d41: $0f
	ld   [$040f], sp                                 ; $6d42: $08 $0f $04
	rlca                                             ; $6d45: $07
	ld   [$100f], sp                                 ; $6d46: $08 $0f $10
	rra                                              ; $6d49: $1f
	ld   hl, $213f                                   ; $6d4a: $21 $3f $21
	ccf                                              ; $6d4d: $3f
	ld   [de], a                                     ; $6d4e: $12
	rra                                              ; $6d4f: $1f
	ld   c, $0f                                      ; $6d50: $0e $0f
	ld   bc, $0101                                   ; $6d52: $01 $01 $01
	ld   bc, $0000                                   ; $6d55: $01 $00 $00
	nop                                              ; $6d58: $00
	nop                                              ; $6d59: $00
	nop                                              ; $6d5a: $00
	nop                                              ; $6d5b: $00
	nop                                              ; $6d5c: $00
	nop                                              ; $6d5d: $00
	nop                                              ; $6d5e: $00
	nop                                              ; $6d5f: $00
	rst  $38                                         ; $6d60: $ff
	add  e                                           ; $6d61: $83
	ld   a, a                                        ; $6d62: $7f
	ret  nz                                          ; $6d63: $c0

	ld   a, a                                        ; $6d64: $7f
	ret  nz                                          ; $6d65: $c0

	ld   a, a                                        ; $6d66: $7f
	ret  nz                                          ; $6d67: $c0

	ld   a, a                                        ; $6d68: $7f
	ret  nz                                          ; $6d69: $c0

	ld   a, a                                        ; $6d6a: $7f
	ret  nz                                          ; $6d6b: $c0

	ld   a, a                                        ; $6d6c: $7f
	ret  nz                                          ; $6d6d: $c0

	ccf                                              ; $6d6e: $3f
	ldh  [$1f], a                                    ; $6d6f: $e0 $1f
	ldh  a, [rIF]                                    ; $6d71: $f0 $0f
	rst  $38                                         ; $6d73: $ff
	add  b                                           ; $6d74: $80
	rst  $38                                         ; $6d75: $ff
	rst  $38                                         ; $6d76: $ff
	rst  $38                                         ; $6d77: $ff
	cp   $be                                         ; $6d78: $fe $be
	db   $ec                                         ; $6d7a: $ec
	db   $ec                                         ; $6d7b: $ec
	nop                                              ; $6d7c: $00
	nop                                              ; $6d7d: $00
	nop                                              ; $6d7e: $00
	nop                                              ; $6d7f: $00
	ldh  a, [$90]                                    ; $6d80: $f0 $90
	ldh  a, [rAUD1SWEEP]                             ; $6d82: $f0 $10
	ld   hl, sp+$08                                  ; $6d84: $f8 $08
	ld   hl, sp+$08                                  ; $6d86: $f8 $08
	ld   hl, sp+$08                                  ; $6d88: $f8 $08
	ld   hl, sp+$08                                  ; $6d8a: $f8 $08
	ld   hl, sp+$08                                  ; $6d8c: $f8 $08
	ld   hl, sp+$18                                  ; $6d8e: $f8 $18
	add  sp, $38                                     ; $6d90: $e8 $38
	ret  nc                                          ; $6d92: $d0

	ldh  a, [rAUD4LEN]                               ; $6d93: $f0 $20
	ldh  [$c0], a                                    ; $6d95: $e0 $c0
	ret  nz                                          ; $6d97: $c0

	nop                                              ; $6d98: $00
	nop                                              ; $6d99: $00
	nop                                              ; $6d9a: $00
	nop                                              ; $6d9b: $00
	nop                                              ; $6d9c: $00
	nop                                              ; $6d9d: $00
	nop                                              ; $6d9e: $00
	nop                                              ; $6d9f: $00
	nop                                              ; $6da0: $00
	nop                                              ; $6da1: $00
	inc  bc                                          ; $6da2: $03
	inc  bc                                          ; $6da3: $03
	rlca                                             ; $6da4: $07
	inc  b                                           ; $6da5: $04
	rlca                                             ; $6da6: $07
	inc  b                                           ; $6da7: $04
	inc  bc                                          ; $6da8: $03
	inc  bc                                          ; $6da9: $03
	nop                                              ; $6daa: $00
	nop                                              ; $6dab: $00
	ld   bc, $0101                                   ; $6dac: $01 $01 $01
	ld   bc, $0203                                   ; $6daf: $01 $03 $02
	inc  bc                                          ; $6db2: $03
	ld   [bc], a                                     ; $6db3: $02
	rlca                                             ; $6db4: $07
	inc  b                                           ; $6db5: $04
	rlca                                             ; $6db6: $07
	rlca                                             ; $6db7: $07
	nop                                              ; $6db8: $00
	nop                                              ; $6db9: $00
	ld   bc, $0101                                   ; $6dba: $01 $01 $01
	ld   bc, $0302                                   ; $6dbd: $01 $02 $03
	inc  bc                                          ; $6dc0: $03
	inc  bc                                          ; $6dc1: $03
	db   $e4                                         ; $6dc2: $e4
	rst  $20                                         ; $6dc3: $e7
	db   $fc                                         ; $6dc4: $fc
	rra                                              ; $6dc5: $1f
	db   $fc                                         ; $6dc6: $fc
	rlca                                             ; $6dc7: $07
	db   $fc                                         ; $6dc8: $fc
	rlca                                             ; $6dc9: $07
	cp   $83                                         ; $6dca: $fe $83
	cp   $43                                         ; $6dcc: $fe $43
	db   $fd                                         ; $6dce: $fd
	ld   b, a                                        ; $6dcf: $47
	ld   sp, hl                                      ; $6dd0: $f9
	cpl                                              ; $6dd1: $2f
	ldh  a, [$3f]                                    ; $6dd2: $f0 $3f
	ret  nz                                          ; $6dd4: $c0

	ld   a, a                                        ; $6dd5: $7f
	adc  c                                           ; $6dd6: $89
	rst  $38                                         ; $6dd7: $ff
	adc  c                                           ; $6dd8: $89
	rst  $38                                         ; $6dd9: $ff
	ld   [de], a                                     ; $6dda: $12
	rst  $38                                         ; $6ddb: $ff
	inc  hl                                          ; $6ddc: $23
	rst  $38                                         ; $6ddd: $ff
	ld   c, a                                        ; $6dde: $4f
	rst  $38                                         ; $6ddf: $ff
	ld   h, b                                        ; $6de0: $60
	ld   h, b                                        ; $6de1: $60
	sub  b                                           ; $6de2: $90
	ldh  a, [$50]                                    ; $6de3: $f0 $50
	ldh  a, [rOBP0]                                  ; $6de5: $f0 $48
	ld   hl, sp+$24                                  ; $6de7: $f8 $24
	db   $fc                                         ; $6de9: $fc
	ld   a, [hl+]                                    ; $6dea: $2a
	cp   $1d                                         ; $6deb: $fe $1d
	rst  $30                                         ; $6ded: $f7
	dec  e                                           ; $6dee: $1d
	rst  $30                                         ; $6def: $f7
	ld   e, $f2                                      ; $6df0: $1e $f2
	sbc  [hl]                                        ; $6df2: $9e
	ldh  a, [c]                                      ; $6df3: $f2
	sbc  a                                           ; $6df4: $9f
	db   $fd                                         ; $6df5: $fd
	ld   e, a                                        ; $6df6: $5f
	pop  af                                          ; $6df7: $f1
	ld   e, a                                        ; $6df8: $5f
	pop  af                                          ; $6df9: $f1
	cp   $a2                                         ; $6dfa: $fe $a2
	db   $fc                                         ; $6dfc: $fc
	inc  l                                           ; $6dfd: $2c
	ld   hl, sp-$18                                  ; $6dfe: $f8 $e8
	ld   [bc], a                                     ; $6e00: $02
	ld   [bc], a                                     ; $6e01: $02
	ld   [bc], a                                     ; $6e02: $02
	ld   [bc], a                                     ; $6e03: $02
	inc  b                                           ; $6e04: $04
	inc  b                                           ; $6e05: $04
	rlca                                             ; $6e06: $07
	rlca                                             ; $6e07: $07
	nop                                              ; $6e08: $00
	nop                                              ; $6e09: $00
	ld   bc, $0101                                   ; $6e0a: $01 $01 $01
	ld   bc, $0202                                   ; $6e0d: $01 $02 $02
	inc  bc                                          ; $6e10: $03
	inc  bc                                          ; $6e11: $03
	nop                                              ; $6e12: $00
	nop                                              ; $6e13: $00
	nop                                              ; $6e14: $00
	nop                                              ; $6e15: $00
	nop                                              ; $6e16: $00
	nop                                              ; $6e17: $00
	ld   bc, $0101                                   ; $6e18: $01 $01 $01
	ld   bc, $0101                                   ; $6e1b: $01 $01 $01
	ld   bc, $2901                                   ; $6e1e: $01 $01 $29
	add  hl, hl                                      ; $6e21: $29
	jr   nc, jr_026_6e54                             ; $6e22: $30 $30

	ld   b, b                                        ; $6e24: $40
	ld   b, b                                        ; $6e25: $40
	adc  c                                           ; $6e26: $89
	adc  c                                           ; $6e27: $89
	adc  c                                           ; $6e28: $89
	adc  c                                           ; $6e29: $89
	ld   [de], a                                     ; $6e2a: $12
	ld   [de], a                                     ; $6e2b: $12
	inc  hl                                          ; $6e2c: $23
	inc  hl                                          ; $6e2d: $23
	ld   c, a                                        ; $6e2e: $4f
	ld   c, a                                        ; $6e2f: $4f
	or   a                                           ; $6e30: $b7
	or   h                                           ; $6e31: $b4
	rrca                                             ; $6e32: $0f
	dec  bc                                          ; $6e33: $0b
	inc  c                                           ; $6e34: $0c
	rrca                                             ; $6e35: $0f
	db   $f4                                         ; $6e36: $f4
	rst  $30                                         ; $6e37: $f7
	ld   hl, sp+$0f                                  ; $6e38: $f8 $0f
	pop  af                                          ; $6e3a: $f1
	ccf                                              ; $6e3b: $3f
	rst  $38                                         ; $6e3c: $ff
	ld   b, [hl]                                     ; $6e3d: $46
	db   $fd                                         ; $6e3e: $fd
	daa                                              ; $6e3f: $27
	ld   [de], a                                     ; $6e40: $12
	ld   [de], a                                     ; $6e41: $12
	sub  d                                           ; $6e42: $92
	sub  d                                           ; $6e43: $92
	sub  c                                           ; $6e44: $91
	sub  c                                           ; $6e45: $91
	ld   d, c                                        ; $6e46: $51
	ld   d, c                                        ; $6e47: $51
	ld   d, c                                        ; $6e48: $51
	ld   d, c                                        ; $6e49: $51
	and  d                                           ; $6e4a: $a2
	and  d                                           ; $6e4b: $a2
	inc  l                                           ; $6e4c: $2c
	inc  l                                           ; $6e4d: $2c
	add  sp, -$18                                    ; $6e4e: $e8 $e8
	db   $e4                                         ; $6e50: $e4
	inc  a                                           ; $6e51: $3c
	db   $fc                                         ; $6e52: $fc
	sbc  h                                           ; $6e53: $9c

jr_026_6e54:
	ld   a, [hl]                                     ; $6e54: $7e
	jp   nz, $c27e                                   ; $6e55: $c2 $7e $c2

	cp   $82                                         ; $6e58: $fe $82
	db   $fc                                         ; $6e5a: $fc
	inc  b                                           ; $6e5b: $04
	ld   hl, sp+$08                                  ; $6e5c: $f8 $08
	ldh  a, [$30]                                    ; $6e5e: $f0 $30
	ld   [bc], a                                     ; $6e60: $02
	inc  bc                                          ; $6e61: $03
	inc  b                                           ; $6e62: $04
	rlca                                             ; $6e63: $07
	inc  b                                           ; $6e64: $04
	rlca                                             ; $6e65: $07
	ld   [$080f], sp                                 ; $6e66: $08 $0f $08
	rrca                                             ; $6e69: $0f
	ld   [$070f], sp                                 ; $6e6a: $08 $0f $07
	rlca                                             ; $6e6d: $07
	nop                                              ; $6e6e: $00
	nop                                              ; $6e6f: $00
	nop                                              ; $6e70: $00
	nop                                              ; $6e71: $00
	nop                                              ; $6e72: $00
	nop                                              ; $6e73: $00
	nop                                              ; $6e74: $00
	nop                                              ; $6e75: $00
	nop                                              ; $6e76: $00
	nop                                              ; $6e77: $00
	nop                                              ; $6e78: $00
	nop                                              ; $6e79: $00
	nop                                              ; $6e7a: $00
	nop                                              ; $6e7b: $00
	nop                                              ; $6e7c: $00
	nop                                              ; $6e7d: $00
	nop                                              ; $6e7e: $00
	nop                                              ; $6e7f: $00
	reti                                             ; $6e80: $d9


	rst  $38                                         ; $6e81: $ff
	ld   bc, $01ff                                   ; $6e82: $01 $ff $01
	rst  $38                                         ; $6e85: $ff
	ld   bc, $01ff                                   ; $6e86: $01 $ff $01
	rst  $38                                         ; $6e89: $ff
	nop                                              ; $6e8a: $00
	rst  $38                                         ; $6e8b: $ff
	nop                                              ; $6e8c: $00
	rst  $38                                         ; $6e8d: $ff
	add  b                                           ; $6e8e: $80
	rst  $38                                         ; $6e8f: $ff
	add  h                                           ; $6e90: $84
	rst  $38                                         ; $6e91: $ff
	adc  b                                           ; $6e92: $88
	rst  $38                                         ; $6e93: $ff
	ld   [hl], b                                     ; $6e94: $70
	ld   a, a                                        ; $6e95: $7f
	ld   a, a                                        ; $6e96: $7f
	ld   l, a                                        ; $6e97: $6f
	ld   a, h                                        ; $6e98: $7c
	ld   a, h                                        ; $6e99: $7c
	ld   [hl], b                                     ; $6e9a: $70
	ld   [hl], b                                     ; $6e9b: $70
	nop                                              ; $6e9c: $00
	nop                                              ; $6e9d: $00
	nop                                              ; $6e9e: $00
	nop                                              ; $6e9f: $00
	ld   hl, sp+$08                                  ; $6ea0: $f8 $08
	ld   hl, sp+$08                                  ; $6ea2: $f8 $08
	db   $fc                                         ; $6ea4: $fc
	inc  b                                           ; $6ea5: $04
	db   $fc                                         ; $6ea6: $fc
	inc  b                                           ; $6ea7: $04
	db   $fc                                         ; $6ea8: $fc
	inc  b                                           ; $6ea9: $04
	db   $fc                                         ; $6eaa: $fc
	add  h                                           ; $6eab: $84
	db   $fc                                         ; $6eac: $fc
	add  h                                           ; $6ead: $84
	db   $fc                                         ; $6eae: $fc
	add  h                                           ; $6eaf: $84
	ld   a, h                                        ; $6eb0: $7c
	call nz, $f838                                   ; $6eb1: $c4 $38 $f8
	ld   [$f0f8], sp                                 ; $6eb4: $08 $f8 $f0
	ldh  a, [rP1]                                    ; $6eb7: $f0 $00
	nop                                              ; $6eb9: $00
	nop                                              ; $6eba: $00
	nop                                              ; $6ebb: $00
	nop                                              ; $6ebc: $00
	nop                                              ; $6ebd: $00
	nop                                              ; $6ebe: $00
	nop                                              ; $6ebf: $00
	nop                                              ; $6ec0: $00
	nop                                              ; $6ec1: $00
	rlca                                             ; $6ec2: $07
	rlca                                             ; $6ec3: $07
	rrca                                             ; $6ec4: $0f
	ld   [$080f], sp                                 ; $6ec5: $08 $0f $08
	rlca                                             ; $6ec8: $07
	inc  b                                           ; $6ec9: $04
	rlca                                             ; $6eca: $07
	inc  b                                           ; $6ecb: $04
	inc  bc                                          ; $6ecc: $03
	ld   [bc], a                                     ; $6ecd: $02
	inc  bc                                          ; $6ece: $03
	ld   [bc], a                                     ; $6ecf: $02
	ld   bc, $0301                                   ; $6ed0: $01 $01 $03
	ld   [bc], a                                     ; $6ed3: $02
	rlca                                             ; $6ed4: $07
	inc  b                                           ; $6ed5: $04
	rrca                                             ; $6ed6: $0f
	ld   [$0407], sp                                 ; $6ed7: $08 $07 $04
	inc  bc                                          ; $6eda: $03
	ld   [bc], a                                     ; $6edb: $02
	dec  b                                           ; $6edc: $05
	rlca                                             ; $6edd: $07
	add  hl, bc                                      ; $6ede: $09
	rrca                                             ; $6edf: $0f
	inc  bc                                          ; $6ee0: $03
	inc  bc                                          ; $6ee1: $03
	add  a                                           ; $6ee2: $87
	add  h                                           ; $6ee3: $84
	rst  $20                                         ; $6ee4: $e7
	ld   h, h                                        ; $6ee5: $64
	rst  $38                                         ; $6ee6: $ff
	jr   @+$01                                       ; $6ee7: $18 $ff

	nop                                              ; $6ee9: $00
	rst  $38                                         ; $6eea: $ff
	inc  h                                           ; $6eeb: $24
	rst  $38                                         ; $6eec: $ff
	inc  h                                           ; $6eed: $24
	rst  $38                                         ; $6eee: $ff
	jp   nc, $0eff                                   ; $6eef: $d2 $ff $0e

	di                                               ; $6ef2: $f3
	ld   e, $f3                                      ; $6ef3: $1e $f3
	ld   e, $e3                                      ; $6ef5: $1e $e3
	ld   a, $e3                                      ; $6ef7: $3e $e3
	ld   a, $c9                                      ; $6ef9: $3e $c9
	rst  $38                                         ; $6efb: $ff
	ld   de, $10ff                                   ; $6efc: $11 $ff $10
	rst  $38                                         ; $6eff: $ff
	ld   h, b                                        ; $6f00: $60
	ld   h, b                                        ; $6f01: $60
	sub  b                                           ; $6f02: $90
	ldh  a, [$90]                                    ; $6f03: $f0 $90
	ldh  a, [$c8]                                    ; $6f05: $f0 $c8
	ld   a, b                                        ; $6f07: $78
	ret  z                                           ; $6f08: $c8

	ld   a, b                                        ; $6f09: $78
	ret  z                                           ; $6f0a: $c8

	ld   a, b                                        ; $6f0b: $78
	db   $e4                                         ; $6f0c: $e4
	inc  a                                           ; $6f0d: $3c
	db   $f4                                         ; $6f0e: $f4
	inc  e                                           ; $6f0f: $1c
	ld   a, [$fa0e]                                  ; $6f10: $fa $0e $fa
	ld   c, $fd                                      ; $6f13: $0e $fd
	rrca                                             ; $6f15: $0f
	or   $1e                                         ; $6f16: $f6 $1e
	db   $e4                                         ; $6f18: $e4
	inc  a                                           ; $6f19: $3c
	ret  z                                           ; $6f1a: $c8

	ld   a, b                                        ; $6f1b: $78
	adc  b                                           ; $6f1c: $88
	ld   hl, sp+$38                                  ; $6f1d: $f8 $38
	ld   hl, sp+$01                                  ; $6f1f: $f8 $01
	ld   bc, $0202                                   ; $6f21: $01 $02 $02
	inc  b                                           ; $6f24: $04
	inc  b                                           ; $6f25: $04
	ld   [$0408], sp                                 ; $6f26: $08 $08 $04
	inc  b                                           ; $6f29: $04
	ld   [bc], a                                     ; $6f2a: $02
	ld   [bc], a                                     ; $6f2b: $02
	dec  b                                           ; $6f2c: $05
	dec  b                                           ; $6f2d: $05
	add  hl, bc                                      ; $6f2e: $09
	add  hl, bc                                      ; $6f2f: $09
	ld   b, $06                                      ; $6f30: $06 $06
	nop                                              ; $6f32: $00
	nop                                              ; $6f33: $00
	nop                                              ; $6f34: $00
	nop                                              ; $6f35: $00
	ld   bc, $0301                                   ; $6f36: $01 $01 $03
	ld   [bc], a                                     ; $6f39: $02
	inc  bc                                          ; $6f3a: $03
	ld   [bc], a                                     ; $6f3b: $02
	rrca                                             ; $6f3c: $0f
	dec  c                                           ; $6f3d: $0d
	ld   c, $0b                                      ; $6f3e: $0e $0b
	ld   c, $0e                                      ; $6f40: $0e $0e
	ld   [de], a                                     ; $6f42: $12
	ld   [de], a                                     ; $6f43: $12
	ld   [de], a                                     ; $6f44: $12
	ld   [de], a                                     ; $6f45: $12
	ld   [hl+], a                                    ; $6f46: $22
	ld   [hl+], a                                    ; $6f47: $22
	ld   [hl+], a                                    ; $6f48: $22
	ld   [hl+], a                                    ; $6f49: $22
	ret                                              ; $6f4a: $c9


	ret                                              ; $6f4b: $c9


	ld   de, $1011                                   ; $6f4c: $11 $11 $10
	db   $10                                         ; $6f4f: $10
	rst  $28                                         ; $6f50: $ef
	rst  $38                                         ; $6f51: $ff
	ld   d, c                                        ; $6f52: $51
	ld   a, a                                        ; $6f53: $7f
	and  e                                           ; $6f54: $a3
	cp   $cf                                         ; $6f55: $fe $cf
	rst  $38                                         ; $6f57: $ff
	rst  $38                                         ; $6f58: $ff
	ld   sp, $21ff                                   ; $6f59: $31 $ff $21
	cp   $63                                         ; $6f5c: $fe $63
	call c, $0aff                                    ; $6f5e: $dc $ff $0a
	ld   a, [bc]                                     ; $6f61: $0a
	ld   a, [bc]                                     ; $6f62: $0a
	ld   a, [bc]                                     ; $6f63: $0a
	dec  c                                           ; $6f64: $0d
	dec  c                                           ; $6f65: $0d
	ld   d, $16                                      ; $6f66: $16 $16
	inc  h                                           ; $6f68: $24
	inc  h                                           ; $6f69: $24
	ld   c, b                                        ; $6f6a: $48
	ld   c, b                                        ; $6f6b: $48
	adc  b                                           ; $6f6c: $88
	adc  b                                           ; $6f6d: $88
	jr   c, jr_026_6fa8                              ; $6f6e: $38 $38

	call c, $ccf4                                    ; $6f70: $dc $f4 $cc
	ld   a, h                                        ; $6f73: $7c
	adc  [hl]                                        ; $6f74: $8e
	ld   a, [$face]                                  ; $6f75: $fa $ce $fa
	adc  $fa                                         ; $6f78: $ce $fa
	inc  h                                           ; $6f7a: $24
	db   $fc                                         ; $6f7b: $fc
	inc  h                                           ; $6f7c: $24
	db   $fc                                         ; $6f7d: $fc
	ld   e, $f2                                      ; $6f7e: $1e $f2
	inc  b                                           ; $6f80: $04
	rlca                                             ; $6f81: $07
	ld   b, $07                                      ; $6f82: $06 $07
	rrca                                             ; $6f84: $0f
	add  hl, bc                                      ; $6f85: $09
	rrca                                             ; $6f86: $0f
	add  hl, bc                                      ; $6f87: $09
	rlca                                             ; $6f88: $07
	dec  b                                           ; $6f89: $05
	rrca                                             ; $6f8a: $0f
	ld   a, [bc]                                     ; $6f8b: $0a
	rrca                                             ; $6f8c: $0f
	ld   a, [bc]                                     ; $6f8d: $0a
	rlca                                             ; $6f8e: $07
	rlca                                             ; $6f8f: $07
	nop                                              ; $6f90: $00
	nop                                              ; $6f91: $00
	ld   bc, $0101                                   ; $6f92: $01 $01 $01
	ld   bc, $0203                                   ; $6f95: $01 $03 $02
	inc  bc                                          ; $6f98: $03
	inc  bc                                          ; $6f99: $03
	inc  bc                                          ; $6f9a: $03
	inc  bc                                          ; $6f9b: $03
	nop                                              ; $6f9c: $00
	nop                                              ; $6f9d: $00
	nop                                              ; $6f9e: $00
	nop                                              ; $6f9f: $00
	ld   bc, $02ff                                   ; $6fa0: $01 $ff $02
	rst  $38                                         ; $6fa3: $ff
	inc  a                                           ; $6fa4: $3c
	rst  $38                                         ; $6fa5: $ff
	db   $fc                                         ; $6fa6: $fc
	rst  ToBoot                                         ; $6fa7: $c7

jr_026_6fa8:
	cp   $63                                         ; $6fa8: $fe $63
	cp   $93                                         ; $6faa: $fe $93
	cp   $4b                                         ; $6fac: $fe $4b
	rst  $38                                         ; $6fae: $ff
	ld   b, l                                        ; $6faf: $45
	rst  $38                                         ; $6fb0: $ff
	ldh  a, [c]                                      ; $6fb1: $f2
	rst  $38                                         ; $6fb2: $ff
	ld   e, d                                        ; $6fb3: $5a
	rst  $38                                         ; $6fb4: $ff
	ld   e, b                                        ; $6fb5: $58
	rst  $38                                         ; $6fb6: $ff
	sbc  a                                           ; $6fb7: $9f
	ld   hl, sp-$08                                  ; $6fb8: $f8 $f8
	ld   [hl], b                                     ; $6fba: $70
	ld   [hl], b                                     ; $6fbb: $70
	nop                                              ; $6fbc: $00
	nop                                              ; $6fbd: $00
	nop                                              ; $6fbe: $00
	nop                                              ; $6fbf: $00
	ld   e, $f2                                      ; $6fc0: $1e $f2
	inc  c                                           ; $6fc2: $0c
	db   $fc                                         ; $6fc3: $fc
	inc  b                                           ; $6fc4: $04
	db   $fc                                         ; $6fc5: $fc
	inc  b                                           ; $6fc6: $04
	db   $fc                                         ; $6fc7: $fc
	inc  h                                           ; $6fc8: $24
	db   $fc                                         ; $6fc9: $fc
	inc  h                                           ; $6fca: $24
	db   $fc                                         ; $6fcb: $fc
	ld   b, h                                        ; $6fcc: $44
	db   $fc                                         ; $6fcd: $fc
	ld   b, h                                        ; $6fce: $44
	db   $fc                                         ; $6fcf: $fc
	adc  b                                           ; $6fd0: $88
	ld   hl, sp-$78                                  ; $6fd1: $f8 $88
	ld   hl, sp-$30                                  ; $6fd3: $f8 $d0
	ld   [hl], b                                     ; $6fd5: $70
	ldh  [$e0], a                                    ; $6fd6: $e0 $e0
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
	rrca                                             ; $6fe2: $0f
	rrca                                             ; $6fe3: $0f
	rra                                              ; $6fe4: $1f
	db   $10                                         ; $6fe5: $10
	rra                                              ; $6fe6: $1f
	db   $10                                         ; $6fe7: $10
	rra                                              ; $6fe8: $1f
	db   $10                                         ; $6fe9: $10
	rra                                              ; $6fea: $1f
	db   $10                                         ; $6feb: $10
	rra                                              ; $6fec: $1f
	ld   [de], a                                     ; $6fed: $12
	rra                                              ; $6fee: $1f
	inc  e                                           ; $6fef: $1c
	rrca                                             ; $6ff0: $0f
	ld   [$101f], sp                                 ; $6ff1: $08 $1f $10
	ccf                                              ; $6ff4: $3f
	jr   nz, jr_026_7016                             ; $6ff5: $20 $1f

	db   $10                                         ; $6ff7: $10
	rrca                                             ; $6ff8: $0f
	ld   [$3c37], sp                                 ; $6ff9: $08 $37 $3c

jr_026_6ffc:
	ld   b, e                                        ; $6ffc: $43
	ld   a, [hl]                                     ; $6ffd: $7e
	ld   sp, $c33f                                   ; $6ffe: $31 $3f $c3
	jp   $ff3c                                       ; $7001: $c3 $3c $ff


	pop  bc                                          ; $7004: $c1
	rst  $38                                         ; $7005: $ff
	rst  $38                                         ; $7006: $ff
	ld   a, [hl]                                     ; $7007: $7e
	rst  $38                                         ; $7008: $ff
	nop                                              ; $7009: $00
	rst  $38                                         ; $700a: $ff
	nop                                              ; $700b: $00
	rst  $38                                         ; $700c: $ff
	ld   b, d                                        ; $700d: $42
	rst  $38                                         ; $700e: $ff
	inc  a                                           ; $700f: $3c
	rst  $38                                         ; $7010: $ff
	jr   @+$01                                       ; $7011: $18 $ff

	jr   jr_026_6ffc                                 ; $7013: $18 $e7

	inc  a                                           ; $7015: $3c

jr_026_7016:
	rst  $20                                         ; $7016: $e7
	inc  a                                           ; $7017: $3c
	jp   $817e                                       ; $7018: $c3 $7e $81


	rst  $38                                         ; $701b: $ff
	add  c                                           ; $701c: $81
	rst  $38                                         ; $701d: $ff
	ld   c, d                                        ; $701e: $4a
	rst  $38                                         ; $701f: $ff
	nop                                              ; $7020: $00
	nop                                              ; $7021: $00
	ldh  a, [$f0]                                    ; $7022: $f0 $f0
	ld   hl, sp+$08                                  ; $7024: $f8 $08
	ld   hl, sp+$08                                  ; $7026: $f8 $08
	ld   hl, sp+$08                                  ; $7028: $f8 $08
	ld   hl, sp+$08                                  ; $702a: $f8 $08
	ld   hl, sp+$48                                  ; $702c: $f8 $48
	ld   hl, sp+$38                                  ; $702e: $f8 $38
	ldh  a, [rAUD1SWEEP]                             ; $7030: $f0 $10
	ld   hl, sp+$08                                  ; $7032: $f8 $08
	db   $fc                                         ; $7034: $fc
	inc  b                                           ; $7035: $04
	ld   hl, sp+$08                                  ; $7036: $f8 $08
	ldh  a, [rAUD1SWEEP]                             ; $7038: $f0 $10
	db   $ec                                         ; $703a: $ec
	inc  a                                           ; $703b: $3c
	jp   nz, $8c7e                                   ; $703c: $c2 $7e $8c

	db   $fc                                         ; $703f: $fc
	ld   [$1008], sp                                 ; $7040: $08 $08 $10
	db   $10                                         ; $7043: $10
	jr   nz, jr_026_7066                             ; $7044: $20 $20

	db   $10                                         ; $7046: $10
	db   $10                                         ; $7047: $10
	ld   [$3408], sp                                 ; $7048: $08 $08 $34
	inc  [hl]                                        ; $704b: $34
	ld   b, d                                        ; $704c: $42
	ld   b, d                                        ; $704d: $42
	ld   sp, $0f31                                   ; $704e: $31 $31 $0f
	rrca                                             ; $7051: $0f
	dec  b                                           ; $7052: $05
	rlca                                             ; $7053: $07
	inc  b                                           ; $7054: $04
	rlca                                             ; $7055: $07
	add  hl, bc                                      ; $7056: $09
	rrca                                             ; $7057: $0f
	inc  de                                          ; $7058: $13
	ld   e, $13                                      ; $7059: $1e $13
	ld   e, $27                                      ; $705b: $1e $27
	ld   a, $6b                                      ; $705d: $3e $6b
	ld   a, d                                        ; $705f: $7a
	jr   @+$1a                                       ; $7060: $18 $18

	jr   jr_026_707c                                 ; $7062: $18 $18

	inc  h                                           ; $7064: $24
	inc  h                                           ; $7065: $24

jr_026_7066:
	inc  h                                           ; $7066: $24
	inc  h                                           ; $7067: $24
	ld   b, d                                        ; $7068: $42
	ld   b, d                                        ; $7069: $42
	add  c                                           ; $706a: $81
	add  c                                           ; $706b: $81
	add  c                                           ; $706c: $81
	add  c                                           ; $706d: $81
	ld   c, d                                        ; $706e: $4a
	ld   c, d                                        ; $706f: $4a
	or   l                                           ; $7070: $b5
	rst  $38                                         ; $7071: $ff
	jp   $e77e                                       ; $7072: $c3 $7e $e7


	cp   l                                           ; $7075: $bd
	rst  $20                                         ; $7076: $e7
	rst  $38                                         ; $7077: $ff
	rst  $38                                         ; $7078: $ff
	jr   @+$01                                       ; $7079: $18 $ff

	inc  h                                           ; $707b: $24

jr_026_707c:
	rst  $38                                         ; $707c: $ff
	jr   jr_026_7066                                 ; $707d: $18 $e7

	inc  a                                           ; $707f: $3c
	db   $10                                         ; $7080: $10
	db   $10                                         ; $7081: $10
	ld   [$0408], sp                                 ; $7082: $08 $08 $04
	inc  b                                           ; $7085: $04
	ld   [$1008], sp                                 ; $7086: $08 $08 $10
	db   $10                                         ; $7089: $10
	inc  l                                           ; $708a: $2c
	inc  l                                           ; $708b: $2c
	ld   b, d                                        ; $708c: $42
	ld   b, d                                        ; $708d: $42
	adc  h                                           ; $708e: $8c
	adc  h                                           ; $708f: $8c
	ldh  a, [$f0]                                    ; $7090: $f0 $f0
	and  b                                           ; $7092: $a0
	ldh  [rAUD4LEN], a                               ; $7093: $e0 $20
	ldh  [$90], a                                    ; $7095: $e0 $90
	ldh  a, [$c8]                                    ; $7097: $f0 $c8
	ld   a, b                                        ; $7099: $78
	ret  z                                           ; $709a: $c8

	ld   a, b                                        ; $709b: $78
	db   $e4                                         ; $709c: $e4
	ld   a, h                                        ; $709d: $7c
	sub  $5e                                         ; $709e: $d6 $5e
	di                                               ; $70a0: $f3
	sub  e                                           ; $70a1: $93
	ld   h, h                                        ; $70a2: $64
	ld   h, a                                        ; $70a3: $67
	inc  b                                           ; $70a4: $04
	rlca                                             ; $70a5: $07
	add  hl, bc                                      ; $70a6: $09
	rrca                                             ; $70a7: $0f
	inc  de                                          ; $70a8: $13
	ld   e, $17                                      ; $70a9: $1e $17
	inc  e                                           ; $70ab: $1c
	rra                                              ; $70ac: $1f
	dec  e                                           ; $70ad: $1d
	ccf                                              ; $70ae: $3f
	ld   [hl+], a                                    ; $70af: $22
	ccf                                              ; $70b0: $3f
	ld   [hl+], a                                    ; $70b1: $22
	rra                                              ; $70b2: $1f
	add  hl, de                                      ; $70b3: $19
	rlca                                             ; $70b4: $07
	inc  b                                           ; $70b5: $04
	inc  bc                                          ; $70b6: $03
	inc  bc                                          ; $70b7: $03
	nop                                              ; $70b8: $00
	nop                                              ; $70b9: $00
	nop                                              ; $70ba: $00
	nop                                              ; $70bb: $00
	nop                                              ; $70bc: $00
	nop                                              ; $70bd: $00
	nop                                              ; $70be: $00
	nop                                              ; $70bf: $00
	jp   $00ff                                       ; $70c0: $c3 $ff $00


jr_026_70c3:
	rst  $38                                         ; $70c3: $ff
	inc  a                                           ; $70c4: $3c
	rst  $38                                         ; $70c5: $ff

jr_026_70c6:
	rst  $38                                         ; $70c6: $ff
	jp   $3cff                                       ; $70c7: $c3 $ff $3c


	rst  $38                                         ; $70ca: $ff
	jp   Jump_026_6cff                               ; $70cb: $c3 $ff $6c


	rst  $38                                         ; $70ce: $ff
	ld   a, [hl]                                     ; $70cf: $7e
	rst  $38                                         ; $70d0: $ff
	ld   a, [hl]                                     ; $70d1: $7e
	rst  $38                                         ; $70d2: $ff
	ld   c, d                                        ; $70d3: $4a
	rst  $38                                         ; $70d4: $ff
	ld   b, d                                        ; $70d5: $42
	rst  $38                                         ; $70d6: $ff
	jp   Jump_026_667e                               ; $70d7: $c3 $7e $66


	inc  a                                           ; $70da: $3c
	inc  a                                           ; $70db: $3c
	nop                                              ; $70dc: $00
	nop                                              ; $70dd: $00
	nop                                              ; $70de: $00
	nop                                              ; $70df: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $70e0: $cf
	ret                                              ; $70e1: $c9


	ld   h, $e6                                      ; $70e2: $26 $e6
	jr   nz, jr_026_70c6                             ; $70e4: $20 $e0

	sub  b                                           ; $70e6: $90
	ldh  a, [$c8]                                    ; $70e7: $f0 $c8
	ld   a, b                                        ; $70e9: $78
	add  sp, $38                                     ; $70ea: $e8 $38
	ld   hl, sp-$48                                  ; $70ec: $f8 $b8
	db   $fc                                         ; $70ee: $fc
	ld   b, h                                        ; $70ef: $44
	db   $fc                                         ; $70f0: $fc
	ld   b, h                                        ; $70f1: $44
	ld   hl, sp-$68                                  ; $70f2: $f8 $98
	ldh  [rAUD4LEN], a                               ; $70f4: $e0 $20
	ret  nz                                          ; $70f6: $c0

	ret  nz                                          ; $70f7: $c0

	nop                                              ; $70f8: $00
	nop                                              ; $70f9: $00
	nop                                              ; $70fa: $00
	nop                                              ; $70fb: $00
	nop                                              ; $70fc: $00
	nop                                              ; $70fd: $00
	nop                                              ; $70fe: $00
	nop                                              ; $70ff: $00
	dec  c                                           ; $7100: $0d
	dec  c                                           ; $7101: $0d
	inc  de                                          ; $7102: $13
	ld   e, $2b                                      ; $7103: $1e $2b
	ld   [hl], $25                                   ; $7105: $36 $25
	ccf                                              ; $7107: $3f
	jr   jr_026_7129                                 ; $7108: $18 $1f

	ld   a, [bc]                                     ; $710a: $0a
	rrca                                             ; $710b: $0f
	add  hl, bc                                      ; $710c: $09
	ld   c, $0b                                      ; $710d: $0e $0b
	inc  c                                           ; $710f: $0c
	rlca                                             ; $7110: $07
	ld   b, $0f                                      ; $7111: $06 $0f
	add  hl, bc                                      ; $7113: $09
	inc  de                                          ; $7114: $13
	inc  e                                           ; $7115: $1c
	dec  de                                          ; $7116: $1b

jr_026_7117:
	ld   d, $0d                                      ; $7117: $16 $0d
	ld   c, $08                                      ; $7119: $0e $08
	rrca                                             ; $711b: $0f
	dec  c                                           ; $711c: $0d
	dec  bc                                          ; $711d: $0b
	ld   b, $06                                      ; $711e: $06 $06
	ret  c                                           ; $7120: $d8

	ret  c                                           ; $7121: $d8

	db   $e4                                         ; $7122: $e4
	inc  a                                           ; $7123: $3c

jr_026_7124:
	ld   [$d236], a                                  ; $7124: $ea $36 $d2
	ld   a, [hl]                                     ; $7127: $7e
	inc  c                                           ; $7128: $0c

jr_026_7129:
	db   $fc                                         ; $7129: $fc
	jr   z, jr_026_7124                              ; $712a: $28 $f8

	ret  z                                           ; $712c: $c8

	jr   c, jr_026_7117                              ; $712d: $38 $e8

	sbc  b                                           ; $712f: $98
	ldh  a, [$30]                                    ; $7130: $f0 $30
	ld   hl, sp-$38                                  ; $7132: $f8 $c8
	db   $e4                                         ; $7134: $e4
	inc  e                                           ; $7135: $1c
	db   $ec                                         ; $7136: $ec
	inc  [hl]                                        ; $7137: $34
	ret  c                                           ; $7138: $d8

	jr   c, jr_026_70c3                              ; $7139: $38 $88

	ld   a, b                                        ; $713b: $78
	ret  c                                           ; $713c: $d8

	add  sp, $30                                     ; $713d: $e8 $30
	jr   nc, jr_026_7148                             ; $713f: $30 $07

	rlca                                             ; $7141: $07
	add  hl, bc                                      ; $7142: $09
	rrca                                             ; $7143: $0f
	inc  d                                           ; $7144: $14
	dec  de                                          ; $7145: $1b
	db   $10                                         ; $7146: $10
	rra                                              ; $7147: $1f

jr_026_7148:
	jr   @+$21                                       ; $7148: $18 $1f

	db   $10                                         ; $714a: $10
	rra                                              ; $714b: $1f
	db   $10                                         ; $714c: $10
	rra                                              ; $714d: $1f
	ld   [$060f], sp                                 ; $714e: $08 $0f $06
	rlca                                             ; $7151: $07
	rrca                                             ; $7152: $0f
	ld   [$0b0c], sp                                 ; $7153: $08 $0c $0b
	ld   c, $0b                                      ; $7156: $0e $0b
	ld   e, $13                                      ; $7158: $1e $13
	dec  e                                           ; $715a: $1d
	inc  de                                          ; $715b: $13
	inc  c                                           ; $715c: $0c
	dec  bc                                          ; $715d: $0b
	rlca                                             ; $715e: $07
	rlca                                             ; $715f: $07

jr_026_7160:
	ldh  a, [$f0]                                    ; $7160: $f0 $f0
	add  sp, $38                                     ; $7162: $e8 $38
	add  sp, -$48                                    ; $7164: $e8 $b8
	jr   jr_026_7160                                 ; $7166: $18 $f8

	ld   [$98f8], sp                                 ; $7168: $08 $f8 $98
	ld   hl, sp+$68                                  ; $716b: $f8 $68
	sbc  b                                           ; $716d: $98
	ld   hl, sp+$28                                  ; $716e: $f8 $28
	ldh  a, [rAUD1SWEEP]                             ; $7170: $f0 $10
	ldh  a, [$f0]                                    ; $7172: $f0 $f0
	add  sp, $18                                     ; $7174: $e8 $18
	ld   h, h                                        ; $7176: $64
	sbc  h                                           ; $7177: $9c
	inc  d                                           ; $7178: $14
	db   $fc                                         ; $7179: $fc
	call z, $ecfc                                    ; $717a: $cc $fc $ec
	ld   [hl], h                                     ; $717d: $74
	ld   hl, sp-$08                                  ; $717e: $f8 $f8
	ld   bc, $0201                                   ; $7180: $01 $01 $02
	inc  bc                                          ; $7183: $03
	ld   b, $07                                      ; $7184: $06 $07
	ld   a, [bc]                                     ; $7186: $0a
	rrca                                             ; $7187: $0f
	add  hl, bc                                      ; $7188: $09
	rrca                                             ; $7189: $0f
	ld   [$080f], sp                                 ; $718a: $08 $0f $08
	rrca                                             ; $718d: $0f
	inc  b                                           ; $718e: $04
	rlca                                             ; $718f: $07
	inc  bc                                          ; $7190: $03
	inc  bc                                          ; $7191: $03
	rlca                                             ; $7192: $07
	inc  b                                           ; $7193: $04
	rlca                                             ; $7194: $07
	inc  b                                           ; $7195: $04
	rrca                                             ; $7196: $0f
	ld   [$1817], sp                                 ; $7197: $08 $17 $18

jr_026_719a:
	rla                                              ; $719a: $17
	jr   jr_026_71ac                                 ; $719b: $18 $0f

	inc  c                                           ; $719d: $0c
	inc  bc                                          ; $719e: $03
	inc  bc                                          ; $719f: $03

jr_026_71a0:
	ldh  [$e0], a                                    ; $71a0: $e0 $e0
	ldh  a, [$90]                                    ; $71a2: $f0 $90
	ld   [hl], b                                     ; $71a4: $70
	ret  nc                                          ; $71a5: $d0

	jr   z, jr_026_71a0                              ; $71a6: $28 $f8

	inc  b                                           ; $71a8: $04
	db   $fc                                         ; $71a9: $fc
	inc  d                                           ; $71aa: $14
	db   $fc                                         ; $71ab: $fc

jr_026_71ac:
	inc  c                                           ; $71ac: $0c
	db   $f4                                         ; $71ad: $f4
	inc  e                                           ; $71ae: $1c
	db   $e4                                         ; $71af: $e4
	jr   jr_026_719a                                 ; $71b0: $18 $e8

	ldh  a, [rSVBK]                                  ; $71b2: $f0 $70
	db   $10                                         ; $71b4: $10
	ldh  a, [$98]                                    ; $71b5: $f0 $98
	add  sp, -$10                                    ; $71b7: $e8 $f0
	ld   [hl], b                                     ; $71b9: $70
	ret  z                                           ; $71ba: $c8

	jr   c, @-$66                                    ; $71bb: $38 $98

	ld   l, b                                        ; $71bd: $68
	ldh  a, [$f0]                                    ; $71be: $f0 $f0
	rlca                                             ; $71c0: $07
	rlca                                             ; $71c1: $07
	dec  bc                                          ; $71c2: $0b
	inc  c                                           ; $71c3: $0c
	inc  d                                           ; $71c4: $14
	rra                                              ; $71c5: $1f
	jr   jr_026_71e7                                 ; $71c6: $18 $1f

	db   $10                                         ; $71c8: $10
	rra                                              ; $71c9: $1f
	db   $10                                         ; $71ca: $10
	rra                                              ; $71cb: $1f
	db   $10                                         ; $71cc: $10
	rra                                              ; $71cd: $1f
	ld   [$060f], sp                                 ; $71ce: $08 $0f $06
	rlca                                             ; $71d1: $07
	rrca                                             ; $71d2: $0f
	ld   [$080f], sp                                 ; $71d3: $08 $0f $08
	rra                                              ; $71d6: $1f
	db   $10                                         ; $71d7: $10
	rra                                              ; $71d8: $1f
	db   $10                                         ; $71d9: $10
	add  hl, de                                      ; $71da: $19
	ld   e, $09                                      ; $71db: $1e $09
	ld   c, $07                                      ; $71dd: $0e $07
	rlca                                             ; $71df: $07
	ldh  a, [$f0]                                    ; $71e0: $f0 $f0
	adc  b                                           ; $71e2: $88
	ld   hl, sp-$78                                  ; $71e3: $f8 $88
	ld   hl, sp+$08                                  ; $71e5: $f8 $08

jr_026_71e7:
	ld   hl, sp+$18                                  ; $71e7: $f8 $18
	ld   hl, sp+$08                                  ; $71e9: $f8 $08
	ld   hl, sp+$08                                  ; $71eb: $f8 $08
	ld   hl, sp+$08                                  ; $71ed: $f8 $08
	ld   hl, sp+$10                                  ; $71ef: $f8 $10
	ldh  a, [$f0]                                    ; $71f1: $f0 $f0
	ld   [hl], b                                     ; $71f3: $70
	add  sp, $38                                     ; $71f4: $e8 $38
	db   $e4                                         ; $71f6: $e4
	inc  e                                           ; $71f7: $1c
	db   $f4                                         ; $71f8: $f4
	inc  e                                           ; $71f9: $1c
	add  sp, $38                                     ; $71fa: $e8 $38
	db   $e4                                         ; $71fc: $e4
	inc  a                                           ; $71fd: $3c
	ld   hl, sp-$08                                  ; $71fe: $f8 $f8
	dec  c                                           ; $7200: $0d
	dec  c                                           ; $7201: $0d
	inc  de                                          ; $7202: $13
	ld   e, $20                                      ; $7203: $1e $20
	ccf                                              ; $7205: $3f
	jr   nz, jr_026_7247                             ; $7206: $20 $3f

	jr   jr_026_7229                                 ; $7208: $18 $1f

	ld   [$080f], sp                                 ; $720a: $08 $0f $08
	rrca                                             ; $720d: $0f
	add  hl, bc                                      ; $720e: $09
	rrca                                             ; $720f: $0f
	rlca                                             ; $7210: $07
	ld   b, $0f                                      ; $7211: $06 $0f
	ld   [$1817], sp                                 ; $7213: $08 $17 $18

jr_026_7216:
	inc  de                                          ; $7216: $13
	inc  e                                           ; $7217: $1c
	rrca                                             ; $7218: $0f
	inc  c                                           ; $7219: $0c
	ld   a, [bc]                                     ; $721a: $0a
	dec  c                                           ; $721b: $0d
	ld   a, [bc]                                     ; $721c: $0a
	dec  c                                           ; $721d: $0d
	rlca                                             ; $721e: $07
	rlca                                             ; $721f: $07
	ret  c                                           ; $7220: $d8

	ret  c                                           ; $7221: $d8

	db   $e4                                         ; $7222: $e4
	inc  a                                           ; $7223: $3c
	ld   [bc], a                                     ; $7224: $02
	cp   $02                                         ; $7225: $fe $02
	cp   $0c                                         ; $7227: $fe $0c

jr_026_7229:
	db   $fc                                         ; $7229: $fc
	ld   [$08f8], sp                                 ; $722a: $08 $f8 $08
	ld   hl, sp-$78                                  ; $722d: $f8 $88
	ld   hl, sp-$10                                  ; $722f: $f8 $f0
	jr   nc, @-$06                                   ; $7231: $30 $f8

	ld   [$0cf4], sp                                 ; $7233: $08 $f4 $0c
	db   $e4                                         ; $7236: $e4
	inc  e                                           ; $7237: $1c
	ld   a, b                                        ; $7238: $78
	sbc  b                                           ; $7239: $98
	jr   z, @-$26                                    ; $723a: $28 $d8

	jr   z, jr_026_7216                              ; $723c: $28 $d8

	ldh  a, [$f0]                                    ; $723e: $f0 $f0
	nop                                              ; $7240: $00
	nop                                              ; $7241: $00
	nop                                              ; $7242: $00
	nop                                              ; $7243: $00
	nop                                              ; $7244: $00
	nop                                              ; $7245: $00

jr_026_7246:
	nop                                              ; $7246: $00

jr_026_7247:
	nop                                              ; $7247: $00
	inc  a                                           ; $7248: $3c
	nop                                              ; $7249: $00
	ld   a, [hl]                                     ; $724a: $7e
	nop                                              ; $724b: $00
	db   $fc                                         ; $724c: $fc
	inc  bc                                          ; $724d: $03
	ld   a, [$fa05]                                  ; $724e: $fa $05 $fa
	dec  b                                           ; $7251: $05
	db   $fc                                         ; $7252: $fc
	inc  bc                                          ; $7253: $03
	ld   l, b                                        ; $7254: $68
	ld   d, $10                                      ; $7255: $16 $10
	inc  l                                           ; $7257: $2c
	nop                                              ; $7258: $00
	nop                                              ; $7259: $00
	nop                                              ; $725a: $00
	nop                                              ; $725b: $00
	nop                                              ; $725c: $00
	nop                                              ; $725d: $00
	nop                                              ; $725e: $00
	nop                                              ; $725f: $00
	inc  bc                                          ; $7260: $03
	nop                                              ; $7261: $00
	rrca                                             ; $7262: $0f
	nop                                              ; $7263: $00
	ccf                                              ; $7264: $3f
	nop                                              ; $7265: $00
	ld   a, a                                        ; $7266: $7f
	nop                                              ; $7267: $00
	ld   [hl], a                                     ; $7268: $77
	ld   [$05fa], sp                                 ; $7269: $08 $fa $05
	ld   hl, sp+$03                                  ; $726c: $f8 $03
	ldh  a, [$08]                                    ; $726e: $f0 $08
	ldh  [c], a                                      ; $7270: $e2
	db   $10                                         ; $7271: $10
	ldh  a, [$08]                                    ; $7272: $f0 $08
	ld   hl, sp+$04                                  ; $7274: $f8 $04
	ld   [hl], b                                     ; $7276: $70
	inc  c                                           ; $7277: $0c
	add  hl, bc                                      ; $7278: $09
	jr   nc, @+$05                                   ; $7279: $30 $03

	nop                                              ; $727b: $00
	ld   bc, $0000                                   ; $727c: $01 $00 $00
	nop                                              ; $727f: $00
	add  b                                           ; $7280: $80
	nop                                              ; $7281: $00
	ldh  [rAUD1SWEEP], a                             ; $7282: $e0 $10
	ldh  a, [$0c]                                    ; $7284: $f0 $0c
	ret  nc                                          ; $7286: $d0

	inc  l                                           ; $7287: $2c
	add  b                                           ; $7288: $80
	ld   a, b                                        ; $7289: $78
	nop                                              ; $728a: $00
	nop                                              ; $728b: $00
	ld   c, $00                                      ; $728c: $0e $00
	rra                                              ; $728e: $1f
	nop                                              ; $728f: $00
	ld   a, $01                                      ; $7290: $3e $01
	ld   a, h                                        ; $7292: $7c
	inc  bc                                          ; $7293: $03
	ld   a, h                                        ; $7294: $7c
	inc  bc                                          ; $7295: $03
	db   $10                                         ; $7296: $10
	ld   l, $00                                      ; $7297: $2e $00
	call c, $c000                                    ; $7299: $dc $00 $c0
	add  b                                           ; $729c: $80
	ld   b, b                                        ; $729d: $40
	nop                                              ; $729e: $00
	add  b                                           ; $729f: $80
	nop                                              ; $72a0: $00
	nop                                              ; $72a1: $00
	rlca                                             ; $72a2: $07
	nop                                              ; $72a3: $00
	rrca                                             ; $72a4: $0f
	nop                                              ; $72a5: $00
	inc  c                                           ; $72a6: $0c
	inc  bc                                          ; $72a7: $03
	nop                                              ; $72a8: $00
	inc  c                                           ; $72a9: $0c
	jr   nz, jr_026_72b0                             ; $72aa: $20 $04

	ld   [hl], b                                     ; $72ac: $70
	nop                                              ; $72ad: $00
	ldh  [rAUD1SWEEP], a                             ; $72ae: $e0 $10

jr_026_72b0:
	nop                                              ; $72b0: $00
	ld   h, b                                        ; $72b1: $60
	jr   nc, jr_026_72b4                             ; $72b2: $30 $00

jr_026_72b4:
	ld   [hl], b                                     ; $72b4: $70
	ld   [$1060], sp                                 ; $72b5: $08 $60 $10
	nop                                              ; $72b8: $00
	jr   nc, jr_026_72bc                             ; $72b9: $30 $01

	nop                                              ; $72bb: $00

jr_026_72bc:
	ld   bc, $0000                                   ; $72bc: $01 $00 $00
	nop                                              ; $72bf: $00
	nop                                              ; $72c0: $00
	nop                                              ; $72c1: $00
	nop                                              ; $72c2: $00
	nop                                              ; $72c3: $00
	jr   jr_026_7246                                 ; $72c4: $18 $80

	db   $10                                         ; $72c6: $10
	ld   [rRAMG], sp                                 ; $72c7: $08 $00 $00
	nop                                              ; $72ca: $00
	nop                                              ; $72cb: $00
	nop                                              ; $72cc: $00
	nop                                              ; $72cd: $00
	ld   b, $00                                      ; $72ce: $06 $00
	ld   c, $01                                      ; $72d0: $0e $01
	inc  e                                           ; $72d2: $1c
	inc  bc                                          ; $72d3: $03
	inc  e                                           ; $72d4: $1c
	inc  bc                                          ; $72d5: $03
	db   $10                                         ; $72d6: $10
	ld   c, $00                                      ; $72d7: $0e $00
	inc  c                                           ; $72d9: $0c
	nop                                              ; $72da: $00
	add  b                                           ; $72db: $80
	add  b                                           ; $72dc: $80
	nop                                              ; $72dd: $00
	nop                                              ; $72de: $00
	nop                                              ; $72df: $00
	nop                                              ; $72e0: $00
	nop                                              ; $72e1: $00
	rlca                                             ; $72e2: $07
	nop                                              ; $72e3: $00
	rlca                                             ; $72e4: $07
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
	ld   [rROMB0], sp                                 ; $731b: $08 $00 $20
	nop                                              ; $731e: $00
	add  b                                           ; $731f: $80
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
	ld   a, a                                        ; $7331: $7f
	nop                                              ; $7332: $00
	rrca                                             ; $7333: $0f
	nop                                              ; $7334: $00
	ld   sp, $c100                                   ; $7335: $31 $00 $c1
	nop                                              ; $7338: $00
	ld   bc, $0000                                   ; $7339: $01 $00 $00
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
	add  b                                           ; $7357: $80
	nop                                              ; $7358: $00
	add  e                                           ; $7359: $83
	nop                                              ; $735a: $00
	adc  h                                           ; $735b: $8c
	nop                                              ; $735c: $00
	ldh  a, [rP1]                                    ; $735d: $f0 $00
	cp   $00                                         ; $735f: $fe $00
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
	ld   bc, $0400                                   ; $7371: $01 $00 $04
	nop                                              ; $7374: $00
	stop                                             ; $7375: $10 $00
	ret  nz                                          ; $7377: $c0

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
	rlca                                             ; $7383: $07
	nop                                              ; $7384: $00
	rra                                              ; $7385: $1f
	nop                                              ; $7386: $00
	jr   nz, jr_026_7389                             ; $7387: $20 $00

jr_026_7389:
	ld   b, b                                        ; $7389: $40
	nop                                              ; $738a: $00
	ld   b, b                                        ; $738b: $40
	nop                                              ; $738c: $00
	ret  nz                                          ; $738d: $c0

	nop                                              ; $738e: $00
	ret  nz                                          ; $738f: $c0

	nop                                              ; $7390: $00
	ldh  [rP1], a                                    ; $7391: $e0 $00
	ld   hl, sp+$00                                  ; $7393: $f8 $00
	ld   a, a                                        ; $7395: $7f
	nop                                              ; $7396: $00
	ld   a, a                                        ; $7397: $7f
	nop                                              ; $7398: $00
	ccf                                              ; $7399: $3f
	nop                                              ; $739a: $00
	rra                                              ; $739b: $1f
	nop                                              ; $739c: $00
	rlca                                             ; $739d: $07
	nop                                              ; $739e: $00
	nop                                              ; $739f: $00
	nop                                              ; $73a0: $00
	nop                                              ; $73a1: $00
	nop                                              ; $73a2: $00
	ldh  [rP1], a                                    ; $73a3: $e0 $00
	ld   hl, sp+$00                                  ; $73a5: $f8 $00
	ld   a, h                                        ; $73a7: $7c
	nop                                              ; $73a8: $00
	ld   a, [hl]                                     ; $73a9: $7e
	nop                                              ; $73aa: $00
	ld   a, $00                                      ; $73ab: $3e $00
	ccf                                              ; $73ad: $3f
	nop                                              ; $73ae: $00
	ccf                                              ; $73af: $3f
	nop                                              ; $73b0: $00
	ld   a, a                                        ; $73b1: $7f
	nop                                              ; $73b2: $00
	rst  $38                                         ; $73b3: $ff
	nop                                              ; $73b4: $00
	cp   $00                                         ; $73b5: $fe $00
	cp   $00                                         ; $73b7: $fe $00
	db   $fc                                         ; $73b9: $fc
	nop                                              ; $73ba: $00
	ld   hl, sp+$00                                  ; $73bb: $f8 $00
	ldh  [rP1], a                                    ; $73bd: $e0 $00
	nop                                              ; $73bf: $00
	nop                                              ; $73c0: $00
	nop                                              ; $73c1: $00
	nop                                              ; $73c2: $00
	nop                                              ; $73c3: $00
	nop                                              ; $73c4: $00
	nop                                              ; $73c5: $00
	inc  a                                           ; $73c6: $3c
	inc  a                                           ; $73c7: $3c
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
	inc  a                                           ; $73d6: $3c
	inc  a                                           ; $73d7: $3c
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
	inc  a                                           ; $73e6: $3c
	inc  a                                           ; $73e7: $3c
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
	inc  a                                           ; $73f6: $3c
	inc  a                                           ; $73f7: $3c
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
	inc  a                                           ; $7406: $3c
	inc  a                                           ; $7407: $3c
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
	inc  a                                           ; $7416: $3c
	inc  a                                           ; $7417: $3c
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
	inc  a                                           ; $7426: $3c
	inc  a                                           ; $7427: $3c
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
	inc  a                                           ; $7436: $3c
	inc  a                                           ; $7437: $3c
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
	ld   bc, $0200                                   ; $7447: $01 $00 $02
	nop                                              ; $744a: $00
	inc  b                                           ; $744b: $04
	nop                                              ; $744c: $00
	inc  c                                           ; $744d: $0c
	nop                                              ; $744e: $00
	jr   jr_026_7451                                 ; $744f: $18 $00

jr_026_7451:
	add  hl, sp                                      ; $7451: $39
	nop                                              ; $7452: $00
	ld   a, $00                                      ; $7453: $3e $00
	ld   a, h                                        ; $7455: $7c
	nop                                              ; $7456: $00
	ld   a, b                                        ; $7457: $78
	nop                                              ; $7458: $00
	ld   [hl], b                                     ; $7459: $70
	nop                                              ; $745a: $00
	ldh  a, [rP1]                                    ; $745b: $f0 $00
	ldh  [rP1], a                                    ; $745d: $e0 $00
	ldh  [rP1], a                                    ; $745f: $e0 $00
	nop                                              ; $7461: $00
	nop                                              ; $7462: $00
	nop                                              ; $7463: $00
	nop                                              ; $7464: $00
	inc  bc                                          ; $7465: $03
	nop                                              ; $7466: $00
	rlca                                             ; $7467: $07
	nop                                              ; $7468: $00
	rrca                                             ; $7469: $0f
	nop                                              ; $746a: $00
	inc  e                                           ; $746b: $1c
	nop                                              ; $746c: $00
	jr   nc, jr_026_746f                             ; $746d: $30 $00

jr_026_746f:
	ld   b, b                                        ; $746f: $40
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
	rst  $38                                         ; $7485: $ff
	nop                                              ; $7486: $00
	rst  $38                                         ; $7487: $ff
	nop                                              ; $7488: $00
	rst  $38                                         ; $7489: $ff
	nop                                              ; $748a: $00
	inc  bc                                          ; $748b: $03
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
	add  b                                           ; $74a7: $80
	nop                                              ; $74a8: $00
	ret  nz                                          ; $74a9: $c0

	nop                                              ; $74aa: $00
	ldh  [rP1], a                                    ; $74ab: $e0 $00
	ld   [hl], b                                     ; $74ad: $70
	nop                                              ; $74ae: $00
	jr   jr_026_74b1                                 ; $74af: $18 $00

jr_026_74b1:
	inc  c                                           ; $74b1: $0c
	nop                                              ; $74b2: $00
	inc  b                                           ; $74b3: $04
	nop                                              ; $74b4: $00
	ld   [bc], a                                     ; $74b5: $02
	nop                                              ; $74b6: $00
	ld   [bc], a                                     ; $74b7: $02
	nop                                              ; $74b8: $00
	nop                                              ; $74b9: $00
	nop                                              ; $74ba: $00
	ld   bc, $0100                                   ; $74bb: $01 $00 $01
	nop                                              ; $74be: $00
	ld   bc, $c000                                   ; $74bf: $01 $00 $c0
	nop                                              ; $74c2: $00
	ret  nz                                          ; $74c3: $c0

	nop                                              ; $74c4: $00
	ret  nz                                          ; $74c5: $c0

	nop                                              ; $74c6: $00
	ld   b, b                                        ; $74c7: $40
	nop                                              ; $74c8: $00
	ld   b, b                                        ; $74c9: $40
	nop                                              ; $74ca: $00
	ld   b, b                                        ; $74cb: $40
	nop                                              ; $74cc: $00
	jr   nz, jr_026_74cf                             ; $74cd: $20 $00

jr_026_74cf:
	jr   nz, jr_026_74d1                             ; $74cf: $20 $00

jr_026_74d1:
	nop                                              ; $74d1: $00
	nop                                              ; $74d2: $00
	nop                                              ; $74d3: $00
	nop                                              ; $74d4: $00
	nop                                              ; $74d5: $00
	nop                                              ; $74d6: $00
	ld   [bc], a                                     ; $74d7: $02
	nop                                              ; $74d8: $00
	ld   bc, $0000                                   ; $74d9: $01 $00 $00
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

Call_026_74f4:
	nop                                              ; $74f4: $00
	nop                                              ; $74f5: $00
	nop                                              ; $74f6: $00
	nop                                              ; $74f7: $00
	nop                                              ; $74f8: $00
	nop                                              ; $74f9: $00
	nop                                              ; $74fa: $00
	ret  nz                                          ; $74fb: $c0

	nop                                              ; $74fc: $00
	jr   c, jr_026_74ff                              ; $74fd: $38 $00

jr_026_74ff:
	rlca                                             ; $74ff: $07
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
	inc  bc                                          ; $751b: $03
	nop                                              ; $751c: $00
	inc  e                                           ; $751d: $1c
	nop                                              ; $751e: $00
	ldh  [rP1], a                                    ; $751f: $e0 $00
	ld   bc, $0100                                   ; $7521: $01 $00 $01
	nop                                              ; $7524: $00
	ld   bc, $0200                                   ; $7525: $01 $00 $02
	nop                                              ; $7528: $00
	ld   [bc], a                                     ; $7529: $02
	nop                                              ; $752a: $00
	ld   [bc], a                                     ; $752b: $02
	nop                                              ; $752c: $00
	inc  b                                           ; $752d: $04
	nop                                              ; $752e: $00
	inc  b                                           ; $752f: $04
	nop                                              ; $7530: $00
	nop                                              ; $7531: $00
	nop                                              ; $7532: $00
	nop                                              ; $7533: $00
	nop                                              ; $7534: $00
	nop                                              ; $7535: $00
	nop                                              ; $7536: $00
	ld   b, b                                        ; $7537: $40
	nop                                              ; $7538: $00
	add  b                                           ; $7539: $80
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
	ld   [$1000], sp                                 ; $754d: $08 $00 $10
	nop                                              ; $7550: $00
	jr   nc, jr_026_7553                             ; $7551: $30 $00

jr_026_7553:
	jr   nc, jr_026_7555                             ; $7553: $30 $00

jr_026_7555:
	ld   [hl], b                                     ; $7555: $70
	nop                                              ; $7556: $00
	ld   a, b                                        ; $7557: $78
	nop                                              ; $7558: $00
	ld   h, b                                        ; $7559: $60
	nop                                              ; $755a: $00
	ret  nz                                          ; $755b: $c0

	nop                                              ; $755c: $00
	add  b                                           ; $755d: $80
	nop                                              ; $755e: $00
	add  b                                           ; $755f: $80
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
	inc  bc                                          ; $7575: $03
	nop                                              ; $7576: $00
	rlca                                             ; $7577: $07
	nop                                              ; $7578: $00
	ld   c, $00                                      ; $7579: $0e $00
	jr   jr_026_757d                                 ; $757b: $18 $00

jr_026_757d:
	jr   nc, jr_026_757f                             ; $757d: $30 $00

jr_026_757f:
	ld   b, b                                        ; $757f: $40
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
	rst  $38                                         ; $7595: $ff
	nop                                              ; $7596: $00
	ret  nz                                          ; $7597: $c0

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
	ld   [bc], a                                     ; $75a7: $02
	nop                                              ; $75a8: $00
	nop                                              ; $75a9: $00
	nop                                              ; $75aa: $00
	ld   bc, $0100                                   ; $75ab: $01 $00 $01
	nop                                              ; $75ae: $00
	ld   bc, $0100                                   ; $75af: $01 $00 $01
	nop                                              ; $75b2: $00
	ld   bc, $0100                                   ; $75b3: $01 $00 $01
	nop                                              ; $75b6: $00
	ld   [bc], a                                     ; $75b7: $02
	nop                                              ; $75b8: $00
	ld   [bc], a                                     ; $75b9: $02
	nop                                              ; $75ba: $00
	ld   [bc], a                                     ; $75bb: $02
	nop                                              ; $75bc: $00
	inc  b                                           ; $75bd: $04
	nop                                              ; $75be: $00
	inc  b                                           ; $75bf: $04
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
	ld   b, b                                        ; $75db: $40
	nop                                              ; $75dc: $00
	jr   nc, jr_026_75df                             ; $75dd: $30 $00

jr_026_75df:
	ld   b, $00                                      ; $75df: $06 $00
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
	inc  a                                           ; $7606: $3c
	inc  a                                           ; $7607: $3c
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

Call_026_78f8:
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
